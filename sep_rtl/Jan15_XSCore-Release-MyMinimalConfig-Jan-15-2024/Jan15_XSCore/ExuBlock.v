module ExuBlock(
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
  input         io_issue_0_ready,
  output        io_issue_0_valid,
  output        io_issue_0_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_0_bits_uop_cf_storeSetHit,
  output        io_issue_0_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_issue_0_bits_uop_cf_ssid,
  output        io_issue_0_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_0_bits_uop_cf_ftqOffset,
  output [6:0]  io_issue_0_bits_uop_ctrl_fuOpType,
  output        io_issue_0_bits_uop_ctrl_rfWen,
  output        io_issue_0_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_0_bits_uop_ctrl_imm,
  output [5:0]  io_issue_0_bits_uop_pdest,
  output        io_issue_0_bits_uop_robIdx_flag,
  output [4:0]  io_issue_0_bits_uop_robIdx_value,
  output        io_issue_0_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_0_bits_uop_lqIdx_value,
  output        io_issue_0_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_0_bits_uop_sqIdx_value,
  output [63:0] io_issue_0_bits_src_0,
  input         io_issue_1_ready,
  output        io_issue_1_valid,
  output        io_issue_1_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_1_bits_uop_cf_storeSetHit,
  output        io_issue_1_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_issue_1_bits_uop_cf_ssid,
  output        io_issue_1_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_issue_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_1_bits_uop_cf_ftqOffset,
  output [6:0]  io_issue_1_bits_uop_ctrl_fuOpType,
  output        io_issue_1_bits_uop_ctrl_rfWen,
  output        io_issue_1_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_1_bits_uop_ctrl_imm,
  output [5:0]  io_issue_1_bits_uop_pdest,
  output        io_issue_1_bits_uop_robIdx_flag,
  output [4:0]  io_issue_1_bits_uop_robIdx_value,
  output        io_issue_1_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_1_bits_uop_lqIdx_value,
  output        io_issue_1_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_1_bits_uop_sqIdx_value,
  output [63:0] io_issue_1_bits_src_0,
  input         io_issue_2_ready,
  output        io_issue_2_valid,
  output        io_issue_2_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_2_bits_uop_cf_trigger_backendEn_1,
  output [2:0]  io_issue_2_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_2_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_2_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_2_bits_uop_ctrl_fuOpType,
  output        io_issue_2_bits_uop_ctrl_rfWen,
  output        io_issue_2_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_2_bits_uop_ctrl_imm,
  output [5:0]  io_issue_2_bits_uop_pdest,
  output        io_issue_2_bits_uop_robIdx_flag,
  output [4:0]  io_issue_2_bits_uop_robIdx_value,
  output        io_issue_2_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_2_bits_uop_lqIdx_value,
  output        io_issue_2_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_2_bits_uop_sqIdx_value,
  output [63:0] io_issue_2_bits_src_0,
  input         io_issue_3_ready,
  output        io_issue_3_valid,
  output        io_issue_3_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_3_bits_uop_cf_trigger_backendEn_1,
  output [2:0]  io_issue_3_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_3_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_3_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_3_bits_uop_ctrl_fuOpType,
  output        io_issue_3_bits_uop_ctrl_rfWen,
  output        io_issue_3_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_3_bits_uop_ctrl_imm,
  output [5:0]  io_issue_3_bits_uop_pdest,
  output        io_issue_3_bits_uop_robIdx_flag,
  output [4:0]  io_issue_3_bits_uop_robIdx_value,
  output        io_issue_3_bits_uop_lqIdx_flag,
  output [3:0]  io_issue_3_bits_uop_lqIdx_value,
  output        io_issue_3_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_3_bits_uop_sqIdx_value,
  output [63:0] io_issue_3_bits_src_0,
  input         io_issue_4_ready,
  output        io_issue_4_valid,
  output [3:0]  io_issue_4_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_4_bits_uop_ctrl_fuOpType,
  output        io_issue_4_bits_uop_robIdx_flag,
  output [4:0]  io_issue_4_bits_uop_robIdx_value,
  output        io_issue_4_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_4_bits_uop_sqIdx_value,
  output [63:0] io_issue_4_bits_src_0,
  input         io_issue_5_ready,
  output        io_issue_5_valid,
  output [3:0]  io_issue_5_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_5_bits_uop_ctrl_fuOpType,
  output        io_issue_5_bits_uop_robIdx_flag,
  output [4:0]  io_issue_5_bits_uop_robIdx_value,
  output        io_issue_5_bits_uop_sqIdx_flag,
  output [3:0]  io_issue_5_bits_uop_sqIdx_value,
  output [63:0] io_issue_5_bits_src_0,
  input         io_rfWriteback_2_valid,
  input         io_rfWriteback_2_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_2_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_2_bits_uop_pdest,
  input  [63:0] io_rfWriteback_2_bits_data,
  input         io_rfWriteback_3_valid,
  input         io_rfWriteback_3_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_3_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_3_bits_uop_pdest,
  input  [63:0] io_rfWriteback_3_bits_data,
  input         io_rfWriteback_4_valid,
  input         io_rfWriteback_4_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_4_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_4_bits_uop_pdest,
  input  [63:0] io_rfWriteback_4_bits_data,
  input         io_rfWriteback_5_valid,
  input         io_rfWriteback_5_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_5_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_5_bits_uop_pdest,
  input  [63:0] io_rfWriteback_5_bits_data,
  input         io_rfWriteback_6_valid,
  input         io_rfWriteback_6_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_6_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_6_bits_uop_pdest,
  input  [63:0] io_rfWriteback_6_bits_data,
  input         io_rfWriteback_7_valid,
  input         io_rfWriteback_7_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_7_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_7_bits_uop_pdest,
  input  [63:0] io_rfWriteback_7_bits_data,
  input         io_rfWriteback_8_valid,
  input         io_rfWriteback_8_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_8_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_8_bits_uop_pdest,
  input  [63:0] io_rfWriteback_8_bits_data,
  input         io_fastUopIn_2_valid,
  input         io_fastUopIn_2_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopIn_2_bits_pdest,
  input         io_fastUopIn_3_valid,
  input         io_fastUopIn_3_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopIn_3_bits_pdest,
  output        io_fuWriteback_0_valid,
  output        io_fuWriteback_0_bits_uop_ctrl_rfWen,
  output [5:0]  io_fuWriteback_0_bits_uop_pdest,
  output        io_fuWriteback_0_bits_uop_robIdx_flag,
  output [4:0]  io_fuWriteback_0_bits_uop_robIdx_value,
  output        io_fuWriteback_0_bits_uop_lqIdx_flag,
  output [3:0]  io_fuWriteback_0_bits_uop_lqIdx_value,
  output [63:0] io_fuWriteback_0_bits_data,
  output        io_fuWriteback_0_bits_redirectValid,
  output        io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_1_valid,
  output        io_fuWriteback_1_bits_uop_ctrl_rfWen,
  output [5:0]  io_fuWriteback_1_bits_uop_pdest,
  output        io_fuWriteback_1_bits_uop_robIdx_flag,
  output [4:0]  io_fuWriteback_1_bits_uop_robIdx_value,
  output        io_fuWriteback_1_bits_uop_lqIdx_flag,
  output [3:0]  io_fuWriteback_1_bits_uop_lqIdx_value,
  output [63:0] io_fuWriteback_1_bits_data,
  output        io_fuWriteback_1_bits_redirectValid,
  output        io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_2_valid,
  output        io_fuWriteback_2_bits_uop_ctrl_rfWen,
  output        io_fuWriteback_2_bits_uop_ctrl_fpWen,
  output [5:0]  io_fuWriteback_2_bits_uop_pdest,
  output        io_fuWriteback_2_bits_uop_robIdx_flag,
  output [4:0]  io_fuWriteback_2_bits_uop_robIdx_value,
  output        io_fuWriteback_2_bits_uop_lqIdx_flag,
  output [3:0]  io_fuWriteback_2_bits_uop_lqIdx_value,
  output [63:0] io_fuWriteback_2_bits_data,
  input         io_fuWriteback_3_ready,
  output        io_fuWriteback_3_valid,
  output        io_fuWriteback_3_bits_uop_cf_exceptionVec_2,
  output        io_fuWriteback_3_bits_uop_cf_exceptionVec_3,
  output        io_fuWriteback_3_bits_uop_cf_exceptionVec_8,
  output        io_fuWriteback_3_bits_uop_cf_exceptionVec_9,
  output        io_fuWriteback_3_bits_uop_cf_exceptionVec_11,
  output        io_fuWriteback_3_bits_uop_ctrl_rfWen,
  output        io_fuWriteback_3_bits_uop_ctrl_fpWen,
  output        io_fuWriteback_3_bits_uop_ctrl_flushPipe,
  output [5:0]  io_fuWriteback_3_bits_uop_pdest,
  output        io_fuWriteback_3_bits_uop_robIdx_flag,
  output [4:0]  io_fuWriteback_3_bits_uop_robIdx_value,
  output        io_fuWriteback_3_bits_uop_lqIdx_flag,
  output [3:0]  io_fuWriteback_3_bits_uop_lqIdx_value,
  output [63:0] io_fuWriteback_3_bits_data,
  output [4:0]  io_fuWriteback_3_bits_fflags,
  output        io_fuWriteback_3_bits_redirectValid,
  output        io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_3_bits_debug_isPerfCnt,
  output        io_scheExtra_rsReady_0,
  output        io_scheExtra_rsReady_1,
  output        io_scheExtra_rsReady_2,
  output        io_scheExtra_rsReady_3,
  output        io_scheExtra_rsReady_4,
  output        io_scheExtra_rsReady_5,
  output        io_scheExtra_rsReady_6,
  output        io_scheExtra_rsReady_7,
  input         io_scheExtra_feedback_0_feedbackSlow_valid,
  input  [3:0]  io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_0_feedbackSlow_bits_hit,
  input         io_scheExtra_feedback_0_feedbackFast_valid,
  input  [3:0]  io_scheExtra_feedback_0_feedbackFast_bits_rsIdx,
  output [3:0]  io_scheExtra_feedback_0_rsIdx,
  input         io_scheExtra_feedback_1_feedbackSlow_valid,
  input  [3:0]  io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_1_feedbackSlow_bits_hit,
  input         io_scheExtra_feedback_1_feedbackFast_valid,
  input  [3:0]  io_scheExtra_feedback_1_feedbackFast_bits_rsIdx,
  output [3:0]  io_scheExtra_feedback_1_rsIdx,
  input         io_scheExtra_feedback_2_feedbackSlow_valid,
  input  [3:0]  io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_2_feedbackSlow_bits_hit,
  output [3:0]  io_scheExtra_feedback_2_rsIdx,
  input         io_scheExtra_feedback_3_feedbackSlow_valid,
  input  [3:0]  io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_3_feedbackSlow_bits_hit,
  output [3:0]  io_scheExtra_feedback_3_rsIdx,
  output [5:0]  io_scheExtra_fpRfReadIn_0_addr,
  input  [63:0] io_scheExtra_fpRfReadIn_0_data,
  output [5:0]  io_scheExtra_fpRfReadIn_1_addr,
  input  [63:0] io_scheExtra_fpRfReadIn_1_data,
  output [1:0]  io_scheExtra_loadFastMatch_0,
  output [1:0]  io_scheExtra_loadFastMatch_1,
  output [6:0]  io_scheExtra_loadFastFuOpType_0,
  output [6:0]  io_scheExtra_loadFastFuOpType_1,
  output [11:0] io_scheExtra_loadFastImm_0,
  output [11:0] io_scheExtra_loadFastImm_1,
  input  [38:0] io_scheExtra_jumpPc,
  input  [38:0] io_scheExtra_jalr_target,
  input  [1:0]  io_scheExtra_lcommit,
  input  [1:0]  io_scheExtra_scommit,
  input  [4:0]  io_scheExtra_lqCancelCnt,
  input  [3:0]  io_scheExtra_sqCancelCnt,
  input  [5:0]  io_scheExtra_debug_int_rat_0,
  input  [5:0]  io_scheExtra_debug_int_rat_1,
  input  [5:0]  io_scheExtra_debug_int_rat_2,
  input  [5:0]  io_scheExtra_debug_int_rat_3,
  input  [5:0]  io_scheExtra_debug_int_rat_4,
  input  [5:0]  io_scheExtra_debug_int_rat_5,
  input  [5:0]  io_scheExtra_debug_int_rat_6,
  input  [5:0]  io_scheExtra_debug_int_rat_7,
  input  [5:0]  io_scheExtra_debug_int_rat_8,
  input  [5:0]  io_scheExtra_debug_int_rat_9,
  input  [5:0]  io_scheExtra_debug_int_rat_10,
  input  [5:0]  io_scheExtra_debug_int_rat_11,
  input  [5:0]  io_scheExtra_debug_int_rat_12,
  input  [5:0]  io_scheExtra_debug_int_rat_13,
  input  [5:0]  io_scheExtra_debug_int_rat_14,
  input  [5:0]  io_scheExtra_debug_int_rat_15,
  input  [5:0]  io_scheExtra_debug_int_rat_16,
  input  [5:0]  io_scheExtra_debug_int_rat_17,
  input  [5:0]  io_scheExtra_debug_int_rat_18,
  input  [5:0]  io_scheExtra_debug_int_rat_19,
  input  [5:0]  io_scheExtra_debug_int_rat_20,
  input  [5:0]  io_scheExtra_debug_int_rat_21,
  input  [5:0]  io_scheExtra_debug_int_rat_22,
  input  [5:0]  io_scheExtra_debug_int_rat_23,
  input  [5:0]  io_scheExtra_debug_int_rat_24,
  input  [5:0]  io_scheExtra_debug_int_rat_25,
  input  [5:0]  io_scheExtra_debug_int_rat_26,
  input  [5:0]  io_scheExtra_debug_int_rat_27,
  input  [5:0]  io_scheExtra_debug_int_rat_28,
  input  [5:0]  io_scheExtra_debug_int_rat_29,
  input  [5:0]  io_scheExtra_debug_int_rat_30,
  input  [5:0]  io_scheExtra_debug_int_rat_31,
  input         io_scheExtra_robDeqPtr_flag,
  input  [4:0]  io_scheExtra_robDeqPtr_value,
  output        io_scheExtra_robHeadLsIssue,
  output        io_fuExtra_exuRedirect_0_valid,
  output        io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag,
  output [4:0]  io_fuExtra_exuRedirect_0_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_0_bits_redirectValid,
  output        io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag,
  output [4:0]  io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag,
  output [2:0]  io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset,
  output [38:0] io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target,
  output        io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuExtra_exuRedirect_1_valid,
  output        io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag,
  output [4:0]  io_fuExtra_exuRedirect_1_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_1_bits_redirectValid,
  output        io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag,
  output [4:0]  io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag,
  output [2:0]  io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset,
  output        io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken,
  output        io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuExtra_exuRedirect_2_valid,
  output        io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag,
  output [4:0]  io_fuExtra_exuRedirect_2_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_2_bits_redirectValid,
  output        io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag,
  output [4:0]  io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag,
  output [2:0]  io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset,
  output        io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken,
  output        io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred,
  input  [7:0]  io_fuExtra_csrio_hartId,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_7_value,
  input  [2:0]  io_fuExtra_csrio_perf_retiredInstr,
  input         io_fuExtra_csrio_fpu_fflags_valid,
  input  [4:0]  io_fuExtra_csrio_fpu_fflags_bits,
  input         io_fuExtra_csrio_fpu_dirty_fs,
  output [2:0]  io_fuExtra_csrio_fpu_frm,
  input         io_fuExtra_csrio_exception_valid,
  input  [38:0] io_fuExtra_csrio_exception_bits_uop_cf_pc,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep,
  input         io_fuExtra_csrio_exception_bits_isInterrupt,
  output        io_fuExtra_csrio_isXRet,
  output [38:0] io_fuExtra_csrio_trapTarget,
  output        io_fuExtra_csrio_interrupt,
  output        io_fuExtra_csrio_wfi_event,
  input  [38:0] io_fuExtra_csrio_memExceptionVAddr,
  input         io_fuExtra_csrio_externalInterrupt_mtip,
  input         io_fuExtra_csrio_externalInterrupt_msip,
  input         io_fuExtra_csrio_externalInterrupt_meip,
  input         io_fuExtra_csrio_externalInterrupt_seip,
  input         io_fuExtra_csrio_externalInterrupt_debug,
  output [3:0]  io_fuExtra_csrio_tlb_satp_mode,
  output [15:0] io_fuExtra_csrio_tlb_satp_asid,
  output [43:0] io_fuExtra_csrio_tlb_satp_ppn,
  output        io_fuExtra_csrio_tlb_satp_changed,
  output        io_fuExtra_csrio_tlb_priv_mxr,
  output        io_fuExtra_csrio_tlb_priv_sum,
  output [1:0]  io_fuExtra_csrio_tlb_priv_imode,
  output [1:0]  io_fuExtra_csrio_tlb_priv_dmode,
  output        io_fuExtra_csrio_customCtrl_l2_pf_store_only,
  output        io_fuExtra_csrio_customCtrl_icache_parity_enable,
  output [4:0]  io_fuExtra_csrio_customCtrl_lvpred_timeout,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable,
  output        io_fuExtra_csrio_customCtrl_ldld_vio_check_enable,
  output        io_fuExtra_csrio_customCtrl_cache_error_enable,
  output        io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable,
  output        io_fuExtra_csrio_customCtrl_fusion_enable,
  output        io_fuExtra_csrio_customCtrl_wfi_enable,
  output        io_fuExtra_csrio_customCtrl_svinval_enable,
  output        io_fuExtra_csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] io_fuExtra_csrio_customCtrl_distribute_csr_waddr,
  output [63:0] io_fuExtra_csrio_customCtrl_distribute_csr_wdata,
  output        io_fuExtra_csrio_customCtrl_singlestep,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        io_fuExtra_csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_0,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_1,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_2,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_3,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_4,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_5,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_6,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_7,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_8,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_9,
  input         io_fuExtra_csrio_distributedUpdate_0_wvalid,
  input  [11:0] io_fuExtra_csrio_distributedUpdate_0_waddr,
  input  [63:0] io_fuExtra_csrio_distributedUpdate_0_wdata,
  input         io_fuExtra_csrio_distributedUpdate_1_wvalid,
  input  [11:0] io_fuExtra_csrio_distributedUpdate_1_waddr,
  input  [63:0] io_fuExtra_csrio_distributedUpdate_1_wdata,
  output        io_fuExtra_fenceio_sfence_valid,
  output        io_fuExtra_fenceio_sfence_bits_rs1,
  output        io_fuExtra_fenceio_sfence_bits_rs2,
  output [38:0] io_fuExtra_fenceio_sfence_bits_addr,
  output [15:0] io_fuExtra_fenceio_sfence_bits_asid,
  output        io_fuExtra_fenceio_fencei,
  output        io_fuExtra_fenceio_sbuffer_flushSb,
  input         io_fuExtra_fenceio_sbuffer_sbIsEmpty,
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
`endif // RANDOMIZE_REG_INIT
  wire  scheduler_clock; // @[ExuBlock.scala 39:29]
  wire  scheduler_reset; // @[ExuBlock.scala 39:29]
  wire [7:0] scheduler_io_hartId; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_redirect_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_bits_level; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_0_isInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_0_isFp; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_allocPregs_0_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_1_isInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_1_isFp; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_allocPregs_1_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_0_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_ctrl_selImm; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_0_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_0_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_1_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_1_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_1_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_1_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_1_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_1_bits_ctrl_selImm; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_1_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_1_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_1_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_1_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_1_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_1_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_1_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_4_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_4_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_4_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_4_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_4_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_4_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_4_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_4_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_4_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_5_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_5_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_5_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_5_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_5_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_5_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_5_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_5_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_5_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_6_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_6_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_6_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_6_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_6_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_6_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_6_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_6_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_6_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_7_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_7_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_7_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_7_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_7_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_7_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_7_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_7_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_7_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_0_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_0_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_0_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_0_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_1_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_1_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_1_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_1_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_1_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_1_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_2_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_2_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_2_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_2_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_2_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_2_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_2_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_valid; // @[ExuBlock.scala 39:29]
  wire [38:0] scheduler_io_issue_3_bits_uop_cf_pc; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_3_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_3_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_3_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_3_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_3_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_3_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_3_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_3_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_3_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_3_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_3_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_4_bits_uop_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_4_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_4_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_4_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_4_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_4_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_4_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_4_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_4_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_4_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_storeSetHit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_5_bits_uop_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_5_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_5_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_5_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_5_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_5_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_5_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_5_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_5_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_5_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_6_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_6_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_6_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_6_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_6_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_6_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_6_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_6_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_6_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_6_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_7_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_7_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_7_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_7_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_7_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_7_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_7_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_7_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_7_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_7_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_8_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_8_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_8_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_8_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_8_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_9_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_9_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_9_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_9_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_9_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_fastUopOut_0_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_fastUopOut_0_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_fastUopOut_0_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_fastUopOut_1_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_fastUopOut_1_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_fastUopOut_1_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_0_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_0_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_1_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_1_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_2_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_2_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_3_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_3_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_4_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_4_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_5_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_5_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_6_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_6_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_7_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_7_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_8_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_8_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_2_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_fastUopIn_2_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_3_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_fastUopIn_3_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_6; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_7; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_0_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_0_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_0_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_0_feedbackFast_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_0_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_0_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_1_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_1_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_1_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_1_feedbackFast_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_1_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_1_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_2_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_2_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_2_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_2_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_3_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_3_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_3_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_feedback_3_rsIdx; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_fpRfReadIn_0_addr; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_extra_fpRfReadIn_0_data; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_fpRfReadIn_1_addr; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_extra_fpRfReadIn_1_data; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_loadFastMatch_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_loadFastMatch_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_loadFastFuOpType_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_loadFastFuOpType_1; // @[ExuBlock.scala 39:29]
  wire [11:0] scheduler_io_extra_loadFastImm_0; // @[ExuBlock.scala 39:29]
  wire [11:0] scheduler_io_extra_loadFastImm_1; // @[ExuBlock.scala 39:29]
  wire [38:0] scheduler_io_extra_jumpPc; // @[ExuBlock.scala 39:29]
  wire [38:0] scheduler_io_extra_jalr_target; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_lcommit; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_scommit; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_lqCancelCnt; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_extra_sqCancelCnt; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_2; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_3; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_4; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_5; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_6; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_7; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_8; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_9; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_10; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_11; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_12; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_13; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_14; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_15; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_16; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_17; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_18; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_19; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_20; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_21; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_22; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_23; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_24; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_25; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_26; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_27; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_28; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_29; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_30; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_int_rat_31; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_robDeqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_robDeqPtr_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_robHeadLsIssue; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_0_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_1_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_2_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_3_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_4_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_5_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_6_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_7_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_8_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_9_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_10_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_11_value; // @[ExuBlock.scala 39:29]
  wire  fuBlock_clock; // @[ExuBlock.scala 62:23]
  wire  fuBlock_reset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_redirect_bits_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_bits_level; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_0_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_0_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_0_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_0_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_1_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_1_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_1_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_1_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_1_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_1_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_valid; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_2_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_2_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_2_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_issue_2_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_2_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_2_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_2_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_valid; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_issue_3_bits_uop_cf_pc; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_3_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_3_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_3_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_3_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_ctrl_fpu_fromInt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_3_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_3_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_3_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_issue_3_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_3_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_3_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_3_bits_src_1; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_writeback_2_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_2_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_writeback_2_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_2_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_ctrl_flushPipe; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_writeback_3_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_3_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_writeback_3_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_3_bits_data; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_3_bits_fflags; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_debug_isPerfCnt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire [7:0] fuBlock_io_extra_csrio_hartId; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_7_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_7_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_7_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_csrio_perf_retiredInstr; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_fpu_fflags_valid; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_csrio_fpu_fflags_bits; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_fpu_dirty_fs; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_csrio_fpu_frm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_valid; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_csrio_exception_bits_uop_cf_pc; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_ctrl_singleStep; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_isInterrupt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_isXRet; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_csrio_trapTarget; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_interrupt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_wfi_event; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_csrio_memExceptionVAddr; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_mtip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_msip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_meip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_seip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_debug; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_extra_csrio_tlb_satp_mode; // @[ExuBlock.scala 62:23]
  wire [15:0] fuBlock_io_extra_csrio_tlb_satp_asid; // @[ExuBlock.scala 62:23]
  wire [43:0] fuBlock_io_extra_csrio_tlb_satp_ppn; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_tlb_satp_changed; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_tlb_priv_mxr; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_tlb_priv_sum; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_tlb_priv_imode; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_tlb_priv_dmode; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_l2_pf_store_only; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_icache_parity_enable; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_csrio_customCtrl_lvpred_timeout; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_btb_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_tage_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_sc_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ras_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_ldld_vio_check_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_cache_error_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_uncache_write_outstanding_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_fusion_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_wfi_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_svinval_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_distribute_csr_wvalid; // @[ExuBlock.scala 62:23]
  wire [11:0] fuBlock_io_extra_csrio_customCtrl_distribute_csr_waddr; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_customCtrl_distribute_csr_wdata; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_singlestep; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_valid; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_valid; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_addr; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_6; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_7; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_8; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_9; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_distributedUpdate_0_wvalid; // @[ExuBlock.scala 62:23]
  wire [11:0] fuBlock_io_extra_csrio_distributedUpdate_0_waddr; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_distributedUpdate_0_wdata; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_distributedUpdate_1_wvalid; // @[ExuBlock.scala 62:23]
  wire [11:0] fuBlock_io_extra_csrio_distributedUpdate_1_waddr; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_distributedUpdate_1_wdata; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sfence_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sfence_bits_rs1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sfence_bits_rs2; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_fenceio_sfence_bits_addr; // @[ExuBlock.scala 62:23]
  wire [15:0] fuBlock_io_extra_fenceio_sfence_bits_asid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_fencei; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sbuffer_flushSb; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sbuffer_sbIsEmpty; // @[ExuBlock.scala 62:23]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
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
  reg  redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  wire [5:0] _isFlushed_flushItself_T_1 = {scheduler_io_fastUopOut_0_bits_robIdx_flag,
    scheduler_io_fastUopOut_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _isFlushed_flushItself_T_2 = {redirect_next_bits_rrobIdx_flag,redirect_next_bits_rrobIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself = redirect_next_bits_rlevel & _isFlushed_flushItself_T_3; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag = scheduler_io_fastUopOut_0_bits_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare = scheduler_io_fastUopOut_0_bits_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed = redirect_next_valid_REG & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 143:20]
  wire  _io_fuWriteback_0_valid_T = ~isFlushed; // @[ExuBlock.scala 172:50]
  reg  io_fuWriteback_0_valid_REG; // @[ExuBlock.scala 172:29]
  reg  io_fuWriteback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 173:32]
  reg [5:0] io_fuWriteback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 173:32]
  reg  io_fuWriteback_0_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 173:32]
  reg [4:0] io_fuWriteback_0_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 173:32]
  reg  io_fuWriteback_0_bits_uop_REG_lqIdx_flag; // @[ExuBlock.scala 173:32]
  reg [3:0] io_fuWriteback_0_bits_uop_REG_lqIdx_value; // @[ExuBlock.scala 173:32]
  wire [5:0] _isFlushed_flushItself_T_5 = {scheduler_io_fastUopOut_1_bits_robIdx_flag,
    scheduler_io_fastUopOut_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_1 = redirect_next_bits_rlevel & _isFlushed_flushItself_T_7; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_1 = scheduler_io_fastUopOut_1_bits_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_1 = scheduler_io_fastUopOut_1_bits_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_2 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_1 = redirect_next_valid_REG & (isFlushed_flushItself_1 | _isFlushed_T_2); // @[Rob.scala 143:20]
  wire  _io_fuWriteback_1_valid_T = ~isFlushed_1; // @[ExuBlock.scala 172:50]
  reg  io_fuWriteback_1_valid_REG; // @[ExuBlock.scala 172:29]
  reg  io_fuWriteback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 173:32]
  reg [5:0] io_fuWriteback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 173:32]
  reg  io_fuWriteback_1_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 173:32]
  reg [4:0] io_fuWriteback_1_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 173:32]
  reg  io_fuWriteback_1_bits_uop_REG_lqIdx_flag; // @[ExuBlock.scala 173:32]
  reg [3:0] io_fuWriteback_1_bits_uop_REG_lqIdx_value; // @[ExuBlock.scala 173:32]
  reg  scheduler_io_writeback_0_valid_REG; // @[ExuBlock.scala 196:30]
  reg  scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 197:33]
  reg  scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 197:33]
  reg [5:0] scheduler_io_writeback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 197:33]
  reg  scheduler_io_writeback_1_valid_REG; // @[ExuBlock.scala 196:30]
  reg  scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 197:33]
  reg  scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 197:33]
  reg [5:0] scheduler_io_writeback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 197:33]
  Scheduler scheduler ( // @[ExuBlock.scala 39:29]
    .clock(scheduler_clock),
    .reset(scheduler_reset),
    .io_hartId(scheduler_io_hartId),
    .io_redirect_valid(scheduler_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(scheduler_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(scheduler_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(scheduler_io_redirect_bits_level),
    .io_allocPregs_0_isInt(scheduler_io_allocPregs_0_isInt),
    .io_allocPregs_0_isFp(scheduler_io_allocPregs_0_isFp),
    .io_allocPregs_0_preg(scheduler_io_allocPregs_0_preg),
    .io_allocPregs_1_isInt(scheduler_io_allocPregs_1_isInt),
    .io_allocPregs_1_isFp(scheduler_io_allocPregs_1_isFp),
    .io_allocPregs_1_preg(scheduler_io_allocPregs_1_preg),
    .io_in_0_valid(scheduler_io_in_0_valid),
    .io_in_0_bits_cf_trigger_backendEn_0(scheduler_io_in_0_bits_cf_trigger_backendEn_0),
    .io_in_0_bits_cf_trigger_backendEn_1(scheduler_io_in_0_bits_cf_trigger_backendEn_1),
    .io_in_0_bits_cf_pd_isRVC(scheduler_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(scheduler_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(scheduler_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(scheduler_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(scheduler_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_storeSetHit(scheduler_io_in_0_bits_cf_storeSetHit),
    .io_in_0_bits_cf_loadWaitStrict(scheduler_io_in_0_bits_cf_loadWaitStrict),
    .io_in_0_bits_cf_ssid(scheduler_io_in_0_bits_cf_ssid),
    .io_in_0_bits_cf_ftqPtr_flag(scheduler_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(scheduler_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(scheduler_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(scheduler_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(scheduler_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_fuType(scheduler_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(scheduler_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(scheduler_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(scheduler_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_selImm(scheduler_io_in_0_bits_ctrl_selImm),
    .io_in_0_bits_ctrl_imm(scheduler_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(scheduler_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(scheduler_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(scheduler_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(scheduler_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(scheduler_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(scheduler_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(scheduler_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(scheduler_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(scheduler_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(scheduler_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(scheduler_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(scheduler_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(scheduler_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(scheduler_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(scheduler_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(scheduler_io_in_0_bits_psrc_1),
    .io_in_0_bits_pdest(scheduler_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(scheduler_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(scheduler_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(scheduler_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(scheduler_io_in_0_bits_lqIdx_value),
    .io_in_0_bits_sqIdx_flag(scheduler_io_in_0_bits_sqIdx_flag),
    .io_in_0_bits_sqIdx_value(scheduler_io_in_0_bits_sqIdx_value),
    .io_in_1_valid(scheduler_io_in_1_valid),
    .io_in_1_bits_cf_trigger_backendEn_0(scheduler_io_in_1_bits_cf_trigger_backendEn_0),
    .io_in_1_bits_cf_trigger_backendEn_1(scheduler_io_in_1_bits_cf_trigger_backendEn_1),
    .io_in_1_bits_cf_pd_isRVC(scheduler_io_in_1_bits_cf_pd_isRVC),
    .io_in_1_bits_cf_pd_brType(scheduler_io_in_1_bits_cf_pd_brType),
    .io_in_1_bits_cf_pd_isCall(scheduler_io_in_1_bits_cf_pd_isCall),
    .io_in_1_bits_cf_pd_isRet(scheduler_io_in_1_bits_cf_pd_isRet),
    .io_in_1_bits_cf_pred_taken(scheduler_io_in_1_bits_cf_pred_taken),
    .io_in_1_bits_cf_storeSetHit(scheduler_io_in_1_bits_cf_storeSetHit),
    .io_in_1_bits_cf_loadWaitStrict(scheduler_io_in_1_bits_cf_loadWaitStrict),
    .io_in_1_bits_cf_ssid(scheduler_io_in_1_bits_cf_ssid),
    .io_in_1_bits_cf_ftqPtr_flag(scheduler_io_in_1_bits_cf_ftqPtr_flag),
    .io_in_1_bits_cf_ftqPtr_value(scheduler_io_in_1_bits_cf_ftqPtr_value),
    .io_in_1_bits_cf_ftqOffset(scheduler_io_in_1_bits_cf_ftqOffset),
    .io_in_1_bits_ctrl_srcType_0(scheduler_io_in_1_bits_ctrl_srcType_0),
    .io_in_1_bits_ctrl_srcType_1(scheduler_io_in_1_bits_ctrl_srcType_1),
    .io_in_1_bits_ctrl_fuType(scheduler_io_in_1_bits_ctrl_fuType),
    .io_in_1_bits_ctrl_fuOpType(scheduler_io_in_1_bits_ctrl_fuOpType),
    .io_in_1_bits_ctrl_rfWen(scheduler_io_in_1_bits_ctrl_rfWen),
    .io_in_1_bits_ctrl_fpWen(scheduler_io_in_1_bits_ctrl_fpWen),
    .io_in_1_bits_ctrl_selImm(scheduler_io_in_1_bits_ctrl_selImm),
    .io_in_1_bits_ctrl_imm(scheduler_io_in_1_bits_ctrl_imm),
    .io_in_1_bits_psrc_0(scheduler_io_in_1_bits_psrc_0),
    .io_in_1_bits_psrc_1(scheduler_io_in_1_bits_psrc_1),
    .io_in_1_bits_pdest(scheduler_io_in_1_bits_pdest),
    .io_in_1_bits_robIdx_flag(scheduler_io_in_1_bits_robIdx_flag),
    .io_in_1_bits_robIdx_value(scheduler_io_in_1_bits_robIdx_value),
    .io_in_1_bits_lqIdx_flag(scheduler_io_in_1_bits_lqIdx_flag),
    .io_in_1_bits_lqIdx_value(scheduler_io_in_1_bits_lqIdx_value),
    .io_in_1_bits_sqIdx_flag(scheduler_io_in_1_bits_sqIdx_flag),
    .io_in_1_bits_sqIdx_value(scheduler_io_in_1_bits_sqIdx_value),
    .io_in_4_valid(scheduler_io_in_4_valid),
    .io_in_4_bits_cf_trigger_backendEn_0(scheduler_io_in_4_bits_cf_trigger_backendEn_0),
    .io_in_4_bits_cf_trigger_backendEn_1(scheduler_io_in_4_bits_cf_trigger_backendEn_1),
    .io_in_4_bits_cf_pd_isRVC(scheduler_io_in_4_bits_cf_pd_isRVC),
    .io_in_4_bits_cf_pd_brType(scheduler_io_in_4_bits_cf_pd_brType),
    .io_in_4_bits_cf_pd_isCall(scheduler_io_in_4_bits_cf_pd_isCall),
    .io_in_4_bits_cf_pd_isRet(scheduler_io_in_4_bits_cf_pd_isRet),
    .io_in_4_bits_cf_pred_taken(scheduler_io_in_4_bits_cf_pred_taken),
    .io_in_4_bits_cf_storeSetHit(scheduler_io_in_4_bits_cf_storeSetHit),
    .io_in_4_bits_cf_loadWaitStrict(scheduler_io_in_4_bits_cf_loadWaitStrict),
    .io_in_4_bits_cf_ssid(scheduler_io_in_4_bits_cf_ssid),
    .io_in_4_bits_cf_ftqPtr_flag(scheduler_io_in_4_bits_cf_ftqPtr_flag),
    .io_in_4_bits_cf_ftqPtr_value(scheduler_io_in_4_bits_cf_ftqPtr_value),
    .io_in_4_bits_cf_ftqOffset(scheduler_io_in_4_bits_cf_ftqOffset),
    .io_in_4_bits_ctrl_srcType_0(scheduler_io_in_4_bits_ctrl_srcType_0),
    .io_in_4_bits_ctrl_srcType_1(scheduler_io_in_4_bits_ctrl_srcType_1),
    .io_in_4_bits_ctrl_fuType(scheduler_io_in_4_bits_ctrl_fuType),
    .io_in_4_bits_ctrl_fuOpType(scheduler_io_in_4_bits_ctrl_fuOpType),
    .io_in_4_bits_ctrl_rfWen(scheduler_io_in_4_bits_ctrl_rfWen),
    .io_in_4_bits_ctrl_fpWen(scheduler_io_in_4_bits_ctrl_fpWen),
    .io_in_4_bits_ctrl_imm(scheduler_io_in_4_bits_ctrl_imm),
    .io_in_4_bits_psrc_0(scheduler_io_in_4_bits_psrc_0),
    .io_in_4_bits_psrc_1(scheduler_io_in_4_bits_psrc_1),
    .io_in_4_bits_pdest(scheduler_io_in_4_bits_pdest),
    .io_in_4_bits_robIdx_flag(scheduler_io_in_4_bits_robIdx_flag),
    .io_in_4_bits_robIdx_value(scheduler_io_in_4_bits_robIdx_value),
    .io_in_5_valid(scheduler_io_in_5_valid),
    .io_in_5_bits_cf_trigger_backendEn_0(scheduler_io_in_5_bits_cf_trigger_backendEn_0),
    .io_in_5_bits_cf_trigger_backendEn_1(scheduler_io_in_5_bits_cf_trigger_backendEn_1),
    .io_in_5_bits_cf_pd_isRVC(scheduler_io_in_5_bits_cf_pd_isRVC),
    .io_in_5_bits_cf_pd_brType(scheduler_io_in_5_bits_cf_pd_brType),
    .io_in_5_bits_cf_pd_isCall(scheduler_io_in_5_bits_cf_pd_isCall),
    .io_in_5_bits_cf_pd_isRet(scheduler_io_in_5_bits_cf_pd_isRet),
    .io_in_5_bits_cf_pred_taken(scheduler_io_in_5_bits_cf_pred_taken),
    .io_in_5_bits_cf_storeSetHit(scheduler_io_in_5_bits_cf_storeSetHit),
    .io_in_5_bits_cf_loadWaitStrict(scheduler_io_in_5_bits_cf_loadWaitStrict),
    .io_in_5_bits_cf_ssid(scheduler_io_in_5_bits_cf_ssid),
    .io_in_5_bits_cf_ftqPtr_flag(scheduler_io_in_5_bits_cf_ftqPtr_flag),
    .io_in_5_bits_cf_ftqPtr_value(scheduler_io_in_5_bits_cf_ftqPtr_value),
    .io_in_5_bits_cf_ftqOffset(scheduler_io_in_5_bits_cf_ftqOffset),
    .io_in_5_bits_ctrl_srcType_0(scheduler_io_in_5_bits_ctrl_srcType_0),
    .io_in_5_bits_ctrl_srcType_1(scheduler_io_in_5_bits_ctrl_srcType_1),
    .io_in_5_bits_ctrl_fuType(scheduler_io_in_5_bits_ctrl_fuType),
    .io_in_5_bits_ctrl_fuOpType(scheduler_io_in_5_bits_ctrl_fuOpType),
    .io_in_5_bits_ctrl_rfWen(scheduler_io_in_5_bits_ctrl_rfWen),
    .io_in_5_bits_ctrl_fpWen(scheduler_io_in_5_bits_ctrl_fpWen),
    .io_in_5_bits_ctrl_imm(scheduler_io_in_5_bits_ctrl_imm),
    .io_in_5_bits_psrc_0(scheduler_io_in_5_bits_psrc_0),
    .io_in_5_bits_psrc_1(scheduler_io_in_5_bits_psrc_1),
    .io_in_5_bits_pdest(scheduler_io_in_5_bits_pdest),
    .io_in_5_bits_robIdx_flag(scheduler_io_in_5_bits_robIdx_flag),
    .io_in_5_bits_robIdx_value(scheduler_io_in_5_bits_robIdx_value),
    .io_in_6_valid(scheduler_io_in_6_valid),
    .io_in_6_bits_cf_trigger_backendEn_0(scheduler_io_in_6_bits_cf_trigger_backendEn_0),
    .io_in_6_bits_cf_trigger_backendEn_1(scheduler_io_in_6_bits_cf_trigger_backendEn_1),
    .io_in_6_bits_cf_pd_isRVC(scheduler_io_in_6_bits_cf_pd_isRVC),
    .io_in_6_bits_cf_pd_brType(scheduler_io_in_6_bits_cf_pd_brType),
    .io_in_6_bits_cf_pd_isCall(scheduler_io_in_6_bits_cf_pd_isCall),
    .io_in_6_bits_cf_pd_isRet(scheduler_io_in_6_bits_cf_pd_isRet),
    .io_in_6_bits_cf_pred_taken(scheduler_io_in_6_bits_cf_pred_taken),
    .io_in_6_bits_cf_storeSetHit(scheduler_io_in_6_bits_cf_storeSetHit),
    .io_in_6_bits_cf_loadWaitStrict(scheduler_io_in_6_bits_cf_loadWaitStrict),
    .io_in_6_bits_cf_ssid(scheduler_io_in_6_bits_cf_ssid),
    .io_in_6_bits_cf_ftqPtr_flag(scheduler_io_in_6_bits_cf_ftqPtr_flag),
    .io_in_6_bits_cf_ftqPtr_value(scheduler_io_in_6_bits_cf_ftqPtr_value),
    .io_in_6_bits_cf_ftqOffset(scheduler_io_in_6_bits_cf_ftqOffset),
    .io_in_6_bits_ctrl_srcType_0(scheduler_io_in_6_bits_ctrl_srcType_0),
    .io_in_6_bits_ctrl_srcType_1(scheduler_io_in_6_bits_ctrl_srcType_1),
    .io_in_6_bits_ctrl_fuType(scheduler_io_in_6_bits_ctrl_fuType),
    .io_in_6_bits_ctrl_fuOpType(scheduler_io_in_6_bits_ctrl_fuOpType),
    .io_in_6_bits_ctrl_rfWen(scheduler_io_in_6_bits_ctrl_rfWen),
    .io_in_6_bits_ctrl_fpWen(scheduler_io_in_6_bits_ctrl_fpWen),
    .io_in_6_bits_ctrl_imm(scheduler_io_in_6_bits_ctrl_imm),
    .io_in_6_bits_psrc_0(scheduler_io_in_6_bits_psrc_0),
    .io_in_6_bits_psrc_1(scheduler_io_in_6_bits_psrc_1),
    .io_in_6_bits_pdest(scheduler_io_in_6_bits_pdest),
    .io_in_6_bits_robIdx_flag(scheduler_io_in_6_bits_robIdx_flag),
    .io_in_6_bits_robIdx_value(scheduler_io_in_6_bits_robIdx_value),
    .io_in_7_valid(scheduler_io_in_7_valid),
    .io_in_7_bits_cf_trigger_backendEn_0(scheduler_io_in_7_bits_cf_trigger_backendEn_0),
    .io_in_7_bits_cf_trigger_backendEn_1(scheduler_io_in_7_bits_cf_trigger_backendEn_1),
    .io_in_7_bits_cf_pd_isRVC(scheduler_io_in_7_bits_cf_pd_isRVC),
    .io_in_7_bits_cf_pd_brType(scheduler_io_in_7_bits_cf_pd_brType),
    .io_in_7_bits_cf_pd_isCall(scheduler_io_in_7_bits_cf_pd_isCall),
    .io_in_7_bits_cf_pd_isRet(scheduler_io_in_7_bits_cf_pd_isRet),
    .io_in_7_bits_cf_pred_taken(scheduler_io_in_7_bits_cf_pred_taken),
    .io_in_7_bits_cf_storeSetHit(scheduler_io_in_7_bits_cf_storeSetHit),
    .io_in_7_bits_cf_loadWaitStrict(scheduler_io_in_7_bits_cf_loadWaitStrict),
    .io_in_7_bits_cf_ssid(scheduler_io_in_7_bits_cf_ssid),
    .io_in_7_bits_cf_ftqPtr_flag(scheduler_io_in_7_bits_cf_ftqPtr_flag),
    .io_in_7_bits_cf_ftqPtr_value(scheduler_io_in_7_bits_cf_ftqPtr_value),
    .io_in_7_bits_cf_ftqOffset(scheduler_io_in_7_bits_cf_ftqOffset),
    .io_in_7_bits_ctrl_srcType_0(scheduler_io_in_7_bits_ctrl_srcType_0),
    .io_in_7_bits_ctrl_srcType_1(scheduler_io_in_7_bits_ctrl_srcType_1),
    .io_in_7_bits_ctrl_fuType(scheduler_io_in_7_bits_ctrl_fuType),
    .io_in_7_bits_ctrl_fuOpType(scheduler_io_in_7_bits_ctrl_fuOpType),
    .io_in_7_bits_ctrl_rfWen(scheduler_io_in_7_bits_ctrl_rfWen),
    .io_in_7_bits_ctrl_fpWen(scheduler_io_in_7_bits_ctrl_fpWen),
    .io_in_7_bits_ctrl_imm(scheduler_io_in_7_bits_ctrl_imm),
    .io_in_7_bits_psrc_0(scheduler_io_in_7_bits_psrc_0),
    .io_in_7_bits_psrc_1(scheduler_io_in_7_bits_psrc_1),
    .io_in_7_bits_pdest(scheduler_io_in_7_bits_pdest),
    .io_in_7_bits_robIdx_flag(scheduler_io_in_7_bits_robIdx_flag),
    .io_in_7_bits_robIdx_value(scheduler_io_in_7_bits_robIdx_value),
    .io_issue_0_valid(scheduler_io_issue_0_valid),
    .io_issue_0_bits_uop_cf_pd_isRVC(scheduler_io_issue_0_bits_uop_cf_pd_isRVC),
    .io_issue_0_bits_uop_cf_pd_brType(scheduler_io_issue_0_bits_uop_cf_pd_brType),
    .io_issue_0_bits_uop_cf_pd_isCall(scheduler_io_issue_0_bits_uop_cf_pd_isCall),
    .io_issue_0_bits_uop_cf_pd_isRet(scheduler_io_issue_0_bits_uop_cf_pd_isRet),
    .io_issue_0_bits_uop_cf_pred_taken(scheduler_io_issue_0_bits_uop_cf_pred_taken),
    .io_issue_0_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_0_bits_uop_cf_ftqPtr_flag),
    .io_issue_0_bits_uop_cf_ftqPtr_value(scheduler_io_issue_0_bits_uop_cf_ftqPtr_value),
    .io_issue_0_bits_uop_cf_ftqOffset(scheduler_io_issue_0_bits_uop_cf_ftqOffset),
    .io_issue_0_bits_uop_ctrl_fuType(scheduler_io_issue_0_bits_uop_ctrl_fuType),
    .io_issue_0_bits_uop_ctrl_fuOpType(scheduler_io_issue_0_bits_uop_ctrl_fuOpType),
    .io_issue_0_bits_uop_ctrl_imm(scheduler_io_issue_0_bits_uop_ctrl_imm),
    .io_issue_0_bits_uop_robIdx_flag(scheduler_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(scheduler_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_src_0(scheduler_io_issue_0_bits_src_0),
    .io_issue_0_bits_src_1(scheduler_io_issue_0_bits_src_1),
    .io_issue_1_valid(scheduler_io_issue_1_valid),
    .io_issue_1_bits_uop_cf_pd_isRVC(scheduler_io_issue_1_bits_uop_cf_pd_isRVC),
    .io_issue_1_bits_uop_cf_pd_brType(scheduler_io_issue_1_bits_uop_cf_pd_brType),
    .io_issue_1_bits_uop_cf_pd_isCall(scheduler_io_issue_1_bits_uop_cf_pd_isCall),
    .io_issue_1_bits_uop_cf_pd_isRet(scheduler_io_issue_1_bits_uop_cf_pd_isRet),
    .io_issue_1_bits_uop_cf_pred_taken(scheduler_io_issue_1_bits_uop_cf_pred_taken),
    .io_issue_1_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_1_bits_uop_cf_ftqPtr_flag),
    .io_issue_1_bits_uop_cf_ftqPtr_value(scheduler_io_issue_1_bits_uop_cf_ftqPtr_value),
    .io_issue_1_bits_uop_cf_ftqOffset(scheduler_io_issue_1_bits_uop_cf_ftqOffset),
    .io_issue_1_bits_uop_ctrl_fuType(scheduler_io_issue_1_bits_uop_ctrl_fuType),
    .io_issue_1_bits_uop_ctrl_fuOpType(scheduler_io_issue_1_bits_uop_ctrl_fuOpType),
    .io_issue_1_bits_uop_ctrl_imm(scheduler_io_issue_1_bits_uop_ctrl_imm),
    .io_issue_1_bits_uop_robIdx_flag(scheduler_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(scheduler_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_src_0(scheduler_io_issue_1_bits_src_0),
    .io_issue_1_bits_src_1(scheduler_io_issue_1_bits_src_1),
    .io_issue_2_ready(scheduler_io_issue_2_ready),
    .io_issue_2_valid(scheduler_io_issue_2_valid),
    .io_issue_2_bits_uop_ctrl_fuType(scheduler_io_issue_2_bits_uop_ctrl_fuType),
    .io_issue_2_bits_uop_ctrl_fuOpType(scheduler_io_issue_2_bits_uop_ctrl_fuOpType),
    .io_issue_2_bits_uop_ctrl_rfWen(scheduler_io_issue_2_bits_uop_ctrl_rfWen),
    .io_issue_2_bits_uop_ctrl_fpWen(scheduler_io_issue_2_bits_uop_ctrl_fpWen),
    .io_issue_2_bits_uop_pdest(scheduler_io_issue_2_bits_uop_pdest),
    .io_issue_2_bits_uop_robIdx_flag(scheduler_io_issue_2_bits_uop_robIdx_flag),
    .io_issue_2_bits_uop_robIdx_value(scheduler_io_issue_2_bits_uop_robIdx_value),
    .io_issue_2_bits_uop_lqIdx_flag(scheduler_io_issue_2_bits_uop_lqIdx_flag),
    .io_issue_2_bits_uop_lqIdx_value(scheduler_io_issue_2_bits_uop_lqIdx_value),
    .io_issue_2_bits_src_0(scheduler_io_issue_2_bits_src_0),
    .io_issue_2_bits_src_1(scheduler_io_issue_2_bits_src_1),
    .io_issue_3_ready(scheduler_io_issue_3_ready),
    .io_issue_3_valid(scheduler_io_issue_3_valid),
    .io_issue_3_bits_uop_cf_pc(scheduler_io_issue_3_bits_uop_cf_pc),
    .io_issue_3_bits_uop_cf_pd_isRVC(scheduler_io_issue_3_bits_uop_cf_pd_isRVC),
    .io_issue_3_bits_uop_cf_pd_brType(scheduler_io_issue_3_bits_uop_cf_pd_brType),
    .io_issue_3_bits_uop_cf_pd_isCall(scheduler_io_issue_3_bits_uop_cf_pd_isCall),
    .io_issue_3_bits_uop_cf_pd_isRet(scheduler_io_issue_3_bits_uop_cf_pd_isRet),
    .io_issue_3_bits_uop_cf_pred_taken(scheduler_io_issue_3_bits_uop_cf_pred_taken),
    .io_issue_3_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_3_bits_uop_cf_ftqPtr_flag),
    .io_issue_3_bits_uop_cf_ftqPtr_value(scheduler_io_issue_3_bits_uop_cf_ftqPtr_value),
    .io_issue_3_bits_uop_cf_ftqOffset(scheduler_io_issue_3_bits_uop_cf_ftqOffset),
    .io_issue_3_bits_uop_ctrl_fuType(scheduler_io_issue_3_bits_uop_ctrl_fuType),
    .io_issue_3_bits_uop_ctrl_fuOpType(scheduler_io_issue_3_bits_uop_ctrl_fuOpType),
    .io_issue_3_bits_uop_ctrl_rfWen(scheduler_io_issue_3_bits_uop_ctrl_rfWen),
    .io_issue_3_bits_uop_ctrl_fpWen(scheduler_io_issue_3_bits_uop_ctrl_fpWen),
    .io_issue_3_bits_uop_ctrl_imm(scheduler_io_issue_3_bits_uop_ctrl_imm),
    .io_issue_3_bits_uop_ctrl_fpu_typeTagOut(scheduler_io_issue_3_bits_uop_ctrl_fpu_typeTagOut),
    .io_issue_3_bits_uop_ctrl_fpu_fromInt(scheduler_io_issue_3_bits_uop_ctrl_fpu_fromInt),
    .io_issue_3_bits_uop_ctrl_fpu_wflags(scheduler_io_issue_3_bits_uop_ctrl_fpu_wflags),
    .io_issue_3_bits_uop_ctrl_fpu_typ(scheduler_io_issue_3_bits_uop_ctrl_fpu_typ),
    .io_issue_3_bits_uop_ctrl_fpu_rm(scheduler_io_issue_3_bits_uop_ctrl_fpu_rm),
    .io_issue_3_bits_uop_pdest(scheduler_io_issue_3_bits_uop_pdest),
    .io_issue_3_bits_uop_robIdx_flag(scheduler_io_issue_3_bits_uop_robIdx_flag),
    .io_issue_3_bits_uop_robIdx_value(scheduler_io_issue_3_bits_uop_robIdx_value),
    .io_issue_3_bits_uop_lqIdx_flag(scheduler_io_issue_3_bits_uop_lqIdx_flag),
    .io_issue_3_bits_uop_lqIdx_value(scheduler_io_issue_3_bits_uop_lqIdx_value),
    .io_issue_3_bits_src_0(scheduler_io_issue_3_bits_src_0),
    .io_issue_3_bits_src_1(scheduler_io_issue_3_bits_src_1),
    .io_issue_4_ready(scheduler_io_issue_4_ready),
    .io_issue_4_valid(scheduler_io_issue_4_valid),
    .io_issue_4_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_4_bits_uop_cf_trigger_backendEn_1),
    .io_issue_4_bits_uop_cf_storeSetHit(scheduler_io_issue_4_bits_uop_cf_storeSetHit),
    .io_issue_4_bits_uop_cf_loadWaitStrict(scheduler_io_issue_4_bits_uop_cf_loadWaitStrict),
    .io_issue_4_bits_uop_cf_ssid(scheduler_io_issue_4_bits_uop_cf_ssid),
    .io_issue_4_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_4_bits_uop_cf_ftqPtr_flag),
    .io_issue_4_bits_uop_cf_ftqPtr_value(scheduler_io_issue_4_bits_uop_cf_ftqPtr_value),
    .io_issue_4_bits_uop_cf_ftqOffset(scheduler_io_issue_4_bits_uop_cf_ftqOffset),
    .io_issue_4_bits_uop_ctrl_fuOpType(scheduler_io_issue_4_bits_uop_ctrl_fuOpType),
    .io_issue_4_bits_uop_ctrl_rfWen(scheduler_io_issue_4_bits_uop_ctrl_rfWen),
    .io_issue_4_bits_uop_ctrl_fpWen(scheduler_io_issue_4_bits_uop_ctrl_fpWen),
    .io_issue_4_bits_uop_ctrl_imm(scheduler_io_issue_4_bits_uop_ctrl_imm),
    .io_issue_4_bits_uop_pdest(scheduler_io_issue_4_bits_uop_pdest),
    .io_issue_4_bits_uop_robIdx_flag(scheduler_io_issue_4_bits_uop_robIdx_flag),
    .io_issue_4_bits_uop_robIdx_value(scheduler_io_issue_4_bits_uop_robIdx_value),
    .io_issue_4_bits_uop_lqIdx_flag(scheduler_io_issue_4_bits_uop_lqIdx_flag),
    .io_issue_4_bits_uop_lqIdx_value(scheduler_io_issue_4_bits_uop_lqIdx_value),
    .io_issue_4_bits_uop_sqIdx_flag(scheduler_io_issue_4_bits_uop_sqIdx_flag),
    .io_issue_4_bits_uop_sqIdx_value(scheduler_io_issue_4_bits_uop_sqIdx_value),
    .io_issue_4_bits_src_0(scheduler_io_issue_4_bits_src_0),
    .io_issue_5_ready(scheduler_io_issue_5_ready),
    .io_issue_5_valid(scheduler_io_issue_5_valid),
    .io_issue_5_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_5_bits_uop_cf_trigger_backendEn_1),
    .io_issue_5_bits_uop_cf_storeSetHit(scheduler_io_issue_5_bits_uop_cf_storeSetHit),
    .io_issue_5_bits_uop_cf_loadWaitStrict(scheduler_io_issue_5_bits_uop_cf_loadWaitStrict),
    .io_issue_5_bits_uop_cf_ssid(scheduler_io_issue_5_bits_uop_cf_ssid),
    .io_issue_5_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_5_bits_uop_cf_ftqPtr_flag),
    .io_issue_5_bits_uop_cf_ftqPtr_value(scheduler_io_issue_5_bits_uop_cf_ftqPtr_value),
    .io_issue_5_bits_uop_cf_ftqOffset(scheduler_io_issue_5_bits_uop_cf_ftqOffset),
    .io_issue_5_bits_uop_ctrl_fuOpType(scheduler_io_issue_5_bits_uop_ctrl_fuOpType),
    .io_issue_5_bits_uop_ctrl_rfWen(scheduler_io_issue_5_bits_uop_ctrl_rfWen),
    .io_issue_5_bits_uop_ctrl_fpWen(scheduler_io_issue_5_bits_uop_ctrl_fpWen),
    .io_issue_5_bits_uop_ctrl_imm(scheduler_io_issue_5_bits_uop_ctrl_imm),
    .io_issue_5_bits_uop_pdest(scheduler_io_issue_5_bits_uop_pdest),
    .io_issue_5_bits_uop_robIdx_flag(scheduler_io_issue_5_bits_uop_robIdx_flag),
    .io_issue_5_bits_uop_robIdx_value(scheduler_io_issue_5_bits_uop_robIdx_value),
    .io_issue_5_bits_uop_lqIdx_flag(scheduler_io_issue_5_bits_uop_lqIdx_flag),
    .io_issue_5_bits_uop_lqIdx_value(scheduler_io_issue_5_bits_uop_lqIdx_value),
    .io_issue_5_bits_uop_sqIdx_flag(scheduler_io_issue_5_bits_uop_sqIdx_flag),
    .io_issue_5_bits_uop_sqIdx_value(scheduler_io_issue_5_bits_uop_sqIdx_value),
    .io_issue_5_bits_src_0(scheduler_io_issue_5_bits_src_0),
    .io_issue_6_ready(scheduler_io_issue_6_ready),
    .io_issue_6_valid(scheduler_io_issue_6_valid),
    .io_issue_6_bits_uop_cf_trigger_backendEn_0(scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_0),
    .io_issue_6_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_1),
    .io_issue_6_bits_uop_cf_ftqPtr_value(scheduler_io_issue_6_bits_uop_cf_ftqPtr_value),
    .io_issue_6_bits_uop_cf_ftqOffset(scheduler_io_issue_6_bits_uop_cf_ftqOffset),
    .io_issue_6_bits_uop_ctrl_fuType(scheduler_io_issue_6_bits_uop_ctrl_fuType),
    .io_issue_6_bits_uop_ctrl_fuOpType(scheduler_io_issue_6_bits_uop_ctrl_fuOpType),
    .io_issue_6_bits_uop_ctrl_rfWen(scheduler_io_issue_6_bits_uop_ctrl_rfWen),
    .io_issue_6_bits_uop_ctrl_fpWen(scheduler_io_issue_6_bits_uop_ctrl_fpWen),
    .io_issue_6_bits_uop_ctrl_imm(scheduler_io_issue_6_bits_uop_ctrl_imm),
    .io_issue_6_bits_uop_pdest(scheduler_io_issue_6_bits_uop_pdest),
    .io_issue_6_bits_uop_robIdx_flag(scheduler_io_issue_6_bits_uop_robIdx_flag),
    .io_issue_6_bits_uop_robIdx_value(scheduler_io_issue_6_bits_uop_robIdx_value),
    .io_issue_6_bits_uop_lqIdx_flag(scheduler_io_issue_6_bits_uop_lqIdx_flag),
    .io_issue_6_bits_uop_lqIdx_value(scheduler_io_issue_6_bits_uop_lqIdx_value),
    .io_issue_6_bits_uop_sqIdx_flag(scheduler_io_issue_6_bits_uop_sqIdx_flag),
    .io_issue_6_bits_uop_sqIdx_value(scheduler_io_issue_6_bits_uop_sqIdx_value),
    .io_issue_6_bits_src_0(scheduler_io_issue_6_bits_src_0),
    .io_issue_7_ready(scheduler_io_issue_7_ready),
    .io_issue_7_valid(scheduler_io_issue_7_valid),
    .io_issue_7_bits_uop_cf_trigger_backendEn_0(scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_0),
    .io_issue_7_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_1),
    .io_issue_7_bits_uop_cf_ftqPtr_value(scheduler_io_issue_7_bits_uop_cf_ftqPtr_value),
    .io_issue_7_bits_uop_cf_ftqOffset(scheduler_io_issue_7_bits_uop_cf_ftqOffset),
    .io_issue_7_bits_uop_ctrl_fuType(scheduler_io_issue_7_bits_uop_ctrl_fuType),
    .io_issue_7_bits_uop_ctrl_fuOpType(scheduler_io_issue_7_bits_uop_ctrl_fuOpType),
    .io_issue_7_bits_uop_ctrl_rfWen(scheduler_io_issue_7_bits_uop_ctrl_rfWen),
    .io_issue_7_bits_uop_ctrl_fpWen(scheduler_io_issue_7_bits_uop_ctrl_fpWen),
    .io_issue_7_bits_uop_ctrl_imm(scheduler_io_issue_7_bits_uop_ctrl_imm),
    .io_issue_7_bits_uop_pdest(scheduler_io_issue_7_bits_uop_pdest),
    .io_issue_7_bits_uop_robIdx_flag(scheduler_io_issue_7_bits_uop_robIdx_flag),
    .io_issue_7_bits_uop_robIdx_value(scheduler_io_issue_7_bits_uop_robIdx_value),
    .io_issue_7_bits_uop_lqIdx_flag(scheduler_io_issue_7_bits_uop_lqIdx_flag),
    .io_issue_7_bits_uop_lqIdx_value(scheduler_io_issue_7_bits_uop_lqIdx_value),
    .io_issue_7_bits_uop_sqIdx_flag(scheduler_io_issue_7_bits_uop_sqIdx_flag),
    .io_issue_7_bits_uop_sqIdx_value(scheduler_io_issue_7_bits_uop_sqIdx_value),
    .io_issue_7_bits_src_0(scheduler_io_issue_7_bits_src_0),
    .io_issue_8_ready(scheduler_io_issue_8_ready),
    .io_issue_8_valid(scheduler_io_issue_8_valid),
    .io_issue_8_bits_uop_ctrl_fuType(scheduler_io_issue_8_bits_uop_ctrl_fuType),
    .io_issue_8_bits_uop_ctrl_fuOpType(scheduler_io_issue_8_bits_uop_ctrl_fuOpType),
    .io_issue_8_bits_uop_robIdx_flag(scheduler_io_issue_8_bits_uop_robIdx_flag),
    .io_issue_8_bits_uop_robIdx_value(scheduler_io_issue_8_bits_uop_robIdx_value),
    .io_issue_8_bits_uop_sqIdx_flag(scheduler_io_issue_8_bits_uop_sqIdx_flag),
    .io_issue_8_bits_uop_sqIdx_value(scheduler_io_issue_8_bits_uop_sqIdx_value),
    .io_issue_8_bits_src_0(scheduler_io_issue_8_bits_src_0),
    .io_issue_9_ready(scheduler_io_issue_9_ready),
    .io_issue_9_valid(scheduler_io_issue_9_valid),
    .io_issue_9_bits_uop_ctrl_fuType(scheduler_io_issue_9_bits_uop_ctrl_fuType),
    .io_issue_9_bits_uop_ctrl_fuOpType(scheduler_io_issue_9_bits_uop_ctrl_fuOpType),
    .io_issue_9_bits_uop_robIdx_flag(scheduler_io_issue_9_bits_uop_robIdx_flag),
    .io_issue_9_bits_uop_robIdx_value(scheduler_io_issue_9_bits_uop_robIdx_value),
    .io_issue_9_bits_uop_sqIdx_flag(scheduler_io_issue_9_bits_uop_sqIdx_flag),
    .io_issue_9_bits_uop_sqIdx_value(scheduler_io_issue_9_bits_uop_sqIdx_value),
    .io_issue_9_bits_src_0(scheduler_io_issue_9_bits_src_0),
    .io_fastUopOut_0_valid(scheduler_io_fastUopOut_0_valid),
    .io_fastUopOut_0_bits_ctrl_rfWen(scheduler_io_fastUopOut_0_bits_ctrl_rfWen),
    .io_fastUopOut_0_bits_ctrl_fpWen(scheduler_io_fastUopOut_0_bits_ctrl_fpWen),
    .io_fastUopOut_0_bits_pdest(scheduler_io_fastUopOut_0_bits_pdest),
    .io_fastUopOut_0_bits_robIdx_flag(scheduler_io_fastUopOut_0_bits_robIdx_flag),
    .io_fastUopOut_0_bits_robIdx_value(scheduler_io_fastUopOut_0_bits_robIdx_value),
    .io_fastUopOut_0_bits_lqIdx_flag(scheduler_io_fastUopOut_0_bits_lqIdx_flag),
    .io_fastUopOut_0_bits_lqIdx_value(scheduler_io_fastUopOut_0_bits_lqIdx_value),
    .io_fastUopOut_1_valid(scheduler_io_fastUopOut_1_valid),
    .io_fastUopOut_1_bits_ctrl_rfWen(scheduler_io_fastUopOut_1_bits_ctrl_rfWen),
    .io_fastUopOut_1_bits_ctrl_fpWen(scheduler_io_fastUopOut_1_bits_ctrl_fpWen),
    .io_fastUopOut_1_bits_pdest(scheduler_io_fastUopOut_1_bits_pdest),
    .io_fastUopOut_1_bits_robIdx_flag(scheduler_io_fastUopOut_1_bits_robIdx_flag),
    .io_fastUopOut_1_bits_robIdx_value(scheduler_io_fastUopOut_1_bits_robIdx_value),
    .io_fastUopOut_1_bits_lqIdx_flag(scheduler_io_fastUopOut_1_bits_lqIdx_flag),
    .io_fastUopOut_1_bits_lqIdx_value(scheduler_io_fastUopOut_1_bits_lqIdx_value),
    .io_writeback_0_valid(scheduler_io_writeback_0_valid),
    .io_writeback_0_bits_uop_ctrl_rfWen(scheduler_io_writeback_0_bits_uop_ctrl_rfWen),
    .io_writeback_0_bits_uop_ctrl_fpWen(scheduler_io_writeback_0_bits_uop_ctrl_fpWen),
    .io_writeback_0_bits_uop_pdest(scheduler_io_writeback_0_bits_uop_pdest),
    .io_writeback_0_bits_data(scheduler_io_writeback_0_bits_data),
    .io_writeback_1_valid(scheduler_io_writeback_1_valid),
    .io_writeback_1_bits_uop_ctrl_rfWen(scheduler_io_writeback_1_bits_uop_ctrl_rfWen),
    .io_writeback_1_bits_uop_ctrl_fpWen(scheduler_io_writeback_1_bits_uop_ctrl_fpWen),
    .io_writeback_1_bits_uop_pdest(scheduler_io_writeback_1_bits_uop_pdest),
    .io_writeback_1_bits_data(scheduler_io_writeback_1_bits_data),
    .io_writeback_2_valid(scheduler_io_writeback_2_valid),
    .io_writeback_2_bits_uop_ctrl_rfWen(scheduler_io_writeback_2_bits_uop_ctrl_rfWen),
    .io_writeback_2_bits_uop_ctrl_fpWen(scheduler_io_writeback_2_bits_uop_ctrl_fpWen),
    .io_writeback_2_bits_uop_pdest(scheduler_io_writeback_2_bits_uop_pdest),
    .io_writeback_2_bits_data(scheduler_io_writeback_2_bits_data),
    .io_writeback_3_valid(scheduler_io_writeback_3_valid),
    .io_writeback_3_bits_uop_ctrl_rfWen(scheduler_io_writeback_3_bits_uop_ctrl_rfWen),
    .io_writeback_3_bits_uop_ctrl_fpWen(scheduler_io_writeback_3_bits_uop_ctrl_fpWen),
    .io_writeback_3_bits_uop_pdest(scheduler_io_writeback_3_bits_uop_pdest),
    .io_writeback_3_bits_data(scheduler_io_writeback_3_bits_data),
    .io_writeback_4_valid(scheduler_io_writeback_4_valid),
    .io_writeback_4_bits_uop_ctrl_rfWen(scheduler_io_writeback_4_bits_uop_ctrl_rfWen),
    .io_writeback_4_bits_uop_ctrl_fpWen(scheduler_io_writeback_4_bits_uop_ctrl_fpWen),
    .io_writeback_4_bits_uop_pdest(scheduler_io_writeback_4_bits_uop_pdest),
    .io_writeback_4_bits_data(scheduler_io_writeback_4_bits_data),
    .io_writeback_5_valid(scheduler_io_writeback_5_valid),
    .io_writeback_5_bits_uop_ctrl_rfWen(scheduler_io_writeback_5_bits_uop_ctrl_rfWen),
    .io_writeback_5_bits_uop_ctrl_fpWen(scheduler_io_writeback_5_bits_uop_ctrl_fpWen),
    .io_writeback_5_bits_uop_pdest(scheduler_io_writeback_5_bits_uop_pdest),
    .io_writeback_5_bits_data(scheduler_io_writeback_5_bits_data),
    .io_writeback_6_valid(scheduler_io_writeback_6_valid),
    .io_writeback_6_bits_uop_ctrl_rfWen(scheduler_io_writeback_6_bits_uop_ctrl_rfWen),
    .io_writeback_6_bits_uop_ctrl_fpWen(scheduler_io_writeback_6_bits_uop_ctrl_fpWen),
    .io_writeback_6_bits_uop_pdest(scheduler_io_writeback_6_bits_uop_pdest),
    .io_writeback_6_bits_data(scheduler_io_writeback_6_bits_data),
    .io_writeback_7_valid(scheduler_io_writeback_7_valid),
    .io_writeback_7_bits_uop_ctrl_rfWen(scheduler_io_writeback_7_bits_uop_ctrl_rfWen),
    .io_writeback_7_bits_uop_ctrl_fpWen(scheduler_io_writeback_7_bits_uop_ctrl_fpWen),
    .io_writeback_7_bits_uop_pdest(scheduler_io_writeback_7_bits_uop_pdest),
    .io_writeback_7_bits_data(scheduler_io_writeback_7_bits_data),
    .io_writeback_8_valid(scheduler_io_writeback_8_valid),
    .io_writeback_8_bits_uop_ctrl_rfWen(scheduler_io_writeback_8_bits_uop_ctrl_rfWen),
    .io_writeback_8_bits_uop_ctrl_fpWen(scheduler_io_writeback_8_bits_uop_ctrl_fpWen),
    .io_writeback_8_bits_uop_pdest(scheduler_io_writeback_8_bits_uop_pdest),
    .io_writeback_8_bits_data(scheduler_io_writeback_8_bits_data),
    .io_fastUopIn_2_valid(scheduler_io_fastUopIn_2_valid),
    .io_fastUopIn_2_bits_ctrl_rfWen(scheduler_io_fastUopIn_2_bits_ctrl_rfWen),
    .io_fastUopIn_2_bits_pdest(scheduler_io_fastUopIn_2_bits_pdest),
    .io_fastUopIn_3_valid(scheduler_io_fastUopIn_3_valid),
    .io_fastUopIn_3_bits_ctrl_rfWen(scheduler_io_fastUopIn_3_bits_ctrl_rfWen),
    .io_fastUopIn_3_bits_pdest(scheduler_io_fastUopIn_3_bits_pdest),
    .io_extra_rsReady_0(scheduler_io_extra_rsReady_0),
    .io_extra_rsReady_1(scheduler_io_extra_rsReady_1),
    .io_extra_rsReady_2(scheduler_io_extra_rsReady_2),
    .io_extra_rsReady_3(scheduler_io_extra_rsReady_3),
    .io_extra_rsReady_4(scheduler_io_extra_rsReady_4),
    .io_extra_rsReady_5(scheduler_io_extra_rsReady_5),
    .io_extra_rsReady_6(scheduler_io_extra_rsReady_6),
    .io_extra_rsReady_7(scheduler_io_extra_rsReady_7),
    .io_extra_feedback_0_feedbackSlow_valid(scheduler_io_extra_feedback_0_feedbackSlow_valid),
    .io_extra_feedback_0_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_0_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_0_feedbackSlow_bits_hit(scheduler_io_extra_feedback_0_feedbackSlow_bits_hit),
    .io_extra_feedback_0_feedbackFast_valid(scheduler_io_extra_feedback_0_feedbackFast_valid),
    .io_extra_feedback_0_feedbackFast_bits_rsIdx(scheduler_io_extra_feedback_0_feedbackFast_bits_rsIdx),
    .io_extra_feedback_0_rsIdx(scheduler_io_extra_feedback_0_rsIdx),
    .io_extra_feedback_1_feedbackSlow_valid(scheduler_io_extra_feedback_1_feedbackSlow_valid),
    .io_extra_feedback_1_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_1_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_1_feedbackSlow_bits_hit(scheduler_io_extra_feedback_1_feedbackSlow_bits_hit),
    .io_extra_feedback_1_feedbackFast_valid(scheduler_io_extra_feedback_1_feedbackFast_valid),
    .io_extra_feedback_1_feedbackFast_bits_rsIdx(scheduler_io_extra_feedback_1_feedbackFast_bits_rsIdx),
    .io_extra_feedback_1_rsIdx(scheduler_io_extra_feedback_1_rsIdx),
    .io_extra_feedback_2_feedbackSlow_valid(scheduler_io_extra_feedback_2_feedbackSlow_valid),
    .io_extra_feedback_2_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_2_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_2_feedbackSlow_bits_hit(scheduler_io_extra_feedback_2_feedbackSlow_bits_hit),
    .io_extra_feedback_2_rsIdx(scheduler_io_extra_feedback_2_rsIdx),
    .io_extra_feedback_3_feedbackSlow_valid(scheduler_io_extra_feedback_3_feedbackSlow_valid),
    .io_extra_feedback_3_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_3_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_3_feedbackSlow_bits_hit(scheduler_io_extra_feedback_3_feedbackSlow_bits_hit),
    .io_extra_feedback_3_rsIdx(scheduler_io_extra_feedback_3_rsIdx),
    .io_extra_fpRfReadIn_0_addr(scheduler_io_extra_fpRfReadIn_0_addr),
    .io_extra_fpRfReadIn_0_data(scheduler_io_extra_fpRfReadIn_0_data),
    .io_extra_fpRfReadIn_1_addr(scheduler_io_extra_fpRfReadIn_1_addr),
    .io_extra_fpRfReadIn_1_data(scheduler_io_extra_fpRfReadIn_1_data),
    .io_extra_loadFastMatch_0(scheduler_io_extra_loadFastMatch_0),
    .io_extra_loadFastMatch_1(scheduler_io_extra_loadFastMatch_1),
    .io_extra_loadFastFuOpType_0(scheduler_io_extra_loadFastFuOpType_0),
    .io_extra_loadFastFuOpType_1(scheduler_io_extra_loadFastFuOpType_1),
    .io_extra_loadFastImm_0(scheduler_io_extra_loadFastImm_0),
    .io_extra_loadFastImm_1(scheduler_io_extra_loadFastImm_1),
    .io_extra_jumpPc(scheduler_io_extra_jumpPc),
    .io_extra_jalr_target(scheduler_io_extra_jalr_target),
    .io_extra_lcommit(scheduler_io_extra_lcommit),
    .io_extra_scommit(scheduler_io_extra_scommit),
    .io_extra_lqCancelCnt(scheduler_io_extra_lqCancelCnt),
    .io_extra_sqCancelCnt(scheduler_io_extra_sqCancelCnt),
    .io_extra_debug_int_rat_0(scheduler_io_extra_debug_int_rat_0),
    .io_extra_debug_int_rat_1(scheduler_io_extra_debug_int_rat_1),
    .io_extra_debug_int_rat_2(scheduler_io_extra_debug_int_rat_2),
    .io_extra_debug_int_rat_3(scheduler_io_extra_debug_int_rat_3),
    .io_extra_debug_int_rat_4(scheduler_io_extra_debug_int_rat_4),
    .io_extra_debug_int_rat_5(scheduler_io_extra_debug_int_rat_5),
    .io_extra_debug_int_rat_6(scheduler_io_extra_debug_int_rat_6),
    .io_extra_debug_int_rat_7(scheduler_io_extra_debug_int_rat_7),
    .io_extra_debug_int_rat_8(scheduler_io_extra_debug_int_rat_8),
    .io_extra_debug_int_rat_9(scheduler_io_extra_debug_int_rat_9),
    .io_extra_debug_int_rat_10(scheduler_io_extra_debug_int_rat_10),
    .io_extra_debug_int_rat_11(scheduler_io_extra_debug_int_rat_11),
    .io_extra_debug_int_rat_12(scheduler_io_extra_debug_int_rat_12),
    .io_extra_debug_int_rat_13(scheduler_io_extra_debug_int_rat_13),
    .io_extra_debug_int_rat_14(scheduler_io_extra_debug_int_rat_14),
    .io_extra_debug_int_rat_15(scheduler_io_extra_debug_int_rat_15),
    .io_extra_debug_int_rat_16(scheduler_io_extra_debug_int_rat_16),
    .io_extra_debug_int_rat_17(scheduler_io_extra_debug_int_rat_17),
    .io_extra_debug_int_rat_18(scheduler_io_extra_debug_int_rat_18),
    .io_extra_debug_int_rat_19(scheduler_io_extra_debug_int_rat_19),
    .io_extra_debug_int_rat_20(scheduler_io_extra_debug_int_rat_20),
    .io_extra_debug_int_rat_21(scheduler_io_extra_debug_int_rat_21),
    .io_extra_debug_int_rat_22(scheduler_io_extra_debug_int_rat_22),
    .io_extra_debug_int_rat_23(scheduler_io_extra_debug_int_rat_23),
    .io_extra_debug_int_rat_24(scheduler_io_extra_debug_int_rat_24),
    .io_extra_debug_int_rat_25(scheduler_io_extra_debug_int_rat_25),
    .io_extra_debug_int_rat_26(scheduler_io_extra_debug_int_rat_26),
    .io_extra_debug_int_rat_27(scheduler_io_extra_debug_int_rat_27),
    .io_extra_debug_int_rat_28(scheduler_io_extra_debug_int_rat_28),
    .io_extra_debug_int_rat_29(scheduler_io_extra_debug_int_rat_29),
    .io_extra_debug_int_rat_30(scheduler_io_extra_debug_int_rat_30),
    .io_extra_debug_int_rat_31(scheduler_io_extra_debug_int_rat_31),
    .io_extra_robDeqPtr_flag(scheduler_io_extra_robDeqPtr_flag),
    .io_extra_robDeqPtr_value(scheduler_io_extra_robDeqPtr_value),
    .io_extra_robHeadLsIssue(scheduler_io_extra_robHeadLsIssue),
    .io_perf_0_value(scheduler_io_perf_0_value),
    .io_perf_1_value(scheduler_io_perf_1_value),
    .io_perf_2_value(scheduler_io_perf_2_value),
    .io_perf_3_value(scheduler_io_perf_3_value),
    .io_perf_4_value(scheduler_io_perf_4_value),
    .io_perf_5_value(scheduler_io_perf_5_value),
    .io_perf_6_value(scheduler_io_perf_6_value),
    .io_perf_7_value(scheduler_io_perf_7_value),
    .io_perf_8_value(scheduler_io_perf_8_value),
    .io_perf_9_value(scheduler_io_perf_9_value),
    .io_perf_10_value(scheduler_io_perf_10_value),
    .io_perf_11_value(scheduler_io_perf_11_value)
  );
  FUBlock fuBlock ( // @[ExuBlock.scala 62:23]
    .clock(fuBlock_clock),
    .reset(fuBlock_reset),
    .io_redirect_valid(fuBlock_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(fuBlock_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(fuBlock_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(fuBlock_io_redirect_bits_level),
    .io_issue_0_valid(fuBlock_io_issue_0_valid),
    .io_issue_0_bits_uop_cf_pd_isRVC(fuBlock_io_issue_0_bits_uop_cf_pd_isRVC),
    .io_issue_0_bits_uop_cf_pd_brType(fuBlock_io_issue_0_bits_uop_cf_pd_brType),
    .io_issue_0_bits_uop_cf_pd_isCall(fuBlock_io_issue_0_bits_uop_cf_pd_isCall),
    .io_issue_0_bits_uop_cf_pd_isRet(fuBlock_io_issue_0_bits_uop_cf_pd_isRet),
    .io_issue_0_bits_uop_cf_pred_taken(fuBlock_io_issue_0_bits_uop_cf_pred_taken),
    .io_issue_0_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_0_bits_uop_cf_ftqPtr_flag),
    .io_issue_0_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_0_bits_uop_cf_ftqPtr_value),
    .io_issue_0_bits_uop_cf_ftqOffset(fuBlock_io_issue_0_bits_uop_cf_ftqOffset),
    .io_issue_0_bits_uop_ctrl_fuType(fuBlock_io_issue_0_bits_uop_ctrl_fuType),
    .io_issue_0_bits_uop_ctrl_fuOpType(fuBlock_io_issue_0_bits_uop_ctrl_fuOpType),
    .io_issue_0_bits_uop_ctrl_imm(fuBlock_io_issue_0_bits_uop_ctrl_imm),
    .io_issue_0_bits_uop_robIdx_flag(fuBlock_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(fuBlock_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_src_0(fuBlock_io_issue_0_bits_src_0),
    .io_issue_0_bits_src_1(fuBlock_io_issue_0_bits_src_1),
    .io_issue_1_valid(fuBlock_io_issue_1_valid),
    .io_issue_1_bits_uop_cf_pd_isRVC(fuBlock_io_issue_1_bits_uop_cf_pd_isRVC),
    .io_issue_1_bits_uop_cf_pd_brType(fuBlock_io_issue_1_bits_uop_cf_pd_brType),
    .io_issue_1_bits_uop_cf_pd_isCall(fuBlock_io_issue_1_bits_uop_cf_pd_isCall),
    .io_issue_1_bits_uop_cf_pd_isRet(fuBlock_io_issue_1_bits_uop_cf_pd_isRet),
    .io_issue_1_bits_uop_cf_pred_taken(fuBlock_io_issue_1_bits_uop_cf_pred_taken),
    .io_issue_1_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_1_bits_uop_cf_ftqPtr_flag),
    .io_issue_1_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_1_bits_uop_cf_ftqPtr_value),
    .io_issue_1_bits_uop_cf_ftqOffset(fuBlock_io_issue_1_bits_uop_cf_ftqOffset),
    .io_issue_1_bits_uop_ctrl_fuType(fuBlock_io_issue_1_bits_uop_ctrl_fuType),
    .io_issue_1_bits_uop_ctrl_fuOpType(fuBlock_io_issue_1_bits_uop_ctrl_fuOpType),
    .io_issue_1_bits_uop_ctrl_imm(fuBlock_io_issue_1_bits_uop_ctrl_imm),
    .io_issue_1_bits_uop_robIdx_flag(fuBlock_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(fuBlock_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_src_0(fuBlock_io_issue_1_bits_src_0),
    .io_issue_1_bits_src_1(fuBlock_io_issue_1_bits_src_1),
    .io_issue_2_ready(fuBlock_io_issue_2_ready),
    .io_issue_2_valid(fuBlock_io_issue_2_valid),
    .io_issue_2_bits_uop_ctrl_fuType(fuBlock_io_issue_2_bits_uop_ctrl_fuType),
    .io_issue_2_bits_uop_ctrl_fuOpType(fuBlock_io_issue_2_bits_uop_ctrl_fuOpType),
    .io_issue_2_bits_uop_ctrl_rfWen(fuBlock_io_issue_2_bits_uop_ctrl_rfWen),
    .io_issue_2_bits_uop_ctrl_fpWen(fuBlock_io_issue_2_bits_uop_ctrl_fpWen),
    .io_issue_2_bits_uop_pdest(fuBlock_io_issue_2_bits_uop_pdest),
    .io_issue_2_bits_uop_robIdx_flag(fuBlock_io_issue_2_bits_uop_robIdx_flag),
    .io_issue_2_bits_uop_robIdx_value(fuBlock_io_issue_2_bits_uop_robIdx_value),
    .io_issue_2_bits_uop_lqIdx_flag(fuBlock_io_issue_2_bits_uop_lqIdx_flag),
    .io_issue_2_bits_uop_lqIdx_value(fuBlock_io_issue_2_bits_uop_lqIdx_value),
    .io_issue_2_bits_src_0(fuBlock_io_issue_2_bits_src_0),
    .io_issue_2_bits_src_1(fuBlock_io_issue_2_bits_src_1),
    .io_issue_3_ready(fuBlock_io_issue_3_ready),
    .io_issue_3_valid(fuBlock_io_issue_3_valid),
    .io_issue_3_bits_uop_cf_pc(fuBlock_io_issue_3_bits_uop_cf_pc),
    .io_issue_3_bits_uop_cf_pd_isRVC(fuBlock_io_issue_3_bits_uop_cf_pd_isRVC),
    .io_issue_3_bits_uop_cf_pd_brType(fuBlock_io_issue_3_bits_uop_cf_pd_brType),
    .io_issue_3_bits_uop_cf_pd_isCall(fuBlock_io_issue_3_bits_uop_cf_pd_isCall),
    .io_issue_3_bits_uop_cf_pd_isRet(fuBlock_io_issue_3_bits_uop_cf_pd_isRet),
    .io_issue_3_bits_uop_cf_pred_taken(fuBlock_io_issue_3_bits_uop_cf_pred_taken),
    .io_issue_3_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_3_bits_uop_cf_ftqPtr_flag),
    .io_issue_3_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_3_bits_uop_cf_ftqPtr_value),
    .io_issue_3_bits_uop_cf_ftqOffset(fuBlock_io_issue_3_bits_uop_cf_ftqOffset),
    .io_issue_3_bits_uop_ctrl_fuType(fuBlock_io_issue_3_bits_uop_ctrl_fuType),
    .io_issue_3_bits_uop_ctrl_fuOpType(fuBlock_io_issue_3_bits_uop_ctrl_fuOpType),
    .io_issue_3_bits_uop_ctrl_rfWen(fuBlock_io_issue_3_bits_uop_ctrl_rfWen),
    .io_issue_3_bits_uop_ctrl_fpWen(fuBlock_io_issue_3_bits_uop_ctrl_fpWen),
    .io_issue_3_bits_uop_ctrl_imm(fuBlock_io_issue_3_bits_uop_ctrl_imm),
    .io_issue_3_bits_uop_ctrl_fpu_typeTagOut(fuBlock_io_issue_3_bits_uop_ctrl_fpu_typeTagOut),
    .io_issue_3_bits_uop_ctrl_fpu_fromInt(fuBlock_io_issue_3_bits_uop_ctrl_fpu_fromInt),
    .io_issue_3_bits_uop_ctrl_fpu_wflags(fuBlock_io_issue_3_bits_uop_ctrl_fpu_wflags),
    .io_issue_3_bits_uop_ctrl_fpu_typ(fuBlock_io_issue_3_bits_uop_ctrl_fpu_typ),
    .io_issue_3_bits_uop_ctrl_fpu_rm(fuBlock_io_issue_3_bits_uop_ctrl_fpu_rm),
    .io_issue_3_bits_uop_pdest(fuBlock_io_issue_3_bits_uop_pdest),
    .io_issue_3_bits_uop_robIdx_flag(fuBlock_io_issue_3_bits_uop_robIdx_flag),
    .io_issue_3_bits_uop_robIdx_value(fuBlock_io_issue_3_bits_uop_robIdx_value),
    .io_issue_3_bits_uop_lqIdx_flag(fuBlock_io_issue_3_bits_uop_lqIdx_flag),
    .io_issue_3_bits_uop_lqIdx_value(fuBlock_io_issue_3_bits_uop_lqIdx_value),
    .io_issue_3_bits_src_0(fuBlock_io_issue_3_bits_src_0),
    .io_issue_3_bits_src_1(fuBlock_io_issue_3_bits_src_1),
    .io_writeback_0_bits_data(fuBlock_io_writeback_0_bits_data),
    .io_writeback_0_bits_redirectValid(fuBlock_io_writeback_0_bits_redirectValid),
    .io_writeback_0_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_0_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_bits_data(fuBlock_io_writeback_1_bits_data),
    .io_writeback_1_bits_redirectValid(fuBlock_io_writeback_1_bits_redirectValid),
    .io_writeback_1_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_1_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_2_valid(fuBlock_io_writeback_2_valid),
    .io_writeback_2_bits_uop_ctrl_rfWen(fuBlock_io_writeback_2_bits_uop_ctrl_rfWen),
    .io_writeback_2_bits_uop_ctrl_fpWen(fuBlock_io_writeback_2_bits_uop_ctrl_fpWen),
    .io_writeback_2_bits_uop_pdest(fuBlock_io_writeback_2_bits_uop_pdest),
    .io_writeback_2_bits_uop_robIdx_flag(fuBlock_io_writeback_2_bits_uop_robIdx_flag),
    .io_writeback_2_bits_uop_robIdx_value(fuBlock_io_writeback_2_bits_uop_robIdx_value),
    .io_writeback_2_bits_uop_lqIdx_flag(fuBlock_io_writeback_2_bits_uop_lqIdx_flag),
    .io_writeback_2_bits_uop_lqIdx_value(fuBlock_io_writeback_2_bits_uop_lqIdx_value),
    .io_writeback_2_bits_data(fuBlock_io_writeback_2_bits_data),
    .io_writeback_3_ready(fuBlock_io_writeback_3_ready),
    .io_writeback_3_valid(fuBlock_io_writeback_3_valid),
    .io_writeback_3_bits_uop_cf_exceptionVec_2(fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_2),
    .io_writeback_3_bits_uop_cf_exceptionVec_3(fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_3),
    .io_writeback_3_bits_uop_cf_exceptionVec_8(fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_8),
    .io_writeback_3_bits_uop_cf_exceptionVec_9(fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_9),
    .io_writeback_3_bits_uop_cf_exceptionVec_11(fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_11),
    .io_writeback_3_bits_uop_ctrl_rfWen(fuBlock_io_writeback_3_bits_uop_ctrl_rfWen),
    .io_writeback_3_bits_uop_ctrl_fpWen(fuBlock_io_writeback_3_bits_uop_ctrl_fpWen),
    .io_writeback_3_bits_uop_ctrl_flushPipe(fuBlock_io_writeback_3_bits_uop_ctrl_flushPipe),
    .io_writeback_3_bits_uop_pdest(fuBlock_io_writeback_3_bits_uop_pdest),
    .io_writeback_3_bits_uop_robIdx_flag(fuBlock_io_writeback_3_bits_uop_robIdx_flag),
    .io_writeback_3_bits_uop_robIdx_value(fuBlock_io_writeback_3_bits_uop_robIdx_value),
    .io_writeback_3_bits_uop_lqIdx_flag(fuBlock_io_writeback_3_bits_uop_lqIdx_flag),
    .io_writeback_3_bits_uop_lqIdx_value(fuBlock_io_writeback_3_bits_uop_lqIdx_value),
    .io_writeback_3_bits_data(fuBlock_io_writeback_3_bits_data),
    .io_writeback_3_bits_fflags(fuBlock_io_writeback_3_bits_fflags),
    .io_writeback_3_bits_redirectValid(fuBlock_io_writeback_3_bits_redirectValid),
    .io_writeback_3_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_3_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_3_bits_debug_isPerfCnt(fuBlock_io_writeback_3_bits_debug_isPerfCnt),
    .io_extra_exuRedirect_0_valid(fuBlock_io_extra_exuRedirect_0_valid),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_0_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_0_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_0_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_0_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_value),
    .io_extra_exuRedirect_0_bits_redirectValid(fuBlock_io_extra_exuRedirect_0_bits_redirectValid),
    .io_extra_exuRedirect_0_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_0_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_0_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_0_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target(fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target
      ),
    .io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_exuRedirect_1_valid(fuBlock_io_extra_exuRedirect_1_valid),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_1_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_1_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_1_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_1_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_value),
    .io_extra_exuRedirect_1_bits_redirectValid(fuBlock_io_extra_exuRedirect_1_bits_redirectValid),
    .io_extra_exuRedirect_1_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_1_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_1_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_1_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken(fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken),
    .io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_exuRedirect_2_valid(fuBlock_io_extra_exuRedirect_2_valid),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_2_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_2_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_2_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_2_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_value),
    .io_extra_exuRedirect_2_bits_redirectValid(fuBlock_io_extra_exuRedirect_2_bits_redirectValid),
    .io_extra_exuRedirect_2_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_2_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_2_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_2_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken(fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken),
    .io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_csrio_hartId(fuBlock_io_extra_csrio_hartId),
    .io_extra_csrio_perf_perfEventsFrontend_0_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_0_value),
    .io_extra_csrio_perf_perfEventsFrontend_1_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_1_value),
    .io_extra_csrio_perf_perfEventsFrontend_2_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_2_value),
    .io_extra_csrio_perf_perfEventsFrontend_3_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_3_value),
    .io_extra_csrio_perf_perfEventsFrontend_4_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_4_value),
    .io_extra_csrio_perf_perfEventsFrontend_5_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_5_value),
    .io_extra_csrio_perf_perfEventsFrontend_6_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_6_value),
    .io_extra_csrio_perf_perfEventsFrontend_7_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_7_value),
    .io_extra_csrio_perf_perfEventsCtrl_0_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_0_value),
    .io_extra_csrio_perf_perfEventsCtrl_1_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_1_value),
    .io_extra_csrio_perf_perfEventsCtrl_2_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_2_value),
    .io_extra_csrio_perf_perfEventsCtrl_3_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_3_value),
    .io_extra_csrio_perf_perfEventsCtrl_4_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_4_value),
    .io_extra_csrio_perf_perfEventsCtrl_5_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_5_value),
    .io_extra_csrio_perf_perfEventsCtrl_6_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_6_value),
    .io_extra_csrio_perf_perfEventsCtrl_7_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_7_value),
    .io_extra_csrio_perf_perfEventsLsu_0_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_0_value),
    .io_extra_csrio_perf_perfEventsLsu_1_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_1_value),
    .io_extra_csrio_perf_perfEventsLsu_2_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_2_value),
    .io_extra_csrio_perf_perfEventsLsu_3_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_3_value),
    .io_extra_csrio_perf_perfEventsLsu_4_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_4_value),
    .io_extra_csrio_perf_perfEventsLsu_5_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_5_value),
    .io_extra_csrio_perf_perfEventsLsu_6_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_6_value),
    .io_extra_csrio_perf_perfEventsLsu_7_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_7_value),
    .io_extra_csrio_perf_retiredInstr(fuBlock_io_extra_csrio_perf_retiredInstr),
    .io_extra_csrio_fpu_fflags_valid(fuBlock_io_extra_csrio_fpu_fflags_valid),
    .io_extra_csrio_fpu_fflags_bits(fuBlock_io_extra_csrio_fpu_fflags_bits),
    .io_extra_csrio_fpu_dirty_fs(fuBlock_io_extra_csrio_fpu_dirty_fs),
    .io_extra_csrio_fpu_frm(fuBlock_io_extra_csrio_fpu_frm),
    .io_extra_csrio_exception_valid(fuBlock_io_extra_csrio_exception_valid),
    .io_extra_csrio_exception_bits_uop_cf_pc(fuBlock_io_extra_csrio_exception_bits_uop_cf_pc),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_0(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_0),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_1(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_1),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_2(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_2),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_3(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_3),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_4(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_4),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_5(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_5),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_6(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_6),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_7(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_7),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_8(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_8),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_9(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_9),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_11(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_11),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_12(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_12),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_13(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_13),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_15(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_15),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5),
    .io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix(fuBlock_io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix),
    .io_extra_csrio_exception_bits_uop_ctrl_singleStep(fuBlock_io_extra_csrio_exception_bits_uop_ctrl_singleStep),
    .io_extra_csrio_exception_bits_isInterrupt(fuBlock_io_extra_csrio_exception_bits_isInterrupt),
    .io_extra_csrio_isXRet(fuBlock_io_extra_csrio_isXRet),
    .io_extra_csrio_trapTarget(fuBlock_io_extra_csrio_trapTarget),
    .io_extra_csrio_interrupt(fuBlock_io_extra_csrio_interrupt),
    .io_extra_csrio_wfi_event(fuBlock_io_extra_csrio_wfi_event),
    .io_extra_csrio_memExceptionVAddr(fuBlock_io_extra_csrio_memExceptionVAddr),
    .io_extra_csrio_externalInterrupt_mtip(fuBlock_io_extra_csrio_externalInterrupt_mtip),
    .io_extra_csrio_externalInterrupt_msip(fuBlock_io_extra_csrio_externalInterrupt_msip),
    .io_extra_csrio_externalInterrupt_meip(fuBlock_io_extra_csrio_externalInterrupt_meip),
    .io_extra_csrio_externalInterrupt_seip(fuBlock_io_extra_csrio_externalInterrupt_seip),
    .io_extra_csrio_externalInterrupt_debug(fuBlock_io_extra_csrio_externalInterrupt_debug),
    .io_extra_csrio_tlb_satp_mode(fuBlock_io_extra_csrio_tlb_satp_mode),
    .io_extra_csrio_tlb_satp_asid(fuBlock_io_extra_csrio_tlb_satp_asid),
    .io_extra_csrio_tlb_satp_ppn(fuBlock_io_extra_csrio_tlb_satp_ppn),
    .io_extra_csrio_tlb_satp_changed(fuBlock_io_extra_csrio_tlb_satp_changed),
    .io_extra_csrio_tlb_priv_mxr(fuBlock_io_extra_csrio_tlb_priv_mxr),
    .io_extra_csrio_tlb_priv_sum(fuBlock_io_extra_csrio_tlb_priv_sum),
    .io_extra_csrio_tlb_priv_imode(fuBlock_io_extra_csrio_tlb_priv_imode),
    .io_extra_csrio_tlb_priv_dmode(fuBlock_io_extra_csrio_tlb_priv_dmode),
    .io_extra_csrio_customCtrl_l2_pf_store_only(fuBlock_io_extra_csrio_customCtrl_l2_pf_store_only),
    .io_extra_csrio_customCtrl_icache_parity_enable(fuBlock_io_extra_csrio_customCtrl_icache_parity_enable),
    .io_extra_csrio_customCtrl_lvpred_timeout(fuBlock_io_extra_csrio_customCtrl_lvpred_timeout),
    .io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_btb_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_btb_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_tage_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_tage_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_sc_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_sc_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_ras_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ras_enable),
    .io_extra_csrio_customCtrl_ldld_vio_check_enable(fuBlock_io_extra_csrio_customCtrl_ldld_vio_check_enable),
    .io_extra_csrio_customCtrl_cache_error_enable(fuBlock_io_extra_csrio_customCtrl_cache_error_enable),
    .io_extra_csrio_customCtrl_uncache_write_outstanding_enable(
      fuBlock_io_extra_csrio_customCtrl_uncache_write_outstanding_enable),
    .io_extra_csrio_customCtrl_fusion_enable(fuBlock_io_extra_csrio_customCtrl_fusion_enable),
    .io_extra_csrio_customCtrl_wfi_enable(fuBlock_io_extra_csrio_customCtrl_wfi_enable),
    .io_extra_csrio_customCtrl_svinval_enable(fuBlock_io_extra_csrio_customCtrl_svinval_enable),
    .io_extra_csrio_customCtrl_distribute_csr_wvalid(fuBlock_io_extra_csrio_customCtrl_distribute_csr_wvalid),
    .io_extra_csrio_customCtrl_distribute_csr_waddr(fuBlock_io_extra_csrio_customCtrl_distribute_csr_waddr),
    .io_extra_csrio_customCtrl_distribute_csr_wdata(fuBlock_io_extra_csrio_customCtrl_distribute_csr_wdata),
    .io_extra_csrio_customCtrl_singlestep(fuBlock_io_extra_csrio_customCtrl_singlestep),
    .io_extra_csrio_customCtrl_frontend_trigger_t_valid(fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_valid),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .io_extra_csrio_customCtrl_mem_trigger_t_valid(fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_valid),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_addr(fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_addr),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2),
    .io_extra_csrio_customCtrl_trigger_enable_0(fuBlock_io_extra_csrio_customCtrl_trigger_enable_0),
    .io_extra_csrio_customCtrl_trigger_enable_1(fuBlock_io_extra_csrio_customCtrl_trigger_enable_1),
    .io_extra_csrio_customCtrl_trigger_enable_2(fuBlock_io_extra_csrio_customCtrl_trigger_enable_2),
    .io_extra_csrio_customCtrl_trigger_enable_3(fuBlock_io_extra_csrio_customCtrl_trigger_enable_3),
    .io_extra_csrio_customCtrl_trigger_enable_4(fuBlock_io_extra_csrio_customCtrl_trigger_enable_4),
    .io_extra_csrio_customCtrl_trigger_enable_5(fuBlock_io_extra_csrio_customCtrl_trigger_enable_5),
    .io_extra_csrio_customCtrl_trigger_enable_6(fuBlock_io_extra_csrio_customCtrl_trigger_enable_6),
    .io_extra_csrio_customCtrl_trigger_enable_7(fuBlock_io_extra_csrio_customCtrl_trigger_enable_7),
    .io_extra_csrio_customCtrl_trigger_enable_8(fuBlock_io_extra_csrio_customCtrl_trigger_enable_8),
    .io_extra_csrio_customCtrl_trigger_enable_9(fuBlock_io_extra_csrio_customCtrl_trigger_enable_9),
    .io_extra_csrio_distributedUpdate_0_wvalid(fuBlock_io_extra_csrio_distributedUpdate_0_wvalid),
    .io_extra_csrio_distributedUpdate_0_waddr(fuBlock_io_extra_csrio_distributedUpdate_0_waddr),
    .io_extra_csrio_distributedUpdate_0_wdata(fuBlock_io_extra_csrio_distributedUpdate_0_wdata),
    .io_extra_csrio_distributedUpdate_1_wvalid(fuBlock_io_extra_csrio_distributedUpdate_1_wvalid),
    .io_extra_csrio_distributedUpdate_1_waddr(fuBlock_io_extra_csrio_distributedUpdate_1_waddr),
    .io_extra_csrio_distributedUpdate_1_wdata(fuBlock_io_extra_csrio_distributedUpdate_1_wdata),
    .io_extra_fenceio_sfence_valid(fuBlock_io_extra_fenceio_sfence_valid),
    .io_extra_fenceio_sfence_bits_rs1(fuBlock_io_extra_fenceio_sfence_bits_rs1),
    .io_extra_fenceio_sfence_bits_rs2(fuBlock_io_extra_fenceio_sfence_bits_rs2),
    .io_extra_fenceio_sfence_bits_addr(fuBlock_io_extra_fenceio_sfence_bits_addr),
    .io_extra_fenceio_sfence_bits_asid(fuBlock_io_extra_fenceio_sfence_bits_asid),
    .io_extra_fenceio_fencei(fuBlock_io_extra_fenceio_fencei),
    .io_extra_fenceio_sbuffer_flushSb(fuBlock_io_extra_fenceio_sbuffer_flushSb),
    .io_extra_fenceio_sbuffer_sbIsEmpty(fuBlock_io_extra_fenceio_sbuffer_sbIsEmpty)
  );
  assign io_issue_0_valid = scheduler_io_issue_4_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_4_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_storeSetHit = scheduler_io_issue_4_bits_uop_cf_storeSetHit; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_loadWaitStrict = scheduler_io_issue_4_bits_uop_cf_loadWaitStrict; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ssid = scheduler_io_issue_4_bits_uop_cf_ssid; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_4_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ftqPtr_value = scheduler_io_issue_4_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ftqOffset = scheduler_io_issue_4_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_fuOpType = scheduler_io_issue_4_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_rfWen = scheduler_io_issue_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_fpWen = scheduler_io_issue_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_imm = scheduler_io_issue_4_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_pdest = scheduler_io_issue_4_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_robIdx_flag = scheduler_io_issue_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_robIdx_value = scheduler_io_issue_4_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_lqIdx_flag = scheduler_io_issue_4_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_lqIdx_value = scheduler_io_issue_4_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_sqIdx_flag = scheduler_io_issue_4_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_sqIdx_value = scheduler_io_issue_4_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_src_0 = scheduler_io_issue_4_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_1_valid = scheduler_io_issue_5_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_5_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_storeSetHit = scheduler_io_issue_5_bits_uop_cf_storeSetHit; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_loadWaitStrict = scheduler_io_issue_5_bits_uop_cf_loadWaitStrict; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ssid = scheduler_io_issue_5_bits_uop_cf_ssid; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_5_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ftqPtr_value = scheduler_io_issue_5_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ftqOffset = scheduler_io_issue_5_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_fuOpType = scheduler_io_issue_5_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_rfWen = scheduler_io_issue_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_fpWen = scheduler_io_issue_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_imm = scheduler_io_issue_5_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_pdest = scheduler_io_issue_5_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_robIdx_flag = scheduler_io_issue_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_robIdx_value = scheduler_io_issue_5_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_lqIdx_flag = scheduler_io_issue_5_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_lqIdx_value = scheduler_io_issue_5_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_sqIdx_flag = scheduler_io_issue_5_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_sqIdx_value = scheduler_io_issue_5_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_src_0 = scheduler_io_issue_5_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_2_valid = scheduler_io_issue_6_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendEn_0 = scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_ftqPtr_value = scheduler_io_issue_6_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_ftqOffset = scheduler_io_issue_6_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_fuType = scheduler_io_issue_6_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_fuOpType = scheduler_io_issue_6_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_rfWen = scheduler_io_issue_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_fpWen = scheduler_io_issue_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_imm = scheduler_io_issue_6_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_pdest = scheduler_io_issue_6_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_robIdx_flag = scheduler_io_issue_6_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_robIdx_value = scheduler_io_issue_6_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_lqIdx_flag = scheduler_io_issue_6_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_lqIdx_value = scheduler_io_issue_6_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_sqIdx_flag = scheduler_io_issue_6_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_sqIdx_value = scheduler_io_issue_6_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_src_0 = scheduler_io_issue_6_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_3_valid = scheduler_io_issue_7_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendEn_0 = scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_ftqPtr_value = scheduler_io_issue_7_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_ftqOffset = scheduler_io_issue_7_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_fuType = scheduler_io_issue_7_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_fuOpType = scheduler_io_issue_7_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_rfWen = scheduler_io_issue_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_fpWen = scheduler_io_issue_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_imm = scheduler_io_issue_7_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_pdest = scheduler_io_issue_7_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_robIdx_flag = scheduler_io_issue_7_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_robIdx_value = scheduler_io_issue_7_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_lqIdx_flag = scheduler_io_issue_7_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_lqIdx_value = scheduler_io_issue_7_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_sqIdx_flag = scheduler_io_issue_7_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_sqIdx_value = scheduler_io_issue_7_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_src_0 = scheduler_io_issue_7_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_4_valid = scheduler_io_issue_8_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_ctrl_fuType = scheduler_io_issue_8_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_ctrl_fuOpType = scheduler_io_issue_8_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_robIdx_flag = scheduler_io_issue_8_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_robIdx_value = scheduler_io_issue_8_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_sqIdx_flag = scheduler_io_issue_8_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_sqIdx_value = scheduler_io_issue_8_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_src_0 = scheduler_io_issue_8_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_5_valid = scheduler_io_issue_9_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_ctrl_fuType = scheduler_io_issue_9_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_ctrl_fuOpType = scheduler_io_issue_9_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_robIdx_flag = scheduler_io_issue_9_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_robIdx_value = scheduler_io_issue_9_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_sqIdx_flag = scheduler_io_issue_9_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_sqIdx_value = scheduler_io_issue_9_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_src_0 = scheduler_io_issue_9_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_fuWriteback_0_valid = io_fuWriteback_0_valid_REG; // @[ExuBlock.scala 172:19]
  assign io_fuWriteback_0_bits_uop_ctrl_rfWen = io_fuWriteback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_0_bits_uop_pdest = io_fuWriteback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_0_bits_uop_robIdx_flag = io_fuWriteback_0_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_0_bits_uop_robIdx_value = io_fuWriteback_0_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_0_bits_uop_lqIdx_flag = io_fuWriteback_0_bits_uop_REG_lqIdx_flag; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_0_bits_uop_lqIdx_value = io_fuWriteback_0_bits_uop_REG_lqIdx_value; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_0_bits_data = fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_redirectValid = fuBlock_io_writeback_0_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_valid = io_fuWriteback_1_valid_REG; // @[ExuBlock.scala 172:19]
  assign io_fuWriteback_1_bits_uop_ctrl_rfWen = io_fuWriteback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_1_bits_uop_pdest = io_fuWriteback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_1_bits_uop_robIdx_flag = io_fuWriteback_1_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_1_bits_uop_robIdx_value = io_fuWriteback_1_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_1_bits_uop_lqIdx_flag = io_fuWriteback_1_bits_uop_REG_lqIdx_flag; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_1_bits_uop_lqIdx_value = io_fuWriteback_1_bits_uop_REG_lqIdx_value; // @[ExuBlock.scala 173:22]
  assign io_fuWriteback_1_bits_data = fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_redirectValid = fuBlock_io_writeback_1_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_valid = fuBlock_io_writeback_2_valid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_ctrl_rfWen = fuBlock_io_writeback_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_ctrl_fpWen = fuBlock_io_writeback_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_pdest = fuBlock_io_writeback_2_bits_uop_pdest; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_robIdx_flag = fuBlock_io_writeback_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_robIdx_value = fuBlock_io_writeback_2_bits_uop_robIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_lqIdx_flag = fuBlock_io_writeback_2_bits_uop_lqIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_uop_lqIdx_value = fuBlock_io_writeback_2_bits_uop_lqIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_data = fuBlock_io_writeback_2_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_valid = fuBlock_io_writeback_3_valid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_cf_exceptionVec_2 = fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_cf_exceptionVec_3 = fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_cf_exceptionVec_8 = fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_cf_exceptionVec_9 = fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_cf_exceptionVec_11 = fuBlock_io_writeback_3_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_ctrl_rfWen = fuBlock_io_writeback_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_ctrl_fpWen = fuBlock_io_writeback_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_ctrl_flushPipe = fuBlock_io_writeback_3_bits_uop_ctrl_flushPipe; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_pdest = fuBlock_io_writeback_3_bits_uop_pdest; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_robIdx_flag = fuBlock_io_writeback_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_robIdx_value = fuBlock_io_writeback_3_bits_uop_robIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_lqIdx_flag = fuBlock_io_writeback_3_bits_uop_lqIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_uop_lqIdx_value = fuBlock_io_writeback_3_bits_uop_lqIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_data = fuBlock_io_writeback_3_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_fflags = fuBlock_io_writeback_3_bits_fflags; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_redirectValid = fuBlock_io_writeback_3_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_3_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_debug_isPerfCnt = fuBlock_io_writeback_3_bits_debug_isPerfCnt; // @[ExuBlock.scala 106:24]
  assign io_scheExtra_rsReady_0 = scheduler_io_extra_rsReady_0; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_1 = scheduler_io_extra_rsReady_1; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_2 = scheduler_io_extra_rsReady_2; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_3 = scheduler_io_extra_rsReady_3; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_4 = scheduler_io_extra_rsReady_4; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_5 = scheduler_io_extra_rsReady_5; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_6 = scheduler_io_extra_rsReady_6; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_rsReady_7 = scheduler_io_extra_rsReady_7; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_0_rsIdx = scheduler_io_extra_feedback_0_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_1_rsIdx = scheduler_io_extra_feedback_1_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_2_rsIdx = scheduler_io_extra_feedback_2_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_3_rsIdx = scheduler_io_extra_feedback_3_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_fpRfReadIn_0_addr = scheduler_io_extra_fpRfReadIn_0_addr; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_fpRfReadIn_1_addr = scheduler_io_extra_fpRfReadIn_1_addr; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_loadFastMatch_0 = scheduler_io_extra_loadFastMatch_0; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_loadFastMatch_1 = scheduler_io_extra_loadFastMatch_1; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_loadFastFuOpType_0 = scheduler_io_extra_loadFastFuOpType_0; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_loadFastFuOpType_1 = scheduler_io_extra_loadFastFuOpType_1; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_loadFastImm_0 = scheduler_io_extra_loadFastImm_0; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_loadFastImm_1 = scheduler_io_extra_loadFastImm_1; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_robHeadLsIssue = scheduler_io_extra_robHeadLsIssue; // @[ExuBlock.scala 93:22]
  assign io_fuExtra_exuRedirect_0_valid = fuBlock_io_extra_exuRedirect_0_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirectValid = fuBlock_io_extra_exuRedirect_0_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target =
    fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_valid = fuBlock_io_extra_exuRedirect_1_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirectValid = fuBlock_io_extra_exuRedirect_1_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken =
    fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_valid = fuBlock_io_extra_exuRedirect_2_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirectValid = fuBlock_io_extra_exuRedirect_2_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken =
    fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_fpu_frm = fuBlock_io_extra_csrio_fpu_frm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_isXRet = fuBlock_io_extra_csrio_isXRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_trapTarget = fuBlock_io_extra_csrio_trapTarget; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_interrupt = fuBlock_io_extra_csrio_interrupt; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_wfi_event = fuBlock_io_extra_csrio_wfi_event; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_mode = fuBlock_io_extra_csrio_tlb_satp_mode; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_asid = fuBlock_io_extra_csrio_tlb_satp_asid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_ppn = fuBlock_io_extra_csrio_tlb_satp_ppn; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_changed = fuBlock_io_extra_csrio_tlb_satp_changed; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_mxr = fuBlock_io_extra_csrio_tlb_priv_mxr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_sum = fuBlock_io_extra_csrio_tlb_priv_sum; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_imode = fuBlock_io_extra_csrio_tlb_priv_imode; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_dmode = fuBlock_io_extra_csrio_tlb_priv_dmode; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_l2_pf_store_only = fuBlock_io_extra_csrio_customCtrl_l2_pf_store_only; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_icache_parity_enable = fuBlock_io_extra_csrio_customCtrl_icache_parity_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_lvpred_timeout = fuBlock_io_extra_csrio_customCtrl_lvpred_timeout; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_btb_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_tage_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_sc_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ras_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_ldld_vio_check_enable = fuBlock_io_extra_csrio_customCtrl_ldld_vio_check_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_cache_error_enable = fuBlock_io_extra_csrio_customCtrl_cache_error_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable =
    fuBlock_io_extra_csrio_customCtrl_uncache_write_outstanding_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_fusion_enable = fuBlock_io_extra_csrio_customCtrl_fusion_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_wfi_enable = fuBlock_io_extra_csrio_customCtrl_wfi_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_svinval_enable = fuBlock_io_extra_csrio_customCtrl_svinval_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_distribute_csr_wvalid = fuBlock_io_extra_csrio_customCtrl_distribute_csr_wvalid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_distribute_csr_waddr =
    fuBlock_io_extra_csrio_customCtrl_distribute_csr_waddr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_distribute_csr_wdata =
    fuBlock_io_extra_csrio_customCtrl_distribute_csr_wdata; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_singlestep = fuBlock_io_extra_csrio_customCtrl_singlestep; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_valid = fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr = fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_addr
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_0 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_0; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_1 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_1; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_2 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_3 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_3; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_4 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_4; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_5 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_5; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_6 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_6; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_7 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_7; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_8 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_8; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_9 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_9; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_valid = fuBlock_io_extra_fenceio_sfence_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_rs1 = fuBlock_io_extra_fenceio_sfence_bits_rs1; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_rs2 = fuBlock_io_extra_fenceio_sfence_bits_rs2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_addr = fuBlock_io_extra_fenceio_sfence_bits_addr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_asid = fuBlock_io_extra_fenceio_sfence_bits_asid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_fencei = fuBlock_io_extra_fenceio_fencei; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sbuffer_flushSb = fuBlock_io_extra_fenceio_sbuffer_flushSb; // @[ExuBlock.scala 107:20]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:17]
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
  assign scheduler_clock = clock;
  assign scheduler_reset = reset;
  assign scheduler_io_hartId = io_hartId; // @[ExuBlock.scala 86:23]
  assign scheduler_io_redirect_valid = io_redirect_valid; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_level = io_redirect_bits_level; // @[ExuBlock.scala 87:25]
  assign scheduler_io_allocPregs_0_isInt = io_allocPregs_0_isInt; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_0_isFp = io_allocPregs_0_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_0_preg = io_allocPregs_0_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_isInt = io_allocPregs_1_isInt; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_isFp = io_allocPregs_1_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_preg = io_allocPregs_1_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_in_0_valid = io_in_0_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_storeSetHit = io_in_0_bits_cf_storeSetHit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_loadWaitStrict = io_in_0_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ssid = io_in_0_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_selImm = io_in_0_bits_ctrl_selImm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_imm = io_in_0_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_0 = io_in_0_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_1 = io_in_0_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_pdest = io_in_0_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_lqIdx_flag = io_in_0_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_lqIdx_value = io_in_0_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_sqIdx_flag = io_in_0_bits_sqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_sqIdx_value = io_in_0_bits_sqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_valid = io_in_1_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_storeSetHit = io_in_1_bits_cf_storeSetHit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_loadWaitStrict = io_in_1_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ssid = io_in_1_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_srcType_0 = io_in_1_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fuType = io_in_1_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_selImm = io_in_1_bits_ctrl_selImm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_imm = io_in_1_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_psrc_0 = io_in_1_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_psrc_1 = io_in_1_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_pdest = io_in_1_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_lqIdx_flag = io_in_1_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_lqIdx_value = io_in_1_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_sqIdx_flag = io_in_1_bits_sqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_sqIdx_value = io_in_1_bits_sqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_valid = io_in_4_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendEn_0 = io_in_4_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendEn_1 = io_in_4_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_isRVC = io_in_4_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_brType = io_in_4_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_isCall = io_in_4_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_isRet = io_in_4_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pred_taken = io_in_4_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_storeSetHit = io_in_4_bits_cf_storeSetHit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_loadWaitStrict = io_in_4_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ssid = io_in_4_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ftqPtr_flag = io_in_4_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ftqPtr_value = io_in_4_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ftqOffset = io_in_4_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_srcType_0 = io_in_4_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_srcType_1 = io_in_4_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fuType = io_in_4_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fuOpType = io_in_4_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_rfWen = io_in_4_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpWen = io_in_4_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_imm = io_in_4_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_psrc_0 = io_in_4_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_psrc_1 = io_in_4_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_pdest = io_in_4_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_robIdx_flag = io_in_4_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_robIdx_value = io_in_4_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_valid = io_in_5_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendEn_0 = io_in_5_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendEn_1 = io_in_5_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_isRVC = io_in_5_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_brType = io_in_5_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_isCall = io_in_5_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_isRet = io_in_5_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pred_taken = io_in_5_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_storeSetHit = io_in_5_bits_cf_storeSetHit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_loadWaitStrict = io_in_5_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ssid = io_in_5_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ftqPtr_flag = io_in_5_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ftqPtr_value = io_in_5_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ftqOffset = io_in_5_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_srcType_0 = io_in_5_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_srcType_1 = io_in_5_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fuType = io_in_5_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fuOpType = io_in_5_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_rfWen = io_in_5_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpWen = io_in_5_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_imm = io_in_5_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_psrc_0 = io_in_5_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_psrc_1 = io_in_5_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_pdest = io_in_5_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_robIdx_flag = io_in_5_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_robIdx_value = io_in_5_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_valid = io_in_6_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendEn_0 = io_in_6_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendEn_1 = io_in_6_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_isRVC = io_in_6_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_brType = io_in_6_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_isCall = io_in_6_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_isRet = io_in_6_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pred_taken = io_in_6_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_storeSetHit = io_in_6_bits_cf_storeSetHit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_loadWaitStrict = io_in_6_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ssid = io_in_6_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ftqPtr_flag = io_in_6_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ftqPtr_value = io_in_6_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ftqOffset = io_in_6_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_srcType_0 = io_in_6_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_srcType_1 = io_in_6_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fuType = io_in_6_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fuOpType = io_in_6_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_rfWen = io_in_6_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpWen = io_in_6_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_imm = io_in_6_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_psrc_0 = io_in_6_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_psrc_1 = io_in_6_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_pdest = io_in_6_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_robIdx_flag = io_in_6_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_robIdx_value = io_in_6_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_valid = io_in_7_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendEn_0 = io_in_7_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendEn_1 = io_in_7_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_isRVC = io_in_7_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_brType = io_in_7_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_isCall = io_in_7_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_isRet = io_in_7_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pred_taken = io_in_7_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_storeSetHit = io_in_7_bits_cf_storeSetHit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_loadWaitStrict = io_in_7_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ssid = io_in_7_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ftqPtr_flag = io_in_7_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ftqPtr_value = io_in_7_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ftqOffset = io_in_7_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_srcType_0 = io_in_7_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_srcType_1 = io_in_7_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fuType = io_in_7_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fuOpType = io_in_7_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_rfWen = io_in_7_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpWen = io_in_7_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_imm = io_in_7_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_psrc_0 = io_in_7_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_psrc_1 = io_in_7_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_pdest = io_in_7_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_robIdx_flag = io_in_7_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_robIdx_value = io_in_7_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_issue_2_ready = fuBlock_io_issue_2_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_3_ready = fuBlock_io_issue_3_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_4_ready = io_issue_0_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_5_ready = io_issue_1_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_6_ready = io_issue_2_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_7_ready = io_issue_3_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_8_ready = io_issue_4_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_9_ready = io_issue_5_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_writeback_0_valid = scheduler_io_writeback_0_valid_REG; // @[ExuBlock.scala 196:20]
  assign scheduler_io_writeback_0_bits_uop_ctrl_rfWen = scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 197:23]
  assign scheduler_io_writeback_0_bits_uop_ctrl_fpWen = scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 197:23]
  assign scheduler_io_writeback_0_bits_uop_pdest = scheduler_io_writeback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 197:23]
  assign scheduler_io_writeback_0_bits_data = fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 139:17]
  assign scheduler_io_writeback_1_valid = scheduler_io_writeback_1_valid_REG; // @[ExuBlock.scala 196:20]
  assign scheduler_io_writeback_1_bits_uop_ctrl_rfWen = scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 197:23]
  assign scheduler_io_writeback_1_bits_uop_ctrl_fpWen = scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 197:23]
  assign scheduler_io_writeback_1_bits_uop_pdest = scheduler_io_writeback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 197:23]
  assign scheduler_io_writeback_1_bits_data = fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 139:17]
  assign scheduler_io_writeback_2_valid = io_rfWriteback_2_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_2_bits_uop_ctrl_rfWen = io_rfWriteback_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_2_bits_uop_ctrl_fpWen = io_rfWriteback_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_2_bits_uop_pdest = io_rfWriteback_2_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_2_bits_data = io_rfWriteback_2_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_3_valid = io_rfWriteback_3_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_3_bits_uop_ctrl_rfWen = io_rfWriteback_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_3_bits_uop_ctrl_fpWen = io_rfWriteback_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_3_bits_uop_pdest = io_rfWriteback_3_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_3_bits_data = io_rfWriteback_3_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_valid = io_rfWriteback_4_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_uop_ctrl_rfWen = io_rfWriteback_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_uop_ctrl_fpWen = io_rfWriteback_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_uop_pdest = io_rfWriteback_4_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_data = io_rfWriteback_4_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_valid = io_rfWriteback_5_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_uop_ctrl_rfWen = io_rfWriteback_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_uop_ctrl_fpWen = io_rfWriteback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_uop_pdest = io_rfWriteback_5_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_data = io_rfWriteback_5_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_valid = io_rfWriteback_6_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_ctrl_rfWen = io_rfWriteback_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_ctrl_fpWen = io_rfWriteback_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_pdest = io_rfWriteback_6_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_data = io_rfWriteback_6_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_valid = io_rfWriteback_7_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_ctrl_rfWen = io_rfWriteback_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_ctrl_fpWen = io_rfWriteback_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_pdest = io_rfWriteback_7_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_data = io_rfWriteback_7_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_valid = io_rfWriteback_8_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_ctrl_rfWen = io_rfWriteback_8_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_ctrl_fpWen = io_rfWriteback_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_pdest = io_rfWriteback_8_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_data = io_rfWriteback_8_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_fastUopIn_2_valid = io_fastUopIn_2_valid; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_2_bits_ctrl_rfWen = io_fastUopIn_2_bits_ctrl_rfWen; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_2_bits_pdest = io_fastUopIn_2_bits_pdest; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_3_valid = io_fastUopIn_3_valid; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_3_bits_ctrl_rfWen = io_fastUopIn_3_bits_ctrl_rfWen; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_3_bits_pdest = io_fastUopIn_3_bits_pdest; // @[ExuBlock.scala 92:26]
  assign scheduler_io_extra_feedback_0_feedbackSlow_valid = io_scheExtra_feedback_0_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackSlow_bits_hit = io_scheExtra_feedback_0_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackFast_valid = io_scheExtra_feedback_0_feedbackFast_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackFast_bits_rsIdx = io_scheExtra_feedback_0_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_valid = io_scheExtra_feedback_1_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_bits_hit = io_scheExtra_feedback_1_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackFast_valid = io_scheExtra_feedback_1_feedbackFast_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackFast_bits_rsIdx = io_scheExtra_feedback_1_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_2_feedbackSlow_valid = io_scheExtra_feedback_2_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_2_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_2_feedbackSlow_bits_hit = io_scheExtra_feedback_2_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_3_feedbackSlow_valid = io_scheExtra_feedback_3_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_3_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_3_feedbackSlow_bits_hit = io_scheExtra_feedback_3_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_fpRfReadIn_0_data = io_scheExtra_fpRfReadIn_0_data; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_fpRfReadIn_1_data = io_scheExtra_fpRfReadIn_1_data; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_jumpPc = io_scheExtra_jumpPc; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_jalr_target = io_scheExtra_jalr_target; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_lcommit = io_scheExtra_lcommit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_scommit = io_scheExtra_scommit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_lqCancelCnt = io_scheExtra_lqCancelCnt; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_sqCancelCnt = io_scheExtra_sqCancelCnt; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_0 = io_scheExtra_debug_int_rat_0; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_1 = io_scheExtra_debug_int_rat_1; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_2 = io_scheExtra_debug_int_rat_2; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_3 = io_scheExtra_debug_int_rat_3; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_4 = io_scheExtra_debug_int_rat_4; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_5 = io_scheExtra_debug_int_rat_5; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_6 = io_scheExtra_debug_int_rat_6; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_7 = io_scheExtra_debug_int_rat_7; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_8 = io_scheExtra_debug_int_rat_8; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_9 = io_scheExtra_debug_int_rat_9; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_10 = io_scheExtra_debug_int_rat_10; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_11 = io_scheExtra_debug_int_rat_11; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_12 = io_scheExtra_debug_int_rat_12; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_13 = io_scheExtra_debug_int_rat_13; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_14 = io_scheExtra_debug_int_rat_14; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_15 = io_scheExtra_debug_int_rat_15; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_16 = io_scheExtra_debug_int_rat_16; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_17 = io_scheExtra_debug_int_rat_17; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_18 = io_scheExtra_debug_int_rat_18; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_19 = io_scheExtra_debug_int_rat_19; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_20 = io_scheExtra_debug_int_rat_20; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_21 = io_scheExtra_debug_int_rat_21; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_22 = io_scheExtra_debug_int_rat_22; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_23 = io_scheExtra_debug_int_rat_23; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_24 = io_scheExtra_debug_int_rat_24; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_25 = io_scheExtra_debug_int_rat_25; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_26 = io_scheExtra_debug_int_rat_26; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_27 = io_scheExtra_debug_int_rat_27; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_28 = io_scheExtra_debug_int_rat_28; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_29 = io_scheExtra_debug_int_rat_29; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_30 = io_scheExtra_debug_int_rat_30; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_31 = io_scheExtra_debug_int_rat_31; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_robDeqPtr_flag = io_scheExtra_robDeqPtr_flag; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_robDeqPtr_value = io_scheExtra_robDeqPtr_value; // @[ExuBlock.scala 93:22]
  assign fuBlock_clock = clock;
  assign fuBlock_reset = reset;
  assign fuBlock_io_redirect_valid = io_redirect_valid; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_level = io_redirect_bits_level; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_issue_0_valid = scheduler_io_issue_0_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_isRVC = scheduler_io_issue_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_brType = scheduler_io_issue_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_isCall = scheduler_io_issue_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_isRet = scheduler_io_issue_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pred_taken = scheduler_io_issue_0_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_ftqPtr_value = scheduler_io_issue_0_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_ftqOffset = scheduler_io_issue_0_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fuType = scheduler_io_issue_0_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fuOpType = scheduler_io_issue_0_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_imm = scheduler_io_issue_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_robIdx_flag = scheduler_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_robIdx_value = scheduler_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_0 = scheduler_io_issue_0_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_1 = scheduler_io_issue_0_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_valid = scheduler_io_issue_1_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_isRVC = scheduler_io_issue_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_brType = scheduler_io_issue_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_isCall = scheduler_io_issue_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_isRet = scheduler_io_issue_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pred_taken = scheduler_io_issue_1_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_ftqPtr_value = scheduler_io_issue_1_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_ftqOffset = scheduler_io_issue_1_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fuType = scheduler_io_issue_1_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fuOpType = scheduler_io_issue_1_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_imm = scheduler_io_issue_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_robIdx_flag = scheduler_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_robIdx_value = scheduler_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_src_0 = scheduler_io_issue_1_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_src_1 = scheduler_io_issue_1_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_valid = scheduler_io_issue_2_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_fuType = scheduler_io_issue_2_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_fuOpType = scheduler_io_issue_2_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_rfWen = scheduler_io_issue_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_fpWen = scheduler_io_issue_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_pdest = scheduler_io_issue_2_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_robIdx_flag = scheduler_io_issue_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_robIdx_value = scheduler_io_issue_2_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_lqIdx_flag = scheduler_io_issue_2_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_lqIdx_value = scheduler_io_issue_2_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_src_0 = scheduler_io_issue_2_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_src_1 = scheduler_io_issue_2_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_valid = scheduler_io_issue_3_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pc = scheduler_io_issue_3_bits_uop_cf_pc; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_isRVC = scheduler_io_issue_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_brType = scheduler_io_issue_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_isCall = scheduler_io_issue_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_isRet = scheduler_io_issue_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pred_taken = scheduler_io_issue_3_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_3_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_ftqPtr_value = scheduler_io_issue_3_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_ftqOffset = scheduler_io_issue_3_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fuType = scheduler_io_issue_3_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fuOpType = scheduler_io_issue_3_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_rfWen = scheduler_io_issue_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fpWen = scheduler_io_issue_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_imm = scheduler_io_issue_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fpu_typeTagOut = scheduler_io_issue_3_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fpu_fromInt = scheduler_io_issue_3_bits_uop_ctrl_fpu_fromInt; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fpu_wflags = scheduler_io_issue_3_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fpu_typ = scheduler_io_issue_3_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fpu_rm = scheduler_io_issue_3_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_pdest = scheduler_io_issue_3_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_robIdx_flag = scheduler_io_issue_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_robIdx_value = scheduler_io_issue_3_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_lqIdx_flag = scheduler_io_issue_3_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_lqIdx_value = scheduler_io_issue_3_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_src_0 = scheduler_io_issue_3_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_src_1 = scheduler_io_issue_3_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_writeback_3_ready = io_fuWriteback_3_ready; // @[ExuBlock.scala 106:24]
  assign fuBlock_io_extra_csrio_hartId = io_fuExtra_csrio_hartId; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_0_value = io_fuExtra_csrio_perf_perfEventsFrontend_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_1_value = io_fuExtra_csrio_perf_perfEventsFrontend_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_2_value = io_fuExtra_csrio_perf_perfEventsFrontend_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_3_value = io_fuExtra_csrio_perf_perfEventsFrontend_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_4_value = io_fuExtra_csrio_perf_perfEventsFrontend_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_5_value = io_fuExtra_csrio_perf_perfEventsFrontend_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_6_value = io_fuExtra_csrio_perf_perfEventsFrontend_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_7_value = io_fuExtra_csrio_perf_perfEventsFrontend_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_0_value = io_fuExtra_csrio_perf_perfEventsCtrl_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_1_value = io_fuExtra_csrio_perf_perfEventsCtrl_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_2_value = io_fuExtra_csrio_perf_perfEventsCtrl_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_3_value = io_fuExtra_csrio_perf_perfEventsCtrl_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_4_value = io_fuExtra_csrio_perf_perfEventsCtrl_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_5_value = io_fuExtra_csrio_perf_perfEventsCtrl_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_6_value = io_fuExtra_csrio_perf_perfEventsCtrl_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_7_value = io_fuExtra_csrio_perf_perfEventsCtrl_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_0_value = io_fuExtra_csrio_perf_perfEventsLsu_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_1_value = io_fuExtra_csrio_perf_perfEventsLsu_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_2_value = io_fuExtra_csrio_perf_perfEventsLsu_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_3_value = io_fuExtra_csrio_perf_perfEventsLsu_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_4_value = io_fuExtra_csrio_perf_perfEventsLsu_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_5_value = io_fuExtra_csrio_perf_perfEventsLsu_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_6_value = io_fuExtra_csrio_perf_perfEventsLsu_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_7_value = io_fuExtra_csrio_perf_perfEventsLsu_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_retiredInstr = io_fuExtra_csrio_perf_retiredInstr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_fpu_fflags_valid = io_fuExtra_csrio_fpu_fflags_valid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_fpu_fflags_bits = io_fuExtra_csrio_fpu_fflags_bits; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_fpu_dirty_fs = io_fuExtra_csrio_fpu_dirty_fs; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_valid = io_fuExtra_csrio_exception_valid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_pc = io_fuExtra_csrio_exception_bits_uop_cf_pc; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_0 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_1 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_2 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_3 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_4 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_5 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_6 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_7 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_8 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_9 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_11 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_12 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_13 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_15 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix =
    io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_ctrl_singleStep = io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep
    ; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_isInterrupt = io_fuExtra_csrio_exception_bits_isInterrupt; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_memExceptionVAddr = io_fuExtra_csrio_memExceptionVAddr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_mtip = io_fuExtra_csrio_externalInterrupt_mtip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_msip = io_fuExtra_csrio_externalInterrupt_msip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_meip = io_fuExtra_csrio_externalInterrupt_meip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_seip = io_fuExtra_csrio_externalInterrupt_seip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_debug = io_fuExtra_csrio_externalInterrupt_debug; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_0_wvalid = io_fuExtra_csrio_distributedUpdate_0_wvalid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_0_waddr = io_fuExtra_csrio_distributedUpdate_0_waddr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_0_wdata = io_fuExtra_csrio_distributedUpdate_0_wdata; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_1_wvalid = io_fuExtra_csrio_distributedUpdate_1_wvalid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_1_waddr = io_fuExtra_csrio_distributedUpdate_1_waddr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_1_wdata = io_fuExtra_csrio_distributedUpdate_1_wdata; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_fenceio_sbuffer_sbIsEmpty = io_fuExtra_fenceio_sbuffer_sbIsEmpty; // @[ExuBlock.scala 107:20]
  always @(posedge clock) begin
    io_perf_0_value_REG <= scheduler_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= scheduler_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= scheduler_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= scheduler_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= scheduler_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= scheduler_io_perf_5_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= scheduler_io_perf_6_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= scheduler_io_perf_7_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= scheduler_io_perf_8_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= scheduler_io_perf_9_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= scheduler_io_perf_10_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= scheduler_io_perf_11_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    io_fuWriteback_0_valid_REG <= scheduler_io_fastUopOut_0_valid & ~isFlushed; // @[ExuBlock.scala 172:47]
    io_fuWriteback_0_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_0_bits_ctrl_rfWen; // @[ExuBlock.scala 173:32]
    io_fuWriteback_0_bits_uop_REG_pdest <= scheduler_io_fastUopOut_0_bits_pdest; // @[ExuBlock.scala 173:32]
    io_fuWriteback_0_bits_uop_REG_robIdx_flag <= scheduler_io_fastUopOut_0_bits_robIdx_flag; // @[ExuBlock.scala 173:32]
    io_fuWriteback_0_bits_uop_REG_robIdx_value <= scheduler_io_fastUopOut_0_bits_robIdx_value; // @[ExuBlock.scala 173:32]
    io_fuWriteback_0_bits_uop_REG_lqIdx_flag <= scheduler_io_fastUopOut_0_bits_lqIdx_flag; // @[ExuBlock.scala 173:32]
    io_fuWriteback_0_bits_uop_REG_lqIdx_value <= scheduler_io_fastUopOut_0_bits_lqIdx_value; // @[ExuBlock.scala 173:32]
    io_fuWriteback_1_valid_REG <= scheduler_io_fastUopOut_1_valid & ~isFlushed_1; // @[ExuBlock.scala 172:47]
    io_fuWriteback_1_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_1_bits_ctrl_rfWen; // @[ExuBlock.scala 173:32]
    io_fuWriteback_1_bits_uop_REG_pdest <= scheduler_io_fastUopOut_1_bits_pdest; // @[ExuBlock.scala 173:32]
    io_fuWriteback_1_bits_uop_REG_robIdx_flag <= scheduler_io_fastUopOut_1_bits_robIdx_flag; // @[ExuBlock.scala 173:32]
    io_fuWriteback_1_bits_uop_REG_robIdx_value <= scheduler_io_fastUopOut_1_bits_robIdx_value; // @[ExuBlock.scala 173:32]
    io_fuWriteback_1_bits_uop_REG_lqIdx_flag <= scheduler_io_fastUopOut_1_bits_lqIdx_flag; // @[ExuBlock.scala 173:32]
    io_fuWriteback_1_bits_uop_REG_lqIdx_value <= scheduler_io_fastUopOut_1_bits_lqIdx_value; // @[ExuBlock.scala 173:32]
    scheduler_io_writeback_0_valid_REG <= scheduler_io_fastUopOut_0_valid & _io_fuWriteback_0_valid_T; // @[ExuBlock.scala 196:64]
    scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_0_bits_ctrl_rfWen; // @[ExuBlock.scala 197:33]
    scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen <= scheduler_io_fastUopOut_0_bits_ctrl_fpWen; // @[ExuBlock.scala 197:33]
    scheduler_io_writeback_0_bits_uop_REG_pdest <= scheduler_io_fastUopOut_0_bits_pdest; // @[ExuBlock.scala 197:33]
    scheduler_io_writeback_1_valid_REG <= scheduler_io_fastUopOut_1_valid & _io_fuWriteback_1_valid_T; // @[ExuBlock.scala 196:64]
    scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_1_bits_ctrl_rfWen; // @[ExuBlock.scala 197:33]
    scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen <= scheduler_io_fastUopOut_1_bits_ctrl_fpWen; // @[ExuBlock.scala 197:33]
    scheduler_io_writeback_1_bits_uop_REG_pdest <= scheduler_io_fastUopOut_1_bits_pdest; // @[ExuBlock.scala 197:33]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  redirect_next_valid_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_flag = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_value = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  redirect_next_bits_rlevel = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_fuWriteback_0_valid_REG = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_ctrl_rfWen = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_pdest = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_robIdx_flag = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_robIdx_value = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_lqIdx_flag = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_lqIdx_value = _RAND_34[3:0];
  _RAND_35 = {1{`RANDOM}};
  io_fuWriteback_1_valid_REG = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_ctrl_rfWen = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_pdest = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_robIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_robIdx_value = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_lqIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_lqIdx_value = _RAND_41[3:0];
  _RAND_42 = {1{`RANDOM}};
  scheduler_io_writeback_0_valid_REG = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  scheduler_io_writeback_0_bits_uop_REG_pdest = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  scheduler_io_writeback_1_valid_REG = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  scheduler_io_writeback_1_bits_uop_REG_pdest = _RAND_49[5:0];
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

