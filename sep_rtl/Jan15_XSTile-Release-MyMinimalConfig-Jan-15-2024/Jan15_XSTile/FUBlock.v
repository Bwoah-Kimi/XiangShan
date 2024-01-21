module FUBlock(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_issue_0_valid,
  input         io_issue_0_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_0_bits_uop_cf_pd_brType,
  input         io_issue_0_bits_uop_cf_pd_isCall,
  input         io_issue_0_bits_uop_cf_pd_isRet,
  input         io_issue_0_bits_uop_cf_pred_taken,
  input         io_issue_0_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_issue_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_0_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_0_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_0_bits_uop_ctrl_fuOpType,
  input  [19:0] io_issue_0_bits_uop_ctrl_imm,
  input         io_issue_0_bits_uop_robIdx_flag,
  input  [4:0]  io_issue_0_bits_uop_robIdx_value,
  input  [63:0] io_issue_0_bits_src_0,
  input  [63:0] io_issue_0_bits_src_1,
  input         io_issue_1_valid,
  input         io_issue_1_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_1_bits_uop_cf_pd_brType,
  input         io_issue_1_bits_uop_cf_pd_isCall,
  input         io_issue_1_bits_uop_cf_pd_isRet,
  input         io_issue_1_bits_uop_cf_pred_taken,
  input         io_issue_1_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_issue_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_1_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_1_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_1_bits_uop_ctrl_fuOpType,
  input  [19:0] io_issue_1_bits_uop_ctrl_imm,
  input         io_issue_1_bits_uop_robIdx_flag,
  input  [4:0]  io_issue_1_bits_uop_robIdx_value,
  input  [63:0] io_issue_1_bits_src_0,
  input  [63:0] io_issue_1_bits_src_1,
  output        io_issue_2_ready,
  input         io_issue_2_valid,
  input  [3:0]  io_issue_2_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_2_bits_uop_ctrl_fuOpType,
  input         io_issue_2_bits_uop_ctrl_rfWen,
  input         io_issue_2_bits_uop_ctrl_fpWen,
  input  [5:0]  io_issue_2_bits_uop_pdest,
  input         io_issue_2_bits_uop_robIdx_flag,
  input  [4:0]  io_issue_2_bits_uop_robIdx_value,
  input         io_issue_2_bits_uop_lqIdx_flag,
  input  [3:0]  io_issue_2_bits_uop_lqIdx_value,
  input  [63:0] io_issue_2_bits_src_0,
  input  [63:0] io_issue_2_bits_src_1,
  output        io_issue_3_ready,
  input         io_issue_3_valid,
  input  [38:0] io_issue_3_bits_uop_cf_pc,
  input         io_issue_3_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_3_bits_uop_cf_pd_brType,
  input         io_issue_3_bits_uop_cf_pd_isCall,
  input         io_issue_3_bits_uop_cf_pd_isRet,
  input         io_issue_3_bits_uop_cf_pred_taken,
  input         io_issue_3_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_issue_3_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_3_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_3_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_3_bits_uop_ctrl_fuOpType,
  input         io_issue_3_bits_uop_ctrl_rfWen,
  input         io_issue_3_bits_uop_ctrl_fpWen,
  input  [19:0] io_issue_3_bits_uop_ctrl_imm,
  input         io_issue_3_bits_uop_ctrl_fpu_typeTagOut,
  input         io_issue_3_bits_uop_ctrl_fpu_fromInt,
  input         io_issue_3_bits_uop_ctrl_fpu_wflags,
  input  [1:0]  io_issue_3_bits_uop_ctrl_fpu_typ,
  input  [2:0]  io_issue_3_bits_uop_ctrl_fpu_rm,
  input  [5:0]  io_issue_3_bits_uop_pdest,
  input         io_issue_3_bits_uop_robIdx_flag,
  input  [4:0]  io_issue_3_bits_uop_robIdx_value,
  input         io_issue_3_bits_uop_lqIdx_flag,
  input  [3:0]  io_issue_3_bits_uop_lqIdx_value,
  input  [63:0] io_issue_3_bits_src_0,
  input  [63:0] io_issue_3_bits_src_1,
  output [63:0] io_writeback_0_bits_data,
  output        io_writeback_0_bits_redirectValid,
  output        io_writeback_0_bits_redirect_cfiUpdate_isMisPred,
  output [63:0] io_writeback_1_bits_data,
  output        io_writeback_1_bits_redirectValid,
  output        io_writeback_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_writeback_2_valid,
  output        io_writeback_2_bits_uop_ctrl_rfWen,
  output        io_writeback_2_bits_uop_ctrl_fpWen,
  output [5:0]  io_writeback_2_bits_uop_pdest,
  output        io_writeback_2_bits_uop_robIdx_flag,
  output [4:0]  io_writeback_2_bits_uop_robIdx_value,
  output        io_writeback_2_bits_uop_lqIdx_flag,
  output [3:0]  io_writeback_2_bits_uop_lqIdx_value,
  output [63:0] io_writeback_2_bits_data,
  input         io_writeback_3_ready,
  output        io_writeback_3_valid,
  output        io_writeback_3_bits_uop_cf_exceptionVec_2,
  output        io_writeback_3_bits_uop_cf_exceptionVec_3,
  output        io_writeback_3_bits_uop_cf_exceptionVec_8,
  output        io_writeback_3_bits_uop_cf_exceptionVec_9,
  output        io_writeback_3_bits_uop_cf_exceptionVec_11,
  output        io_writeback_3_bits_uop_ctrl_rfWen,
  output        io_writeback_3_bits_uop_ctrl_fpWen,
  output        io_writeback_3_bits_uop_ctrl_flushPipe,
  output [5:0]  io_writeback_3_bits_uop_pdest,
  output        io_writeback_3_bits_uop_robIdx_flag,
  output [4:0]  io_writeback_3_bits_uop_robIdx_value,
  output        io_writeback_3_bits_uop_lqIdx_flag,
  output [3:0]  io_writeback_3_bits_uop_lqIdx_value,
  output [63:0] io_writeback_3_bits_data,
  output [4:0]  io_writeback_3_bits_fflags,
  output        io_writeback_3_bits_redirectValid,
  output        io_writeback_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_writeback_3_bits_debug_isPerfCnt,
  output        io_extra_exuRedirect_0_valid,
  output        io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_0_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_0_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_0_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_0_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_0_bits_uop_robIdx_flag,
  output [4:0]  io_extra_exuRedirect_0_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_0_bits_redirectValid,
  output        io_extra_exuRedirect_0_bits_redirect_robIdx_flag,
  output [4:0]  io_extra_exuRedirect_0_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag,
  output [2:0]  io_extra_exuRedirect_0_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_0_bits_redirect_ftqOffset,
  output [38:0] io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target,
  output        io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_extra_exuRedirect_1_valid,
  output        io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_1_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_1_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_1_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_1_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_1_bits_uop_robIdx_flag,
  output [4:0]  io_extra_exuRedirect_1_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_1_bits_redirectValid,
  output        io_extra_exuRedirect_1_bits_redirect_robIdx_flag,
  output [4:0]  io_extra_exuRedirect_1_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag,
  output [2:0]  io_extra_exuRedirect_1_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_1_bits_redirect_ftqOffset,
  output        io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken,
  output        io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_extra_exuRedirect_2_valid,
  output        io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_2_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_2_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_2_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_2_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_2_bits_uop_robIdx_flag,
  output [4:0]  io_extra_exuRedirect_2_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_2_bits_redirectValid,
  output        io_extra_exuRedirect_2_bits_redirect_robIdx_flag,
  output [4:0]  io_extra_exuRedirect_2_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag,
  output [2:0]  io_extra_exuRedirect_2_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_2_bits_redirect_ftqOffset,
  output        io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken,
  output        io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred,
  input  [7:0]  io_extra_csrio_hartId,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_7_value,
  input  [2:0]  io_extra_csrio_perf_retiredInstr,
  input         io_extra_csrio_fpu_fflags_valid,
  input  [4:0]  io_extra_csrio_fpu_fflags_bits,
  input         io_extra_csrio_fpu_dirty_fs,
  output [2:0]  io_extra_csrio_fpu_frm,
  input         io_extra_csrio_exception_valid,
  input  [38:0] io_extra_csrio_exception_bits_uop_cf_pc,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_0,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_1,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_2,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_3,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_4,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_5,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_6,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_7,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_8,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_9,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_11,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_12,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_13,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_15,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         io_extra_csrio_exception_bits_uop_ctrl_singleStep,
  input         io_extra_csrio_exception_bits_isInterrupt,
  output        io_extra_csrio_isXRet,
  output [38:0] io_extra_csrio_trapTarget,
  output        io_extra_csrio_interrupt,
  output        io_extra_csrio_wfi_event,
  input  [38:0] io_extra_csrio_memExceptionVAddr,
  input         io_extra_csrio_externalInterrupt_mtip,
  input         io_extra_csrio_externalInterrupt_msip,
  input         io_extra_csrio_externalInterrupt_meip,
  input         io_extra_csrio_externalInterrupt_seip,
  input         io_extra_csrio_externalInterrupt_debug,
  output [3:0]  io_extra_csrio_tlb_satp_mode,
  output [15:0] io_extra_csrio_tlb_satp_asid,
  output [43:0] io_extra_csrio_tlb_satp_ppn,
  output        io_extra_csrio_tlb_satp_changed,
  output        io_extra_csrio_tlb_priv_mxr,
  output        io_extra_csrio_tlb_priv_sum,
  output [1:0]  io_extra_csrio_tlb_priv_imode,
  output [1:0]  io_extra_csrio_tlb_priv_dmode,
  output        io_extra_csrio_customCtrl_l2_pf_store_only,
  output        io_extra_csrio_customCtrl_icache_parity_enable,
  output [4:0]  io_extra_csrio_customCtrl_lvpred_timeout,
  output        io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_btb_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_tage_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_sc_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_ras_enable,
  output        io_extra_csrio_customCtrl_ldld_vio_check_enable,
  output        io_extra_csrio_customCtrl_cache_error_enable,
  output        io_extra_csrio_customCtrl_uncache_write_outstanding_enable,
  output        io_extra_csrio_customCtrl_fusion_enable,
  output        io_extra_csrio_customCtrl_wfi_enable,
  output        io_extra_csrio_customCtrl_svinval_enable,
  output        io_extra_csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] io_extra_csrio_customCtrl_distribute_csr_waddr,
  output [63:0] io_extra_csrio_customCtrl_distribute_csr_wdata,
  output        io_extra_csrio_customCtrl_singlestep,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        io_extra_csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  io_extra_csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        io_extra_csrio_customCtrl_trigger_enable_0,
  output        io_extra_csrio_customCtrl_trigger_enable_1,
  output        io_extra_csrio_customCtrl_trigger_enable_2,
  output        io_extra_csrio_customCtrl_trigger_enable_3,
  output        io_extra_csrio_customCtrl_trigger_enable_4,
  output        io_extra_csrio_customCtrl_trigger_enable_5,
  output        io_extra_csrio_customCtrl_trigger_enable_6,
  output        io_extra_csrio_customCtrl_trigger_enable_7,
  output        io_extra_csrio_customCtrl_trigger_enable_8,
  output        io_extra_csrio_customCtrl_trigger_enable_9,
  input         io_extra_csrio_distributedUpdate_0_wvalid,
  input  [11:0] io_extra_csrio_distributedUpdate_0_waddr,
  input  [63:0] io_extra_csrio_distributedUpdate_0_wdata,
  input         io_extra_csrio_distributedUpdate_1_wvalid,
  input  [11:0] io_extra_csrio_distributedUpdate_1_waddr,
  input  [63:0] io_extra_csrio_distributedUpdate_1_wdata,
  output        io_extra_fenceio_sfence_valid,
  output        io_extra_fenceio_sfence_bits_rs1,
  output        io_extra_fenceio_sfence_bits_rs2,
  output [38:0] io_extra_fenceio_sfence_bits_addr,
  output [15:0] io_extra_fenceio_sfence_bits_asid,
  output        io_extra_fenceio_fencei,
  output        io_extra_fenceio_sbuffer_flushSb,
  input         io_extra_fenceio_sbuffer_sbIsEmpty
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
  reg [63:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [63:0] _RAND_63;
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
  reg [63:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [63:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [63:0] _RAND_104;
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
  reg [63:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [63:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [63:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [63:0] _RAND_136;
`endif // RANDOMIZE_REG_INIT
  wire  exeUnits_0_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_0_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_0_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_0_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_0_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_0_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_0_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_1_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_1_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_1_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_1_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_1_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_1_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_clock; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_reset; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_2_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_2_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_2_io_fromInt_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_2_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_2_io_fromInt_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_2_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_2_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_redirect_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_redirect_bits_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_2_io_redirect_bits_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_redirect_bits_level; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_2_io_out_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_2_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_2_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_2_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_clock; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_reset; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_3_io_fromInt_bits_uop_cf_pc; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_3_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_3_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_3_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_typeTagOut; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_fromInt; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_wflags; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_typ; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_io_fromInt_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_3_io_fromInt_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_redirect_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_redirect_bits_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_io_redirect_bits_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_redirect_bits_level; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_ctrl_flushPipe; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_3_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_io_out_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_3_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_io_out_bits_fflags; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_3_io_out_bits_redirect_cfiUpdate_target; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_debug_isPerfCnt; // @[FUBlock.scala 66:74]
  wire [7:0] exeUnits_3_csrio_hartId; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsFrontend_7_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsCtrl_7_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_csrio_perf_perfEventsLsu_7_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_csrio_perf_retiredInstr; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_fpu_fflags_valid; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_csrio_fpu_fflags_bits; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_fpu_dirty_fs; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_csrio_fpu_frm; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_valid; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_3_csrio_exception_bits_uop_cf_pc; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_6; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_7; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_12; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_13; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_15; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_uop_ctrl_singleStep; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_exception_bits_isInterrupt; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_isXRet; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_3_csrio_trapTarget; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_interrupt; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_wfi_event; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_3_csrio_memExceptionVAddr; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_externalInterrupt_mtip; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_externalInterrupt_msip; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_externalInterrupt_meip; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_externalInterrupt_seip; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_externalInterrupt_debug; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_3_csrio_tlb_satp_mode; // @[FUBlock.scala 66:74]
  wire [15:0] exeUnits_3_csrio_tlb_satp_asid; // @[FUBlock.scala 66:74]
  wire [43:0] exeUnits_3_csrio_tlb_satp_ppn; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_tlb_satp_changed; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_tlb_priv_mxr; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_tlb_priv_sum; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_csrio_tlb_priv_imode; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_csrio_tlb_priv_dmode; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_l2_pf_store_only; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_icache_parity_enable; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_3_csrio_customCtrl_lvpred_timeout; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_bp_ctrl_btb_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_bp_ctrl_tage_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_bp_ctrl_sc_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_bp_ctrl_ras_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_ldld_vio_check_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_cache_error_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_uncache_write_outstanding_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_fusion_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_wfi_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_svinval_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_distribute_csr_wvalid; // @[FUBlock.scala 66:74]
  wire [11:0] exeUnits_3_csrio_customCtrl_distribute_csr_waddr; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_csrio_customCtrl_distribute_csr_wdata; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_singlestep; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_frontend_trigger_t_valid; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_mem_trigger_t_valid; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_addr; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_6; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_7; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_8; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_customCtrl_trigger_enable_9; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_distributedUpdate_0_wvalid; // @[FUBlock.scala 66:74]
  wire [11:0] exeUnits_3_csrio_distributedUpdate_0_waddr; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_csrio_distributedUpdate_0_wdata; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_csrio_distributedUpdate_1_wvalid; // @[FUBlock.scala 66:74]
  wire [11:0] exeUnits_3_csrio_distributedUpdate_1_waddr; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_csrio_distributedUpdate_1_wdata; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_fenceio_sfence_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_fenceio_sfence_bits_rs1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_fenceio_sfence_bits_rs2; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_3_fenceio_sfence_bits_addr; // @[FUBlock.scala 66:74]
  wire [15:0] exeUnits_3_fenceio_sfence_bits_asid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_fenceio_fencei; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_fenceio_sbuffer_flushSb; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_fenceio_sbuffer_sbIsEmpty; // @[FUBlock.scala 66:74]
  wire  _io_extra_exuRedirect_0_valid_T = exeUnits_3_io_out_ready & exeUnits_3_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _io_extra_exuRedirect_1_valid_T = exeUnits_1_io_out_ready & exeUnits_1_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _io_extra_exuRedirect_2_valid_T = exeUnits_0_io_out_ready & exeUnits_0_io_out_valid; // @[Decoupled.scala 50:35]
  reg  next_valid_REG_2; // @[BitUtils.scala 28:28]
  reg  next_bits_r2_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] next_bits_r2_robIdx_value; // @[Reg.scala 16:16]
  reg  next_bits_r2_level; // @[Reg.scala 16:16]
  reg  next_valid_REG_3; // @[BitUtils.scala 28:28]
  reg  next_bits_r3_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] next_bits_r3_robIdx_value; // @[Reg.scala 16:16]
  reg  next_bits_r3_level; // @[Reg.scala 16:16]
  reg [5:0] REG_perfEventsFrontend_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_7_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_7_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_7_value; // @[FUBlock.scala 87:36]
  reg [2:0] REG_retiredInstr; // @[FUBlock.scala 87:36]
  reg  io_extra_csrio_customCtrl_REG_l2_pf_store_only; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_icache_parity_enable; // @[FUBlock.scala 89:55]
  reg [4:0] io_extra_csrio_customCtrl_REG_lvpred_timeout; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_ldld_vio_check_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_cache_error_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_uncache_write_outstanding_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_fusion_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_wfi_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_svinval_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_distribute_csr_wvalid; // @[FUBlock.scala 89:55]
  reg [11:0] io_extra_csrio_customCtrl_REG_distribute_csr_waddr; // @[FUBlock.scala 89:55]
  reg [63:0] io_extra_csrio_customCtrl_REG_distribute_csr_wdata; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_singlestep; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid; // @[FUBlock.scala 89:55]
  reg [1:0] io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
  reg [1:0] io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
  reg [63:0] io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_mem_trigger_t_valid; // @[FUBlock.scala 89:55]
  reg [2:0] io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
  reg [1:0] io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
  reg [63:0] io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_0; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_1; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_2; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_3; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_4; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_5; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_6; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_7; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_8; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_9; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_1_l2_pf_store_only; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_icache_parity_enable; // @[FUBlock.scala 89:47]
  reg [4:0] io_extra_csrio_customCtrl_REG_1_lvpred_timeout; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_cache_error_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_uncache_write_outstanding_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_fusion_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_wfi_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_svinval_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid; // @[FUBlock.scala 89:47]
  reg [11:0] io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr; // @[FUBlock.scala 89:47]
  reg [63:0] io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_singlestep; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid; // @[FUBlock.scala 89:47]
  reg [1:0] io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
  reg [1:0] io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
  reg [63:0] io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid; // @[FUBlock.scala 89:47]
  reg [2:0] io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
  reg [1:0] io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
  reg [63:0] io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_0; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_1; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_2; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_3; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_4; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_5; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_6; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_7; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_8; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_9; // @[FUBlock.scala 89:47]
  reg [3:0] io_extra_csrio_tlb_REG_satp_mode; // @[FUBlock.scala 90:48]
  reg [15:0] io_extra_csrio_tlb_REG_satp_asid; // @[FUBlock.scala 90:48]
  reg [43:0] io_extra_csrio_tlb_REG_satp_ppn; // @[FUBlock.scala 90:48]
  reg  io_extra_csrio_tlb_REG_satp_changed; // @[FUBlock.scala 90:48]
  reg  io_extra_csrio_tlb_REG_priv_mxr; // @[FUBlock.scala 90:48]
  reg  io_extra_csrio_tlb_REG_priv_sum; // @[FUBlock.scala 90:48]
  reg [1:0] io_extra_csrio_tlb_REG_priv_imode; // @[FUBlock.scala 90:48]
  reg [1:0] io_extra_csrio_tlb_REG_priv_dmode; // @[FUBlock.scala 90:48]
  reg [3:0] io_extra_csrio_tlb_REG_1_satp_mode; // @[FUBlock.scala 90:40]
  reg [15:0] io_extra_csrio_tlb_REG_1_satp_asid; // @[FUBlock.scala 90:40]
  reg [43:0] io_extra_csrio_tlb_REG_1_satp_ppn; // @[FUBlock.scala 90:40]
  reg  io_extra_csrio_tlb_REG_1_satp_changed; // @[FUBlock.scala 90:40]
  reg  io_extra_csrio_tlb_REG_1_priv_mxr; // @[FUBlock.scala 90:40]
  reg  io_extra_csrio_tlb_REG_1_priv_sum; // @[FUBlock.scala 90:40]
  reg [1:0] io_extra_csrio_tlb_REG_1_priv_imode; // @[FUBlock.scala 90:40]
  reg [1:0] io_extra_csrio_tlb_REG_1_priv_dmode; // @[FUBlock.scala 90:40]
  reg  REG_1_0_wvalid; // @[FUBlock.scala 92:49]
  reg [11:0] REG_1_0_waddr; // @[FUBlock.scala 92:49]
  reg [63:0] REG_1_0_wdata; // @[FUBlock.scala 92:49]
  reg  REG_1_1_wvalid; // @[FUBlock.scala 92:49]
  reg [11:0] REG_1_1_waddr; // @[FUBlock.scala 92:49]
  reg [63:0] REG_1_1_wdata; // @[FUBlock.scala 92:49]
  AluExeUnit exeUnits_0 ( // @[FUBlock.scala 66:74]
    .io_fromInt_valid(exeUnits_0_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_0_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_0_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_0_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_0_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_0_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_0_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_0_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_0_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_0_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_0_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_0_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_0_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_0_io_fromInt_bits_src_1),
    .io_out_ready(exeUnits_0_io_out_ready),
    .io_out_valid(exeUnits_0_io_out_valid),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_0_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_0_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_0_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_0_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(exeUnits_0_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(exeUnits_0_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_0_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_0_io_out_bits_data),
    .io_out_bits_redirectValid(exeUnits_0_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_0_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_0_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_0_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_0_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_0_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_taken(exeUnits_0_io_out_bits_redirect_cfiUpdate_taken),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred)
  );
  AluExeUnit exeUnits_1 ( // @[FUBlock.scala 66:74]
    .io_fromInt_valid(exeUnits_1_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_1_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_1_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_1_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_1_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_1_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_1_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_1_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_1_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_1_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_1_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_1_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_1_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_1_io_fromInt_bits_src_1),
    .io_out_ready(exeUnits_1_io_out_ready),
    .io_out_valid(exeUnits_1_io_out_valid),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_1_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_1_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_1_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_1_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(exeUnits_1_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(exeUnits_1_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_1_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_1_io_out_bits_data),
    .io_out_bits_redirectValid(exeUnits_1_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_1_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_1_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_1_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_1_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_1_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_taken(exeUnits_1_io_out_bits_redirect_cfiUpdate_taken),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred)
  );
  MulDivExeUnit exeUnits_2 ( // @[FUBlock.scala 66:74]
    .clock(exeUnits_2_clock),
    .reset(exeUnits_2_reset),
    .io_fromInt_ready(exeUnits_2_io_fromInt_ready),
    .io_fromInt_valid(exeUnits_2_io_fromInt_valid),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_2_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_2_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_rfWen(exeUnits_2_io_fromInt_bits_uop_ctrl_rfWen),
    .io_fromInt_bits_uop_ctrl_fpWen(exeUnits_2_io_fromInt_bits_uop_ctrl_fpWen),
    .io_fromInt_bits_uop_pdest(exeUnits_2_io_fromInt_bits_uop_pdest),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_2_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_2_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_uop_lqIdx_flag(exeUnits_2_io_fromInt_bits_uop_lqIdx_flag),
    .io_fromInt_bits_uop_lqIdx_value(exeUnits_2_io_fromInt_bits_uop_lqIdx_value),
    .io_fromInt_bits_src_0(exeUnits_2_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_2_io_fromInt_bits_src_1),
    .io_redirect_valid(exeUnits_2_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exeUnits_2_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exeUnits_2_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exeUnits_2_io_redirect_bits_level),
    .io_out_valid(exeUnits_2_io_out_valid),
    .io_out_bits_uop_ctrl_rfWen(exeUnits_2_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(exeUnits_2_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(exeUnits_2_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(exeUnits_2_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_2_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(exeUnits_2_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(exeUnits_2_io_out_bits_uop_lqIdx_value),
    .io_out_bits_data(exeUnits_2_io_out_bits_data)
  );
  JumpCSRExeUnit exeUnits_3 ( // @[FUBlock.scala 66:74]
    .clock(exeUnits_3_clock),
    .reset(exeUnits_3_reset),
    .io_fromInt_ready(exeUnits_3_io_fromInt_ready),
    .io_fromInt_valid(exeUnits_3_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pc(exeUnits_3_io_fromInt_bits_uop_cf_pc),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_3_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_3_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_3_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_3_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_3_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_3_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_3_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_3_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_rfWen(exeUnits_3_io_fromInt_bits_uop_ctrl_rfWen),
    .io_fromInt_bits_uop_ctrl_fpWen(exeUnits_3_io_fromInt_bits_uop_ctrl_fpWen),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_3_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_ctrl_fpu_typeTagOut(exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_typeTagOut),
    .io_fromInt_bits_uop_ctrl_fpu_fromInt(exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_fromInt),
    .io_fromInt_bits_uop_ctrl_fpu_wflags(exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_wflags),
    .io_fromInt_bits_uop_ctrl_fpu_typ(exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_typ),
    .io_fromInt_bits_uop_ctrl_fpu_rm(exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_rm),
    .io_fromInt_bits_uop_pdest(exeUnits_3_io_fromInt_bits_uop_pdest),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_3_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_3_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_uop_lqIdx_flag(exeUnits_3_io_fromInt_bits_uop_lqIdx_flag),
    .io_fromInt_bits_uop_lqIdx_value(exeUnits_3_io_fromInt_bits_uop_lqIdx_value),
    .io_fromInt_bits_src_0(exeUnits_3_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_3_io_fromInt_bits_src_1),
    .io_redirect_valid(exeUnits_3_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exeUnits_3_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exeUnits_3_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exeUnits_3_io_redirect_bits_level),
    .io_out_ready(exeUnits_3_io_out_ready),
    .io_out_valid(exeUnits_3_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(exeUnits_3_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(exeUnits_3_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(exeUnits_3_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(exeUnits_3_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(exeUnits_3_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_3_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_3_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_3_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_3_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(exeUnits_3_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(exeUnits_3_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(exeUnits_3_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_ctrl_imm(exeUnits_3_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(exeUnits_3_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(exeUnits_3_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_3_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(exeUnits_3_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(exeUnits_3_io_out_bits_uop_lqIdx_value),
    .io_out_bits_data(exeUnits_3_io_out_bits_data),
    .io_out_bits_fflags(exeUnits_3_io_out_bits_fflags),
    .io_out_bits_redirectValid(exeUnits_3_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_3_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_3_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_3_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_3_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_3_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_target(exeUnits_3_io_out_bits_redirect_cfiUpdate_target),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred),
    .io_out_bits_debug_isPerfCnt(exeUnits_3_io_out_bits_debug_isPerfCnt),
    .csrio_hartId(exeUnits_3_csrio_hartId),
    .csrio_perf_perfEventsFrontend_0_value(exeUnits_3_csrio_perf_perfEventsFrontend_0_value),
    .csrio_perf_perfEventsFrontend_1_value(exeUnits_3_csrio_perf_perfEventsFrontend_1_value),
    .csrio_perf_perfEventsFrontend_2_value(exeUnits_3_csrio_perf_perfEventsFrontend_2_value),
    .csrio_perf_perfEventsFrontend_3_value(exeUnits_3_csrio_perf_perfEventsFrontend_3_value),
    .csrio_perf_perfEventsFrontend_4_value(exeUnits_3_csrio_perf_perfEventsFrontend_4_value),
    .csrio_perf_perfEventsFrontend_5_value(exeUnits_3_csrio_perf_perfEventsFrontend_5_value),
    .csrio_perf_perfEventsFrontend_6_value(exeUnits_3_csrio_perf_perfEventsFrontend_6_value),
    .csrio_perf_perfEventsFrontend_7_value(exeUnits_3_csrio_perf_perfEventsFrontend_7_value),
    .csrio_perf_perfEventsCtrl_0_value(exeUnits_3_csrio_perf_perfEventsCtrl_0_value),
    .csrio_perf_perfEventsCtrl_1_value(exeUnits_3_csrio_perf_perfEventsCtrl_1_value),
    .csrio_perf_perfEventsCtrl_2_value(exeUnits_3_csrio_perf_perfEventsCtrl_2_value),
    .csrio_perf_perfEventsCtrl_3_value(exeUnits_3_csrio_perf_perfEventsCtrl_3_value),
    .csrio_perf_perfEventsCtrl_4_value(exeUnits_3_csrio_perf_perfEventsCtrl_4_value),
    .csrio_perf_perfEventsCtrl_5_value(exeUnits_3_csrio_perf_perfEventsCtrl_5_value),
    .csrio_perf_perfEventsCtrl_6_value(exeUnits_3_csrio_perf_perfEventsCtrl_6_value),
    .csrio_perf_perfEventsCtrl_7_value(exeUnits_3_csrio_perf_perfEventsCtrl_7_value),
    .csrio_perf_perfEventsLsu_0_value(exeUnits_3_csrio_perf_perfEventsLsu_0_value),
    .csrio_perf_perfEventsLsu_1_value(exeUnits_3_csrio_perf_perfEventsLsu_1_value),
    .csrio_perf_perfEventsLsu_2_value(exeUnits_3_csrio_perf_perfEventsLsu_2_value),
    .csrio_perf_perfEventsLsu_3_value(exeUnits_3_csrio_perf_perfEventsLsu_3_value),
    .csrio_perf_perfEventsLsu_4_value(exeUnits_3_csrio_perf_perfEventsLsu_4_value),
    .csrio_perf_perfEventsLsu_5_value(exeUnits_3_csrio_perf_perfEventsLsu_5_value),
    .csrio_perf_perfEventsLsu_6_value(exeUnits_3_csrio_perf_perfEventsLsu_6_value),
    .csrio_perf_perfEventsLsu_7_value(exeUnits_3_csrio_perf_perfEventsLsu_7_value),
    .csrio_perf_retiredInstr(exeUnits_3_csrio_perf_retiredInstr),
    .csrio_fpu_fflags_valid(exeUnits_3_csrio_fpu_fflags_valid),
    .csrio_fpu_fflags_bits(exeUnits_3_csrio_fpu_fflags_bits),
    .csrio_fpu_dirty_fs(exeUnits_3_csrio_fpu_dirty_fs),
    .csrio_fpu_frm(exeUnits_3_csrio_fpu_frm),
    .csrio_exception_valid(exeUnits_3_csrio_exception_valid),
    .csrio_exception_bits_uop_cf_pc(exeUnits_3_csrio_exception_bits_uop_cf_pc),
    .csrio_exception_bits_uop_cf_exceptionVec_0(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_0),
    .csrio_exception_bits_uop_cf_exceptionVec_1(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_1),
    .csrio_exception_bits_uop_cf_exceptionVec_2(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_2),
    .csrio_exception_bits_uop_cf_exceptionVec_3(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_3),
    .csrio_exception_bits_uop_cf_exceptionVec_4(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_4),
    .csrio_exception_bits_uop_cf_exceptionVec_5(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_5),
    .csrio_exception_bits_uop_cf_exceptionVec_6(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_6),
    .csrio_exception_bits_uop_cf_exceptionVec_7(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_7),
    .csrio_exception_bits_uop_cf_exceptionVec_8(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_8),
    .csrio_exception_bits_uop_cf_exceptionVec_9(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_9),
    .csrio_exception_bits_uop_cf_exceptionVec_11(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_11),
    .csrio_exception_bits_uop_cf_exceptionVec_12(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_12),
    .csrio_exception_bits_uop_cf_exceptionVec_13(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_13),
    .csrio_exception_bits_uop_cf_exceptionVec_15(exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_15),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_0(exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_0),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_1(exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_1),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_2(exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_2),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_3(exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_3),
    .csrio_exception_bits_uop_cf_trigger_backendHit_0(exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_0),
    .csrio_exception_bits_uop_cf_trigger_backendHit_1(exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_1),
    .csrio_exception_bits_uop_cf_trigger_backendHit_2(exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_2),
    .csrio_exception_bits_uop_cf_trigger_backendHit_3(exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_3),
    .csrio_exception_bits_uop_cf_trigger_backendHit_4(exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_4),
    .csrio_exception_bits_uop_cf_trigger_backendHit_5(exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_5),
    .csrio_exception_bits_uop_cf_crossPageIPFFix(exeUnits_3_csrio_exception_bits_uop_cf_crossPageIPFFix),
    .csrio_exception_bits_uop_ctrl_singleStep(exeUnits_3_csrio_exception_bits_uop_ctrl_singleStep),
    .csrio_exception_bits_isInterrupt(exeUnits_3_csrio_exception_bits_isInterrupt),
    .csrio_isXRet(exeUnits_3_csrio_isXRet),
    .csrio_trapTarget(exeUnits_3_csrio_trapTarget),
    .csrio_interrupt(exeUnits_3_csrio_interrupt),
    .csrio_wfi_event(exeUnits_3_csrio_wfi_event),
    .csrio_memExceptionVAddr(exeUnits_3_csrio_memExceptionVAddr),
    .csrio_externalInterrupt_mtip(exeUnits_3_csrio_externalInterrupt_mtip),
    .csrio_externalInterrupt_msip(exeUnits_3_csrio_externalInterrupt_msip),
    .csrio_externalInterrupt_meip(exeUnits_3_csrio_externalInterrupt_meip),
    .csrio_externalInterrupt_seip(exeUnits_3_csrio_externalInterrupt_seip),
    .csrio_externalInterrupt_debug(exeUnits_3_csrio_externalInterrupt_debug),
    .csrio_tlb_satp_mode(exeUnits_3_csrio_tlb_satp_mode),
    .csrio_tlb_satp_asid(exeUnits_3_csrio_tlb_satp_asid),
    .csrio_tlb_satp_ppn(exeUnits_3_csrio_tlb_satp_ppn),
    .csrio_tlb_satp_changed(exeUnits_3_csrio_tlb_satp_changed),
    .csrio_tlb_priv_mxr(exeUnits_3_csrio_tlb_priv_mxr),
    .csrio_tlb_priv_sum(exeUnits_3_csrio_tlb_priv_sum),
    .csrio_tlb_priv_imode(exeUnits_3_csrio_tlb_priv_imode),
    .csrio_tlb_priv_dmode(exeUnits_3_csrio_tlb_priv_dmode),
    .csrio_customCtrl_l2_pf_store_only(exeUnits_3_csrio_customCtrl_l2_pf_store_only),
    .csrio_customCtrl_icache_parity_enable(exeUnits_3_csrio_customCtrl_icache_parity_enable),
    .csrio_customCtrl_lvpred_timeout(exeUnits_3_csrio_customCtrl_lvpred_timeout),
    .csrio_customCtrl_bp_ctrl_ubtb_enable(exeUnits_3_csrio_customCtrl_bp_ctrl_ubtb_enable),
    .csrio_customCtrl_bp_ctrl_btb_enable(exeUnits_3_csrio_customCtrl_bp_ctrl_btb_enable),
    .csrio_customCtrl_bp_ctrl_tage_enable(exeUnits_3_csrio_customCtrl_bp_ctrl_tage_enable),
    .csrio_customCtrl_bp_ctrl_sc_enable(exeUnits_3_csrio_customCtrl_bp_ctrl_sc_enable),
    .csrio_customCtrl_bp_ctrl_ras_enable(exeUnits_3_csrio_customCtrl_bp_ctrl_ras_enable),
    .csrio_customCtrl_ldld_vio_check_enable(exeUnits_3_csrio_customCtrl_ldld_vio_check_enable),
    .csrio_customCtrl_cache_error_enable(exeUnits_3_csrio_customCtrl_cache_error_enable),
    .csrio_customCtrl_uncache_write_outstanding_enable(exeUnits_3_csrio_customCtrl_uncache_write_outstanding_enable),
    .csrio_customCtrl_fusion_enable(exeUnits_3_csrio_customCtrl_fusion_enable),
    .csrio_customCtrl_wfi_enable(exeUnits_3_csrio_customCtrl_wfi_enable),
    .csrio_customCtrl_svinval_enable(exeUnits_3_csrio_customCtrl_svinval_enable),
    .csrio_customCtrl_distribute_csr_wvalid(exeUnits_3_csrio_customCtrl_distribute_csr_wvalid),
    .csrio_customCtrl_distribute_csr_waddr(exeUnits_3_csrio_customCtrl_distribute_csr_waddr),
    .csrio_customCtrl_distribute_csr_wdata(exeUnits_3_csrio_customCtrl_distribute_csr_wdata),
    .csrio_customCtrl_singlestep(exeUnits_3_csrio_customCtrl_singlestep),
    .csrio_customCtrl_frontend_trigger_t_valid(exeUnits_3_csrio_customCtrl_frontend_trigger_t_valid),
    .csrio_customCtrl_frontend_trigger_t_bits_addr(exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_addr),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType(
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_select(
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_select),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_timing(
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_chain(
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2(
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .csrio_customCtrl_mem_trigger_t_valid(exeUnits_3_csrio_customCtrl_mem_trigger_t_valid),
    .csrio_customCtrl_mem_trigger_t_bits_addr(exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_addr),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_matchType(exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType)
      ,
    .csrio_customCtrl_mem_trigger_t_bits_tdata_select(exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_select),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_chain(exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_chain),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2(exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2),
    .csrio_customCtrl_trigger_enable_0(exeUnits_3_csrio_customCtrl_trigger_enable_0),
    .csrio_customCtrl_trigger_enable_1(exeUnits_3_csrio_customCtrl_trigger_enable_1),
    .csrio_customCtrl_trigger_enable_2(exeUnits_3_csrio_customCtrl_trigger_enable_2),
    .csrio_customCtrl_trigger_enable_3(exeUnits_3_csrio_customCtrl_trigger_enable_3),
    .csrio_customCtrl_trigger_enable_4(exeUnits_3_csrio_customCtrl_trigger_enable_4),
    .csrio_customCtrl_trigger_enable_5(exeUnits_3_csrio_customCtrl_trigger_enable_5),
    .csrio_customCtrl_trigger_enable_6(exeUnits_3_csrio_customCtrl_trigger_enable_6),
    .csrio_customCtrl_trigger_enable_7(exeUnits_3_csrio_customCtrl_trigger_enable_7),
    .csrio_customCtrl_trigger_enable_8(exeUnits_3_csrio_customCtrl_trigger_enable_8),
    .csrio_customCtrl_trigger_enable_9(exeUnits_3_csrio_customCtrl_trigger_enable_9),
    .csrio_distributedUpdate_0_wvalid(exeUnits_3_csrio_distributedUpdate_0_wvalid),
    .csrio_distributedUpdate_0_waddr(exeUnits_3_csrio_distributedUpdate_0_waddr),
    .csrio_distributedUpdate_0_wdata(exeUnits_3_csrio_distributedUpdate_0_wdata),
    .csrio_distributedUpdate_1_wvalid(exeUnits_3_csrio_distributedUpdate_1_wvalid),
    .csrio_distributedUpdate_1_waddr(exeUnits_3_csrio_distributedUpdate_1_waddr),
    .csrio_distributedUpdate_1_wdata(exeUnits_3_csrio_distributedUpdate_1_wdata),
    .fenceio_sfence_valid(exeUnits_3_fenceio_sfence_valid),
    .fenceio_sfence_bits_rs1(exeUnits_3_fenceio_sfence_bits_rs1),
    .fenceio_sfence_bits_rs2(exeUnits_3_fenceio_sfence_bits_rs2),
    .fenceio_sfence_bits_addr(exeUnits_3_fenceio_sfence_bits_addr),
    .fenceio_sfence_bits_asid(exeUnits_3_fenceio_sfence_bits_asid),
    .fenceio_fencei(exeUnits_3_fenceio_fencei),
    .fenceio_sbuffer_flushSb(exeUnits_3_fenceio_sbuffer_flushSb),
    .fenceio_sbuffer_sbIsEmpty(exeUnits_3_fenceio_sbuffer_sbIsEmpty)
  );
  assign io_issue_2_ready = exeUnits_2_io_fromInt_ready; // @[FUBlock.scala 72:12]
  assign io_issue_3_ready = exeUnits_3_io_fromInt_ready; // @[FUBlock.scala 72:12]
  assign io_writeback_0_bits_data = exeUnits_0_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_redirectValid = exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_redirect_cfiUpdate_isMisPred = exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_data = exeUnits_1_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_redirectValid = exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_redirect_cfiUpdate_isMisPred = exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_2_valid = exeUnits_2_io_out_valid; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_ctrl_rfWen = exeUnits_2_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_ctrl_fpWen = exeUnits_2_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_pdest = exeUnits_2_io_out_bits_uop_pdest; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_robIdx_flag = exeUnits_2_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_robIdx_value = exeUnits_2_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_lqIdx_flag = exeUnits_2_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_uop_lqIdx_value = exeUnits_2_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_data = exeUnits_2_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_3_valid = exeUnits_3_io_out_valid; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_cf_exceptionVec_2 = exeUnits_3_io_out_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_cf_exceptionVec_3 = exeUnits_3_io_out_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_cf_exceptionVec_8 = exeUnits_3_io_out_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_cf_exceptionVec_9 = exeUnits_3_io_out_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_cf_exceptionVec_11 = exeUnits_3_io_out_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_ctrl_rfWen = exeUnits_3_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_ctrl_fpWen = exeUnits_3_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_ctrl_flushPipe = exeUnits_3_io_out_bits_uop_ctrl_flushPipe; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_pdest = exeUnits_3_io_out_bits_uop_pdest; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_robIdx_flag = exeUnits_3_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_robIdx_value = exeUnits_3_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_lqIdx_flag = exeUnits_3_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_uop_lqIdx_value = exeUnits_3_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_data = exeUnits_3_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_fflags = exeUnits_3_io_out_bits_fflags; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_redirectValid = exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_redirect_cfiUpdate_isMisPred = exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_debug_isPerfCnt = exeUnits_3_io_out_bits_debug_isPerfCnt; // @[FUBlock.scala 73:16]
  assign io_extra_exuRedirect_0_valid = _io_extra_exuRedirect_0_valid_T & exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC = exeUnits_3_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_brType = exeUnits_3_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_isCall = exeUnits_3_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_isRet = exeUnits_3_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_ctrl_imm = exeUnits_3_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_robIdx_flag = exeUnits_3_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_robIdx_value = exeUnits_3_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirectValid = exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_robIdx_flag = exeUnits_3_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_robIdx_value = exeUnits_3_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag = exeUnits_3_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_ftqIdx_value = exeUnits_3_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_ftqOffset = exeUnits_3_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target = exeUnits_3_io_out_bits_redirect_cfiUpdate_target; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred = exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_valid = _io_extra_exuRedirect_1_valid_T & exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC = exeUnits_1_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_brType = exeUnits_1_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_isCall = exeUnits_1_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_isRet = exeUnits_1_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_ctrl_imm = exeUnits_1_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_robIdx_flag = exeUnits_1_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_robIdx_value = exeUnits_1_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirectValid = exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_robIdx_flag = exeUnits_1_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_robIdx_value = exeUnits_1_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag = exeUnits_1_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_ftqIdx_value = exeUnits_1_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_ftqOffset = exeUnits_1_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken = exeUnits_1_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred = exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_valid = _io_extra_exuRedirect_2_valid_T & exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC = exeUnits_0_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_brType = exeUnits_0_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_isCall = exeUnits_0_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_isRet = exeUnits_0_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_ctrl_imm = exeUnits_0_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_robIdx_flag = exeUnits_0_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_robIdx_value = exeUnits_0_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirectValid = exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_robIdx_flag = exeUnits_0_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_robIdx_value = exeUnits_0_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag = exeUnits_0_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_ftqIdx_value = exeUnits_0_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_ftqOffset = exeUnits_0_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken = exeUnits_0_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred = exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_csrio_fpu_frm = exeUnits_3_csrio_fpu_frm; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_isXRet = exeUnits_3_csrio_isXRet; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_trapTarget = exeUnits_3_csrio_trapTarget; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_interrupt = exeUnits_3_csrio_interrupt; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_wfi_event = exeUnits_3_csrio_wfi_event; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_tlb_satp_mode = io_extra_csrio_tlb_REG_1_satp_mode; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_satp_asid = io_extra_csrio_tlb_REG_1_satp_asid; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_satp_ppn = io_extra_csrio_tlb_REG_1_satp_ppn; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_satp_changed = io_extra_csrio_tlb_REG_1_satp_changed; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_mxr = io_extra_csrio_tlb_REG_1_priv_mxr; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_sum = io_extra_csrio_tlb_REG_1_priv_sum; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_imode = io_extra_csrio_tlb_REG_1_priv_imode; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_dmode = io_extra_csrio_tlb_REG_1_priv_dmode; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_customCtrl_l2_pf_store_only = io_extra_csrio_customCtrl_REG_1_l2_pf_store_only; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_icache_parity_enable = io_extra_csrio_customCtrl_REG_1_icache_parity_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_lvpred_timeout = io_extra_csrio_customCtrl_REG_1_lvpred_timeout; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_btb_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_tage_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_sc_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_ras_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_ldld_vio_check_enable = io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_cache_error_enable = io_extra_csrio_customCtrl_REG_1_cache_error_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_uncache_write_outstanding_enable =
    io_extra_csrio_customCtrl_REG_1_uncache_write_outstanding_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_fusion_enable = io_extra_csrio_customCtrl_REG_1_fusion_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_wfi_enable = io_extra_csrio_customCtrl_REG_1_wfi_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_svinval_enable = io_extra_csrio_customCtrl_REG_1_svinval_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_distribute_csr_wvalid = io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_distribute_csr_waddr =
    io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_distribute_csr_wdata =
    io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_singlestep = io_extra_csrio_customCtrl_REG_1_singlestep; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_valid = io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_valid = io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_addr = io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_0 = io_extra_csrio_customCtrl_REG_1_trigger_enable_0; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_1 = io_extra_csrio_customCtrl_REG_1_trigger_enable_1; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_2 = io_extra_csrio_customCtrl_REG_1_trigger_enable_2; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_3 = io_extra_csrio_customCtrl_REG_1_trigger_enable_3; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_4 = io_extra_csrio_customCtrl_REG_1_trigger_enable_4; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_5 = io_extra_csrio_customCtrl_REG_1_trigger_enable_5; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_6 = io_extra_csrio_customCtrl_REG_1_trigger_enable_6; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_7 = io_extra_csrio_customCtrl_REG_1_trigger_enable_7; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_8 = io_extra_csrio_customCtrl_REG_1_trigger_enable_8; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_9 = io_extra_csrio_customCtrl_REG_1_trigger_enable_9; // @[FUBlock.scala 89:37]
  assign io_extra_fenceio_sfence_valid = exeUnits_3_fenceio_sfence_valid; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_rs1 = exeUnits_3_fenceio_sfence_bits_rs1; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_rs2 = exeUnits_3_fenceio_sfence_bits_rs2; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_addr = exeUnits_3_fenceio_sfence_bits_addr; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_asid = exeUnits_3_fenceio_sfence_bits_asid; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_fencei = exeUnits_3_fenceio_fencei; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sbuffer_flushSb = exeUnits_3_fenceio_sbuffer_flushSb; // @[FUBlock.scala 96:23]
  assign exeUnits_0_io_fromInt_valid = io_issue_0_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_0_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_brType = io_issue_0_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_isCall = io_issue_0_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_isRet = io_issue_0_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pred_taken = io_issue_0_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_0_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_0_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_ftqOffset = io_issue_0_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_ctrl_fuType = io_issue_0_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_0_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_ctrl_imm = io_issue_0_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_robIdx_flag = io_issue_0_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_robIdx_value = io_issue_0_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_src_0 = io_issue_0_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_src_1 = io_issue_0_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_out_ready = 1'h1; // @[FUBlock.scala 73:16]
  assign exeUnits_1_io_fromInt_valid = io_issue_1_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_1_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_brType = io_issue_1_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_isCall = io_issue_1_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_isRet = io_issue_1_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pred_taken = io_issue_1_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_1_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_1_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_ftqOffset = io_issue_1_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_ctrl_fuType = io_issue_1_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_1_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_ctrl_imm = io_issue_1_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_robIdx_flag = io_issue_1_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_robIdx_value = io_issue_1_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_src_0 = io_issue_1_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_src_1 = io_issue_1_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_out_ready = 1'h1; // @[FUBlock.scala 73:16]
  assign exeUnits_2_clock = clock; // @[FUBlock.scala 66:74]
  assign exeUnits_2_reset = reset; // @[FUBlock.scala 66:74]
  assign exeUnits_2_io_fromInt_valid = io_issue_2_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_fuType = io_issue_2_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_2_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_rfWen = io_issue_2_bits_uop_ctrl_rfWen; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_fpWen = io_issue_2_bits_uop_ctrl_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_pdest = io_issue_2_bits_uop_pdest; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_robIdx_flag = io_issue_2_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_robIdx_value = io_issue_2_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_lqIdx_flag = io_issue_2_bits_uop_lqIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_lqIdx_value = io_issue_2_bits_uop_lqIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_src_0 = io_issue_2_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_src_1 = io_issue_2_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_redirect_valid = next_valid_REG_2; // @[BitUtils.scala 26:20 28:18]
  assign exeUnits_2_io_redirect_bits_robIdx_flag = next_bits_r2_robIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_2_io_redirect_bits_robIdx_value = next_bits_r2_robIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_2_io_redirect_bits_level = next_bits_r2_level; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_3_clock = clock; // @[FUBlock.scala 66:74]
  assign exeUnits_3_reset = reset; // @[FUBlock.scala 66:74]
  assign exeUnits_3_io_fromInt_valid = io_issue_3_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pc = io_issue_3_bits_uop_cf_pc; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_3_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_brType = io_issue_3_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_isCall = io_issue_3_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_isRet = io_issue_3_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pred_taken = io_issue_3_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_3_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_3_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_ftqOffset = io_issue_3_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fuType = io_issue_3_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_3_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_rfWen = io_issue_3_bits_uop_ctrl_rfWen; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fpWen = io_issue_3_bits_uop_ctrl_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_imm = io_issue_3_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_typeTagOut = io_issue_3_bits_uop_ctrl_fpu_typeTagOut; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_fromInt = io_issue_3_bits_uop_ctrl_fpu_fromInt; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_wflags = io_issue_3_bits_uop_ctrl_fpu_wflags; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_typ = io_issue_3_bits_uop_ctrl_fpu_typ; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fpu_rm = io_issue_3_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_pdest = io_issue_3_bits_uop_pdest; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_robIdx_flag = io_issue_3_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_robIdx_value = io_issue_3_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_lqIdx_flag = io_issue_3_bits_uop_lqIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_lqIdx_value = io_issue_3_bits_uop_lqIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_src_0 = io_issue_3_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_src_1 = io_issue_3_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_redirect_valid = next_valid_REG_3; // @[BitUtils.scala 26:20 28:18]
  assign exeUnits_3_io_redirect_bits_robIdx_flag = next_bits_r3_robIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_3_io_redirect_bits_robIdx_value = next_bits_r3_robIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_3_io_redirect_bits_level = next_bits_r3_level; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_3_io_out_ready = io_writeback_3_ready; // @[FUBlock.scala 73:16]
  assign exeUnits_3_csrio_hartId = io_extra_csrio_hartId; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_0_value = REG_perfEventsFrontend_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_1_value = REG_perfEventsFrontend_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_2_value = REG_perfEventsFrontend_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_3_value = REG_perfEventsFrontend_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_4_value = REG_perfEventsFrontend_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_5_value = REG_perfEventsFrontend_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_6_value = REG_perfEventsFrontend_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsFrontend_7_value = REG_perfEventsFrontend_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_0_value = REG_perfEventsCtrl_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_1_value = REG_perfEventsCtrl_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_2_value = REG_perfEventsCtrl_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_3_value = REG_perfEventsCtrl_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_4_value = REG_perfEventsCtrl_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_5_value = REG_perfEventsCtrl_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_6_value = REG_perfEventsCtrl_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsCtrl_7_value = REG_perfEventsCtrl_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_0_value = REG_perfEventsLsu_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_1_value = REG_perfEventsLsu_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_2_value = REG_perfEventsLsu_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_3_value = REG_perfEventsLsu_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_4_value = REG_perfEventsLsu_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_5_value = REG_perfEventsLsu_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_6_value = REG_perfEventsLsu_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_perfEventsLsu_7_value = REG_perfEventsLsu_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_perf_retiredInstr = REG_retiredInstr; // @[FUBlock.scala 87:26]
  assign exeUnits_3_csrio_fpu_fflags_valid = io_extra_csrio_fpu_fflags_valid; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_fpu_fflags_bits = io_extra_csrio_fpu_fflags_bits; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_fpu_dirty_fs = io_extra_csrio_fpu_dirty_fs; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_valid = io_extra_csrio_exception_valid; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_pc = io_extra_csrio_exception_bits_uop_cf_pc; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_0 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_1 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_2 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_3 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_4 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_5 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_6 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_7 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_8 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_9 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_11 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_12 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_13 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_exceptionVec_15 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_0 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_1 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_2 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_frontendHit_3 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_0 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_1 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_2 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_3 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_4 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_trigger_backendHit_5 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_cf_crossPageIPFFix = io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_uop_ctrl_singleStep = io_extra_csrio_exception_bits_uop_ctrl_singleStep; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_exception_bits_isInterrupt = io_extra_csrio_exception_bits_isInterrupt; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_memExceptionVAddr = io_extra_csrio_memExceptionVAddr; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_externalInterrupt_mtip = io_extra_csrio_externalInterrupt_mtip; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_externalInterrupt_msip = io_extra_csrio_externalInterrupt_msip; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_externalInterrupt_meip = io_extra_csrio_externalInterrupt_meip; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_externalInterrupt_seip = io_extra_csrio_externalInterrupt_seip; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_externalInterrupt_debug = io_extra_csrio_externalInterrupt_debug; // @[FUBlock.scala 86:21]
  assign exeUnits_3_csrio_distributedUpdate_0_wvalid = REG_1_0_wvalid; // @[FUBlock.scala 92:39]
  assign exeUnits_3_csrio_distributedUpdate_0_waddr = REG_1_0_waddr; // @[FUBlock.scala 92:39]
  assign exeUnits_3_csrio_distributedUpdate_0_wdata = REG_1_0_wdata; // @[FUBlock.scala 92:39]
  assign exeUnits_3_csrio_distributedUpdate_1_wvalid = REG_1_1_wvalid; // @[FUBlock.scala 92:39]
  assign exeUnits_3_csrio_distributedUpdate_1_waddr = REG_1_1_waddr; // @[FUBlock.scala 92:39]
  assign exeUnits_3_csrio_distributedUpdate_1_wdata = REG_1_1_wdata; // @[FUBlock.scala 92:39]
  assign exeUnits_3_fenceio_sbuffer_sbIsEmpty = io_extra_fenceio_sbuffer_sbIsEmpty; // @[FUBlock.scala 96:23]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r2_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r2_robIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r2_level <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r3_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r3_robIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r3_level <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    REG_perfEventsFrontend_0_value <= io_extra_csrio_perf_perfEventsFrontend_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_1_value <= io_extra_csrio_perf_perfEventsFrontend_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_2_value <= io_extra_csrio_perf_perfEventsFrontend_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_3_value <= io_extra_csrio_perf_perfEventsFrontend_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_4_value <= io_extra_csrio_perf_perfEventsFrontend_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_5_value <= io_extra_csrio_perf_perfEventsFrontend_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_6_value <= io_extra_csrio_perf_perfEventsFrontend_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_7_value <= io_extra_csrio_perf_perfEventsFrontend_7_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_0_value <= io_extra_csrio_perf_perfEventsCtrl_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_1_value <= io_extra_csrio_perf_perfEventsCtrl_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_2_value <= io_extra_csrio_perf_perfEventsCtrl_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_3_value <= io_extra_csrio_perf_perfEventsCtrl_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_4_value <= io_extra_csrio_perf_perfEventsCtrl_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_5_value <= io_extra_csrio_perf_perfEventsCtrl_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_6_value <= io_extra_csrio_perf_perfEventsCtrl_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_7_value <= io_extra_csrio_perf_perfEventsCtrl_7_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_0_value <= io_extra_csrio_perf_perfEventsLsu_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_1_value <= io_extra_csrio_perf_perfEventsLsu_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_2_value <= io_extra_csrio_perf_perfEventsLsu_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_3_value <= io_extra_csrio_perf_perfEventsLsu_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_4_value <= io_extra_csrio_perf_perfEventsLsu_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_5_value <= io_extra_csrio_perf_perfEventsLsu_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_6_value <= io_extra_csrio_perf_perfEventsLsu_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_7_value <= io_extra_csrio_perf_perfEventsLsu_7_value; // @[FUBlock.scala 87:36]
    REG_retiredInstr <= io_extra_csrio_perf_retiredInstr; // @[FUBlock.scala 87:36]
    io_extra_csrio_customCtrl_REG_l2_pf_store_only <= exeUnits_3_csrio_customCtrl_l2_pf_store_only; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_icache_parity_enable <= exeUnits_3_csrio_customCtrl_icache_parity_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_lvpred_timeout <= exeUnits_3_csrio_customCtrl_lvpred_timeout; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable <= exeUnits_3_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable <= exeUnits_3_csrio_customCtrl_bp_ctrl_btb_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable <= exeUnits_3_csrio_customCtrl_bp_ctrl_tage_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable <= exeUnits_3_csrio_customCtrl_bp_ctrl_sc_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable <= exeUnits_3_csrio_customCtrl_bp_ctrl_ras_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_ldld_vio_check_enable <= exeUnits_3_csrio_customCtrl_ldld_vio_check_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_cache_error_enable <= exeUnits_3_csrio_customCtrl_cache_error_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_uncache_write_outstanding_enable <=
      exeUnits_3_csrio_customCtrl_uncache_write_outstanding_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_fusion_enable <= exeUnits_3_csrio_customCtrl_fusion_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_wfi_enable <= exeUnits_3_csrio_customCtrl_wfi_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_svinval_enable <= exeUnits_3_csrio_customCtrl_svinval_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_distribute_csr_wvalid <= exeUnits_3_csrio_customCtrl_distribute_csr_wvalid; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_distribute_csr_waddr <= exeUnits_3_csrio_customCtrl_distribute_csr_waddr; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_distribute_csr_wdata <= exeUnits_3_csrio_customCtrl_distribute_csr_wdata; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_singlestep <= exeUnits_3_csrio_customCtrl_singlestep; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid <= exeUnits_3_csrio_customCtrl_frontend_trigger_t_valid; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr <=
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType <=
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select <=
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing <=
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain <=
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2 <=
      exeUnits_3_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_valid <= exeUnits_3_csrio_customCtrl_mem_trigger_t_valid; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr <= exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType <=
      exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select <=
      exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain <=
      exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2 <=
      exeUnits_3_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_0 <= exeUnits_3_csrio_customCtrl_trigger_enable_0; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_1 <= exeUnits_3_csrio_customCtrl_trigger_enable_1; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_2 <= exeUnits_3_csrio_customCtrl_trigger_enable_2; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_3 <= exeUnits_3_csrio_customCtrl_trigger_enable_3; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_4 <= exeUnits_3_csrio_customCtrl_trigger_enable_4; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_5 <= exeUnits_3_csrio_customCtrl_trigger_enable_5; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_6 <= exeUnits_3_csrio_customCtrl_trigger_enable_6; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_7 <= exeUnits_3_csrio_customCtrl_trigger_enable_7; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_8 <= exeUnits_3_csrio_customCtrl_trigger_enable_8; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_9 <= exeUnits_3_csrio_customCtrl_trigger_enable_9; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_1_l2_pf_store_only <= io_extra_csrio_customCtrl_REG_l2_pf_store_only; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_icache_parity_enable <= io_extra_csrio_customCtrl_REG_icache_parity_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_lvpred_timeout <= io_extra_csrio_customCtrl_REG_lvpred_timeout; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable <= io_extra_csrio_customCtrl_REG_ldld_vio_check_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_cache_error_enable <= io_extra_csrio_customCtrl_REG_cache_error_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_uncache_write_outstanding_enable <=
      io_extra_csrio_customCtrl_REG_uncache_write_outstanding_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_fusion_enable <= io_extra_csrio_customCtrl_REG_fusion_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_wfi_enable <= io_extra_csrio_customCtrl_REG_wfi_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_svinval_enable <= io_extra_csrio_customCtrl_REG_svinval_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid <= io_extra_csrio_customCtrl_REG_distribute_csr_wvalid; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr <=
      io_extra_csrio_customCtrl_REG_distribute_csr_waddr; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata <=
      io_extra_csrio_customCtrl_REG_distribute_csr_wdata; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_singlestep <= io_extra_csrio_customCtrl_REG_singlestep; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid <= io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2 <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid <= io_extra_csrio_customCtrl_REG_mem_trigger_t_valid; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr <= io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2 <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_0 <= io_extra_csrio_customCtrl_REG_trigger_enable_0; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_1 <= io_extra_csrio_customCtrl_REG_trigger_enable_1; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_2 <= io_extra_csrio_customCtrl_REG_trigger_enable_2; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_3 <= io_extra_csrio_customCtrl_REG_trigger_enable_3; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_4 <= io_extra_csrio_customCtrl_REG_trigger_enable_4; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_5 <= io_extra_csrio_customCtrl_REG_trigger_enable_5; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_6 <= io_extra_csrio_customCtrl_REG_trigger_enable_6; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_7 <= io_extra_csrio_customCtrl_REG_trigger_enable_7; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_8 <= io_extra_csrio_customCtrl_REG_trigger_enable_8; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_9 <= io_extra_csrio_customCtrl_REG_trigger_enable_9; // @[FUBlock.scala 89:47]
    io_extra_csrio_tlb_REG_satp_mode <= exeUnits_3_csrio_tlb_satp_mode; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_satp_asid <= exeUnits_3_csrio_tlb_satp_asid; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_satp_ppn <= exeUnits_3_csrio_tlb_satp_ppn; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_satp_changed <= exeUnits_3_csrio_tlb_satp_changed; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_mxr <= exeUnits_3_csrio_tlb_priv_mxr; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_sum <= exeUnits_3_csrio_tlb_priv_sum; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_imode <= exeUnits_3_csrio_tlb_priv_imode; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_dmode <= exeUnits_3_csrio_tlb_priv_dmode; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_1_satp_mode <= io_extra_csrio_tlb_REG_satp_mode; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_satp_asid <= io_extra_csrio_tlb_REG_satp_asid; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_satp_ppn <= io_extra_csrio_tlb_REG_satp_ppn; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_satp_changed <= io_extra_csrio_tlb_REG_satp_changed; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_mxr <= io_extra_csrio_tlb_REG_priv_mxr; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_sum <= io_extra_csrio_tlb_REG_priv_sum; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_imode <= io_extra_csrio_tlb_REG_priv_imode; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_dmode <= io_extra_csrio_tlb_REG_priv_dmode; // @[FUBlock.scala 90:40]
    REG_1_0_wvalid <= io_extra_csrio_distributedUpdate_0_wvalid; // @[FUBlock.scala 92:49]
    REG_1_0_waddr <= io_extra_csrio_distributedUpdate_0_waddr; // @[FUBlock.scala 92:49]
    REG_1_0_wdata <= io_extra_csrio_distributedUpdate_0_wdata; // @[FUBlock.scala 92:49]
    REG_1_1_wvalid <= io_extra_csrio_distributedUpdate_1_wvalid; // @[FUBlock.scala 92:49]
    REG_1_1_waddr <= io_extra_csrio_distributedUpdate_1_waddr; // @[FUBlock.scala 92:49]
    REG_1_1_wdata <= io_extra_csrio_distributedUpdate_1_wdata; // @[FUBlock.scala 92:49]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      next_valid_REG_2 <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      next_valid_REG_2 <= io_redirect_valid; // @[BitUtils.scala 28:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      next_valid_REG_3 <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      next_valid_REG_3 <= io_redirect_valid; // @[BitUtils.scala 28:28]
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
  next_valid_REG_2 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  next_bits_r2_robIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  next_bits_r2_robIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  next_bits_r2_level = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  next_valid_REG_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  next_bits_r3_robIdx_flag = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  next_bits_r3_robIdx_value = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  next_bits_r3_level = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_perfEventsFrontend_0_value = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  REG_perfEventsFrontend_1_value = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  REG_perfEventsFrontend_2_value = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  REG_perfEventsFrontend_3_value = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  REG_perfEventsFrontend_4_value = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  REG_perfEventsFrontend_5_value = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  REG_perfEventsFrontend_6_value = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  REG_perfEventsFrontend_7_value = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  REG_perfEventsCtrl_0_value = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  REG_perfEventsCtrl_1_value = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  REG_perfEventsCtrl_2_value = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  REG_perfEventsCtrl_3_value = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  REG_perfEventsCtrl_4_value = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  REG_perfEventsCtrl_5_value = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  REG_perfEventsCtrl_6_value = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  REG_perfEventsCtrl_7_value = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  REG_perfEventsLsu_0_value = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  REG_perfEventsLsu_1_value = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  REG_perfEventsLsu_2_value = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  REG_perfEventsLsu_3_value = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  REG_perfEventsLsu_4_value = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  REG_perfEventsLsu_5_value = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  REG_perfEventsLsu_6_value = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  REG_perfEventsLsu_7_value = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  REG_retiredInstr = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_l2_pf_store_only = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_icache_parity_enable = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_lvpred_timeout = _RAND_35[4:0];
  _RAND_36 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_ldld_vio_check_enable = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_cache_error_enable = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_uncache_write_outstanding_enable = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_fusion_enable = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_wfi_enable = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_svinval_enable = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_distribute_csr_wvalid = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_distribute_csr_waddr = _RAND_48[11:0];
  _RAND_49 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_distribute_csr_wdata = _RAND_49[63:0];
  _RAND_50 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_singlestep = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain = _RAND_56[0:0];
  _RAND_57 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2 = _RAND_57[63:0];
  _RAND_58 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_valid = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain = _RAND_62[0:0];
  _RAND_63 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2 = _RAND_63[63:0];
  _RAND_64 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_2 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_3 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_4 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_5 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_6 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_7 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_8 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_9 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_l2_pf_store_only = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_icache_parity_enable = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_lvpred_timeout = _RAND_76[4:0];
  _RAND_77 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_cache_error_enable = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_uncache_write_outstanding_enable = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_fusion_enable = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_wfi_enable = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_svinval_enable = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr = _RAND_89[11:0];
  _RAND_90 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata = _RAND_90[63:0];
  _RAND_91 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_singlestep = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain = _RAND_97[0:0];
  _RAND_98 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2 = _RAND_98[63:0];
  _RAND_99 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr = _RAND_100[2:0];
  _RAND_101 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType = _RAND_101[1:0];
  _RAND_102 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain = _RAND_103[0:0];
  _RAND_104 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2 = _RAND_104[63:0];
  _RAND_105 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_0 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_1 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_2 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_3 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_4 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_5 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_6 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_7 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_8 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_9 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_mode = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_asid = _RAND_116[15:0];
  _RAND_117 = {2{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_ppn = _RAND_117[43:0];
  _RAND_118 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_changed = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_mxr = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_sum = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_imode = _RAND_121[1:0];
  _RAND_122 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_dmode = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_mode = _RAND_123[3:0];
  _RAND_124 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_asid = _RAND_124[15:0];
  _RAND_125 = {2{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_ppn = _RAND_125[43:0];
  _RAND_126 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_changed = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_mxr = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_sum = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_imode = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_dmode = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  REG_1_0_wvalid = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  REG_1_0_waddr = _RAND_132[11:0];
  _RAND_133 = {2{`RANDOM}};
  REG_1_0_wdata = _RAND_133[63:0];
  _RAND_134 = {1{`RANDOM}};
  REG_1_1_wvalid = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  REG_1_1_waddr = _RAND_135[11:0];
  _RAND_136 = {2{`RANDOM}};
  REG_1_1_wdata = _RAND_136[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    next_valid_REG_2 = 1'h0;
  end
  if (reset) begin
    next_valid_REG_3 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

