module Scheduler(
  input         clock,
  input         reset,
  input  [7:0]  io_hartId,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_allocPregs_0_isInt,
  input         io_allocPregs_0_isFp,
  input  [5:0]  io_allocPregs_0_preg,
  input         io_allocPregs_1_isInt,
  input         io_allocPregs_1_isFp,
  input  [5:0]  io_allocPregs_1_preg,
  input         io_in_0_valid,
  input         io_in_0_bits_cf_trigger_backendEn_0,
  input         io_in_0_bits_cf_trigger_backendEn_1,
  input         io_in_0_bits_cf_pd_isRVC,
  input  [1:0]  io_in_0_bits_cf_pd_brType,
  input         io_in_0_bits_cf_pd_isCall,
  input         io_in_0_bits_cf_pd_isRet,
  input         io_in_0_bits_cf_pred_taken,
  input         io_in_0_bits_cf_storeSetHit,
  input         io_in_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_0_bits_cf_ssid,
  input         io_in_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_0_bits_cf_ftqOffset,
  input  [1:0]  io_in_0_bits_ctrl_srcType_0,
  input  [1:0]  io_in_0_bits_ctrl_srcType_1,
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input  [3:0]  io_in_0_bits_ctrl_selImm,
  input  [19:0] io_in_0_bits_ctrl_imm,
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
  input  [5:0]  io_in_0_bits_psrc_0,
  input  [5:0]  io_in_0_bits_psrc_1,
  input  [5:0]  io_in_0_bits_pdest,
  input         io_in_0_bits_robIdx_flag,
  input  [4:0]  io_in_0_bits_robIdx_value,
  input         io_in_0_bits_lqIdx_flag,
  input  [3:0]  io_in_0_bits_lqIdx_value,
  input         io_in_0_bits_sqIdx_flag,
  input  [3:0]  io_in_0_bits_sqIdx_value,
  input         io_in_1_valid,
  input         io_in_1_bits_cf_trigger_backendEn_0,
  input         io_in_1_bits_cf_trigger_backendEn_1,
  input         io_in_1_bits_cf_pd_isRVC,
  input  [1:0]  io_in_1_bits_cf_pd_brType,
  input         io_in_1_bits_cf_pd_isCall,
  input         io_in_1_bits_cf_pd_isRet,
  input         io_in_1_bits_cf_pred_taken,
  input         io_in_1_bits_cf_storeSetHit,
  input         io_in_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_1_bits_cf_ssid,
  input         io_in_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_1_bits_cf_ftqOffset,
  input  [1:0]  io_in_1_bits_ctrl_srcType_0,
  input  [1:0]  io_in_1_bits_ctrl_srcType_1,
  input  [3:0]  io_in_1_bits_ctrl_fuType,
  input  [6:0]  io_in_1_bits_ctrl_fuOpType,
  input         io_in_1_bits_ctrl_rfWen,
  input         io_in_1_bits_ctrl_fpWen,
  input  [3:0]  io_in_1_bits_ctrl_selImm,
  input  [19:0] io_in_1_bits_ctrl_imm,
  input  [5:0]  io_in_1_bits_psrc_0,
  input  [5:0]  io_in_1_bits_psrc_1,
  input  [5:0]  io_in_1_bits_pdest,
  input         io_in_1_bits_robIdx_flag,
  input  [4:0]  io_in_1_bits_robIdx_value,
  input         io_in_1_bits_lqIdx_flag,
  input  [3:0]  io_in_1_bits_lqIdx_value,
  input         io_in_1_bits_sqIdx_flag,
  input  [3:0]  io_in_1_bits_sqIdx_value,
  input         io_in_4_valid,
  input         io_in_4_bits_cf_trigger_backendEn_0,
  input         io_in_4_bits_cf_trigger_backendEn_1,
  input         io_in_4_bits_cf_pd_isRVC,
  input  [1:0]  io_in_4_bits_cf_pd_brType,
  input         io_in_4_bits_cf_pd_isCall,
  input         io_in_4_bits_cf_pd_isRet,
  input         io_in_4_bits_cf_pred_taken,
  input         io_in_4_bits_cf_storeSetHit,
  input         io_in_4_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_4_bits_cf_ssid,
  input         io_in_4_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_4_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_4_bits_cf_ftqOffset,
  input  [1:0]  io_in_4_bits_ctrl_srcType_0,
  input  [1:0]  io_in_4_bits_ctrl_srcType_1,
  input  [3:0]  io_in_4_bits_ctrl_fuType,
  input  [6:0]  io_in_4_bits_ctrl_fuOpType,
  input         io_in_4_bits_ctrl_rfWen,
  input         io_in_4_bits_ctrl_fpWen,
  input  [19:0] io_in_4_bits_ctrl_imm,
  input  [5:0]  io_in_4_bits_psrc_0,
  input  [5:0]  io_in_4_bits_psrc_1,
  input  [5:0]  io_in_4_bits_pdest,
  input         io_in_4_bits_robIdx_flag,
  input  [4:0]  io_in_4_bits_robIdx_value,
  input         io_in_5_valid,
  input         io_in_5_bits_cf_trigger_backendEn_0,
  input         io_in_5_bits_cf_trigger_backendEn_1,
  input         io_in_5_bits_cf_pd_isRVC,
  input  [1:0]  io_in_5_bits_cf_pd_brType,
  input         io_in_5_bits_cf_pd_isCall,
  input         io_in_5_bits_cf_pd_isRet,
  input         io_in_5_bits_cf_pred_taken,
  input         io_in_5_bits_cf_storeSetHit,
  input         io_in_5_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_5_bits_cf_ssid,
  input         io_in_5_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_5_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_5_bits_cf_ftqOffset,
  input  [1:0]  io_in_5_bits_ctrl_srcType_0,
  input  [1:0]  io_in_5_bits_ctrl_srcType_1,
  input  [3:0]  io_in_5_bits_ctrl_fuType,
  input  [6:0]  io_in_5_bits_ctrl_fuOpType,
  input         io_in_5_bits_ctrl_rfWen,
  input         io_in_5_bits_ctrl_fpWen,
  input  [19:0] io_in_5_bits_ctrl_imm,
  input  [5:0]  io_in_5_bits_psrc_0,
  input  [5:0]  io_in_5_bits_psrc_1,
  input  [5:0]  io_in_5_bits_pdest,
  input         io_in_5_bits_robIdx_flag,
  input  [4:0]  io_in_5_bits_robIdx_value,
  input         io_in_6_valid,
  input         io_in_6_bits_cf_trigger_backendEn_0,
  input         io_in_6_bits_cf_trigger_backendEn_1,
  input         io_in_6_bits_cf_pd_isRVC,
  input  [1:0]  io_in_6_bits_cf_pd_brType,
  input         io_in_6_bits_cf_pd_isCall,
  input         io_in_6_bits_cf_pd_isRet,
  input         io_in_6_bits_cf_pred_taken,
  input         io_in_6_bits_cf_storeSetHit,
  input         io_in_6_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_6_bits_cf_ssid,
  input         io_in_6_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_6_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_6_bits_cf_ftqOffset,
  input  [1:0]  io_in_6_bits_ctrl_srcType_0,
  input  [1:0]  io_in_6_bits_ctrl_srcType_1,
  input  [3:0]  io_in_6_bits_ctrl_fuType,
  input  [6:0]  io_in_6_bits_ctrl_fuOpType,
  input         io_in_6_bits_ctrl_rfWen,
  input         io_in_6_bits_ctrl_fpWen,
  input  [19:0] io_in_6_bits_ctrl_imm,
  input  [5:0]  io_in_6_bits_psrc_0,
  input  [5:0]  io_in_6_bits_psrc_1,
  input  [5:0]  io_in_6_bits_pdest,
  input         io_in_6_bits_robIdx_flag,
  input  [4:0]  io_in_6_bits_robIdx_value,
  input         io_in_7_valid,
  input         io_in_7_bits_cf_trigger_backendEn_0,
  input         io_in_7_bits_cf_trigger_backendEn_1,
  input         io_in_7_bits_cf_pd_isRVC,
  input  [1:0]  io_in_7_bits_cf_pd_brType,
  input         io_in_7_bits_cf_pd_isCall,
  input         io_in_7_bits_cf_pd_isRet,
  input         io_in_7_bits_cf_pred_taken,
  input         io_in_7_bits_cf_storeSetHit,
  input         io_in_7_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_7_bits_cf_ssid,
  input         io_in_7_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_7_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_7_bits_cf_ftqOffset,
  input  [1:0]  io_in_7_bits_ctrl_srcType_0,
  input  [1:0]  io_in_7_bits_ctrl_srcType_1,
  input  [3:0]  io_in_7_bits_ctrl_fuType,
  input  [6:0]  io_in_7_bits_ctrl_fuOpType,
  input         io_in_7_bits_ctrl_rfWen,
  input         io_in_7_bits_ctrl_fpWen,
  input  [19:0] io_in_7_bits_ctrl_imm,
  input  [5:0]  io_in_7_bits_psrc_0,
  input  [5:0]  io_in_7_bits_psrc_1,
  input  [5:0]  io_in_7_bits_pdest,
  input         io_in_7_bits_robIdx_flag,
  input  [4:0]  io_in_7_bits_robIdx_value,
  output        io_issue_0_valid,
  output        io_issue_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_issue_0_bits_uop_cf_pd_brType,
  output        io_issue_0_bits_uop_cf_pd_isCall,
  output        io_issue_0_bits_uop_cf_pd_isRet,
  output        io_issue_0_bits_uop_cf_pred_taken,
  output        io_issue_0_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_0_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_0_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_0_bits_uop_ctrl_fuOpType,
  output [19:0] io_issue_0_bits_uop_ctrl_imm,
  output        io_issue_0_bits_uop_robIdx_flag,
  output [4:0]  io_issue_0_bits_uop_robIdx_value,
  output [63:0] io_issue_0_bits_src_0,
  output [63:0] io_issue_0_bits_src_1,
  output        io_issue_1_valid,
  output        io_issue_1_bits_uop_cf_pd_isRVC,
  output [1:0]  io_issue_1_bits_uop_cf_pd_brType,
  output        io_issue_1_bits_uop_cf_pd_isCall,
  output        io_issue_1_bits_uop_cf_pd_isRet,
  output        io_issue_1_bits_uop_cf_pred_taken,
  output        io_issue_1_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_1_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_1_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_1_bits_uop_ctrl_fuOpType,
  output [19:0] io_issue_1_bits_uop_ctrl_imm,
  output        io_issue_1_bits_uop_robIdx_flag,
  output [4:0]  io_issue_1_bits_uop_robIdx_value,
  output [63:0] io_issue_1_bits_src_0,
  output [63:0] io_issue_1_bits_src_1,
  input         io_issue_2_ready,
  output        io_issue_2_valid,
  output [3:0]  io_issue_2_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_2_bits_uop_ctrl_fuOpType,
  output        io_issue_2_bits_uop_ctrl_rfWen,
  output        io_issue_2_bits_uop_ctrl_fpWen,
  output [5:0]  io_issue_2_bits_uop_pdest,
  output        io_issue_2_bits_uop_robIdx_flag,
  output [4:0]  io_issue_2_bits_uop_robIdx_value,
  output        io_issue_2_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_2_bits_uop_lqIdx_value,
  output [63:0] io_issue_2_bits_src_0,
  output [63:0] io_issue_2_bits_src_1,
  input         io_issue_3_ready,
  output        io_issue_3_valid,
  output [38:0] io_issue_3_bits_uop_cf_pc,
  output        io_issue_3_bits_uop_cf_pd_isRVC,
  output [1:0]  io_issue_3_bits_uop_cf_pd_brType,
  output        io_issue_3_bits_uop_cf_pd_isCall,
  output        io_issue_3_bits_uop_cf_pd_isRet,
  output        io_issue_3_bits_uop_cf_pred_taken,
  output        io_issue_3_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_3_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_3_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_3_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_3_bits_uop_ctrl_fuOpType,
  output        io_issue_3_bits_uop_ctrl_rfWen,
  output        io_issue_3_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_3_bits_uop_ctrl_imm,
  output        io_issue_3_bits_uop_ctrl_fpu_typeTagOut,
  output        io_issue_3_bits_uop_ctrl_fpu_fromInt,
  output        io_issue_3_bits_uop_ctrl_fpu_wflags,
  output [1:0]  io_issue_3_bits_uop_ctrl_fpu_typ,
  output [2:0]  io_issue_3_bits_uop_ctrl_fpu_rm,
  output [5:0]  io_issue_3_bits_uop_pdest,
  output        io_issue_3_bits_uop_robIdx_flag,
  output [4:0]  io_issue_3_bits_uop_robIdx_value,
  output        io_issue_3_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_3_bits_uop_lqIdx_value,
  output [63:0] io_issue_3_bits_src_0,
  output [63:0] io_issue_3_bits_src_1,
  input         io_issue_4_ready,
  output        io_issue_4_valid,
  output        io_issue_4_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_4_bits_uop_cf_storeSetHit,
  output        io_issue_4_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_issue_4_bits_uop_cf_ssid,
  output        io_issue_4_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_4_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_4_bits_uop_cf_ftqOffset,
  output [6:0]  io_issue_4_bits_uop_ctrl_fuOpType,
  output        io_issue_4_bits_uop_ctrl_rfWen,
  output        io_issue_4_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_4_bits_uop_ctrl_imm,
  output [5:0]  io_issue_4_bits_uop_pdest,
  output        io_issue_4_bits_uop_robIdx_flag,
  output [4:0]  io_issue_4_bits_uop_robIdx_value,
  output        io_issue_4_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_4_bits_uop_lqIdx_value,
  output        io_issue_4_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_4_bits_uop_sqIdx_value,
  output [63:0] io_issue_4_bits_src_0,
  input         io_issue_5_ready,
  output        io_issue_5_valid,
  output        io_issue_5_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_5_bits_uop_cf_storeSetHit,
  output        io_issue_5_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_issue_5_bits_uop_cf_ssid,
  output        io_issue_5_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_5_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_5_bits_uop_cf_ftqOffset,
  output [6:0]  io_issue_5_bits_uop_ctrl_fuOpType,
  output        io_issue_5_bits_uop_ctrl_rfWen,
  output        io_issue_5_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_5_bits_uop_ctrl_imm,
  output [5:0]  io_issue_5_bits_uop_pdest,
  output        io_issue_5_bits_uop_robIdx_flag,
  output [4:0]  io_issue_5_bits_uop_robIdx_value,
  output        io_issue_5_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_5_bits_uop_lqIdx_value,
  output        io_issue_5_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_5_bits_uop_sqIdx_value,
  output [63:0] io_issue_5_bits_src_0,
  input         io_issue_6_ready,
  output        io_issue_6_valid,
  output        io_issue_6_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_6_bits_uop_cf_trigger_backendEn_1,
  output [2:0]  io_issue_6_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_6_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_6_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_6_bits_uop_ctrl_fuOpType,
  output        io_issue_6_bits_uop_ctrl_rfWen,
  output        io_issue_6_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_6_bits_uop_ctrl_imm,
  output [5:0]  io_issue_6_bits_uop_pdest,
  output        io_issue_6_bits_uop_robIdx_flag,
  output [4:0]  io_issue_6_bits_uop_robIdx_value,
  output        io_issue_6_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_6_bits_uop_lqIdx_value,
  output        io_issue_6_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_6_bits_uop_sqIdx_value,
  output [63:0] io_issue_6_bits_src_0,
  input         io_issue_7_ready,
  output        io_issue_7_valid,
  output        io_issue_7_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_7_bits_uop_cf_trigger_backendEn_1,
  output [2:0]  io_issue_7_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_7_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_7_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_7_bits_uop_ctrl_fuOpType,
  output        io_issue_7_bits_uop_ctrl_rfWen,
  output        io_issue_7_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_7_bits_uop_ctrl_imm,
  output [5:0]  io_issue_7_bits_uop_pdest,
  output        io_issue_7_bits_uop_robIdx_flag,
  output [4:0]  io_issue_7_bits_uop_robIdx_value,
  output        io_issue_7_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_7_bits_uop_lqIdx_value,
  output        io_issue_7_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_7_bits_uop_sqIdx_value,
  output [63:0] io_issue_7_bits_src_0,
  input         io_issue_8_ready,
  output        io_issue_8_valid,
  output [3:0]  io_issue_8_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_8_bits_uop_ctrl_fuOpType,
  output        io_issue_8_bits_uop_robIdx_flag,
  output [4:0]  io_issue_8_bits_uop_robIdx_value,
  output        io_issue_8_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_8_bits_uop_sqIdx_value,
  output [63:0] io_issue_8_bits_src_0,
  input         io_issue_9_ready,
  output        io_issue_9_valid,
  output [3:0]  io_issue_9_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_9_bits_uop_ctrl_fuOpType,
  output        io_issue_9_bits_uop_robIdx_flag,
  output [4:0]  io_issue_9_bits_uop_robIdx_value,
  output        io_issue_9_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_9_bits_uop_sqIdx_value,
  output [63:0] io_issue_9_bits_src_0,
  output        io_fastUopOut_0_valid,
  output        io_fastUopOut_0_bits_ctrl_rfWen,
  output        io_fastUopOut_0_bits_ctrl_fpWen,
  output [5:0]  io_fastUopOut_0_bits_pdest,
  output        io_fastUopOut_0_bits_robIdx_flag,
  output [4:0]  io_fastUopOut_0_bits_robIdx_value,
  output        io_fastUopOut_0_bits_lqIdx_flag,
  output [3:0]  io_fastUopOut_0_bits_lqIdx_value,
  output        io_fastUopOut_1_valid,
  output        io_fastUopOut_1_bits_ctrl_rfWen,
  output        io_fastUopOut_1_bits_ctrl_fpWen,
  output [5:0]  io_fastUopOut_1_bits_pdest,
  output        io_fastUopOut_1_bits_robIdx_flag,
  output [4:0]  io_fastUopOut_1_bits_robIdx_value,
  output        io_fastUopOut_1_bits_lqIdx_flag,
  output [3:0]  io_fastUopOut_1_bits_lqIdx_value,
  input         io_writeback_0_valid,
  input         io_writeback_0_bits_uop_ctrl_rfWen,
  input         io_writeback_0_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_0_bits_uop_pdest,
  input  [63:0] io_writeback_0_bits_data,
  input         io_writeback_1_valid,
  input         io_writeback_1_bits_uop_ctrl_rfWen,
  input         io_writeback_1_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_1_bits_uop_pdest,
  input  [63:0] io_writeback_1_bits_data,
  input         io_writeback_2_valid,
  input         io_writeback_2_bits_uop_ctrl_rfWen,
  input         io_writeback_2_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_2_bits_uop_pdest,
  input  [63:0] io_writeback_2_bits_data,
  input         io_writeback_3_valid,
  input         io_writeback_3_bits_uop_ctrl_rfWen,
  input         io_writeback_3_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_3_bits_uop_pdest,
  input  [63:0] io_writeback_3_bits_data,
  input         io_writeback_4_valid,
  input         io_writeback_4_bits_uop_ctrl_rfWen,
  input         io_writeback_4_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_4_bits_uop_pdest,
  input  [63:0] io_writeback_4_bits_data,
  input         io_writeback_5_valid,
  input         io_writeback_5_bits_uop_ctrl_rfWen,
  input         io_writeback_5_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_5_bits_uop_pdest,
  input  [63:0] io_writeback_5_bits_data,
  input         io_writeback_6_valid,
  input         io_writeback_6_bits_uop_ctrl_rfWen,
  input         io_writeback_6_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_6_bits_uop_pdest,
  input  [63:0] io_writeback_6_bits_data,
  input         io_writeback_7_valid,
  input         io_writeback_7_bits_uop_ctrl_rfWen,
  input         io_writeback_7_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_7_bits_uop_pdest,
  input  [63:0] io_writeback_7_bits_data,
  input         io_writeback_8_valid,
  input         io_writeback_8_bits_uop_ctrl_rfWen,
  input         io_writeback_8_bits_uop_ctrl_fpWen,
  input  [5:0]  io_writeback_8_bits_uop_pdest,
  input  [63:0] io_writeback_8_bits_data,
  input         io_fastUopIn_2_valid,
  input         io_fastUopIn_2_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopIn_2_bits_pdest,
  input         io_fastUopIn_3_valid,
  input         io_fastUopIn_3_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopIn_3_bits_pdest,
  output        io_extra_rsReady_0,
  output        io_extra_rsReady_1,
  output        io_extra_rsReady_2,
  output        io_extra_rsReady_3,
  output        io_extra_rsReady_4,
  output        io_extra_rsReady_5,
  output        io_extra_rsReady_6,
  output        io_extra_rsReady_7,
  input         io_extra_feedback_0_feedbackSlow_valid,
  input  [3:0]  io_extra_feedback_0_feedbackSlow_bits_rsIdx,
  input         io_extra_feedback_0_feedbackSlow_bits_hit,
  input         io_extra_feedback_0_feedbackFast_valid,
  input  [3:0]  io_extra_feedback_0_feedbackFast_bits_rsIdx,
  output [3:0]  io_extra_feedback_0_rsIdx,
  input         io_extra_feedback_1_feedbackSlow_valid,
  input  [3:0]  io_extra_feedback_1_feedbackSlow_bits_rsIdx,
  input         io_extra_feedback_1_feedbackSlow_bits_hit,
  input         io_extra_feedback_1_feedbackFast_valid,
  input  [3:0]  io_extra_feedback_1_feedbackFast_bits_rsIdx,
  output [3:0]  io_extra_feedback_1_rsIdx,
  input         io_extra_feedback_2_feedbackSlow_valid,
  input  [3:0]  io_extra_feedback_2_feedbackSlow_bits_rsIdx,
  input         io_extra_feedback_2_feedbackSlow_bits_hit,
  output [3:0]  io_extra_feedback_2_rsIdx,
  input         io_extra_feedback_3_feedbackSlow_valid,
  input  [3:0]  io_extra_feedback_3_feedbackSlow_bits_rsIdx,
  input         io_extra_feedback_3_feedbackSlow_bits_hit,
  output [3:0]  io_extra_feedback_3_rsIdx,
  output [5:0]  io_extra_fpRfReadIn_0_addr,
  input  [63:0] io_extra_fpRfReadIn_0_data,
  output [5:0]  io_extra_fpRfReadIn_1_addr,
  input  [63:0] io_extra_fpRfReadIn_1_data,
  output [1:0]  io_extra_loadFastMatch_0,
  output [1:0]  io_extra_loadFastMatch_1,
  output [6:0]  io_extra_loadFastFuOpType_0,
  output [6:0]  io_extra_loadFastFuOpType_1,
  output [11:0] io_extra_loadFastImm_0,
  output [11:0] io_extra_loadFastImm_1,
  input  [38:0] io_extra_jumpPc,
  input  [38:0] io_extra_jalr_target,
  input  [1:0]  io_extra_lcommit,
  input  [1:0]  io_extra_scommit,
  input  [4:0]  io_extra_lqCancelCnt,
  input  [3:0]  io_extra_sqCancelCnt,
  input  [5:0]  io_extra_debug_int_rat_0,
  input  [5:0]  io_extra_debug_int_rat_1,
  input  [5:0]  io_extra_debug_int_rat_2,
  input  [5:0]  io_extra_debug_int_rat_3,
  input  [5:0]  io_extra_debug_int_rat_4,
  input  [5:0]  io_extra_debug_int_rat_5,
  input  [5:0]  io_extra_debug_int_rat_6,
  input  [5:0]  io_extra_debug_int_rat_7,
  input  [5:0]  io_extra_debug_int_rat_8,
  input  [5:0]  io_extra_debug_int_rat_9,
  input  [5:0]  io_extra_debug_int_rat_10,
  input  [5:0]  io_extra_debug_int_rat_11,
  input  [5:0]  io_extra_debug_int_rat_12,
  input  [5:0]  io_extra_debug_int_rat_13,
  input  [5:0]  io_extra_debug_int_rat_14,
  input  [5:0]  io_extra_debug_int_rat_15,
  input  [5:0]  io_extra_debug_int_rat_16,
  input  [5:0]  io_extra_debug_int_rat_17,
  input  [5:0]  io_extra_debug_int_rat_18,
  input  [5:0]  io_extra_debug_int_rat_19,
  input  [5:0]  io_extra_debug_int_rat_20,
  input  [5:0]  io_extra_debug_int_rat_21,
  input  [5:0]  io_extra_debug_int_rat_22,
  input  [5:0]  io_extra_debug_int_rat_23,
  input  [5:0]  io_extra_debug_int_rat_24,
  input  [5:0]  io_extra_debug_int_rat_25,
  input  [5:0]  io_extra_debug_int_rat_26,
  input  [5:0]  io_extra_debug_int_rat_27,
  input  [5:0]  io_extra_debug_int_rat_28,
  input  [5:0]  io_extra_debug_int_rat_29,
  input  [5:0]  io_extra_debug_int_rat_30,
  input  [5:0]  io_extra_debug_int_rat_31,
  input         io_extra_robDeqPtr_flag,
  input  [4:0]  io_extra_robDeqPtr_value,
  output        io_extra_robHeadLsIssue,
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
  output [5:0]  io_perf_11_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
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
`endif // RANDOMIZE_REG_INIT
  wire  intDispatch_io_in_0_ready; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_valid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_pd_isRVC; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_0_bits_cf_pd_brType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_pd_isCall; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_pd_isRet; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_pred_taken; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_storeSetHit; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_in_0_bits_cf_ssid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_in_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_in_0_bits_cf_ftqOffset; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_0_bits_ctrl_srcType_0; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_0_bits_ctrl_srcType_1; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_0_bits_ctrl_fuType; // @[Scheduler.scala 140:35]
  wire [6:0] intDispatch_io_in_0_bits_ctrl_fuOpType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_rfWen; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpWen; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_0_bits_ctrl_selImm; // @[Scheduler.scala 140:35]
  wire [19:0] intDispatch_io_in_0_bits_ctrl_imm; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_div; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_in_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_in_0_bits_psrc_0; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_in_0_bits_psrc_1; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_in_0_bits_pdest; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_robIdx_flag; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_in_0_bits_robIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_lqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_0_bits_lqIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_0_bits_sqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_0_bits_sqIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_ready; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_valid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_pd_isRVC; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_1_bits_cf_pd_brType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_pd_isCall; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_pd_isRet; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_pred_taken; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_storeSetHit; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_in_1_bits_cf_ssid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_in_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_in_1_bits_cf_ftqOffset; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_1_bits_ctrl_srcType_0; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_in_1_bits_ctrl_srcType_1; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_1_bits_ctrl_fuType; // @[Scheduler.scala 140:35]
  wire [6:0] intDispatch_io_in_1_bits_ctrl_fuOpType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_ctrl_rfWen; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_ctrl_fpWen; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_1_bits_ctrl_selImm; // @[Scheduler.scala 140:35]
  wire [19:0] intDispatch_io_in_1_bits_ctrl_imm; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_in_1_bits_psrc_0; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_in_1_bits_psrc_1; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_in_1_bits_pdest; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_robIdx_flag; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_in_1_bits_robIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_lqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_1_bits_lqIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_in_1_bits_sqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_in_1_bits_sqIdx_value; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_readIntState_0_req; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_readIntState_0_resp; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_readIntState_1_req; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_readIntState_1_resp; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_readIntState_2_req; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_readIntState_2_resp; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_readIntState_3_req; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_readIntState_3_resp; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_ready; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_valid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_out_0_bits_cf_ssid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 140:35]
  wire [6:0] intDispatch_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_0_bits_ctrl_selImm; // @[Scheduler.scala 140:35]
  wire [19:0] intDispatch_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_srcState_0; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_srcState_1; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_out_0_bits_psrc_0; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_out_0_bits_psrc_1; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_out_0_bits_pdest; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_out_0_bits_robIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_ready; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_valid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_storeSetHit; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_out_1_bits_cf_ssid; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 140:35]
  wire [2:0] intDispatch_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 140:35]
  wire [1:0] intDispatch_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 140:35]
  wire [6:0] intDispatch_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_1_bits_ctrl_selImm; // @[Scheduler.scala 140:35]
  wire [19:0] intDispatch_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_srcState_0; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_srcState_1; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_out_1_bits_psrc_0; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_out_1_bits_psrc_1; // @[Scheduler.scala 140:35]
  wire [5:0] intDispatch_io_out_1_bits_pdest; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 140:35]
  wire [4:0] intDispatch_io_out_1_bits_robIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 140:35]
  wire  intDispatch_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 140:35]
  wire [3:0] intDispatch_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 140:35]
  wire  lsDispatch_clock; // @[Scheduler.scala 141:34]
  wire  lsDispatch_reset; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_redirect_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_redirect_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_redirect_bits_level; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_0_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_0_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_0_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_0_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_0_bits_ctrl_srcType_1; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_in_0_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_in_0_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_in_0_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_0_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_0_bits_psrc_1; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_0_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_0_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_0_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_1_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_1_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_1_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_1_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_1_bits_ctrl_srcType_1; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_in_1_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_in_1_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_in_1_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_1_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_1_bits_psrc_1; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_1_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_1_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_1_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_2_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_2_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_2_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_2_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_2_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_2_bits_ctrl_srcType_1; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_in_2_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_in_2_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_in_2_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_2_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_2_bits_psrc_1; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_2_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_2_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_2_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_3_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_3_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_3_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_in_3_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_3_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_in_3_bits_ctrl_srcType_1; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_in_3_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_in_3_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_in_3_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_3_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_3_bits_psrc_1; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_in_3_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_in_3_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_in_3_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readIntState_0_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readIntState_0_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readIntState_1_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readIntState_1_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readIntState_2_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readIntState_2_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readIntState_3_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readIntState_3_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readIntState_4_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readIntState_4_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readIntState_5_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readIntState_5_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readFpState_0_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readFpState_0_resp; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_readFpState_1_req; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_readFpState_1_resp; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_0_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_srcState_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_0_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_0_bits_psrc_1; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_0_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_0_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_1_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_srcState_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_1_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_1_bits_psrc_1; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_1_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_1_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_2_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_2_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_2_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_2_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_2_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_2_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_out_2_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_out_2_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_srcState_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_2_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_2_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_2_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_2_bits_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_2_bits_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_2_bits_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_3_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_3_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_3_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_3_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_3_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_3_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_out_3_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_out_3_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_srcState_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_3_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_3_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_3_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_3_bits_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_3_bits_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_3_bits_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_4_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_4_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_4_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_4_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_4_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_4_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_out_4_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_out_4_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_srcState_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_4_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_4_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_4_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_4_bits_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_4_bits_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_4_bits_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_ready; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_pd_isRVC; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_5_bits_cf_pd_brType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_pd_isCall; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_pd_isRet; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_pred_taken; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_loadWaitStrict; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_5_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_cf_ftqPtr_flag; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_5_bits_cf_ftqPtr_value; // @[Scheduler.scala 141:34]
  wire [2:0] lsDispatch_io_out_5_bits_cf_ftqOffset; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_out_5_bits_ctrl_srcType_0; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_5_bits_ctrl_fuType; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_out_5_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_ctrl_rfWen; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_ctrl_fpWen; // @[Scheduler.scala 141:34]
  wire [19:0] lsDispatch_io_out_5_bits_ctrl_imm; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_srcState_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_5_bits_psrc_0; // @[Scheduler.scala 141:34]
  wire [5:0] lsDispatch_io_out_5_bits_pdest; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_out_5_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_5_bits_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_out_5_bits_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_out_5_bits_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_canAccept; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_enqLsq_needAlloc_0; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_enqLsq_needAlloc_1; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_enqLsq_needAlloc_2; // @[Scheduler.scala 141:34]
  wire [1:0] lsDispatch_io_enqLsq_needAlloc_3; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_0_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_0_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_0_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_enqLsq_req_0_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_0_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_0_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_1_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_1_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_1_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_enqLsq_req_1_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_1_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_1_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_2_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_2_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_2_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_enqLsq_req_2_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_2_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_2_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_3_valid; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_3_bits_cf_storeSetHit; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_3_bits_cf_ssid; // @[Scheduler.scala 141:34]
  wire [6:0] lsDispatch_io_enqLsq_req_3_bits_ctrl_fuOpType; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_req_3_bits_robIdx_flag; // @[Scheduler.scala 141:34]
  wire [4:0] lsDispatch_io_enqLsq_req_3_bits_robIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_0_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_0_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_0_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_0_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_1_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_1_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_1_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_1_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_2_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_2_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_2_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_2_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_3_lqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_3_lqIdx_value; // @[Scheduler.scala 141:34]
  wire  lsDispatch_io_enqLsq_resp_3_sqIdx_flag; // @[Scheduler.scala 141:34]
  wire [3:0] lsDispatch_io_enqLsq_resp_3_sqIdx_value; // @[Scheduler.scala 141:34]
  wire  rs_clock; // @[Scheduler.scala 172:24]
  wire  rs_reset; // @[Scheduler.scala 172:24]
  wire  rs_io_redirect_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_redirect_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_redirect_bits_level; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_fromDispatch_0_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_srcType_1; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_0_bits_ctrl_selImm; // @[Scheduler.scala 172:24]
  wire [19:0] rs_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_srcState_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fromDispatch_0_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_0_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_0_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_fromDispatch_1_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_fromDispatch_1_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_fromDispatch_1_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_srcType_1; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_1_bits_ctrl_selImm; // @[Scheduler.scala 172:24]
  wire [19:0] rs_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_srcState_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fromDispatch_1_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fromDispatch_1_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fromDispatch_1_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_srcRegValue_0_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_srcRegValue_0_1; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_srcRegValue_1_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_srcRegValue_1_1; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_bits_uop_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_deq_0_bits_uop_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_bits_uop_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_bits_uop_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_bits_uop_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire [19:0] rs_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_deq_0_bits_src_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_deq_0_bits_src_1; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_bits_uop_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_io_deq_1_bits_uop_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_bits_uop_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_bits_uop_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_bits_uop_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_deq_1_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_io_deq_1_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_deq_1_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire [19:0] rs_io_deq_1_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_deq_1_bits_src_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_deq_1_bits_src_1; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastUopsIn_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastUopsIn_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_2_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastUopsIn_2_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_3_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastUopsIn_3_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastUopsIn_4_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastUopsIn_4_bits_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_fastDatas_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_fastDatas_1; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_fastDatas_2; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_fastDatas_3; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_fastDatas_4; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_slowPorts_0_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_slowPorts_1_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_slowPorts_2_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_slowPorts_3_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_io_slowPorts_4_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastWakeup_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_fastWakeup_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fastWakeup_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_1_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_fastWakeup_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_1_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_io_fastWakeup_1_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_io_fastWakeup_1_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_io_fastWakeup_1_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire [5:0] rs_io_perf_0_value; // @[Scheduler.scala 172:24]
  wire  rs_1_clock; // @[Scheduler.scala 172:24]
  wire  rs_1_reset; // @[Scheduler.scala 172:24]
  wire  rs_1_io_redirect_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_1_io_redirect_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_1_io_redirect_bits_level; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_valid; // @[Scheduler.scala 172:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_srcType_1; // @[Scheduler.scala 172:24]
  wire [3:0] rs_1_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_1_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_1_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_bits_srcState_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fromDispatch_0_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_1_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_1_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_valid; // @[Scheduler.scala 172:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_srcType_1; // @[Scheduler.scala 172:24]
  wire [3:0] rs_1_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_1_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_1_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_bits_srcState_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fromDispatch_1_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_1_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_1_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_srcRegValue_0_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_srcRegValue_0_1; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_srcRegValue_1_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_srcRegValue_1_1; // @[Scheduler.scala 172:24]
  wire  rs_1_io_deq_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_1_io_deq_0_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_1_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_1_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire  rs_1_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_1_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_1_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_1_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_deq_0_bits_src_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_deq_0_bits_src_1; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fastUopsIn_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fastUopsIn_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fastUopsIn_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_fastDatas_0; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_slowPorts_0_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_slowPorts_1_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_slowPorts_2_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_slowPorts_3_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_1_io_slowPorts_4_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fastWakeup_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_1_io_fastWakeup_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_fastWakeup_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire [5:0] rs_1_io_perf_0_value; // @[Scheduler.scala 172:24]
  wire  rs_2_clock; // @[Scheduler.scala 172:24]
  wire  rs_2_reset; // @[Scheduler.scala 172:24]
  wire  rs_2_io_redirect_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_2_io_redirect_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_2_io_redirect_bits_level; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_2_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_2_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_fromDispatch_0_bits_ctrl_srcType_1; // @[Scheduler.scala 172:24]
  wire [3:0] rs_2_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_2_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_2_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_div; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_fromDispatch_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 172:24]
  wire [2:0] rs_2_io_fromDispatch_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_srcState_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_fromDispatch_0_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_2_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_2_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_2_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_srcRegValue_0_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_srcRegValue_0_1; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_valid; // @[Scheduler.scala 172:24]
  wire [38:0] rs_2_io_deq_0_bits_uop_cf_pc; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_deq_0_bits_uop_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_2_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_2_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [3:0] rs_2_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_2_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_2_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_ctrl_fpu_typeTagOut; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_ctrl_fpu_fromInt; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_ctrl_fpu_wflags; // @[Scheduler.scala 172:24]
  wire [1:0] rs_2_io_deq_0_bits_uop_ctrl_fpu_typ; // @[Scheduler.scala 172:24]
  wire [2:0] rs_2_io_deq_0_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_2_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_2_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_2_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_deq_0_bits_src_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_deq_0_bits_src_1; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_slowPorts_0_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_slowPorts_1_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_slowPorts_2_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_slowPorts_3_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_2_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_2_io_slowPorts_4_bits_data; // @[Scheduler.scala 172:24]
  wire [38:0] rs_2_io_jump_jumpPc; // @[Scheduler.scala 172:24]
  wire [38:0] rs_2_io_jump_jalr_target; // @[Scheduler.scala 172:24]
  wire [5:0] rs_2_io_perf_0_value; // @[Scheduler.scala 172:24]
  wire  rs_3_clock; // @[Scheduler.scala 172:24]
  wire  rs_3_reset; // @[Scheduler.scala 172:24]
  wire  rs_3_io_redirect_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_redirect_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_redirect_bits_level; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_3_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_fromDispatch_0_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_3_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_3_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_3_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fromDispatch_0_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_0_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_fromDispatch_0_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_3_io_fromDispatch_1_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_fromDispatch_1_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_fromDispatch_1_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_3_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_3_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_3_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fromDispatch_1_bits_psrc_1; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fromDispatch_1_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_fromDispatch_1_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_srcRegValue_0_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_srcRegValue_1_0; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_deq_0_bits_uop_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [6:0] rs_3_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_3_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_0_bits_uop_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_deq_0_bits_uop_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_deq_0_bits_src_0; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_deq_1_bits_uop_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_deq_1_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_3_io_deq_1_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [6:0] rs_3_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_3_io_deq_1_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_deq_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_3_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_deq_1_bits_uop_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_3_io_deq_1_bits_uop_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_deq_1_bits_uop_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_deq_1_bits_src_0; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fastUopsIn_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fastUopsIn_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_2_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fastUopsIn_2_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_fastUopsIn_3_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_fastUopsIn_3_bits_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_fastDatas_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_fastDatas_1; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_fastDatas_2; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_fastDatas_3; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_slowPorts_0_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_slowPorts_1_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_slowPorts_2_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_slowPorts_3_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_3_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_3_io_slowPorts_4_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_3_io_feedback_0_feedbackSlow_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_feedback_0_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 172:24]
  wire  rs_3_io_feedback_0_feedbackSlow_bits_hit; // @[Scheduler.scala 172:24]
  wire  rs_3_io_feedback_0_feedbackFast_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_feedback_0_feedbackFast_bits_rsIdx; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_feedback_0_rsIdx; // @[Scheduler.scala 172:24]
  wire  rs_3_io_feedback_1_feedbackSlow_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_feedback_1_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 172:24]
  wire  rs_3_io_feedback_1_feedbackSlow_bits_hit; // @[Scheduler.scala 172:24]
  wire  rs_3_io_feedback_1_feedbackFast_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_feedback_1_feedbackFast_bits_rsIdx; // @[Scheduler.scala 172:24]
  wire [3:0] rs_3_io_feedback_1_rsIdx; // @[Scheduler.scala 172:24]
  wire [1:0] rs_3_io_load_0_fastMatch; // @[Scheduler.scala 172:24]
  wire [6:0] rs_3_io_load_0_fastFuOpType; // @[Scheduler.scala 172:24]
  wire [11:0] rs_3_io_load_0_fastImm; // @[Scheduler.scala 172:24]
  wire [1:0] rs_3_io_load_1_fastMatch; // @[Scheduler.scala 172:24]
  wire [6:0] rs_3_io_load_1_fastFuOpType; // @[Scheduler.scala 172:24]
  wire [11:0] rs_3_io_load_1_fastImm; // @[Scheduler.scala 172:24]
  wire [5:0] rs_3_io_perf_0_value; // @[Scheduler.scala 172:24]
  wire  rs_4_clock; // @[Scheduler.scala 172:24]
  wire  rs_4_reset; // @[Scheduler.scala 172:24]
  wire  rs_4_io_redirect_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_redirect_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_redirect_bits_level; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_4_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_fromDispatch_0_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_4_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_4_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_4_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_0_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_fromDispatch_0_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_4_io_fromDispatch_1_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_fromDispatch_1_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_fromDispatch_1_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_4_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_4_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_4_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fromDispatch_1_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_fromDispatch_1_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_srcRegValue_0_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_srcRegValue_1_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_4_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_4_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_0_bits_uop_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_deq_0_bits_uop_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_deq_0_bits_src_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_deq_1_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_4_io_deq_1_bits_uop_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_deq_1_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_4_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_4_io_deq_1_bits_uop_ctrl_imm; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_deq_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_4_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_deq_1_bits_uop_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_4_io_deq_1_bits_uop_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_deq_1_bits_uop_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_deq_1_bits_src_0; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fastUopsIn_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fastUopsIn_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_fastUopsIn_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fastUopsIn_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_fastUopsIn_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_fastUopsIn_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_fastDatas_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_fastDatas_1; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_slowPorts_0_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_slowPorts_1_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_slowPorts_2_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_slowPorts_3_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_4_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_4_io_slowPorts_4_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_4_io_feedback_0_feedbackSlow_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_feedback_0_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 172:24]
  wire  rs_4_io_feedback_0_feedbackSlow_bits_hit; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_feedback_0_rsIdx; // @[Scheduler.scala 172:24]
  wire  rs_4_io_feedback_1_feedbackSlow_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_feedback_1_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 172:24]
  wire  rs_4_io_feedback_1_feedbackSlow_bits_hit; // @[Scheduler.scala 172:24]
  wire [3:0] rs_4_io_feedback_1_rsIdx; // @[Scheduler.scala 172:24]
  wire [5:0] rs_4_io_perf_0_value; // @[Scheduler.scala 172:24]
  wire  rs_5_clock; // @[Scheduler.scala 172:24]
  wire  rs_5_reset; // @[Scheduler.scala 172:24]
  wire  rs_5_io_redirect_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_redirect_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_redirect_bits_level; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_5_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_fromDispatch_0_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_5_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_5_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_5_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_5_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_5_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_0_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_fromDispatch_0_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_pd_isRVC; // @[Scheduler.scala 172:24]
  wire [1:0] rs_5_io_fromDispatch_1_bits_cf_pd_brType; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_pd_isCall; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_pd_isRet; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_pred_taken; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_storeSetHit; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_fromDispatch_1_bits_cf_ssid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 172:24]
  wire [2:0] rs_5_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 172:24]
  wire [2:0] rs_5_io_fromDispatch_1_bits_cf_ftqOffset; // @[Scheduler.scala 172:24]
  wire [1:0] rs_5_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_5_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [19:0] rs_5_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_fromDispatch_1_bits_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_fromDispatch_1_bits_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_srcRegValue_0_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_srcRegValue_1_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_fpRegValue_0; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_fpRegValue_1; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_0_ready; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_0_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_5_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_0_bits_uop_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_deq_0_bits_uop_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_deq_0_bits_src_0; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_1_ready; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_1_valid; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_deq_1_bits_uop_ctrl_fuType; // @[Scheduler.scala 172:24]
  wire [6:0] rs_5_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 172:24]
  wire [4:0] rs_5_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 172:24]
  wire  rs_5_io_deq_1_bits_uop_sqIdx_flag; // @[Scheduler.scala 172:24]
  wire [3:0] rs_5_io_deq_1_bits_uop_sqIdx_value; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_deq_1_bits_src_0; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_0_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_0_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_1_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_1_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_2_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_2_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_2_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_3_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_3_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_3_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_4_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_4_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_4_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_5_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_5_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_5_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_5_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_5_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_6_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_6_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_6_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_6_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_6_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_7_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_7_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_7_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_7_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_7_bits_data; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_8_valid; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_8_bits_uop_ctrl_rfWen; // @[Scheduler.scala 172:24]
  wire  rs_5_io_slowPorts_8_bits_uop_ctrl_fpWen; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_slowPorts_8_bits_uop_pdest; // @[Scheduler.scala 172:24]
  wire [63:0] rs_5_io_slowPorts_8_bits_data; // @[Scheduler.scala 172:24]
  wire [5:0] rs_5_io_perf_0_value; // @[Scheduler.scala 172:24]
  wire  lsqCtrl_clock; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_reset; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_redirect_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_canAccept; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enq_needAlloc_0; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enq_needAlloc_1; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enq_needAlloc_2; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enq_needAlloc_3; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_0_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_0_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_0_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enq_req_0_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_0_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_0_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_1_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_1_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_1_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enq_req_1_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_1_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_1_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_2_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_2_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_2_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enq_req_2_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_2_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_2_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_3_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_3_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_3_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enq_req_3_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_req_3_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enq_req_3_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_0_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_0_lqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_0_sqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_0_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_1_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_1_lqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_1_sqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_1_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_2_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_2_lqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_2_sqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_2_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_3_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_3_lqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enq_resp_3_sqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enq_resp_3_sqIdx_value; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_lcommit; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_scommit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_lqCancelCnt; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_sqCancelCnt; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enqLsq_needAlloc_0; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enqLsq_needAlloc_1; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enqLsq_needAlloc_2; // @[Scheduler.scala 308:25]
  wire [1:0] lsqCtrl_io_enqLsq_needAlloc_3; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_0_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_0_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_0_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enqLsq_req_0_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_0_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_0_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_0_bits_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_0_bits_lqIdx_value; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_0_bits_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_1_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_1_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_1_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enqLsq_req_1_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_1_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_1_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_1_bits_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_1_bits_lqIdx_value; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_1_bits_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_2_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_2_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_2_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enqLsq_req_2_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_2_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_2_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_2_bits_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_2_bits_lqIdx_value; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_2_bits_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_3_valid; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_3_bits_cf_storeSetHit; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_3_bits_cf_ssid; // @[Scheduler.scala 308:25]
  wire [6:0] lsqCtrl_io_enqLsq_req_3_bits_ctrl_fuOpType; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_3_bits_robIdx_flag; // @[Scheduler.scala 308:25]
  wire [4:0] lsqCtrl_io_enqLsq_req_3_bits_robIdx_value; // @[Scheduler.scala 308:25]
  wire  lsqCtrl_io_enqLsq_req_3_bits_lqIdx_flag; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_3_bits_lqIdx_value; // @[Scheduler.scala 308:25]
  wire [3:0] lsqCtrl_io_enqLsq_req_3_bits_sqIdx_value; // @[Scheduler.scala 308:25]
  wire  intBusyTable_clock; // @[Scheduler.scala 321:27]
  wire  intBusyTable_reset; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_allocPregs_0_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_allocPregs_0_bits; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_allocPregs_1_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_allocPregs_1_bits; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_wbPregs_0_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_wbPregs_0_bits; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_wbPregs_1_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_wbPregs_1_bits; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_wbPregs_2_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_wbPregs_2_bits; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_wbPregs_3_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_wbPregs_3_bits; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_wbPregs_4_valid; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_wbPregs_4_bits; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_0_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_0_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_1_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_1_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_2_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_2_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_3_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_3_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_8_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_8_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_9_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_9_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_10_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_10_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_11_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_11_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_12_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_12_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_read_13_req; // @[Scheduler.scala 321:27]
  wire  intBusyTable_io_read_13_resp; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_perf_0_value; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_perf_1_value; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_perf_2_value; // @[Scheduler.scala 321:27]
  wire [5:0] intBusyTable_io_perf_3_value; // @[Scheduler.scala 321:27]
  wire  fpBusyTable_clock; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_reset; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_allocPregs_0_valid; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_allocPregs_0_bits; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_allocPregs_1_valid; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_allocPregs_1_bits; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_wbPregs_0_valid; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_wbPregs_0_bits; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_wbPregs_1_valid; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_wbPregs_1_bits; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_wbPregs_2_valid; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_wbPregs_2_bits; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_wbPregs_3_valid; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_wbPregs_3_bits; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_read_0_req; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_read_0_resp; // @[Scheduler.scala 340:29]
  wire [5:0] fpBusyTable_io_read_1_req; // @[Scheduler.scala 340:29]
  wire  fpBusyTable_io_read_1_resp; // @[Scheduler.scala 340:29]
  wire  intRfReadData_regfile_clock; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_0_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_0_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_1_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_1_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_2_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_2_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_3_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_3_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_4_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_4_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_5_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_5_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_6_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_6_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_7_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_7_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_8_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_8_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_readPorts_9_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_readPorts_9_data; // @[Regfile.scala 85:25]
  wire  intRfReadData_regfile_io_writePorts_0_wen; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_writePorts_0_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_writePorts_0_data; // @[Regfile.scala 85:25]
  wire  intRfReadData_regfile_io_writePorts_1_wen; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_writePorts_1_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_writePorts_1_data; // @[Regfile.scala 85:25]
  wire  intRfReadData_regfile_io_writePorts_2_wen; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_writePorts_2_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_writePorts_2_data; // @[Regfile.scala 85:25]
  wire  intRfReadData_regfile_io_writePorts_3_wen; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_writePorts_3_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_writePorts_3_data; // @[Regfile.scala 85:25]
  wire  intRfReadData_regfile_io_writePorts_4_wen; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_writePorts_4_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_writePorts_4_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_0_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_0_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_1_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_1_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_2_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_2_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_3_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_3_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_4_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_4_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_5_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_5_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_6_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_6_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_7_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_7_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_8_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_8_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_9_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_9_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_10_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_10_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_11_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_11_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_12_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_12_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_13_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_13_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_14_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_14_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_15_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_15_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_16_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_16_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_17_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_17_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_18_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_18_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_19_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_19_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_20_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_20_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_21_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_21_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_22_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_22_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_23_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_23_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_24_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_24_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_25_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_25_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_26_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_26_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_27_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_27_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_28_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_28_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_29_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_29_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_30_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_30_data; // @[Regfile.scala 85:25]
  wire [5:0] intRfReadData_regfile_io_debug_rports_31_addr; // @[Regfile.scala 85:25]
  wire [63:0] intRfReadData_regfile_io_debug_rports_31_data; // @[Regfile.scala 85:25]
  wire  fpRfReadData_delay_clock; // @[Hold.scala 97:23]
  wire [63:0] fpRfReadData_delay_io_in_0; // @[Hold.scala 97:23]
  wire [63:0] fpRfReadData_delay_io_in_1; // @[Hold.scala 97:23]
  wire [63:0] fpRfReadData_delay_io_out_0; // @[Hold.scala 97:23]
  wire [63:0] fpRfReadData_delay_io_out_1; // @[Hold.scala 97:23]
  wire  arbiterOut_arbiter_io_in_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_valid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pd_isRVC; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_cf_pd_brType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pd_isCall; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pd_isRet; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pred_taken; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_storeSetHit; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_loadWaitStrict; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_io_in_bits_cf_ssid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_ftqPtr_flag; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_in_bits_cf_ftqPtr_value; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_in_bits_cf_ftqOffset; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_in_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_in_bits_ctrl_selImm; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_io_in_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_wflags; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_div; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_typ; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmt; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_ren3; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_rm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_in_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_in_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_in_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_io_in_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_in_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_in_bits_sqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_in_bits_sqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_valid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_io_out_0_bits_cf_ssid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_0_bits_ctrl_selImm; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_0_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_0_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_0_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_io_out_0_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_valid; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_1_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_1_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_1_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_io_out_1_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_valid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_cf_pd_isRVC; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_2_bits_cf_pd_brType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_cf_pd_isCall; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_cf_pd_isRet; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_cf_pred_taken; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_cf_ftqPtr_flag; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_out_2_bits_cf_ftqPtr_value; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_out_2_bits_cf_ftqOffset; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_2_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_2_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_2_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_io_out_2_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_io_out_2_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_wflags; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_div; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typ; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fmt; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_ren3; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_rm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_2_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_2_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_io_out_2_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_io_out_2_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_io_out_2_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_io_out_2_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_valid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pd_isRVC; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_cf_pd_brType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pd_isCall; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pd_isRet; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pred_taken; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_storeSetHit; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_loadWaitStrict; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_1_io_in_bits_cf_ssid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_flag; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_value; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_1_io_in_bits_cf_ftqOffset; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_in_bits_ctrl_selImm; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_1_io_in_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_in_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_in_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_in_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_1_io_in_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_in_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_in_bits_sqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_in_bits_sqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_valid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_0_bits_cf_ssid; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 55:25]
  wire [2:0] arbiterOut_arbiter_1_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_selImm; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_0_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_0_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_0_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_0_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_ready; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_valid; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 55:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 55:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 55:25]
  wire [19:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_srcState_0; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_srcState_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_1_bits_psrc_0; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_1_bits_psrc_1; // @[Scheduler.scala 55:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_1_bits_pdest; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 55:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_1_bits_robIdx_value; // @[Scheduler.scala 55:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 55:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 55:25]
  wire  difftest_io_clock; // @[Scheduler.scala 534:26]
  wire [7:0] difftest_io_coreid; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_0; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_1; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_2; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_3; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_4; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_5; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_6; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_7; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_8; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_9; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_10; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_11; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_12; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_13; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_14; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_15; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_16; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_17; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_18; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_19; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_20; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_21; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_22; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_23; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_24; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_25; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_26; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_27; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_28; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_29; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_30; // @[Scheduler.scala 534:26]
  wire [63:0] difftest_io_gpr_31; // @[Scheduler.scala 534:26]
  reg  redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  reg [5:0] io_extra_fpRfReadIn_0_addr_REG; // @[Scheduler.scala 397:94]
  reg [5:0] io_extra_fpRfReadIn_1_addr_REG; // @[Scheduler.scala 397:94]
  wire  _jumpFire_T = rs_2_io_fromDispatch_0_ready & rs_2_io_fromDispatch_0_valid; // @[Decoupled.scala 50:35]
  wire  _jumpFire_T_1 = rs_2_io_fromDispatch_0_bits_ctrl_fuType == 4'h0; // @[package.scala 80:42]
  wire  jumpFire = |(_jumpFire_T & _jumpFire_T_1); // @[Scheduler.scala 431:94]
  reg [38:0] rs_io_jump_jumpPc_r; // @[Reg.scala 16:16]
  reg  REG__0_valid; // @[Scheduler.scala 458:71]
  reg  REG__0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:71]
  reg  REG__0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:71]
  reg [5:0] REG__0_bits_uop_pdest; // @[Scheduler.scala 458:71]
  reg [63:0] REG__0_bits_data; // @[Scheduler.scala 458:71]
  reg  REG__1_valid; // @[Scheduler.scala 458:71]
  reg  REG__1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:71]
  reg  REG__1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:71]
  reg [5:0] REG__1_bits_uop_pdest; // @[Scheduler.scala 458:71]
  reg [63:0] REG__1_bits_data; // @[Scheduler.scala 458:71]
  reg  REG__2_valid; // @[Scheduler.scala 458:71]
  reg  REG__2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:71]
  reg  REG__2_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:71]
  reg [5:0] REG__2_bits_uop_pdest; // @[Scheduler.scala 458:71]
  reg [63:0] REG__2_bits_data; // @[Scheduler.scala 458:71]
  reg  REG__3_valid; // @[Scheduler.scala 458:71]
  reg  REG__3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:71]
  reg  REG__3_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:71]
  reg [5:0] REG__3_bits_uop_pdest; // @[Scheduler.scala 458:71]
  reg [63:0] REG__3_bits_data; // @[Scheduler.scala 458:71]
  wire  _io_extra_robHeadLsIssue_T = rs_3_io_deq_0_ready & rs_3_io_deq_0_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_extra_robHeadLsIssue_T_1 = {rs_3_io_deq_0_bits_uop_robIdx_flag,rs_3_io_deq_0_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _io_extra_robHeadLsIssue_T_2 = {io_extra_robDeqPtr_flag,io_extra_robDeqPtr_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _io_extra_robHeadLsIssue_T_3 = _io_extra_robHeadLsIssue_T_1 == _io_extra_robHeadLsIssue_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _io_extra_robHeadLsIssue_T_5 = rs_3_io_deq_1_ready & rs_3_io_deq_1_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_extra_robHeadLsIssue_T_6 = {rs_3_io_deq_1_bits_uop_robIdx_flag,rs_3_io_deq_1_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_extra_robHeadLsIssue_T_8 = _io_extra_robHeadLsIssue_T_6 == _io_extra_robHeadLsIssue_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _io_extra_robHeadLsIssue_T_10 = rs_4_io_deq_0_ready & rs_4_io_deq_0_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_extra_robHeadLsIssue_T_11 = {rs_4_io_deq_0_bits_uop_robIdx_flag,rs_4_io_deq_0_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_extra_robHeadLsIssue_T_13 = _io_extra_robHeadLsIssue_T_11 == _io_extra_robHeadLsIssue_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _io_extra_robHeadLsIssue_T_15 = rs_4_io_deq_1_ready & rs_4_io_deq_1_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_extra_robHeadLsIssue_T_16 = {rs_4_io_deq_1_bits_uop_robIdx_flag,rs_4_io_deq_1_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_extra_robHeadLsIssue_T_18 = _io_extra_robHeadLsIssue_T_16 == _io_extra_robHeadLsIssue_T_2; // @[CircularQueuePtr.scala 61:47]
  reg [63:0] REG_1_0; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_1; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_2; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_3; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_4; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_5; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_6; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_7; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_8; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_9; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_10; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_11; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_12; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_13; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_14; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_15; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_16; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_17; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_18; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_19; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_20; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_21; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_22; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_23; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_24; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_25; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_26; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_27; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_28; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_29; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_30; // @[Scheduler.scala 537:39]
  reg [63:0] REG_1_31; // @[Scheduler.scala 537:39]
  reg [63:0] REG_2_0; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_1; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_2; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_3; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_4; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_5; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_6; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_7; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_8; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_9; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_10; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_11; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_12; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_13; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_14; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_15; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_16; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_17; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_18; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_19; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_20; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_21; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_22; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_23; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_24; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_25; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_26; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_27; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_28; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_29; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_30; // @[Scheduler.scala 537:31]
  reg [63:0] REG_2_31; // @[Scheduler.scala 537:31]
  reg  lastCycleAllocate_0; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_1; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_2; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_3; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_4; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_5; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_6; // @[Scheduler.scala 551:34]
  reg  lastCycleAllocate_7; // @[Scheduler.scala 551:34]
  reg  lastCycleIssue_0; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_1; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_2; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_3; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_4; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_5; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_6; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_7; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_8; // @[Scheduler.scala 552:31]
  reg  lastCycleIssue_9; // @[Scheduler.scala 552:31]
  wire [1:0] _T_82 = lastCycleAllocate_0 + lastCycleAllocate_1; // @[Bitwise.scala 48:55]
  wire [1:0] _T_84 = lastCycleAllocate_2 + lastCycleAllocate_3; // @[Bitwise.scala 48:55]
  wire [2:0] _T_86 = _T_82 + _T_84; // @[Bitwise.scala 48:55]
  wire [1:0] _T_88 = lastCycleAllocate_4 + lastCycleAllocate_5; // @[Bitwise.scala 48:55]
  wire [1:0] _T_90 = lastCycleAllocate_6 + lastCycleAllocate_7; // @[Bitwise.scala 48:55]
  wire [2:0] _T_92 = _T_88 + _T_90; // @[Bitwise.scala 48:55]
  wire [1:0] _T_96 = lastCycleIssue_0 + lastCycleIssue_1; // @[Bitwise.scala 48:55]
  wire [1:0] _T_98 = lastCycleIssue_3 + lastCycleIssue_4; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_85 = {{1'd0}, lastCycleIssue_2}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_100 = _GEN_85 + _T_98; // @[Bitwise.scala 48:55]
  wire [2:0] _T_102 = _T_96 + _T_100[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_104 = lastCycleIssue_5 + lastCycleIssue_6; // @[Bitwise.scala 48:55]
  wire [1:0] _T_106 = lastCycleIssue_8 + lastCycleIssue_9; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_86 = {{1'd0}, lastCycleIssue_7}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_108 = _GEN_86 + _T_106; // @[Bitwise.scala 48:55]
  wire [2:0] _T_110 = _T_104 + _T_108[1:0]; // @[Bitwise.scala 48:55]
  reg [3:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
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
  Dispatch2Rs intDispatch ( // @[Scheduler.scala 140:35]
    .io_in_0_ready(intDispatch_io_in_0_ready),
    .io_in_0_valid(intDispatch_io_in_0_valid),
    .io_in_0_bits_cf_trigger_backendEn_0(intDispatch_io_in_0_bits_cf_trigger_backendEn_0),
    .io_in_0_bits_cf_trigger_backendEn_1(intDispatch_io_in_0_bits_cf_trigger_backendEn_1),
    .io_in_0_bits_cf_pd_isRVC(intDispatch_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(intDispatch_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(intDispatch_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(intDispatch_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(intDispatch_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_storeSetHit(intDispatch_io_in_0_bits_cf_storeSetHit),
    .io_in_0_bits_cf_loadWaitStrict(intDispatch_io_in_0_bits_cf_loadWaitStrict),
    .io_in_0_bits_cf_ssid(intDispatch_io_in_0_bits_cf_ssid),
    .io_in_0_bits_cf_ftqPtr_flag(intDispatch_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(intDispatch_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(intDispatch_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(intDispatch_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(intDispatch_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_fuType(intDispatch_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(intDispatch_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(intDispatch_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(intDispatch_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_selImm(intDispatch_io_in_0_bits_ctrl_selImm),
    .io_in_0_bits_ctrl_imm(intDispatch_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(intDispatch_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(intDispatch_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(intDispatch_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(intDispatch_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(intDispatch_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(intDispatch_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(intDispatch_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(intDispatch_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(intDispatch_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(intDispatch_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(intDispatch_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(intDispatch_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(intDispatch_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(intDispatch_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(intDispatch_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(intDispatch_io_in_0_bits_psrc_1),
    .io_in_0_bits_pdest(intDispatch_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(intDispatch_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(intDispatch_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(intDispatch_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(intDispatch_io_in_0_bits_lqIdx_value),
    .io_in_0_bits_sqIdx_flag(intDispatch_io_in_0_bits_sqIdx_flag),
    .io_in_0_bits_sqIdx_value(intDispatch_io_in_0_bits_sqIdx_value),
    .io_in_1_ready(intDispatch_io_in_1_ready),
    .io_in_1_valid(intDispatch_io_in_1_valid),
    .io_in_1_bits_cf_trigger_backendEn_0(intDispatch_io_in_1_bits_cf_trigger_backendEn_0),
    .io_in_1_bits_cf_trigger_backendEn_1(intDispatch_io_in_1_bits_cf_trigger_backendEn_1),
    .io_in_1_bits_cf_pd_isRVC(intDispatch_io_in_1_bits_cf_pd_isRVC),
    .io_in_1_bits_cf_pd_brType(intDispatch_io_in_1_bits_cf_pd_brType),
    .io_in_1_bits_cf_pd_isCall(intDispatch_io_in_1_bits_cf_pd_isCall),
    .io_in_1_bits_cf_pd_isRet(intDispatch_io_in_1_bits_cf_pd_isRet),
    .io_in_1_bits_cf_pred_taken(intDispatch_io_in_1_bits_cf_pred_taken),
    .io_in_1_bits_cf_storeSetHit(intDispatch_io_in_1_bits_cf_storeSetHit),
    .io_in_1_bits_cf_loadWaitStrict(intDispatch_io_in_1_bits_cf_loadWaitStrict),
    .io_in_1_bits_cf_ssid(intDispatch_io_in_1_bits_cf_ssid),
    .io_in_1_bits_cf_ftqPtr_flag(intDispatch_io_in_1_bits_cf_ftqPtr_flag),
    .io_in_1_bits_cf_ftqPtr_value(intDispatch_io_in_1_bits_cf_ftqPtr_value),
    .io_in_1_bits_cf_ftqOffset(intDispatch_io_in_1_bits_cf_ftqOffset),
    .io_in_1_bits_ctrl_srcType_0(intDispatch_io_in_1_bits_ctrl_srcType_0),
    .io_in_1_bits_ctrl_srcType_1(intDispatch_io_in_1_bits_ctrl_srcType_1),
    .io_in_1_bits_ctrl_fuType(intDispatch_io_in_1_bits_ctrl_fuType),
    .io_in_1_bits_ctrl_fuOpType(intDispatch_io_in_1_bits_ctrl_fuOpType),
    .io_in_1_bits_ctrl_rfWen(intDispatch_io_in_1_bits_ctrl_rfWen),
    .io_in_1_bits_ctrl_fpWen(intDispatch_io_in_1_bits_ctrl_fpWen),
    .io_in_1_bits_ctrl_selImm(intDispatch_io_in_1_bits_ctrl_selImm),
    .io_in_1_bits_ctrl_imm(intDispatch_io_in_1_bits_ctrl_imm),
    .io_in_1_bits_psrc_0(intDispatch_io_in_1_bits_psrc_0),
    .io_in_1_bits_psrc_1(intDispatch_io_in_1_bits_psrc_1),
    .io_in_1_bits_pdest(intDispatch_io_in_1_bits_pdest),
    .io_in_1_bits_robIdx_flag(intDispatch_io_in_1_bits_robIdx_flag),
    .io_in_1_bits_robIdx_value(intDispatch_io_in_1_bits_robIdx_value),
    .io_in_1_bits_lqIdx_flag(intDispatch_io_in_1_bits_lqIdx_flag),
    .io_in_1_bits_lqIdx_value(intDispatch_io_in_1_bits_lqIdx_value),
    .io_in_1_bits_sqIdx_flag(intDispatch_io_in_1_bits_sqIdx_flag),
    .io_in_1_bits_sqIdx_value(intDispatch_io_in_1_bits_sqIdx_value),
    .io_readIntState_0_req(intDispatch_io_readIntState_0_req),
    .io_readIntState_0_resp(intDispatch_io_readIntState_0_resp),
    .io_readIntState_1_req(intDispatch_io_readIntState_1_req),
    .io_readIntState_1_resp(intDispatch_io_readIntState_1_resp),
    .io_readIntState_2_req(intDispatch_io_readIntState_2_req),
    .io_readIntState_2_resp(intDispatch_io_readIntState_2_resp),
    .io_readIntState_3_req(intDispatch_io_readIntState_3_req),
    .io_readIntState_3_resp(intDispatch_io_readIntState_3_resp),
    .io_out_0_ready(intDispatch_io_out_0_ready),
    .io_out_0_valid(intDispatch_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(intDispatch_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(intDispatch_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_pd_isRVC(intDispatch_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(intDispatch_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(intDispatch_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(intDispatch_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(intDispatch_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_storeSetHit(intDispatch_io_out_0_bits_cf_storeSetHit),
    .io_out_0_bits_cf_loadWaitStrict(intDispatch_io_out_0_bits_cf_loadWaitStrict),
    .io_out_0_bits_cf_ssid(intDispatch_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(intDispatch_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(intDispatch_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(intDispatch_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(intDispatch_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_srcType_1(intDispatch_io_out_0_bits_ctrl_srcType_1),
    .io_out_0_bits_ctrl_fuType(intDispatch_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(intDispatch_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(intDispatch_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(intDispatch_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_selImm(intDispatch_io_out_0_bits_ctrl_selImm),
    .io_out_0_bits_ctrl_imm(intDispatch_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_ctrl_fpu_isAddSub(intDispatch_io_out_0_bits_ctrl_fpu_isAddSub),
    .io_out_0_bits_ctrl_fpu_typeTagIn(intDispatch_io_out_0_bits_ctrl_fpu_typeTagIn),
    .io_out_0_bits_ctrl_fpu_typeTagOut(intDispatch_io_out_0_bits_ctrl_fpu_typeTagOut),
    .io_out_0_bits_ctrl_fpu_fromInt(intDispatch_io_out_0_bits_ctrl_fpu_fromInt),
    .io_out_0_bits_ctrl_fpu_wflags(intDispatch_io_out_0_bits_ctrl_fpu_wflags),
    .io_out_0_bits_ctrl_fpu_fpWen(intDispatch_io_out_0_bits_ctrl_fpu_fpWen),
    .io_out_0_bits_ctrl_fpu_fmaCmd(intDispatch_io_out_0_bits_ctrl_fpu_fmaCmd),
    .io_out_0_bits_ctrl_fpu_div(intDispatch_io_out_0_bits_ctrl_fpu_div),
    .io_out_0_bits_ctrl_fpu_sqrt(intDispatch_io_out_0_bits_ctrl_fpu_sqrt),
    .io_out_0_bits_ctrl_fpu_fcvt(intDispatch_io_out_0_bits_ctrl_fpu_fcvt),
    .io_out_0_bits_ctrl_fpu_typ(intDispatch_io_out_0_bits_ctrl_fpu_typ),
    .io_out_0_bits_ctrl_fpu_fmt(intDispatch_io_out_0_bits_ctrl_fpu_fmt),
    .io_out_0_bits_ctrl_fpu_ren3(intDispatch_io_out_0_bits_ctrl_fpu_ren3),
    .io_out_0_bits_ctrl_fpu_rm(intDispatch_io_out_0_bits_ctrl_fpu_rm),
    .io_out_0_bits_srcState_0(intDispatch_io_out_0_bits_srcState_0),
    .io_out_0_bits_srcState_1(intDispatch_io_out_0_bits_srcState_1),
    .io_out_0_bits_psrc_0(intDispatch_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(intDispatch_io_out_0_bits_psrc_1),
    .io_out_0_bits_pdest(intDispatch_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(intDispatch_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(intDispatch_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(intDispatch_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(intDispatch_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(intDispatch_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(intDispatch_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(intDispatch_io_out_1_ready),
    .io_out_1_valid(intDispatch_io_out_1_valid),
    .io_out_1_bits_cf_trigger_backendEn_0(intDispatch_io_out_1_bits_cf_trigger_backendEn_0),
    .io_out_1_bits_cf_trigger_backendEn_1(intDispatch_io_out_1_bits_cf_trigger_backendEn_1),
    .io_out_1_bits_cf_pd_isRVC(intDispatch_io_out_1_bits_cf_pd_isRVC),
    .io_out_1_bits_cf_pd_brType(intDispatch_io_out_1_bits_cf_pd_brType),
    .io_out_1_bits_cf_pd_isCall(intDispatch_io_out_1_bits_cf_pd_isCall),
    .io_out_1_bits_cf_pd_isRet(intDispatch_io_out_1_bits_cf_pd_isRet),
    .io_out_1_bits_cf_pred_taken(intDispatch_io_out_1_bits_cf_pred_taken),
    .io_out_1_bits_cf_storeSetHit(intDispatch_io_out_1_bits_cf_storeSetHit),
    .io_out_1_bits_cf_loadWaitStrict(intDispatch_io_out_1_bits_cf_loadWaitStrict),
    .io_out_1_bits_cf_ssid(intDispatch_io_out_1_bits_cf_ssid),
    .io_out_1_bits_cf_ftqPtr_flag(intDispatch_io_out_1_bits_cf_ftqPtr_flag),
    .io_out_1_bits_cf_ftqPtr_value(intDispatch_io_out_1_bits_cf_ftqPtr_value),
    .io_out_1_bits_cf_ftqOffset(intDispatch_io_out_1_bits_cf_ftqOffset),
    .io_out_1_bits_ctrl_srcType_0(intDispatch_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_srcType_1(intDispatch_io_out_1_bits_ctrl_srcType_1),
    .io_out_1_bits_ctrl_fuType(intDispatch_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(intDispatch_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(intDispatch_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(intDispatch_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_selImm(intDispatch_io_out_1_bits_ctrl_selImm),
    .io_out_1_bits_ctrl_imm(intDispatch_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_srcState_0(intDispatch_io_out_1_bits_srcState_0),
    .io_out_1_bits_srcState_1(intDispatch_io_out_1_bits_srcState_1),
    .io_out_1_bits_psrc_0(intDispatch_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(intDispatch_io_out_1_bits_psrc_1),
    .io_out_1_bits_pdest(intDispatch_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(intDispatch_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(intDispatch_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(intDispatch_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(intDispatch_io_out_1_bits_lqIdx_value),
    .io_out_1_bits_sqIdx_flag(intDispatch_io_out_1_bits_sqIdx_flag),
    .io_out_1_bits_sqIdx_value(intDispatch_io_out_1_bits_sqIdx_value)
  );
  Dispatch2Rs_1 lsDispatch ( // @[Scheduler.scala 141:34]
    .clock(lsDispatch_clock),
    .reset(lsDispatch_reset),
    .io_redirect_valid(lsDispatch_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(lsDispatch_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(lsDispatch_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(lsDispatch_io_redirect_bits_level),
    .io_in_0_ready(lsDispatch_io_in_0_ready),
    .io_in_0_valid(lsDispatch_io_in_0_valid),
    .io_in_0_bits_cf_trigger_backendEn_0(lsDispatch_io_in_0_bits_cf_trigger_backendEn_0),
    .io_in_0_bits_cf_trigger_backendEn_1(lsDispatch_io_in_0_bits_cf_trigger_backendEn_1),
    .io_in_0_bits_cf_pd_isRVC(lsDispatch_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(lsDispatch_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(lsDispatch_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(lsDispatch_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(lsDispatch_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_storeSetHit(lsDispatch_io_in_0_bits_cf_storeSetHit),
    .io_in_0_bits_cf_loadWaitStrict(lsDispatch_io_in_0_bits_cf_loadWaitStrict),
    .io_in_0_bits_cf_ssid(lsDispatch_io_in_0_bits_cf_ssid),
    .io_in_0_bits_cf_ftqPtr_flag(lsDispatch_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(lsDispatch_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(lsDispatch_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(lsDispatch_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(lsDispatch_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_fuType(lsDispatch_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(lsDispatch_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(lsDispatch_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(lsDispatch_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_imm(lsDispatch_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_psrc_0(lsDispatch_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(lsDispatch_io_in_0_bits_psrc_1),
    .io_in_0_bits_pdest(lsDispatch_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(lsDispatch_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(lsDispatch_io_in_0_bits_robIdx_value),
    .io_in_1_ready(lsDispatch_io_in_1_ready),
    .io_in_1_valid(lsDispatch_io_in_1_valid),
    .io_in_1_bits_cf_trigger_backendEn_0(lsDispatch_io_in_1_bits_cf_trigger_backendEn_0),
    .io_in_1_bits_cf_trigger_backendEn_1(lsDispatch_io_in_1_bits_cf_trigger_backendEn_1),
    .io_in_1_bits_cf_pd_isRVC(lsDispatch_io_in_1_bits_cf_pd_isRVC),
    .io_in_1_bits_cf_pd_brType(lsDispatch_io_in_1_bits_cf_pd_brType),
    .io_in_1_bits_cf_pd_isCall(lsDispatch_io_in_1_bits_cf_pd_isCall),
    .io_in_1_bits_cf_pd_isRet(lsDispatch_io_in_1_bits_cf_pd_isRet),
    .io_in_1_bits_cf_pred_taken(lsDispatch_io_in_1_bits_cf_pred_taken),
    .io_in_1_bits_cf_storeSetHit(lsDispatch_io_in_1_bits_cf_storeSetHit),
    .io_in_1_bits_cf_loadWaitStrict(lsDispatch_io_in_1_bits_cf_loadWaitStrict),
    .io_in_1_bits_cf_ssid(lsDispatch_io_in_1_bits_cf_ssid),
    .io_in_1_bits_cf_ftqPtr_flag(lsDispatch_io_in_1_bits_cf_ftqPtr_flag),
    .io_in_1_bits_cf_ftqPtr_value(lsDispatch_io_in_1_bits_cf_ftqPtr_value),
    .io_in_1_bits_cf_ftqOffset(lsDispatch_io_in_1_bits_cf_ftqOffset),
    .io_in_1_bits_ctrl_srcType_0(lsDispatch_io_in_1_bits_ctrl_srcType_0),
    .io_in_1_bits_ctrl_srcType_1(lsDispatch_io_in_1_bits_ctrl_srcType_1),
    .io_in_1_bits_ctrl_fuType(lsDispatch_io_in_1_bits_ctrl_fuType),
    .io_in_1_bits_ctrl_fuOpType(lsDispatch_io_in_1_bits_ctrl_fuOpType),
    .io_in_1_bits_ctrl_rfWen(lsDispatch_io_in_1_bits_ctrl_rfWen),
    .io_in_1_bits_ctrl_fpWen(lsDispatch_io_in_1_bits_ctrl_fpWen),
    .io_in_1_bits_ctrl_imm(lsDispatch_io_in_1_bits_ctrl_imm),
    .io_in_1_bits_psrc_0(lsDispatch_io_in_1_bits_psrc_0),
    .io_in_1_bits_psrc_1(lsDispatch_io_in_1_bits_psrc_1),
    .io_in_1_bits_pdest(lsDispatch_io_in_1_bits_pdest),
    .io_in_1_bits_robIdx_flag(lsDispatch_io_in_1_bits_robIdx_flag),
    .io_in_1_bits_robIdx_value(lsDispatch_io_in_1_bits_robIdx_value),
    .io_in_2_ready(lsDispatch_io_in_2_ready),
    .io_in_2_valid(lsDispatch_io_in_2_valid),
    .io_in_2_bits_cf_trigger_backendEn_0(lsDispatch_io_in_2_bits_cf_trigger_backendEn_0),
    .io_in_2_bits_cf_trigger_backendEn_1(lsDispatch_io_in_2_bits_cf_trigger_backendEn_1),
    .io_in_2_bits_cf_pd_isRVC(lsDispatch_io_in_2_bits_cf_pd_isRVC),
    .io_in_2_bits_cf_pd_brType(lsDispatch_io_in_2_bits_cf_pd_brType),
    .io_in_2_bits_cf_pd_isCall(lsDispatch_io_in_2_bits_cf_pd_isCall),
    .io_in_2_bits_cf_pd_isRet(lsDispatch_io_in_2_bits_cf_pd_isRet),
    .io_in_2_bits_cf_pred_taken(lsDispatch_io_in_2_bits_cf_pred_taken),
    .io_in_2_bits_cf_storeSetHit(lsDispatch_io_in_2_bits_cf_storeSetHit),
    .io_in_2_bits_cf_loadWaitStrict(lsDispatch_io_in_2_bits_cf_loadWaitStrict),
    .io_in_2_bits_cf_ssid(lsDispatch_io_in_2_bits_cf_ssid),
    .io_in_2_bits_cf_ftqPtr_flag(lsDispatch_io_in_2_bits_cf_ftqPtr_flag),
    .io_in_2_bits_cf_ftqPtr_value(lsDispatch_io_in_2_bits_cf_ftqPtr_value),
    .io_in_2_bits_cf_ftqOffset(lsDispatch_io_in_2_bits_cf_ftqOffset),
    .io_in_2_bits_ctrl_srcType_0(lsDispatch_io_in_2_bits_ctrl_srcType_0),
    .io_in_2_bits_ctrl_srcType_1(lsDispatch_io_in_2_bits_ctrl_srcType_1),
    .io_in_2_bits_ctrl_fuType(lsDispatch_io_in_2_bits_ctrl_fuType),
    .io_in_2_bits_ctrl_fuOpType(lsDispatch_io_in_2_bits_ctrl_fuOpType),
    .io_in_2_bits_ctrl_rfWen(lsDispatch_io_in_2_bits_ctrl_rfWen),
    .io_in_2_bits_ctrl_fpWen(lsDispatch_io_in_2_bits_ctrl_fpWen),
    .io_in_2_bits_ctrl_imm(lsDispatch_io_in_2_bits_ctrl_imm),
    .io_in_2_bits_psrc_0(lsDispatch_io_in_2_bits_psrc_0),
    .io_in_2_bits_psrc_1(lsDispatch_io_in_2_bits_psrc_1),
    .io_in_2_bits_pdest(lsDispatch_io_in_2_bits_pdest),
    .io_in_2_bits_robIdx_flag(lsDispatch_io_in_2_bits_robIdx_flag),
    .io_in_2_bits_robIdx_value(lsDispatch_io_in_2_bits_robIdx_value),
    .io_in_3_ready(lsDispatch_io_in_3_ready),
    .io_in_3_valid(lsDispatch_io_in_3_valid),
    .io_in_3_bits_cf_trigger_backendEn_0(lsDispatch_io_in_3_bits_cf_trigger_backendEn_0),
    .io_in_3_bits_cf_trigger_backendEn_1(lsDispatch_io_in_3_bits_cf_trigger_backendEn_1),
    .io_in_3_bits_cf_pd_isRVC(lsDispatch_io_in_3_bits_cf_pd_isRVC),
    .io_in_3_bits_cf_pd_brType(lsDispatch_io_in_3_bits_cf_pd_brType),
    .io_in_3_bits_cf_pd_isCall(lsDispatch_io_in_3_bits_cf_pd_isCall),
    .io_in_3_bits_cf_pd_isRet(lsDispatch_io_in_3_bits_cf_pd_isRet),
    .io_in_3_bits_cf_pred_taken(lsDispatch_io_in_3_bits_cf_pred_taken),
    .io_in_3_bits_cf_storeSetHit(lsDispatch_io_in_3_bits_cf_storeSetHit),
    .io_in_3_bits_cf_loadWaitStrict(lsDispatch_io_in_3_bits_cf_loadWaitStrict),
    .io_in_3_bits_cf_ssid(lsDispatch_io_in_3_bits_cf_ssid),
    .io_in_3_bits_cf_ftqPtr_flag(lsDispatch_io_in_3_bits_cf_ftqPtr_flag),
    .io_in_3_bits_cf_ftqPtr_value(lsDispatch_io_in_3_bits_cf_ftqPtr_value),
    .io_in_3_bits_cf_ftqOffset(lsDispatch_io_in_3_bits_cf_ftqOffset),
    .io_in_3_bits_ctrl_srcType_0(lsDispatch_io_in_3_bits_ctrl_srcType_0),
    .io_in_3_bits_ctrl_srcType_1(lsDispatch_io_in_3_bits_ctrl_srcType_1),
    .io_in_3_bits_ctrl_fuType(lsDispatch_io_in_3_bits_ctrl_fuType),
    .io_in_3_bits_ctrl_fuOpType(lsDispatch_io_in_3_bits_ctrl_fuOpType),
    .io_in_3_bits_ctrl_rfWen(lsDispatch_io_in_3_bits_ctrl_rfWen),
    .io_in_3_bits_ctrl_fpWen(lsDispatch_io_in_3_bits_ctrl_fpWen),
    .io_in_3_bits_ctrl_imm(lsDispatch_io_in_3_bits_ctrl_imm),
    .io_in_3_bits_psrc_0(lsDispatch_io_in_3_bits_psrc_0),
    .io_in_3_bits_psrc_1(lsDispatch_io_in_3_bits_psrc_1),
    .io_in_3_bits_pdest(lsDispatch_io_in_3_bits_pdest),
    .io_in_3_bits_robIdx_flag(lsDispatch_io_in_3_bits_robIdx_flag),
    .io_in_3_bits_robIdx_value(lsDispatch_io_in_3_bits_robIdx_value),
    .io_readIntState_0_req(lsDispatch_io_readIntState_0_req),
    .io_readIntState_0_resp(lsDispatch_io_readIntState_0_resp),
    .io_readIntState_1_req(lsDispatch_io_readIntState_1_req),
    .io_readIntState_1_resp(lsDispatch_io_readIntState_1_resp),
    .io_readIntState_2_req(lsDispatch_io_readIntState_2_req),
    .io_readIntState_2_resp(lsDispatch_io_readIntState_2_resp),
    .io_readIntState_3_req(lsDispatch_io_readIntState_3_req),
    .io_readIntState_3_resp(lsDispatch_io_readIntState_3_resp),
    .io_readIntState_4_req(lsDispatch_io_readIntState_4_req),
    .io_readIntState_4_resp(lsDispatch_io_readIntState_4_resp),
    .io_readIntState_5_req(lsDispatch_io_readIntState_5_req),
    .io_readIntState_5_resp(lsDispatch_io_readIntState_5_resp),
    .io_readFpState_0_req(lsDispatch_io_readFpState_0_req),
    .io_readFpState_0_resp(lsDispatch_io_readFpState_0_resp),
    .io_readFpState_1_req(lsDispatch_io_readFpState_1_req),
    .io_readFpState_1_resp(lsDispatch_io_readFpState_1_resp),
    .io_out_0_ready(lsDispatch_io_out_0_ready),
    .io_out_0_valid(lsDispatch_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(lsDispatch_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(lsDispatch_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_pd_isRVC(lsDispatch_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(lsDispatch_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(lsDispatch_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(lsDispatch_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(lsDispatch_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_storeSetHit(lsDispatch_io_out_0_bits_cf_storeSetHit),
    .io_out_0_bits_cf_loadWaitStrict(lsDispatch_io_out_0_bits_cf_loadWaitStrict),
    .io_out_0_bits_cf_ssid(lsDispatch_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(lsDispatch_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(lsDispatch_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(lsDispatch_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(lsDispatch_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_fuType(lsDispatch_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(lsDispatch_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(lsDispatch_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(lsDispatch_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_imm(lsDispatch_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_srcState_0(lsDispatch_io_out_0_bits_srcState_0),
    .io_out_0_bits_psrc_0(lsDispatch_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(lsDispatch_io_out_0_bits_psrc_1),
    .io_out_0_bits_pdest(lsDispatch_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(lsDispatch_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(lsDispatch_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(lsDispatch_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(lsDispatch_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(lsDispatch_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(lsDispatch_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(lsDispatch_io_out_1_ready),
    .io_out_1_valid(lsDispatch_io_out_1_valid),
    .io_out_1_bits_cf_trigger_backendEn_0(lsDispatch_io_out_1_bits_cf_trigger_backendEn_0),
    .io_out_1_bits_cf_trigger_backendEn_1(lsDispatch_io_out_1_bits_cf_trigger_backendEn_1),
    .io_out_1_bits_cf_pd_isRVC(lsDispatch_io_out_1_bits_cf_pd_isRVC),
    .io_out_1_bits_cf_pd_brType(lsDispatch_io_out_1_bits_cf_pd_brType),
    .io_out_1_bits_cf_pd_isCall(lsDispatch_io_out_1_bits_cf_pd_isCall),
    .io_out_1_bits_cf_pd_isRet(lsDispatch_io_out_1_bits_cf_pd_isRet),
    .io_out_1_bits_cf_pred_taken(lsDispatch_io_out_1_bits_cf_pred_taken),
    .io_out_1_bits_cf_storeSetHit(lsDispatch_io_out_1_bits_cf_storeSetHit),
    .io_out_1_bits_cf_loadWaitStrict(lsDispatch_io_out_1_bits_cf_loadWaitStrict),
    .io_out_1_bits_cf_ssid(lsDispatch_io_out_1_bits_cf_ssid),
    .io_out_1_bits_cf_ftqPtr_flag(lsDispatch_io_out_1_bits_cf_ftqPtr_flag),
    .io_out_1_bits_cf_ftqPtr_value(lsDispatch_io_out_1_bits_cf_ftqPtr_value),
    .io_out_1_bits_cf_ftqOffset(lsDispatch_io_out_1_bits_cf_ftqOffset),
    .io_out_1_bits_ctrl_srcType_0(lsDispatch_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_fuType(lsDispatch_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(lsDispatch_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(lsDispatch_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(lsDispatch_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_imm(lsDispatch_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_srcState_0(lsDispatch_io_out_1_bits_srcState_0),
    .io_out_1_bits_psrc_0(lsDispatch_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(lsDispatch_io_out_1_bits_psrc_1),
    .io_out_1_bits_pdest(lsDispatch_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(lsDispatch_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(lsDispatch_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(lsDispatch_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(lsDispatch_io_out_1_bits_lqIdx_value),
    .io_out_1_bits_sqIdx_flag(lsDispatch_io_out_1_bits_sqIdx_flag),
    .io_out_1_bits_sqIdx_value(lsDispatch_io_out_1_bits_sqIdx_value),
    .io_out_2_ready(lsDispatch_io_out_2_ready),
    .io_out_2_valid(lsDispatch_io_out_2_valid),
    .io_out_2_bits_cf_trigger_backendEn_0(lsDispatch_io_out_2_bits_cf_trigger_backendEn_0),
    .io_out_2_bits_cf_trigger_backendEn_1(lsDispatch_io_out_2_bits_cf_trigger_backendEn_1),
    .io_out_2_bits_cf_pd_isRVC(lsDispatch_io_out_2_bits_cf_pd_isRVC),
    .io_out_2_bits_cf_pd_brType(lsDispatch_io_out_2_bits_cf_pd_brType),
    .io_out_2_bits_cf_pd_isCall(lsDispatch_io_out_2_bits_cf_pd_isCall),
    .io_out_2_bits_cf_pd_isRet(lsDispatch_io_out_2_bits_cf_pd_isRet),
    .io_out_2_bits_cf_pred_taken(lsDispatch_io_out_2_bits_cf_pred_taken),
    .io_out_2_bits_cf_storeSetHit(lsDispatch_io_out_2_bits_cf_storeSetHit),
    .io_out_2_bits_cf_loadWaitStrict(lsDispatch_io_out_2_bits_cf_loadWaitStrict),
    .io_out_2_bits_cf_ssid(lsDispatch_io_out_2_bits_cf_ssid),
    .io_out_2_bits_cf_ftqPtr_flag(lsDispatch_io_out_2_bits_cf_ftqPtr_flag),
    .io_out_2_bits_cf_ftqPtr_value(lsDispatch_io_out_2_bits_cf_ftqPtr_value),
    .io_out_2_bits_cf_ftqOffset(lsDispatch_io_out_2_bits_cf_ftqOffset),
    .io_out_2_bits_ctrl_srcType_0(lsDispatch_io_out_2_bits_ctrl_srcType_0),
    .io_out_2_bits_ctrl_fuType(lsDispatch_io_out_2_bits_ctrl_fuType),
    .io_out_2_bits_ctrl_fuOpType(lsDispatch_io_out_2_bits_ctrl_fuOpType),
    .io_out_2_bits_ctrl_rfWen(lsDispatch_io_out_2_bits_ctrl_rfWen),
    .io_out_2_bits_ctrl_fpWen(lsDispatch_io_out_2_bits_ctrl_fpWen),
    .io_out_2_bits_ctrl_imm(lsDispatch_io_out_2_bits_ctrl_imm),
    .io_out_2_bits_srcState_0(lsDispatch_io_out_2_bits_srcState_0),
    .io_out_2_bits_psrc_0(lsDispatch_io_out_2_bits_psrc_0),
    .io_out_2_bits_pdest(lsDispatch_io_out_2_bits_pdest),
    .io_out_2_bits_robIdx_flag(lsDispatch_io_out_2_bits_robIdx_flag),
    .io_out_2_bits_robIdx_value(lsDispatch_io_out_2_bits_robIdx_value),
    .io_out_2_bits_lqIdx_flag(lsDispatch_io_out_2_bits_lqIdx_flag),
    .io_out_2_bits_lqIdx_value(lsDispatch_io_out_2_bits_lqIdx_value),
    .io_out_2_bits_sqIdx_flag(lsDispatch_io_out_2_bits_sqIdx_flag),
    .io_out_2_bits_sqIdx_value(lsDispatch_io_out_2_bits_sqIdx_value),
    .io_out_3_ready(lsDispatch_io_out_3_ready),
    .io_out_3_valid(lsDispatch_io_out_3_valid),
    .io_out_3_bits_cf_trigger_backendEn_0(lsDispatch_io_out_3_bits_cf_trigger_backendEn_0),
    .io_out_3_bits_cf_trigger_backendEn_1(lsDispatch_io_out_3_bits_cf_trigger_backendEn_1),
    .io_out_3_bits_cf_pd_isRVC(lsDispatch_io_out_3_bits_cf_pd_isRVC),
    .io_out_3_bits_cf_pd_brType(lsDispatch_io_out_3_bits_cf_pd_brType),
    .io_out_3_bits_cf_pd_isCall(lsDispatch_io_out_3_bits_cf_pd_isCall),
    .io_out_3_bits_cf_pd_isRet(lsDispatch_io_out_3_bits_cf_pd_isRet),
    .io_out_3_bits_cf_pred_taken(lsDispatch_io_out_3_bits_cf_pred_taken),
    .io_out_3_bits_cf_storeSetHit(lsDispatch_io_out_3_bits_cf_storeSetHit),
    .io_out_3_bits_cf_loadWaitStrict(lsDispatch_io_out_3_bits_cf_loadWaitStrict),
    .io_out_3_bits_cf_ssid(lsDispatch_io_out_3_bits_cf_ssid),
    .io_out_3_bits_cf_ftqPtr_flag(lsDispatch_io_out_3_bits_cf_ftqPtr_flag),
    .io_out_3_bits_cf_ftqPtr_value(lsDispatch_io_out_3_bits_cf_ftqPtr_value),
    .io_out_3_bits_cf_ftqOffset(lsDispatch_io_out_3_bits_cf_ftqOffset),
    .io_out_3_bits_ctrl_srcType_0(lsDispatch_io_out_3_bits_ctrl_srcType_0),
    .io_out_3_bits_ctrl_fuType(lsDispatch_io_out_3_bits_ctrl_fuType),
    .io_out_3_bits_ctrl_fuOpType(lsDispatch_io_out_3_bits_ctrl_fuOpType),
    .io_out_3_bits_ctrl_rfWen(lsDispatch_io_out_3_bits_ctrl_rfWen),
    .io_out_3_bits_ctrl_fpWen(lsDispatch_io_out_3_bits_ctrl_fpWen),
    .io_out_3_bits_ctrl_imm(lsDispatch_io_out_3_bits_ctrl_imm),
    .io_out_3_bits_srcState_0(lsDispatch_io_out_3_bits_srcState_0),
    .io_out_3_bits_psrc_0(lsDispatch_io_out_3_bits_psrc_0),
    .io_out_3_bits_pdest(lsDispatch_io_out_3_bits_pdest),
    .io_out_3_bits_robIdx_flag(lsDispatch_io_out_3_bits_robIdx_flag),
    .io_out_3_bits_robIdx_value(lsDispatch_io_out_3_bits_robIdx_value),
    .io_out_3_bits_lqIdx_flag(lsDispatch_io_out_3_bits_lqIdx_flag),
    .io_out_3_bits_lqIdx_value(lsDispatch_io_out_3_bits_lqIdx_value),
    .io_out_3_bits_sqIdx_flag(lsDispatch_io_out_3_bits_sqIdx_flag),
    .io_out_3_bits_sqIdx_value(lsDispatch_io_out_3_bits_sqIdx_value),
    .io_out_4_ready(lsDispatch_io_out_4_ready),
    .io_out_4_valid(lsDispatch_io_out_4_valid),
    .io_out_4_bits_cf_trigger_backendEn_0(lsDispatch_io_out_4_bits_cf_trigger_backendEn_0),
    .io_out_4_bits_cf_trigger_backendEn_1(lsDispatch_io_out_4_bits_cf_trigger_backendEn_1),
    .io_out_4_bits_cf_pd_isRVC(lsDispatch_io_out_4_bits_cf_pd_isRVC),
    .io_out_4_bits_cf_pd_brType(lsDispatch_io_out_4_bits_cf_pd_brType),
    .io_out_4_bits_cf_pd_isCall(lsDispatch_io_out_4_bits_cf_pd_isCall),
    .io_out_4_bits_cf_pd_isRet(lsDispatch_io_out_4_bits_cf_pd_isRet),
    .io_out_4_bits_cf_pred_taken(lsDispatch_io_out_4_bits_cf_pred_taken),
    .io_out_4_bits_cf_storeSetHit(lsDispatch_io_out_4_bits_cf_storeSetHit),
    .io_out_4_bits_cf_loadWaitStrict(lsDispatch_io_out_4_bits_cf_loadWaitStrict),
    .io_out_4_bits_cf_ssid(lsDispatch_io_out_4_bits_cf_ssid),
    .io_out_4_bits_cf_ftqPtr_flag(lsDispatch_io_out_4_bits_cf_ftqPtr_flag),
    .io_out_4_bits_cf_ftqPtr_value(lsDispatch_io_out_4_bits_cf_ftqPtr_value),
    .io_out_4_bits_cf_ftqOffset(lsDispatch_io_out_4_bits_cf_ftqOffset),
    .io_out_4_bits_ctrl_srcType_0(lsDispatch_io_out_4_bits_ctrl_srcType_0),
    .io_out_4_bits_ctrl_fuType(lsDispatch_io_out_4_bits_ctrl_fuType),
    .io_out_4_bits_ctrl_fuOpType(lsDispatch_io_out_4_bits_ctrl_fuOpType),
    .io_out_4_bits_ctrl_rfWen(lsDispatch_io_out_4_bits_ctrl_rfWen),
    .io_out_4_bits_ctrl_fpWen(lsDispatch_io_out_4_bits_ctrl_fpWen),
    .io_out_4_bits_ctrl_imm(lsDispatch_io_out_4_bits_ctrl_imm),
    .io_out_4_bits_srcState_0(lsDispatch_io_out_4_bits_srcState_0),
    .io_out_4_bits_psrc_0(lsDispatch_io_out_4_bits_psrc_0),
    .io_out_4_bits_pdest(lsDispatch_io_out_4_bits_pdest),
    .io_out_4_bits_robIdx_flag(lsDispatch_io_out_4_bits_robIdx_flag),
    .io_out_4_bits_robIdx_value(lsDispatch_io_out_4_bits_robIdx_value),
    .io_out_4_bits_lqIdx_flag(lsDispatch_io_out_4_bits_lqIdx_flag),
    .io_out_4_bits_lqIdx_value(lsDispatch_io_out_4_bits_lqIdx_value),
    .io_out_4_bits_sqIdx_flag(lsDispatch_io_out_4_bits_sqIdx_flag),
    .io_out_4_bits_sqIdx_value(lsDispatch_io_out_4_bits_sqIdx_value),
    .io_out_5_ready(lsDispatch_io_out_5_ready),
    .io_out_5_valid(lsDispatch_io_out_5_valid),
    .io_out_5_bits_cf_trigger_backendEn_0(lsDispatch_io_out_5_bits_cf_trigger_backendEn_0),
    .io_out_5_bits_cf_trigger_backendEn_1(lsDispatch_io_out_5_bits_cf_trigger_backendEn_1),
    .io_out_5_bits_cf_pd_isRVC(lsDispatch_io_out_5_bits_cf_pd_isRVC),
    .io_out_5_bits_cf_pd_brType(lsDispatch_io_out_5_bits_cf_pd_brType),
    .io_out_5_bits_cf_pd_isCall(lsDispatch_io_out_5_bits_cf_pd_isCall),
    .io_out_5_bits_cf_pd_isRet(lsDispatch_io_out_5_bits_cf_pd_isRet),
    .io_out_5_bits_cf_pred_taken(lsDispatch_io_out_5_bits_cf_pred_taken),
    .io_out_5_bits_cf_storeSetHit(lsDispatch_io_out_5_bits_cf_storeSetHit),
    .io_out_5_bits_cf_loadWaitStrict(lsDispatch_io_out_5_bits_cf_loadWaitStrict),
    .io_out_5_bits_cf_ssid(lsDispatch_io_out_5_bits_cf_ssid),
    .io_out_5_bits_cf_ftqPtr_flag(lsDispatch_io_out_5_bits_cf_ftqPtr_flag),
    .io_out_5_bits_cf_ftqPtr_value(lsDispatch_io_out_5_bits_cf_ftqPtr_value),
    .io_out_5_bits_cf_ftqOffset(lsDispatch_io_out_5_bits_cf_ftqOffset),
    .io_out_5_bits_ctrl_srcType_0(lsDispatch_io_out_5_bits_ctrl_srcType_0),
    .io_out_5_bits_ctrl_fuType(lsDispatch_io_out_5_bits_ctrl_fuType),
    .io_out_5_bits_ctrl_fuOpType(lsDispatch_io_out_5_bits_ctrl_fuOpType),
    .io_out_5_bits_ctrl_rfWen(lsDispatch_io_out_5_bits_ctrl_rfWen),
    .io_out_5_bits_ctrl_fpWen(lsDispatch_io_out_5_bits_ctrl_fpWen),
    .io_out_5_bits_ctrl_imm(lsDispatch_io_out_5_bits_ctrl_imm),
    .io_out_5_bits_srcState_0(lsDispatch_io_out_5_bits_srcState_0),
    .io_out_5_bits_psrc_0(lsDispatch_io_out_5_bits_psrc_0),
    .io_out_5_bits_pdest(lsDispatch_io_out_5_bits_pdest),
    .io_out_5_bits_robIdx_flag(lsDispatch_io_out_5_bits_robIdx_flag),
    .io_out_5_bits_robIdx_value(lsDispatch_io_out_5_bits_robIdx_value),
    .io_out_5_bits_lqIdx_flag(lsDispatch_io_out_5_bits_lqIdx_flag),
    .io_out_5_bits_lqIdx_value(lsDispatch_io_out_5_bits_lqIdx_value),
    .io_out_5_bits_sqIdx_flag(lsDispatch_io_out_5_bits_sqIdx_flag),
    .io_out_5_bits_sqIdx_value(lsDispatch_io_out_5_bits_sqIdx_value),
    .io_enqLsq_canAccept(lsDispatch_io_enqLsq_canAccept),
    .io_enqLsq_needAlloc_0(lsDispatch_io_enqLsq_needAlloc_0),
    .io_enqLsq_needAlloc_1(lsDispatch_io_enqLsq_needAlloc_1),
    .io_enqLsq_needAlloc_2(lsDispatch_io_enqLsq_needAlloc_2),
    .io_enqLsq_needAlloc_3(lsDispatch_io_enqLsq_needAlloc_3),
    .io_enqLsq_req_0_valid(lsDispatch_io_enqLsq_req_0_valid),
    .io_enqLsq_req_0_bits_cf_trigger_backendEn_0(lsDispatch_io_enqLsq_req_0_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_0_bits_cf_storeSetHit(lsDispatch_io_enqLsq_req_0_bits_cf_storeSetHit),
    .io_enqLsq_req_0_bits_cf_ssid(lsDispatch_io_enqLsq_req_0_bits_cf_ssid),
    .io_enqLsq_req_0_bits_ctrl_fuOpType(lsDispatch_io_enqLsq_req_0_bits_ctrl_fuOpType),
    .io_enqLsq_req_0_bits_robIdx_flag(lsDispatch_io_enqLsq_req_0_bits_robIdx_flag),
    .io_enqLsq_req_0_bits_robIdx_value(lsDispatch_io_enqLsq_req_0_bits_robIdx_value),
    .io_enqLsq_req_1_valid(lsDispatch_io_enqLsq_req_1_valid),
    .io_enqLsq_req_1_bits_cf_trigger_backendEn_0(lsDispatch_io_enqLsq_req_1_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_1_bits_cf_storeSetHit(lsDispatch_io_enqLsq_req_1_bits_cf_storeSetHit),
    .io_enqLsq_req_1_bits_cf_ssid(lsDispatch_io_enqLsq_req_1_bits_cf_ssid),
    .io_enqLsq_req_1_bits_ctrl_fuOpType(lsDispatch_io_enqLsq_req_1_bits_ctrl_fuOpType),
    .io_enqLsq_req_1_bits_robIdx_flag(lsDispatch_io_enqLsq_req_1_bits_robIdx_flag),
    .io_enqLsq_req_1_bits_robIdx_value(lsDispatch_io_enqLsq_req_1_bits_robIdx_value),
    .io_enqLsq_req_2_valid(lsDispatch_io_enqLsq_req_2_valid),
    .io_enqLsq_req_2_bits_cf_trigger_backendEn_0(lsDispatch_io_enqLsq_req_2_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_2_bits_cf_storeSetHit(lsDispatch_io_enqLsq_req_2_bits_cf_storeSetHit),
    .io_enqLsq_req_2_bits_cf_ssid(lsDispatch_io_enqLsq_req_2_bits_cf_ssid),
    .io_enqLsq_req_2_bits_ctrl_fuOpType(lsDispatch_io_enqLsq_req_2_bits_ctrl_fuOpType),
    .io_enqLsq_req_2_bits_robIdx_flag(lsDispatch_io_enqLsq_req_2_bits_robIdx_flag),
    .io_enqLsq_req_2_bits_robIdx_value(lsDispatch_io_enqLsq_req_2_bits_robIdx_value),
    .io_enqLsq_req_3_valid(lsDispatch_io_enqLsq_req_3_valid),
    .io_enqLsq_req_3_bits_cf_trigger_backendEn_0(lsDispatch_io_enqLsq_req_3_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_3_bits_cf_storeSetHit(lsDispatch_io_enqLsq_req_3_bits_cf_storeSetHit),
    .io_enqLsq_req_3_bits_cf_ssid(lsDispatch_io_enqLsq_req_3_bits_cf_ssid),
    .io_enqLsq_req_3_bits_ctrl_fuOpType(lsDispatch_io_enqLsq_req_3_bits_ctrl_fuOpType),
    .io_enqLsq_req_3_bits_robIdx_flag(lsDispatch_io_enqLsq_req_3_bits_robIdx_flag),
    .io_enqLsq_req_3_bits_robIdx_value(lsDispatch_io_enqLsq_req_3_bits_robIdx_value),
    .io_enqLsq_resp_0_lqIdx_flag(lsDispatch_io_enqLsq_resp_0_lqIdx_flag),
    .io_enqLsq_resp_0_lqIdx_value(lsDispatch_io_enqLsq_resp_0_lqIdx_value),
    .io_enqLsq_resp_0_sqIdx_flag(lsDispatch_io_enqLsq_resp_0_sqIdx_flag),
    .io_enqLsq_resp_0_sqIdx_value(lsDispatch_io_enqLsq_resp_0_sqIdx_value),
    .io_enqLsq_resp_1_lqIdx_flag(lsDispatch_io_enqLsq_resp_1_lqIdx_flag),
    .io_enqLsq_resp_1_lqIdx_value(lsDispatch_io_enqLsq_resp_1_lqIdx_value),
    .io_enqLsq_resp_1_sqIdx_flag(lsDispatch_io_enqLsq_resp_1_sqIdx_flag),
    .io_enqLsq_resp_1_sqIdx_value(lsDispatch_io_enqLsq_resp_1_sqIdx_value),
    .io_enqLsq_resp_2_lqIdx_flag(lsDispatch_io_enqLsq_resp_2_lqIdx_flag),
    .io_enqLsq_resp_2_lqIdx_value(lsDispatch_io_enqLsq_resp_2_lqIdx_value),
    .io_enqLsq_resp_2_sqIdx_flag(lsDispatch_io_enqLsq_resp_2_sqIdx_flag),
    .io_enqLsq_resp_2_sqIdx_value(lsDispatch_io_enqLsq_resp_2_sqIdx_value),
    .io_enqLsq_resp_3_lqIdx_flag(lsDispatch_io_enqLsq_resp_3_lqIdx_flag),
    .io_enqLsq_resp_3_lqIdx_value(lsDispatch_io_enqLsq_resp_3_lqIdx_value),
    .io_enqLsq_resp_3_sqIdx_flag(lsDispatch_io_enqLsq_resp_3_sqIdx_flag),
    .io_enqLsq_resp_3_sqIdx_value(lsDispatch_io_enqLsq_resp_3_sqIdx_value)
  );
  ReservationStationWrapper rs ( // @[Scheduler.scala 172:24]
    .clock(rs_clock),
    .reset(rs_reset),
    .io_redirect_valid(rs_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_storeSetHit(rs_io_fromDispatch_0_bits_cf_storeSetHit),
    .io_fromDispatch_0_bits_cf_loadWaitStrict(rs_io_fromDispatch_0_bits_cf_loadWaitStrict),
    .io_fromDispatch_0_bits_cf_ssid(rs_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(rs_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_selImm(rs_io_fromDispatch_0_bits_ctrl_selImm),
    .io_fromDispatch_0_bits_ctrl_imm(rs_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(rs_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(rs_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_psrc_0(rs_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(rs_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_storeSetHit(rs_io_fromDispatch_1_bits_cf_storeSetHit),
    .io_fromDispatch_1_bits_cf_loadWaitStrict(rs_io_fromDispatch_1_bits_cf_loadWaitStrict),
    .io_fromDispatch_1_bits_cf_ssid(rs_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_srcType_1(rs_io_fromDispatch_1_bits_ctrl_srcType_1),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_selImm(rs_io_fromDispatch_1_bits_ctrl_selImm),
    .io_fromDispatch_1_bits_ctrl_imm(rs_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(rs_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_srcState_1(rs_io_fromDispatch_1_bits_srcState_1),
    .io_fromDispatch_1_bits_psrc_0(rs_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(rs_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_pdest(rs_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(rs_io_srcRegValue_0_1),
    .io_srcRegValue_1_0(rs_io_srcRegValue_1_0),
    .io_srcRegValue_1_1(rs_io_srcRegValue_1_1),
    .io_deq_0_valid(rs_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_pd_isRVC(rs_io_deq_0_bits_uop_cf_pd_isRVC),
    .io_deq_0_bits_uop_cf_pd_brType(rs_io_deq_0_bits_uop_cf_pd_brType),
    .io_deq_0_bits_uop_cf_pd_isCall(rs_io_deq_0_bits_uop_cf_pd_isCall),
    .io_deq_0_bits_uop_cf_pd_isRet(rs_io_deq_0_bits_uop_cf_pd_isRet),
    .io_deq_0_bits_uop_cf_pred_taken(rs_io_deq_0_bits_uop_cf_pred_taken),
    .io_deq_0_bits_uop_cf_ftqPtr_flag(rs_io_deq_0_bits_uop_cf_ftqPtr_flag),
    .io_deq_0_bits_uop_cf_ftqPtr_value(rs_io_deq_0_bits_uop_cf_ftqPtr_value),
    .io_deq_0_bits_uop_cf_ftqOffset(rs_io_deq_0_bits_uop_cf_ftqOffset),
    .io_deq_0_bits_uop_ctrl_fuType(rs_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_imm(rs_io_deq_0_bits_uop_ctrl_imm),
    .io_deq_0_bits_uop_robIdx_flag(rs_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_src_0(rs_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(rs_io_deq_0_bits_src_1),
    .io_deq_1_valid(rs_io_deq_1_valid),
    .io_deq_1_bits_uop_cf_pd_isRVC(rs_io_deq_1_bits_uop_cf_pd_isRVC),
    .io_deq_1_bits_uop_cf_pd_brType(rs_io_deq_1_bits_uop_cf_pd_brType),
    .io_deq_1_bits_uop_cf_pd_isCall(rs_io_deq_1_bits_uop_cf_pd_isCall),
    .io_deq_1_bits_uop_cf_pd_isRet(rs_io_deq_1_bits_uop_cf_pd_isRet),
    .io_deq_1_bits_uop_cf_pred_taken(rs_io_deq_1_bits_uop_cf_pred_taken),
    .io_deq_1_bits_uop_cf_ftqPtr_flag(rs_io_deq_1_bits_uop_cf_ftqPtr_flag),
    .io_deq_1_bits_uop_cf_ftqPtr_value(rs_io_deq_1_bits_uop_cf_ftqPtr_value),
    .io_deq_1_bits_uop_cf_ftqOffset(rs_io_deq_1_bits_uop_cf_ftqOffset),
    .io_deq_1_bits_uop_ctrl_fuType(rs_io_deq_1_bits_uop_ctrl_fuType),
    .io_deq_1_bits_uop_ctrl_fuOpType(rs_io_deq_1_bits_uop_ctrl_fuOpType),
    .io_deq_1_bits_uop_ctrl_imm(rs_io_deq_1_bits_uop_ctrl_imm),
    .io_deq_1_bits_uop_robIdx_flag(rs_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(rs_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_src_0(rs_io_deq_1_bits_src_0),
    .io_deq_1_bits_src_1(rs_io_deq_1_bits_src_1),
    .io_fastUopsIn_0_valid(rs_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_rfWen(rs_io_fastUopsIn_0_bits_ctrl_rfWen),
    .io_fastUopsIn_0_bits_pdest(rs_io_fastUopsIn_0_bits_pdest),
    .io_fastUopsIn_1_valid(rs_io_fastUopsIn_1_valid),
    .io_fastUopsIn_1_bits_ctrl_rfWen(rs_io_fastUopsIn_1_bits_ctrl_rfWen),
    .io_fastUopsIn_1_bits_pdest(rs_io_fastUopsIn_1_bits_pdest),
    .io_fastUopsIn_2_valid(rs_io_fastUopsIn_2_valid),
    .io_fastUopsIn_2_bits_ctrl_rfWen(rs_io_fastUopsIn_2_bits_ctrl_rfWen),
    .io_fastUopsIn_2_bits_pdest(rs_io_fastUopsIn_2_bits_pdest),
    .io_fastUopsIn_3_valid(rs_io_fastUopsIn_3_valid),
    .io_fastUopsIn_3_bits_ctrl_rfWen(rs_io_fastUopsIn_3_bits_ctrl_rfWen),
    .io_fastUopsIn_3_bits_pdest(rs_io_fastUopsIn_3_bits_pdest),
    .io_fastUopsIn_4_valid(rs_io_fastUopsIn_4_valid),
    .io_fastUopsIn_4_bits_ctrl_rfWen(rs_io_fastUopsIn_4_bits_ctrl_rfWen),
    .io_fastUopsIn_4_bits_pdest(rs_io_fastUopsIn_4_bits_pdest),
    .io_fastDatas_0(rs_io_fastDatas_0),
    .io_fastDatas_1(rs_io_fastDatas_1),
    .io_fastDatas_2(rs_io_fastDatas_2),
    .io_fastDatas_3(rs_io_fastDatas_3),
    .io_fastDatas_4(rs_io_fastDatas_4),
    .io_slowPorts_0_valid(rs_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(rs_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(rs_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(rs_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(rs_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(rs_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_io_slowPorts_4_bits_data),
    .io_fastWakeup_0_valid(rs_io_fastWakeup_0_valid),
    .io_fastWakeup_0_bits_ctrl_rfWen(rs_io_fastWakeup_0_bits_ctrl_rfWen),
    .io_fastWakeup_0_bits_ctrl_fpWen(rs_io_fastWakeup_0_bits_ctrl_fpWen),
    .io_fastWakeup_0_bits_pdest(rs_io_fastWakeup_0_bits_pdest),
    .io_fastWakeup_0_bits_robIdx_flag(rs_io_fastWakeup_0_bits_robIdx_flag),
    .io_fastWakeup_0_bits_robIdx_value(rs_io_fastWakeup_0_bits_robIdx_value),
    .io_fastWakeup_0_bits_lqIdx_flag(rs_io_fastWakeup_0_bits_lqIdx_flag),
    .io_fastWakeup_0_bits_lqIdx_value(rs_io_fastWakeup_0_bits_lqIdx_value),
    .io_fastWakeup_1_valid(rs_io_fastWakeup_1_valid),
    .io_fastWakeup_1_bits_ctrl_rfWen(rs_io_fastWakeup_1_bits_ctrl_rfWen),
    .io_fastWakeup_1_bits_ctrl_fpWen(rs_io_fastWakeup_1_bits_ctrl_fpWen),
    .io_fastWakeup_1_bits_pdest(rs_io_fastWakeup_1_bits_pdest),
    .io_fastWakeup_1_bits_robIdx_flag(rs_io_fastWakeup_1_bits_robIdx_flag),
    .io_fastWakeup_1_bits_robIdx_value(rs_io_fastWakeup_1_bits_robIdx_value),
    .io_fastWakeup_1_bits_lqIdx_flag(rs_io_fastWakeup_1_bits_lqIdx_flag),
    .io_fastWakeup_1_bits_lqIdx_value(rs_io_fastWakeup_1_bits_lqIdx_value),
    .io_perf_0_value(rs_io_perf_0_value)
  );
  ReservationStationWrapper_1 rs_1 ( // @[Scheduler.scala 172:24]
    .clock(rs_1_clock),
    .reset(rs_1_reset),
    .io_redirect_valid(rs_1_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_1_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_1_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_1_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_1_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_1_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_1_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(rs_1_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_1_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_1_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_1_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_1_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_1_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(rs_1_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(rs_1_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_psrc_0(rs_1_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_1_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(rs_1_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_1_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_1_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_1_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_1_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_1_ready(rs_1_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_1_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_1_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_srcType_1(rs_1_io_fromDispatch_1_bits_ctrl_srcType_1),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_1_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_1_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_1_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_1_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_1_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(rs_1_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_srcState_1(rs_1_io_fromDispatch_1_bits_srcState_1),
    .io_fromDispatch_1_bits_psrc_0(rs_1_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(rs_1_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_pdest(rs_1_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_1_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_1_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_1_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_1_io_fromDispatch_1_bits_lqIdx_value),
    .io_srcRegValue_0_0(rs_1_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(rs_1_io_srcRegValue_0_1),
    .io_srcRegValue_1_0(rs_1_io_srcRegValue_1_0),
    .io_srcRegValue_1_1(rs_1_io_srcRegValue_1_1),
    .io_deq_0_ready(rs_1_io_deq_0_ready),
    .io_deq_0_valid(rs_1_io_deq_0_valid),
    .io_deq_0_bits_uop_ctrl_fuType(rs_1_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_1_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_1_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_1_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_pdest(rs_1_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_1_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_1_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_lqIdx_flag(rs_1_io_deq_0_bits_uop_lqIdx_flag),
    .io_deq_0_bits_uop_lqIdx_value(rs_1_io_deq_0_bits_uop_lqIdx_value),
    .io_deq_0_bits_src_0(rs_1_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(rs_1_io_deq_0_bits_src_1),
    .io_fastUopsIn_0_valid(rs_1_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_rfWen(rs_1_io_fastUopsIn_0_bits_ctrl_rfWen),
    .io_fastUopsIn_0_bits_pdest(rs_1_io_fastUopsIn_0_bits_pdest),
    .io_fastDatas_0(rs_1_io_fastDatas_0),
    .io_slowPorts_0_valid(rs_1_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_1_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(rs_1_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_1_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_1_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_1_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(rs_1_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_1_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_1_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_1_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(rs_1_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_1_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_1_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_1_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(rs_1_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_1_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_1_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_1_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(rs_1_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_1_io_slowPorts_4_bits_data),
    .io_fastWakeup_0_valid(rs_1_io_fastWakeup_0_valid),
    .io_fastWakeup_0_bits_ctrl_rfWen(rs_1_io_fastWakeup_0_bits_ctrl_rfWen),
    .io_fastWakeup_0_bits_pdest(rs_1_io_fastWakeup_0_bits_pdest),
    .io_perf_0_value(rs_1_io_perf_0_value)
  );
  ReservationStationWrapper_2 rs_2 ( // @[Scheduler.scala 172:24]
    .clock(rs_2_clock),
    .reset(rs_2_reset),
    .io_redirect_valid(rs_2_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_2_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_2_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_2_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_2_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_2_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_2_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_2_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_2_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_2_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_2_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_2_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_2_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_2_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_2_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(rs_2_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_2_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_2_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_2_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_2_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_2_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_ctrl_fpu_isAddSub(rs_2_io_fromDispatch_0_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagIn(rs_2_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagOut(rs_2_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_0_bits_ctrl_fpu_fromInt(rs_2_io_fromDispatch_0_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_0_bits_ctrl_fpu_wflags(rs_2_io_fromDispatch_0_bits_ctrl_fpu_wflags),
    .io_fromDispatch_0_bits_ctrl_fpu_fpWen(rs_2_io_fromDispatch_0_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_0_bits_ctrl_fpu_fmaCmd(rs_2_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_0_bits_ctrl_fpu_div(rs_2_io_fromDispatch_0_bits_ctrl_fpu_div),
    .io_fromDispatch_0_bits_ctrl_fpu_sqrt(rs_2_io_fromDispatch_0_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_0_bits_ctrl_fpu_fcvt(rs_2_io_fromDispatch_0_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_0_bits_ctrl_fpu_typ(rs_2_io_fromDispatch_0_bits_ctrl_fpu_typ),
    .io_fromDispatch_0_bits_ctrl_fpu_fmt(rs_2_io_fromDispatch_0_bits_ctrl_fpu_fmt),
    .io_fromDispatch_0_bits_ctrl_fpu_ren3(rs_2_io_fromDispatch_0_bits_ctrl_fpu_ren3),
    .io_fromDispatch_0_bits_ctrl_fpu_rm(rs_2_io_fromDispatch_0_bits_ctrl_fpu_rm),
    .io_fromDispatch_0_bits_srcState_0(rs_2_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(rs_2_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_psrc_0(rs_2_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_2_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(rs_2_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_2_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_2_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_2_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_2_io_fromDispatch_0_bits_lqIdx_value),
    .io_srcRegValue_0_0(rs_2_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(rs_2_io_srcRegValue_0_1),
    .io_deq_0_ready(rs_2_io_deq_0_ready),
    .io_deq_0_valid(rs_2_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_pc(rs_2_io_deq_0_bits_uop_cf_pc),
    .io_deq_0_bits_uop_cf_pd_isRVC(rs_2_io_deq_0_bits_uop_cf_pd_isRVC),
    .io_deq_0_bits_uop_cf_pd_brType(rs_2_io_deq_0_bits_uop_cf_pd_brType),
    .io_deq_0_bits_uop_cf_pd_isCall(rs_2_io_deq_0_bits_uop_cf_pd_isCall),
    .io_deq_0_bits_uop_cf_pd_isRet(rs_2_io_deq_0_bits_uop_cf_pd_isRet),
    .io_deq_0_bits_uop_cf_pred_taken(rs_2_io_deq_0_bits_uop_cf_pred_taken),
    .io_deq_0_bits_uop_cf_ftqPtr_flag(rs_2_io_deq_0_bits_uop_cf_ftqPtr_flag),
    .io_deq_0_bits_uop_cf_ftqPtr_value(rs_2_io_deq_0_bits_uop_cf_ftqPtr_value),
    .io_deq_0_bits_uop_cf_ftqOffset(rs_2_io_deq_0_bits_uop_cf_ftqOffset),
    .io_deq_0_bits_uop_ctrl_fuType(rs_2_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_2_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_2_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_2_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_ctrl_imm(rs_2_io_deq_0_bits_uop_ctrl_imm),
    .io_deq_0_bits_uop_ctrl_fpu_typeTagOut(rs_2_io_deq_0_bits_uop_ctrl_fpu_typeTagOut),
    .io_deq_0_bits_uop_ctrl_fpu_fromInt(rs_2_io_deq_0_bits_uop_ctrl_fpu_fromInt),
    .io_deq_0_bits_uop_ctrl_fpu_wflags(rs_2_io_deq_0_bits_uop_ctrl_fpu_wflags),
    .io_deq_0_bits_uop_ctrl_fpu_typ(rs_2_io_deq_0_bits_uop_ctrl_fpu_typ),
    .io_deq_0_bits_uop_ctrl_fpu_rm(rs_2_io_deq_0_bits_uop_ctrl_fpu_rm),
    .io_deq_0_bits_uop_pdest(rs_2_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_2_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_2_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_lqIdx_flag(rs_2_io_deq_0_bits_uop_lqIdx_flag),
    .io_deq_0_bits_uop_lqIdx_value(rs_2_io_deq_0_bits_uop_lqIdx_value),
    .io_deq_0_bits_src_0(rs_2_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(rs_2_io_deq_0_bits_src_1),
    .io_slowPorts_0_valid(rs_2_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_2_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(rs_2_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_2_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_2_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_2_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(rs_2_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_2_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_2_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_2_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(rs_2_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_2_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_2_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_2_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(rs_2_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_2_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_2_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_2_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(rs_2_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_2_io_slowPorts_4_bits_data),
    .io_jump_jumpPc(rs_2_io_jump_jumpPc),
    .io_jump_jalr_target(rs_2_io_jump_jalr_target),
    .io_perf_0_value(rs_2_io_perf_0_value)
  );
  ReservationStationWrapper_3 rs_3 ( // @[Scheduler.scala 172:24]
    .clock(rs_3_clock),
    .reset(rs_3_reset),
    .io_redirect_valid(rs_3_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_3_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_3_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_3_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_3_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_3_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_3_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_3_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_3_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_3_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_3_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_3_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_3_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_storeSetHit(rs_3_io_fromDispatch_0_bits_cf_storeSetHit),
    .io_fromDispatch_0_bits_cf_loadWaitStrict(rs_3_io_fromDispatch_0_bits_cf_loadWaitStrict),
    .io_fromDispatch_0_bits_cf_ssid(rs_3_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_3_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_3_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_3_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_3_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_3_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_3_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_3_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_3_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_3_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(rs_3_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_psrc_0(rs_3_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_3_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(rs_3_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_3_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_3_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_3_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_3_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_3_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_3_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_3_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_3_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_3_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_3_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_3_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_3_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_3_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_3_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_3_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_storeSetHit(rs_3_io_fromDispatch_1_bits_cf_storeSetHit),
    .io_fromDispatch_1_bits_cf_loadWaitStrict(rs_3_io_fromDispatch_1_bits_cf_loadWaitStrict),
    .io_fromDispatch_1_bits_cf_ssid(rs_3_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_3_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_3_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_3_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_3_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_3_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_3_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_3_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_3_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_3_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(rs_3_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_psrc_0(rs_3_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(rs_3_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_pdest(rs_3_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_3_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_3_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_3_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_3_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_3_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_3_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_3_io_srcRegValue_0_0),
    .io_srcRegValue_1_0(rs_3_io_srcRegValue_1_0),
    .io_deq_0_ready(rs_3_io_deq_0_ready),
    .io_deq_0_valid(rs_3_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_trigger_backendEn_1(rs_3_io_deq_0_bits_uop_cf_trigger_backendEn_1),
    .io_deq_0_bits_uop_cf_storeSetHit(rs_3_io_deq_0_bits_uop_cf_storeSetHit),
    .io_deq_0_bits_uop_cf_loadWaitStrict(rs_3_io_deq_0_bits_uop_cf_loadWaitStrict),
    .io_deq_0_bits_uop_cf_ssid(rs_3_io_deq_0_bits_uop_cf_ssid),
    .io_deq_0_bits_uop_cf_ftqPtr_flag(rs_3_io_deq_0_bits_uop_cf_ftqPtr_flag),
    .io_deq_0_bits_uop_cf_ftqPtr_value(rs_3_io_deq_0_bits_uop_cf_ftqPtr_value),
    .io_deq_0_bits_uop_cf_ftqOffset(rs_3_io_deq_0_bits_uop_cf_ftqOffset),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_3_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_3_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_3_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_ctrl_imm(rs_3_io_deq_0_bits_uop_ctrl_imm),
    .io_deq_0_bits_uop_pdest(rs_3_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_3_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_3_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_lqIdx_flag(rs_3_io_deq_0_bits_uop_lqIdx_flag),
    .io_deq_0_bits_uop_lqIdx_value(rs_3_io_deq_0_bits_uop_lqIdx_value),
    .io_deq_0_bits_uop_sqIdx_flag(rs_3_io_deq_0_bits_uop_sqIdx_flag),
    .io_deq_0_bits_uop_sqIdx_value(rs_3_io_deq_0_bits_uop_sqIdx_value),
    .io_deq_0_bits_src_0(rs_3_io_deq_0_bits_src_0),
    .io_deq_1_ready(rs_3_io_deq_1_ready),
    .io_deq_1_valid(rs_3_io_deq_1_valid),
    .io_deq_1_bits_uop_cf_trigger_backendEn_1(rs_3_io_deq_1_bits_uop_cf_trigger_backendEn_1),
    .io_deq_1_bits_uop_cf_storeSetHit(rs_3_io_deq_1_bits_uop_cf_storeSetHit),
    .io_deq_1_bits_uop_cf_loadWaitStrict(rs_3_io_deq_1_bits_uop_cf_loadWaitStrict),
    .io_deq_1_bits_uop_cf_ssid(rs_3_io_deq_1_bits_uop_cf_ssid),
    .io_deq_1_bits_uop_cf_ftqPtr_flag(rs_3_io_deq_1_bits_uop_cf_ftqPtr_flag),
    .io_deq_1_bits_uop_cf_ftqPtr_value(rs_3_io_deq_1_bits_uop_cf_ftqPtr_value),
    .io_deq_1_bits_uop_cf_ftqOffset(rs_3_io_deq_1_bits_uop_cf_ftqOffset),
    .io_deq_1_bits_uop_ctrl_fuOpType(rs_3_io_deq_1_bits_uop_ctrl_fuOpType),
    .io_deq_1_bits_uop_ctrl_rfWen(rs_3_io_deq_1_bits_uop_ctrl_rfWen),
    .io_deq_1_bits_uop_ctrl_fpWen(rs_3_io_deq_1_bits_uop_ctrl_fpWen),
    .io_deq_1_bits_uop_ctrl_imm(rs_3_io_deq_1_bits_uop_ctrl_imm),
    .io_deq_1_bits_uop_pdest(rs_3_io_deq_1_bits_uop_pdest),
    .io_deq_1_bits_uop_robIdx_flag(rs_3_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(rs_3_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_uop_lqIdx_flag(rs_3_io_deq_1_bits_uop_lqIdx_flag),
    .io_deq_1_bits_uop_lqIdx_value(rs_3_io_deq_1_bits_uop_lqIdx_value),
    .io_deq_1_bits_uop_sqIdx_flag(rs_3_io_deq_1_bits_uop_sqIdx_flag),
    .io_deq_1_bits_uop_sqIdx_value(rs_3_io_deq_1_bits_uop_sqIdx_value),
    .io_deq_1_bits_src_0(rs_3_io_deq_1_bits_src_0),
    .io_fastUopsIn_0_valid(rs_3_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_rfWen(rs_3_io_fastUopsIn_0_bits_ctrl_rfWen),
    .io_fastUopsIn_0_bits_pdest(rs_3_io_fastUopsIn_0_bits_pdest),
    .io_fastUopsIn_1_valid(rs_3_io_fastUopsIn_1_valid),
    .io_fastUopsIn_1_bits_ctrl_rfWen(rs_3_io_fastUopsIn_1_bits_ctrl_rfWen),
    .io_fastUopsIn_1_bits_pdest(rs_3_io_fastUopsIn_1_bits_pdest),
    .io_fastUopsIn_2_valid(rs_3_io_fastUopsIn_2_valid),
    .io_fastUopsIn_2_bits_ctrl_rfWen(rs_3_io_fastUopsIn_2_bits_ctrl_rfWen),
    .io_fastUopsIn_2_bits_pdest(rs_3_io_fastUopsIn_2_bits_pdest),
    .io_fastUopsIn_3_valid(rs_3_io_fastUopsIn_3_valid),
    .io_fastUopsIn_3_bits_ctrl_rfWen(rs_3_io_fastUopsIn_3_bits_ctrl_rfWen),
    .io_fastUopsIn_3_bits_pdest(rs_3_io_fastUopsIn_3_bits_pdest),
    .io_fastDatas_0(rs_3_io_fastDatas_0),
    .io_fastDatas_1(rs_3_io_fastDatas_1),
    .io_fastDatas_2(rs_3_io_fastDatas_2),
    .io_fastDatas_3(rs_3_io_fastDatas_3),
    .io_slowPorts_0_valid(rs_3_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_3_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(rs_3_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_3_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_3_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_3_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(rs_3_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_3_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_3_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_3_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(rs_3_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_3_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_3_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_3_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(rs_3_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_3_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_3_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_3_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(rs_3_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_3_io_slowPorts_4_bits_data),
    .io_feedback_0_feedbackSlow_valid(rs_3_io_feedback_0_feedbackSlow_valid),
    .io_feedback_0_feedbackSlow_bits_rsIdx(rs_3_io_feedback_0_feedbackSlow_bits_rsIdx),
    .io_feedback_0_feedbackSlow_bits_hit(rs_3_io_feedback_0_feedbackSlow_bits_hit),
    .io_feedback_0_feedbackFast_valid(rs_3_io_feedback_0_feedbackFast_valid),
    .io_feedback_0_feedbackFast_bits_rsIdx(rs_3_io_feedback_0_feedbackFast_bits_rsIdx),
    .io_feedback_0_rsIdx(rs_3_io_feedback_0_rsIdx),
    .io_feedback_1_feedbackSlow_valid(rs_3_io_feedback_1_feedbackSlow_valid),
    .io_feedback_1_feedbackSlow_bits_rsIdx(rs_3_io_feedback_1_feedbackSlow_bits_rsIdx),
    .io_feedback_1_feedbackSlow_bits_hit(rs_3_io_feedback_1_feedbackSlow_bits_hit),
    .io_feedback_1_feedbackFast_valid(rs_3_io_feedback_1_feedbackFast_valid),
    .io_feedback_1_feedbackFast_bits_rsIdx(rs_3_io_feedback_1_feedbackFast_bits_rsIdx),
    .io_feedback_1_rsIdx(rs_3_io_feedback_1_rsIdx),
    .io_load_0_fastMatch(rs_3_io_load_0_fastMatch),
    .io_load_0_fastFuOpType(rs_3_io_load_0_fastFuOpType),
    .io_load_0_fastImm(rs_3_io_load_0_fastImm),
    .io_load_1_fastMatch(rs_3_io_load_1_fastMatch),
    .io_load_1_fastFuOpType(rs_3_io_load_1_fastFuOpType),
    .io_load_1_fastImm(rs_3_io_load_1_fastImm),
    .io_perf_0_value(rs_3_io_perf_0_value)
  );
  ReservationStationWrapper_4 rs_4 ( // @[Scheduler.scala 172:24]
    .clock(rs_4_clock),
    .reset(rs_4_reset),
    .io_redirect_valid(rs_4_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_4_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_4_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_4_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_4_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_4_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_4_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_4_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_4_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_4_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_4_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_4_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_4_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_storeSetHit(rs_4_io_fromDispatch_0_bits_cf_storeSetHit),
    .io_fromDispatch_0_bits_cf_loadWaitStrict(rs_4_io_fromDispatch_0_bits_cf_loadWaitStrict),
    .io_fromDispatch_0_bits_cf_ssid(rs_4_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_4_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_4_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_4_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_4_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_4_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_4_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_4_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_4_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_4_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(rs_4_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_psrc_0(rs_4_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_pdest(rs_4_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_4_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_4_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_4_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_4_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_4_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_4_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_4_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_4_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_4_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_4_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_4_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_4_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_4_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_4_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_4_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_storeSetHit(rs_4_io_fromDispatch_1_bits_cf_storeSetHit),
    .io_fromDispatch_1_bits_cf_loadWaitStrict(rs_4_io_fromDispatch_1_bits_cf_loadWaitStrict),
    .io_fromDispatch_1_bits_cf_ssid(rs_4_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_4_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_4_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_4_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_4_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_4_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_4_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_4_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_4_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_4_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(rs_4_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_psrc_0(rs_4_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_pdest(rs_4_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_4_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_4_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_4_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_4_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_4_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_4_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_4_io_srcRegValue_0_0),
    .io_srcRegValue_1_0(rs_4_io_srcRegValue_1_0),
    .io_deq_0_ready(rs_4_io_deq_0_ready),
    .io_deq_0_valid(rs_4_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_trigger_backendEn_0(rs_4_io_deq_0_bits_uop_cf_trigger_backendEn_0),
    .io_deq_0_bits_uop_cf_trigger_backendEn_1(rs_4_io_deq_0_bits_uop_cf_trigger_backendEn_1),
    .io_deq_0_bits_uop_cf_ftqPtr_value(rs_4_io_deq_0_bits_uop_cf_ftqPtr_value),
    .io_deq_0_bits_uop_cf_ftqOffset(rs_4_io_deq_0_bits_uop_cf_ftqOffset),
    .io_deq_0_bits_uop_ctrl_fuType(rs_4_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_4_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_4_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_4_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_ctrl_imm(rs_4_io_deq_0_bits_uop_ctrl_imm),
    .io_deq_0_bits_uop_pdest(rs_4_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_4_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_4_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_lqIdx_flag(rs_4_io_deq_0_bits_uop_lqIdx_flag),
    .io_deq_0_bits_uop_lqIdx_value(rs_4_io_deq_0_bits_uop_lqIdx_value),
    .io_deq_0_bits_uop_sqIdx_flag(rs_4_io_deq_0_bits_uop_sqIdx_flag),
    .io_deq_0_bits_uop_sqIdx_value(rs_4_io_deq_0_bits_uop_sqIdx_value),
    .io_deq_0_bits_src_0(rs_4_io_deq_0_bits_src_0),
    .io_deq_1_ready(rs_4_io_deq_1_ready),
    .io_deq_1_valid(rs_4_io_deq_1_valid),
    .io_deq_1_bits_uop_cf_trigger_backendEn_0(rs_4_io_deq_1_bits_uop_cf_trigger_backendEn_0),
    .io_deq_1_bits_uop_cf_trigger_backendEn_1(rs_4_io_deq_1_bits_uop_cf_trigger_backendEn_1),
    .io_deq_1_bits_uop_cf_ftqPtr_value(rs_4_io_deq_1_bits_uop_cf_ftqPtr_value),
    .io_deq_1_bits_uop_cf_ftqOffset(rs_4_io_deq_1_bits_uop_cf_ftqOffset),
    .io_deq_1_bits_uop_ctrl_fuType(rs_4_io_deq_1_bits_uop_ctrl_fuType),
    .io_deq_1_bits_uop_ctrl_fuOpType(rs_4_io_deq_1_bits_uop_ctrl_fuOpType),
    .io_deq_1_bits_uop_ctrl_rfWen(rs_4_io_deq_1_bits_uop_ctrl_rfWen),
    .io_deq_1_bits_uop_ctrl_fpWen(rs_4_io_deq_1_bits_uop_ctrl_fpWen),
    .io_deq_1_bits_uop_ctrl_imm(rs_4_io_deq_1_bits_uop_ctrl_imm),
    .io_deq_1_bits_uop_pdest(rs_4_io_deq_1_bits_uop_pdest),
    .io_deq_1_bits_uop_robIdx_flag(rs_4_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(rs_4_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_uop_lqIdx_flag(rs_4_io_deq_1_bits_uop_lqIdx_flag),
    .io_deq_1_bits_uop_lqIdx_value(rs_4_io_deq_1_bits_uop_lqIdx_value),
    .io_deq_1_bits_uop_sqIdx_flag(rs_4_io_deq_1_bits_uop_sqIdx_flag),
    .io_deq_1_bits_uop_sqIdx_value(rs_4_io_deq_1_bits_uop_sqIdx_value),
    .io_deq_1_bits_src_0(rs_4_io_deq_1_bits_src_0),
    .io_fastUopsIn_0_valid(rs_4_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_rfWen(rs_4_io_fastUopsIn_0_bits_ctrl_rfWen),
    .io_fastUopsIn_0_bits_pdest(rs_4_io_fastUopsIn_0_bits_pdest),
    .io_fastUopsIn_1_valid(rs_4_io_fastUopsIn_1_valid),
    .io_fastUopsIn_1_bits_ctrl_rfWen(rs_4_io_fastUopsIn_1_bits_ctrl_rfWen),
    .io_fastUopsIn_1_bits_pdest(rs_4_io_fastUopsIn_1_bits_pdest),
    .io_fastDatas_0(rs_4_io_fastDatas_0),
    .io_fastDatas_1(rs_4_io_fastDatas_1),
    .io_slowPorts_0_valid(rs_4_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_4_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(rs_4_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_4_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_4_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_4_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(rs_4_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_4_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_4_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_4_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(rs_4_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_4_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_4_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_4_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(rs_4_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_4_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_4_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_4_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(rs_4_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_4_io_slowPorts_4_bits_data),
    .io_feedback_0_feedbackSlow_valid(rs_4_io_feedback_0_feedbackSlow_valid),
    .io_feedback_0_feedbackSlow_bits_rsIdx(rs_4_io_feedback_0_feedbackSlow_bits_rsIdx),
    .io_feedback_0_feedbackSlow_bits_hit(rs_4_io_feedback_0_feedbackSlow_bits_hit),
    .io_feedback_0_rsIdx(rs_4_io_feedback_0_rsIdx),
    .io_feedback_1_feedbackSlow_valid(rs_4_io_feedback_1_feedbackSlow_valid),
    .io_feedback_1_feedbackSlow_bits_rsIdx(rs_4_io_feedback_1_feedbackSlow_bits_rsIdx),
    .io_feedback_1_feedbackSlow_bits_hit(rs_4_io_feedback_1_feedbackSlow_bits_hit),
    .io_feedback_1_rsIdx(rs_4_io_feedback_1_rsIdx),
    .io_perf_0_value(rs_4_io_perf_0_value)
  );
  ReservationStationWrapper_5 rs_5 ( // @[Scheduler.scala 172:24]
    .clock(rs_5_clock),
    .reset(rs_5_reset),
    .io_redirect_valid(rs_5_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_5_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_5_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_5_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_5_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_5_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_5_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_5_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_5_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_5_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_5_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_5_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_5_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_storeSetHit(rs_5_io_fromDispatch_0_bits_cf_storeSetHit),
    .io_fromDispatch_0_bits_cf_loadWaitStrict(rs_5_io_fromDispatch_0_bits_cf_loadWaitStrict),
    .io_fromDispatch_0_bits_cf_ssid(rs_5_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_5_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_5_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_5_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_5_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_5_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_5_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_5_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_5_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_5_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(rs_5_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_psrc_0(rs_5_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_pdest(rs_5_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_5_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_5_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_5_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_5_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_5_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_5_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_5_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_5_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_5_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_5_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_5_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_5_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_5_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_5_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_5_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_storeSetHit(rs_5_io_fromDispatch_1_bits_cf_storeSetHit),
    .io_fromDispatch_1_bits_cf_loadWaitStrict(rs_5_io_fromDispatch_1_bits_cf_loadWaitStrict),
    .io_fromDispatch_1_bits_cf_ssid(rs_5_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_5_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_5_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_5_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_5_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_5_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_5_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_5_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_5_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_5_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(rs_5_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_psrc_0(rs_5_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_pdest(rs_5_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_5_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_5_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_5_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_5_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_5_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_5_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_5_io_srcRegValue_0_0),
    .io_srcRegValue_1_0(rs_5_io_srcRegValue_1_0),
    .io_fpRegValue_0(rs_5_io_fpRegValue_0),
    .io_fpRegValue_1(rs_5_io_fpRegValue_1),
    .io_deq_0_ready(rs_5_io_deq_0_ready),
    .io_deq_0_valid(rs_5_io_deq_0_valid),
    .io_deq_0_bits_uop_ctrl_fuType(rs_5_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_5_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_robIdx_flag(rs_5_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_5_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_sqIdx_flag(rs_5_io_deq_0_bits_uop_sqIdx_flag),
    .io_deq_0_bits_uop_sqIdx_value(rs_5_io_deq_0_bits_uop_sqIdx_value),
    .io_deq_0_bits_src_0(rs_5_io_deq_0_bits_src_0),
    .io_deq_1_ready(rs_5_io_deq_1_ready),
    .io_deq_1_valid(rs_5_io_deq_1_valid),
    .io_deq_1_bits_uop_ctrl_fuType(rs_5_io_deq_1_bits_uop_ctrl_fuType),
    .io_deq_1_bits_uop_ctrl_fuOpType(rs_5_io_deq_1_bits_uop_ctrl_fuOpType),
    .io_deq_1_bits_uop_robIdx_flag(rs_5_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(rs_5_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_uop_sqIdx_flag(rs_5_io_deq_1_bits_uop_sqIdx_flag),
    .io_deq_1_bits_uop_sqIdx_value(rs_5_io_deq_1_bits_uop_sqIdx_value),
    .io_deq_1_bits_src_0(rs_5_io_deq_1_bits_src_0),
    .io_slowPorts_0_valid(rs_5_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_0_bits_uop_ctrl_fpWen),
    .io_slowPorts_0_bits_uop_pdest(rs_5_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_5_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_5_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_1_bits_uop_ctrl_fpWen),
    .io_slowPorts_1_bits_uop_pdest(rs_5_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_5_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_5_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_2_bits_uop_ctrl_fpWen),
    .io_slowPorts_2_bits_uop_pdest(rs_5_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_5_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_5_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_3_bits_uop_ctrl_fpWen),
    .io_slowPorts_3_bits_uop_pdest(rs_5_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_5_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_5_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_4_bits_uop_ctrl_fpWen),
    .io_slowPorts_4_bits_uop_pdest(rs_5_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_5_io_slowPorts_4_bits_data),
    .io_slowPorts_5_valid(rs_5_io_slowPorts_5_valid),
    .io_slowPorts_5_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_5_bits_uop_ctrl_rfWen),
    .io_slowPorts_5_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_5_bits_uop_ctrl_fpWen),
    .io_slowPorts_5_bits_uop_pdest(rs_5_io_slowPorts_5_bits_uop_pdest),
    .io_slowPorts_5_bits_data(rs_5_io_slowPorts_5_bits_data),
    .io_slowPorts_6_valid(rs_5_io_slowPorts_6_valid),
    .io_slowPorts_6_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_6_bits_uop_ctrl_rfWen),
    .io_slowPorts_6_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_6_bits_uop_ctrl_fpWen),
    .io_slowPorts_6_bits_uop_pdest(rs_5_io_slowPorts_6_bits_uop_pdest),
    .io_slowPorts_6_bits_data(rs_5_io_slowPorts_6_bits_data),
    .io_slowPorts_7_valid(rs_5_io_slowPorts_7_valid),
    .io_slowPorts_7_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_7_bits_uop_ctrl_rfWen),
    .io_slowPorts_7_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_7_bits_uop_ctrl_fpWen),
    .io_slowPorts_7_bits_uop_pdest(rs_5_io_slowPorts_7_bits_uop_pdest),
    .io_slowPorts_7_bits_data(rs_5_io_slowPorts_7_bits_data),
    .io_slowPorts_8_valid(rs_5_io_slowPorts_8_valid),
    .io_slowPorts_8_bits_uop_ctrl_rfWen(rs_5_io_slowPorts_8_bits_uop_ctrl_rfWen),
    .io_slowPorts_8_bits_uop_ctrl_fpWen(rs_5_io_slowPorts_8_bits_uop_ctrl_fpWen),
    .io_slowPorts_8_bits_uop_pdest(rs_5_io_slowPorts_8_bits_uop_pdest),
    .io_slowPorts_8_bits_data(rs_5_io_slowPorts_8_bits_data),
    .io_perf_0_value(rs_5_io_perf_0_value)
  );
  LsqEnqCtrl lsqCtrl ( // @[Scheduler.scala 308:25]
    .clock(lsqCtrl_clock),
    .reset(lsqCtrl_reset),
    .io_redirect_valid(lsqCtrl_io_redirect_valid),
    .io_enq_canAccept(lsqCtrl_io_enq_canAccept),
    .io_enq_needAlloc_0(lsqCtrl_io_enq_needAlloc_0),
    .io_enq_needAlloc_1(lsqCtrl_io_enq_needAlloc_1),
    .io_enq_needAlloc_2(lsqCtrl_io_enq_needAlloc_2),
    .io_enq_needAlloc_3(lsqCtrl_io_enq_needAlloc_3),
    .io_enq_req_0_valid(lsqCtrl_io_enq_req_0_valid),
    .io_enq_req_0_bits_cf_trigger_backendEn_0(lsqCtrl_io_enq_req_0_bits_cf_trigger_backendEn_0),
    .io_enq_req_0_bits_cf_storeSetHit(lsqCtrl_io_enq_req_0_bits_cf_storeSetHit),
    .io_enq_req_0_bits_cf_ssid(lsqCtrl_io_enq_req_0_bits_cf_ssid),
    .io_enq_req_0_bits_ctrl_fuOpType(lsqCtrl_io_enq_req_0_bits_ctrl_fuOpType),
    .io_enq_req_0_bits_robIdx_flag(lsqCtrl_io_enq_req_0_bits_robIdx_flag),
    .io_enq_req_0_bits_robIdx_value(lsqCtrl_io_enq_req_0_bits_robIdx_value),
    .io_enq_req_1_valid(lsqCtrl_io_enq_req_1_valid),
    .io_enq_req_1_bits_cf_trigger_backendEn_0(lsqCtrl_io_enq_req_1_bits_cf_trigger_backendEn_0),
    .io_enq_req_1_bits_cf_storeSetHit(lsqCtrl_io_enq_req_1_bits_cf_storeSetHit),
    .io_enq_req_1_bits_cf_ssid(lsqCtrl_io_enq_req_1_bits_cf_ssid),
    .io_enq_req_1_bits_ctrl_fuOpType(lsqCtrl_io_enq_req_1_bits_ctrl_fuOpType),
    .io_enq_req_1_bits_robIdx_flag(lsqCtrl_io_enq_req_1_bits_robIdx_flag),
    .io_enq_req_1_bits_robIdx_value(lsqCtrl_io_enq_req_1_bits_robIdx_value),
    .io_enq_req_2_valid(lsqCtrl_io_enq_req_2_valid),
    .io_enq_req_2_bits_cf_trigger_backendEn_0(lsqCtrl_io_enq_req_2_bits_cf_trigger_backendEn_0),
    .io_enq_req_2_bits_cf_storeSetHit(lsqCtrl_io_enq_req_2_bits_cf_storeSetHit),
    .io_enq_req_2_bits_cf_ssid(lsqCtrl_io_enq_req_2_bits_cf_ssid),
    .io_enq_req_2_bits_ctrl_fuOpType(lsqCtrl_io_enq_req_2_bits_ctrl_fuOpType),
    .io_enq_req_2_bits_robIdx_flag(lsqCtrl_io_enq_req_2_bits_robIdx_flag),
    .io_enq_req_2_bits_robIdx_value(lsqCtrl_io_enq_req_2_bits_robIdx_value),
    .io_enq_req_3_valid(lsqCtrl_io_enq_req_3_valid),
    .io_enq_req_3_bits_cf_trigger_backendEn_0(lsqCtrl_io_enq_req_3_bits_cf_trigger_backendEn_0),
    .io_enq_req_3_bits_cf_storeSetHit(lsqCtrl_io_enq_req_3_bits_cf_storeSetHit),
    .io_enq_req_3_bits_cf_ssid(lsqCtrl_io_enq_req_3_bits_cf_ssid),
    .io_enq_req_3_bits_ctrl_fuOpType(lsqCtrl_io_enq_req_3_bits_ctrl_fuOpType),
    .io_enq_req_3_bits_robIdx_flag(lsqCtrl_io_enq_req_3_bits_robIdx_flag),
    .io_enq_req_3_bits_robIdx_value(lsqCtrl_io_enq_req_3_bits_robIdx_value),
    .io_enq_resp_0_lqIdx_flag(lsqCtrl_io_enq_resp_0_lqIdx_flag),
    .io_enq_resp_0_lqIdx_value(lsqCtrl_io_enq_resp_0_lqIdx_value),
    .io_enq_resp_0_sqIdx_flag(lsqCtrl_io_enq_resp_0_sqIdx_flag),
    .io_enq_resp_0_sqIdx_value(lsqCtrl_io_enq_resp_0_sqIdx_value),
    .io_enq_resp_1_lqIdx_flag(lsqCtrl_io_enq_resp_1_lqIdx_flag),
    .io_enq_resp_1_lqIdx_value(lsqCtrl_io_enq_resp_1_lqIdx_value),
    .io_enq_resp_1_sqIdx_flag(lsqCtrl_io_enq_resp_1_sqIdx_flag),
    .io_enq_resp_1_sqIdx_value(lsqCtrl_io_enq_resp_1_sqIdx_value),
    .io_enq_resp_2_lqIdx_flag(lsqCtrl_io_enq_resp_2_lqIdx_flag),
    .io_enq_resp_2_lqIdx_value(lsqCtrl_io_enq_resp_2_lqIdx_value),
    .io_enq_resp_2_sqIdx_flag(lsqCtrl_io_enq_resp_2_sqIdx_flag),
    .io_enq_resp_2_sqIdx_value(lsqCtrl_io_enq_resp_2_sqIdx_value),
    .io_enq_resp_3_lqIdx_flag(lsqCtrl_io_enq_resp_3_lqIdx_flag),
    .io_enq_resp_3_lqIdx_value(lsqCtrl_io_enq_resp_3_lqIdx_value),
    .io_enq_resp_3_sqIdx_flag(lsqCtrl_io_enq_resp_3_sqIdx_flag),
    .io_enq_resp_3_sqIdx_value(lsqCtrl_io_enq_resp_3_sqIdx_value),
    .io_lcommit(lsqCtrl_io_lcommit),
    .io_scommit(lsqCtrl_io_scommit),
    .io_lqCancelCnt(lsqCtrl_io_lqCancelCnt),
    .io_sqCancelCnt(lsqCtrl_io_sqCancelCnt),
    .io_enqLsq_needAlloc_0(lsqCtrl_io_enqLsq_needAlloc_0),
    .io_enqLsq_needAlloc_1(lsqCtrl_io_enqLsq_needAlloc_1),
    .io_enqLsq_needAlloc_2(lsqCtrl_io_enqLsq_needAlloc_2),
    .io_enqLsq_needAlloc_3(lsqCtrl_io_enqLsq_needAlloc_3),
    .io_enqLsq_req_0_valid(lsqCtrl_io_enqLsq_req_0_valid),
    .io_enqLsq_req_0_bits_cf_trigger_backendEn_0(lsqCtrl_io_enqLsq_req_0_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_0_bits_cf_storeSetHit(lsqCtrl_io_enqLsq_req_0_bits_cf_storeSetHit),
    .io_enqLsq_req_0_bits_cf_ssid(lsqCtrl_io_enqLsq_req_0_bits_cf_ssid),
    .io_enqLsq_req_0_bits_ctrl_fuOpType(lsqCtrl_io_enqLsq_req_0_bits_ctrl_fuOpType),
    .io_enqLsq_req_0_bits_robIdx_flag(lsqCtrl_io_enqLsq_req_0_bits_robIdx_flag),
    .io_enqLsq_req_0_bits_robIdx_value(lsqCtrl_io_enqLsq_req_0_bits_robIdx_value),
    .io_enqLsq_req_0_bits_lqIdx_flag(lsqCtrl_io_enqLsq_req_0_bits_lqIdx_flag),
    .io_enqLsq_req_0_bits_lqIdx_value(lsqCtrl_io_enqLsq_req_0_bits_lqIdx_value),
    .io_enqLsq_req_0_bits_sqIdx_value(lsqCtrl_io_enqLsq_req_0_bits_sqIdx_value),
    .io_enqLsq_req_1_valid(lsqCtrl_io_enqLsq_req_1_valid),
    .io_enqLsq_req_1_bits_cf_trigger_backendEn_0(lsqCtrl_io_enqLsq_req_1_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_1_bits_cf_storeSetHit(lsqCtrl_io_enqLsq_req_1_bits_cf_storeSetHit),
    .io_enqLsq_req_1_bits_cf_ssid(lsqCtrl_io_enqLsq_req_1_bits_cf_ssid),
    .io_enqLsq_req_1_bits_ctrl_fuOpType(lsqCtrl_io_enqLsq_req_1_bits_ctrl_fuOpType),
    .io_enqLsq_req_1_bits_robIdx_flag(lsqCtrl_io_enqLsq_req_1_bits_robIdx_flag),
    .io_enqLsq_req_1_bits_robIdx_value(lsqCtrl_io_enqLsq_req_1_bits_robIdx_value),
    .io_enqLsq_req_1_bits_lqIdx_flag(lsqCtrl_io_enqLsq_req_1_bits_lqIdx_flag),
    .io_enqLsq_req_1_bits_lqIdx_value(lsqCtrl_io_enqLsq_req_1_bits_lqIdx_value),
    .io_enqLsq_req_1_bits_sqIdx_value(lsqCtrl_io_enqLsq_req_1_bits_sqIdx_value),
    .io_enqLsq_req_2_valid(lsqCtrl_io_enqLsq_req_2_valid),
    .io_enqLsq_req_2_bits_cf_trigger_backendEn_0(lsqCtrl_io_enqLsq_req_2_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_2_bits_cf_storeSetHit(lsqCtrl_io_enqLsq_req_2_bits_cf_storeSetHit),
    .io_enqLsq_req_2_bits_cf_ssid(lsqCtrl_io_enqLsq_req_2_bits_cf_ssid),
    .io_enqLsq_req_2_bits_ctrl_fuOpType(lsqCtrl_io_enqLsq_req_2_bits_ctrl_fuOpType),
    .io_enqLsq_req_2_bits_robIdx_flag(lsqCtrl_io_enqLsq_req_2_bits_robIdx_flag),
    .io_enqLsq_req_2_bits_robIdx_value(lsqCtrl_io_enqLsq_req_2_bits_robIdx_value),
    .io_enqLsq_req_2_bits_lqIdx_flag(lsqCtrl_io_enqLsq_req_2_bits_lqIdx_flag),
    .io_enqLsq_req_2_bits_lqIdx_value(lsqCtrl_io_enqLsq_req_2_bits_lqIdx_value),
    .io_enqLsq_req_2_bits_sqIdx_value(lsqCtrl_io_enqLsq_req_2_bits_sqIdx_value),
    .io_enqLsq_req_3_valid(lsqCtrl_io_enqLsq_req_3_valid),
    .io_enqLsq_req_3_bits_cf_trigger_backendEn_0(lsqCtrl_io_enqLsq_req_3_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_3_bits_cf_storeSetHit(lsqCtrl_io_enqLsq_req_3_bits_cf_storeSetHit),
    .io_enqLsq_req_3_bits_cf_ssid(lsqCtrl_io_enqLsq_req_3_bits_cf_ssid),
    .io_enqLsq_req_3_bits_ctrl_fuOpType(lsqCtrl_io_enqLsq_req_3_bits_ctrl_fuOpType),
    .io_enqLsq_req_3_bits_robIdx_flag(lsqCtrl_io_enqLsq_req_3_bits_robIdx_flag),
    .io_enqLsq_req_3_bits_robIdx_value(lsqCtrl_io_enqLsq_req_3_bits_robIdx_value),
    .io_enqLsq_req_3_bits_lqIdx_flag(lsqCtrl_io_enqLsq_req_3_bits_lqIdx_flag),
    .io_enqLsq_req_3_bits_lqIdx_value(lsqCtrl_io_enqLsq_req_3_bits_lqIdx_value),
    .io_enqLsq_req_3_bits_sqIdx_value(lsqCtrl_io_enqLsq_req_3_bits_sqIdx_value)
  );
  BusyTable intBusyTable ( // @[Scheduler.scala 321:27]
    .clock(intBusyTable_clock),
    .reset(intBusyTable_reset),
    .io_allocPregs_0_valid(intBusyTable_io_allocPregs_0_valid),
    .io_allocPregs_0_bits(intBusyTable_io_allocPregs_0_bits),
    .io_allocPregs_1_valid(intBusyTable_io_allocPregs_1_valid),
    .io_allocPregs_1_bits(intBusyTable_io_allocPregs_1_bits),
    .io_wbPregs_0_valid(intBusyTable_io_wbPregs_0_valid),
    .io_wbPregs_0_bits(intBusyTable_io_wbPregs_0_bits),
    .io_wbPregs_1_valid(intBusyTable_io_wbPregs_1_valid),
    .io_wbPregs_1_bits(intBusyTable_io_wbPregs_1_bits),
    .io_wbPregs_2_valid(intBusyTable_io_wbPregs_2_valid),
    .io_wbPregs_2_bits(intBusyTable_io_wbPregs_2_bits),
    .io_wbPregs_3_valid(intBusyTable_io_wbPregs_3_valid),
    .io_wbPregs_3_bits(intBusyTable_io_wbPregs_3_bits),
    .io_wbPregs_4_valid(intBusyTable_io_wbPregs_4_valid),
    .io_wbPregs_4_bits(intBusyTable_io_wbPregs_4_bits),
    .io_read_0_req(intBusyTable_io_read_0_req),
    .io_read_0_resp(intBusyTable_io_read_0_resp),
    .io_read_1_req(intBusyTable_io_read_1_req),
    .io_read_1_resp(intBusyTable_io_read_1_resp),
    .io_read_2_req(intBusyTable_io_read_2_req),
    .io_read_2_resp(intBusyTable_io_read_2_resp),
    .io_read_3_req(intBusyTable_io_read_3_req),
    .io_read_3_resp(intBusyTable_io_read_3_resp),
    .io_read_8_req(intBusyTable_io_read_8_req),
    .io_read_8_resp(intBusyTable_io_read_8_resp),
    .io_read_9_req(intBusyTable_io_read_9_req),
    .io_read_9_resp(intBusyTable_io_read_9_resp),
    .io_read_10_req(intBusyTable_io_read_10_req),
    .io_read_10_resp(intBusyTable_io_read_10_resp),
    .io_read_11_req(intBusyTable_io_read_11_req),
    .io_read_11_resp(intBusyTable_io_read_11_resp),
    .io_read_12_req(intBusyTable_io_read_12_req),
    .io_read_12_resp(intBusyTable_io_read_12_resp),
    .io_read_13_req(intBusyTable_io_read_13_req),
    .io_read_13_resp(intBusyTable_io_read_13_resp),
    .io_perf_0_value(intBusyTable_io_perf_0_value),
    .io_perf_1_value(intBusyTable_io_perf_1_value),
    .io_perf_2_value(intBusyTable_io_perf_2_value),
    .io_perf_3_value(intBusyTable_io_perf_3_value)
  );
  BusyTable_1 fpBusyTable ( // @[Scheduler.scala 340:29]
    .clock(fpBusyTable_clock),
    .reset(fpBusyTable_reset),
    .io_allocPregs_0_valid(fpBusyTable_io_allocPregs_0_valid),
    .io_allocPregs_0_bits(fpBusyTable_io_allocPregs_0_bits),
    .io_allocPregs_1_valid(fpBusyTable_io_allocPregs_1_valid),
    .io_allocPregs_1_bits(fpBusyTable_io_allocPregs_1_bits),
    .io_wbPregs_0_valid(fpBusyTable_io_wbPregs_0_valid),
    .io_wbPregs_0_bits(fpBusyTable_io_wbPregs_0_bits),
    .io_wbPregs_1_valid(fpBusyTable_io_wbPregs_1_valid),
    .io_wbPregs_1_bits(fpBusyTable_io_wbPregs_1_bits),
    .io_wbPregs_2_valid(fpBusyTable_io_wbPregs_2_valid),
    .io_wbPregs_2_bits(fpBusyTable_io_wbPregs_2_bits),
    .io_wbPregs_3_valid(fpBusyTable_io_wbPregs_3_valid),
    .io_wbPregs_3_bits(fpBusyTable_io_wbPregs_3_bits),
    .io_read_0_req(fpBusyTable_io_read_0_req),
    .io_read_0_resp(fpBusyTable_io_read_0_resp),
    .io_read_1_req(fpBusyTable_io_read_1_req),
    .io_read_1_resp(fpBusyTable_io_read_1_resp)
  );
  Regfile intRfReadData_regfile ( // @[Regfile.scala 85:25]
    .clock(intRfReadData_regfile_clock),
    .io_readPorts_0_addr(intRfReadData_regfile_io_readPorts_0_addr),
    .io_readPorts_0_data(intRfReadData_regfile_io_readPorts_0_data),
    .io_readPorts_1_addr(intRfReadData_regfile_io_readPorts_1_addr),
    .io_readPorts_1_data(intRfReadData_regfile_io_readPorts_1_data),
    .io_readPorts_2_addr(intRfReadData_regfile_io_readPorts_2_addr),
    .io_readPorts_2_data(intRfReadData_regfile_io_readPorts_2_data),
    .io_readPorts_3_addr(intRfReadData_regfile_io_readPorts_3_addr),
    .io_readPorts_3_data(intRfReadData_regfile_io_readPorts_3_data),
    .io_readPorts_4_addr(intRfReadData_regfile_io_readPorts_4_addr),
    .io_readPorts_4_data(intRfReadData_regfile_io_readPorts_4_data),
    .io_readPorts_5_addr(intRfReadData_regfile_io_readPorts_5_addr),
    .io_readPorts_5_data(intRfReadData_regfile_io_readPorts_5_data),
    .io_readPorts_6_addr(intRfReadData_regfile_io_readPorts_6_addr),
    .io_readPorts_6_data(intRfReadData_regfile_io_readPorts_6_data),
    .io_readPorts_7_addr(intRfReadData_regfile_io_readPorts_7_addr),
    .io_readPorts_7_data(intRfReadData_regfile_io_readPorts_7_data),
    .io_readPorts_8_addr(intRfReadData_regfile_io_readPorts_8_addr),
    .io_readPorts_8_data(intRfReadData_regfile_io_readPorts_8_data),
    .io_readPorts_9_addr(intRfReadData_regfile_io_readPorts_9_addr),
    .io_readPorts_9_data(intRfReadData_regfile_io_readPorts_9_data),
    .io_writePorts_0_wen(intRfReadData_regfile_io_writePorts_0_wen),
    .io_writePorts_0_addr(intRfReadData_regfile_io_writePorts_0_addr),
    .io_writePorts_0_data(intRfReadData_regfile_io_writePorts_0_data),
    .io_writePorts_1_wen(intRfReadData_regfile_io_writePorts_1_wen),
    .io_writePorts_1_addr(intRfReadData_regfile_io_writePorts_1_addr),
    .io_writePorts_1_data(intRfReadData_regfile_io_writePorts_1_data),
    .io_writePorts_2_wen(intRfReadData_regfile_io_writePorts_2_wen),
    .io_writePorts_2_addr(intRfReadData_regfile_io_writePorts_2_addr),
    .io_writePorts_2_data(intRfReadData_regfile_io_writePorts_2_data),
    .io_writePorts_3_wen(intRfReadData_regfile_io_writePorts_3_wen),
    .io_writePorts_3_addr(intRfReadData_regfile_io_writePorts_3_addr),
    .io_writePorts_3_data(intRfReadData_regfile_io_writePorts_3_data),
    .io_writePorts_4_wen(intRfReadData_regfile_io_writePorts_4_wen),
    .io_writePorts_4_addr(intRfReadData_regfile_io_writePorts_4_addr),
    .io_writePorts_4_data(intRfReadData_regfile_io_writePorts_4_data),
    .io_debug_rports_0_addr(intRfReadData_regfile_io_debug_rports_0_addr),
    .io_debug_rports_0_data(intRfReadData_regfile_io_debug_rports_0_data),
    .io_debug_rports_1_addr(intRfReadData_regfile_io_debug_rports_1_addr),
    .io_debug_rports_1_data(intRfReadData_regfile_io_debug_rports_1_data),
    .io_debug_rports_2_addr(intRfReadData_regfile_io_debug_rports_2_addr),
    .io_debug_rports_2_data(intRfReadData_regfile_io_debug_rports_2_data),
    .io_debug_rports_3_addr(intRfReadData_regfile_io_debug_rports_3_addr),
    .io_debug_rports_3_data(intRfReadData_regfile_io_debug_rports_3_data),
    .io_debug_rports_4_addr(intRfReadData_regfile_io_debug_rports_4_addr),
    .io_debug_rports_4_data(intRfReadData_regfile_io_debug_rports_4_data),
    .io_debug_rports_5_addr(intRfReadData_regfile_io_debug_rports_5_addr),
    .io_debug_rports_5_data(intRfReadData_regfile_io_debug_rports_5_data),
    .io_debug_rports_6_addr(intRfReadData_regfile_io_debug_rports_6_addr),
    .io_debug_rports_6_data(intRfReadData_regfile_io_debug_rports_6_data),
    .io_debug_rports_7_addr(intRfReadData_regfile_io_debug_rports_7_addr),
    .io_debug_rports_7_data(intRfReadData_regfile_io_debug_rports_7_data),
    .io_debug_rports_8_addr(intRfReadData_regfile_io_debug_rports_8_addr),
    .io_debug_rports_8_data(intRfReadData_regfile_io_debug_rports_8_data),
    .io_debug_rports_9_addr(intRfReadData_regfile_io_debug_rports_9_addr),
    .io_debug_rports_9_data(intRfReadData_regfile_io_debug_rports_9_data),
    .io_debug_rports_10_addr(intRfReadData_regfile_io_debug_rports_10_addr),
    .io_debug_rports_10_data(intRfReadData_regfile_io_debug_rports_10_data),
    .io_debug_rports_11_addr(intRfReadData_regfile_io_debug_rports_11_addr),
    .io_debug_rports_11_data(intRfReadData_regfile_io_debug_rports_11_data),
    .io_debug_rports_12_addr(intRfReadData_regfile_io_debug_rports_12_addr),
    .io_debug_rports_12_data(intRfReadData_regfile_io_debug_rports_12_data),
    .io_debug_rports_13_addr(intRfReadData_regfile_io_debug_rports_13_addr),
    .io_debug_rports_13_data(intRfReadData_regfile_io_debug_rports_13_data),
    .io_debug_rports_14_addr(intRfReadData_regfile_io_debug_rports_14_addr),
    .io_debug_rports_14_data(intRfReadData_regfile_io_debug_rports_14_data),
    .io_debug_rports_15_addr(intRfReadData_regfile_io_debug_rports_15_addr),
    .io_debug_rports_15_data(intRfReadData_regfile_io_debug_rports_15_data),
    .io_debug_rports_16_addr(intRfReadData_regfile_io_debug_rports_16_addr),
    .io_debug_rports_16_data(intRfReadData_regfile_io_debug_rports_16_data),
    .io_debug_rports_17_addr(intRfReadData_regfile_io_debug_rports_17_addr),
    .io_debug_rports_17_data(intRfReadData_regfile_io_debug_rports_17_data),
    .io_debug_rports_18_addr(intRfReadData_regfile_io_debug_rports_18_addr),
    .io_debug_rports_18_data(intRfReadData_regfile_io_debug_rports_18_data),
    .io_debug_rports_19_addr(intRfReadData_regfile_io_debug_rports_19_addr),
    .io_debug_rports_19_data(intRfReadData_regfile_io_debug_rports_19_data),
    .io_debug_rports_20_addr(intRfReadData_regfile_io_debug_rports_20_addr),
    .io_debug_rports_20_data(intRfReadData_regfile_io_debug_rports_20_data),
    .io_debug_rports_21_addr(intRfReadData_regfile_io_debug_rports_21_addr),
    .io_debug_rports_21_data(intRfReadData_regfile_io_debug_rports_21_data),
    .io_debug_rports_22_addr(intRfReadData_regfile_io_debug_rports_22_addr),
    .io_debug_rports_22_data(intRfReadData_regfile_io_debug_rports_22_data),
    .io_debug_rports_23_addr(intRfReadData_regfile_io_debug_rports_23_addr),
    .io_debug_rports_23_data(intRfReadData_regfile_io_debug_rports_23_data),
    .io_debug_rports_24_addr(intRfReadData_regfile_io_debug_rports_24_addr),
    .io_debug_rports_24_data(intRfReadData_regfile_io_debug_rports_24_data),
    .io_debug_rports_25_addr(intRfReadData_regfile_io_debug_rports_25_addr),
    .io_debug_rports_25_data(intRfReadData_regfile_io_debug_rports_25_data),
    .io_debug_rports_26_addr(intRfReadData_regfile_io_debug_rports_26_addr),
    .io_debug_rports_26_data(intRfReadData_regfile_io_debug_rports_26_data),
    .io_debug_rports_27_addr(intRfReadData_regfile_io_debug_rports_27_addr),
    .io_debug_rports_27_data(intRfReadData_regfile_io_debug_rports_27_data),
    .io_debug_rports_28_addr(intRfReadData_regfile_io_debug_rports_28_addr),
    .io_debug_rports_28_data(intRfReadData_regfile_io_debug_rports_28_data),
    .io_debug_rports_29_addr(intRfReadData_regfile_io_debug_rports_29_addr),
    .io_debug_rports_29_data(intRfReadData_regfile_io_debug_rports_29_data),
    .io_debug_rports_30_addr(intRfReadData_regfile_io_debug_rports_30_addr),
    .io_debug_rports_30_data(intRfReadData_regfile_io_debug_rports_30_data),
    .io_debug_rports_31_addr(intRfReadData_regfile_io_debug_rports_31_addr),
    .io_debug_rports_31_data(intRfReadData_regfile_io_debug_rports_31_data)
  );
  DelayN_24 fpRfReadData_delay ( // @[Hold.scala 97:23]
    .clock(fpRfReadData_delay_clock),
    .io_in_0(fpRfReadData_delay_io_in_0),
    .io_in_1(fpRfReadData_delay_io_in_1),
    .io_out_0(fpRfReadData_delay_io_out_0),
    .io_out_1(fpRfReadData_delay_io_out_1)
  );
  DispatchArbiter arbiterOut_arbiter ( // @[Scheduler.scala 55:25]
    .io_in_ready(arbiterOut_arbiter_io_in_ready),
    .io_in_valid(arbiterOut_arbiter_io_in_valid),
    .io_in_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_0),
    .io_in_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_1),
    .io_in_bits_cf_pd_isRVC(arbiterOut_arbiter_io_in_bits_cf_pd_isRVC),
    .io_in_bits_cf_pd_brType(arbiterOut_arbiter_io_in_bits_cf_pd_brType),
    .io_in_bits_cf_pd_isCall(arbiterOut_arbiter_io_in_bits_cf_pd_isCall),
    .io_in_bits_cf_pd_isRet(arbiterOut_arbiter_io_in_bits_cf_pd_isRet),
    .io_in_bits_cf_pred_taken(arbiterOut_arbiter_io_in_bits_cf_pred_taken),
    .io_in_bits_cf_storeSetHit(arbiterOut_arbiter_io_in_bits_cf_storeSetHit),
    .io_in_bits_cf_loadWaitStrict(arbiterOut_arbiter_io_in_bits_cf_loadWaitStrict),
    .io_in_bits_cf_ssid(arbiterOut_arbiter_io_in_bits_cf_ssid),
    .io_in_bits_cf_ftqPtr_flag(arbiterOut_arbiter_io_in_bits_cf_ftqPtr_flag),
    .io_in_bits_cf_ftqPtr_value(arbiterOut_arbiter_io_in_bits_cf_ftqPtr_value),
    .io_in_bits_cf_ftqOffset(arbiterOut_arbiter_io_in_bits_cf_ftqOffset),
    .io_in_bits_ctrl_srcType_0(arbiterOut_arbiter_io_in_bits_ctrl_srcType_0),
    .io_in_bits_ctrl_srcType_1(arbiterOut_arbiter_io_in_bits_ctrl_srcType_1),
    .io_in_bits_ctrl_fuType(arbiterOut_arbiter_io_in_bits_ctrl_fuType),
    .io_in_bits_ctrl_fuOpType(arbiterOut_arbiter_io_in_bits_ctrl_fuOpType),
    .io_in_bits_ctrl_rfWen(arbiterOut_arbiter_io_in_bits_ctrl_rfWen),
    .io_in_bits_ctrl_fpWen(arbiterOut_arbiter_io_in_bits_ctrl_fpWen),
    .io_in_bits_ctrl_selImm(arbiterOut_arbiter_io_in_bits_ctrl_selImm),
    .io_in_bits_ctrl_imm(arbiterOut_arbiter_io_in_bits_ctrl_imm),
    .io_in_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_io_in_bits_ctrl_fpu_isAddSub),
    .io_in_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagIn),
    .io_in_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagOut),
    .io_in_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fromInt),
    .io_in_bits_ctrl_fpu_wflags(arbiterOut_arbiter_io_in_bits_ctrl_fpu_wflags),
    .io_in_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fpWen),
    .io_in_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmaCmd),
    .io_in_bits_ctrl_fpu_div(arbiterOut_arbiter_io_in_bits_ctrl_fpu_div),
    .io_in_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_sqrt),
    .io_in_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fcvt),
    .io_in_bits_ctrl_fpu_typ(arbiterOut_arbiter_io_in_bits_ctrl_fpu_typ),
    .io_in_bits_ctrl_fpu_fmt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmt),
    .io_in_bits_ctrl_fpu_ren3(arbiterOut_arbiter_io_in_bits_ctrl_fpu_ren3),
    .io_in_bits_ctrl_fpu_rm(arbiterOut_arbiter_io_in_bits_ctrl_fpu_rm),
    .io_in_bits_srcState_0(arbiterOut_arbiter_io_in_bits_srcState_0),
    .io_in_bits_srcState_1(arbiterOut_arbiter_io_in_bits_srcState_1),
    .io_in_bits_psrc_0(arbiterOut_arbiter_io_in_bits_psrc_0),
    .io_in_bits_psrc_1(arbiterOut_arbiter_io_in_bits_psrc_1),
    .io_in_bits_pdest(arbiterOut_arbiter_io_in_bits_pdest),
    .io_in_bits_robIdx_flag(arbiterOut_arbiter_io_in_bits_robIdx_flag),
    .io_in_bits_robIdx_value(arbiterOut_arbiter_io_in_bits_robIdx_value),
    .io_in_bits_lqIdx_flag(arbiterOut_arbiter_io_in_bits_lqIdx_flag),
    .io_in_bits_lqIdx_value(arbiterOut_arbiter_io_in_bits_lqIdx_value),
    .io_in_bits_sqIdx_flag(arbiterOut_arbiter_io_in_bits_sqIdx_flag),
    .io_in_bits_sqIdx_value(arbiterOut_arbiter_io_in_bits_sqIdx_value),
    .io_out_0_ready(arbiterOut_arbiter_io_out_0_ready),
    .io_out_0_valid(arbiterOut_arbiter_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_pd_isRVC(arbiterOut_arbiter_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(arbiterOut_arbiter_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(arbiterOut_arbiter_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(arbiterOut_arbiter_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(arbiterOut_arbiter_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_storeSetHit(arbiterOut_arbiter_io_out_0_bits_cf_storeSetHit),
    .io_out_0_bits_cf_loadWaitStrict(arbiterOut_arbiter_io_out_0_bits_cf_loadWaitStrict),
    .io_out_0_bits_cf_ssid(arbiterOut_arbiter_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(arbiterOut_arbiter_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_srcType_1(arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_1),
    .io_out_0_bits_ctrl_fuType(arbiterOut_arbiter_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(arbiterOut_arbiter_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(arbiterOut_arbiter_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(arbiterOut_arbiter_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_selImm(arbiterOut_arbiter_io_out_0_bits_ctrl_selImm),
    .io_out_0_bits_ctrl_imm(arbiterOut_arbiter_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_srcState_0(arbiterOut_arbiter_io_out_0_bits_srcState_0),
    .io_out_0_bits_srcState_1(arbiterOut_arbiter_io_out_0_bits_srcState_1),
    .io_out_0_bits_psrc_0(arbiterOut_arbiter_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(arbiterOut_arbiter_io_out_0_bits_psrc_1),
    .io_out_0_bits_pdest(arbiterOut_arbiter_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(arbiterOut_arbiter_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(arbiterOut_arbiter_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(arbiterOut_arbiter_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(arbiterOut_arbiter_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(arbiterOut_arbiter_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(arbiterOut_arbiter_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(arbiterOut_arbiter_io_out_1_ready),
    .io_out_1_valid(arbiterOut_arbiter_io_out_1_valid),
    .io_out_1_bits_ctrl_srcType_0(arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_srcType_1(arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_1),
    .io_out_1_bits_ctrl_fuType(arbiterOut_arbiter_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(arbiterOut_arbiter_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(arbiterOut_arbiter_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(arbiterOut_arbiter_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_imm(arbiterOut_arbiter_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_srcState_0(arbiterOut_arbiter_io_out_1_bits_srcState_0),
    .io_out_1_bits_srcState_1(arbiterOut_arbiter_io_out_1_bits_srcState_1),
    .io_out_1_bits_psrc_0(arbiterOut_arbiter_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(arbiterOut_arbiter_io_out_1_bits_psrc_1),
    .io_out_1_bits_pdest(arbiterOut_arbiter_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(arbiterOut_arbiter_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(arbiterOut_arbiter_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(arbiterOut_arbiter_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(arbiterOut_arbiter_io_out_1_bits_lqIdx_value),
    .io_out_2_ready(arbiterOut_arbiter_io_out_2_ready),
    .io_out_2_valid(arbiterOut_arbiter_io_out_2_valid),
    .io_out_2_bits_cf_pd_isRVC(arbiterOut_arbiter_io_out_2_bits_cf_pd_isRVC),
    .io_out_2_bits_cf_pd_brType(arbiterOut_arbiter_io_out_2_bits_cf_pd_brType),
    .io_out_2_bits_cf_pd_isCall(arbiterOut_arbiter_io_out_2_bits_cf_pd_isCall),
    .io_out_2_bits_cf_pd_isRet(arbiterOut_arbiter_io_out_2_bits_cf_pd_isRet),
    .io_out_2_bits_cf_pred_taken(arbiterOut_arbiter_io_out_2_bits_cf_pred_taken),
    .io_out_2_bits_cf_ftqPtr_flag(arbiterOut_arbiter_io_out_2_bits_cf_ftqPtr_flag),
    .io_out_2_bits_cf_ftqPtr_value(arbiterOut_arbiter_io_out_2_bits_cf_ftqPtr_value),
    .io_out_2_bits_cf_ftqOffset(arbiterOut_arbiter_io_out_2_bits_cf_ftqOffset),
    .io_out_2_bits_ctrl_srcType_0(arbiterOut_arbiter_io_out_2_bits_ctrl_srcType_0),
    .io_out_2_bits_ctrl_srcType_1(arbiterOut_arbiter_io_out_2_bits_ctrl_srcType_1),
    .io_out_2_bits_ctrl_fuType(arbiterOut_arbiter_io_out_2_bits_ctrl_fuType),
    .io_out_2_bits_ctrl_fuOpType(arbiterOut_arbiter_io_out_2_bits_ctrl_fuOpType),
    .io_out_2_bits_ctrl_rfWen(arbiterOut_arbiter_io_out_2_bits_ctrl_rfWen),
    .io_out_2_bits_ctrl_fpWen(arbiterOut_arbiter_io_out_2_bits_ctrl_fpWen),
    .io_out_2_bits_ctrl_imm(arbiterOut_arbiter_io_out_2_bits_ctrl_imm),
    .io_out_2_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_isAddSub),
    .io_out_2_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typeTagIn),
    .io_out_2_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typeTagOut),
    .io_out_2_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fromInt),
    .io_out_2_bits_ctrl_fpu_wflags(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_wflags),
    .io_out_2_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fpWen),
    .io_out_2_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fmaCmd),
    .io_out_2_bits_ctrl_fpu_div(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_div),
    .io_out_2_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_sqrt),
    .io_out_2_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fcvt),
    .io_out_2_bits_ctrl_fpu_typ(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typ),
    .io_out_2_bits_ctrl_fpu_fmt(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fmt),
    .io_out_2_bits_ctrl_fpu_ren3(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_ren3),
    .io_out_2_bits_ctrl_fpu_rm(arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_rm),
    .io_out_2_bits_srcState_0(arbiterOut_arbiter_io_out_2_bits_srcState_0),
    .io_out_2_bits_srcState_1(arbiterOut_arbiter_io_out_2_bits_srcState_1),
    .io_out_2_bits_psrc_0(arbiterOut_arbiter_io_out_2_bits_psrc_0),
    .io_out_2_bits_psrc_1(arbiterOut_arbiter_io_out_2_bits_psrc_1),
    .io_out_2_bits_pdest(arbiterOut_arbiter_io_out_2_bits_pdest),
    .io_out_2_bits_robIdx_flag(arbiterOut_arbiter_io_out_2_bits_robIdx_flag),
    .io_out_2_bits_robIdx_value(arbiterOut_arbiter_io_out_2_bits_robIdx_value),
    .io_out_2_bits_lqIdx_flag(arbiterOut_arbiter_io_out_2_bits_lqIdx_flag),
    .io_out_2_bits_lqIdx_value(arbiterOut_arbiter_io_out_2_bits_lqIdx_value)
  );
  DispatchArbiter_1 arbiterOut_arbiter_1 ( // @[Scheduler.scala 55:25]
    .io_in_ready(arbiterOut_arbiter_1_io_in_ready),
    .io_in_valid(arbiterOut_arbiter_1_io_in_valid),
    .io_in_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_0),
    .io_in_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_1),
    .io_in_bits_cf_pd_isRVC(arbiterOut_arbiter_1_io_in_bits_cf_pd_isRVC),
    .io_in_bits_cf_pd_brType(arbiterOut_arbiter_1_io_in_bits_cf_pd_brType),
    .io_in_bits_cf_pd_isCall(arbiterOut_arbiter_1_io_in_bits_cf_pd_isCall),
    .io_in_bits_cf_pd_isRet(arbiterOut_arbiter_1_io_in_bits_cf_pd_isRet),
    .io_in_bits_cf_pred_taken(arbiterOut_arbiter_1_io_in_bits_cf_pred_taken),
    .io_in_bits_cf_storeSetHit(arbiterOut_arbiter_1_io_in_bits_cf_storeSetHit),
    .io_in_bits_cf_loadWaitStrict(arbiterOut_arbiter_1_io_in_bits_cf_loadWaitStrict),
    .io_in_bits_cf_ssid(arbiterOut_arbiter_1_io_in_bits_cf_ssid),
    .io_in_bits_cf_ftqPtr_flag(arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_flag),
    .io_in_bits_cf_ftqPtr_value(arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_value),
    .io_in_bits_cf_ftqOffset(arbiterOut_arbiter_1_io_in_bits_cf_ftqOffset),
    .io_in_bits_ctrl_srcType_0(arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_0),
    .io_in_bits_ctrl_srcType_1(arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_1),
    .io_in_bits_ctrl_fuType(arbiterOut_arbiter_1_io_in_bits_ctrl_fuType),
    .io_in_bits_ctrl_fuOpType(arbiterOut_arbiter_1_io_in_bits_ctrl_fuOpType),
    .io_in_bits_ctrl_rfWen(arbiterOut_arbiter_1_io_in_bits_ctrl_rfWen),
    .io_in_bits_ctrl_fpWen(arbiterOut_arbiter_1_io_in_bits_ctrl_fpWen),
    .io_in_bits_ctrl_selImm(arbiterOut_arbiter_1_io_in_bits_ctrl_selImm),
    .io_in_bits_ctrl_imm(arbiterOut_arbiter_1_io_in_bits_ctrl_imm),
    .io_in_bits_srcState_0(arbiterOut_arbiter_1_io_in_bits_srcState_0),
    .io_in_bits_srcState_1(arbiterOut_arbiter_1_io_in_bits_srcState_1),
    .io_in_bits_psrc_0(arbiterOut_arbiter_1_io_in_bits_psrc_0),
    .io_in_bits_psrc_1(arbiterOut_arbiter_1_io_in_bits_psrc_1),
    .io_in_bits_pdest(arbiterOut_arbiter_1_io_in_bits_pdest),
    .io_in_bits_robIdx_flag(arbiterOut_arbiter_1_io_in_bits_robIdx_flag),
    .io_in_bits_robIdx_value(arbiterOut_arbiter_1_io_in_bits_robIdx_value),
    .io_in_bits_lqIdx_flag(arbiterOut_arbiter_1_io_in_bits_lqIdx_flag),
    .io_in_bits_lqIdx_value(arbiterOut_arbiter_1_io_in_bits_lqIdx_value),
    .io_in_bits_sqIdx_flag(arbiterOut_arbiter_1_io_in_bits_sqIdx_flag),
    .io_in_bits_sqIdx_value(arbiterOut_arbiter_1_io_in_bits_sqIdx_value),
    .io_out_0_ready(arbiterOut_arbiter_1_io_out_0_ready),
    .io_out_0_valid(arbiterOut_arbiter_1_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_pd_isRVC(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(arbiterOut_arbiter_1_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_storeSetHit(arbiterOut_arbiter_1_io_out_0_bits_cf_storeSetHit),
    .io_out_0_bits_cf_loadWaitStrict(arbiterOut_arbiter_1_io_out_0_bits_cf_loadWaitStrict),
    .io_out_0_bits_cf_ssid(arbiterOut_arbiter_1_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(arbiterOut_arbiter_1_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_srcType_1(arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_1),
    .io_out_0_bits_ctrl_fuType(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(arbiterOut_arbiter_1_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_selImm(arbiterOut_arbiter_1_io_out_0_bits_ctrl_selImm),
    .io_out_0_bits_ctrl_imm(arbiterOut_arbiter_1_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_srcState_0(arbiterOut_arbiter_1_io_out_0_bits_srcState_0),
    .io_out_0_bits_srcState_1(arbiterOut_arbiter_1_io_out_0_bits_srcState_1),
    .io_out_0_bits_psrc_0(arbiterOut_arbiter_1_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(arbiterOut_arbiter_1_io_out_0_bits_psrc_1),
    .io_out_0_bits_pdest(arbiterOut_arbiter_1_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(arbiterOut_arbiter_1_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(arbiterOut_arbiter_1_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(arbiterOut_arbiter_1_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(arbiterOut_arbiter_1_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(arbiterOut_arbiter_1_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(arbiterOut_arbiter_1_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(arbiterOut_arbiter_1_io_out_1_ready),
    .io_out_1_valid(arbiterOut_arbiter_1_io_out_1_valid),
    .io_out_1_bits_ctrl_srcType_0(arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_srcType_1(arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_1),
    .io_out_1_bits_ctrl_fuType(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(arbiterOut_arbiter_1_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_imm(arbiterOut_arbiter_1_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_srcState_0(arbiterOut_arbiter_1_io_out_1_bits_srcState_0),
    .io_out_1_bits_srcState_1(arbiterOut_arbiter_1_io_out_1_bits_srcState_1),
    .io_out_1_bits_psrc_0(arbiterOut_arbiter_1_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(arbiterOut_arbiter_1_io_out_1_bits_psrc_1),
    .io_out_1_bits_pdest(arbiterOut_arbiter_1_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(arbiterOut_arbiter_1_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(arbiterOut_arbiter_1_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(arbiterOut_arbiter_1_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(arbiterOut_arbiter_1_io_out_1_bits_lqIdx_value)
  );
`ifndef SYNTHESIS
  DifftestArchIntRegState difftest ( // @[Scheduler.scala 534:26]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_gpr_0(difftest_io_gpr_0),
    .io_gpr_1(difftest_io_gpr_1),
    .io_gpr_2(difftest_io_gpr_2),
    .io_gpr_3(difftest_io_gpr_3),
    .io_gpr_4(difftest_io_gpr_4),
    .io_gpr_5(difftest_io_gpr_5),
    .io_gpr_6(difftest_io_gpr_6),
    .io_gpr_7(difftest_io_gpr_7),
    .io_gpr_8(difftest_io_gpr_8),
    .io_gpr_9(difftest_io_gpr_9),
    .io_gpr_10(difftest_io_gpr_10),
    .io_gpr_11(difftest_io_gpr_11),
    .io_gpr_12(difftest_io_gpr_12),
    .io_gpr_13(difftest_io_gpr_13),
    .io_gpr_14(difftest_io_gpr_14),
    .io_gpr_15(difftest_io_gpr_15),
    .io_gpr_16(difftest_io_gpr_16),
    .io_gpr_17(difftest_io_gpr_17),
    .io_gpr_18(difftest_io_gpr_18),
    .io_gpr_19(difftest_io_gpr_19),
    .io_gpr_20(difftest_io_gpr_20),
    .io_gpr_21(difftest_io_gpr_21),
    .io_gpr_22(difftest_io_gpr_22),
    .io_gpr_23(difftest_io_gpr_23),
    .io_gpr_24(difftest_io_gpr_24),
    .io_gpr_25(difftest_io_gpr_25),
    .io_gpr_26(difftest_io_gpr_26),
    .io_gpr_27(difftest_io_gpr_27),
    .io_gpr_28(difftest_io_gpr_28),
    .io_gpr_29(difftest_io_gpr_29),
    .io_gpr_30(difftest_io_gpr_30),
    .io_gpr_31(difftest_io_gpr_31)
  );
`endif
  assign io_issue_0_valid = rs_io_deq_0_valid; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_pd_isRVC = rs_io_deq_0_bits_uop_cf_pd_isRVC; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_pd_brType = rs_io_deq_0_bits_uop_cf_pd_brType; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_pd_isCall = rs_io_deq_0_bits_uop_cf_pd_isCall; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_pd_isRet = rs_io_deq_0_bits_uop_cf_pd_isRet; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_pred_taken = rs_io_deq_0_bits_uop_cf_pred_taken; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_ftqPtr_flag = rs_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_ftqPtr_value = rs_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_cf_ftqOffset = rs_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_ctrl_fuType = rs_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_ctrl_fuOpType = rs_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_ctrl_imm = rs_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_robIdx_flag = rs_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_uop_robIdx_value = rs_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_src_0 = rs_io_deq_0_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_0_bits_src_1 = rs_io_deq_0_bits_src_1; // @[Scheduler.scala 424:15]
  assign io_issue_1_valid = rs_io_deq_1_valid; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_pd_isRVC = rs_io_deq_1_bits_uop_cf_pd_isRVC; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_pd_brType = rs_io_deq_1_bits_uop_cf_pd_brType; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_pd_isCall = rs_io_deq_1_bits_uop_cf_pd_isCall; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_pd_isRet = rs_io_deq_1_bits_uop_cf_pd_isRet; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_pred_taken = rs_io_deq_1_bits_uop_cf_pred_taken; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_ftqPtr_flag = rs_io_deq_1_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_ftqPtr_value = rs_io_deq_1_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_cf_ftqOffset = rs_io_deq_1_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_ctrl_fuType = rs_io_deq_1_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_ctrl_fuOpType = rs_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_ctrl_imm = rs_io_deq_1_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_robIdx_flag = rs_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_uop_robIdx_value = rs_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_src_0 = rs_io_deq_1_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_1_bits_src_1 = rs_io_deq_1_bits_src_1; // @[Scheduler.scala 424:15]
  assign io_issue_2_valid = rs_1_io_deq_0_valid; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_ctrl_fuType = rs_1_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_ctrl_fuOpType = rs_1_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_ctrl_rfWen = rs_1_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_ctrl_fpWen = rs_1_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_pdest = rs_1_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_robIdx_flag = rs_1_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_robIdx_value = rs_1_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_lqIdx_flag = rs_1_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_uop_lqIdx_value = rs_1_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_src_0 = rs_1_io_deq_0_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_2_bits_src_1 = rs_1_io_deq_0_bits_src_1; // @[Scheduler.scala 424:15]
  assign io_issue_3_valid = rs_2_io_deq_0_valid; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_pc = rs_2_io_deq_0_bits_uop_cf_pc; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_pd_isRVC = rs_2_io_deq_0_bits_uop_cf_pd_isRVC; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_pd_brType = rs_2_io_deq_0_bits_uop_cf_pd_brType; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_pd_isCall = rs_2_io_deq_0_bits_uop_cf_pd_isCall; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_pd_isRet = rs_2_io_deq_0_bits_uop_cf_pd_isRet; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_pred_taken = rs_2_io_deq_0_bits_uop_cf_pred_taken; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_ftqPtr_flag = rs_2_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_ftqPtr_value = rs_2_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_cf_ftqOffset = rs_2_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fuType = rs_2_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fuOpType = rs_2_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_rfWen = rs_2_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fpWen = rs_2_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_imm = rs_2_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fpu_typeTagOut = rs_2_io_deq_0_bits_uop_ctrl_fpu_typeTagOut; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fpu_fromInt = rs_2_io_deq_0_bits_uop_ctrl_fpu_fromInt; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fpu_wflags = rs_2_io_deq_0_bits_uop_ctrl_fpu_wflags; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fpu_typ = rs_2_io_deq_0_bits_uop_ctrl_fpu_typ; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_ctrl_fpu_rm = rs_2_io_deq_0_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_pdest = rs_2_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_robIdx_flag = rs_2_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_robIdx_value = rs_2_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_lqIdx_flag = rs_2_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_uop_lqIdx_value = rs_2_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_src_0 = rs_2_io_deq_0_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_3_bits_src_1 = rs_2_io_deq_0_bits_src_1; // @[Scheduler.scala 424:15]
  assign io_issue_4_valid = rs_3_io_deq_0_valid; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_trigger_backendEn_1 = rs_3_io_deq_0_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_storeSetHit = rs_3_io_deq_0_bits_uop_cf_storeSetHit; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_loadWaitStrict = rs_3_io_deq_0_bits_uop_cf_loadWaitStrict; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_ssid = rs_3_io_deq_0_bits_uop_cf_ssid; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_ftqPtr_flag = rs_3_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_ftqPtr_value = rs_3_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_cf_ftqOffset = rs_3_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_ctrl_fuOpType = rs_3_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_ctrl_rfWen = rs_3_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_ctrl_fpWen = rs_3_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_ctrl_imm = rs_3_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_pdest = rs_3_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_robIdx_flag = rs_3_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_robIdx_value = rs_3_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_lqIdx_flag = rs_3_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_lqIdx_value = rs_3_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_sqIdx_flag = rs_3_io_deq_0_bits_uop_sqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_uop_sqIdx_value = rs_3_io_deq_0_bits_uop_sqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_4_bits_src_0 = rs_3_io_deq_0_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_5_valid = rs_3_io_deq_1_valid; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_trigger_backendEn_1 = rs_3_io_deq_1_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_storeSetHit = rs_3_io_deq_1_bits_uop_cf_storeSetHit; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_loadWaitStrict = rs_3_io_deq_1_bits_uop_cf_loadWaitStrict; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_ssid = rs_3_io_deq_1_bits_uop_cf_ssid; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_ftqPtr_flag = rs_3_io_deq_1_bits_uop_cf_ftqPtr_flag; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_ftqPtr_value = rs_3_io_deq_1_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_cf_ftqOffset = rs_3_io_deq_1_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_ctrl_fuOpType = rs_3_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_ctrl_rfWen = rs_3_io_deq_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_ctrl_fpWen = rs_3_io_deq_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_ctrl_imm = rs_3_io_deq_1_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_pdest = rs_3_io_deq_1_bits_uop_pdest; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_robIdx_flag = rs_3_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_robIdx_value = rs_3_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_lqIdx_flag = rs_3_io_deq_1_bits_uop_lqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_lqIdx_value = rs_3_io_deq_1_bits_uop_lqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_sqIdx_flag = rs_3_io_deq_1_bits_uop_sqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_uop_sqIdx_value = rs_3_io_deq_1_bits_uop_sqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_5_bits_src_0 = rs_3_io_deq_1_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_6_valid = rs_4_io_deq_0_valid; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_cf_trigger_backendEn_0 = rs_4_io_deq_0_bits_uop_cf_trigger_backendEn_0; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_cf_trigger_backendEn_1 = rs_4_io_deq_0_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_cf_ftqPtr_value = rs_4_io_deq_0_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_cf_ftqOffset = rs_4_io_deq_0_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_ctrl_fuType = rs_4_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_ctrl_fuOpType = rs_4_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_ctrl_rfWen = rs_4_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_ctrl_fpWen = rs_4_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_ctrl_imm = rs_4_io_deq_0_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_pdest = rs_4_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_robIdx_flag = rs_4_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_robIdx_value = rs_4_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_lqIdx_flag = rs_4_io_deq_0_bits_uop_lqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_lqIdx_value = rs_4_io_deq_0_bits_uop_lqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_sqIdx_flag = rs_4_io_deq_0_bits_uop_sqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_uop_sqIdx_value = rs_4_io_deq_0_bits_uop_sqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_6_bits_src_0 = rs_4_io_deq_0_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_7_valid = rs_4_io_deq_1_valid; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_cf_trigger_backendEn_0 = rs_4_io_deq_1_bits_uop_cf_trigger_backendEn_0; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_cf_trigger_backendEn_1 = rs_4_io_deq_1_bits_uop_cf_trigger_backendEn_1; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_cf_ftqPtr_value = rs_4_io_deq_1_bits_uop_cf_ftqPtr_value; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_cf_ftqOffset = rs_4_io_deq_1_bits_uop_cf_ftqOffset; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_ctrl_fuType = rs_4_io_deq_1_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_ctrl_fuOpType = rs_4_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_ctrl_rfWen = rs_4_io_deq_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_ctrl_fpWen = rs_4_io_deq_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_ctrl_imm = rs_4_io_deq_1_bits_uop_ctrl_imm; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_pdest = rs_4_io_deq_1_bits_uop_pdest; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_robIdx_flag = rs_4_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_robIdx_value = rs_4_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_lqIdx_flag = rs_4_io_deq_1_bits_uop_lqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_lqIdx_value = rs_4_io_deq_1_bits_uop_lqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_sqIdx_flag = rs_4_io_deq_1_bits_uop_sqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_uop_sqIdx_value = rs_4_io_deq_1_bits_uop_sqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_7_bits_src_0 = rs_4_io_deq_1_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_8_valid = rs_5_io_deq_0_valid; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_uop_ctrl_fuType = rs_5_io_deq_0_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_uop_ctrl_fuOpType = rs_5_io_deq_0_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_uop_robIdx_flag = rs_5_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_uop_robIdx_value = rs_5_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_uop_sqIdx_flag = rs_5_io_deq_0_bits_uop_sqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_uop_sqIdx_value = rs_5_io_deq_0_bits_uop_sqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_8_bits_src_0 = rs_5_io_deq_0_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_issue_9_valid = rs_5_io_deq_1_valid; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_uop_ctrl_fuType = rs_5_io_deq_1_bits_uop_ctrl_fuType; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_uop_ctrl_fuOpType = rs_5_io_deq_1_bits_uop_ctrl_fuOpType; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_uop_robIdx_flag = rs_5_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_uop_robIdx_value = rs_5_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_uop_sqIdx_flag = rs_5_io_deq_1_bits_uop_sqIdx_flag; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_uop_sqIdx_value = rs_5_io_deq_1_bits_uop_sqIdx_value; // @[Scheduler.scala 424:15]
  assign io_issue_9_bits_src_0 = rs_5_io_deq_1_bits_src_0; // @[Scheduler.scala 424:15]
  assign io_fastUopOut_0_valid = rs_io_fastWakeup_0_valid; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_ctrl_rfWen = rs_io_fastWakeup_0_bits_ctrl_rfWen; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_ctrl_fpWen = rs_io_fastWakeup_0_bits_ctrl_fpWen; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_pdest = rs_io_fastWakeup_0_bits_pdest; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_robIdx_flag = rs_io_fastWakeup_0_bits_robIdx_flag; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_robIdx_value = rs_io_fastWakeup_0_bits_robIdx_value; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_lqIdx_flag = rs_io_fastWakeup_0_bits_lqIdx_flag; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_0_bits_lqIdx_value = rs_io_fastWakeup_0_bits_lqIdx_value; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_valid = rs_io_fastWakeup_1_valid; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_ctrl_rfWen = rs_io_fastWakeup_1_bits_ctrl_rfWen; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_ctrl_fpWen = rs_io_fastWakeup_1_bits_ctrl_fpWen; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_pdest = rs_io_fastWakeup_1_bits_pdest; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_robIdx_flag = rs_io_fastWakeup_1_bits_robIdx_flag; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_robIdx_value = rs_io_fastWakeup_1_bits_robIdx_value; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_lqIdx_flag = rs_io_fastWakeup_1_bits_lqIdx_flag; // @[Scheduler.scala 426:28]
  assign io_fastUopOut_1_bits_lqIdx_value = rs_io_fastWakeup_1_bits_lqIdx_value; // @[Scheduler.scala 426:28]
  assign io_extra_rsReady_0 = intDispatch_io_out_0_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_1 = intDispatch_io_out_1_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_2 = lsDispatch_io_out_0_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_3 = lsDispatch_io_out_1_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_4 = lsDispatch_io_out_2_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_5 = lsDispatch_io_out_3_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_6 = lsDispatch_io_out_4_ready; // @[Scheduler.scala 304:20]
  assign io_extra_rsReady_7 = lsDispatch_io_out_5_ready; // @[Scheduler.scala 304:20]
  assign io_extra_feedback_0_rsIdx = rs_3_io_feedback_0_rsIdx; // @[Scheduler.scala 446:17]
  assign io_extra_feedback_1_rsIdx = rs_3_io_feedback_1_rsIdx; // @[Scheduler.scala 446:17]
  assign io_extra_feedback_2_rsIdx = rs_4_io_feedback_0_rsIdx; // @[Scheduler.scala 446:17]
  assign io_extra_feedback_3_rsIdx = rs_4_io_feedback_1_rsIdx; // @[Scheduler.scala 446:17]
  assign io_extra_fpRfReadIn_0_addr = io_extra_fpRfReadIn_0_addr_REG; // @[Scheduler.scala 397:84]
  assign io_extra_fpRfReadIn_1_addr = io_extra_fpRfReadIn_1_addr_REG; // @[Scheduler.scala 397:84]
  assign io_extra_loadFastMatch_0 = rs_3_io_load_0_fastMatch; // @[Scheduler.scala 477:32]
  assign io_extra_loadFastMatch_1 = rs_3_io_load_1_fastMatch; // @[Scheduler.scala 477:32]
  assign io_extra_loadFastFuOpType_0 = rs_3_io_load_0_fastFuOpType; // @[Scheduler.scala 478:35]
  assign io_extra_loadFastFuOpType_1 = rs_3_io_load_1_fastFuOpType; // @[Scheduler.scala 478:35]
  assign io_extra_loadFastImm_0 = rs_3_io_load_0_fastImm; // @[Scheduler.scala 479:30]
  assign io_extra_loadFastImm_1 = rs_3_io_load_1_fastImm; // @[Scheduler.scala 479:30]
  assign io_extra_robHeadLsIssue = _io_extra_robHeadLsIssue_T & _io_extra_robHeadLsIssue_T_3 |
    _io_extra_robHeadLsIssue_T_5 & _io_extra_robHeadLsIssue_T_8 | _io_extra_robHeadLsIssue_T_10 &
    _io_extra_robHeadLsIssue_T_13 | _io_extra_robHeadLsIssue_T_15 & _io_extra_robHeadLsIssue_T_18; // @[Scheduler.scala 531:125]
  assign io_perf_0_value = {{2'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{2'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign intDispatch_io_in_0_valid = io_in_0_valid; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_storeSetHit = io_in_0_bits_cf_storeSetHit; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_loadWaitStrict = io_in_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_ssid = io_in_0_bits_cf_ssid; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_selImm = io_in_0_bits_ctrl_selImm; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_imm = io_in_0_bits_ctrl_imm; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_psrc_0 = io_in_0_bits_psrc_0; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_psrc_1 = io_in_0_bits_psrc_1; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_pdest = io_in_0_bits_pdest; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_lqIdx_flag = io_in_0_bits_lqIdx_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_lqIdx_value = io_in_0_bits_lqIdx_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_sqIdx_flag = io_in_0_bits_sqIdx_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_0_bits_sqIdx_value = io_in_0_bits_sqIdx_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_valid = io_in_1_valid; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_storeSetHit = io_in_1_bits_cf_storeSetHit; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_loadWaitStrict = io_in_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_ssid = io_in_1_bits_cf_ssid; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_srcType_0 = io_in_1_bits_ctrl_srcType_0; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_fuType = io_in_1_bits_ctrl_fuType; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_selImm = io_in_1_bits_ctrl_selImm; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_ctrl_imm = io_in_1_bits_ctrl_imm; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_psrc_0 = io_in_1_bits_psrc_0; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_psrc_1 = io_in_1_bits_psrc_1; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_pdest = io_in_1_bits_pdest; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_lqIdx_flag = io_in_1_bits_lqIdx_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_lqIdx_value = io_in_1_bits_lqIdx_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_sqIdx_flag = io_in_1_bits_sqIdx_flag; // @[Scheduler.scala 318:9]
  assign intDispatch_io_in_1_bits_sqIdx_value = io_in_1_bits_sqIdx_value; // @[Scheduler.scala 318:9]
  assign intDispatch_io_readIntState_0_resp = intBusyTable_io_read_0_resp; // @[Scheduler.scala 330:23]
  assign intDispatch_io_readIntState_1_resp = intBusyTable_io_read_1_resp; // @[Scheduler.scala 330:23]
  assign intDispatch_io_readIntState_2_resp = intBusyTable_io_read_2_resp; // @[Scheduler.scala 330:23]
  assign intDispatch_io_readIntState_3_resp = intBusyTable_io_read_3_resp; // @[Scheduler.scala 330:23]
  assign intDispatch_io_out_0_ready = arbiterOut_arbiter_io_in_ready; // @[Scheduler.scala 56:19]
  assign intDispatch_io_out_1_ready = arbiterOut_arbiter_1_io_in_ready; // @[Scheduler.scala 56:19]
  assign lsDispatch_clock = clock;
  assign lsDispatch_reset = reset;
  assign lsDispatch_io_redirect_valid = redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign lsDispatch_io_redirect_bits_robIdx_flag = redirect_next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign lsDispatch_io_redirect_bits_robIdx_value = redirect_next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign lsDispatch_io_redirect_bits_level = redirect_next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign lsDispatch_io_in_0_valid = io_in_4_valid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_trigger_backendEn_0 = io_in_4_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_trigger_backendEn_1 = io_in_4_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_pd_isRVC = io_in_4_bits_cf_pd_isRVC; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_pd_brType = io_in_4_bits_cf_pd_brType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_pd_isCall = io_in_4_bits_cf_pd_isCall; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_pd_isRet = io_in_4_bits_cf_pd_isRet; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_pred_taken = io_in_4_bits_cf_pred_taken; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_storeSetHit = io_in_4_bits_cf_storeSetHit; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_loadWaitStrict = io_in_4_bits_cf_loadWaitStrict; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_ssid = io_in_4_bits_cf_ssid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_ftqPtr_flag = io_in_4_bits_cf_ftqPtr_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_ftqPtr_value = io_in_4_bits_cf_ftqPtr_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_cf_ftqOffset = io_in_4_bits_cf_ftqOffset; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_srcType_0 = io_in_4_bits_ctrl_srcType_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_srcType_1 = io_in_4_bits_ctrl_srcType_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_fuType = io_in_4_bits_ctrl_fuType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_fuOpType = io_in_4_bits_ctrl_fuOpType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_rfWen = io_in_4_bits_ctrl_rfWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_fpWen = io_in_4_bits_ctrl_fpWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_ctrl_imm = io_in_4_bits_ctrl_imm; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_psrc_0 = io_in_4_bits_psrc_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_psrc_1 = io_in_4_bits_psrc_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_pdest = io_in_4_bits_pdest; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_robIdx_flag = io_in_4_bits_robIdx_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_0_bits_robIdx_value = io_in_4_bits_robIdx_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_valid = io_in_5_valid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_trigger_backendEn_0 = io_in_5_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_trigger_backendEn_1 = io_in_5_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_pd_isRVC = io_in_5_bits_cf_pd_isRVC; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_pd_brType = io_in_5_bits_cf_pd_brType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_pd_isCall = io_in_5_bits_cf_pd_isCall; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_pd_isRet = io_in_5_bits_cf_pd_isRet; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_pred_taken = io_in_5_bits_cf_pred_taken; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_storeSetHit = io_in_5_bits_cf_storeSetHit; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_loadWaitStrict = io_in_5_bits_cf_loadWaitStrict; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_ssid = io_in_5_bits_cf_ssid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_ftqPtr_flag = io_in_5_bits_cf_ftqPtr_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_ftqPtr_value = io_in_5_bits_cf_ftqPtr_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_cf_ftqOffset = io_in_5_bits_cf_ftqOffset; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_srcType_0 = io_in_5_bits_ctrl_srcType_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_srcType_1 = io_in_5_bits_ctrl_srcType_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_fuType = io_in_5_bits_ctrl_fuType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_fuOpType = io_in_5_bits_ctrl_fuOpType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_rfWen = io_in_5_bits_ctrl_rfWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_fpWen = io_in_5_bits_ctrl_fpWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_ctrl_imm = io_in_5_bits_ctrl_imm; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_psrc_0 = io_in_5_bits_psrc_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_psrc_1 = io_in_5_bits_psrc_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_pdest = io_in_5_bits_pdest; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_robIdx_flag = io_in_5_bits_robIdx_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_1_bits_robIdx_value = io_in_5_bits_robIdx_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_valid = io_in_6_valid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_trigger_backendEn_0 = io_in_6_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_trigger_backendEn_1 = io_in_6_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_pd_isRVC = io_in_6_bits_cf_pd_isRVC; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_pd_brType = io_in_6_bits_cf_pd_brType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_pd_isCall = io_in_6_bits_cf_pd_isCall; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_pd_isRet = io_in_6_bits_cf_pd_isRet; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_pred_taken = io_in_6_bits_cf_pred_taken; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_storeSetHit = io_in_6_bits_cf_storeSetHit; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_loadWaitStrict = io_in_6_bits_cf_loadWaitStrict; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_ssid = io_in_6_bits_cf_ssid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_ftqPtr_flag = io_in_6_bits_cf_ftqPtr_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_ftqPtr_value = io_in_6_bits_cf_ftqPtr_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_cf_ftqOffset = io_in_6_bits_cf_ftqOffset; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_srcType_0 = io_in_6_bits_ctrl_srcType_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_srcType_1 = io_in_6_bits_ctrl_srcType_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_fuType = io_in_6_bits_ctrl_fuType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_fuOpType = io_in_6_bits_ctrl_fuOpType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_rfWen = io_in_6_bits_ctrl_rfWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_fpWen = io_in_6_bits_ctrl_fpWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_ctrl_imm = io_in_6_bits_ctrl_imm; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_psrc_0 = io_in_6_bits_psrc_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_psrc_1 = io_in_6_bits_psrc_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_pdest = io_in_6_bits_pdest; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_robIdx_flag = io_in_6_bits_robIdx_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_2_bits_robIdx_value = io_in_6_bits_robIdx_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_valid = io_in_7_valid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_trigger_backendEn_0 = io_in_7_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_trigger_backendEn_1 = io_in_7_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_pd_isRVC = io_in_7_bits_cf_pd_isRVC; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_pd_brType = io_in_7_bits_cf_pd_brType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_pd_isCall = io_in_7_bits_cf_pd_isCall; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_pd_isRet = io_in_7_bits_cf_pd_isRet; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_pred_taken = io_in_7_bits_cf_pred_taken; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_storeSetHit = io_in_7_bits_cf_storeSetHit; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_loadWaitStrict = io_in_7_bits_cf_loadWaitStrict; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_ssid = io_in_7_bits_cf_ssid; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_ftqPtr_flag = io_in_7_bits_cf_ftqPtr_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_ftqPtr_value = io_in_7_bits_cf_ftqPtr_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_cf_ftqOffset = io_in_7_bits_cf_ftqOffset; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_srcType_0 = io_in_7_bits_ctrl_srcType_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_srcType_1 = io_in_7_bits_ctrl_srcType_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_fuType = io_in_7_bits_ctrl_fuType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_fuOpType = io_in_7_bits_ctrl_fuOpType; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_rfWen = io_in_7_bits_ctrl_rfWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_fpWen = io_in_7_bits_ctrl_fpWen; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_ctrl_imm = io_in_7_bits_ctrl_imm; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_psrc_0 = io_in_7_bits_psrc_0; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_psrc_1 = io_in_7_bits_psrc_1; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_pdest = io_in_7_bits_pdest; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_robIdx_flag = io_in_7_bits_robIdx_flag; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_in_3_bits_robIdx_value = io_in_7_bits_robIdx_value; // @[Scheduler.scala 318:9]
  assign lsDispatch_io_readIntState_0_resp = intBusyTable_io_read_8_resp; // @[Scheduler.scala 330:23]
  assign lsDispatch_io_readIntState_1_resp = intBusyTable_io_read_9_resp; // @[Scheduler.scala 330:23]
  assign lsDispatch_io_readIntState_2_resp = intBusyTable_io_read_10_resp; // @[Scheduler.scala 330:23]
  assign lsDispatch_io_readIntState_3_resp = intBusyTable_io_read_11_resp; // @[Scheduler.scala 330:23]
  assign lsDispatch_io_readIntState_4_resp = intBusyTable_io_read_12_resp; // @[Scheduler.scala 330:23]
  assign lsDispatch_io_readIntState_5_resp = intBusyTable_io_read_13_resp; // @[Scheduler.scala 330:23]
  assign lsDispatch_io_readFpState_0_resp = fpBusyTable_io_read_0_resp; // @[Scheduler.scala 350:25]
  assign lsDispatch_io_readFpState_1_resp = fpBusyTable_io_read_1_resp; // @[Scheduler.scala 350:25]
  assign lsDispatch_io_out_0_ready = rs_3_io_fromDispatch_0_ready; // @[Scheduler.scala 487:61]
  assign lsDispatch_io_out_1_ready = rs_3_io_fromDispatch_1_ready; // @[Scheduler.scala 487:61]
  assign lsDispatch_io_out_2_ready = rs_4_io_fromDispatch_0_ready; // @[Scheduler.scala 487:61]
  assign lsDispatch_io_out_3_ready = rs_4_io_fromDispatch_1_ready; // @[Scheduler.scala 487:61]
  assign lsDispatch_io_out_4_ready = rs_5_io_fromDispatch_0_ready; // @[Scheduler.scala 487:61]
  assign lsDispatch_io_out_5_ready = rs_5_io_fromDispatch_1_ready; // @[Scheduler.scala 487:61]
  assign lsDispatch_io_enqLsq_canAccept = lsqCtrl_io_enq_canAccept; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_0_lqIdx_flag = lsqCtrl_io_enq_resp_0_lqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_0_lqIdx_value = lsqCtrl_io_enq_resp_0_lqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_0_sqIdx_flag = lsqCtrl_io_enq_resp_0_sqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_0_sqIdx_value = lsqCtrl_io_enq_resp_0_sqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_1_lqIdx_flag = lsqCtrl_io_enq_resp_1_lqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_1_lqIdx_value = lsqCtrl_io_enq_resp_1_lqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_1_sqIdx_flag = lsqCtrl_io_enq_resp_1_sqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_1_sqIdx_value = lsqCtrl_io_enq_resp_1_sqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_2_lqIdx_flag = lsqCtrl_io_enq_resp_2_lqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_2_lqIdx_value = lsqCtrl_io_enq_resp_2_lqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_2_sqIdx_flag = lsqCtrl_io_enq_resp_2_sqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_2_sqIdx_value = lsqCtrl_io_enq_resp_2_sqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_3_lqIdx_flag = lsqCtrl_io_enq_resp_3_lqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_3_lqIdx_value = lsqCtrl_io_enq_resp_3_lqIdx_value; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_3_sqIdx_flag = lsqCtrl_io_enq_resp_3_sqIdx_flag; // @[Scheduler.scala 310:20]
  assign lsDispatch_io_enqLsq_resp_3_sqIdx_value = lsqCtrl_io_enq_resp_3_sqIdx_value; // @[Scheduler.scala 310:20]
  assign rs_clock = clock;
  assign rs_reset = reset;
  assign rs_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 421:20]
  assign rs_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 421:20]
  assign rs_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 421:20]
  assign rs_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 421:20]
  assign rs_io_fromDispatch_0_valid = arbiterOut_arbiter_io_out_0_valid; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_isRVC = arbiterOut_arbiter_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_brType = arbiterOut_arbiter_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_isCall = arbiterOut_arbiter_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_isRet = arbiterOut_arbiter_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_pred_taken = arbiterOut_arbiter_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_storeSetHit = arbiterOut_arbiter_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_loadWaitStrict = arbiterOut_arbiter_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_ssid = arbiterOut_arbiter_io_out_0_bits_cf_ssid; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_ftqPtr_flag = arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_ftqPtr_value = arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_cf_ftqOffset = arbiterOut_arbiter_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_srcType_0 = arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_srcType_1 = arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fuType = arbiterOut_arbiter_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fuOpType = arbiterOut_arbiter_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_rfWen = arbiterOut_arbiter_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpWen = arbiterOut_arbiter_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_selImm = arbiterOut_arbiter_io_out_0_bits_ctrl_selImm; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_ctrl_imm = arbiterOut_arbiter_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_srcState_0 = arbiterOut_arbiter_io_out_0_bits_srcState_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_srcState_1 = arbiterOut_arbiter_io_out_0_bits_srcState_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_psrc_0 = arbiterOut_arbiter_io_out_0_bits_psrc_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_psrc_1 = arbiterOut_arbiter_io_out_0_bits_psrc_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_pdest = arbiterOut_arbiter_io_out_0_bits_pdest; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_robIdx_flag = arbiterOut_arbiter_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_robIdx_value = arbiterOut_arbiter_io_out_0_bits_robIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_lqIdx_flag = arbiterOut_arbiter_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_lqIdx_value = arbiterOut_arbiter_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_sqIdx_flag = arbiterOut_arbiter_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_0_bits_sqIdx_value = arbiterOut_arbiter_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_valid = arbiterOut_arbiter_1_io_out_0_valid; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_isRVC = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_brType = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_isCall = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_isRet = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_pred_taken = arbiterOut_arbiter_1_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_storeSetHit = arbiterOut_arbiter_1_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_loadWaitStrict = arbiterOut_arbiter_1_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_ssid = arbiterOut_arbiter_1_io_out_0_bits_cf_ssid; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_ftqPtr_flag = arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_ftqPtr_value = arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_cf_ftqOffset = arbiterOut_arbiter_1_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_srcType_0 = arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_srcType_1 = arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fuType = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fuOpType = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_rfWen = arbiterOut_arbiter_1_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpWen = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_selImm = arbiterOut_arbiter_1_io_out_0_bits_ctrl_selImm; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_ctrl_imm = arbiterOut_arbiter_1_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_srcState_0 = arbiterOut_arbiter_1_io_out_0_bits_srcState_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_srcState_1 = arbiterOut_arbiter_1_io_out_0_bits_srcState_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_psrc_0 = arbiterOut_arbiter_1_io_out_0_bits_psrc_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_psrc_1 = arbiterOut_arbiter_1_io_out_0_bits_psrc_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_pdest = arbiterOut_arbiter_1_io_out_0_bits_pdest; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_robIdx_flag = arbiterOut_arbiter_1_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_robIdx_value = arbiterOut_arbiter_1_io_out_0_bits_robIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_lqIdx_flag = arbiterOut_arbiter_1_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_lqIdx_value = arbiterOut_arbiter_1_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_sqIdx_flag = arbiterOut_arbiter_1_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_fromDispatch_1_bits_sqIdx_value = arbiterOut_arbiter_1_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_io_srcRegValue_0_0 = intRfReadData_regfile_io_readPorts_0_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_io_srcRegValue_0_1 = intRfReadData_regfile_io_readPorts_1_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_io_srcRegValue_1_0 = intRfReadData_regfile_io_readPorts_2_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_io_srcRegValue_1_1 = intRfReadData_regfile_io_readPorts_3_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_io_fastUopsIn_0_valid = rs_io_fastWakeup_0_valid; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_0_bits_ctrl_rfWen = rs_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_0_bits_pdest = rs_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_1_valid = rs_io_fastWakeup_1_valid; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_1_bits_ctrl_rfWen = rs_io_fastWakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_1_bits_pdest = rs_io_fastWakeup_1_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_2_valid = rs_1_io_fastWakeup_0_valid; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_2_bits_ctrl_rfWen = rs_1_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_2_bits_pdest = rs_1_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_3_valid = io_fastUopIn_2_valid; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_3_bits_ctrl_rfWen = io_fastUopIn_2_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_3_bits_pdest = io_fastUopIn_2_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_4_valid = io_fastUopIn_3_valid; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_4_bits_ctrl_rfWen = io_fastUopIn_3_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_io_fastUopsIn_4_bits_pdest = io_fastUopIn_3_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_io_fastDatas_0 = io_writeback_0_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_io_fastDatas_1 = io_writeback_1_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_io_fastDatas_2 = io_writeback_4_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_io_fastDatas_3 = io_writeback_2_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_io_fastDatas_4 = io_writeback_3_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_io_slowPorts_0_valid = io_writeback_0_valid; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_0_bits_uop_ctrl_rfWen = io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_0_bits_uop_pdest = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_0_bits_data = io_writeback_0_bits_data; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_1_valid = io_writeback_1_valid; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_1_bits_uop_ctrl_rfWen = io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_1_bits_uop_pdest = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_1_bits_data = io_writeback_1_bits_data; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_2_valid = io_writeback_2_valid; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_2_bits_uop_ctrl_rfWen = io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_2_bits_uop_pdest = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_2_bits_data = io_writeback_2_bits_data; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_3_valid = io_writeback_3_valid; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_3_bits_uop_ctrl_rfWen = io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_3_bits_uop_pdest = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_3_bits_data = io_writeback_3_bits_data; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_4_valid = io_writeback_4_valid; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_4_bits_uop_ctrl_rfWen = io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_4_bits_uop_pdest = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_io_slowPorts_4_bits_data = io_writeback_4_bits_data; // @[Scheduler.scala 455:46]
  assign rs_1_clock = clock;
  assign rs_1_reset = reset;
  assign rs_1_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 421:20]
  assign rs_1_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 421:20]
  assign rs_1_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 421:20]
  assign rs_1_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 421:20]
  assign rs_1_io_fromDispatch_0_valid = arbiterOut_arbiter_io_out_1_valid; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_srcType_0 = arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_srcType_1 = arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fuType = arbiterOut_arbiter_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fuOpType = arbiterOut_arbiter_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_rfWen = arbiterOut_arbiter_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpWen = arbiterOut_arbiter_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_imm = arbiterOut_arbiter_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_srcState_0 = arbiterOut_arbiter_io_out_1_bits_srcState_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_srcState_1 = arbiterOut_arbiter_io_out_1_bits_srcState_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_psrc_0 = arbiterOut_arbiter_io_out_1_bits_psrc_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_psrc_1 = arbiterOut_arbiter_io_out_1_bits_psrc_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_pdest = arbiterOut_arbiter_io_out_1_bits_pdest; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_robIdx_flag = arbiterOut_arbiter_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_robIdx_value = arbiterOut_arbiter_io_out_1_bits_robIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_lqIdx_flag = arbiterOut_arbiter_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_0_bits_lqIdx_value = arbiterOut_arbiter_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_valid = arbiterOut_arbiter_1_io_out_1_valid; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_srcType_0 = arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_srcType_1 = arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fuType = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fuOpType = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_rfWen = arbiterOut_arbiter_1_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpWen = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_imm = arbiterOut_arbiter_1_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_srcState_0 = arbiterOut_arbiter_1_io_out_1_bits_srcState_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_srcState_1 = arbiterOut_arbiter_1_io_out_1_bits_srcState_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_psrc_0 = arbiterOut_arbiter_1_io_out_1_bits_psrc_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_psrc_1 = arbiterOut_arbiter_1_io_out_1_bits_psrc_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_pdest = arbiterOut_arbiter_1_io_out_1_bits_pdest; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_robIdx_flag = arbiterOut_arbiter_1_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_robIdx_value = arbiterOut_arbiter_1_io_out_1_bits_robIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_lqIdx_flag = arbiterOut_arbiter_1_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_fromDispatch_1_bits_lqIdx_value = arbiterOut_arbiter_1_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_1_io_srcRegValue_0_0 = intRfReadData_regfile_io_readPorts_0_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_1_io_srcRegValue_0_1 = intRfReadData_regfile_io_readPorts_1_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_1_io_srcRegValue_1_0 = intRfReadData_regfile_io_readPorts_2_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_1_io_srcRegValue_1_1 = intRfReadData_regfile_io_readPorts_3_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_1_io_deq_0_ready = io_issue_2_ready; // @[Scheduler.scala 424:15]
  assign rs_1_io_fastUopsIn_0_valid = rs_1_io_fastWakeup_0_valid; // @[ReservationStation.scala 207:41]
  assign rs_1_io_fastUopsIn_0_bits_ctrl_rfWen = rs_1_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_1_io_fastUopsIn_0_bits_pdest = rs_1_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_1_io_fastDatas_0 = io_writeback_4_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_1_io_slowPorts_0_valid = io_writeback_0_valid; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_0_bits_uop_ctrl_rfWen = io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_0_bits_uop_pdest = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_0_bits_data = io_writeback_0_bits_data; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_1_valid = io_writeback_1_valid; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_1_bits_uop_ctrl_rfWen = io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_1_bits_uop_pdest = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_1_bits_data = io_writeback_1_bits_data; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_2_valid = io_writeback_2_valid; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_2_bits_uop_ctrl_rfWen = io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_2_bits_uop_pdest = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_2_bits_data = io_writeback_2_bits_data; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_3_valid = io_writeback_3_valid; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_3_bits_uop_ctrl_rfWen = io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_3_bits_uop_pdest = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_3_bits_data = io_writeback_3_bits_data; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_4_valid = io_writeback_4_valid; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_4_bits_uop_ctrl_rfWen = io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_4_bits_uop_pdest = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_1_io_slowPorts_4_bits_data = io_writeback_4_bits_data; // @[Scheduler.scala 455:46]
  assign rs_2_clock = clock;
  assign rs_2_reset = reset;
  assign rs_2_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 421:20]
  assign rs_2_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 421:20]
  assign rs_2_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 421:20]
  assign rs_2_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 421:20]
  assign rs_2_io_fromDispatch_0_valid = arbiterOut_arbiter_io_out_2_valid; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_pd_isRVC = arbiterOut_arbiter_io_out_2_bits_cf_pd_isRVC; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_pd_brType = arbiterOut_arbiter_io_out_2_bits_cf_pd_brType; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_pd_isCall = arbiterOut_arbiter_io_out_2_bits_cf_pd_isCall; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_pd_isRet = arbiterOut_arbiter_io_out_2_bits_cf_pd_isRet; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_pred_taken = arbiterOut_arbiter_io_out_2_bits_cf_pred_taken; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_ftqPtr_flag = arbiterOut_arbiter_io_out_2_bits_cf_ftqPtr_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_ftqPtr_value = arbiterOut_arbiter_io_out_2_bits_cf_ftqPtr_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_cf_ftqOffset = arbiterOut_arbiter_io_out_2_bits_cf_ftqOffset; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_srcType_0 = arbiterOut_arbiter_io_out_2_bits_ctrl_srcType_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_srcType_1 = arbiterOut_arbiter_io_out_2_bits_ctrl_srcType_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fuType = arbiterOut_arbiter_io_out_2_bits_ctrl_fuType; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fuOpType = arbiterOut_arbiter_io_out_2_bits_ctrl_fuOpType; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_rfWen = arbiterOut_arbiter_io_out_2_bits_ctrl_rfWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpWen = arbiterOut_arbiter_io_out_2_bits_ctrl_fpWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_imm = arbiterOut_arbiter_io_out_2_bits_ctrl_imm; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_isAddSub = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_fromInt = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_wflags = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_wflags; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_fpWen = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_div = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_div; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_sqrt = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_fcvt = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_typ = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_typ; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_fmt = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_fmt; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_ren3 = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_ren3; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_ctrl_fpu_rm = arbiterOut_arbiter_io_out_2_bits_ctrl_fpu_rm; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_srcState_0 = arbiterOut_arbiter_io_out_2_bits_srcState_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_srcState_1 = arbiterOut_arbiter_io_out_2_bits_srcState_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_psrc_0 = arbiterOut_arbiter_io_out_2_bits_psrc_0; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_psrc_1 = arbiterOut_arbiter_io_out_2_bits_psrc_1; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_pdest = arbiterOut_arbiter_io_out_2_bits_pdest; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_robIdx_flag = arbiterOut_arbiter_io_out_2_bits_robIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_robIdx_value = arbiterOut_arbiter_io_out_2_bits_robIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_lqIdx_flag = arbiterOut_arbiter_io_out_2_bits_lqIdx_flag; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_fromDispatch_0_bits_lqIdx_value = arbiterOut_arbiter_io_out_2_bits_lqIdx_value; // @[Scheduler.scala 493:25 494:12]
  assign rs_2_io_srcRegValue_0_0 = intRfReadData_regfile_io_readPorts_0_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_2_io_srcRegValue_0_1 = intRfReadData_regfile_io_readPorts_1_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_2_io_deq_0_ready = io_issue_3_ready; // @[Scheduler.scala 424:15]
  assign rs_2_io_slowPorts_0_valid = io_writeback_0_valid; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_0_bits_uop_ctrl_rfWen = io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_0_bits_uop_pdest = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_0_bits_data = io_writeback_0_bits_data; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_1_valid = io_writeback_1_valid; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_1_bits_uop_ctrl_rfWen = io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_1_bits_uop_pdest = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_1_bits_data = io_writeback_1_bits_data; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_2_valid = io_writeback_2_valid; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_2_bits_uop_ctrl_rfWen = io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_2_bits_uop_pdest = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_2_bits_data = io_writeback_2_bits_data; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_3_valid = io_writeback_3_valid; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_3_bits_uop_ctrl_rfWen = io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_3_bits_uop_pdest = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_3_bits_data = io_writeback_3_bits_data; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_4_valid = io_writeback_4_valid; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_4_bits_uop_ctrl_rfWen = io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_4_bits_uop_pdest = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_2_io_slowPorts_4_bits_data = io_writeback_4_bits_data; // @[Scheduler.scala 455:46]
  assign rs_2_io_jump_jumpPc = rs_io_jump_jumpPc_r; // @[Scheduler.scala 432:29]
  assign rs_2_io_jump_jalr_target = io_extra_jalr_target; // @[Scheduler.scala 433:34]
  assign rs_3_clock = clock;
  assign rs_3_reset = reset;
  assign rs_3_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 421:20]
  assign rs_3_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 421:20]
  assign rs_3_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 421:20]
  assign rs_3_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 421:20]
  assign rs_3_io_fromDispatch_0_valid = lsDispatch_io_out_0_valid; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = lsDispatch_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = lsDispatch_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_pd_isRVC = lsDispatch_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_pd_brType = lsDispatch_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_pd_isCall = lsDispatch_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_pd_isRet = lsDispatch_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_pred_taken = lsDispatch_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_storeSetHit = lsDispatch_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_loadWaitStrict = lsDispatch_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_ssid = lsDispatch_io_out_0_bits_cf_ssid; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_ftqPtr_flag = lsDispatch_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_ftqPtr_value = lsDispatch_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_cf_ftqOffset = lsDispatch_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_ctrl_srcType_0 = lsDispatch_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_ctrl_fuType = lsDispatch_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_ctrl_fuOpType = lsDispatch_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_ctrl_rfWen = lsDispatch_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_ctrl_fpWen = lsDispatch_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_ctrl_imm = lsDispatch_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_srcState_0 = lsDispatch_io_out_0_bits_srcState_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_psrc_0 = lsDispatch_io_out_0_bits_psrc_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_psrc_1 = lsDispatch_io_out_0_bits_psrc_1; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_pdest = lsDispatch_io_out_0_bits_pdest; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_robIdx_flag = lsDispatch_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_robIdx_value = lsDispatch_io_out_0_bits_robIdx_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_lqIdx_flag = lsDispatch_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_lqIdx_value = lsDispatch_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_sqIdx_flag = lsDispatch_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_0_bits_sqIdx_value = lsDispatch_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_valid = lsDispatch_io_out_1_valid; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = lsDispatch_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = lsDispatch_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_pd_isRVC = lsDispatch_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_pd_brType = lsDispatch_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_pd_isCall = lsDispatch_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_pd_isRet = lsDispatch_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_pred_taken = lsDispatch_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_storeSetHit = lsDispatch_io_out_1_bits_cf_storeSetHit; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_loadWaitStrict = lsDispatch_io_out_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_ssid = lsDispatch_io_out_1_bits_cf_ssid; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_ftqPtr_flag = lsDispatch_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_ftqPtr_value = lsDispatch_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_cf_ftqOffset = lsDispatch_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_ctrl_srcType_0 = lsDispatch_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_ctrl_fuType = lsDispatch_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_ctrl_fuOpType = lsDispatch_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_ctrl_rfWen = lsDispatch_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_ctrl_fpWen = lsDispatch_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_ctrl_imm = lsDispatch_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_srcState_0 = lsDispatch_io_out_1_bits_srcState_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_psrc_0 = lsDispatch_io_out_1_bits_psrc_0; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_psrc_1 = lsDispatch_io_out_1_bits_psrc_1; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_pdest = lsDispatch_io_out_1_bits_pdest; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_robIdx_flag = lsDispatch_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_robIdx_value = lsDispatch_io_out_1_bits_robIdx_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_lqIdx_flag = lsDispatch_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_lqIdx_value = lsDispatch_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_sqIdx_flag = lsDispatch_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_3_io_fromDispatch_1_bits_sqIdx_value = lsDispatch_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_3_io_srcRegValue_0_0 = intRfReadData_regfile_io_readPorts_4_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_3_io_srcRegValue_1_0 = intRfReadData_regfile_io_readPorts_5_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_3_io_deq_0_ready = io_issue_4_ready; // @[Scheduler.scala 424:15]
  assign rs_3_io_deq_1_ready = io_issue_5_ready; // @[Scheduler.scala 424:15]
  assign rs_3_io_fastUopsIn_0_valid = rs_io_fastWakeup_0_valid; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_0_bits_ctrl_rfWen = rs_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_0_bits_pdest = rs_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_1_valid = rs_io_fastWakeup_1_valid; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_1_bits_ctrl_rfWen = rs_io_fastWakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_1_bits_pdest = rs_io_fastWakeup_1_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_2_valid = io_fastUopIn_2_valid; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_2_bits_ctrl_rfWen = io_fastUopIn_2_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_2_bits_pdest = io_fastUopIn_2_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_3_valid = io_fastUopIn_3_valid; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_3_bits_ctrl_rfWen = io_fastUopIn_3_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastUopsIn_3_bits_pdest = io_fastUopIn_3_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_3_io_fastDatas_0 = io_writeback_0_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_3_io_fastDatas_1 = io_writeback_1_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_3_io_fastDatas_2 = io_writeback_2_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_3_io_fastDatas_3 = io_writeback_3_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_3_io_slowPorts_0_valid = io_writeback_0_valid; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_0_bits_uop_ctrl_rfWen = io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_0_bits_uop_pdest = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_0_bits_data = io_writeback_0_bits_data; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_1_valid = io_writeback_1_valid; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_1_bits_uop_ctrl_rfWen = io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_1_bits_uop_pdest = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_1_bits_data = io_writeback_1_bits_data; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_2_valid = io_writeback_2_valid; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_2_bits_uop_ctrl_rfWen = io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_2_bits_uop_pdest = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_2_bits_data = io_writeback_2_bits_data; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_3_valid = io_writeback_3_valid; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_3_bits_uop_ctrl_rfWen = io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_3_bits_uop_pdest = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_3_bits_data = io_writeback_3_bits_data; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_4_valid = io_writeback_4_valid; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_4_bits_uop_ctrl_rfWen = io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_4_bits_uop_pdest = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_3_io_slowPorts_4_bits_data = io_writeback_4_bits_data; // @[Scheduler.scala 455:46]
  assign rs_3_io_feedback_0_feedbackSlow_valid = io_extra_feedback_0_feedbackSlow_valid; // @[Scheduler.scala 445:24]
  assign rs_3_io_feedback_0_feedbackSlow_bits_rsIdx = io_extra_feedback_0_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 445:24]
  assign rs_3_io_feedback_0_feedbackSlow_bits_hit = io_extra_feedback_0_feedbackSlow_bits_hit; // @[Scheduler.scala 445:24]
  assign rs_3_io_feedback_0_feedbackFast_valid = io_extra_feedback_0_feedbackFast_valid; // @[Scheduler.scala 444:24]
  assign rs_3_io_feedback_0_feedbackFast_bits_rsIdx = io_extra_feedback_0_feedbackFast_bits_rsIdx; // @[Scheduler.scala 444:24]
  assign rs_3_io_feedback_1_feedbackSlow_valid = io_extra_feedback_1_feedbackSlow_valid; // @[Scheduler.scala 445:24]
  assign rs_3_io_feedback_1_feedbackSlow_bits_rsIdx = io_extra_feedback_1_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 445:24]
  assign rs_3_io_feedback_1_feedbackSlow_bits_hit = io_extra_feedback_1_feedbackSlow_bits_hit; // @[Scheduler.scala 445:24]
  assign rs_3_io_feedback_1_feedbackFast_valid = io_extra_feedback_1_feedbackFast_valid; // @[Scheduler.scala 444:24]
  assign rs_3_io_feedback_1_feedbackFast_bits_rsIdx = io_extra_feedback_1_feedbackFast_bits_rsIdx; // @[Scheduler.scala 444:24]
  assign rs_4_clock = clock;
  assign rs_4_reset = reset;
  assign rs_4_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 421:20]
  assign rs_4_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 421:20]
  assign rs_4_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 421:20]
  assign rs_4_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 421:20]
  assign rs_4_io_fromDispatch_0_valid = lsDispatch_io_out_2_valid; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = lsDispatch_io_out_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = lsDispatch_io_out_2_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_pd_isRVC = lsDispatch_io_out_2_bits_cf_pd_isRVC; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_pd_brType = lsDispatch_io_out_2_bits_cf_pd_brType; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_pd_isCall = lsDispatch_io_out_2_bits_cf_pd_isCall; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_pd_isRet = lsDispatch_io_out_2_bits_cf_pd_isRet; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_pred_taken = lsDispatch_io_out_2_bits_cf_pred_taken; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_storeSetHit = lsDispatch_io_out_2_bits_cf_storeSetHit; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_loadWaitStrict = lsDispatch_io_out_2_bits_cf_loadWaitStrict; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_ssid = lsDispatch_io_out_2_bits_cf_ssid; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_ftqPtr_flag = lsDispatch_io_out_2_bits_cf_ftqPtr_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_ftqPtr_value = lsDispatch_io_out_2_bits_cf_ftqPtr_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_cf_ftqOffset = lsDispatch_io_out_2_bits_cf_ftqOffset; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_ctrl_srcType_0 = lsDispatch_io_out_2_bits_ctrl_srcType_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_ctrl_fuType = lsDispatch_io_out_2_bits_ctrl_fuType; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_ctrl_fuOpType = lsDispatch_io_out_2_bits_ctrl_fuOpType; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_ctrl_rfWen = lsDispatch_io_out_2_bits_ctrl_rfWen; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_ctrl_fpWen = lsDispatch_io_out_2_bits_ctrl_fpWen; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_ctrl_imm = lsDispatch_io_out_2_bits_ctrl_imm; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_srcState_0 = lsDispatch_io_out_2_bits_srcState_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_psrc_0 = lsDispatch_io_out_2_bits_psrc_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_pdest = lsDispatch_io_out_2_bits_pdest; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_robIdx_flag = lsDispatch_io_out_2_bits_robIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_robIdx_value = lsDispatch_io_out_2_bits_robIdx_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_lqIdx_flag = lsDispatch_io_out_2_bits_lqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_lqIdx_value = lsDispatch_io_out_2_bits_lqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_sqIdx_flag = lsDispatch_io_out_2_bits_sqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_0_bits_sqIdx_value = lsDispatch_io_out_2_bits_sqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_valid = lsDispatch_io_out_3_valid; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = lsDispatch_io_out_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = lsDispatch_io_out_3_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_pd_isRVC = lsDispatch_io_out_3_bits_cf_pd_isRVC; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_pd_brType = lsDispatch_io_out_3_bits_cf_pd_brType; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_pd_isCall = lsDispatch_io_out_3_bits_cf_pd_isCall; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_pd_isRet = lsDispatch_io_out_3_bits_cf_pd_isRet; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_pred_taken = lsDispatch_io_out_3_bits_cf_pred_taken; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_storeSetHit = lsDispatch_io_out_3_bits_cf_storeSetHit; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_loadWaitStrict = lsDispatch_io_out_3_bits_cf_loadWaitStrict; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_ssid = lsDispatch_io_out_3_bits_cf_ssid; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_ftqPtr_flag = lsDispatch_io_out_3_bits_cf_ftqPtr_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_ftqPtr_value = lsDispatch_io_out_3_bits_cf_ftqPtr_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_cf_ftqOffset = lsDispatch_io_out_3_bits_cf_ftqOffset; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_ctrl_srcType_0 = lsDispatch_io_out_3_bits_ctrl_srcType_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_ctrl_fuType = lsDispatch_io_out_3_bits_ctrl_fuType; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_ctrl_fuOpType = lsDispatch_io_out_3_bits_ctrl_fuOpType; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_ctrl_rfWen = lsDispatch_io_out_3_bits_ctrl_rfWen; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_ctrl_fpWen = lsDispatch_io_out_3_bits_ctrl_fpWen; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_ctrl_imm = lsDispatch_io_out_3_bits_ctrl_imm; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_srcState_0 = lsDispatch_io_out_3_bits_srcState_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_psrc_0 = lsDispatch_io_out_3_bits_psrc_0; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_pdest = lsDispatch_io_out_3_bits_pdest; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_robIdx_flag = lsDispatch_io_out_3_bits_robIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_robIdx_value = lsDispatch_io_out_3_bits_robIdx_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_lqIdx_flag = lsDispatch_io_out_3_bits_lqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_lqIdx_value = lsDispatch_io_out_3_bits_lqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_sqIdx_flag = lsDispatch_io_out_3_bits_sqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_4_io_fromDispatch_1_bits_sqIdx_value = lsDispatch_io_out_3_bits_sqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_4_io_srcRegValue_0_0 = intRfReadData_regfile_io_readPorts_6_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_4_io_srcRegValue_1_0 = intRfReadData_regfile_io_readPorts_7_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_4_io_deq_0_ready = io_issue_6_ready; // @[Scheduler.scala 424:15]
  assign rs_4_io_deq_1_ready = io_issue_7_ready; // @[Scheduler.scala 424:15]
  assign rs_4_io_fastUopsIn_0_valid = rs_io_fastWakeup_0_valid; // @[ReservationStation.scala 207:41]
  assign rs_4_io_fastUopsIn_0_bits_ctrl_rfWen = rs_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_4_io_fastUopsIn_0_bits_pdest = rs_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_4_io_fastUopsIn_1_valid = rs_io_fastWakeup_1_valid; // @[ReservationStation.scala 207:41]
  assign rs_4_io_fastUopsIn_1_bits_ctrl_rfWen = rs_io_fastWakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 207:41]
  assign rs_4_io_fastUopsIn_1_bits_pdest = rs_io_fastWakeup_1_bits_pdest; // @[ReservationStation.scala 207:41]
  assign rs_4_io_fastDatas_0 = io_writeback_0_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_4_io_fastDatas_1 = io_writeback_1_bits_data; // @[ReservationStation.scala 208:40]
  assign rs_4_io_slowPorts_0_valid = io_writeback_0_valid; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_0_bits_uop_ctrl_rfWen = io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_0_bits_uop_pdest = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_0_bits_data = io_writeback_0_bits_data; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_1_valid = io_writeback_1_valid; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_1_bits_uop_ctrl_rfWen = io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_1_bits_uop_pdest = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_1_bits_data = io_writeback_1_bits_data; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_2_valid = io_writeback_2_valid; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_2_bits_uop_ctrl_rfWen = io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_2_bits_uop_pdest = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_2_bits_data = io_writeback_2_bits_data; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_3_valid = io_writeback_3_valid; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_3_bits_uop_ctrl_rfWen = io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_3_bits_uop_pdest = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_3_bits_data = io_writeback_3_bits_data; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_4_valid = io_writeback_4_valid; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_4_bits_uop_ctrl_rfWen = io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_4_bits_uop_pdest = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 455:46]
  assign rs_4_io_slowPorts_4_bits_data = io_writeback_4_bits_data; // @[Scheduler.scala 455:46]
  assign rs_4_io_feedback_0_feedbackSlow_valid = io_extra_feedback_2_feedbackSlow_valid; // @[Scheduler.scala 445:24]
  assign rs_4_io_feedback_0_feedbackSlow_bits_rsIdx = io_extra_feedback_2_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 445:24]
  assign rs_4_io_feedback_0_feedbackSlow_bits_hit = io_extra_feedback_2_feedbackSlow_bits_hit; // @[Scheduler.scala 445:24]
  assign rs_4_io_feedback_1_feedbackSlow_valid = io_extra_feedback_3_feedbackSlow_valid; // @[Scheduler.scala 445:24]
  assign rs_4_io_feedback_1_feedbackSlow_bits_rsIdx = io_extra_feedback_3_feedbackSlow_bits_rsIdx; // @[Scheduler.scala 445:24]
  assign rs_4_io_feedback_1_feedbackSlow_bits_hit = io_extra_feedback_3_feedbackSlow_bits_hit; // @[Scheduler.scala 445:24]
  assign rs_5_clock = clock;
  assign rs_5_reset = reset;
  assign rs_5_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 421:20]
  assign rs_5_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 421:20]
  assign rs_5_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 421:20]
  assign rs_5_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 421:20]
  assign rs_5_io_fromDispatch_0_valid = lsDispatch_io_out_4_valid; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = lsDispatch_io_out_4_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = lsDispatch_io_out_4_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_pd_isRVC = lsDispatch_io_out_4_bits_cf_pd_isRVC; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_pd_brType = lsDispatch_io_out_4_bits_cf_pd_brType; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_pd_isCall = lsDispatch_io_out_4_bits_cf_pd_isCall; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_pd_isRet = lsDispatch_io_out_4_bits_cf_pd_isRet; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_pred_taken = lsDispatch_io_out_4_bits_cf_pred_taken; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_storeSetHit = lsDispatch_io_out_4_bits_cf_storeSetHit; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_loadWaitStrict = lsDispatch_io_out_4_bits_cf_loadWaitStrict; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_ssid = lsDispatch_io_out_4_bits_cf_ssid; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_ftqPtr_flag = lsDispatch_io_out_4_bits_cf_ftqPtr_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_ftqPtr_value = lsDispatch_io_out_4_bits_cf_ftqPtr_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_cf_ftqOffset = lsDispatch_io_out_4_bits_cf_ftqOffset; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_ctrl_srcType_0 = lsDispatch_io_out_4_bits_ctrl_srcType_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_ctrl_fuType = lsDispatch_io_out_4_bits_ctrl_fuType; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_ctrl_fuOpType = lsDispatch_io_out_4_bits_ctrl_fuOpType; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_ctrl_rfWen = lsDispatch_io_out_4_bits_ctrl_rfWen; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_ctrl_fpWen = lsDispatch_io_out_4_bits_ctrl_fpWen; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_ctrl_imm = lsDispatch_io_out_4_bits_ctrl_imm; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_srcState_0 = lsDispatch_io_out_4_bits_srcState_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_psrc_0 = lsDispatch_io_out_4_bits_psrc_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_pdest = lsDispatch_io_out_4_bits_pdest; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_robIdx_flag = lsDispatch_io_out_4_bits_robIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_robIdx_value = lsDispatch_io_out_4_bits_robIdx_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_lqIdx_flag = lsDispatch_io_out_4_bits_lqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_lqIdx_value = lsDispatch_io_out_4_bits_lqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_sqIdx_flag = lsDispatch_io_out_4_bits_sqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_0_bits_sqIdx_value = lsDispatch_io_out_4_bits_sqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_valid = lsDispatch_io_out_5_valid; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = lsDispatch_io_out_5_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = lsDispatch_io_out_5_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_pd_isRVC = lsDispatch_io_out_5_bits_cf_pd_isRVC; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_pd_brType = lsDispatch_io_out_5_bits_cf_pd_brType; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_pd_isCall = lsDispatch_io_out_5_bits_cf_pd_isCall; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_pd_isRet = lsDispatch_io_out_5_bits_cf_pd_isRet; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_pred_taken = lsDispatch_io_out_5_bits_cf_pred_taken; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_storeSetHit = lsDispatch_io_out_5_bits_cf_storeSetHit; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_loadWaitStrict = lsDispatch_io_out_5_bits_cf_loadWaitStrict; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_ssid = lsDispatch_io_out_5_bits_cf_ssid; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_ftqPtr_flag = lsDispatch_io_out_5_bits_cf_ftqPtr_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_ftqPtr_value = lsDispatch_io_out_5_bits_cf_ftqPtr_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_cf_ftqOffset = lsDispatch_io_out_5_bits_cf_ftqOffset; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_ctrl_srcType_0 = lsDispatch_io_out_5_bits_ctrl_srcType_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_ctrl_fuType = lsDispatch_io_out_5_bits_ctrl_fuType; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_ctrl_fuOpType = lsDispatch_io_out_5_bits_ctrl_fuOpType; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_ctrl_rfWen = lsDispatch_io_out_5_bits_ctrl_rfWen; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_ctrl_fpWen = lsDispatch_io_out_5_bits_ctrl_fpWen; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_ctrl_imm = lsDispatch_io_out_5_bits_ctrl_imm; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_srcState_0 = lsDispatch_io_out_5_bits_srcState_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_psrc_0 = lsDispatch_io_out_5_bits_psrc_0; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_pdest = lsDispatch_io_out_5_bits_pdest; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_robIdx_flag = lsDispatch_io_out_5_bits_robIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_robIdx_value = lsDispatch_io_out_5_bits_robIdx_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_lqIdx_flag = lsDispatch_io_out_5_bits_lqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_lqIdx_value = lsDispatch_io_out_5_bits_lqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_sqIdx_flag = lsDispatch_io_out_5_bits_sqIdx_flag; // @[Scheduler.scala 487:61]
  assign rs_5_io_fromDispatch_1_bits_sqIdx_value = lsDispatch_io_out_5_bits_sqIdx_value; // @[Scheduler.scala 487:61]
  assign rs_5_io_srcRegValue_0_0 = intRfReadData_regfile_io_readPorts_8_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_5_io_srcRegValue_1_0 = intRfReadData_regfile_io_readPorts_9_data; // @[Scheduler.scala 499:{31,31}]
  assign rs_5_io_fpRegValue_0 = fpRfReadData_delay_io_out_0; // @[Scheduler.scala 509:{30,30}]
  assign rs_5_io_fpRegValue_1 = fpRfReadData_delay_io_out_1; // @[Scheduler.scala 509:{30,30}]
  assign rs_5_io_deq_0_ready = io_issue_8_ready; // @[Scheduler.scala 424:15]
  assign rs_5_io_deq_1_ready = io_issue_9_ready; // @[Scheduler.scala 424:15]
  assign rs_5_io_slowPorts_0_valid = io_writeback_0_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_0_bits_uop_ctrl_rfWen = io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_0_bits_uop_ctrl_fpWen = io_writeback_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_0_bits_uop_pdest = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_0_bits_data = io_writeback_0_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_1_valid = io_writeback_1_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_1_bits_uop_ctrl_rfWen = io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_1_bits_uop_ctrl_fpWen = io_writeback_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_1_bits_uop_pdest = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_1_bits_data = io_writeback_1_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_2_valid = io_writeback_2_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_2_bits_uop_ctrl_rfWen = io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_2_bits_uop_ctrl_fpWen = io_writeback_2_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_2_bits_uop_pdest = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_2_bits_data = io_writeback_2_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_3_valid = io_writeback_3_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_3_bits_uop_ctrl_rfWen = io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_3_bits_uop_ctrl_fpWen = io_writeback_3_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_3_bits_uop_pdest = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_3_bits_data = io_writeback_3_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_4_valid = io_writeback_4_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_4_bits_uop_ctrl_rfWen = io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_4_bits_uop_ctrl_fpWen = io_writeback_4_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_4_bits_uop_pdest = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_4_bits_data = io_writeback_4_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_5_valid = REG__0_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_5_bits_uop_ctrl_rfWen = REG__0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_5_bits_uop_ctrl_fpWen = REG__0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_5_bits_uop_pdest = REG__0_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_5_bits_data = REG__0_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_6_valid = REG__1_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_6_bits_uop_ctrl_rfWen = REG__1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_6_bits_uop_ctrl_fpWen = REG__1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_6_bits_uop_pdest = REG__1_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_6_bits_data = REG__1_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_7_valid = REG__2_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_7_bits_uop_ctrl_rfWen = REG__2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_7_bits_uop_ctrl_fpWen = REG__2_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_7_bits_uop_pdest = REG__2_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_7_bits_data = REG__2_bits_data; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_8_valid = REG__3_valid; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_8_bits_uop_ctrl_rfWen = REG__3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_8_bits_uop_ctrl_fpWen = REG__3_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_8_bits_uop_pdest = REG__3_bits_uop_pdest; // @[Scheduler.scala 458:45]
  assign rs_5_io_slowPorts_8_bits_data = REG__3_bits_data; // @[Scheduler.scala 458:45]
  assign lsqCtrl_clock = clock;
  assign lsqCtrl_reset = reset;
  assign lsqCtrl_io_redirect_valid = redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign lsqCtrl_io_enq_needAlloc_0 = lsDispatch_io_enqLsq_needAlloc_0; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_needAlloc_1 = lsDispatch_io_enqLsq_needAlloc_1; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_needAlloc_2 = lsDispatch_io_enqLsq_needAlloc_2; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_needAlloc_3 = lsDispatch_io_enqLsq_needAlloc_3; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_valid = lsDispatch_io_enqLsq_req_0_valid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_bits_cf_trigger_backendEn_0 = lsDispatch_io_enqLsq_req_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_bits_cf_storeSetHit = lsDispatch_io_enqLsq_req_0_bits_cf_storeSetHit; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_bits_cf_ssid = lsDispatch_io_enqLsq_req_0_bits_cf_ssid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_bits_ctrl_fuOpType = lsDispatch_io_enqLsq_req_0_bits_ctrl_fuOpType; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_bits_robIdx_flag = lsDispatch_io_enqLsq_req_0_bits_robIdx_flag; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_0_bits_robIdx_value = lsDispatch_io_enqLsq_req_0_bits_robIdx_value; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_valid = lsDispatch_io_enqLsq_req_1_valid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_bits_cf_trigger_backendEn_0 = lsDispatch_io_enqLsq_req_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_bits_cf_storeSetHit = lsDispatch_io_enqLsq_req_1_bits_cf_storeSetHit; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_bits_cf_ssid = lsDispatch_io_enqLsq_req_1_bits_cf_ssid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_bits_ctrl_fuOpType = lsDispatch_io_enqLsq_req_1_bits_ctrl_fuOpType; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_bits_robIdx_flag = lsDispatch_io_enqLsq_req_1_bits_robIdx_flag; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_1_bits_robIdx_value = lsDispatch_io_enqLsq_req_1_bits_robIdx_value; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_valid = lsDispatch_io_enqLsq_req_2_valid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_bits_cf_trigger_backendEn_0 = lsDispatch_io_enqLsq_req_2_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_bits_cf_storeSetHit = lsDispatch_io_enqLsq_req_2_bits_cf_storeSetHit; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_bits_cf_ssid = lsDispatch_io_enqLsq_req_2_bits_cf_ssid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_bits_ctrl_fuOpType = lsDispatch_io_enqLsq_req_2_bits_ctrl_fuOpType; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_bits_robIdx_flag = lsDispatch_io_enqLsq_req_2_bits_robIdx_flag; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_2_bits_robIdx_value = lsDispatch_io_enqLsq_req_2_bits_robIdx_value; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_valid = lsDispatch_io_enqLsq_req_3_valid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_bits_cf_trigger_backendEn_0 = lsDispatch_io_enqLsq_req_3_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_bits_cf_storeSetHit = lsDispatch_io_enqLsq_req_3_bits_cf_storeSetHit; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_bits_cf_ssid = lsDispatch_io_enqLsq_req_3_bits_cf_ssid; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_bits_ctrl_fuOpType = lsDispatch_io_enqLsq_req_3_bits_ctrl_fuOpType; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_bits_robIdx_flag = lsDispatch_io_enqLsq_req_3_bits_robIdx_flag; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_enq_req_3_bits_robIdx_value = lsDispatch_io_enqLsq_req_3_bits_robIdx_value; // @[Scheduler.scala 310:20]
  assign lsqCtrl_io_lcommit = io_extra_lcommit; // @[Scheduler.scala 311:24]
  assign lsqCtrl_io_scommit = io_extra_scommit; // @[Scheduler.scala 312:24]
  assign lsqCtrl_io_lqCancelCnt = io_extra_lqCancelCnt; // @[Scheduler.scala 313:28]
  assign lsqCtrl_io_sqCancelCnt = io_extra_sqCancelCnt; // @[Scheduler.scala 314:28]
  assign intBusyTable_clock = clock;
  assign intBusyTable_reset = reset;
  assign intBusyTable_io_allocPregs_0_valid = io_allocPregs_0_isInt; // @[Scheduler.scala 323:23]
  assign intBusyTable_io_allocPregs_0_bits = io_allocPregs_0_preg; // @[Scheduler.scala 324:22]
  assign intBusyTable_io_allocPregs_1_valid = io_allocPregs_1_isInt; // @[Scheduler.scala 323:23]
  assign intBusyTable_io_allocPregs_1_bits = io_allocPregs_1_preg; // @[Scheduler.scala 324:22]
  assign intBusyTable_io_wbPregs_0_valid = io_writeback_0_valid & io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 327:35]
  assign intBusyTable_io_wbPregs_0_bits = io_writeback_0_bits_uop_pdest; // @[Scheduler.scala 328:19]
  assign intBusyTable_io_wbPregs_1_valid = io_writeback_1_valid & io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 327:35]
  assign intBusyTable_io_wbPregs_1_bits = io_writeback_1_bits_uop_pdest; // @[Scheduler.scala 328:19]
  assign intBusyTable_io_wbPregs_2_valid = io_writeback_2_valid & io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 327:35]
  assign intBusyTable_io_wbPregs_2_bits = io_writeback_2_bits_uop_pdest; // @[Scheduler.scala 328:19]
  assign intBusyTable_io_wbPregs_3_valid = io_writeback_3_valid & io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 327:35]
  assign intBusyTable_io_wbPregs_3_bits = io_writeback_3_bits_uop_pdest; // @[Scheduler.scala 328:19]
  assign intBusyTable_io_wbPregs_4_valid = io_writeback_4_valid & io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 327:35]
  assign intBusyTable_io_wbPregs_4_bits = io_writeback_4_bits_uop_pdest; // @[Scheduler.scala 328:19]
  assign intBusyTable_io_read_0_req = intDispatch_io_readIntState_0_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_1_req = intDispatch_io_readIntState_1_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_2_req = intDispatch_io_readIntState_2_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_3_req = intDispatch_io_readIntState_3_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_8_req = lsDispatch_io_readIntState_0_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_9_req = lsDispatch_io_readIntState_1_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_10_req = lsDispatch_io_readIntState_2_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_11_req = lsDispatch_io_readIntState_3_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_12_req = lsDispatch_io_readIntState_4_req; // @[Scheduler.scala 330:23]
  assign intBusyTable_io_read_13_req = lsDispatch_io_readIntState_5_req; // @[Scheduler.scala 330:23]
  assign fpBusyTable_clock = clock;
  assign fpBusyTable_reset = reset;
  assign fpBusyTable_io_allocPregs_0_valid = io_allocPregs_0_isFp; // @[Scheduler.scala 342:25]
  assign fpBusyTable_io_allocPregs_0_bits = io_allocPregs_0_preg; // @[Scheduler.scala 343:24]
  assign fpBusyTable_io_allocPregs_1_valid = io_allocPregs_1_isFp; // @[Scheduler.scala 342:25]
  assign fpBusyTable_io_allocPregs_1_bits = io_allocPregs_1_preg; // @[Scheduler.scala 343:24]
  assign fpBusyTable_io_wbPregs_0_valid = io_writeback_5_valid & io_writeback_5_bits_uop_ctrl_fpWen; // @[Scheduler.scala 346:37]
  assign fpBusyTable_io_wbPregs_0_bits = io_writeback_5_bits_uop_pdest; // @[Scheduler.scala 347:21]
  assign fpBusyTable_io_wbPregs_1_valid = io_writeback_6_valid & io_writeback_6_bits_uop_ctrl_fpWen; // @[Scheduler.scala 346:37]
  assign fpBusyTable_io_wbPregs_1_bits = io_writeback_6_bits_uop_pdest; // @[Scheduler.scala 347:21]
  assign fpBusyTable_io_wbPregs_2_valid = io_writeback_7_valid & io_writeback_7_bits_uop_ctrl_fpWen; // @[Scheduler.scala 346:37]
  assign fpBusyTable_io_wbPregs_2_bits = io_writeback_7_bits_uop_pdest; // @[Scheduler.scala 347:21]
  assign fpBusyTable_io_wbPregs_3_valid = io_writeback_8_valid & io_writeback_8_bits_uop_ctrl_fpWen; // @[Scheduler.scala 346:37]
  assign fpBusyTable_io_wbPregs_3_bits = io_writeback_8_bits_uop_pdest; // @[Scheduler.scala 347:21]
  assign fpBusyTable_io_read_0_req = lsDispatch_io_readFpState_0_req; // @[Scheduler.scala 350:25]
  assign fpBusyTable_io_read_1_req = lsDispatch_io_readFpState_1_req; // @[Scheduler.scala 350:25]
  assign intRfReadData_regfile_clock = clock;
  assign intRfReadData_regfile_io_readPorts_0_addr = intDispatch_io_out_0_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_1_addr = intDispatch_io_out_0_bits_psrc_1; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_2_addr = intDispatch_io_out_1_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_3_addr = intDispatch_io_out_1_bits_psrc_1; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_4_addr = lsDispatch_io_out_0_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_5_addr = lsDispatch_io_out_1_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_6_addr = lsDispatch_io_out_2_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_7_addr = lsDispatch_io_out_3_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_8_addr = lsDispatch_io_out_4_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_readPorts_9_addr = lsDispatch_io_out_5_bits_psrc_0; // @[Regfile.scala 87:18]
  assign intRfReadData_regfile_io_writePorts_0_wen = io_writeback_0_valid & io_writeback_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 377:44]
  assign intRfReadData_regfile_io_writePorts_0_addr = io_writeback_0_bits_uop_pdest; // @[Regfile.scala 92:18]
  assign intRfReadData_regfile_io_writePorts_0_data = io_writeback_0_bits_data; // @[Regfile.scala 93:18]
  assign intRfReadData_regfile_io_writePorts_1_wen = io_writeback_1_valid & io_writeback_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 377:44]
  assign intRfReadData_regfile_io_writePorts_1_addr = io_writeback_1_bits_uop_pdest; // @[Regfile.scala 92:18]
  assign intRfReadData_regfile_io_writePorts_1_data = io_writeback_1_bits_data; // @[Regfile.scala 93:18]
  assign intRfReadData_regfile_io_writePorts_2_wen = io_writeback_2_valid & io_writeback_2_bits_uop_ctrl_rfWen; // @[Scheduler.scala 377:44]
  assign intRfReadData_regfile_io_writePorts_2_addr = io_writeback_2_bits_uop_pdest; // @[Regfile.scala 92:18]
  assign intRfReadData_regfile_io_writePorts_2_data = io_writeback_2_bits_data; // @[Regfile.scala 93:18]
  assign intRfReadData_regfile_io_writePorts_3_wen = io_writeback_3_valid & io_writeback_3_bits_uop_ctrl_rfWen; // @[Scheduler.scala 377:44]
  assign intRfReadData_regfile_io_writePorts_3_addr = io_writeback_3_bits_uop_pdest; // @[Regfile.scala 92:18]
  assign intRfReadData_regfile_io_writePorts_3_data = io_writeback_3_bits_data; // @[Regfile.scala 93:18]
  assign intRfReadData_regfile_io_writePorts_4_wen = io_writeback_4_valid & io_writeback_4_bits_uop_ctrl_rfWen; // @[Scheduler.scala 377:44]
  assign intRfReadData_regfile_io_writePorts_4_addr = io_writeback_4_bits_uop_pdest; // @[Regfile.scala 92:18]
  assign intRfReadData_regfile_io_writePorts_4_data = io_writeback_4_bits_data; // @[Regfile.scala 93:18]
  assign intRfReadData_regfile_io_debug_rports_0_addr = io_extra_debug_int_rat_0; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_1_addr = io_extra_debug_int_rat_1; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_2_addr = io_extra_debug_int_rat_2; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_3_addr = io_extra_debug_int_rat_3; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_4_addr = io_extra_debug_int_rat_4; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_5_addr = io_extra_debug_int_rat_5; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_6_addr = io_extra_debug_int_rat_6; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_7_addr = io_extra_debug_int_rat_7; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_8_addr = io_extra_debug_int_rat_8; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_9_addr = io_extra_debug_int_rat_9; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_10_addr = io_extra_debug_int_rat_10; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_11_addr = io_extra_debug_int_rat_11; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_12_addr = io_extra_debug_int_rat_12; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_13_addr = io_extra_debug_int_rat_13; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_14_addr = io_extra_debug_int_rat_14; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_15_addr = io_extra_debug_int_rat_15; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_16_addr = io_extra_debug_int_rat_16; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_17_addr = io_extra_debug_int_rat_17; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_18_addr = io_extra_debug_int_rat_18; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_19_addr = io_extra_debug_int_rat_19; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_20_addr = io_extra_debug_int_rat_20; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_21_addr = io_extra_debug_int_rat_21; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_22_addr = io_extra_debug_int_rat_22; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_23_addr = io_extra_debug_int_rat_23; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_24_addr = io_extra_debug_int_rat_24; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_25_addr = io_extra_debug_int_rat_25; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_26_addr = io_extra_debug_int_rat_26; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_27_addr = io_extra_debug_int_rat_27; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_28_addr = io_extra_debug_int_rat_28; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_29_addr = io_extra_debug_int_rat_29; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_30_addr = io_extra_debug_int_rat_30; // @[Regfile.scala 115:18]
  assign intRfReadData_regfile_io_debug_rports_31_addr = io_extra_debug_int_rat_31; // @[Regfile.scala 115:18]
  assign fpRfReadData_delay_clock = clock;
  assign fpRfReadData_delay_io_in_0 = io_extra_fpRfReadIn_0_data; // @[Scheduler.scala 388:{78,78}]
  assign fpRfReadData_delay_io_in_1 = io_extra_fpRfReadIn_1_data; // @[Scheduler.scala 388:{78,78}]
  assign arbiterOut_arbiter_io_in_valid = intDispatch_io_out_0_valid; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_0 = intDispatch_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_1 = intDispatch_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_isRVC = intDispatch_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_brType = intDispatch_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_isCall = intDispatch_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_isRet = intDispatch_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pred_taken = intDispatch_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_storeSetHit = intDispatch_io_out_0_bits_cf_storeSetHit; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_loadWaitStrict = intDispatch_io_out_0_bits_cf_loadWaitStrict; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ssid = intDispatch_io_out_0_bits_cf_ssid; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ftqPtr_flag = intDispatch_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ftqPtr_value = intDispatch_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ftqOffset = intDispatch_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_srcType_0 = intDispatch_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_srcType_1 = intDispatch_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fuType = intDispatch_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fuOpType = intDispatch_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_rfWen = intDispatch_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpWen = intDispatch_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_selImm = intDispatch_io_out_0_bits_ctrl_selImm; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_imm = intDispatch_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_isAddSub = intDispatch_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagIn = intDispatch_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagOut = intDispatch_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fromInt = intDispatch_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_wflags = intDispatch_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fpWen = intDispatch_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmaCmd = intDispatch_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_div = intDispatch_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_sqrt = intDispatch_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fcvt = intDispatch_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_typ = intDispatch_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmt = intDispatch_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_ren3 = intDispatch_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_rm = intDispatch_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_srcState_0 = intDispatch_io_out_0_bits_srcState_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_srcState_1 = intDispatch_io_out_0_bits_srcState_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_psrc_0 = intDispatch_io_out_0_bits_psrc_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_psrc_1 = intDispatch_io_out_0_bits_psrc_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_pdest = intDispatch_io_out_0_bits_pdest; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_robIdx_flag = intDispatch_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_robIdx_value = intDispatch_io_out_0_bits_robIdx_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_lqIdx_flag = intDispatch_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_lqIdx_value = intDispatch_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_sqIdx_flag = intDispatch_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_in_bits_sqIdx_value = intDispatch_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_io_out_0_ready = rs_io_fromDispatch_0_ready; // @[Scheduler.scala 493:{25,25}]
  assign arbiterOut_arbiter_io_out_1_ready = rs_1_io_fromDispatch_0_ready; // @[Scheduler.scala 493:{25,25}]
  assign arbiterOut_arbiter_io_out_2_ready = rs_2_io_fromDispatch_0_ready; // @[Scheduler.scala 493:{25,25}]
  assign arbiterOut_arbiter_1_io_in_valid = intDispatch_io_out_1_valid; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_0 = intDispatch_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_1 = intDispatch_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_isRVC = intDispatch_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_brType = intDispatch_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_isCall = intDispatch_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_isRet = intDispatch_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pred_taken = intDispatch_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_storeSetHit = intDispatch_io_out_1_bits_cf_storeSetHit; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_loadWaitStrict = intDispatch_io_out_1_bits_cf_loadWaitStrict; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ssid = intDispatch_io_out_1_bits_cf_ssid; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_flag = intDispatch_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_value = intDispatch_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ftqOffset = intDispatch_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_0 = intDispatch_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_1 = intDispatch_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fuType = intDispatch_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fuOpType = intDispatch_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_rfWen = intDispatch_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpWen = intDispatch_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_selImm = intDispatch_io_out_1_bits_ctrl_selImm; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_imm = intDispatch_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_srcState_0 = intDispatch_io_out_1_bits_srcState_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_srcState_1 = intDispatch_io_out_1_bits_srcState_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_psrc_0 = intDispatch_io_out_1_bits_psrc_0; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_psrc_1 = intDispatch_io_out_1_bits_psrc_1; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_pdest = intDispatch_io_out_1_bits_pdest; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_robIdx_flag = intDispatch_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_robIdx_value = intDispatch_io_out_1_bits_robIdx_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_lqIdx_flag = intDispatch_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_lqIdx_value = intDispatch_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_sqIdx_flag = intDispatch_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_in_bits_sqIdx_value = intDispatch_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 56:19]
  assign arbiterOut_arbiter_1_io_out_0_ready = rs_io_fromDispatch_1_ready; // @[Scheduler.scala 493:{25,25}]
  assign arbiterOut_arbiter_1_io_out_1_ready = rs_1_io_fromDispatch_1_ready; // @[Scheduler.scala 493:{25,25}]
  assign difftest_io_clock = clock; // @[Scheduler.scala 535:23]
  assign difftest_io_coreid = io_hartId; // @[Scheduler.scala 536:24]
  assign difftest_io_gpr_0 = REG_2_0; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_1 = REG_2_1; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_2 = REG_2_2; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_3 = REG_2_3; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_4 = REG_2_4; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_5 = REG_2_5; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_6 = REG_2_6; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_7 = REG_2_7; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_8 = REG_2_8; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_9 = REG_2_9; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_10 = REG_2_10; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_11 = REG_2_11; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_12 = REG_2_12; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_13 = REG_2_13; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_14 = REG_2_14; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_15 = REG_2_15; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_16 = REG_2_16; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_17 = REG_2_17; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_18 = REG_2_18; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_19 = REG_2_19; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_20 = REG_2_20; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_21 = REG_2_21; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_22 = REG_2_22; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_23 = REG_2_23; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_24 = REG_2_24; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_25 = REG_2_25; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_26 = REG_2_26; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_27 = REG_2_27; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_28 = REG_2_28; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_29 = REG_2_29; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_30 = REG_2_30; // @[Scheduler.scala 537:21]
  assign difftest_io_gpr_31 = REG_2_31; // @[Scheduler.scala 537:21]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    io_extra_fpRfReadIn_0_addr_REG <= lsDispatch_io_out_4_bits_psrc_0; // @[Scheduler.scala 397:94]
    io_extra_fpRfReadIn_1_addr_REG <= lsDispatch_io_out_5_bits_psrc_0; // @[Scheduler.scala 397:94]
    if (jumpFire) begin // @[Reg.scala 17:18]
      rs_io_jump_jumpPc_r <= io_extra_jumpPc; // @[Reg.scala 17:22]
    end
    REG__0_valid <= io_writeback_5_valid; // @[Scheduler.scala 458:{79,79}]
    REG__0_bits_uop_ctrl_rfWen <= io_writeback_5_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:{79,79}]
    REG__0_bits_uop_ctrl_fpWen <= io_writeback_5_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:{79,79}]
    REG__0_bits_uop_pdest <= io_writeback_5_bits_uop_pdest; // @[Scheduler.scala 458:{79,79}]
    REG__0_bits_data <= io_writeback_5_bits_data; // @[Scheduler.scala 458:{79,79}]
    REG__1_valid <= io_writeback_6_valid; // @[Scheduler.scala 458:{79,79}]
    REG__1_bits_uop_ctrl_rfWen <= io_writeback_6_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:{79,79}]
    REG__1_bits_uop_ctrl_fpWen <= io_writeback_6_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:{79,79}]
    REG__1_bits_uop_pdest <= io_writeback_6_bits_uop_pdest; // @[Scheduler.scala 458:{79,79}]
    REG__1_bits_data <= io_writeback_6_bits_data; // @[Scheduler.scala 458:{79,79}]
    REG__2_valid <= io_writeback_7_valid; // @[Scheduler.scala 458:{79,79}]
    REG__2_bits_uop_ctrl_rfWen <= io_writeback_7_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:{79,79}]
    REG__2_bits_uop_ctrl_fpWen <= io_writeback_7_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:{79,79}]
    REG__2_bits_uop_pdest <= io_writeback_7_bits_uop_pdest; // @[Scheduler.scala 458:{79,79}]
    REG__2_bits_data <= io_writeback_7_bits_data; // @[Scheduler.scala 458:{79,79}]
    REG__3_valid <= io_writeback_8_valid; // @[Scheduler.scala 458:{79,79}]
    REG__3_bits_uop_ctrl_rfWen <= io_writeback_8_bits_uop_ctrl_rfWen; // @[Scheduler.scala 458:{79,79}]
    REG__3_bits_uop_ctrl_fpWen <= io_writeback_8_bits_uop_ctrl_fpWen; // @[Scheduler.scala 458:{79,79}]
    REG__3_bits_uop_pdest <= io_writeback_8_bits_uop_pdest; // @[Scheduler.scala 458:{79,79}]
    REG__3_bits_data <= io_writeback_8_bits_data; // @[Scheduler.scala 458:{79,79}]
    REG_1_0 <= intRfReadData_regfile_io_debug_rports_0_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_1 <= intRfReadData_regfile_io_debug_rports_1_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_2 <= intRfReadData_regfile_io_debug_rports_2_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_3 <= intRfReadData_regfile_io_debug_rports_3_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_4 <= intRfReadData_regfile_io_debug_rports_4_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_5 <= intRfReadData_regfile_io_debug_rports_5_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_6 <= intRfReadData_regfile_io_debug_rports_6_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_7 <= intRfReadData_regfile_io_debug_rports_7_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_8 <= intRfReadData_regfile_io_debug_rports_8_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_9 <= intRfReadData_regfile_io_debug_rports_9_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_10 <= intRfReadData_regfile_io_debug_rports_10_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_11 <= intRfReadData_regfile_io_debug_rports_11_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_12 <= intRfReadData_regfile_io_debug_rports_12_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_13 <= intRfReadData_regfile_io_debug_rports_13_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_14 <= intRfReadData_regfile_io_debug_rports_14_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_15 <= intRfReadData_regfile_io_debug_rports_15_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_16 <= intRfReadData_regfile_io_debug_rports_16_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_17 <= intRfReadData_regfile_io_debug_rports_17_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_18 <= intRfReadData_regfile_io_debug_rports_18_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_19 <= intRfReadData_regfile_io_debug_rports_19_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_20 <= intRfReadData_regfile_io_debug_rports_20_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_21 <= intRfReadData_regfile_io_debug_rports_21_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_22 <= intRfReadData_regfile_io_debug_rports_22_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_23 <= intRfReadData_regfile_io_debug_rports_23_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_24 <= intRfReadData_regfile_io_debug_rports_24_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_25 <= intRfReadData_regfile_io_debug_rports_25_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_26 <= intRfReadData_regfile_io_debug_rports_26_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_27 <= intRfReadData_regfile_io_debug_rports_27_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_28 <= intRfReadData_regfile_io_debug_rports_28_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_29 <= intRfReadData_regfile_io_debug_rports_29_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_30 <= intRfReadData_regfile_io_debug_rports_30_data; // @[Scheduler.scala 537:{47,47}]
    REG_1_31 <= intRfReadData_regfile_io_debug_rports_31_data; // @[Scheduler.scala 537:{47,47}]
    REG_2_0 <= REG_1_0; // @[Scheduler.scala 537:31]
    REG_2_1 <= REG_1_1; // @[Scheduler.scala 537:31]
    REG_2_2 <= REG_1_2; // @[Scheduler.scala 537:31]
    REG_2_3 <= REG_1_3; // @[Scheduler.scala 537:31]
    REG_2_4 <= REG_1_4; // @[Scheduler.scala 537:31]
    REG_2_5 <= REG_1_5; // @[Scheduler.scala 537:31]
    REG_2_6 <= REG_1_6; // @[Scheduler.scala 537:31]
    REG_2_7 <= REG_1_7; // @[Scheduler.scala 537:31]
    REG_2_8 <= REG_1_8; // @[Scheduler.scala 537:31]
    REG_2_9 <= REG_1_9; // @[Scheduler.scala 537:31]
    REG_2_10 <= REG_1_10; // @[Scheduler.scala 537:31]
    REG_2_11 <= REG_1_11; // @[Scheduler.scala 537:31]
    REG_2_12 <= REG_1_12; // @[Scheduler.scala 537:31]
    REG_2_13 <= REG_1_13; // @[Scheduler.scala 537:31]
    REG_2_14 <= REG_1_14; // @[Scheduler.scala 537:31]
    REG_2_15 <= REG_1_15; // @[Scheduler.scala 537:31]
    REG_2_16 <= REG_1_16; // @[Scheduler.scala 537:31]
    REG_2_17 <= REG_1_17; // @[Scheduler.scala 537:31]
    REG_2_18 <= REG_1_18; // @[Scheduler.scala 537:31]
    REG_2_19 <= REG_1_19; // @[Scheduler.scala 537:31]
    REG_2_20 <= REG_1_20; // @[Scheduler.scala 537:31]
    REG_2_21 <= REG_1_21; // @[Scheduler.scala 537:31]
    REG_2_22 <= REG_1_22; // @[Scheduler.scala 537:31]
    REG_2_23 <= REG_1_23; // @[Scheduler.scala 537:31]
    REG_2_24 <= REG_1_24; // @[Scheduler.scala 537:31]
    REG_2_25 <= REG_1_25; // @[Scheduler.scala 537:31]
    REG_2_26 <= REG_1_26; // @[Scheduler.scala 537:31]
    REG_2_27 <= REG_1_27; // @[Scheduler.scala 537:31]
    REG_2_28 <= REG_1_28; // @[Scheduler.scala 537:31]
    REG_2_29 <= REG_1_29; // @[Scheduler.scala 537:31]
    REG_2_30 <= REG_1_30; // @[Scheduler.scala 537:31]
    REG_2_31 <= REG_1_31; // @[Scheduler.scala 537:31]
    lastCycleAllocate_0 <= intDispatch_io_out_0_ready & intDispatch_io_out_0_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_1 <= intDispatch_io_out_1_ready & intDispatch_io_out_1_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_2 <= lsDispatch_io_out_0_ready & lsDispatch_io_out_0_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_3 <= lsDispatch_io_out_1_ready & lsDispatch_io_out_1_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_4 <= lsDispatch_io_out_2_ready & lsDispatch_io_out_2_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_5 <= lsDispatch_io_out_3_ready & lsDispatch_io_out_3_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_6 <= lsDispatch_io_out_4_ready & lsDispatch_io_out_4_valid; // @[Decoupled.scala 50:35]
    lastCycleAllocate_7 <= lsDispatch_io_out_5_ready & lsDispatch_io_out_5_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_0 <= io_issue_0_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_1 <= io_issue_1_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_2 <= io_issue_2_ready & io_issue_2_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_3 <= io_issue_3_ready & io_issue_3_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_4 <= io_issue_4_ready & io_issue_4_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_5 <= io_issue_5_ready & io_issue_5_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_6 <= io_issue_6_ready & io_issue_6_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_7 <= io_issue_7_ready & io_issue_7_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_8 <= io_issue_8_ready & io_issue_8_valid; // @[Decoupled.scala 50:35]
    lastCycleIssue_9 <= io_issue_9_ready & io_issue_9_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG <= _T_86 + _T_92; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= _T_102 + _T_110; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= intBusyTable_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= intBusyTable_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= intBusyTable_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= intBusyTable_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= rs_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= rs_1_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= rs_2_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= rs_3_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= rs_4_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= rs_5_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      redirect_next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      redirect_next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
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
  redirect_next_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  redirect_next_bits_rlevel = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_extra_fpRfReadIn_0_addr_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_extra_fpRfReadIn_1_addr_REG = _RAND_5[5:0];
  _RAND_6 = {2{`RANDOM}};
  rs_io_jump_jumpPc_r = _RAND_6[38:0];
  _RAND_7 = {1{`RANDOM}};
  REG__0_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG__0_bits_uop_ctrl_rfWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG__0_bits_uop_ctrl_fpWen = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG__0_bits_uop_pdest = _RAND_10[5:0];
  _RAND_11 = {2{`RANDOM}};
  REG__0_bits_data = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  REG__1_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG__1_bits_uop_ctrl_rfWen = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  REG__1_bits_uop_ctrl_fpWen = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  REG__1_bits_uop_pdest = _RAND_15[5:0];
  _RAND_16 = {2{`RANDOM}};
  REG__1_bits_data = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  REG__2_valid = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  REG__2_bits_uop_ctrl_rfWen = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  REG__2_bits_uop_ctrl_fpWen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  REG__2_bits_uop_pdest = _RAND_20[5:0];
  _RAND_21 = {2{`RANDOM}};
  REG__2_bits_data = _RAND_21[63:0];
  _RAND_22 = {1{`RANDOM}};
  REG__3_valid = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  REG__3_bits_uop_ctrl_rfWen = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  REG__3_bits_uop_ctrl_fpWen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  REG__3_bits_uop_pdest = _RAND_25[5:0];
  _RAND_26 = {2{`RANDOM}};
  REG__3_bits_data = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  REG_1_0 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  REG_1_1 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  REG_1_2 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  REG_1_3 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  REG_1_4 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  REG_1_5 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  REG_1_6 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  REG_1_7 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  REG_1_8 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  REG_1_9 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  REG_1_10 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  REG_1_11 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  REG_1_12 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  REG_1_13 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  REG_1_14 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  REG_1_15 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  REG_1_16 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  REG_1_17 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  REG_1_18 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  REG_1_19 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  REG_1_20 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  REG_1_21 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  REG_1_22 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  REG_1_23 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  REG_1_24 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  REG_1_25 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  REG_1_26 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  REG_1_27 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  REG_1_28 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  REG_1_29 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  REG_1_30 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  REG_1_31 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  REG_2_0 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  REG_2_1 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  REG_2_2 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  REG_2_3 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  REG_2_4 = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  REG_2_5 = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  REG_2_6 = _RAND_65[63:0];
  _RAND_66 = {2{`RANDOM}};
  REG_2_7 = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  REG_2_8 = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  REG_2_9 = _RAND_68[63:0];
  _RAND_69 = {2{`RANDOM}};
  REG_2_10 = _RAND_69[63:0];
  _RAND_70 = {2{`RANDOM}};
  REG_2_11 = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  REG_2_12 = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  REG_2_13 = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  REG_2_14 = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  REG_2_15 = _RAND_74[63:0];
  _RAND_75 = {2{`RANDOM}};
  REG_2_16 = _RAND_75[63:0];
  _RAND_76 = {2{`RANDOM}};
  REG_2_17 = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  REG_2_18 = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  REG_2_19 = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  REG_2_20 = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  REG_2_21 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  REG_2_22 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  REG_2_23 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  REG_2_24 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  REG_2_25 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  REG_2_26 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  REG_2_27 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  REG_2_28 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  REG_2_29 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  REG_2_30 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  REG_2_31 = _RAND_90[63:0];
  _RAND_91 = {1{`RANDOM}};
  lastCycleAllocate_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  lastCycleAllocate_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  lastCycleAllocate_2 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  lastCycleAllocate_3 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  lastCycleAllocate_4 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  lastCycleAllocate_5 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  lastCycleAllocate_6 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  lastCycleAllocate_7 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  lastCycleIssue_0 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  lastCycleIssue_1 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  lastCycleIssue_2 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  lastCycleIssue_3 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  lastCycleIssue_4 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  lastCycleIssue_5 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  lastCycleIssue_6 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  lastCycleIssue_7 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  lastCycleIssue_8 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  lastCycleIssue_9 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_109[3:0];
  _RAND_110 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_110[3:0];
  _RAND_111 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_111[3:0];
  _RAND_112 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_112[3:0];
  _RAND_113 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_113[5:0];
  _RAND_114 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_114[5:0];
  _RAND_115 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_115[5:0];
  _RAND_116 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_116[5:0];
  _RAND_117 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_117[5:0];
  _RAND_118 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_118[5:0];
  _RAND_119 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_119[5:0];
  _RAND_120 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_120[5:0];
  _RAND_121 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_121[5:0];
  _RAND_122 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_122[5:0];
  _RAND_123 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_123[5:0];
  _RAND_124 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_124[5:0];
  _RAND_125 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_125[5:0];
  _RAND_126 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_126[5:0];
  _RAND_127 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_127[5:0];
  _RAND_128 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_128[5:0];
  _RAND_129 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_129[5:0];
  _RAND_130 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_130[5:0];
  _RAND_131 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_131[5:0];
  _RAND_132 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_132[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    redirect_next_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

