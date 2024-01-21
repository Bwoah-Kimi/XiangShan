module Rename(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_redirect_bits_debugIsCtrl,
  input         io_redirect_bits_debugIsMemVio,
  input         io_robCommits_isCommit,
  input         io_robCommits_commitValid_0,
  input         io_robCommits_commitValid_1,
  input         io_robCommits_isWalk,
  input         io_robCommits_walkValid_0,
  input         io_robCommits_walkValid_1,
  input  [4:0]  io_robCommits_info_0_ldest,
  input         io_robCommits_info_0_rfWen,
  input         io_robCommits_info_0_fpWen,
  input         io_robCommits_info_0_isMove,
  input  [4:0]  io_robCommits_info_1_ldest,
  input         io_robCommits_info_1_rfWen,
  input         io_robCommits_info_1_fpWen,
  input         io_robCommits_info_1_isMove,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [9:0]  io_in_0_bits_cf_foldpc,
  input         io_in_0_bits_cf_exceptionVec_1,
  input         io_in_0_bits_cf_exceptionVec_2,
  input         io_in_0_bits_cf_exceptionVec_12,
  input         io_in_0_bits_cf_trigger_frontendHit_0,
  input         io_in_0_bits_cf_trigger_frontendHit_1,
  input         io_in_0_bits_cf_trigger_frontendHit_2,
  input         io_in_0_bits_cf_trigger_frontendHit_3,
  input         io_in_0_bits_cf_trigger_backendEn_0,
  input         io_in_0_bits_cf_trigger_backendEn_1,
  input         io_in_0_bits_cf_pd_isRVC,
  input  [1:0]  io_in_0_bits_cf_pd_brType,
  input         io_in_0_bits_cf_pd_isCall,
  input         io_in_0_bits_cf_pd_isRet,
  input         io_in_0_bits_cf_pred_taken,
  input         io_in_0_bits_cf_crossPageIPFFix,
  input         io_in_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_0_bits_cf_ftqOffset,
  input  [1:0]  io_in_0_bits_ctrl_srcType_0,
  input  [1:0]  io_in_0_bits_ctrl_srcType_1,
  input  [1:0]  io_in_0_bits_ctrl_srcType_2,
  input  [4:0]  io_in_0_bits_ctrl_lsrc_0,
  input  [4:0]  io_in_0_bits_ctrl_lsrc_1,
  input  [4:0]  io_in_0_bits_ctrl_ldest,
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input         io_in_0_bits_ctrl_isXSTrap,
  input         io_in_0_bits_ctrl_noSpecExec,
  input         io_in_0_bits_ctrl_blockBackward,
  input         io_in_0_bits_ctrl_flushPipe,
  input  [3:0]  io_in_0_bits_ctrl_selImm,
  input  [19:0] io_in_0_bits_ctrl_imm,
  input  [2:0]  io_in_0_bits_ctrl_commitType,
  input         io_in_0_bits_ctrl_fpu_isAddSub,
  input         io_in_0_bits_ctrl_fpu_typeTagIn,
  input         io_in_0_bits_ctrl_fpu_typeTagOut,
  input         io_in_0_bits_ctrl_fpu_fromInt,
  input         io_in_0_bits_ctrl_fpu_wflags,
  input         io_in_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_0_bits_ctrl_fpu_fmaCmd,
  input         io_in_0_bits_ctrl_fpu_div,
  input         io_in_0_bits_ctrl_fpu_sqrt,
  input         io_in_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_0_bits_ctrl_fpu_fmt,
  input         io_in_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_0_bits_ctrl_fpu_rm,
  input         io_in_0_bits_ctrl_isMove,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [9:0]  io_in_1_bits_cf_foldpc,
  input         io_in_1_bits_cf_exceptionVec_1,
  input         io_in_1_bits_cf_exceptionVec_2,
  input         io_in_1_bits_cf_exceptionVec_12,
  input         io_in_1_bits_cf_trigger_frontendHit_0,
  input         io_in_1_bits_cf_trigger_frontendHit_1,
  input         io_in_1_bits_cf_trigger_frontendHit_2,
  input         io_in_1_bits_cf_trigger_frontendHit_3,
  input         io_in_1_bits_cf_trigger_backendEn_0,
  input         io_in_1_bits_cf_trigger_backendEn_1,
  input         io_in_1_bits_cf_pd_isRVC,
  input  [1:0]  io_in_1_bits_cf_pd_brType,
  input         io_in_1_bits_cf_pd_isCall,
  input         io_in_1_bits_cf_pd_isRet,
  input         io_in_1_bits_cf_pred_taken,
  input         io_in_1_bits_cf_crossPageIPFFix,
  input         io_in_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_1_bits_cf_ftqOffset,
  input  [1:0]  io_in_1_bits_ctrl_srcType_0,
  input  [1:0]  io_in_1_bits_ctrl_srcType_1,
  input  [1:0]  io_in_1_bits_ctrl_srcType_2,
  input  [4:0]  io_in_1_bits_ctrl_lsrc_0,
  input  [4:0]  io_in_1_bits_ctrl_lsrc_1,
  input  [4:0]  io_in_1_bits_ctrl_lsrc_2,
  input  [4:0]  io_in_1_bits_ctrl_ldest,
  input  [3:0]  io_in_1_bits_ctrl_fuType,
  input  [6:0]  io_in_1_bits_ctrl_fuOpType,
  input         io_in_1_bits_ctrl_rfWen,
  input         io_in_1_bits_ctrl_fpWen,
  input         io_in_1_bits_ctrl_isXSTrap,
  input         io_in_1_bits_ctrl_noSpecExec,
  input         io_in_1_bits_ctrl_blockBackward,
  input         io_in_1_bits_ctrl_flushPipe,
  input  [3:0]  io_in_1_bits_ctrl_selImm,
  input  [19:0] io_in_1_bits_ctrl_imm,
  input         io_in_1_bits_ctrl_fpu_isAddSub,
  input         io_in_1_bits_ctrl_fpu_typeTagIn,
  input         io_in_1_bits_ctrl_fpu_typeTagOut,
  input         io_in_1_bits_ctrl_fpu_fromInt,
  input         io_in_1_bits_ctrl_fpu_wflags,
  input         io_in_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_1_bits_ctrl_fpu_fmaCmd,
  input         io_in_1_bits_ctrl_fpu_div,
  input         io_in_1_bits_ctrl_fpu_sqrt,
  input         io_in_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_1_bits_ctrl_fpu_fmt,
  input         io_in_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_1_bits_ctrl_fpu_rm,
  input         io_in_1_bits_ctrl_isMove,
  input         io_fusionInfo_0_rs2FromRs1,
  input         io_fusionInfo_0_rs2FromRs2,
  input         io_fusionInfo_0_rs2FromZero,
  input         io_ssit_0_valid,
  input  [4:0]  io_ssit_0_ssid,
  input         io_ssit_0_strict,
  input         io_ssit_1_valid,
  input  [4:0]  io_ssit_1_ssid,
  input         io_ssit_1_strict,
  input  [5:0]  io_intReadPorts_0_0,
  input  [5:0]  io_intReadPorts_0_1,
  input  [5:0]  io_intReadPorts_1_0,
  input  [5:0]  io_intReadPorts_1_1,
  input  [5:0]  io_fpReadPorts_0_0,
  input  [5:0]  io_fpReadPorts_0_1,
  input  [5:0]  io_fpReadPorts_0_2,
  input  [5:0]  io_fpReadPorts_1_0,
  input  [5:0]  io_fpReadPorts_1_1,
  input  [5:0]  io_fpReadPorts_1_2,
  output        io_intRenamePorts_0_wen,
  output [4:0]  io_intRenamePorts_0_addr,
  output [5:0]  io_intRenamePorts_0_data,
  output        io_intRenamePorts_1_wen,
  output [4:0]  io_intRenamePorts_1_addr,
  output [5:0]  io_intRenamePorts_1_data,
  output        io_fpRenamePorts_0_wen,
  output [4:0]  io_fpRenamePorts_0_addr,
  output [5:0]  io_fpRenamePorts_0_data,
  output        io_fpRenamePorts_1_wen,
  output [4:0]  io_fpRenamePorts_1_addr,
  output [5:0]  io_fpRenamePorts_1_data,
  input  [5:0]  io_int_old_pdest_0,
  input  [5:0]  io_int_old_pdest_1,
  input  [5:0]  io_fp_old_pdest_0,
  input  [5:0]  io_fp_old_pdest_1,
  input         io_int_need_free_0,
  input         io_int_need_free_1,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output        io_out_0_bits_cf_exceptionVec_1,
  output        io_out_0_bits_cf_exceptionVec_2,
  output        io_out_0_bits_cf_exceptionVec_12,
  output        io_out_0_bits_cf_trigger_frontendHit_0,
  output        io_out_0_bits_cf_trigger_frontendHit_1,
  output        io_out_0_bits_cf_trigger_frontendHit_2,
  output        io_out_0_bits_cf_trigger_frontendHit_3,
  output        io_out_0_bits_cf_trigger_backendEn_0,
  output        io_out_0_bits_cf_trigger_backendEn_1,
  output        io_out_0_bits_cf_pd_isRVC,
  output [1:0]  io_out_0_bits_cf_pd_brType,
  output        io_out_0_bits_cf_pd_isCall,
  output        io_out_0_bits_cf_pd_isRet,
  output        io_out_0_bits_cf_pred_taken,
  output        io_out_0_bits_cf_crossPageIPFFix,
  output        io_out_0_bits_cf_storeSetHit,
  output        io_out_0_bits_cf_loadWaitStrict,
  output [4:0]  io_out_0_bits_cf_ssid,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
  output [1:0]  io_out_0_bits_ctrl_srcType_1,
  output [1:0]  io_out_0_bits_ctrl_srcType_2,
  output [4:0]  io_out_0_bits_ctrl_ldest,
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output        io_out_0_bits_ctrl_isXSTrap,
  output        io_out_0_bits_ctrl_noSpecExec,
  output        io_out_0_bits_ctrl_blockBackward,
  output        io_out_0_bits_ctrl_flushPipe,
  output [3:0]  io_out_0_bits_ctrl_selImm,
  output [19:0] io_out_0_bits_ctrl_imm,
  output [2:0]  io_out_0_bits_ctrl_commitType,
  output        io_out_0_bits_ctrl_fpu_isAddSub,
  output        io_out_0_bits_ctrl_fpu_typeTagIn,
  output        io_out_0_bits_ctrl_fpu_typeTagOut,
  output        io_out_0_bits_ctrl_fpu_fromInt,
  output        io_out_0_bits_ctrl_fpu_wflags,
  output        io_out_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmaCmd,
  output        io_out_0_bits_ctrl_fpu_div,
  output        io_out_0_bits_ctrl_fpu_sqrt,
  output        io_out_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_0_bits_ctrl_fpu_typ,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmt,
  output        io_out_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_0_bits_ctrl_fpu_rm,
  output        io_out_0_bits_ctrl_isMove,
  output [5:0]  io_out_0_bits_psrc_0,
  output [5:0]  io_out_0_bits_psrc_1,
  output [5:0]  io_out_0_bits_psrc_2,
  output [5:0]  io_out_0_bits_pdest,
  output        io_out_0_bits_robIdx_flag,
  output [4:0]  io_out_0_bits_robIdx_value,
  output        io_out_0_bits_eliminatedMove,
  output        io_out_0_bits_snapshot,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output        io_out_1_bits_cf_exceptionVec_1,
  output        io_out_1_bits_cf_exceptionVec_2,
  output        io_out_1_bits_cf_exceptionVec_12,
  output        io_out_1_bits_cf_trigger_frontendHit_0,
  output        io_out_1_bits_cf_trigger_frontendHit_1,
  output        io_out_1_bits_cf_trigger_frontendHit_2,
  output        io_out_1_bits_cf_trigger_frontendHit_3,
  output        io_out_1_bits_cf_trigger_backendEn_0,
  output        io_out_1_bits_cf_trigger_backendEn_1,
  output        io_out_1_bits_cf_pd_isRVC,
  output [1:0]  io_out_1_bits_cf_pd_brType,
  output        io_out_1_bits_cf_pd_isCall,
  output        io_out_1_bits_cf_pd_isRet,
  output        io_out_1_bits_cf_pred_taken,
  output        io_out_1_bits_cf_crossPageIPFFix,
  output        io_out_1_bits_cf_storeSetHit,
  output        io_out_1_bits_cf_loadWaitStrict,
  output [4:0]  io_out_1_bits_cf_ssid,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
  output [1:0]  io_out_1_bits_ctrl_srcType_1,
  output [1:0]  io_out_1_bits_ctrl_srcType_2,
  output [4:0]  io_out_1_bits_ctrl_ldest,
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output        io_out_1_bits_ctrl_isXSTrap,
  output        io_out_1_bits_ctrl_noSpecExec,
  output        io_out_1_bits_ctrl_blockBackward,
  output        io_out_1_bits_ctrl_flushPipe,
  output [3:0]  io_out_1_bits_ctrl_selImm,
  output [19:0] io_out_1_bits_ctrl_imm,
  output        io_out_1_bits_ctrl_fpu_isAddSub,
  output        io_out_1_bits_ctrl_fpu_typeTagIn,
  output        io_out_1_bits_ctrl_fpu_typeTagOut,
  output        io_out_1_bits_ctrl_fpu_fromInt,
  output        io_out_1_bits_ctrl_fpu_wflags,
  output        io_out_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmaCmd,
  output        io_out_1_bits_ctrl_fpu_div,
  output        io_out_1_bits_ctrl_fpu_sqrt,
  output        io_out_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_1_bits_ctrl_fpu_typ,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmt,
  output        io_out_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_1_bits_ctrl_fpu_rm,
  output        io_out_1_bits_ctrl_isMove,
  output [5:0]  io_out_1_bits_psrc_0,
  output [5:0]  io_out_1_bits_psrc_1,
  output [5:0]  io_out_1_bits_psrc_2,
  output [5:0]  io_out_1_bits_pdest,
  output        io_out_1_bits_robIdx_flag,
  output [4:0]  io_out_1_bits_robIdx_value,
  output        io_out_1_bits_eliminatedMove,
  input         io_snpt_snptDeq,
  input         io_snpt_useSnpt,
  input  [1:0]  io_snpt_snptSelect,
  output        io_stallReason_in_backReason_valid,
  output [5:0]  io_stallReason_in_backReason_bits,
  input         io_stallReason_out_backReason_valid,
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
  output [5:0]  io_perf_13_value
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
`endif // RANDOMIZE_REG_INIT
  wire  intFreeList_clock; // @[Rename.scala 65:27]
  wire  intFreeList_reset; // @[Rename.scala 65:27]
  wire  intFreeList_io_redirect; // @[Rename.scala 65:27]
  wire  intFreeList_io_walk; // @[Rename.scala 65:27]
  wire  intFreeList_io_allocateReq_0; // @[Rename.scala 65:27]
  wire  intFreeList_io_allocateReq_1; // @[Rename.scala 65:27]
  wire  intFreeList_io_walkReq_0; // @[Rename.scala 65:27]
  wire  intFreeList_io_walkReq_1; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_allocatePhyReg_0; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_allocatePhyReg_1; // @[Rename.scala 65:27]
  wire  intFreeList_io_canAllocate; // @[Rename.scala 65:27]
  wire  intFreeList_io_doAllocate; // @[Rename.scala 65:27]
  wire  intFreeList_io_freeReq_0; // @[Rename.scala 65:27]
  wire  intFreeList_io_freeReq_1; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_freePhyReg_0; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_freePhyReg_1; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_isCommit; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_commitValid_0; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_commitValid_1; // @[Rename.scala 65:27]
  wire [4:0] intFreeList_io_commit_info_0_ldest; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_info_0_rfWen; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_info_0_isMove; // @[Rename.scala 65:27]
  wire [4:0] intFreeList_io_commit_info_1_ldest; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_info_1_rfWen; // @[Rename.scala 65:27]
  wire  intFreeList_io_commit_info_1_isMove; // @[Rename.scala 65:27]
  wire  intFreeList_io_snpt_snptEnq; // @[Rename.scala 65:27]
  wire  intFreeList_io_snpt_snptDeq; // @[Rename.scala 65:27]
  wire  intFreeList_io_snpt_useSnpt; // @[Rename.scala 65:27]
  wire [1:0] intFreeList_io_snpt_snptSelect; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_perf_0_value; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_perf_1_value; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_perf_2_value; // @[Rename.scala 65:27]
  wire [5:0] intFreeList_io_perf_3_value; // @[Rename.scala 65:27]
  wire  fpFreeList_clock; // @[Rename.scala 66:26]
  wire  fpFreeList_reset; // @[Rename.scala 66:26]
  wire  fpFreeList_io_redirect; // @[Rename.scala 66:26]
  wire  fpFreeList_io_walk; // @[Rename.scala 66:26]
  wire  fpFreeList_io_allocateReq_0; // @[Rename.scala 66:26]
  wire  fpFreeList_io_allocateReq_1; // @[Rename.scala 66:26]
  wire  fpFreeList_io_walkReq_0; // @[Rename.scala 66:26]
  wire  fpFreeList_io_walkReq_1; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_allocatePhyReg_0; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_allocatePhyReg_1; // @[Rename.scala 66:26]
  wire  fpFreeList_io_canAllocate; // @[Rename.scala 66:26]
  wire  fpFreeList_io_doAllocate; // @[Rename.scala 66:26]
  wire  fpFreeList_io_freeReq_0; // @[Rename.scala 66:26]
  wire  fpFreeList_io_freeReq_1; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_freePhyReg_0; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_freePhyReg_1; // @[Rename.scala 66:26]
  wire  fpFreeList_io_commit_isCommit; // @[Rename.scala 66:26]
  wire  fpFreeList_io_commit_commitValid_0; // @[Rename.scala 66:26]
  wire  fpFreeList_io_commit_commitValid_1; // @[Rename.scala 66:26]
  wire  fpFreeList_io_commit_info_0_fpWen; // @[Rename.scala 66:26]
  wire  fpFreeList_io_commit_info_1_fpWen; // @[Rename.scala 66:26]
  wire  fpFreeList_io_snpt_snptEnq; // @[Rename.scala 66:26]
  wire  fpFreeList_io_snpt_snptDeq; // @[Rename.scala 66:26]
  wire  fpFreeList_io_snpt_useSnpt; // @[Rename.scala 66:26]
  wire [1:0] fpFreeList_io_snpt_snptSelect; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_perf_0_value; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_perf_1_value; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_perf_2_value; // @[Rename.scala 66:26]
  wire [5:0] fpFreeList_io_perf_3_value; // @[Rename.scala 66:26]
  wire  _canOut_T_2 = ~io_robCommits_isWalk; // @[Rename.scala 95:94]
  wire  canOut = io_out_0_ready & fpFreeList_io_canAllocate & intFreeList_io_canAllocate & ~io_robCommits_isWalk; // @[Rename.scala 95:91]
  wire [1:0] validCount = io_in_0_valid + io_in_1_valid; // @[Bitwise.scala 48:55]
  reg  robIdxHead_flag; // @[Rename.scala 100:27]
  reg [4:0] robIdxHead_value; // @[Rename.scala 100:27]
  reg  lastCycleMisprediction; // @[Rename.scala 101:39]
  wire [5:0] _robIdxHeadNext_new_ptr_T = {robIdxHead_flag,robIdxHead_value}; // @[Cat.scala 31:58]
  wire [5:0] _robIdxHeadNext_new_ptr_T_2 = _robIdxHeadNext_new_ptr_T + 6'h1; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] robIdxHeadNext_new_ptr_value = _robIdxHeadNext_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  robIdxHeadNext_new_ptr_flag = _robIdxHeadNext_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _GEN_98 = {{4'd0}, validCount}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _robIdxHeadNext_new_ptr_T_7 = _robIdxHeadNext_new_ptr_T + _GEN_98; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] robIdxHeadNext_new_ptr_1_value = _robIdxHeadNext_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  robIdxHeadNext_new_ptr_1_flag = _robIdxHeadNext_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _hasValid_T = {io_in_0_valid,io_in_1_valid}; // @[Cat.scala 31:58]
  wire  hasValid = |_hasValid_T; // @[Rename.scala 127:42]
  wire  needFpDest_0 = io_in_0_valid & io_in_0_bits_ctrl_fpWen; // @[Rename.scala 156:37]
  wire  _needIntDest_0_T_1 = io_in_0_bits_ctrl_rfWen & io_in_0_bits_ctrl_ldest != 5'h0; // @[Rename.scala 75:44]
  wire  needIntDest_0 = io_in_0_valid & _needIntDest_0_T_1; // @[Rename.scala 157:38]
  wire  _walkNeedIntDest_0_T_1 = io_robCommits_info_0_rfWen & io_robCommits_info_0_ldest != 5'h0; // @[Rename.scala 81:33]
  wire  walkNeedIntDest_0 = io_robCommits_walkValid_0 & _walkNeedIntDest_0_T_1; // @[Rename.scala 160:56]
  wire [6:0] _uops_0_robIdx_new_ptr_T_1 = {{1'd0}, _robIdxHeadNext_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] uops_0_psrc_0 = io_in_0_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_0_0 : io_fpReadPorts_0_0; // @[Rename.scala 173:27]
  wire [5:0] _uops_0_psrc_1_T_1 = io_in_0_bits_ctrl_srcType_1 == 2'h0 ? io_intReadPorts_0_1 : io_fpReadPorts_0_1; // @[Rename.scala 174:27]
  wire [5:0] _uops_0_psrc_1_T_2 = io_fusionInfo_0_rs2FromRs2 ? io_intReadPorts_1_1 : io_intReadPorts_1_0; // @[Rename.scala 178:31]
  wire [5:0] _GEN_0 = io_fusionInfo_0_rs2FromZero ? 6'h0 : _uops_0_psrc_1_T_1; // @[Rename.scala 174:21 179:48 180:25]
  wire [5:0] _uops_0_pdest_T = needFpDest_0 ? fpFreeList_io_allocatePhyReg_0 : 6'h0; // @[Rename.scala 189:10]
  wire [5:0] uops_0_pdest = needIntDest_0 ? intFreeList_io_allocatePhyReg_0 : _uops_0_pdest_T; // @[Rename.scala 187:25]
  wire [9:0] _io_out_0_bits_ctrl_imm_T = {io_in_0_bits_ctrl_lsrc_1,io_in_0_bits_ctrl_lsrc_0}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_2 = io_out_0_bits_ctrl_fuType == 4'h3 ? {{10'd0}, _io_out_0_bits_ctrl_imm_T} : io_in_0_bits_ctrl_imm; // @[Rename.scala 196:20 198:56 199:31]
  wire  _T_8 = io_in_0_bits_ctrl_fuType == 4'h6 & io_in_0_bits_ctrl_fuOpType == 7'h42 & io_in_0_bits_ctrl_selImm == 4'h4
     & io_in_0_bits_ctrl_ldest == 5'h0; // @[Bundle.scala 198:83]
  wire [3:0] _io_out_0_bits_ctrl_fuOpType_T_1 = io_in_0_bits_ctrl_lsrc_1 == 5'h1 ? 4'h9 : 4'ha; // @[Rename.scala 204:42]
  wire [19:0] _io_out_0_bits_ctrl_imm_T_2 = {io_in_0_bits_ctrl_imm[19:5],5'h0}; // @[Cat.scala 31:58]
  wire  _intSpecWen_0_T_4 = ~io_redirect_valid; // @[Rename.scala 211:124]
  wire  needFpDest_1 = io_in_1_valid & io_in_1_bits_ctrl_fpWen; // @[Rename.scala 156:37]
  wire  _needIntDest_1_T_1 = io_in_1_bits_ctrl_rfWen & io_in_1_bits_ctrl_ldest != 5'h0; // @[Rename.scala 75:44]
  wire  needIntDest_1 = io_in_1_valid & _needIntDest_1_T_1; // @[Rename.scala 157:38]
  wire  _walkNeedIntDest_1_T_1 = io_robCommits_info_1_rfWen & io_robCommits_info_1_ldest != 5'h0; // @[Rename.scala 81:33]
  wire  walkNeedIntDest_1 = io_robCommits_walkValid_1 & _walkNeedIntDest_1_T_1; // @[Rename.scala 160:56]
  wire [5:0] _GEN_99 = {{5'd0}, io_in_0_valid}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _uops_1_robIdx_new_ptr_T_2 = _robIdxHeadNext_new_ptr_T + _GEN_99; // @[CircularQueuePtr.scala 39:46]
  wire  _uops_1_psrc_0_T = io_in_1_bits_ctrl_srcType_0 == 2'h0; // @[Rename.scala 173:52]
  wire [5:0] uops_1_psrc_0 = io_in_1_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_1_0 : io_fpReadPorts_1_0; // @[Rename.scala 173:27]
  wire  _uops_1_psrc_1_T = io_in_1_bits_ctrl_srcType_1 == 2'h0; // @[Rename.scala 174:52]
  wire [5:0] uops_1_psrc_1 = io_in_1_bits_ctrl_srcType_1 == 2'h0 ? io_intReadPorts_1_1 : io_fpReadPorts_1_1; // @[Rename.scala 174:27]
  wire [5:0] _uops_1_pdest_T = needFpDest_1 ? fpFreeList_io_allocatePhyReg_1 : 6'h0; // @[Rename.scala 189:10]
  wire [5:0] uops_1_pdest = needIntDest_1 ? intFreeList_io_allocatePhyReg_1 : _uops_1_pdest_T; // @[Rename.scala 187:25]
  wire [9:0] _io_out_1_bits_ctrl_imm_T = {io_in_1_bits_ctrl_lsrc_1,io_in_1_bits_ctrl_lsrc_0}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_7 = io_out_1_bits_ctrl_fuType == 4'h3 ? {{10'd0}, _io_out_1_bits_ctrl_imm_T} : io_in_1_bits_ctrl_imm; // @[Rename.scala 196:20 198:56 199:31]
  wire  _T_16 = io_in_1_bits_ctrl_fuType == 4'h6 & io_in_1_bits_ctrl_fuOpType == 7'h42 & io_in_1_bits_ctrl_selImm == 4'h4
     & io_in_1_bits_ctrl_ldest == 5'h0; // @[Bundle.scala 198:83]
  wire [3:0] _io_out_1_bits_ctrl_fuOpType_T_1 = io_in_1_bits_ctrl_lsrc_1 == 5'h1 ? 4'h9 : 4'ha; // @[Rename.scala 204:42]
  wire [19:0] _io_out_1_bits_ctrl_imm_T_2 = {io_in_1_bits_ctrl_imm[19:5],5'h0}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_11 = _T_16 ? _io_out_1_bits_ctrl_imm_T_2 : _GEN_7; // @[Rename.scala 202:46 206:31]
  wire  fpCond_0 = io_in_1_bits_ctrl_srcType_0 == 2'h2; // @[Rename.scala 246:51]
  wire  fpCond_1 = io_in_1_bits_ctrl_srcType_1 == 2'h2; // @[Rename.scala 246:51]
  wire  fpCond_2 = io_in_1_bits_ctrl_srcType_2 == 2'h2; // @[Rename.scala 246:51]
  wire  intCond_2 = io_in_1_bits_ctrl_srcType_2 == 2'h0; // @[Rename.scala 247:52]
  wire  destToSrc_indexMatch = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_lsrc_0; // @[Rename.scala 251:45]
  wire  destToSrc_writeMatch = _uops_1_psrc_0_T & needIntDest_0 | fpCond_0 & needFpDest_0; // @[Rename.scala 252:51]
  wire  destToSrc_0 = destToSrc_indexMatch & destToSrc_writeMatch; // @[Rename.scala 253:20]
  wire  destToSrc_indexMatch_1 = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_lsrc_1; // @[Rename.scala 251:45]
  wire  destToSrc_writeMatch_1 = _uops_1_psrc_1_T & needIntDest_0 | fpCond_1 & needFpDest_0; // @[Rename.scala 252:51]
  wire  destToSrc_0_1 = destToSrc_indexMatch_1 & destToSrc_writeMatch_1; // @[Rename.scala 253:20]
  wire  destToSrc_indexMatch_2 = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_lsrc_2; // @[Rename.scala 251:45]
  wire  destToSrc_writeMatch_2 = intCond_2 & needIntDest_0 | fpCond_2 & needFpDest_0; // @[Rename.scala 252:51]
  wire  destToSrc_0_2 = destToSrc_indexMatch_2 & destToSrc_writeMatch_2; // @[Rename.scala 253:20]
  wire [5:0] _io_out_1_bits_psrc_0_T_1 = destToSrc_0 ? io_out_0_bits_pdest : uops_1_psrc_0; // @[Rename.scala 258:23]
  wire [5:0] _io_out_1_bits_psrc_1_T_1 = destToSrc_0_1 ? io_out_0_bits_pdest : uops_1_psrc_1; // @[Rename.scala 261:23]
  wire  last_is_lui = io_in_0_bits_ctrl_selImm == 4'h2 & io_in_0_bits_ctrl_srcType_0 != 2'h1; // @[Rename.scala 269:70]
  wire  this_is_load = io_in_1_bits_ctrl_fuType == 4'hc; // @[Rename.scala 270:50]
  wire  lui_to_load = io_in_0_valid & destToSrc_indexMatch; // @[Rename.scala 271:42]
  wire  fused_lui_load = last_is_lui & this_is_load & lui_to_load; // @[Rename.scala 272:54]
  wire [11:0] io_out_1_bits_ctrl_imm_loadImm = io_in_1_bits_ctrl_imm[11:0]; // @[DecodeUnit.scala 551:27]
  wire [19:0] _io_out_1_bits_ctrl_imm_T_4 = {io_in_0_bits_ctrl_imm[7:0],io_out_1_bits_ctrl_imm_loadImm}; // @[Cat.scala 31:58]
  wire  _hasCFI_T = io_in_0_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _hasCFI_T_2 = io_in_0_bits_ctrl_fuType == 4'h0; // @[package.scala 80:42]
  wire  _hasCFI_T_4 = io_in_0_ready & io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _hasCFI_T_5 = (~_hasCFI_T | _hasCFI_T_2) & _hasCFI_T_4; // @[Rename.scala 289:105]
  wire  _hasCFI_T_6 = io_in_1_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _hasCFI_T_8 = io_in_1_bits_ctrl_fuType == 4'h0; // @[package.scala 80:42]
  wire  _hasCFI_T_10 = io_in_1_ready & io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _hasCFI_T_11 = (~_hasCFI_T_6 | _hasCFI_T_8) & _hasCFI_T_10; // @[Rename.scala 289:105]
  wire [1:0] _hasCFI_T_12 = {_hasCFI_T_11,_hasCFI_T_5}; // @[Rename.scala 289:118]
  wire  hasCFI = |_hasCFI_T_12; // @[Rename.scala 289:125]
  reg [3:0] snapshotCtr; // @[Rename.scala 290:28]
  wire  allowSnpt = ~(|snapshotCtr); // @[Rename.scala 291:45]
  wire  _T_17 = io_out_0_ready & io_out_0_valid; // @[Decoupled.scala 50:35]
  wire  _snapshotCtr_T_1 = io_out_1_ready & io_out_1_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _snapshotCtr_T_2 = _T_17 + _snapshotCtr_T_1; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_100 = {{2'd0}, _snapshotCtr_T_2}; // @[Rename.scala 294:40]
  wire [3:0] _snapshotCtr_T_5 = 4'h8 - _GEN_100; // @[Rename.scala 294:40]
  wire [3:0] _snapshotCtr_T_16 = snapshotCtr - _GEN_100; // @[Rename.scala 296:85]
  wire  commitValid = io_robCommits_isCommit & io_robCommits_commitValid_0; // @[Rename.scala 308:46]
  reg [5:0] intFreeList_io_freePhyReg_0_REG; // @[Rename.scala 336:48]
  reg  fpFreeList_io_freeReq_0_REG; // @[Rename.scala 332:45]
  wire  commitValid_1 = io_robCommits_isCommit & io_robCommits_commitValid_1; // @[Rename.scala 308:46]
  reg [5:0] intFreeList_io_freePhyReg_1_REG; // @[Rename.scala 336:48]
  reg  fpFreeList_io_freeReq_1_REG; // @[Rename.scala 332:45]
  reg  debugRedirect_debugIsCtrl; // @[Reg.scala 16:16]
  reg  debugRedirect_debugIsMemVio; // @[Reg.scala 16:16]
  wire  recStall = io_redirect_valid | io_robCommits_isWalk; // @[Rename.scala 359:36]
  wire  ctrlRecStall = io_redirect_valid ? io_redirect_bits_debugIsCtrl : io_robCommits_isWalk &
    debugRedirect_debugIsCtrl; // @[Rename.scala 360:25]
  wire  mvioRecStall = io_redirect_valid ? io_redirect_bits_debugIsMemVio : io_robCommits_isWalk &
    debugRedirect_debugIsMemVio; // @[Rename.scala 361:25]
  wire  otherRecStall = recStall & ~(ctrlRecStall | mvioRecStall); // @[Rename.scala 362:32]
  wire  notRecStall = ~io_out_0_valid & ~recStall; // @[Rename.scala 368:40]
  wire  _intFlStall_T = notRecStall & hasValid; // @[Rename.scala 369:32]
  wire  _intFlStall_T_1 = ~intFreeList_io_canAllocate; // @[Rename.scala 369:47]
  wire  intFlStall = notRecStall & hasValid & ~intFreeList_io_canAllocate; // @[Rename.scala 369:44]
  wire  _fpFlStall_T_1 = ~fpFreeList_io_canAllocate; // @[Rename.scala 370:46]
  wire  fpFlStall = _intFlStall_T & ~fpFreeList_io_canAllocate; // @[Rename.scala 370:43]
  wire  _io_stallReason_in_backReason_valid_T = ~io_in_0_ready; // @[Rename.scala 374:80]
  wire [5:0] _io_stallReason_in_backReason_bits_T = fpFlStall ? 6'h13 : 6'h24; // @[Mux.scala 101:16]
  wire [5:0] _io_stallReason_in_backReason_bits_T_1 = intFlStall ? 6'h12 : _io_stallReason_in_backReason_bits_T; // @[Mux.scala 101:16]
  wire [5:0] _io_stallReason_in_backReason_bits_T_2 = otherRecStall ? 6'h22 : _io_stallReason_in_backReason_bits_T_1; // @[Mux.scala 101:16]
  wire [5:0] _io_stallReason_in_backReason_bits_T_3 = mvioRecStall ? 6'h21 : _io_stallReason_in_backReason_bits_T_2; // @[Mux.scala 101:16]
  wire [5:0] _io_stallReason_in_backReason_bits_T_4 = ctrlRecStall ? 6'h20 : _io_stallReason_in_backReason_bits_T_3; // @[Mux.scala 101:16]
  wire  _T_32 = io_in_0_valid & _io_stallReason_in_backReason_valid_T; // @[Rename.scala 402:88]
  wire  _T_34 = io_in_1_valid & ~io_in_1_ready; // @[Rename.scala 402:88]
  wire  _T_40 = hasValid & ~io_out_0_ready & fpFreeList_io_canAllocate & intFreeList_io_canAllocate; // @[Rename.scala 403:102]
  wire  _T_43 = hasValid & io_out_0_ready; // @[Rename.scala 404:47]
  wire  _T_46 = hasValid & io_out_0_ready & _fpFlStall_T_1 & intFreeList_io_canAllocate; // @[Rename.scala 404:96]
  wire  _T_50 = _T_43 & fpFreeList_io_canAllocate; // @[Rename.scala 405:67]
  wire  _T_52 = _T_43 & fpFreeList_io_canAllocate & _intFlStall_T_1; // @[Rename.scala 405:96]
  wire  _T_57 = _T_50 & intFreeList_io_canAllocate; // @[Rename.scala 406:97]
  wire  _T_76 = io_in_0_valid & io_in_0_ready; // @[Rename.scala 419:64]
  wire  _T_77 = io_in_1_valid & io_in_0_ready; // @[Rename.scala 419:64]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  MEFreeList intFreeList ( // @[Rename.scala 65:27]
    .clock(intFreeList_clock),
    .reset(intFreeList_reset),
    .io_redirect(intFreeList_io_redirect),
    .io_walk(intFreeList_io_walk),
    .io_allocateReq_0(intFreeList_io_allocateReq_0),
    .io_allocateReq_1(intFreeList_io_allocateReq_1),
    .io_walkReq_0(intFreeList_io_walkReq_0),
    .io_walkReq_1(intFreeList_io_walkReq_1),
    .io_allocatePhyReg_0(intFreeList_io_allocatePhyReg_0),
    .io_allocatePhyReg_1(intFreeList_io_allocatePhyReg_1),
    .io_canAllocate(intFreeList_io_canAllocate),
    .io_doAllocate(intFreeList_io_doAllocate),
    .io_freeReq_0(intFreeList_io_freeReq_0),
    .io_freeReq_1(intFreeList_io_freeReq_1),
    .io_freePhyReg_0(intFreeList_io_freePhyReg_0),
    .io_freePhyReg_1(intFreeList_io_freePhyReg_1),
    .io_commit_isCommit(intFreeList_io_commit_isCommit),
    .io_commit_commitValid_0(intFreeList_io_commit_commitValid_0),
    .io_commit_commitValid_1(intFreeList_io_commit_commitValid_1),
    .io_commit_info_0_ldest(intFreeList_io_commit_info_0_ldest),
    .io_commit_info_0_rfWen(intFreeList_io_commit_info_0_rfWen),
    .io_commit_info_0_isMove(intFreeList_io_commit_info_0_isMove),
    .io_commit_info_1_ldest(intFreeList_io_commit_info_1_ldest),
    .io_commit_info_1_rfWen(intFreeList_io_commit_info_1_rfWen),
    .io_commit_info_1_isMove(intFreeList_io_commit_info_1_isMove),
    .io_snpt_snptEnq(intFreeList_io_snpt_snptEnq),
    .io_snpt_snptDeq(intFreeList_io_snpt_snptDeq),
    .io_snpt_useSnpt(intFreeList_io_snpt_useSnpt),
    .io_snpt_snptSelect(intFreeList_io_snpt_snptSelect),
    .io_perf_0_value(intFreeList_io_perf_0_value),
    .io_perf_1_value(intFreeList_io_perf_1_value),
    .io_perf_2_value(intFreeList_io_perf_2_value),
    .io_perf_3_value(intFreeList_io_perf_3_value)
  );
  StdFreeList fpFreeList ( // @[Rename.scala 66:26]
    .clock(fpFreeList_clock),
    .reset(fpFreeList_reset),
    .io_redirect(fpFreeList_io_redirect),
    .io_walk(fpFreeList_io_walk),
    .io_allocateReq_0(fpFreeList_io_allocateReq_0),
    .io_allocateReq_1(fpFreeList_io_allocateReq_1),
    .io_walkReq_0(fpFreeList_io_walkReq_0),
    .io_walkReq_1(fpFreeList_io_walkReq_1),
    .io_allocatePhyReg_0(fpFreeList_io_allocatePhyReg_0),
    .io_allocatePhyReg_1(fpFreeList_io_allocatePhyReg_1),
    .io_canAllocate(fpFreeList_io_canAllocate),
    .io_doAllocate(fpFreeList_io_doAllocate),
    .io_freeReq_0(fpFreeList_io_freeReq_0),
    .io_freeReq_1(fpFreeList_io_freeReq_1),
    .io_freePhyReg_0(fpFreeList_io_freePhyReg_0),
    .io_freePhyReg_1(fpFreeList_io_freePhyReg_1),
    .io_commit_isCommit(fpFreeList_io_commit_isCommit),
    .io_commit_commitValid_0(fpFreeList_io_commit_commitValid_0),
    .io_commit_commitValid_1(fpFreeList_io_commit_commitValid_1),
    .io_commit_info_0_fpWen(fpFreeList_io_commit_info_0_fpWen),
    .io_commit_info_1_fpWen(fpFreeList_io_commit_info_1_fpWen),
    .io_snpt_snptEnq(fpFreeList_io_snpt_snptEnq),
    .io_snpt_snptDeq(fpFreeList_io_snpt_snptDeq),
    .io_snpt_useSnpt(fpFreeList_io_snpt_useSnpt),
    .io_snpt_snptSelect(fpFreeList_io_snpt_snptSelect),
    .io_perf_0_value(fpFreeList_io_perf_0_value),
    .io_perf_1_value(fpFreeList_io_perf_1_value),
    .io_perf_2_value(fpFreeList_io_perf_2_value),
    .io_perf_3_value(fpFreeList_io_perf_3_value)
  );
  assign io_in_0_ready = ~hasValid | canOut; // @[Rename.scala 169:33]
  assign io_in_1_ready = ~hasValid | canOut; // @[Rename.scala 169:33]
  assign io_intRenamePorts_0_wen = needIntDest_0 & intFreeList_io_canAllocate & intFreeList_io_doAllocate & _canOut_T_2
     & ~io_redirect_valid; // @[Rename.scala 211:121]
  assign io_intRenamePorts_0_addr = io_in_0_bits_ctrl_ldest; // @[Rename.scala 111:18 145:18]
  assign io_intRenamePorts_0_data = io_out_0_bits_pdest; // @[Rename.scala 325:21]
  assign io_intRenamePorts_1_wen = needIntDest_1 & intFreeList_io_canAllocate & intFreeList_io_doAllocate & _canOut_T_2
     & ~io_redirect_valid; // @[Rename.scala 211:121]
  assign io_intRenamePorts_1_addr = io_in_1_bits_ctrl_ldest; // @[Rename.scala 111:18 145:18]
  assign io_intRenamePorts_1_data = io_out_1_bits_pdest; // @[Rename.scala 325:21]
  assign io_fpRenamePorts_0_wen = needFpDest_0 & fpFreeList_io_canAllocate & fpFreeList_io_doAllocate & _canOut_T_2 &
    _intSpecWen_0_T_4; // @[Rename.scala 212:117]
  assign io_fpRenamePorts_0_addr = io_in_0_bits_ctrl_ldest; // @[Rename.scala 111:18 145:18]
  assign io_fpRenamePorts_0_data = fpFreeList_io_allocatePhyReg_0; // @[Rename.scala 321:21]
  assign io_fpRenamePorts_1_wen = needFpDest_1 & fpFreeList_io_canAllocate & fpFreeList_io_doAllocate & _canOut_T_2 &
    _intSpecWen_0_T_4; // @[Rename.scala 212:117]
  assign io_fpRenamePorts_1_addr = io_in_1_bits_ctrl_ldest; // @[Rename.scala 111:18 145:18]
  assign io_fpRenamePorts_1_data = fpFreeList_io_allocatePhyReg_1; // @[Rename.scala 321:21]
  assign io_out_0_valid = io_in_0_valid & intFreeList_io_canAllocate & fpFreeList_io_canAllocate & _canOut_T_2; // @[Rename.scala 195:98]
  assign io_out_0_bits_cf_exceptionVec_1 = io_in_0_bits_cf_exceptionVec_1; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_exceptionVec_2 = io_in_0_bits_cf_exceptionVec_2; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_exceptionVec_12 = io_in_0_bits_cf_exceptionVec_12; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_trigger_frontendHit_0 = io_in_0_bits_cf_trigger_frontendHit_0; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_trigger_frontendHit_1 = io_in_0_bits_cf_trigger_frontendHit_1; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_trigger_frontendHit_2 = io_in_0_bits_cf_trigger_frontendHit_2; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_trigger_frontendHit_3 = io_in_0_bits_cf_trigger_frontendHit_3; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_crossPageIPFFix = io_in_0_bits_cf_crossPageIPFFix; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_storeSetHit = io_ssit_0_valid; // @[Rename.scala 111:18 148:28]
  assign io_out_0_bits_cf_loadWaitStrict = io_ssit_0_strict & io_ssit_0_valid; // @[Rename.scala 149:52]
  assign io_out_0_bits_cf_ssid = io_ssit_0_ssid; // @[Rename.scala 111:18 150:21]
  assign io_out_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[Rename.scala 111:18 144:16]
  assign io_out_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_srcType_2 = io_in_0_bits_ctrl_srcType_2; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_ldest = io_in_0_bits_ctrl_ldest; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fuType = _T_8 ? 4'hc : io_in_0_bits_ctrl_fuType; // @[Rename.scala 196:20 202:46 203:34]
  assign io_out_0_bits_ctrl_fuOpType = _T_8 ? {{3'd0}, _io_out_0_bits_ctrl_fuOpType_T_1} : io_in_0_bits_ctrl_fuOpType; // @[Rename.scala 196:20 202:46 204:36]
  assign io_out_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_isXSTrap = io_in_0_bits_ctrl_isXSTrap; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_noSpecExec = io_in_0_bits_ctrl_noSpecExec; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_blockBackward = io_in_0_bits_ctrl_blockBackward; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_flushPipe = io_in_0_bits_ctrl_flushPipe; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_selImm = _T_8 ? 4'h0 : io_in_0_bits_ctrl_selImm; // @[Rename.scala 196:20 202:46 205:34]
  assign io_out_0_bits_ctrl_imm = _T_8 ? _io_out_0_bits_ctrl_imm_T_2 : _GEN_2; // @[Rename.scala 202:46 206:31]
  assign io_out_0_bits_ctrl_commitType = io_in_0_bits_ctrl_commitType; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_ctrl_isMove = io_in_0_bits_ctrl_isMove; // @[Rename.scala 111:18 145:18]
  assign io_out_0_bits_psrc_0 = io_in_0_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_0_0 : io_fpReadPorts_0_0; // @[Rename.scala 173:27]
  assign io_out_0_bits_psrc_1 = io_fusionInfo_0_rs2FromRs2 | io_fusionInfo_0_rs2FromRs1 ? _uops_0_psrc_1_T_2 : _GEN_0; // @[Rename.scala 177:73 178:25]
  assign io_out_0_bits_psrc_2 = io_fpReadPorts_0_2; // @[Rename.scala 111:18 183:21]
  assign io_out_0_bits_pdest = io_in_0_bits_ctrl_isMove ? uops_0_psrc_0 : uops_0_pdest; // @[Rename.scala 243:30]
  assign io_out_0_bits_robIdx_flag = _uops_0_robIdx_new_ptr_T_1[5]; // @[CircularQueuePtr.scala 39:59]
  assign io_out_0_bits_robIdx_value = _uops_0_robIdx_new_ptr_T_1[4:0]; // @[CircularQueuePtr.scala 39:59]
  assign io_out_0_bits_eliminatedMove = io_in_0_bits_ctrl_isMove; // @[Rename.scala 111:18 184:28]
  assign io_out_0_bits_snapshot = hasCFI & allowSnpt; // @[Rename.scala 292:39]
  assign io_out_1_valid = io_in_1_valid & intFreeList_io_canAllocate & fpFreeList_io_canAllocate & _canOut_T_2; // @[Rename.scala 195:98]
  assign io_out_1_bits_cf_exceptionVec_1 = io_in_1_bits_cf_exceptionVec_1; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_exceptionVec_2 = io_in_1_bits_cf_exceptionVec_2; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_exceptionVec_12 = io_in_1_bits_cf_exceptionVec_12; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_trigger_frontendHit_0 = io_in_1_bits_cf_trigger_frontendHit_0; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_trigger_frontendHit_1 = io_in_1_bits_cf_trigger_frontendHit_1; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_trigger_frontendHit_2 = io_in_1_bits_cf_trigger_frontendHit_2; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_trigger_frontendHit_3 = io_in_1_bits_cf_trigger_frontendHit_3; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_crossPageIPFFix = io_in_1_bits_cf_crossPageIPFFix; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_storeSetHit = io_ssit_1_valid; // @[Rename.scala 111:18 148:28]
  assign io_out_1_bits_cf_loadWaitStrict = io_ssit_1_strict & io_ssit_1_valid; // @[Rename.scala 149:52]
  assign io_out_1_bits_cf_ssid = io_ssit_1_ssid; // @[Rename.scala 111:18 150:21]
  assign io_out_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[Rename.scala 111:18 144:16]
  assign io_out_1_bits_ctrl_srcType_0 = fused_lui_load ? 2'h1 : io_in_1_bits_ctrl_srcType_0; // @[Rename.scala 196:20 273:27 277:38]
  assign io_out_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_srcType_2 = io_in_1_bits_ctrl_srcType_2; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_ldest = io_in_1_bits_ctrl_ldest; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fuType = _T_16 ? 4'hc : io_in_1_bits_ctrl_fuType; // @[Rename.scala 196:20 202:46 203:34]
  assign io_out_1_bits_ctrl_fuOpType = _T_16 ? {{3'd0}, _io_out_1_bits_ctrl_fuOpType_T_1} : io_in_1_bits_ctrl_fuOpType; // @[Rename.scala 196:20 202:46 204:36]
  assign io_out_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_isXSTrap = io_in_1_bits_ctrl_isXSTrap; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_noSpecExec = io_in_1_bits_ctrl_noSpecExec; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_blockBackward = io_in_1_bits_ctrl_blockBackward; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_flushPipe = io_in_1_bits_ctrl_flushPipe; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_selImm = _T_16 ? 4'h0 : io_in_1_bits_ctrl_selImm; // @[Rename.scala 196:20 202:46 205:34]
  assign io_out_1_bits_ctrl_imm = fused_lui_load ? _io_out_1_bits_ctrl_imm_T_4 : _GEN_11; // @[Rename.scala 273:27 278:31]
  assign io_out_1_bits_ctrl_fpu_isAddSub = io_in_1_bits_ctrl_fpu_isAddSub; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = io_in_1_bits_ctrl_fpu_typeTagIn; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = io_in_1_bits_ctrl_fpu_typeTagOut; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_fromInt = io_in_1_bits_ctrl_fpu_fromInt; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_wflags = io_in_1_bits_ctrl_fpu_wflags; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_fpWen = io_in_1_bits_ctrl_fpu_fpWen; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = io_in_1_bits_ctrl_fpu_fmaCmd; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_div = io_in_1_bits_ctrl_fpu_div; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_sqrt = io_in_1_bits_ctrl_fpu_sqrt; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_fcvt = io_in_1_bits_ctrl_fpu_fcvt; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_typ = io_in_1_bits_ctrl_fpu_typ; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_fmt = io_in_1_bits_ctrl_fpu_fmt; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_ren3 = io_in_1_bits_ctrl_fpu_ren3; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_fpu_rm = io_in_1_bits_ctrl_fpu_rm; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_ctrl_isMove = io_in_1_bits_ctrl_isMove; // @[Rename.scala 111:18 145:18]
  assign io_out_1_bits_psrc_0 = fused_lui_load ? io_in_0_bits_ctrl_imm[13:8] : _io_out_1_bits_psrc_0_T_1; // @[Rename.scala 273:27 257:28 283:30]
  assign io_out_1_bits_psrc_1 = fused_lui_load ? io_in_0_bits_ctrl_imm[19:14] : _io_out_1_bits_psrc_1_T_1; // @[Rename.scala 273:27 260:28 284:30]
  assign io_out_1_bits_psrc_2 = destToSrc_0_2 ? io_out_0_bits_pdest : io_fpReadPorts_1_2; // @[Rename.scala 264:23]
  assign io_out_1_bits_pdest = io_in_1_bits_ctrl_isMove ? io_out_1_bits_psrc_0 : uops_1_pdest; // @[Rename.scala 266:32]
  assign io_out_1_bits_robIdx_flag = _uops_1_robIdx_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  assign io_out_1_bits_robIdx_value = _uops_1_robIdx_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  assign io_out_1_bits_eliminatedMove = io_in_1_bits_ctrl_isMove; // @[Rename.scala 111:18 184:28]
  assign io_stallReason_in_backReason_valid = io_stallReason_out_backReason_valid | ~io_in_0_ready; // @[Rename.scala 374:77]
  assign io_stallReason_in_backReason_bits = io_stallReason_out_backReason_valid ? 6'h24 :
    _io_stallReason_in_backReason_bits_T_4; // @[Rename.scala 375:43]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{4'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign intFreeList_clock = clock;
  assign intFreeList_reset = reset;
  assign intFreeList_io_redirect = io_redirect_valid; // @[Rename.scala 86:20]
  assign intFreeList_io_walk = io_robCommits_isWalk; // @[Rename.scala 87:16]
  assign intFreeList_io_allocateReq_0 = needIntDest_0 & ~io_in_0_bits_ctrl_isMove; // @[Rename.scala 165:53]
  assign intFreeList_io_allocateReq_1 = needIntDest_1 & ~io_in_1_bits_ctrl_isMove; // @[Rename.scala 165:53]
  assign intFreeList_io_walkReq_0 = walkNeedIntDest_0 & ~io_robCommits_info_0_isMove; // @[Rename.scala 166:53]
  assign intFreeList_io_walkReq_1 = walkNeedIntDest_1 & ~io_robCommits_info_1_isMove; // @[Rename.scala 166:53]
  assign intFreeList_io_doAllocate = fpFreeList_io_canAllocate & io_out_0_ready | io_robCommits_isWalk; // @[Rename.scala 91:77]
  assign intFreeList_io_freeReq_0 = io_int_need_free_0; // @[Rename.scala 335:35]
  assign intFreeList_io_freeReq_1 = io_int_need_free_1; // @[Rename.scala 335:35]
  assign intFreeList_io_freePhyReg_0 = intFreeList_io_freePhyReg_0_REG; // @[Rename.scala 336:38]
  assign intFreeList_io_freePhyReg_1 = intFreeList_io_freePhyReg_1_REG; // @[Rename.scala 336:38]
  assign intFreeList_io_commit_isCommit = io_robCommits_isCommit; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_commitValid_0 = io_robCommits_commitValid_0; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_commitValid_1 = io_robCommits_commitValid_1; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_info_0_ldest = io_robCommits_info_0_ldest; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_info_0_rfWen = io_robCommits_info_0_rfWen; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_info_0_isMove = io_robCommits_info_0_isMove; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_info_1_ldest = io_robCommits_info_1_ldest; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_info_1_rfWen = io_robCommits_info_1_rfWen; // @[Rename.scala 68:28]
  assign intFreeList_io_commit_info_1_isMove = io_robCommits_info_1_isMove; // @[Rename.scala 68:28]
  assign intFreeList_io_snpt_snptEnq = _T_17 & io_out_0_bits_snapshot; // @[Rename.scala 301:51]
  assign intFreeList_io_snpt_snptDeq = io_snpt_snptDeq; // @[Rename.scala 299:23]
  assign intFreeList_io_snpt_useSnpt = io_snpt_useSnpt; // @[Rename.scala 299:23]
  assign intFreeList_io_snpt_snptSelect = io_snpt_snptSelect; // @[Rename.scala 299:23]
  assign fpFreeList_clock = clock;
  assign fpFreeList_reset = reset;
  assign fpFreeList_io_redirect = io_redirect_valid; // @[Rename.scala 86:20]
  assign fpFreeList_io_walk = io_robCommits_isWalk; // @[Rename.scala 87:16]
  assign fpFreeList_io_allocateReq_0 = io_in_0_valid & io_in_0_bits_ctrl_fpWen; // @[Rename.scala 156:37]
  assign fpFreeList_io_allocateReq_1 = io_in_1_valid & io_in_1_bits_ctrl_fpWen; // @[Rename.scala 156:37]
  assign fpFreeList_io_walkReq_0 = io_robCommits_walkValid_0 & io_robCommits_info_0_fpWen; // @[Rename.scala 159:55]
  assign fpFreeList_io_walkReq_1 = io_robCommits_walkValid_1 & io_robCommits_info_1_fpWen; // @[Rename.scala 159:55]
  assign fpFreeList_io_doAllocate = intFreeList_io_canAllocate & io_out_0_ready | io_robCommits_isWalk; // @[Rename.scala 92:77]
  assign fpFreeList_io_freeReq_0 = fpFreeList_io_freeReq_0_REG; // @[Rename.scala 332:35]
  assign fpFreeList_io_freeReq_1 = fpFreeList_io_freeReq_1_REG; // @[Rename.scala 332:35]
  assign fpFreeList_io_freePhyReg_0 = io_fp_old_pdest_0; // @[Rename.scala 333:37]
  assign fpFreeList_io_freePhyReg_1 = io_fp_old_pdest_1; // @[Rename.scala 333:37]
  assign fpFreeList_io_commit_isCommit = io_robCommits_isCommit; // @[Rename.scala 70:28]
  assign fpFreeList_io_commit_commitValid_0 = io_robCommits_commitValid_0; // @[Rename.scala 70:28]
  assign fpFreeList_io_commit_commitValid_1 = io_robCommits_commitValid_1; // @[Rename.scala 70:28]
  assign fpFreeList_io_commit_info_0_fpWen = io_robCommits_info_0_fpWen; // @[Rename.scala 70:28]
  assign fpFreeList_io_commit_info_1_fpWen = io_robCommits_info_1_fpWen; // @[Rename.scala 70:28]
  assign fpFreeList_io_snpt_snptEnq = _T_17 & io_out_0_bits_snapshot; // @[Rename.scala 302:50]
  assign fpFreeList_io_snpt_snptDeq = io_snpt_snptDeq; // @[Rename.scala 300:22]
  assign fpFreeList_io_snpt_useSnpt = io_snpt_useSnpt; // @[Rename.scala 300:22]
  assign fpFreeList_io_snpt_snptSelect = io_snpt_snptSelect; // @[Rename.scala 300:22]
  always @(posedge clock) begin
    lastCycleMisprediction <= io_redirect_valid & ~io_redirect_bits_level; // @[Rename.scala 101:58]
    intFreeList_io_freePhyReg_0_REG <= io_int_old_pdest_0; // @[Rename.scala 336:48]
    intFreeList_io_freePhyReg_1_REG <= io_int_old_pdest_1; // @[Rename.scala 336:48]
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      debugRedirect_debugIsCtrl <= io_redirect_bits_debugIsCtrl; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      debugRedirect_debugIsMemVio <= io_redirect_bits_debugIsMemVio; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= _T_76 + _T_77; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= _T_32 + _T_34; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= _T_40 & _canOut_T_2; // @[Rename.scala 421:127]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= _T_46 & _canOut_T_2; // @[Rename.scala 422:127]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= _T_52 & _canOut_T_2; // @[Rename.scala 423:127]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= _T_57 & io_robCommits_isWalk; // @[Rename.scala 424:127]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= intFreeList_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= intFreeList_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= intFreeList_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= intFreeList_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= fpFreeList_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= fpFreeList_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= fpFreeList_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_13_value_REG <= fpFreeList_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rename.scala 102:27]
      robIdxHead_flag <= 1'h0;
    end else if (io_redirect_valid) begin // @[Rename.scala 103:13]
      robIdxHead_flag <= io_redirect_bits_robIdx_flag;
    end else if (lastCycleMisprediction) begin // @[Rename.scala 104:29]
      robIdxHead_flag <= robIdxHeadNext_new_ptr_flag;
    end else if (canOut) begin
      robIdxHead_flag <= robIdxHeadNext_new_ptr_1_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rename.scala 102:27]
      robIdxHead_value <= 5'h0;
    end else if (io_redirect_valid) begin // @[Rename.scala 103:13]
      robIdxHead_value <= io_redirect_bits_robIdx_value;
    end else if (lastCycleMisprediction) begin // @[Rename.scala 104:29]
      robIdxHead_value <= robIdxHeadNext_new_ptr_value;
    end else if (canOut) begin
      robIdxHead_value <= robIdxHeadNext_new_ptr_1_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rename.scala 293:55]
      snapshotCtr <= 4'h8; // @[Rename.scala 294:17]
    end else if (_T_17 & io_out_0_bits_snapshot) begin // @[Rename.scala 295:32]
      snapshotCtr <= _snapshotCtr_T_5; // @[Rename.scala 296:23]
    end else if (_T_17) begin // @[Rename.scala 290:28]
      if (snapshotCtr < _GEN_100) begin
        snapshotCtr <= 4'h0;
      end else begin
        snapshotCtr <= _snapshotCtr_T_16;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rename.scala 332:58]
      fpFreeList_io_freeReq_0_REG <= 1'h0;
    end else begin
      fpFreeList_io_freeReq_0_REG <= commitValid & io_robCommits_info_0_fpWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rename.scala 332:58]
      fpFreeList_io_freeReq_1_REG <= 1'h0;
    end else begin
      fpFreeList_io_freeReq_1_REG <= commitValid_1 & io_robCommits_info_1_fpWen;
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
  robIdxHead_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  robIdxHead_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  lastCycleMisprediction = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  snapshotCtr = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  intFreeList_io_freePhyReg_0_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  fpFreeList_io_freeReq_0_REG = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  intFreeList_io_freePhyReg_1_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  fpFreeList_io_freeReq_1_REG = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  debugRedirect_debugIsCtrl = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  debugRedirect_debugIsMemVio = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_37[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    robIdxHead_flag = 1'h0;
  end
  if (reset) begin
    robIdxHead_value = 5'h0;
  end
  if (reset) begin
    snapshotCtr = 4'h8;
  end
  if (reset) begin
    fpFreeList_io_freeReq_0_REG = 1'h0;
  end
  if (reset) begin
    fpFreeList_io_freeReq_1_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

