module ReservationStation_2(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_fromDispatch_0_ready,
  input         io_fromDispatch_0_valid,
  input         io_fromDispatch_0_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_0_bits_cf_pd_brType,
  input         io_fromDispatch_0_bits_cf_pd_isCall,
  input         io_fromDispatch_0_bits_cf_pd_isRet,
  input         io_fromDispatch_0_bits_cf_pred_taken,
  input         io_fromDispatch_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_0,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_1,
  input  [3:0]  io_fromDispatch_0_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_0_bits_ctrl_fuOpType,
  input         io_fromDispatch_0_bits_ctrl_rfWen,
  input         io_fromDispatch_0_bits_ctrl_fpWen,
  input  [19:0] io_fromDispatch_0_bits_ctrl_imm,
  input         io_fromDispatch_0_bits_ctrl_fpu_isAddSub,
  input         io_fromDispatch_0_bits_ctrl_fpu_typeTagIn,
  input         io_fromDispatch_0_bits_ctrl_fpu_typeTagOut,
  input         io_fromDispatch_0_bits_ctrl_fpu_fromInt,
  input         io_fromDispatch_0_bits_ctrl_fpu_wflags,
  input         io_fromDispatch_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_fpu_fmaCmd,
  input         io_fromDispatch_0_bits_ctrl_fpu_div,
  input         io_fromDispatch_0_bits_ctrl_fpu_sqrt,
  input         io_fromDispatch_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_fpu_fmt,
  input         io_fromDispatch_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromDispatch_0_bits_ctrl_fpu_rm,
  input         io_fromDispatch_0_bits_srcState_0,
  input         io_fromDispatch_0_bits_srcState_1,
  input  [5:0]  io_fromDispatch_0_bits_psrc_0,
  input  [5:0]  io_fromDispatch_0_bits_psrc_1,
  input  [5:0]  io_fromDispatch_0_bits_pdest,
  input         io_fromDispatch_0_bits_robIdx_flag,
  input  [4:0]  io_fromDispatch_0_bits_robIdx_value,
  input         io_fromDispatch_0_bits_lqIdx_flag,
  input  [3:0]  io_fromDispatch_0_bits_lqIdx_value,
  input  [63:0] io_srcRegValue_0_0,
  input  [63:0] io_srcRegValue_0_1,
  input         io_deq_0_ready,
  output        io_deq_0_valid,
  output [38:0] io_deq_0_bits_uop_cf_pc,
  output        io_deq_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_deq_0_bits_uop_cf_pd_brType,
  output        io_deq_0_bits_uop_cf_pd_isCall,
  output        io_deq_0_bits_uop_cf_pd_isRet,
  output        io_deq_0_bits_uop_cf_pred_taken,
  output        io_deq_0_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_deq_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_deq_0_bits_uop_cf_ftqOffset,
  output [3:0]  io_deq_0_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_0_bits_uop_ctrl_fuOpType,
  output        io_deq_0_bits_uop_ctrl_rfWen,
  output        io_deq_0_bits_uop_ctrl_fpWen,
  output [19:0] io_deq_0_bits_uop_ctrl_imm,
  output        io_deq_0_bits_uop_ctrl_fpu_typeTagOut,
  output        io_deq_0_bits_uop_ctrl_fpu_fromInt,
  output        io_deq_0_bits_uop_ctrl_fpu_wflags,
  output [1:0]  io_deq_0_bits_uop_ctrl_fpu_typ,
  output [2:0]  io_deq_0_bits_uop_ctrl_fpu_rm,
  output [5:0]  io_deq_0_bits_uop_pdest,
  output        io_deq_0_bits_uop_robIdx_flag,
  output [4:0]  io_deq_0_bits_uop_robIdx_value,
  output        io_deq_0_bits_uop_lqIdx_flag,
  output [3:0]  io_deq_0_bits_uop_lqIdx_value,
  output [63:0] io_deq_0_bits_src_0,
  output [63:0] io_deq_0_bits_src_1,
  input         io_slowPorts_0_valid,
  input         io_slowPorts_0_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_0_bits_uop_pdest,
  input  [63:0] io_slowPorts_0_bits_data,
  input         io_slowPorts_1_valid,
  input         io_slowPorts_1_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_1_bits_uop_pdest,
  input  [63:0] io_slowPorts_1_bits_data,
  input         io_slowPorts_2_valid,
  input         io_slowPorts_2_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_2_bits_uop_pdest,
  input  [63:0] io_slowPorts_2_bits_data,
  input         io_slowPorts_3_valid,
  input         io_slowPorts_3_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_3_bits_uop_pdest,
  input  [63:0] io_slowPorts_3_bits_data,
  input         io_slowPorts_4_valid,
  input         io_slowPorts_4_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_4_bits_uop_pdest,
  input  [63:0] io_slowPorts_4_bits_data,
  input  [38:0] io_jump_jumpPc,
  input  [38:0] io_jump_jalr_target,
  output [5:0]  io_perf_0_value
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
  reg [63:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [63:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [63:0] _RAND_105;
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
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
`endif // RANDOMIZE_REG_INIT
  wire  statusArray_clock; // @[ReservationStation.scala 260:27]
  wire  statusArray_reset; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_redirect_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_redirect_bits_robIdx_value; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_redirect_bits_level; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_isValid; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_isValidNext; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_canIssue; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_flushed; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_enable; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_update_0_addr; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_data_srcState_0; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_data_srcState_1; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_update_0_data_psrc_0; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_update_0_data_psrc_1; // @[ReservationStation.scala 260:27]
  wire [1:0] statusArray_io_update_0_data_srcType_0; // @[ReservationStation.scala 260:27]
  wire [1:0] statusArray_io_update_0_data_srcType_1; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_data_robIdx_flag; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_update_0_data_robIdx_value; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_0_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_0_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_1_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_1_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_2_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_2_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_2_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_3_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_3_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_3_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_4_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_4_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_4_bits_pdest; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_0_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_0_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_1_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_1_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_2_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_2_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_3_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_3_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_4_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_4_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_5_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_5_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_6_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_6_1; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_7_0; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_wakeupMatch_7_1; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_0_valid; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_deqResp_0_bits_rsMask; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_0_bits_success; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_1_valid; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_deqResp_1_bits_rsMask; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_1_bits_success; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_2_valid; // @[ReservationStation.scala 260:27]
  wire [7:0] statusArray_io_deqResp_2_bits_rsMask; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_2_bits_success; // @[ReservationStation.scala 260:27]
  wire [7:0] select_io_validVec; // @[ReservationStation.scala 261:22]
  wire [7:0] select_io_allocate_0_bits; // @[ReservationStation.scala 261:22]
  wire [7:0] select_io_request; // @[ReservationStation.scala 261:22]
  wire  select_io_grant_0_valid; // @[ReservationStation.scala 261:22]
  wire [7:0] select_io_grant_0_bits; // @[ReservationStation.scala 261:22]
  wire  dataArray_clock; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_read_0_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_0_data_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_0_data_1; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_read_1_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_1_data_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_1_data_1; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_0_enable; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_0_mask_0; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_0_mask_1; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_write_0_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_write_0_data_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_write_0_data_1; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_0_enable; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_0_addr_1; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_0_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_1_enable; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_1_addr_1; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_1_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_2_enable; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_2_addr_1; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_2_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_3_enable; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_3_addr_1; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_3_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_4_enable; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 262:25]
  wire [7:0] dataArray_io_multiWrite_4_addr_1; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_4_data; // @[ReservationStation.scala 262:25]
  wire  payloadArray_clock; // @[ReservationStation.scala 263:28]
  wire [7:0] payloadArray_io_read_0_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_0_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_0_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_0_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_0_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_read_0_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_read_0_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_isAddSub; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_fromInt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_wflags; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_fpWen; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_0_data_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_div; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_sqrt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_fcvt; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_0_data_ctrl_fpu_typ; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_0_data_ctrl_fpu_fmt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpu_ren3; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_0_data_ctrl_fpu_rm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_read_0_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_0_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_0_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire [7:0] payloadArray_io_read_1_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_1_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_1_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_1_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_1_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_read_1_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_read_1_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_isAddSub; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_fromInt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_wflags; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_fpWen; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_1_data_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_div; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_sqrt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_fcvt; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_1_data_ctrl_fpu_typ; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_1_data_ctrl_fpu_fmt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpu_ren3; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_1_data_ctrl_fpu_rm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_read_1_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_1_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_1_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_enable; // @[ReservationStation.scala 263:28]
  wire [7:0] payloadArray_io_write_0_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_write_0_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_0_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_0_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_0_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_write_0_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_write_0_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_isAddSub; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_fromInt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_wflags; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_fpWen; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_write_0_data_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_div; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_sqrt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_fcvt; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_write_0_data_ctrl_fpu_typ; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_write_0_data_ctrl_fpu_fmt; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpu_ren3; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_0_data_ctrl_fpu_rm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_write_0_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_write_0_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_0_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  s1_oldestSel_age_clock; // @[SelectPolicy.scala 174:21]
  wire  s1_oldestSel_age_reset; // @[SelectPolicy.scala 174:21]
  wire [7:0] s1_oldestSel_age_io_enq_0; // @[SelectPolicy.scala 174:21]
  wire [7:0] s1_oldestSel_age_io_deq; // @[SelectPolicy.scala 174:21]
  wire [7:0] s1_oldestSel_age_io_out; // @[SelectPolicy.scala 174:21]
  wire  oldestSelection_io_oldest_valid; // @[ReservationStation.scala 498:33]
  wire  oldestSelection_io_isOverrided_0; // @[ReservationStation.scala 498:33]
  wire [1:0] immExt_io_uop_ctrl_srcType_0; // @[DataArray.scala 153:23]
  wire [1:0] immExt_io_uop_ctrl_srcType_1; // @[DataArray.scala 153:23]
  wire [63:0] immExt_io_data_in_0; // @[DataArray.scala 153:23]
  wire [63:0] immExt_io_data_in_1; // @[DataArray.scala 153:23]
  wire [63:0] immExt_io_data_out_0; // @[DataArray.scala 153:23]
  wire [63:0] immExt_io_data_out_1; // @[DataArray.scala 153:23]
  wire [38:0] immExt_jump_pc; // @[DataArray.scala 153:23]
  wire [38:0] immExt_jalr_target; // @[DataArray.scala 153:23]
  wire  dataSelect_io_doOverride_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_0_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_0_1; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_1_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_1_1; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_0_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_0_1; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_1_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_1_1; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_2_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_2_1; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_1; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_2; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_3; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_4; // @[ReservationStation.scala 690:26]
  wire  dataSelect_io_enqBypass_0_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_enqData_0_0_bits; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_enqData_0_1_bits; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_deqData_0_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_deqData_0_1; // @[ReservationStation.scala 690:26]
  wire [7:0] s0_allocatePtrOH_0 = select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
  reg [7:0] validAfterAllocate; // @[ReservationStation.scala 281:35]
  wire  _s0_doEnqueue_0_T = io_fromDispatch_0_ready & io_fromDispatch_0_valid; // @[Decoupled.scala 50:35]
  wire  _s0_doEnqueue_0_T_1 = ~io_redirect_valid; // @[ReservationStation.scala 335:51]
  wire  s0_doEnqueue_0 = _s0_doEnqueue_0_T & ~io_redirect_valid; // @[ReservationStation.scala 335:48]
  wire [7:0] validUpdateByAllocate = s0_doEnqueue_0 ? s0_allocatePtrOH_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire  _numEmptyEntries_T_8 = ~statusArray_io_isValid[0]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_9 = ~statusArray_io_isValid[1]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_10 = ~statusArray_io_isValid[2]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_11 = ~statusArray_io_isValid[3]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_12 = ~statusArray_io_isValid[4]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_13 = ~statusArray_io_isValid[5]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_14 = ~statusArray_io_isValid[6]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_15 = ~statusArray_io_isValid[7]; // @[ReservationStation.scala 310:76]
  wire [1:0] _numEmptyEntries_T_16 = _numEmptyEntries_T_8 + _numEmptyEntries_T_9; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_18 = _numEmptyEntries_T_10 + _numEmptyEntries_T_11; // @[Bitwise.scala 48:55]
  wire [2:0] _numEmptyEntries_T_20 = _numEmptyEntries_T_16 + _numEmptyEntries_T_18; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_22 = _numEmptyEntries_T_12 + _numEmptyEntries_T_13; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_24 = _numEmptyEntries_T_14 + _numEmptyEntries_T_15; // @[Bitwise.scala 48:55]
  wire [2:0] _numEmptyEntries_T_26 = _numEmptyEntries_T_22 + _numEmptyEntries_T_24; // @[Bitwise.scala 48:55]
  wire [3:0] numEmptyEntries = _numEmptyEntries_T_20 + _numEmptyEntries_T_26; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_456 = {{3'd0}, statusArray_io_update_0_enable}; // @[ReservationStation.scala 312:47]
  wire [3:0] realNumEmptyAfterS1 = numEmptyEntries - _GEN_456; // @[ReservationStation.scala 312:47]
  wire [1:0] highBits = realNumEmptyAfterS1[3:2]; // @[ReservationStation.scala 314:41]
  wire [2:0] numEmptyAfterS1 = |highBits ? 3'h4 : {{1'd0}, realNumEmptyAfterS1[1:0]}; // @[ReservationStation.scala 315:27]
  wire  _numDeq_T = statusArray_io_deqResp_0_valid & statusArray_io_deqResp_0_bits_success; // @[ReservationStation.scala 316:81]
  wire  _numDeq_T_1 = statusArray_io_deqResp_1_valid & statusArray_io_deqResp_1_bits_success; // @[ReservationStation.scala 316:81]
  wire  _numDeq_T_2 = statusArray_io_deqResp_2_valid & statusArray_io_deqResp_2_bits_success; // @[ReservationStation.scala 316:81]
  wire [1:0] _numDeq_T_3 = _numDeq_T_1 + _numDeq_T_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_457 = {{1'd0}, _numDeq_T}; // @[Bitwise.scala 48:55]
  wire [2:0] _numDeq_T_5 = _GEN_457 + _numDeq_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] numDeq = _numDeq_T_5[1:0]; // @[Bitwise.scala 48:55]
  reg [2:0] emptyThisCycle; // @[ReservationStation.scala 317:29]
  wire [2:0] _GEN_458 = {{1'd0}, numDeq}; // @[ReservationStation.scala 318:39]
  reg [1:0] allocateThisCycle; // @[ReservationStation.scala 321:34]
  wire [2:0] _GEN_459 = {{1'd0}, allocateThisCycle}; // @[ReservationStation.scala 323:42]
  wire  pdestMatch = io_slowPorts_0_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond = pdestMatch & io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch = io_slowPorts_0_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T = io_fromDispatch_0_bits_ctrl_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond = pdestMatch & (rfDataMatch & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_1 = io_slowPorts_0_bits_uop_pdest == io_fromDispatch_0_bits_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_1 = pdestMatch_1 & io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_1 = io_slowPorts_0_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_5 = io_fromDispatch_0_bits_ctrl_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_1 = pdestMatch_1 & (rfDataMatch_1 & _dataCond_T_5); // @[Bundle.scala 275:33]
  wire  pdestMatch_3 = io_slowPorts_1_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_3 = pdestMatch_3 & io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_3 = io_slowPorts_1_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_3 = pdestMatch_3 & (rfDataMatch_3 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_4 = io_slowPorts_1_bits_uop_pdest == io_fromDispatch_0_bits_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_4 = pdestMatch_4 & io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_4 = io_slowPorts_1_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_4 = pdestMatch_4 & (rfDataMatch_4 & _dataCond_T_5); // @[Bundle.scala 275:33]
  wire  pdestMatch_6 = io_slowPorts_2_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_6 = pdestMatch_6 & io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_6 = io_slowPorts_2_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_6 = pdestMatch_6 & (rfDataMatch_6 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_7 = io_slowPorts_2_bits_uop_pdest == io_fromDispatch_0_bits_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_7 = pdestMatch_7 & io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_7 = io_slowPorts_2_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_7 = pdestMatch_7 & (rfDataMatch_7 & _dataCond_T_5); // @[Bundle.scala 275:33]
  wire  pdestMatch_9 = io_slowPorts_3_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_9 = pdestMatch_9 & io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_9 = io_slowPorts_3_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_9 = pdestMatch_9 & (rfDataMatch_9 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_10 = io_slowPorts_3_bits_uop_pdest == io_fromDispatch_0_bits_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_10 = pdestMatch_10 & io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_10 = io_slowPorts_3_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_10 = pdestMatch_10 & (rfDataMatch_10 & _dataCond_T_5); // @[Bundle.scala 275:33]
  wire  pdestMatch_12 = io_slowPorts_4_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_12 = pdestMatch_12 & io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_12 = io_slowPorts_4_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_12 = pdestMatch_12 & (rfDataMatch_12 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_13 = io_slowPorts_4_bits_uop_pdest == io_fromDispatch_0_bits_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_13 = pdestMatch_13 & io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_13 = io_slowPorts_4_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_13 = pdestMatch_13 & (rfDataMatch_13 & _dataCond_T_5); // @[Bundle.scala 275:33]
  wire  _s0_enqWakeup_0_0_T = io_slowPorts_0_valid & stateCond; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_1 = io_slowPorts_1_valid & stateCond_3; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_2 = io_slowPorts_2_valid & stateCond_6; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_3 = io_slowPorts_3_valid & stateCond_9; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_4 = io_slowPorts_4_valid & stateCond_12; // @[ReservationStation.scala 340:90]
  wire [1:0] s0_enqWakeup_0_0_lo = {_s0_enqWakeup_0_0_T_1,_s0_enqWakeup_0_0_T}; // @[ReservationStation.scala 340:100]
  wire [2:0] s0_enqWakeup_0_0_hi = {_s0_enqWakeup_0_0_T_4,_s0_enqWakeup_0_0_T_3,_s0_enqWakeup_0_0_T_2}; // @[ReservationStation.scala 340:100]
  wire  _s0_enqDataCapture_0_0_T = io_slowPorts_0_valid & dataCond; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_1 = io_slowPorts_1_valid & dataCond_3; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_2 = io_slowPorts_2_valid & dataCond_6; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_3 = io_slowPorts_3_valid & dataCond_9; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_4 = io_slowPorts_4_valid & dataCond_12; // @[ReservationStation.scala 341:94]
  wire [1:0] s0_enqDataCapture_0_0_lo = {_s0_enqDataCapture_0_0_T_1,_s0_enqDataCapture_0_0_T}; // @[ReservationStation.scala 341:104]
  wire [2:0] s0_enqDataCapture_0_0_hi = {_s0_enqDataCapture_0_0_T_4,_s0_enqDataCapture_0_0_T_3,
    _s0_enqDataCapture_0_0_T_2}; // @[ReservationStation.scala 341:104]
  wire  _s0_enqWakeup_0_1_T = io_slowPorts_0_valid & stateCond_1; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_1_T_1 = io_slowPorts_1_valid & stateCond_4; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_1_T_2 = io_slowPorts_2_valid & stateCond_7; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_1_T_3 = io_slowPorts_3_valid & stateCond_10; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_1_T_4 = io_slowPorts_4_valid & stateCond_13; // @[ReservationStation.scala 340:90]
  wire [1:0] s0_enqWakeup_0_1_lo = {_s0_enqWakeup_0_1_T_1,_s0_enqWakeup_0_1_T}; // @[ReservationStation.scala 340:100]
  wire [2:0] s0_enqWakeup_0_1_hi = {_s0_enqWakeup_0_1_T_4,_s0_enqWakeup_0_1_T_3,_s0_enqWakeup_0_1_T_2}; // @[ReservationStation.scala 340:100]
  wire  _s0_enqDataCapture_0_1_T = io_slowPorts_0_valid & dataCond_1; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_1_T_1 = io_slowPorts_1_valid & dataCond_4; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_1_T_2 = io_slowPorts_2_valid & dataCond_7; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_1_T_3 = io_slowPorts_3_valid & dataCond_10; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_1_T_4 = io_slowPorts_4_valid & dataCond_13; // @[ReservationStation.scala 341:94]
  wire [1:0] s0_enqDataCapture_0_1_lo = {_s0_enqDataCapture_0_1_T_1,_s0_enqDataCapture_0_1_T}; // @[ReservationStation.scala 341:104]
  wire [2:0] s0_enqDataCapture_0_1_hi = {_s0_enqDataCapture_0_1_T_4,_s0_enqDataCapture_0_1_T_3,
    _s0_enqDataCapture_0_1_T_2}; // @[ReservationStation.scala 341:104]
  reg [7:0] enqVec_REG; // @[ReservationStation.scala 360:86]
  wire [7:0] _s1_oldestSel_out_valid_T = statusArray_io_canIssue & s1_oldestSel_age_io_out; // @[SelectPolicy.scala 178:28]
  reg  s1_dispatchUops_dup_0_0_valid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_0_0_bits_cf_pd_brType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_pd_isCall; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_pd_isRet; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_pred_taken; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_0_bits_cf_ftqOffset; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_0_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_0_bits_ctrl_fuType; // @[ReservationStation.scala 390:32]
  reg [6:0] s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_rfWen; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_fpWen; // @[ReservationStation.scala 390:32]
  reg [19:0] s1_dispatchUops_dup_0_0_bits_ctrl_imm; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_srcState_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_srcState_1; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_0_bits_psrc_0; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_0_bits_psrc_1; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_0_bits_pdest; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_robIdx_flag; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_0_0_bits_robIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_lqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_0_bits_lqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_valid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_1_0_bits_cf_pd_brType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pd_isCall; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pd_isRet; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pred_taken; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_0_bits_cf_ftqOffset; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_0_bits_ctrl_fuType; // @[ReservationStation.scala 390:32]
  reg [6:0] s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_rfWen; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpWen; // @[ReservationStation.scala 390:32]
  reg [19:0] s1_dispatchUops_dup_1_0_bits_ctrl_imm; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_1_0_bits_pdest; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_robIdx_flag; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_1_0_bits_robIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_lqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_0_bits_lqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_2_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_0_bits_srcState_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_0_bits_srcState_1; // @[ReservationStation.scala 390:32]
  reg [7:0] s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 392:37]
  reg [7:0] s1_allocatePtrOH_dup_1_0; // @[ReservationStation.scala 392:37]
  reg [7:0] s1_allocatePtrOH_dup_2_0; // @[ReservationStation.scala 392:37]
  reg [4:0] s1_enqWakeup_0_0; // @[ReservationStation.scala 394:29]
  reg [4:0] s1_enqWakeup_0_1; // @[ReservationStation.scala 394:29]
  reg [4:0] s1_enqDataCapture_0_0; // @[ReservationStation.scala 395:34]
  reg [4:0] s1_enqDataCapture_0_1; // @[ReservationStation.scala 395:34]
  wire  s1_issue_oldest_0 = oldestSelection_io_isOverrided_0; // @[ReservationStation.scala 401:29 503:21]
  wire [7:0] s1_in_oldestPtrOH_bits = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  wire  _canBypass_WIRE_1 = statusArray_io_update_0_data_srcState_1; // @[StatusArray.scala 61:{13,13}]
  wire  _canBypass_WIRE_0 = statusArray_io_update_0_data_srcState_0; // @[StatusArray.scala 61:{13,13}]
  wire [1:0] _canBypass_T = {_canBypass_WIRE_1,_canBypass_WIRE_0}; // @[StatusArray.scala 61:31]
  wire  _canBypass_T_1 = &_canBypass_T; // @[StatusArray.scala 61:38]
  wire  canBypass = s1_dispatchUops_dup_0_0_valid & _canBypass_T_1; // @[ReservationStation.scala 510:55]
  wire  s1_issuePtrOH_0_valid = s1_issue_oldest_0 | select_io_grant_0_valid | canBypass; // @[ReservationStation.scala 513:77]
  wire  _statusArray_io_update_0_data_srcState_0_T_2 = s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0[0] |
    s1_dispatchUops_dup_0_0_bits_srcState_0; // @[Bundle.scala 249:81]
  wire  _statusArray_io_update_0_data_srcState_0_T_5 = s1_dispatchUops_dup_0_0_bits_ctrl_srcType_1[0] |
    s1_dispatchUops_dup_0_0_bits_srcState_1; // @[Bundle.scala 249:81]
  wire  _s1_issue_dispatch_0_T = ~s1_issue_oldest_0; // @[ReservationStation.scala 511:42]
  wire  s1_issue_dispatch_0 = canBypass & ~s1_issue_oldest_0 & ~select_io_grant_0_valid; // @[ReservationStation.scala 511:62]
  reg  valid; // @[PipelineConnect.scala 108:24]
  wire  s2_deq_0_ready = ~valid | io_deq_0_ready; // @[ReservationStation.scala 746:41]
  wire  _statusArray_io_issueGranted_1_valid_T_1 = select_io_grant_0_valid & _s1_issue_dispatch_0_T; // @[ReservationStation.scala 483:49]
  wire  statusArray_io_issueGranted_2_valid_xs_0 = s1_issue_oldest_0 & s2_deq_0_ready; // @[ParallelMux.scala 64:44]
  wire  _s1_out_0_bits_uop_T_robIdx_flag = select_io_grant_0_valid ? payloadArray_io_read_0_data_robIdx_flag :
    s1_dispatchUops_dup_0_0_bits_robIdx_flag; // @[ReservationStation.scala 518:10]
  wire [4:0] _s1_out_0_bits_uop_T_robIdx_value = select_io_grant_0_valid ? payloadArray_io_read_0_data_robIdx_value :
    s1_dispatchUops_dup_0_0_bits_robIdx_value; // @[ReservationStation.scala 518:10]
  wire  s1_out_0_bits_uop_robIdx_flag = s1_issue_oldest_0 ? payloadArray_io_read_1_data_robIdx_flag :
    _s1_out_0_bits_uop_T_robIdx_flag; // @[ReservationStation.scala 517:30]
  wire [4:0] s1_out_0_bits_uop_robIdx_value = s1_issue_oldest_0 ? payloadArray_io_read_1_data_robIdx_value :
    _s1_out_0_bits_uop_T_robIdx_value; // @[ReservationStation.scala 517:30]
  wire [5:0] _s1_out_0_valid_flushItself_T_1 = {s1_out_0_bits_uop_robIdx_flag,s1_out_0_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s1_out_0_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s1_out_0_valid_flushItself_T_3 = _s1_out_0_valid_flushItself_T_1 == _s1_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_out_0_valid_flushItself = io_redirect_bits_level & _s1_out_0_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_out_0_valid_differentFlag = s1_out_0_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_out_0_valid_compare = s1_out_0_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_out_0_valid_T = s1_out_0_valid_differentFlag ^ s1_out_0_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_out_0_valid_T_2 = io_redirect_valid & (s1_out_0_valid_flushItself | _s1_out_0_valid_T); // @[Rob.scala 143:20]
  wire  s1_out_0_valid = s1_issuePtrOH_0_valid & ~_s1_out_0_valid_T_2; // @[ReservationStation.scala 531:47]
  reg [4:0] slowWakeupMatchVec_0_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_0_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_1_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_1_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_2_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_2_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_3_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_3_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_4_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_4_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_5_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_5_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_6_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_6_1; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_7_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_7_1; // @[ReservationStation.scala 625:31]
  reg  dataArray_io_multiWrite_0_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0 = s1_enqDataCapture_0_0[0] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture = allocateValid_0 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_0_addr_0_T_8 = {slowWakeupMatchVec_7_0[0],slowWakeupMatchVec_6_0[0],
    slowWakeupMatchVec_5_0[0],slowWakeupMatchVec_4_0[0],slowWakeupMatchVec_3_0[0],slowWakeupMatchVec_2_0[0],
    slowWakeupMatchVec_1_0[0],slowWakeupMatchVec_0_0[0]}; // @[ReservationStation.scala 636:61]
  wire  allocateValid_0_1 = s1_enqDataCapture_0_1[0] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_1 = allocateValid_0_1 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_0_addr_1_T_8 = {slowWakeupMatchVec_7_1[0],slowWakeupMatchVec_6_1[0],
    slowWakeupMatchVec_5_1[0],slowWakeupMatchVec_4_1[0],slowWakeupMatchVec_3_1[0],slowWakeupMatchVec_2_1[0],
    slowWakeupMatchVec_1_1[0],slowWakeupMatchVec_0_1[0]}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_0_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_1_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_2 = s1_enqDataCapture_0_0[1] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_2 = allocateValid_0_2 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_1_addr_0_T_8 = {slowWakeupMatchVec_7_0[1],slowWakeupMatchVec_6_0[1],
    slowWakeupMatchVec_5_0[1],slowWakeupMatchVec_4_0[1],slowWakeupMatchVec_3_0[1],slowWakeupMatchVec_2_0[1],
    slowWakeupMatchVec_1_0[1],slowWakeupMatchVec_0_0[1]}; // @[ReservationStation.scala 636:61]
  wire  allocateValid_0_3 = s1_enqDataCapture_0_1[1] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_3 = allocateValid_0_3 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_1_addr_1_T_8 = {slowWakeupMatchVec_7_1[1],slowWakeupMatchVec_6_1[1],
    slowWakeupMatchVec_5_1[1],slowWakeupMatchVec_4_1[1],slowWakeupMatchVec_3_1[1],slowWakeupMatchVec_2_1[1],
    slowWakeupMatchVec_1_1[1],slowWakeupMatchVec_0_1[1]}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_1_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_2_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_4 = s1_enqDataCapture_0_0[2] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_4 = allocateValid_0_4 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_2_addr_0_T_8 = {slowWakeupMatchVec_7_0[2],slowWakeupMatchVec_6_0[2],
    slowWakeupMatchVec_5_0[2],slowWakeupMatchVec_4_0[2],slowWakeupMatchVec_3_0[2],slowWakeupMatchVec_2_0[2],
    slowWakeupMatchVec_1_0[2],slowWakeupMatchVec_0_0[2]}; // @[ReservationStation.scala 636:61]
  wire  allocateValid_0_5 = s1_enqDataCapture_0_1[2] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_5 = allocateValid_0_5 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_2_addr_1_T_8 = {slowWakeupMatchVec_7_1[2],slowWakeupMatchVec_6_1[2],
    slowWakeupMatchVec_5_1[2],slowWakeupMatchVec_4_1[2],slowWakeupMatchVec_3_1[2],slowWakeupMatchVec_2_1[2],
    slowWakeupMatchVec_1_1[2],slowWakeupMatchVec_0_1[2]}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_2_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_3_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_6 = s1_enqDataCapture_0_0[3] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_6 = allocateValid_0_6 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_3_addr_0_T_8 = {slowWakeupMatchVec_7_0[3],slowWakeupMatchVec_6_0[3],
    slowWakeupMatchVec_5_0[3],slowWakeupMatchVec_4_0[3],slowWakeupMatchVec_3_0[3],slowWakeupMatchVec_2_0[3],
    slowWakeupMatchVec_1_0[3],slowWakeupMatchVec_0_0[3]}; // @[ReservationStation.scala 636:61]
  wire  allocateValid_0_7 = s1_enqDataCapture_0_1[3] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_7 = allocateValid_0_7 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_3_addr_1_T_8 = {slowWakeupMatchVec_7_1[3],slowWakeupMatchVec_6_1[3],
    slowWakeupMatchVec_5_1[3],slowWakeupMatchVec_4_1[3],slowWakeupMatchVec_3_1[3],slowWakeupMatchVec_2_1[3],
    slowWakeupMatchVec_1_1[3],slowWakeupMatchVec_0_1[3]}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_3_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_4_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_8 = s1_enqDataCapture_0_0[4] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_8 = allocateValid_0_8 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_4_addr_0_T_8 = {slowWakeupMatchVec_7_0[4],slowWakeupMatchVec_6_0[4],
    slowWakeupMatchVec_5_0[4],slowWakeupMatchVec_4_0[4],slowWakeupMatchVec_3_0[4],slowWakeupMatchVec_2_0[4],
    slowWakeupMatchVec_1_0[4],slowWakeupMatchVec_0_0[4]}; // @[ReservationStation.scala 636:61]
  wire  allocateValid_0_9 = s1_enqDataCapture_0_1[4] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire [7:0] allocateDataCapture_9 = allocateValid_0_9 ? s1_allocatePtrOH_dup_2_0 : 8'h0; // @[ParallelMux.scala 64:44]
  wire [7:0] _dataArray_io_multiWrite_4_addr_1_T_8 = {slowWakeupMatchVec_7_1[4],slowWakeupMatchVec_6_1[4],
    slowWakeupMatchVec_5_1[4],slowWakeupMatchVec_4_1[4],slowWakeupMatchVec_3_1[4],slowWakeupMatchVec_2_1[4],
    slowWakeupMatchVec_1_1[4],slowWakeupMatchVec_0_1[4]}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_4_data_r; // @[Reg.scala 16:16]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_0_T = dataArray_io_read_0_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_0_0_T; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_0_T_3 = dataArray_io_read_0_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_0_0_T_3; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_0_T_6 = dataArray_io_read_0_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_0_0_T_6; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_0_T_9 = dataArray_io_read_0_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_0_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_0_T_12 = dataArray_io_read_0_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_0_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_0_0_lo = {_dataSelect_io_fromSlowPorts_0_0_T_5,
    _dataSelect_io_fromSlowPorts_0_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_0_0_hi = {_dataSelect_io_fromSlowPorts_0_0_T_14,
    _dataSelect_io_fromSlowPorts_0_0_T_11,_dataSelect_io_fromSlowPorts_0_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_1_T = dataArray_io_read_0_addr & dataArray_io_multiWrite_0_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_1_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_0_1_T; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_1_T_3 = dataArray_io_read_0_addr & dataArray_io_multiWrite_1_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_1_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_0_1_T_3; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_1_T_6 = dataArray_io_read_0_addr & dataArray_io_multiWrite_2_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_1_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_0_1_T_6; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_1_T_9 = dataArray_io_read_0_addr & dataArray_io_multiWrite_3_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_1_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_0_1_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_0_1_T_12 = dataArray_io_read_0_addr & dataArray_io_multiWrite_4_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_1_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_0_1_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_0_1_lo = {_dataSelect_io_fromSlowPorts_0_1_T_5,
    _dataSelect_io_fromSlowPorts_0_1_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_0_1_hi = {_dataSelect_io_fromSlowPorts_0_1_T_14,
    _dataSelect_io_fromSlowPorts_0_1_T_11,_dataSelect_io_fromSlowPorts_0_1_T_8}; // @[ReservationStation.scala 696:103]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_0_T = dataArray_io_read_1_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_1_0_T; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_0_T_3 = dataArray_io_read_1_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_1_0_T_3; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_0_T_6 = dataArray_io_read_1_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_1_0_T_6; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_0_T_9 = dataArray_io_read_1_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_1_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_0_T_12 = dataArray_io_read_1_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_1_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_1_0_lo = {_dataSelect_io_fromSlowPorts_1_0_T_5,
    _dataSelect_io_fromSlowPorts_1_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_1_0_hi = {_dataSelect_io_fromSlowPorts_1_0_T_14,
    _dataSelect_io_fromSlowPorts_1_0_T_11,_dataSelect_io_fromSlowPorts_1_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_1_T = dataArray_io_read_1_addr & dataArray_io_multiWrite_0_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_1_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_1_1_T; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_1_T_3 = dataArray_io_read_1_addr & dataArray_io_multiWrite_1_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_1_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_1_1_T_3; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_1_T_6 = dataArray_io_read_1_addr & dataArray_io_multiWrite_2_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_1_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_1_1_T_6; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_1_T_9 = dataArray_io_read_1_addr & dataArray_io_multiWrite_3_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_1_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_1_1_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_1_1_T_12 = dataArray_io_read_1_addr & dataArray_io_multiWrite_4_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_1_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_1_1_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_1_1_lo = {_dataSelect_io_fromSlowPorts_1_1_T_5,
    _dataSelect_io_fromSlowPorts_1_1_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_1_1_hi = {_dataSelect_io_fromSlowPorts_1_1_T_14,
    _dataSelect_io_fromSlowPorts_1_1_T_11,_dataSelect_io_fromSlowPorts_1_1_T_8}; // @[ReservationStation.scala 696:103]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_0_T = dataArray_io_write_0_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_2_0_T; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_0_T_3 = dataArray_io_write_0_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_2_0_T_3; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_0_T_6 = dataArray_io_write_0_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_2_0_T_6; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_0_T_9 = dataArray_io_write_0_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_2_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_0_T_12 = dataArray_io_write_0_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_2_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_2_0_lo = {_dataSelect_io_fromSlowPorts_2_0_T_5,
    _dataSelect_io_fromSlowPorts_2_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_2_0_hi = {_dataSelect_io_fromSlowPorts_2_0_T_14,
    _dataSelect_io_fromSlowPorts_2_0_T_11,_dataSelect_io_fromSlowPorts_2_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_1_T = dataArray_io_write_0_addr & dataArray_io_multiWrite_0_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_1_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_2_1_T; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_1_T_3 = dataArray_io_write_0_addr & dataArray_io_multiWrite_1_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_1_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_2_1_T_3; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_1_T_6 = dataArray_io_write_0_addr & dataArray_io_multiWrite_2_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_1_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_2_1_T_6; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_1_T_9 = dataArray_io_write_0_addr & dataArray_io_multiWrite_3_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_1_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_2_1_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [7:0] _dataSelect_io_fromSlowPorts_2_1_T_12 = dataArray_io_write_0_addr & dataArray_io_multiWrite_4_addr_1; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_1_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_2_1_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_2_1_lo = {_dataSelect_io_fromSlowPorts_2_1_T_5,
    _dataSelect_io_fromSlowPorts_2_1_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_2_1_hi = {_dataSelect_io_fromSlowPorts_2_1_T_14,
    _dataSelect_io_fromSlowPorts_2_1_T_11,_dataSelect_io_fromSlowPorts_2_1_T_8}; // @[ReservationStation.scala 696:103]
  wire  s1_out_fire_0 = s1_out_0_valid & s2_deq_0_ready; // @[ReservationStation.scala 727:60]
  reg  data_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] data_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _flushItself_T_1 = {data_uop_robIdx_flag,data_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_3 = _flushItself_T_1 == _s1_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = data_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = data_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_97 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_99 = io_redirect_valid & (flushItself | _T_97); // @[Rob.scala 143:20]
  wire  _T_100 = s2_deq_0_ready | _T_99; // @[ReservationStation.scala 735:59]
  wire  _GEN_333 = _T_100 ? 1'h0 : valid; // @[PipelineConnect.scala 108:24 110:{25,33}]
  reg  data_uop_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] data_uop_cf_pd_brType; // @[Reg.scala 16:16]
  reg  data_uop_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  data_uop_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  data_uop_cf_pred_taken; // @[Reg.scala 16:16]
  reg  data_uop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] data_uop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] data_uop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [3:0] data_uop_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] data_uop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] data_uop_ctrl_imm; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_fpu_typeTagOut; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_fpu_fromInt; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_fpu_wflags; // @[Reg.scala 16:16]
  reg [1:0] data_uop_ctrl_fpu_typ; // @[Reg.scala 16:16]
  reg [2:0] data_uop_ctrl_fpu_rm; // @[Reg.scala 16:16]
  reg [5:0] data_uop_pdest; // @[Reg.scala 16:16]
  reg  data_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] data_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg [63:0] data_src_0; // @[Reg.scala 16:16]
  reg [63:0] data_src_1; // @[Reg.scala 16:16]
  wire [63:0] s1_out_0_bits_src_0 = dataSelect_io_deqData_0_0; // @[ReservationStation.scala 403:20 709:29]
  wire [63:0] s1_out_0_bits_src_1 = dataSelect_io_deqData_0_1; // @[ReservationStation.scala 403:20 709:29]
  reg [38:0] pcMem_0; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_1; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_2; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_3; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_4; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_5; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_6; // @[ReservationStation.scala 885:20]
  reg [38:0] pcMem_7; // @[ReservationStation.scala 885:20]
  wire  writeEn = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[0]); // @[ReservationStation.scala 887:88]
  wire  writeEn_1 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[1]); // @[ReservationStation.scala 887:88]
  wire  writeEn_2 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[2]); // @[ReservationStation.scala 887:88]
  wire  writeEn_3 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[3]); // @[ReservationStation.scala 887:88]
  wire  writeEn_4 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[4]); // @[ReservationStation.scala 887:88]
  wire  writeEn_5 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[5]); // @[ReservationStation.scala 887:88]
  wire  writeEn_6 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[6]); // @[ReservationStation.scala 887:88]
  wire  writeEn_7 = |(dataArray_io_write_0_enable & dataArray_io_write_0_addr[7]); // @[ReservationStation.scala 887:88]
  wire [38:0] _oldestPc_T_8 = s1_in_oldestPtrOH_bits[0] ? pcMem_0 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_9 = s1_in_oldestPtrOH_bits[1] ? pcMem_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_10 = s1_in_oldestPtrOH_bits[2] ? pcMem_2 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_11 = s1_in_oldestPtrOH_bits[3] ? pcMem_3 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_12 = s1_in_oldestPtrOH_bits[4] ? pcMem_4 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_13 = s1_in_oldestPtrOH_bits[5] ? pcMem_5 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_14 = s1_in_oldestPtrOH_bits[6] ? pcMem_6 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_15 = s1_in_oldestPtrOH_bits[7] ? pcMem_7 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_16 = _oldestPc_T_8 | _oldestPc_T_9; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_17 = _oldestPc_T_16 | _oldestPc_T_10; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_18 = _oldestPc_T_17 | _oldestPc_T_11; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_19 = _oldestPc_T_18 | _oldestPc_T_12; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_20 = _oldestPc_T_19 | _oldestPc_T_13; // @[Mux.scala 27:73]
  wire [38:0] _oldestPc_T_21 = _oldestPc_T_20 | _oldestPc_T_14; // @[Mux.scala 27:73]
  wire [38:0] oldestPc = _oldestPc_T_21 | _oldestPc_T_15; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_8 = select_io_grant_0_bits[0] ? pcMem_0 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_9 = select_io_grant_0_bits[1] ? pcMem_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_10 = select_io_grant_0_bits[2] ? pcMem_2 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_11 = select_io_grant_0_bits[3] ? pcMem_3 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_12 = select_io_grant_0_bits[4] ? pcMem_4 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_13 = select_io_grant_0_bits[5] ? pcMem_5 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_14 = select_io_grant_0_bits[6] ? pcMem_6 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_15 = select_io_grant_0_bits[7] ? pcMem_7 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_16 = _issuePc_T_8 | _issuePc_T_9; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_17 = _issuePc_T_16 | _issuePc_T_10; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_18 = _issuePc_T_17 | _issuePc_T_11; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_19 = _issuePc_T_18 | _issuePc_T_12; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_20 = _issuePc_T_19 | _issuePc_T_13; // @[Mux.scala 27:73]
  wire [38:0] _issuePc_T_21 = _issuePc_T_20 | _issuePc_T_14; // @[Mux.scala 27:73]
  wire [38:0] issuePc = _issuePc_T_21 | _issuePc_T_15; // @[Mux.scala 27:73]
  reg [38:0] io_deq_0_bits_uop_cf_pc_r; // @[Reg.scala 16:16]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  StatusArray_2 statusArray ( // @[ReservationStation.scala 260:27]
    .clock(statusArray_clock),
    .reset(statusArray_reset),
    .io_redirect_valid(statusArray_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(statusArray_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(statusArray_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(statusArray_io_redirect_bits_level),
    .io_isValid(statusArray_io_isValid),
    .io_isValidNext(statusArray_io_isValidNext),
    .io_canIssue(statusArray_io_canIssue),
    .io_flushed(statusArray_io_flushed),
    .io_update_0_enable(statusArray_io_update_0_enable),
    .io_update_0_addr(statusArray_io_update_0_addr),
    .io_update_0_data_srcState_0(statusArray_io_update_0_data_srcState_0),
    .io_update_0_data_srcState_1(statusArray_io_update_0_data_srcState_1),
    .io_update_0_data_psrc_0(statusArray_io_update_0_data_psrc_0),
    .io_update_0_data_psrc_1(statusArray_io_update_0_data_psrc_1),
    .io_update_0_data_srcType_0(statusArray_io_update_0_data_srcType_0),
    .io_update_0_data_srcType_1(statusArray_io_update_0_data_srcType_1),
    .io_update_0_data_robIdx_flag(statusArray_io_update_0_data_robIdx_flag),
    .io_update_0_data_robIdx_value(statusArray_io_update_0_data_robIdx_value),
    .io_wakeup_0_valid(statusArray_io_wakeup_0_valid),
    .io_wakeup_0_bits_ctrl_rfWen(statusArray_io_wakeup_0_bits_ctrl_rfWen),
    .io_wakeup_0_bits_pdest(statusArray_io_wakeup_0_bits_pdest),
    .io_wakeup_1_valid(statusArray_io_wakeup_1_valid),
    .io_wakeup_1_bits_ctrl_rfWen(statusArray_io_wakeup_1_bits_ctrl_rfWen),
    .io_wakeup_1_bits_pdest(statusArray_io_wakeup_1_bits_pdest),
    .io_wakeup_2_valid(statusArray_io_wakeup_2_valid),
    .io_wakeup_2_bits_ctrl_rfWen(statusArray_io_wakeup_2_bits_ctrl_rfWen),
    .io_wakeup_2_bits_pdest(statusArray_io_wakeup_2_bits_pdest),
    .io_wakeup_3_valid(statusArray_io_wakeup_3_valid),
    .io_wakeup_3_bits_ctrl_rfWen(statusArray_io_wakeup_3_bits_ctrl_rfWen),
    .io_wakeup_3_bits_pdest(statusArray_io_wakeup_3_bits_pdest),
    .io_wakeup_4_valid(statusArray_io_wakeup_4_valid),
    .io_wakeup_4_bits_ctrl_rfWen(statusArray_io_wakeup_4_bits_ctrl_rfWen),
    .io_wakeup_4_bits_pdest(statusArray_io_wakeup_4_bits_pdest),
    .io_wakeupMatch_0_0(statusArray_io_wakeupMatch_0_0),
    .io_wakeupMatch_0_1(statusArray_io_wakeupMatch_0_1),
    .io_wakeupMatch_1_0(statusArray_io_wakeupMatch_1_0),
    .io_wakeupMatch_1_1(statusArray_io_wakeupMatch_1_1),
    .io_wakeupMatch_2_0(statusArray_io_wakeupMatch_2_0),
    .io_wakeupMatch_2_1(statusArray_io_wakeupMatch_2_1),
    .io_wakeupMatch_3_0(statusArray_io_wakeupMatch_3_0),
    .io_wakeupMatch_3_1(statusArray_io_wakeupMatch_3_1),
    .io_wakeupMatch_4_0(statusArray_io_wakeupMatch_4_0),
    .io_wakeupMatch_4_1(statusArray_io_wakeupMatch_4_1),
    .io_wakeupMatch_5_0(statusArray_io_wakeupMatch_5_0),
    .io_wakeupMatch_5_1(statusArray_io_wakeupMatch_5_1),
    .io_wakeupMatch_6_0(statusArray_io_wakeupMatch_6_0),
    .io_wakeupMatch_6_1(statusArray_io_wakeupMatch_6_1),
    .io_wakeupMatch_7_0(statusArray_io_wakeupMatch_7_0),
    .io_wakeupMatch_7_1(statusArray_io_wakeupMatch_7_1),
    .io_deqResp_0_valid(statusArray_io_deqResp_0_valid),
    .io_deqResp_0_bits_rsMask(statusArray_io_deqResp_0_bits_rsMask),
    .io_deqResp_0_bits_success(statusArray_io_deqResp_0_bits_success),
    .io_deqResp_1_valid(statusArray_io_deqResp_1_valid),
    .io_deqResp_1_bits_rsMask(statusArray_io_deqResp_1_bits_rsMask),
    .io_deqResp_1_bits_success(statusArray_io_deqResp_1_bits_success),
    .io_deqResp_2_valid(statusArray_io_deqResp_2_valid),
    .io_deqResp_2_bits_rsMask(statusArray_io_deqResp_2_bits_rsMask),
    .io_deqResp_2_bits_success(statusArray_io_deqResp_2_bits_success)
  );
  SelectPolicy_2 select ( // @[ReservationStation.scala 261:22]
    .io_validVec(select_io_validVec),
    .io_allocate_0_bits(select_io_allocate_0_bits),
    .io_request(select_io_request),
    .io_grant_0_valid(select_io_grant_0_valid),
    .io_grant_0_bits(select_io_grant_0_bits)
  );
  DataArray_2 dataArray ( // @[ReservationStation.scala 262:25]
    .clock(dataArray_clock),
    .io_read_0_addr(dataArray_io_read_0_addr),
    .io_read_0_data_0(dataArray_io_read_0_data_0),
    .io_read_0_data_1(dataArray_io_read_0_data_1),
    .io_read_1_addr(dataArray_io_read_1_addr),
    .io_read_1_data_0(dataArray_io_read_1_data_0),
    .io_read_1_data_1(dataArray_io_read_1_data_1),
    .io_write_0_enable(dataArray_io_write_0_enable),
    .io_write_0_mask_0(dataArray_io_write_0_mask_0),
    .io_write_0_mask_1(dataArray_io_write_0_mask_1),
    .io_write_0_addr(dataArray_io_write_0_addr),
    .io_write_0_data_0(dataArray_io_write_0_data_0),
    .io_write_0_data_1(dataArray_io_write_0_data_1),
    .io_multiWrite_0_enable(dataArray_io_multiWrite_0_enable),
    .io_multiWrite_0_addr_0(dataArray_io_multiWrite_0_addr_0),
    .io_multiWrite_0_addr_1(dataArray_io_multiWrite_0_addr_1),
    .io_multiWrite_0_data(dataArray_io_multiWrite_0_data),
    .io_multiWrite_1_enable(dataArray_io_multiWrite_1_enable),
    .io_multiWrite_1_addr_0(dataArray_io_multiWrite_1_addr_0),
    .io_multiWrite_1_addr_1(dataArray_io_multiWrite_1_addr_1),
    .io_multiWrite_1_data(dataArray_io_multiWrite_1_data),
    .io_multiWrite_2_enable(dataArray_io_multiWrite_2_enable),
    .io_multiWrite_2_addr_0(dataArray_io_multiWrite_2_addr_0),
    .io_multiWrite_2_addr_1(dataArray_io_multiWrite_2_addr_1),
    .io_multiWrite_2_data(dataArray_io_multiWrite_2_data),
    .io_multiWrite_3_enable(dataArray_io_multiWrite_3_enable),
    .io_multiWrite_3_addr_0(dataArray_io_multiWrite_3_addr_0),
    .io_multiWrite_3_addr_1(dataArray_io_multiWrite_3_addr_1),
    .io_multiWrite_3_data(dataArray_io_multiWrite_3_data),
    .io_multiWrite_4_enable(dataArray_io_multiWrite_4_enable),
    .io_multiWrite_4_addr_0(dataArray_io_multiWrite_4_addr_0),
    .io_multiWrite_4_addr_1(dataArray_io_multiWrite_4_addr_1),
    .io_multiWrite_4_data(dataArray_io_multiWrite_4_data)
  );
  PayloadArray_2 payloadArray ( // @[ReservationStation.scala 263:28]
    .clock(payloadArray_clock),
    .io_read_0_addr(payloadArray_io_read_0_addr),
    .io_read_0_data_cf_pd_isRVC(payloadArray_io_read_0_data_cf_pd_isRVC),
    .io_read_0_data_cf_pd_brType(payloadArray_io_read_0_data_cf_pd_brType),
    .io_read_0_data_cf_pd_isCall(payloadArray_io_read_0_data_cf_pd_isCall),
    .io_read_0_data_cf_pd_isRet(payloadArray_io_read_0_data_cf_pd_isRet),
    .io_read_0_data_cf_pred_taken(payloadArray_io_read_0_data_cf_pred_taken),
    .io_read_0_data_cf_ftqPtr_flag(payloadArray_io_read_0_data_cf_ftqPtr_flag),
    .io_read_0_data_cf_ftqPtr_value(payloadArray_io_read_0_data_cf_ftqPtr_value),
    .io_read_0_data_cf_ftqOffset(payloadArray_io_read_0_data_cf_ftqOffset),
    .io_read_0_data_ctrl_fuType(payloadArray_io_read_0_data_ctrl_fuType),
    .io_read_0_data_ctrl_fuOpType(payloadArray_io_read_0_data_ctrl_fuOpType),
    .io_read_0_data_ctrl_rfWen(payloadArray_io_read_0_data_ctrl_rfWen),
    .io_read_0_data_ctrl_fpWen(payloadArray_io_read_0_data_ctrl_fpWen),
    .io_read_0_data_ctrl_imm(payloadArray_io_read_0_data_ctrl_imm),
    .io_read_0_data_ctrl_fpu_isAddSub(payloadArray_io_read_0_data_ctrl_fpu_isAddSub),
    .io_read_0_data_ctrl_fpu_typeTagIn(payloadArray_io_read_0_data_ctrl_fpu_typeTagIn),
    .io_read_0_data_ctrl_fpu_typeTagOut(payloadArray_io_read_0_data_ctrl_fpu_typeTagOut),
    .io_read_0_data_ctrl_fpu_fromInt(payloadArray_io_read_0_data_ctrl_fpu_fromInt),
    .io_read_0_data_ctrl_fpu_wflags(payloadArray_io_read_0_data_ctrl_fpu_wflags),
    .io_read_0_data_ctrl_fpu_fpWen(payloadArray_io_read_0_data_ctrl_fpu_fpWen),
    .io_read_0_data_ctrl_fpu_fmaCmd(payloadArray_io_read_0_data_ctrl_fpu_fmaCmd),
    .io_read_0_data_ctrl_fpu_div(payloadArray_io_read_0_data_ctrl_fpu_div),
    .io_read_0_data_ctrl_fpu_sqrt(payloadArray_io_read_0_data_ctrl_fpu_sqrt),
    .io_read_0_data_ctrl_fpu_fcvt(payloadArray_io_read_0_data_ctrl_fpu_fcvt),
    .io_read_0_data_ctrl_fpu_typ(payloadArray_io_read_0_data_ctrl_fpu_typ),
    .io_read_0_data_ctrl_fpu_fmt(payloadArray_io_read_0_data_ctrl_fpu_fmt),
    .io_read_0_data_ctrl_fpu_ren3(payloadArray_io_read_0_data_ctrl_fpu_ren3),
    .io_read_0_data_ctrl_fpu_rm(payloadArray_io_read_0_data_ctrl_fpu_rm),
    .io_read_0_data_pdest(payloadArray_io_read_0_data_pdest),
    .io_read_0_data_robIdx_flag(payloadArray_io_read_0_data_robIdx_flag),
    .io_read_0_data_robIdx_value(payloadArray_io_read_0_data_robIdx_value),
    .io_read_0_data_lqIdx_flag(payloadArray_io_read_0_data_lqIdx_flag),
    .io_read_0_data_lqIdx_value(payloadArray_io_read_0_data_lqIdx_value),
    .io_read_1_addr(payloadArray_io_read_1_addr),
    .io_read_1_data_cf_pd_isRVC(payloadArray_io_read_1_data_cf_pd_isRVC),
    .io_read_1_data_cf_pd_brType(payloadArray_io_read_1_data_cf_pd_brType),
    .io_read_1_data_cf_pd_isCall(payloadArray_io_read_1_data_cf_pd_isCall),
    .io_read_1_data_cf_pd_isRet(payloadArray_io_read_1_data_cf_pd_isRet),
    .io_read_1_data_cf_pred_taken(payloadArray_io_read_1_data_cf_pred_taken),
    .io_read_1_data_cf_ftqPtr_flag(payloadArray_io_read_1_data_cf_ftqPtr_flag),
    .io_read_1_data_cf_ftqPtr_value(payloadArray_io_read_1_data_cf_ftqPtr_value),
    .io_read_1_data_cf_ftqOffset(payloadArray_io_read_1_data_cf_ftqOffset),
    .io_read_1_data_ctrl_fuType(payloadArray_io_read_1_data_ctrl_fuType),
    .io_read_1_data_ctrl_fuOpType(payloadArray_io_read_1_data_ctrl_fuOpType),
    .io_read_1_data_ctrl_rfWen(payloadArray_io_read_1_data_ctrl_rfWen),
    .io_read_1_data_ctrl_fpWen(payloadArray_io_read_1_data_ctrl_fpWen),
    .io_read_1_data_ctrl_imm(payloadArray_io_read_1_data_ctrl_imm),
    .io_read_1_data_ctrl_fpu_isAddSub(payloadArray_io_read_1_data_ctrl_fpu_isAddSub),
    .io_read_1_data_ctrl_fpu_typeTagIn(payloadArray_io_read_1_data_ctrl_fpu_typeTagIn),
    .io_read_1_data_ctrl_fpu_typeTagOut(payloadArray_io_read_1_data_ctrl_fpu_typeTagOut),
    .io_read_1_data_ctrl_fpu_fromInt(payloadArray_io_read_1_data_ctrl_fpu_fromInt),
    .io_read_1_data_ctrl_fpu_wflags(payloadArray_io_read_1_data_ctrl_fpu_wflags),
    .io_read_1_data_ctrl_fpu_fpWen(payloadArray_io_read_1_data_ctrl_fpu_fpWen),
    .io_read_1_data_ctrl_fpu_fmaCmd(payloadArray_io_read_1_data_ctrl_fpu_fmaCmd),
    .io_read_1_data_ctrl_fpu_div(payloadArray_io_read_1_data_ctrl_fpu_div),
    .io_read_1_data_ctrl_fpu_sqrt(payloadArray_io_read_1_data_ctrl_fpu_sqrt),
    .io_read_1_data_ctrl_fpu_fcvt(payloadArray_io_read_1_data_ctrl_fpu_fcvt),
    .io_read_1_data_ctrl_fpu_typ(payloadArray_io_read_1_data_ctrl_fpu_typ),
    .io_read_1_data_ctrl_fpu_fmt(payloadArray_io_read_1_data_ctrl_fpu_fmt),
    .io_read_1_data_ctrl_fpu_ren3(payloadArray_io_read_1_data_ctrl_fpu_ren3),
    .io_read_1_data_ctrl_fpu_rm(payloadArray_io_read_1_data_ctrl_fpu_rm),
    .io_read_1_data_pdest(payloadArray_io_read_1_data_pdest),
    .io_read_1_data_robIdx_flag(payloadArray_io_read_1_data_robIdx_flag),
    .io_read_1_data_robIdx_value(payloadArray_io_read_1_data_robIdx_value),
    .io_read_1_data_lqIdx_flag(payloadArray_io_read_1_data_lqIdx_flag),
    .io_read_1_data_lqIdx_value(payloadArray_io_read_1_data_lqIdx_value),
    .io_write_0_enable(payloadArray_io_write_0_enable),
    .io_write_0_addr(payloadArray_io_write_0_addr),
    .io_write_0_data_cf_pd_isRVC(payloadArray_io_write_0_data_cf_pd_isRVC),
    .io_write_0_data_cf_pd_brType(payloadArray_io_write_0_data_cf_pd_brType),
    .io_write_0_data_cf_pd_isCall(payloadArray_io_write_0_data_cf_pd_isCall),
    .io_write_0_data_cf_pd_isRet(payloadArray_io_write_0_data_cf_pd_isRet),
    .io_write_0_data_cf_pred_taken(payloadArray_io_write_0_data_cf_pred_taken),
    .io_write_0_data_cf_ftqPtr_flag(payloadArray_io_write_0_data_cf_ftqPtr_flag),
    .io_write_0_data_cf_ftqPtr_value(payloadArray_io_write_0_data_cf_ftqPtr_value),
    .io_write_0_data_cf_ftqOffset(payloadArray_io_write_0_data_cf_ftqOffset),
    .io_write_0_data_ctrl_fuType(payloadArray_io_write_0_data_ctrl_fuType),
    .io_write_0_data_ctrl_fuOpType(payloadArray_io_write_0_data_ctrl_fuOpType),
    .io_write_0_data_ctrl_rfWen(payloadArray_io_write_0_data_ctrl_rfWen),
    .io_write_0_data_ctrl_fpWen(payloadArray_io_write_0_data_ctrl_fpWen),
    .io_write_0_data_ctrl_imm(payloadArray_io_write_0_data_ctrl_imm),
    .io_write_0_data_ctrl_fpu_isAddSub(payloadArray_io_write_0_data_ctrl_fpu_isAddSub),
    .io_write_0_data_ctrl_fpu_typeTagIn(payloadArray_io_write_0_data_ctrl_fpu_typeTagIn),
    .io_write_0_data_ctrl_fpu_typeTagOut(payloadArray_io_write_0_data_ctrl_fpu_typeTagOut),
    .io_write_0_data_ctrl_fpu_fromInt(payloadArray_io_write_0_data_ctrl_fpu_fromInt),
    .io_write_0_data_ctrl_fpu_wflags(payloadArray_io_write_0_data_ctrl_fpu_wflags),
    .io_write_0_data_ctrl_fpu_fpWen(payloadArray_io_write_0_data_ctrl_fpu_fpWen),
    .io_write_0_data_ctrl_fpu_fmaCmd(payloadArray_io_write_0_data_ctrl_fpu_fmaCmd),
    .io_write_0_data_ctrl_fpu_div(payloadArray_io_write_0_data_ctrl_fpu_div),
    .io_write_0_data_ctrl_fpu_sqrt(payloadArray_io_write_0_data_ctrl_fpu_sqrt),
    .io_write_0_data_ctrl_fpu_fcvt(payloadArray_io_write_0_data_ctrl_fpu_fcvt),
    .io_write_0_data_ctrl_fpu_typ(payloadArray_io_write_0_data_ctrl_fpu_typ),
    .io_write_0_data_ctrl_fpu_fmt(payloadArray_io_write_0_data_ctrl_fpu_fmt),
    .io_write_0_data_ctrl_fpu_ren3(payloadArray_io_write_0_data_ctrl_fpu_ren3),
    .io_write_0_data_ctrl_fpu_rm(payloadArray_io_write_0_data_ctrl_fpu_rm),
    .io_write_0_data_pdest(payloadArray_io_write_0_data_pdest),
    .io_write_0_data_robIdx_flag(payloadArray_io_write_0_data_robIdx_flag),
    .io_write_0_data_robIdx_value(payloadArray_io_write_0_data_robIdx_value),
    .io_write_0_data_lqIdx_flag(payloadArray_io_write_0_data_lqIdx_flag),
    .io_write_0_data_lqIdx_value(payloadArray_io_write_0_data_lqIdx_value)
  );
  AgeDetector_2 s1_oldestSel_age ( // @[SelectPolicy.scala 174:21]
    .clock(s1_oldestSel_age_clock),
    .reset(s1_oldestSel_age_reset),
    .io_enq_0(s1_oldestSel_age_io_enq_0),
    .io_deq(s1_oldestSel_age_io_deq),
    .io_out(s1_oldestSel_age_io_out)
  );
  OldestSelection_1 oldestSelection ( // @[ReservationStation.scala 498:33]
    .io_oldest_valid(oldestSelection_io_oldest_valid),
    .io_isOverrided_0(oldestSelection_io_isOverrided_0)
  );
  JumpImmExtractor immExt ( // @[DataArray.scala 153:23]
    .io_uop_ctrl_srcType_0(immExt_io_uop_ctrl_srcType_0),
    .io_uop_ctrl_srcType_1(immExt_io_uop_ctrl_srcType_1),
    .io_data_in_0(immExt_io_data_in_0),
    .io_data_in_1(immExt_io_data_in_1),
    .io_data_out_0(immExt_io_data_out_0),
    .io_data_out_1(immExt_io_data_out_1),
    .jump_pc(immExt_jump_pc),
    .jalr_target(immExt_jalr_target)
  );
  DataSelect_2 dataSelect ( // @[ReservationStation.scala 690:26]
    .io_doOverride_0(dataSelect_io_doOverride_0),
    .io_readData_0_0(dataSelect_io_readData_0_0),
    .io_readData_0_1(dataSelect_io_readData_0_1),
    .io_readData_1_0(dataSelect_io_readData_1_0),
    .io_readData_1_1(dataSelect_io_readData_1_1),
    .io_fromSlowPorts_0_0(dataSelect_io_fromSlowPorts_0_0),
    .io_fromSlowPorts_0_1(dataSelect_io_fromSlowPorts_0_1),
    .io_fromSlowPorts_1_0(dataSelect_io_fromSlowPorts_1_0),
    .io_fromSlowPorts_1_1(dataSelect_io_fromSlowPorts_1_1),
    .io_fromSlowPorts_2_0(dataSelect_io_fromSlowPorts_2_0),
    .io_fromSlowPorts_2_1(dataSelect_io_fromSlowPorts_2_1),
    .io_slowData_0(dataSelect_io_slowData_0),
    .io_slowData_1(dataSelect_io_slowData_1),
    .io_slowData_2(dataSelect_io_slowData_2),
    .io_slowData_3(dataSelect_io_slowData_3),
    .io_slowData_4(dataSelect_io_slowData_4),
    .io_enqBypass_0_0(dataSelect_io_enqBypass_0_0),
    .io_enqData_0_0_bits(dataSelect_io_enqData_0_0_bits),
    .io_enqData_0_1_bits(dataSelect_io_enqData_0_1_bits),
    .io_deqData_0_0(dataSelect_io_deqData_0_0),
    .io_deqData_0_1(dataSelect_io_deqData_0_1)
  );
  assign io_fromDispatch_0_ready = emptyThisCycle > _GEN_459; // @[ReservationStation.scala 323:42]
  assign io_deq_0_valid = valid; // @[PipelineConnect.scala 117:17 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_pc = io_deq_0_bits_uop_cf_pc_r; // @[ReservationStation.scala 899:32]
  assign io_deq_0_bits_uop_cf_pd_isRVC = data_uop_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_pd_brType = data_uop_cf_pd_brType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_pd_isCall = data_uop_cf_pd_isCall; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_pd_isRet = data_uop_cf_pd_isRet; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_pred_taken = data_uop_cf_pred_taken; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_ftqPtr_flag = data_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_ftqPtr_value = data_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_ftqOffset = data_uop_cf_ftqOffset; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fuType = data_uop_ctrl_fuType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fuOpType = data_uop_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_rfWen = data_uop_ctrl_rfWen; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpWen = data_uop_ctrl_fpWen; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_imm = data_uop_ctrl_imm; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpu_typeTagOut = data_uop_ctrl_fpu_typeTagOut; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpu_fromInt = data_uop_ctrl_fpu_fromInt; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpu_wflags = data_uop_ctrl_fpu_wflags; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpu_typ = data_uop_ctrl_fpu_typ; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpu_rm = data_uop_ctrl_fpu_rm; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_pdest = data_uop_pdest; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_robIdx_flag = data_uop_robIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_robIdx_value = data_uop_robIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_lqIdx_flag = data_uop_lqIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_lqIdx_value = data_uop_lqIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_src_0 = data_src_0; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_src_1 = data_src_1; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign statusArray_clock = clock;
  assign statusArray_reset = reset;
  assign statusArray_io_redirect_valid = io_redirect_valid; // @[ReservationStation.scala 436:27]
  assign statusArray_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 436:27]
  assign statusArray_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ReservationStation.scala 436:27]
  assign statusArray_io_redirect_bits_level = io_redirect_bits_level; // @[ReservationStation.scala 436:27]
  assign statusArray_io_update_0_enable = s1_dispatchUops_dup_0_0_valid; // @[ReservationStation.scala 444:25]
  assign statusArray_io_update_0_addr = s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 445:23]
  assign statusArray_io_update_0_data_srcState_0 = _statusArray_io_update_0_data_srcState_0_T_2 | |s1_enqWakeup_0_0; // @[ReservationStation.scala 451:63]
  assign statusArray_io_update_0_data_srcState_1 = _statusArray_io_update_0_data_srcState_0_T_5 | |s1_enqWakeup_0_1; // @[ReservationStation.scala 451:63]
  assign statusArray_io_update_0_data_psrc_0 = s1_dispatchUops_dup_0_0_bits_psrc_0; // @[ReservationStation.scala 454:28]
  assign statusArray_io_update_0_data_psrc_1 = s1_dispatchUops_dup_0_0_bits_psrc_1; // @[ReservationStation.scala 454:28]
  assign statusArray_io_update_0_data_srcType_0 = s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 455:31]
  assign statusArray_io_update_0_data_srcType_1 = s1_dispatchUops_dup_0_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 455:31]
  assign statusArray_io_update_0_data_robIdx_flag = s1_dispatchUops_dup_0_0_bits_robIdx_flag; // @[ReservationStation.scala 456:30]
  assign statusArray_io_update_0_data_robIdx_value = s1_dispatchUops_dup_0_0_bits_robIdx_value; // @[ReservationStation.scala 456:30]
  assign statusArray_io_wakeup_0_valid = io_slowPorts_0_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_0_bits_ctrl_rfWen = io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_0_bits_pdest = io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_1_valid = io_slowPorts_1_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_1_bits_ctrl_rfWen = io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_1_bits_pdest = io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_2_valid = io_slowPorts_2_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_2_bits_ctrl_rfWen = io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_2_bits_pdest = io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_3_valid = io_slowPorts_3_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_3_bits_ctrl_rfWen = io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_3_bits_pdest = io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_4_valid = io_slowPorts_4_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_4_bits_ctrl_rfWen = io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_4_bits_pdest = io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_deqResp_0_valid = _statusArray_io_issueGranted_1_valid_T_1 & s2_deq_0_ready; // @[ReservationStation.scala 549:91]
  assign statusArray_io_deqResp_0_bits_rsMask = select_io_grant_0_bits; // @[ReservationStation.scala 550:47]
  assign statusArray_io_deqResp_0_bits_success = ~valid | io_deq_0_ready; // @[ReservationStation.scala 746:41]
  assign statusArray_io_deqResp_1_valid = s1_issue_dispatch_0 & s2_deq_0_ready; // @[ReservationStation.scala 555:67]
  assign statusArray_io_deqResp_1_bits_rsMask = s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 556:49]
  assign statusArray_io_deqResp_1_bits_success = ~valid | io_deq_0_ready; // @[ReservationStation.scala 746:41]
  assign statusArray_io_deqResp_2_valid = |s1_issue_oldest_0 & statusArray_io_issueGranted_2_valid_xs_0; // @[ReservationStation.scala 576:69]
  assign statusArray_io_deqResp_2_bits_rsMask = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign statusArray_io_deqResp_2_bits_success = s1_issue_oldest_0 & s2_deq_0_ready; // @[ParallelMux.scala 64:44]
  assign select_io_validVec = validAfterAllocate; // @[ReservationStation.scala 284:22]
  assign select_io_request = statusArray_io_canIssue; // @[ReservationStation.scala 357:21]
  assign dataArray_clock = clock;
  assign dataArray_io_read_0_addr = select_io_grant_0_bits; // @[ReservationStation.scala 375:31]
  assign dataArray_io_read_1_addr = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign dataArray_io_write_0_enable = s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 602:34]
  assign dataArray_io_write_0_mask_0 = s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0[0] |
    s1_dispatchUops_dup_2_0_bits_srcState_0; // @[Bundle.scala 249:81]
  assign dataArray_io_write_0_mask_1 = s1_dispatchUops_dup_2_0_bits_ctrl_srcType_1[0] |
    s1_dispatchUops_dup_2_0_bits_srcState_1; // @[Bundle.scala 249:81]
  assign dataArray_io_write_0_addr = s1_allocatePtrOH_dup_2_0; // @[ReservationStation.scala 604:32]
  assign dataArray_io_write_0_data_0 = immExt_io_data_out_0; // @[ReservationStation.scala 588:29 592:12]
  assign dataArray_io_write_0_data_1 = immExt_io_data_out_1; // @[ReservationStation.scala 588:29 592:12]
  assign dataArray_io_multiWrite_0_enable = dataArray_io_multiWrite_0_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_0_addr_0 = _dataArray_io_multiWrite_0_addr_0_T_8 | allocateDataCapture; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_0_addr_1 = _dataArray_io_multiWrite_0_addr_1_T_8 | allocateDataCapture_1; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_0_data = dataArray_io_multiWrite_0_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_1_enable = dataArray_io_multiWrite_1_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_1_addr_0 = _dataArray_io_multiWrite_1_addr_0_T_8 | allocateDataCapture_2; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_1_addr_1 = _dataArray_io_multiWrite_1_addr_1_T_8 | allocateDataCapture_3; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_1_data = dataArray_io_multiWrite_1_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_2_enable = dataArray_io_multiWrite_2_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_2_addr_0 = _dataArray_io_multiWrite_2_addr_0_T_8 | allocateDataCapture_4; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_2_addr_1 = _dataArray_io_multiWrite_2_addr_1_T_8 | allocateDataCapture_5; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_2_data = dataArray_io_multiWrite_2_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_3_enable = dataArray_io_multiWrite_3_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_3_addr_0 = _dataArray_io_multiWrite_3_addr_0_T_8 | allocateDataCapture_6; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_3_addr_1 = _dataArray_io_multiWrite_3_addr_1_T_8 | allocateDataCapture_7; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_3_data = dataArray_io_multiWrite_3_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_4_enable = dataArray_io_multiWrite_4_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_4_addr_0 = _dataArray_io_multiWrite_4_addr_0_T_8 | allocateDataCapture_8; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_4_addr_1 = _dataArray_io_multiWrite_4_addr_1_T_8 | allocateDataCapture_9; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_4_data = dataArray_io_multiWrite_4_data_r; // @[ReservationStation.scala 638:12]
  assign payloadArray_clock = clock;
  assign payloadArray_io_read_0_addr = select_io_grant_0_bits; // @[ReservationStation.scala 367:34]
  assign payloadArray_io_read_1_addr = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign payloadArray_io_write_0_enable = s1_dispatchUops_dup_1_0_valid; // @[ReservationStation.scala 470:25]
  assign payloadArray_io_write_0_addr = s1_allocatePtrOH_dup_1_0; // @[ReservationStation.scala 471:23]
  assign payloadArray_io_write_0_data_cf_pd_isRVC = s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_brType = s1_dispatchUops_dup_1_0_bits_cf_pd_brType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_isCall = s1_dispatchUops_dup_1_0_bits_cf_pd_isCall; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_isRet = s1_dispatchUops_dup_1_0_bits_cf_pd_isRet; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pred_taken = s1_dispatchUops_dup_1_0_bits_cf_pred_taken; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ftqPtr_flag = s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ftqPtr_value = s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ftqOffset = s1_dispatchUops_dup_1_0_bits_cf_ftqOffset; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fuType = s1_dispatchUops_dup_1_0_bits_ctrl_fuType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fuOpType = s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_rfWen = s1_dispatchUops_dup_1_0_bits_ctrl_rfWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpWen = s1_dispatchUops_dup_1_0_bits_ctrl_fpWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_imm = s1_dispatchUops_dup_1_0_bits_ctrl_imm; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_isAddSub = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_typeTagIn = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_typeTagOut = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_fromInt = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_wflags = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_fpWen = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_fmaCmd = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_div = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_sqrt = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_fcvt = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_typ = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_fmt = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_ren3 = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpu_rm = s1_dispatchUops_dup_1_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_pdest = s1_dispatchUops_dup_1_0_bits_pdest; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_robIdx_flag = s1_dispatchUops_dup_1_0_bits_robIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_robIdx_value = s1_dispatchUops_dup_1_0_bits_robIdx_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_lqIdx_flag = s1_dispatchUops_dup_1_0_bits_lqIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_lqIdx_value = s1_dispatchUops_dup_1_0_bits_lqIdx_value; // @[ReservationStation.scala 472:23]
  assign s1_oldestSel_age_clock = clock;
  assign s1_oldestSel_age_reset = reset;
  assign s1_oldestSel_age_io_enq_0 = enqVec_REG; // @[ReservationStation.scala 360:{23,23}]
  assign s1_oldestSel_age_io_deq = statusArray_io_flushed; // @[SelectPolicy.scala 176:16]
  assign oldestSelection_io_oldest_valid = |_s1_oldestSel_out_valid_T; // @[SelectPolicy.scala 178:42]
  assign immExt_io_uop_ctrl_srcType_0 = s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0; // @[DataArray.scala 162:19]
  assign immExt_io_uop_ctrl_srcType_1 = s1_dispatchUops_dup_2_0_bits_ctrl_srcType_1; // @[DataArray.scala 162:19]
  assign immExt_io_data_in_0 = io_srcRegValue_0_0; // @[DataArray.scala 163:23]
  assign immExt_io_data_in_1 = io_srcRegValue_0_1; // @[DataArray.scala 163:23]
  assign immExt_jump_pc = io_jump_jumpPc; // @[DataArray.scala 154:19]
  assign immExt_jalr_target = io_jump_jalr_target; // @[DataArray.scala 155:23]
  assign dataSelect_io_doOverride_0 = oldestSelection_io_isOverrided_0; // @[ReservationStation.scala 401:29 503:21]
  assign dataSelect_io_readData_0_0 = dataArray_io_read_0_data_0; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_readData_0_1 = dataArray_io_read_0_data_1; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_readData_1_0 = dataArray_io_read_1_data_0; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_readData_1_1 = dataArray_io_read_1_data_1; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_fromSlowPorts_0_0 = {dataSelect_io_fromSlowPorts_0_0_hi,dataSelect_io_fromSlowPorts_0_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_0_1 = {dataSelect_io_fromSlowPorts_0_1_hi,dataSelect_io_fromSlowPorts_0_1_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_1_0 = {dataSelect_io_fromSlowPorts_1_0_hi,dataSelect_io_fromSlowPorts_1_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_1_1 = {dataSelect_io_fromSlowPorts_1_1_hi,dataSelect_io_fromSlowPorts_1_1_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_2_0 = {dataSelect_io_fromSlowPorts_2_0_hi,dataSelect_io_fromSlowPorts_2_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_2_1 = {dataSelect_io_fromSlowPorts_2_1_hi,dataSelect_io_fromSlowPorts_2_1_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_slowData_0 = dataArray_io_multiWrite_0_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_1 = dataArray_io_multiWrite_1_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_2 = dataArray_io_multiWrite_2_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_3 = dataArray_io_multiWrite_3_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_4 = dataArray_io_multiWrite_4_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_enqBypass_0_0 = canBypass & ~s1_issue_oldest_0 & ~select_io_grant_0_valid; // @[ReservationStation.scala 511:62]
  assign dataSelect_io_enqData_0_0_bits = immExt_io_data_out_0; // @[ReservationStation.scala 588:29 592:12]
  assign dataSelect_io_enqData_0_1_bits = immExt_io_data_out_1; // @[ReservationStation.scala 588:29 592:12]
  always @(posedge clock) begin
    emptyThisCycle <= numEmptyAfterS1 + _GEN_458; // @[ReservationStation.scala 318:39]
    allocateThisCycle <= {{1'd0}, s0_doEnqueue_0}; // @[ReservationStation.scala 322:42]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 360:90]
      enqVec_REG <= s0_allocatePtrOH_0;
    end else begin
      enqVec_REG <= 8'h0;
    end
    s1_dispatchUops_dup_0_0_valid <= _s0_doEnqueue_0_T & _s0_doEnqueue_0_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_pd_isRVC <= io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_pd_brType <= io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_pd_isCall <= io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_pd_isRet <= io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_pred_taken <= io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_flag <= io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value <= io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_ftqOffset <= io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0 <= io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_srcType_1 <= io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fuType <= io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType <= io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_rfWen <= io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpWen <= io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_imm <= io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typeTagOut <= io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpu_fromInt <= io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpu_wflags <= io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typ <= io_fromDispatch_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpu_rm <= io_fromDispatch_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_srcState_0 <= io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_srcState_1 <= io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_psrc_0 <= io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_psrc_1 <= io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_pdest <= io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_robIdx_flag <= io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_robIdx_value <= io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_lqIdx_flag <= io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_lqIdx_value <= io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_1_0_valid <= _s0_doEnqueue_0_T & _s0_doEnqueue_0_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC <= io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_brType <= io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_isCall <= io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_isRet <= io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pred_taken <= io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag <= io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value <= io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ftqOffset <= io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fuType <= io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType <= io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_rfWen <= io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpWen <= io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_imm <= io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_isAddSub <= io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagIn <= io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagOut <= io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fromInt <= io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_wflags <= io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fpWen <= io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmaCmd <= io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_div <= io_fromDispatch_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_sqrt <= io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fcvt <= io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typ <= io_fromDispatch_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmt <= io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_ren3 <= io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpu_rm <= io_fromDispatch_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_pdest <= io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_robIdx_flag <= io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_robIdx_value <= io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_lqIdx_flag <= io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_lqIdx_value <= io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_2_0_valid <= _s0_doEnqueue_0_T & _s0_doEnqueue_0_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0 <= io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_0_bits_ctrl_srcType_1 <= io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_0_bits_srcState_0 <= io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_0_bits_srcState_1 <= io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 418:16]
    end
    s1_allocatePtrOH_dup_0_0 <= select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_1_0 <= select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_2_0 <= select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_enqWakeup_0_0 <= {s0_enqWakeup_0_0_hi,s0_enqWakeup_0_0_lo}; // @[ReservationStation.scala 340:100]
    s1_enqWakeup_0_1 <= {s0_enqWakeup_0_1_hi,s0_enqWakeup_0_1_lo}; // @[ReservationStation.scala 340:100]
    s1_enqDataCapture_0_0 <= {s0_enqDataCapture_0_0_hi,s0_enqDataCapture_0_0_lo}; // @[ReservationStation.scala 341:104]
    s1_enqDataCapture_0_1 <= {s0_enqDataCapture_0_1_hi,s0_enqDataCapture_0_1_lo}; // @[ReservationStation.scala 341:104]
    slowWakeupMatchVec_0_0 <= statusArray_io_wakeupMatch_0_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_0_1 <= statusArray_io_wakeupMatch_0_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_1_0 <= statusArray_io_wakeupMatch_1_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_1_1 <= statusArray_io_wakeupMatch_1_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_2_0 <= statusArray_io_wakeupMatch_2_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_2_1 <= statusArray_io_wakeupMatch_2_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_3_0 <= statusArray_io_wakeupMatch_3_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_3_1 <= statusArray_io_wakeupMatch_3_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_4_0 <= statusArray_io_wakeupMatch_4_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_4_1 <= statusArray_io_wakeupMatch_4_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_5_0 <= statusArray_io_wakeupMatch_5_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_5_1 <= statusArray_io_wakeupMatch_5_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_6_0 <= statusArray_io_wakeupMatch_6_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_6_1 <= statusArray_io_wakeupMatch_6_1; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_7_0 <= statusArray_io_wakeupMatch_7_0; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_7_1 <= statusArray_io_wakeupMatch_7_1; // @[ReservationStation.scala 628:67]
    dataArray_io_multiWrite_0_enable_REG <= io_slowPorts_0_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_0_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_0_data_r <= io_slowPorts_0_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_1_enable_REG <= io_slowPorts_1_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_1_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_1_data_r <= io_slowPorts_1_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_2_enable_REG <= io_slowPorts_2_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_2_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_2_data_r <= io_slowPorts_2_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_3_enable_REG <= io_slowPorts_3_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_3_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_3_data_r <= io_slowPorts_3_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_4_enable_REG <= io_slowPorts_4_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_4_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_4_data_r <= io_slowPorts_4_bits_data; // @[Reg.scala 17:22]
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_robIdx_flag <= payloadArray_io_read_1_data_robIdx_flag;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_robIdx_flag <= payloadArray_io_read_0_data_robIdx_flag;
      end else begin
        data_uop_robIdx_flag <= s1_dispatchUops_dup_0_0_bits_robIdx_flag;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_robIdx_value <= payloadArray_io_read_1_data_robIdx_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_robIdx_value <= payloadArray_io_read_0_data_robIdx_value;
      end else begin
        data_uop_robIdx_value <= s1_dispatchUops_dup_0_0_bits_robIdx_value;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_pd_isRVC <= payloadArray_io_read_1_data_cf_pd_isRVC;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_pd_isRVC <= payloadArray_io_read_0_data_cf_pd_isRVC;
      end else begin
        data_uop_cf_pd_isRVC <= s1_dispatchUops_dup_0_0_bits_cf_pd_isRVC;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_pd_brType <= payloadArray_io_read_1_data_cf_pd_brType;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_pd_brType <= payloadArray_io_read_0_data_cf_pd_brType;
      end else begin
        data_uop_cf_pd_brType <= s1_dispatchUops_dup_0_0_bits_cf_pd_brType;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_pd_isCall <= payloadArray_io_read_1_data_cf_pd_isCall;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_pd_isCall <= payloadArray_io_read_0_data_cf_pd_isCall;
      end else begin
        data_uop_cf_pd_isCall <= s1_dispatchUops_dup_0_0_bits_cf_pd_isCall;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_pd_isRet <= payloadArray_io_read_1_data_cf_pd_isRet;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_pd_isRet <= payloadArray_io_read_0_data_cf_pd_isRet;
      end else begin
        data_uop_cf_pd_isRet <= s1_dispatchUops_dup_0_0_bits_cf_pd_isRet;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_pred_taken <= payloadArray_io_read_1_data_cf_pred_taken;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_pred_taken <= payloadArray_io_read_0_data_cf_pred_taken;
      end else begin
        data_uop_cf_pred_taken <= s1_dispatchUops_dup_0_0_bits_cf_pred_taken;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_ftqPtr_flag <= payloadArray_io_read_1_data_cf_ftqPtr_flag;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_ftqPtr_flag <= payloadArray_io_read_0_data_cf_ftqPtr_flag;
      end else begin
        data_uop_cf_ftqPtr_flag <= s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_flag;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_ftqPtr_value <= payloadArray_io_read_1_data_cf_ftqPtr_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_ftqPtr_value <= payloadArray_io_read_0_data_cf_ftqPtr_value;
      end else begin
        data_uop_cf_ftqPtr_value <= s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_ftqOffset <= payloadArray_io_read_1_data_cf_ftqOffset;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_ftqOffset <= payloadArray_io_read_0_data_cf_ftqOffset;
      end else begin
        data_uop_cf_ftqOffset <= s1_dispatchUops_dup_0_0_bits_cf_ftqOffset;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fuType <= payloadArray_io_read_1_data_ctrl_fuType;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fuType <= payloadArray_io_read_0_data_ctrl_fuType;
      end else begin
        data_uop_ctrl_fuType <= s1_dispatchUops_dup_0_0_bits_ctrl_fuType;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fuOpType <= payloadArray_io_read_1_data_ctrl_fuOpType;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fuOpType <= payloadArray_io_read_0_data_ctrl_fuOpType;
      end else begin
        data_uop_ctrl_fuOpType <= s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_rfWen <= payloadArray_io_read_1_data_ctrl_rfWen;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_rfWen <= payloadArray_io_read_0_data_ctrl_rfWen;
      end else begin
        data_uop_ctrl_rfWen <= s1_dispatchUops_dup_0_0_bits_ctrl_rfWen;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpWen <= payloadArray_io_read_1_data_ctrl_fpWen;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpWen <= payloadArray_io_read_0_data_ctrl_fpWen;
      end else begin
        data_uop_ctrl_fpWen <= s1_dispatchUops_dup_0_0_bits_ctrl_fpWen;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_imm <= payloadArray_io_read_1_data_ctrl_imm;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_imm <= payloadArray_io_read_0_data_ctrl_imm;
      end else begin
        data_uop_ctrl_imm <= s1_dispatchUops_dup_0_0_bits_ctrl_imm;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpu_typeTagOut <= payloadArray_io_read_1_data_ctrl_fpu_typeTagOut;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpu_typeTagOut <= payloadArray_io_read_0_data_ctrl_fpu_typeTagOut;
      end else begin
        data_uop_ctrl_fpu_typeTagOut <= s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typeTagOut;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpu_fromInt <= payloadArray_io_read_1_data_ctrl_fpu_fromInt;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpu_fromInt <= payloadArray_io_read_0_data_ctrl_fpu_fromInt;
      end else begin
        data_uop_ctrl_fpu_fromInt <= s1_dispatchUops_dup_0_0_bits_ctrl_fpu_fromInt;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpu_wflags <= payloadArray_io_read_1_data_ctrl_fpu_wflags;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpu_wflags <= payloadArray_io_read_0_data_ctrl_fpu_wflags;
      end else begin
        data_uop_ctrl_fpu_wflags <= s1_dispatchUops_dup_0_0_bits_ctrl_fpu_wflags;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpu_typ <= payloadArray_io_read_1_data_ctrl_fpu_typ;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpu_typ <= payloadArray_io_read_0_data_ctrl_fpu_typ;
      end else begin
        data_uop_ctrl_fpu_typ <= s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typ;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpu_rm <= payloadArray_io_read_1_data_ctrl_fpu_rm;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpu_rm <= payloadArray_io_read_0_data_ctrl_fpu_rm;
      end else begin
        data_uop_ctrl_fpu_rm <= s1_dispatchUops_dup_0_0_bits_ctrl_fpu_rm;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_pdest <= payloadArray_io_read_1_data_pdest;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_pdest <= payloadArray_io_read_0_data_pdest;
      end else begin
        data_uop_pdest <= s1_dispatchUops_dup_0_0_bits_pdest;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_lqIdx_flag <= payloadArray_io_read_1_data_lqIdx_flag;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_lqIdx_flag <= payloadArray_io_read_0_data_lqIdx_flag;
      end else begin
        data_uop_lqIdx_flag <= s1_dispatchUops_dup_0_0_bits_lqIdx_flag;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_lqIdx_value <= payloadArray_io_read_1_data_lqIdx_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_lqIdx_value <= payloadArray_io_read_0_data_lqIdx_value;
      end else begin
        data_uop_lqIdx_value <= s1_dispatchUops_dup_0_0_bits_lqIdx_value;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      data_src_0 <= s1_out_0_bits_src_0; // @[Reg.scala 17:22]
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      data_src_1 <= s1_out_0_bits_src_1; // @[Reg.scala 17:22]
    end
    if (writeEn) begin // @[ReservationStation.scala 888:22]
      pcMem_0 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_1) begin // @[ReservationStation.scala 888:22]
      pcMem_1 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_2) begin // @[ReservationStation.scala 888:22]
      pcMem_2 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_3) begin // @[ReservationStation.scala 888:22]
      pcMem_3 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_4) begin // @[ReservationStation.scala 888:22]
      pcMem_4 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_5) begin // @[ReservationStation.scala 888:22]
      pcMem_5 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_6) begin // @[ReservationStation.scala 888:22]
      pcMem_6 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (writeEn_7) begin // @[ReservationStation.scala 888:22]
      pcMem_7 <= io_jump_jumpPc; // @[ReservationStation.scala 889:18]
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (|s1_issue_dispatch_0) begin // @[ReservationStation.scala 898:25]
        io_deq_0_bits_uop_cf_pc_r <= io_jump_jumpPc;
      end else if (s1_issue_oldest_0) begin // @[ReservationStation.scala 897:23]
        io_deq_0_bits_uop_cf_pc_r <= oldestPc;
      end else begin
        io_deq_0_bits_uop_cf_pc_r <= issuePc;
      end
    end
    io_perf_0_value_REG <= &statusArray_io_isValid; // @[ReservationStation.scala 951:56]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ReservationStation.scala 283:52]
      validAfterAllocate <= 8'h0;
    end else begin
      validAfterAllocate <= statusArray_io_isValidNext | validUpdateByAllocate;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 111:21]
      valid <= 1'h0; // @[PipelineConnect.scala 111:29]
    end else begin
      valid <= s1_out_fire_0 | _GEN_333;
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
  validAfterAllocate = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  emptyThisCycle = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  allocateThisCycle = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  enqVec_REG = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_pd_isRVC = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_pd_brType = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_pd_isCall = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_pd_isRet = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_pred_taken = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_ftqOffset = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_srcType_1 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fuType = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_rfWen = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpWen = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_imm = _RAND_19[19:0];
  _RAND_20 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typeTagOut = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_fromInt = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_wflags = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_typ = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpu_rm = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_srcState_0 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_srcState_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_psrc_0 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_psrc_1 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_pdest = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_robIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_robIdx_value = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_lqIdx_flag = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_lqIdx_value = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_valid = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_brType = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_isCall = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_isRet = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pred_taken = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ftqOffset = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fuType = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_rfWen = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpWen = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_imm = _RAND_47[19:0];
  _RAND_48 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_isAddSub = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagIn = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typeTagOut = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fromInt = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_wflags = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fpWen = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmaCmd = _RAND_54[1:0];
  _RAND_55 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_div = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_sqrt = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fcvt = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_typ = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_fmt = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_ren3 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpu_rm = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_pdest = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_robIdx_flag = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_robIdx_value = _RAND_64[4:0];
  _RAND_65 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_lqIdx_flag = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_lqIdx_value = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_valid = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_bits_ctrl_srcType_1 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_bits_srcState_0 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_bits_srcState_1 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_0_0 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_1_0 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_2_0 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  s1_enqWakeup_0_0 = _RAND_75[4:0];
  _RAND_76 = {1{`RANDOM}};
  s1_enqWakeup_0_1 = _RAND_76[4:0];
  _RAND_77 = {1{`RANDOM}};
  s1_enqDataCapture_0_0 = _RAND_77[4:0];
  _RAND_78 = {1{`RANDOM}};
  s1_enqDataCapture_0_1 = _RAND_78[4:0];
  _RAND_79 = {1{`RANDOM}};
  valid = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  slowWakeupMatchVec_0_0 = _RAND_80[4:0];
  _RAND_81 = {1{`RANDOM}};
  slowWakeupMatchVec_0_1 = _RAND_81[4:0];
  _RAND_82 = {1{`RANDOM}};
  slowWakeupMatchVec_1_0 = _RAND_82[4:0];
  _RAND_83 = {1{`RANDOM}};
  slowWakeupMatchVec_1_1 = _RAND_83[4:0];
  _RAND_84 = {1{`RANDOM}};
  slowWakeupMatchVec_2_0 = _RAND_84[4:0];
  _RAND_85 = {1{`RANDOM}};
  slowWakeupMatchVec_2_1 = _RAND_85[4:0];
  _RAND_86 = {1{`RANDOM}};
  slowWakeupMatchVec_3_0 = _RAND_86[4:0];
  _RAND_87 = {1{`RANDOM}};
  slowWakeupMatchVec_3_1 = _RAND_87[4:0];
  _RAND_88 = {1{`RANDOM}};
  slowWakeupMatchVec_4_0 = _RAND_88[4:0];
  _RAND_89 = {1{`RANDOM}};
  slowWakeupMatchVec_4_1 = _RAND_89[4:0];
  _RAND_90 = {1{`RANDOM}};
  slowWakeupMatchVec_5_0 = _RAND_90[4:0];
  _RAND_91 = {1{`RANDOM}};
  slowWakeupMatchVec_5_1 = _RAND_91[4:0];
  _RAND_92 = {1{`RANDOM}};
  slowWakeupMatchVec_6_0 = _RAND_92[4:0];
  _RAND_93 = {1{`RANDOM}};
  slowWakeupMatchVec_6_1 = _RAND_93[4:0];
  _RAND_94 = {1{`RANDOM}};
  slowWakeupMatchVec_7_0 = _RAND_94[4:0];
  _RAND_95 = {1{`RANDOM}};
  slowWakeupMatchVec_7_1 = _RAND_95[4:0];
  _RAND_96 = {1{`RANDOM}};
  dataArray_io_multiWrite_0_enable_REG = _RAND_96[0:0];
  _RAND_97 = {2{`RANDOM}};
  dataArray_io_multiWrite_0_data_r = _RAND_97[63:0];
  _RAND_98 = {1{`RANDOM}};
  dataArray_io_multiWrite_1_enable_REG = _RAND_98[0:0];
  _RAND_99 = {2{`RANDOM}};
  dataArray_io_multiWrite_1_data_r = _RAND_99[63:0];
  _RAND_100 = {1{`RANDOM}};
  dataArray_io_multiWrite_2_enable_REG = _RAND_100[0:0];
  _RAND_101 = {2{`RANDOM}};
  dataArray_io_multiWrite_2_data_r = _RAND_101[63:0];
  _RAND_102 = {1{`RANDOM}};
  dataArray_io_multiWrite_3_enable_REG = _RAND_102[0:0];
  _RAND_103 = {2{`RANDOM}};
  dataArray_io_multiWrite_3_data_r = _RAND_103[63:0];
  _RAND_104 = {1{`RANDOM}};
  dataArray_io_multiWrite_4_enable_REG = _RAND_104[0:0];
  _RAND_105 = {2{`RANDOM}};
  dataArray_io_multiWrite_4_data_r = _RAND_105[63:0];
  _RAND_106 = {1{`RANDOM}};
  data_uop_robIdx_flag = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  data_uop_robIdx_value = _RAND_107[4:0];
  _RAND_108 = {1{`RANDOM}};
  data_uop_cf_pd_isRVC = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  data_uop_cf_pd_brType = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  data_uop_cf_pd_isCall = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  data_uop_cf_pd_isRet = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  data_uop_cf_pred_taken = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  data_uop_cf_ftqPtr_flag = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  data_uop_cf_ftqPtr_value = _RAND_114[2:0];
  _RAND_115 = {1{`RANDOM}};
  data_uop_cf_ftqOffset = _RAND_115[2:0];
  _RAND_116 = {1{`RANDOM}};
  data_uop_ctrl_fuType = _RAND_116[3:0];
  _RAND_117 = {1{`RANDOM}};
  data_uop_ctrl_fuOpType = _RAND_117[6:0];
  _RAND_118 = {1{`RANDOM}};
  data_uop_ctrl_rfWen = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  data_uop_ctrl_fpWen = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  data_uop_ctrl_imm = _RAND_120[19:0];
  _RAND_121 = {1{`RANDOM}};
  data_uop_ctrl_fpu_typeTagOut = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  data_uop_ctrl_fpu_fromInt = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  data_uop_ctrl_fpu_wflags = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  data_uop_ctrl_fpu_typ = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  data_uop_ctrl_fpu_rm = _RAND_125[2:0];
  _RAND_126 = {1{`RANDOM}};
  data_uop_pdest = _RAND_126[5:0];
  _RAND_127 = {1{`RANDOM}};
  data_uop_lqIdx_flag = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  data_uop_lqIdx_value = _RAND_128[3:0];
  _RAND_129 = {2{`RANDOM}};
  data_src_0 = _RAND_129[63:0];
  _RAND_130 = {2{`RANDOM}};
  data_src_1 = _RAND_130[63:0];
  _RAND_131 = {2{`RANDOM}};
  pcMem_0 = _RAND_131[38:0];
  _RAND_132 = {2{`RANDOM}};
  pcMem_1 = _RAND_132[38:0];
  _RAND_133 = {2{`RANDOM}};
  pcMem_2 = _RAND_133[38:0];
  _RAND_134 = {2{`RANDOM}};
  pcMem_3 = _RAND_134[38:0];
  _RAND_135 = {2{`RANDOM}};
  pcMem_4 = _RAND_135[38:0];
  _RAND_136 = {2{`RANDOM}};
  pcMem_5 = _RAND_136[38:0];
  _RAND_137 = {2{`RANDOM}};
  pcMem_6 = _RAND_137[38:0];
  _RAND_138 = {2{`RANDOM}};
  pcMem_7 = _RAND_138[38:0];
  _RAND_139 = {2{`RANDOM}};
  io_deq_0_bits_uop_cf_pc_r = _RAND_139[38:0];
  _RAND_140 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_141[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    validAfterAllocate = 8'h0;
  end
  if (reset) begin
    valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

