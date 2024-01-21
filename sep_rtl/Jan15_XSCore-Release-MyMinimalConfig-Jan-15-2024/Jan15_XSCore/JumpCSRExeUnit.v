module JumpCSRExeUnit(
  input         clock,
  input         reset,
  output        io_fromInt_ready,
  input         io_fromInt_valid,
  input  [38:0] io_fromInt_bits_uop_cf_pc,
  input         io_fromInt_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_fromInt_bits_uop_cf_pd_brType,
  input         io_fromInt_bits_uop_cf_pd_isCall,
  input         io_fromInt_bits_uop_cf_pd_isRet,
  input         io_fromInt_bits_uop_cf_pred_taken,
  input         io_fromInt_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_fromInt_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_fromInt_bits_uop_cf_ftqOffset,
  input  [3:0]  io_fromInt_bits_uop_ctrl_fuType,
  input  [6:0]  io_fromInt_bits_uop_ctrl_fuOpType,
  input         io_fromInt_bits_uop_ctrl_rfWen,
  input         io_fromInt_bits_uop_ctrl_fpWen,
  input  [19:0] io_fromInt_bits_uop_ctrl_imm,
  input         io_fromInt_bits_uop_ctrl_fpu_typeTagOut,
  input         io_fromInt_bits_uop_ctrl_fpu_fromInt,
  input         io_fromInt_bits_uop_ctrl_fpu_wflags,
  input  [1:0]  io_fromInt_bits_uop_ctrl_fpu_typ,
  input  [2:0]  io_fromInt_bits_uop_ctrl_fpu_rm,
  input  [5:0]  io_fromInt_bits_uop_pdest,
  input         io_fromInt_bits_uop_robIdx_flag,
  input  [4:0]  io_fromInt_bits_uop_robIdx_value,
  input         io_fromInt_bits_uop_lqIdx_flag,
  input  [3:0]  io_fromInt_bits_uop_lqIdx_value,
  input  [63:0] io_fromInt_bits_src_0,
  input  [63:0] io_fromInt_bits_src_1,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  output [63:0] io_out_bits_data,
  output [4:0]  io_out_bits_fflags,
  output        io_out_bits_redirectValid,
  output        io_out_bits_redirect_robIdx_flag,
  output [4:0]  io_out_bits_redirect_robIdx_value,
  output        io_out_bits_redirect_ftqIdx_flag,
  output [2:0]  io_out_bits_redirect_ftqIdx_value,
  output [2:0]  io_out_bits_redirect_ftqOffset,
  output [38:0] io_out_bits_redirect_cfiUpdate_target,
  output        io_out_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_bits_debug_isPerfCnt,
  input  [7:0]  csrio_hartId,
  input  [5:0]  csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  csrio_perf_perfEventsLsu_7_value,
  input  [2:0]  csrio_perf_retiredInstr,
  input         csrio_fpu_fflags_valid,
  input  [4:0]  csrio_fpu_fflags_bits,
  input         csrio_fpu_dirty_fs,
  output [2:0]  csrio_fpu_frm,
  input         csrio_exception_valid,
  input  [38:0] csrio_exception_bits_uop_cf_pc,
  input         csrio_exception_bits_uop_cf_exceptionVec_0,
  input         csrio_exception_bits_uop_cf_exceptionVec_1,
  input         csrio_exception_bits_uop_cf_exceptionVec_2,
  input         csrio_exception_bits_uop_cf_exceptionVec_3,
  input         csrio_exception_bits_uop_cf_exceptionVec_4,
  input         csrio_exception_bits_uop_cf_exceptionVec_5,
  input         csrio_exception_bits_uop_cf_exceptionVec_6,
  input         csrio_exception_bits_uop_cf_exceptionVec_7,
  input         csrio_exception_bits_uop_cf_exceptionVec_8,
  input         csrio_exception_bits_uop_cf_exceptionVec_9,
  input         csrio_exception_bits_uop_cf_exceptionVec_11,
  input         csrio_exception_bits_uop_cf_exceptionVec_12,
  input         csrio_exception_bits_uop_cf_exceptionVec_13,
  input         csrio_exception_bits_uop_cf_exceptionVec_15,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         csrio_exception_bits_uop_ctrl_singleStep,
  input         csrio_exception_bits_isInterrupt,
  output        csrio_isXRet,
  output [38:0] csrio_trapTarget,
  output        csrio_interrupt,
  output        csrio_wfi_event,
  input  [38:0] csrio_memExceptionVAddr,
  input         csrio_externalInterrupt_mtip,
  input         csrio_externalInterrupt_msip,
  input         csrio_externalInterrupt_meip,
  input         csrio_externalInterrupt_seip,
  input         csrio_externalInterrupt_debug,
  output [3:0]  csrio_tlb_satp_mode,
  output [15:0] csrio_tlb_satp_asid,
  output [43:0] csrio_tlb_satp_ppn,
  output        csrio_tlb_satp_changed,
  output        csrio_tlb_priv_mxr,
  output        csrio_tlb_priv_sum,
  output [1:0]  csrio_tlb_priv_imode,
  output [1:0]  csrio_tlb_priv_dmode,
  output        csrio_customCtrl_l2_pf_store_only,
  output        csrio_customCtrl_icache_parity_enable,
  output [4:0]  csrio_customCtrl_lvpred_timeout,
  output        csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        csrio_customCtrl_bp_ctrl_btb_enable,
  output        csrio_customCtrl_bp_ctrl_tage_enable,
  output        csrio_customCtrl_bp_ctrl_sc_enable,
  output        csrio_customCtrl_bp_ctrl_ras_enable,
  output        csrio_customCtrl_ldld_vio_check_enable,
  output        csrio_customCtrl_cache_error_enable,
  output        csrio_customCtrl_uncache_write_outstanding_enable,
  output        csrio_customCtrl_fusion_enable,
  output        csrio_customCtrl_wfi_enable,
  output        csrio_customCtrl_svinval_enable,
  output        csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] csrio_customCtrl_distribute_csr_waddr,
  output [63:0] csrio_customCtrl_distribute_csr_wdata,
  output        csrio_customCtrl_singlestep,
  output        csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        csrio_customCtrl_trigger_enable_0,
  output        csrio_customCtrl_trigger_enable_1,
  output        csrio_customCtrl_trigger_enable_2,
  output        csrio_customCtrl_trigger_enable_3,
  output        csrio_customCtrl_trigger_enable_4,
  output        csrio_customCtrl_trigger_enable_5,
  output        csrio_customCtrl_trigger_enable_6,
  output        csrio_customCtrl_trigger_enable_7,
  output        csrio_customCtrl_trigger_enable_8,
  output        csrio_customCtrl_trigger_enable_9,
  input         csrio_distributedUpdate_0_wvalid,
  input  [11:0] csrio_distributedUpdate_0_waddr,
  input  [63:0] csrio_distributedUpdate_0_wdata,
  input         csrio_distributedUpdate_1_wvalid,
  input  [11:0] csrio_distributedUpdate_1_waddr,
  input  [63:0] csrio_distributedUpdate_1_wdata,
  output        fenceio_sfence_valid,
  output        fenceio_sfence_bits_rs1,
  output        fenceio_sfence_bits_rs2,
  output [38:0] fenceio_sfence_bits_addr,
  output [15:0] fenceio_sfence_bits_asid,
  output        fenceio_fencei,
  output        fenceio_sbuffer_flushSb,
  input         fenceio_sbuffer_sbIsEmpty
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  jmp_io_in_ready; // @[Exu.scala 129:21]
  wire  jmp_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] jmp_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] jmp_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire [38:0] jmp_io_in_bits_uop_cf_pc; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] jmp_io_in_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_cf_pred_taken; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_cf_ftqPtr_flag; // @[Exu.scala 129:21]
  wire [2:0] jmp_io_in_bits_uop_cf_ftqPtr_value; // @[Exu.scala 129:21]
  wire [2:0] jmp_io_in_bits_uop_cf_ftqOffset; // @[Exu.scala 129:21]
  wire [6:0] jmp_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] jmp_io_in_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] jmp_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] jmp_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  jmp_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] jmp_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  jmp_io_out_ready; // @[Exu.scala 129:21]
  wire  jmp_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] jmp_io_out_bits_data; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] jmp_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] jmp_io_out_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] jmp_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] jmp_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  jmp_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] jmp_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  jmp_redirectOutValid; // @[Exu.scala 129:21]
  wire  jmp_redirectOut_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] jmp_redirectOut_robIdx_value; // @[Exu.scala 129:21]
  wire  jmp_redirectOut_ftqIdx_flag; // @[Exu.scala 129:21]
  wire [2:0] jmp_redirectOut_ftqIdx_value; // @[Exu.scala 129:21]
  wire [2:0] jmp_redirectOut_ftqOffset; // @[Exu.scala 129:21]
  wire [38:0] jmp_redirectOut_cfiUpdate_target; // @[Exu.scala 129:21]
  wire  jmp_redirectOut_cfiUpdate_isMisPred; // @[Exu.scala 129:21]
  wire  csr_clock; // @[Exu.scala 129:21]
  wire  csr_reset; // @[Exu.scala 129:21]
  wire  csr_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] csr_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] csr_io_in_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire [6:0] csr_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] csr_io_in_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] csr_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] csr_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  csr_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] csr_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  csr_io_out_ready; // @[Exu.scala 129:21]
  wire  csr_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] csr_io_out_bits_data; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_exceptionVec_2; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_exceptionVec_3; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_exceptionVec_8; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_exceptionVec_9; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_exceptionVec_11; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] csr_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_ctrl_flushPipe; // @[Exu.scala 129:21]
  wire [19:0] csr_io_out_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] csr_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] csr_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  csr_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] csr_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  csr_io_redirectIn_valid; // @[Exu.scala 129:21]
  wire [7:0] csr_csrio_hartId; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_0_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_1_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_2_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_3_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_4_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_5_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_6_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsFrontend_7_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_0_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_1_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_2_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_3_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_4_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_5_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_6_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsCtrl_7_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_0_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_1_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_2_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_3_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_4_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_5_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_6_value; // @[Exu.scala 129:21]
  wire [5:0] csr_csrio_perf_perfEventsLsu_7_value; // @[Exu.scala 129:21]
  wire [2:0] csr_csrio_perf_retiredInstr; // @[Exu.scala 129:21]
  wire  csr_csrio_isPerfCnt; // @[Exu.scala 129:21]
  wire  csr_csrio_fpu_fflags_valid; // @[Exu.scala 129:21]
  wire [4:0] csr_csrio_fpu_fflags_bits; // @[Exu.scala 129:21]
  wire  csr_csrio_fpu_dirty_fs; // @[Exu.scala 129:21]
  wire [2:0] csr_csrio_fpu_frm; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_valid; // @[Exu.scala 129:21]
  wire [38:0] csr_csrio_exception_bits_uop_cf_pc; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_0; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_1; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_2; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_3; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_4; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_5; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_6; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_7; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_8; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_9; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_11; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_12; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_13; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_exceptionVec_15; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_uop_ctrl_singleStep; // @[Exu.scala 129:21]
  wire  csr_csrio_exception_bits_isInterrupt; // @[Exu.scala 129:21]
  wire  csr_csrio_isXRet; // @[Exu.scala 129:21]
  wire [38:0] csr_csrio_trapTarget; // @[Exu.scala 129:21]
  wire  csr_csrio_interrupt; // @[Exu.scala 129:21]
  wire  csr_csrio_wfi_event; // @[Exu.scala 129:21]
  wire [38:0] csr_csrio_memExceptionVAddr; // @[Exu.scala 129:21]
  wire  csr_csrio_externalInterrupt_mtip; // @[Exu.scala 129:21]
  wire  csr_csrio_externalInterrupt_msip; // @[Exu.scala 129:21]
  wire  csr_csrio_externalInterrupt_meip; // @[Exu.scala 129:21]
  wire  csr_csrio_externalInterrupt_seip; // @[Exu.scala 129:21]
  wire  csr_csrio_externalInterrupt_debug; // @[Exu.scala 129:21]
  wire [3:0] csr_csrio_tlb_satp_mode; // @[Exu.scala 129:21]
  wire [15:0] csr_csrio_tlb_satp_asid; // @[Exu.scala 129:21]
  wire [43:0] csr_csrio_tlb_satp_ppn; // @[Exu.scala 129:21]
  wire  csr_csrio_tlb_satp_changed; // @[Exu.scala 129:21]
  wire  csr_csrio_tlb_priv_mxr; // @[Exu.scala 129:21]
  wire  csr_csrio_tlb_priv_sum; // @[Exu.scala 129:21]
  wire [1:0] csr_csrio_tlb_priv_imode; // @[Exu.scala 129:21]
  wire [1:0] csr_csrio_tlb_priv_dmode; // @[Exu.scala 129:21]
  wire  csr_csrio_disableSfence; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_l2_pf_store_only; // @[Exu.scala 129:21]
  wire [4:0] csr_csrio_customCtrl_lvpred_timeout; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_bp_ctrl_btb_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_bp_ctrl_tage_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_bp_ctrl_sc_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_bp_ctrl_ras_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_ldld_vio_check_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_cache_error_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_uncache_write_outstanding_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_fusion_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_wfi_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_svinval_enable; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_distribute_csr_wvalid; // @[Exu.scala 129:21]
  wire [11:0] csr_csrio_customCtrl_distribute_csr_waddr; // @[Exu.scala 129:21]
  wire [63:0] csr_csrio_customCtrl_distribute_csr_wdata; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_singlestep; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_frontend_trigger_t_valid; // @[Exu.scala 129:21]
  wire [1:0] csr_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[Exu.scala 129:21]
  wire [1:0] csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[Exu.scala 129:21]
  wire [63:0] csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_mem_trigger_t_valid; // @[Exu.scala 129:21]
  wire [2:0] csr_csrio_customCtrl_mem_trigger_t_bits_addr; // @[Exu.scala 129:21]
  wire [1:0] csr_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[Exu.scala 129:21]
  wire [63:0] csr_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_0; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_1; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_2; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_3; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_4; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_5; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_6; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_7; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_8; // @[Exu.scala 129:21]
  wire  csr_csrio_customCtrl_trigger_enable_9; // @[Exu.scala 129:21]
  wire  csr_csrio_distributedUpdate_0_wvalid; // @[Exu.scala 129:21]
  wire [11:0] csr_csrio_distributedUpdate_0_waddr; // @[Exu.scala 129:21]
  wire [63:0] csr_csrio_distributedUpdate_0_wdata; // @[Exu.scala 129:21]
  wire  csr_csrio_distributedUpdate_1_wvalid; // @[Exu.scala 129:21]
  wire [11:0] csr_csrio_distributedUpdate_1_waddr; // @[Exu.scala 129:21]
  wire [63:0] csr_csrio_distributedUpdate_1_wdata; // @[Exu.scala 129:21]
  wire  fence_clock; // @[Exu.scala 129:21]
  wire  fence_reset; // @[Exu.scala 129:21]
  wire  fence_io_in_ready; // @[Exu.scala 129:21]
  wire  fence_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] fence_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] fence_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] fence_io_in_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire [6:0] fence_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] fence_io_in_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] fence_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fence_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  fence_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] fence_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  fence_io_out_valid; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_cf_exceptionVec_2; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] fence_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] fence_io_out_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] fence_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fence_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  fence_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] fence_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  fence_sfence_valid; // @[Exu.scala 129:21]
  wire  fence_sfence_bits_rs1; // @[Exu.scala 129:21]
  wire  fence_sfence_bits_rs2; // @[Exu.scala 129:21]
  wire [38:0] fence_sfence_bits_addr; // @[Exu.scala 129:21]
  wire [15:0] fence_sfence_bits_asid; // @[Exu.scala 129:21]
  wire  fence_fencei; // @[Exu.scala 129:21]
  wire  fence_toSbuffer_flushSb; // @[Exu.scala 129:21]
  wire  fence_toSbuffer_sbIsEmpty; // @[Exu.scala 129:21]
  wire  fence_disableSfence; // @[Exu.scala 129:21]
  wire  i2f_clock; // @[Exu.scala 129:21]
  wire  i2f_reset; // @[Exu.scala 129:21]
  wire  i2f_io_in_ready; // @[Exu.scala 129:21]
  wire  i2f_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] i2f_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] i2f_io_in_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] i2f_io_in_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_ctrl_fpu_typeTagOut; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_ctrl_fpu_wflags; // @[Exu.scala 129:21]
  wire [1:0] i2f_io_in_bits_uop_ctrl_fpu_typ; // @[Exu.scala 129:21]
  wire [2:0] i2f_io_in_bits_uop_ctrl_fpu_rm; // @[Exu.scala 129:21]
  wire [5:0] i2f_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] i2f_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  i2f_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] i2f_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  i2f_io_out_ready; // @[Exu.scala 129:21]
  wire  i2f_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] i2f_io_out_bits_data; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] i2f_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [19:0] i2f_io_out_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire [5:0] i2f_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] i2f_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  i2f_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] i2f_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  i2f_io_redirectIn_valid; // @[Exu.scala 129:21]
  wire  i2f_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] i2f_io_redirectIn_bits_robIdx_value; // @[Exu.scala 129:21]
  wire  i2f_io_redirectIn_bits_level; // @[Exu.scala 129:21]
  wire [2:0] i2f_rm; // @[Exu.scala 129:21]
  wire [4:0] i2f_fflags; // @[Exu.scala 129:21]
  wire  arbSel_arb_io_in_0_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_pd_isRVC; // @[Exu.scala 174:25]
  wire [1:0] arbSel_arb_io_in_0_bits_uop_cf_pd_brType; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_pd_isCall; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_pd_isRet; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [19:0] arbSel_arb_io_in_0_bits_uop_ctrl_imm; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_0_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_0_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_0_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_2; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_3; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_8; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_9; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_11; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_pd_isRVC; // @[Exu.scala 174:25]
  wire [1:0] arbSel_arb_io_in_1_bits_uop_cf_pd_brType; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_pd_isCall; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_pd_isRet; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_flushPipe; // @[Exu.scala 174:25]
  wire [19:0] arbSel_arb_io_in_1_bits_uop_ctrl_imm; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_1_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_1_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_1_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_exceptionVec_2; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_pd_isRVC; // @[Exu.scala 174:25]
  wire [1:0] arbSel_arb_io_in_2_bits_uop_cf_pd_brType; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_pd_isCall; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_pd_isRet; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [19:0] arbSel_arb_io_in_2_bits_uop_ctrl_imm; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_2_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_2_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_2_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_cf_pd_isRVC; // @[Exu.scala 174:25]
  wire [1:0] arbSel_arb_io_in_3_bits_uop_cf_pd_brType; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_cf_pd_isCall; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_cf_pd_isRet; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [19:0] arbSel_arb_io_in_3_bits_uop_ctrl_imm; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_3_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_3_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_3_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_3_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_exceptionVec_2; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_exceptionVec_3; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_exceptionVec_8; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_exceptionVec_9; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_exceptionVec_11; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 174:25]
  wire [1:0] arbSel_arb_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_flushPipe; // @[Exu.scala 174:25]
  wire [19:0] arbSel_arb_io_out_bits_uop_ctrl_imm; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_out_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_out_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  csrio_tlb_delay_clock; // @[Hold.scala 97:23]
  wire [3:0] csrio_tlb_delay_io_in_satp_mode; // @[Hold.scala 97:23]
  wire [15:0] csrio_tlb_delay_io_in_satp_asid; // @[Hold.scala 97:23]
  wire [43:0] csrio_tlb_delay_io_in_satp_ppn; // @[Hold.scala 97:23]
  wire  csrio_tlb_delay_io_in_satp_changed; // @[Hold.scala 97:23]
  wire  csrio_tlb_delay_io_in_priv_mxr; // @[Hold.scala 97:23]
  wire  csrio_tlb_delay_io_in_priv_sum; // @[Hold.scala 97:23]
  wire [1:0] csrio_tlb_delay_io_in_priv_imode; // @[Hold.scala 97:23]
  wire [1:0] csrio_tlb_delay_io_in_priv_dmode; // @[Hold.scala 97:23]
  wire [3:0] csrio_tlb_delay_io_out_satp_mode; // @[Hold.scala 97:23]
  wire [15:0] csrio_tlb_delay_io_out_satp_asid; // @[Hold.scala 97:23]
  wire [43:0] csrio_tlb_delay_io_out_satp_ppn; // @[Hold.scala 97:23]
  wire  csrio_tlb_delay_io_out_satp_changed; // @[Hold.scala 97:23]
  wire  csrio_tlb_delay_io_out_priv_mxr; // @[Hold.scala 97:23]
  wire  csrio_tlb_delay_io_out_priv_sum; // @[Hold.scala 97:23]
  wire [1:0] csrio_tlb_delay_io_out_priv_imode; // @[Hold.scala 97:23]
  wire [1:0] csrio_tlb_delay_io_out_priv_dmode; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_clock; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_l2_pf_store_only; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_icache_parity_enable; // @[Hold.scala 97:23]
  wire [4:0] csrio_customCtrl_delay_io_in_lvpred_timeout; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_bp_ctrl_ubtb_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_bp_ctrl_btb_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_bp_ctrl_tage_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_bp_ctrl_sc_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_bp_ctrl_ras_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_ldld_vio_check_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_cache_error_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_uncache_write_outstanding_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_fusion_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_wfi_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_svinval_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_distribute_csr_wvalid; // @[Hold.scala 97:23]
  wire [11:0] csrio_customCtrl_delay_io_in_distribute_csr_waddr; // @[Hold.scala 97:23]
  wire [63:0] csrio_customCtrl_delay_io_in_distribute_csr_wdata; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_singlestep; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_frontend_trigger_t_valid; // @[Hold.scala 97:23]
  wire [1:0] csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_addr; // @[Hold.scala 97:23]
  wire [1:0] csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 97:23]
  wire [63:0] csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_mem_trigger_t_valid; // @[Hold.scala 97:23]
  wire [2:0] csrio_customCtrl_delay_io_in_mem_trigger_t_bits_addr; // @[Hold.scala 97:23]
  wire [1:0] csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_select; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 97:23]
  wire [63:0] csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_0; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_1; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_2; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_3; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_4; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_5; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_6; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_7; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_8; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_in_trigger_enable_9; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_l2_pf_store_only; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_icache_parity_enable; // @[Hold.scala 97:23]
  wire [4:0] csrio_customCtrl_delay_io_out_lvpred_timeout; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_bp_ctrl_ubtb_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_bp_ctrl_btb_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_bp_ctrl_tage_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_bp_ctrl_sc_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_bp_ctrl_ras_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_ldld_vio_check_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_cache_error_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_uncache_write_outstanding_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_fusion_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_wfi_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_svinval_enable; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_distribute_csr_wvalid; // @[Hold.scala 97:23]
  wire [11:0] csrio_customCtrl_delay_io_out_distribute_csr_waddr; // @[Hold.scala 97:23]
  wire [63:0] csrio_customCtrl_delay_io_out_distribute_csr_wdata; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_singlestep; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_frontend_trigger_t_valid; // @[Hold.scala 97:23]
  wire [1:0] csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_addr; // @[Hold.scala 97:23]
  wire [1:0] csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 97:23]
  wire [63:0] csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_mem_trigger_t_valid; // @[Hold.scala 97:23]
  wire [2:0] csrio_customCtrl_delay_io_out_mem_trigger_t_bits_addr; // @[Hold.scala 97:23]
  wire [1:0] csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_select; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 97:23]
  wire [63:0] csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_0; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_1; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_2; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_3; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_4; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_5; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_6; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_7; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_8; // @[Hold.scala 97:23]
  wire  csrio_customCtrl_delay_io_out_trigger_enable_9; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_clock; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_valid; // @[Hold.scala 97:23]
  wire [38:0] csr_csrio_exception_delay_io_in_bits_uop_cf_pc; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_0; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_1; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_2; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_3; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_4; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_5; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_6; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_7; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_8; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_9; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_11; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_12; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_13; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_15; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_uop_ctrl_singleStep; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_in_bits_isInterrupt; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_valid; // @[Hold.scala 97:23]
  wire [38:0] csr_csrio_exception_delay_io_out_bits_uop_cf_pc; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_0; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_1; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_2; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_3; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_4; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_5; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_6; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_7; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_8; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_9; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_11; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_12; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_13; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_15; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_uop_ctrl_singleStep; // @[Hold.scala 97:23]
  wire  csr_csrio_exception_delay_io_out_bits_isInterrupt; // @[Hold.scala 97:23]
  wire  fuSel_0 = io_fromInt_bits_uop_ctrl_fuType == 4'h0; // @[package.scala 614:47]
  wire  fuSel_1 = io_fromInt_bits_uop_ctrl_fuType == 4'h2; // @[package.scala 635:47]
  wire  fuSel_2 = io_fromInt_bits_uop_ctrl_fuType == 4'h3; // @[package.scala 626:47]
  reg  arbSelReg_0; // @[Exu.scala 196:37]
  reg  arbSelReg_1; // @[Exu.scala 196:37]
  reg  arbSelReg_3; // @[Exu.scala 196:37]
  reg [63:0] dataRegVec_0; // @[Exu.scala 201:63]
  reg [63:0] dataRegVec_1; // @[Exu.scala 201:63]
  wire [63:0] _dataReg_T = arbSelReg_0 ? dataRegVec_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_1 = arbSelReg_1 ? dataRegVec_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_3 = arbSelReg_3 ? i2f_io_out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_4 = _dataReg_T | _dataReg_T_1; // @[Mux.scala 27:73]
  wire  _io_fromInt_ready_T_1 = jmp_io_in_ready & fuSel_0; // @[Exu.scala 224:29]
  wire  _io_fromInt_ready_T_3 = fence_io_in_ready & fuSel_2; // @[Exu.scala 224:29]
  wire  _io_fromInt_ready_T_4 = i2f_io_in_ready & io_fromInt_bits_uop_ctrl_fpu_fromInt; // @[Exu.scala 224:29]
  wire [3:0] _io_fromInt_ready_T_5 = {_io_fromInt_ready_T_1,fuSel_1,_io_fromInt_ready_T_3,_io_fromInt_ready_T_4}; // @[Cat.scala 31:58]
  wire  _io_fromInt_ready_T_6 = |_io_fromInt_ready_T_5; // @[Exu.scala 224:42]
  reg [38:0] csrio_trapTarget_REG; // @[ExeUnit.scala 57:36]
  reg  io_out_bits_debug_isPerfCnt_REG; // @[ExeUnit.scala 62:43]
  wire [2:0] csr_frm = csr_csrio_fpu_frm;
  Jump jmp ( // @[Exu.scala 129:21]
    .io_in_ready(jmp_io_in_ready),
    .io_in_valid(jmp_io_in_valid),
    .io_in_bits_src_0(jmp_io_in_bits_src_0),
    .io_in_bits_src_1(jmp_io_in_bits_src_1),
    .io_in_bits_uop_cf_pc(jmp_io_in_bits_uop_cf_pc),
    .io_in_bits_uop_cf_pd_isRVC(jmp_io_in_bits_uop_cf_pd_isRVC),
    .io_in_bits_uop_cf_pd_brType(jmp_io_in_bits_uop_cf_pd_brType),
    .io_in_bits_uop_cf_pd_isCall(jmp_io_in_bits_uop_cf_pd_isCall),
    .io_in_bits_uop_cf_pd_isRet(jmp_io_in_bits_uop_cf_pd_isRet),
    .io_in_bits_uop_cf_pred_taken(jmp_io_in_bits_uop_cf_pred_taken),
    .io_in_bits_uop_cf_ftqPtr_flag(jmp_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(jmp_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(jmp_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(jmp_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(jmp_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(jmp_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_imm(jmp_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_pdest(jmp_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(jmp_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(jmp_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(jmp_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(jmp_io_in_bits_uop_lqIdx_value),
    .io_out_ready(jmp_io_out_ready),
    .io_out_valid(jmp_io_out_valid),
    .io_out_bits_data(jmp_io_out_bits_data),
    .io_out_bits_uop_cf_pd_isRVC(jmp_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(jmp_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(jmp_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(jmp_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(jmp_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(jmp_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_imm(jmp_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(jmp_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(jmp_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(jmp_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(jmp_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(jmp_io_out_bits_uop_lqIdx_value),
    .redirectOutValid(jmp_redirectOutValid),
    .redirectOut_robIdx_flag(jmp_redirectOut_robIdx_flag),
    .redirectOut_robIdx_value(jmp_redirectOut_robIdx_value),
    .redirectOut_ftqIdx_flag(jmp_redirectOut_ftqIdx_flag),
    .redirectOut_ftqIdx_value(jmp_redirectOut_ftqIdx_value),
    .redirectOut_ftqOffset(jmp_redirectOut_ftqOffset),
    .redirectOut_cfiUpdate_target(jmp_redirectOut_cfiUpdate_target),
    .redirectOut_cfiUpdate_isMisPred(jmp_redirectOut_cfiUpdate_isMisPred)
  );
  CSR csr ( // @[Exu.scala 129:21]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_in_valid(csr_io_in_valid),
    .io_in_bits_src_0(csr_io_in_bits_src_0),
    .io_in_bits_uop_cf_pd_isRVC(csr_io_in_bits_uop_cf_pd_isRVC),
    .io_in_bits_uop_cf_pd_brType(csr_io_in_bits_uop_cf_pd_brType),
    .io_in_bits_uop_cf_pd_isCall(csr_io_in_bits_uop_cf_pd_isCall),
    .io_in_bits_uop_cf_pd_isRet(csr_io_in_bits_uop_cf_pd_isRet),
    .io_in_bits_uop_ctrl_fuOpType(csr_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(csr_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(csr_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_imm(csr_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_pdest(csr_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(csr_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(csr_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(csr_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(csr_io_in_bits_uop_lqIdx_value),
    .io_out_ready(csr_io_out_ready),
    .io_out_valid(csr_io_out_valid),
    .io_out_bits_data(csr_io_out_bits_data),
    .io_out_bits_uop_cf_exceptionVec_2(csr_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(csr_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(csr_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(csr_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(csr_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_pd_isRVC(csr_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(csr_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(csr_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(csr_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(csr_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(csr_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(csr_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_ctrl_imm(csr_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(csr_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(csr_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(csr_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(csr_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(csr_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(csr_io_redirectIn_valid),
    .csrio_hartId(csr_csrio_hartId),
    .csrio_perf_perfEventsFrontend_0_value(csr_csrio_perf_perfEventsFrontend_0_value),
    .csrio_perf_perfEventsFrontend_1_value(csr_csrio_perf_perfEventsFrontend_1_value),
    .csrio_perf_perfEventsFrontend_2_value(csr_csrio_perf_perfEventsFrontend_2_value),
    .csrio_perf_perfEventsFrontend_3_value(csr_csrio_perf_perfEventsFrontend_3_value),
    .csrio_perf_perfEventsFrontend_4_value(csr_csrio_perf_perfEventsFrontend_4_value),
    .csrio_perf_perfEventsFrontend_5_value(csr_csrio_perf_perfEventsFrontend_5_value),
    .csrio_perf_perfEventsFrontend_6_value(csr_csrio_perf_perfEventsFrontend_6_value),
    .csrio_perf_perfEventsFrontend_7_value(csr_csrio_perf_perfEventsFrontend_7_value),
    .csrio_perf_perfEventsCtrl_0_value(csr_csrio_perf_perfEventsCtrl_0_value),
    .csrio_perf_perfEventsCtrl_1_value(csr_csrio_perf_perfEventsCtrl_1_value),
    .csrio_perf_perfEventsCtrl_2_value(csr_csrio_perf_perfEventsCtrl_2_value),
    .csrio_perf_perfEventsCtrl_3_value(csr_csrio_perf_perfEventsCtrl_3_value),
    .csrio_perf_perfEventsCtrl_4_value(csr_csrio_perf_perfEventsCtrl_4_value),
    .csrio_perf_perfEventsCtrl_5_value(csr_csrio_perf_perfEventsCtrl_5_value),
    .csrio_perf_perfEventsCtrl_6_value(csr_csrio_perf_perfEventsCtrl_6_value),
    .csrio_perf_perfEventsCtrl_7_value(csr_csrio_perf_perfEventsCtrl_7_value),
    .csrio_perf_perfEventsLsu_0_value(csr_csrio_perf_perfEventsLsu_0_value),
    .csrio_perf_perfEventsLsu_1_value(csr_csrio_perf_perfEventsLsu_1_value),
    .csrio_perf_perfEventsLsu_2_value(csr_csrio_perf_perfEventsLsu_2_value),
    .csrio_perf_perfEventsLsu_3_value(csr_csrio_perf_perfEventsLsu_3_value),
    .csrio_perf_perfEventsLsu_4_value(csr_csrio_perf_perfEventsLsu_4_value),
    .csrio_perf_perfEventsLsu_5_value(csr_csrio_perf_perfEventsLsu_5_value),
    .csrio_perf_perfEventsLsu_6_value(csr_csrio_perf_perfEventsLsu_6_value),
    .csrio_perf_perfEventsLsu_7_value(csr_csrio_perf_perfEventsLsu_7_value),
    .csrio_perf_retiredInstr(csr_csrio_perf_retiredInstr),
    .csrio_isPerfCnt(csr_csrio_isPerfCnt),
    .csrio_fpu_fflags_valid(csr_csrio_fpu_fflags_valid),
    .csrio_fpu_fflags_bits(csr_csrio_fpu_fflags_bits),
    .csrio_fpu_dirty_fs(csr_csrio_fpu_dirty_fs),
    .csrio_fpu_frm(csr_csrio_fpu_frm),
    .csrio_exception_valid(csr_csrio_exception_valid),
    .csrio_exception_bits_uop_cf_pc(csr_csrio_exception_bits_uop_cf_pc),
    .csrio_exception_bits_uop_cf_exceptionVec_0(csr_csrio_exception_bits_uop_cf_exceptionVec_0),
    .csrio_exception_bits_uop_cf_exceptionVec_1(csr_csrio_exception_bits_uop_cf_exceptionVec_1),
    .csrio_exception_bits_uop_cf_exceptionVec_2(csr_csrio_exception_bits_uop_cf_exceptionVec_2),
    .csrio_exception_bits_uop_cf_exceptionVec_3(csr_csrio_exception_bits_uop_cf_exceptionVec_3),
    .csrio_exception_bits_uop_cf_exceptionVec_4(csr_csrio_exception_bits_uop_cf_exceptionVec_4),
    .csrio_exception_bits_uop_cf_exceptionVec_5(csr_csrio_exception_bits_uop_cf_exceptionVec_5),
    .csrio_exception_bits_uop_cf_exceptionVec_6(csr_csrio_exception_bits_uop_cf_exceptionVec_6),
    .csrio_exception_bits_uop_cf_exceptionVec_7(csr_csrio_exception_bits_uop_cf_exceptionVec_7),
    .csrio_exception_bits_uop_cf_exceptionVec_8(csr_csrio_exception_bits_uop_cf_exceptionVec_8),
    .csrio_exception_bits_uop_cf_exceptionVec_9(csr_csrio_exception_bits_uop_cf_exceptionVec_9),
    .csrio_exception_bits_uop_cf_exceptionVec_11(csr_csrio_exception_bits_uop_cf_exceptionVec_11),
    .csrio_exception_bits_uop_cf_exceptionVec_12(csr_csrio_exception_bits_uop_cf_exceptionVec_12),
    .csrio_exception_bits_uop_cf_exceptionVec_13(csr_csrio_exception_bits_uop_cf_exceptionVec_13),
    .csrio_exception_bits_uop_cf_exceptionVec_15(csr_csrio_exception_bits_uop_cf_exceptionVec_15),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_0(csr_csrio_exception_bits_uop_cf_trigger_frontendHit_0),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_1(csr_csrio_exception_bits_uop_cf_trigger_frontendHit_1),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_2(csr_csrio_exception_bits_uop_cf_trigger_frontendHit_2),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_3(csr_csrio_exception_bits_uop_cf_trigger_frontendHit_3),
    .csrio_exception_bits_uop_cf_trigger_backendHit_0(csr_csrio_exception_bits_uop_cf_trigger_backendHit_0),
    .csrio_exception_bits_uop_cf_trigger_backendHit_1(csr_csrio_exception_bits_uop_cf_trigger_backendHit_1),
    .csrio_exception_bits_uop_cf_trigger_backendHit_2(csr_csrio_exception_bits_uop_cf_trigger_backendHit_2),
    .csrio_exception_bits_uop_cf_trigger_backendHit_3(csr_csrio_exception_bits_uop_cf_trigger_backendHit_3),
    .csrio_exception_bits_uop_cf_trigger_backendHit_4(csr_csrio_exception_bits_uop_cf_trigger_backendHit_4),
    .csrio_exception_bits_uop_cf_trigger_backendHit_5(csr_csrio_exception_bits_uop_cf_trigger_backendHit_5),
    .csrio_exception_bits_uop_cf_crossPageIPFFix(csr_csrio_exception_bits_uop_cf_crossPageIPFFix),
    .csrio_exception_bits_uop_ctrl_singleStep(csr_csrio_exception_bits_uop_ctrl_singleStep),
    .csrio_exception_bits_isInterrupt(csr_csrio_exception_bits_isInterrupt),
    .csrio_isXRet(csr_csrio_isXRet),
    .csrio_trapTarget(csr_csrio_trapTarget),
    .csrio_interrupt(csr_csrio_interrupt),
    .csrio_wfi_event(csr_csrio_wfi_event),
    .csrio_memExceptionVAddr(csr_csrio_memExceptionVAddr),
    .csrio_externalInterrupt_mtip(csr_csrio_externalInterrupt_mtip),
    .csrio_externalInterrupt_msip(csr_csrio_externalInterrupt_msip),
    .csrio_externalInterrupt_meip(csr_csrio_externalInterrupt_meip),
    .csrio_externalInterrupt_seip(csr_csrio_externalInterrupt_seip),
    .csrio_externalInterrupt_debug(csr_csrio_externalInterrupt_debug),
    .csrio_tlb_satp_mode(csr_csrio_tlb_satp_mode),
    .csrio_tlb_satp_asid(csr_csrio_tlb_satp_asid),
    .csrio_tlb_satp_ppn(csr_csrio_tlb_satp_ppn),
    .csrio_tlb_satp_changed(csr_csrio_tlb_satp_changed),
    .csrio_tlb_priv_mxr(csr_csrio_tlb_priv_mxr),
    .csrio_tlb_priv_sum(csr_csrio_tlb_priv_sum),
    .csrio_tlb_priv_imode(csr_csrio_tlb_priv_imode),
    .csrio_tlb_priv_dmode(csr_csrio_tlb_priv_dmode),
    .csrio_disableSfence(csr_csrio_disableSfence),
    .csrio_customCtrl_l2_pf_store_only(csr_csrio_customCtrl_l2_pf_store_only),
    .csrio_customCtrl_lvpred_timeout(csr_csrio_customCtrl_lvpred_timeout),
    .csrio_customCtrl_bp_ctrl_ubtb_enable(csr_csrio_customCtrl_bp_ctrl_ubtb_enable),
    .csrio_customCtrl_bp_ctrl_btb_enable(csr_csrio_customCtrl_bp_ctrl_btb_enable),
    .csrio_customCtrl_bp_ctrl_tage_enable(csr_csrio_customCtrl_bp_ctrl_tage_enable),
    .csrio_customCtrl_bp_ctrl_sc_enable(csr_csrio_customCtrl_bp_ctrl_sc_enable),
    .csrio_customCtrl_bp_ctrl_ras_enable(csr_csrio_customCtrl_bp_ctrl_ras_enable),
    .csrio_customCtrl_ldld_vio_check_enable(csr_csrio_customCtrl_ldld_vio_check_enable),
    .csrio_customCtrl_cache_error_enable(csr_csrio_customCtrl_cache_error_enable),
    .csrio_customCtrl_uncache_write_outstanding_enable(csr_csrio_customCtrl_uncache_write_outstanding_enable),
    .csrio_customCtrl_fusion_enable(csr_csrio_customCtrl_fusion_enable),
    .csrio_customCtrl_wfi_enable(csr_csrio_customCtrl_wfi_enable),
    .csrio_customCtrl_svinval_enable(csr_csrio_customCtrl_svinval_enable),
    .csrio_customCtrl_distribute_csr_wvalid(csr_csrio_customCtrl_distribute_csr_wvalid),
    .csrio_customCtrl_distribute_csr_waddr(csr_csrio_customCtrl_distribute_csr_waddr),
    .csrio_customCtrl_distribute_csr_wdata(csr_csrio_customCtrl_distribute_csr_wdata),
    .csrio_customCtrl_singlestep(csr_csrio_customCtrl_singlestep),
    .csrio_customCtrl_frontend_trigger_t_valid(csr_csrio_customCtrl_frontend_trigger_t_valid),
    .csrio_customCtrl_frontend_trigger_t_bits_addr(csr_csrio_customCtrl_frontend_trigger_t_bits_addr),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType(
      csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_select(csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_select),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_timing(csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_chain(csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2(csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .csrio_customCtrl_mem_trigger_t_valid(csr_csrio_customCtrl_mem_trigger_t_valid),
    .csrio_customCtrl_mem_trigger_t_bits_addr(csr_csrio_customCtrl_mem_trigger_t_bits_addr),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_matchType(csr_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_select(csr_csrio_customCtrl_mem_trigger_t_bits_tdata_select),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_chain(csr_csrio_customCtrl_mem_trigger_t_bits_tdata_chain),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2(csr_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2),
    .csrio_customCtrl_trigger_enable_0(csr_csrio_customCtrl_trigger_enable_0),
    .csrio_customCtrl_trigger_enable_1(csr_csrio_customCtrl_trigger_enable_1),
    .csrio_customCtrl_trigger_enable_2(csr_csrio_customCtrl_trigger_enable_2),
    .csrio_customCtrl_trigger_enable_3(csr_csrio_customCtrl_trigger_enable_3),
    .csrio_customCtrl_trigger_enable_4(csr_csrio_customCtrl_trigger_enable_4),
    .csrio_customCtrl_trigger_enable_5(csr_csrio_customCtrl_trigger_enable_5),
    .csrio_customCtrl_trigger_enable_6(csr_csrio_customCtrl_trigger_enable_6),
    .csrio_customCtrl_trigger_enable_7(csr_csrio_customCtrl_trigger_enable_7),
    .csrio_customCtrl_trigger_enable_8(csr_csrio_customCtrl_trigger_enable_8),
    .csrio_customCtrl_trigger_enable_9(csr_csrio_customCtrl_trigger_enable_9),
    .csrio_distributedUpdate_0_wvalid(csr_csrio_distributedUpdate_0_wvalid),
    .csrio_distributedUpdate_0_waddr(csr_csrio_distributedUpdate_0_waddr),
    .csrio_distributedUpdate_0_wdata(csr_csrio_distributedUpdate_0_wdata),
    .csrio_distributedUpdate_1_wvalid(csr_csrio_distributedUpdate_1_wvalid),
    .csrio_distributedUpdate_1_waddr(csr_csrio_distributedUpdate_1_waddr),
    .csrio_distributedUpdate_1_wdata(csr_csrio_distributedUpdate_1_wdata)
  );
  Fence fence ( // @[Exu.scala 129:21]
    .clock(fence_clock),
    .reset(fence_reset),
    .io_in_ready(fence_io_in_ready),
    .io_in_valid(fence_io_in_valid),
    .io_in_bits_src_0(fence_io_in_bits_src_0),
    .io_in_bits_src_1(fence_io_in_bits_src_1),
    .io_in_bits_uop_cf_pd_isRVC(fence_io_in_bits_uop_cf_pd_isRVC),
    .io_in_bits_uop_cf_pd_brType(fence_io_in_bits_uop_cf_pd_brType),
    .io_in_bits_uop_cf_pd_isCall(fence_io_in_bits_uop_cf_pd_isCall),
    .io_in_bits_uop_cf_pd_isRet(fence_io_in_bits_uop_cf_pd_isRet),
    .io_in_bits_uop_ctrl_fuOpType(fence_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(fence_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(fence_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_imm(fence_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_pdest(fence_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(fence_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(fence_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(fence_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(fence_io_in_bits_uop_lqIdx_value),
    .io_out_valid(fence_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(fence_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_pd_isRVC(fence_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(fence_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(fence_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(fence_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(fence_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(fence_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_imm(fence_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(fence_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(fence_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(fence_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(fence_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(fence_io_out_bits_uop_lqIdx_value),
    .sfence_valid(fence_sfence_valid),
    .sfence_bits_rs1(fence_sfence_bits_rs1),
    .sfence_bits_rs2(fence_sfence_bits_rs2),
    .sfence_bits_addr(fence_sfence_bits_addr),
    .sfence_bits_asid(fence_sfence_bits_asid),
    .fencei(fence_fencei),
    .toSbuffer_flushSb(fence_toSbuffer_flushSb),
    .toSbuffer_sbIsEmpty(fence_toSbuffer_sbIsEmpty),
    .disableSfence(fence_disableSfence)
  );
  IntToFP_2 i2f ( // @[Exu.scala 129:21]
    .clock(i2f_clock),
    .reset(i2f_reset),
    .io_in_ready(i2f_io_in_ready),
    .io_in_valid(i2f_io_in_valid),
    .io_in_bits_src_0(i2f_io_in_bits_src_0),
    .io_in_bits_uop_cf_pd_isRVC(i2f_io_in_bits_uop_cf_pd_isRVC),
    .io_in_bits_uop_cf_pd_brType(i2f_io_in_bits_uop_cf_pd_brType),
    .io_in_bits_uop_cf_pd_isCall(i2f_io_in_bits_uop_cf_pd_isCall),
    .io_in_bits_uop_cf_pd_isRet(i2f_io_in_bits_uop_cf_pd_isRet),
    .io_in_bits_uop_ctrl_rfWen(i2f_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(i2f_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_imm(i2f_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_ctrl_fpu_typeTagOut(i2f_io_in_bits_uop_ctrl_fpu_typeTagOut),
    .io_in_bits_uop_ctrl_fpu_wflags(i2f_io_in_bits_uop_ctrl_fpu_wflags),
    .io_in_bits_uop_ctrl_fpu_typ(i2f_io_in_bits_uop_ctrl_fpu_typ),
    .io_in_bits_uop_ctrl_fpu_rm(i2f_io_in_bits_uop_ctrl_fpu_rm),
    .io_in_bits_uop_pdest(i2f_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(i2f_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(i2f_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(i2f_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(i2f_io_in_bits_uop_lqIdx_value),
    .io_out_ready(i2f_io_out_ready),
    .io_out_valid(i2f_io_out_valid),
    .io_out_bits_data(i2f_io_out_bits_data),
    .io_out_bits_uop_cf_pd_isRVC(i2f_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(i2f_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(i2f_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(i2f_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(i2f_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(i2f_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_imm(i2f_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(i2f_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(i2f_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(i2f_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(i2f_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(i2f_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(i2f_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(i2f_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(i2f_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(i2f_io_redirectIn_bits_level),
    .rm(i2f_rm),
    .fflags(i2f_fflags)
  );
  Arbiter_10 arbSel_arb ( // @[Exu.scala 174:25]
    .io_in_0_ready(arbSel_arb_io_in_0_ready),
    .io_in_0_valid(arbSel_arb_io_in_0_valid),
    .io_in_0_bits_uop_cf_pd_isRVC(arbSel_arb_io_in_0_bits_uop_cf_pd_isRVC),
    .io_in_0_bits_uop_cf_pd_brType(arbSel_arb_io_in_0_bits_uop_cf_pd_brType),
    .io_in_0_bits_uop_cf_pd_isCall(arbSel_arb_io_in_0_bits_uop_cf_pd_isCall),
    .io_in_0_bits_uop_cf_pd_isRet(arbSel_arb_io_in_0_bits_uop_cf_pd_isRet),
    .io_in_0_bits_uop_ctrl_rfWen(arbSel_arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(arbSel_arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_ctrl_imm(arbSel_arb_io_in_0_bits_uop_ctrl_imm),
    .io_in_0_bits_uop_pdest(arbSel_arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(arbSel_arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(arbSel_arb_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(arbSel_arb_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(arbSel_arb_io_in_0_bits_uop_lqIdx_value),
    .io_in_1_ready(arbSel_arb_io_in_1_ready),
    .io_in_1_valid(arbSel_arb_io_in_1_valid),
    .io_in_1_bits_uop_cf_exceptionVec_2(arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_2),
    .io_in_1_bits_uop_cf_exceptionVec_3(arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_3),
    .io_in_1_bits_uop_cf_exceptionVec_8(arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_8),
    .io_in_1_bits_uop_cf_exceptionVec_9(arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_9),
    .io_in_1_bits_uop_cf_exceptionVec_11(arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_11),
    .io_in_1_bits_uop_cf_pd_isRVC(arbSel_arb_io_in_1_bits_uop_cf_pd_isRVC),
    .io_in_1_bits_uop_cf_pd_brType(arbSel_arb_io_in_1_bits_uop_cf_pd_brType),
    .io_in_1_bits_uop_cf_pd_isCall(arbSel_arb_io_in_1_bits_uop_cf_pd_isCall),
    .io_in_1_bits_uop_cf_pd_isRet(arbSel_arb_io_in_1_bits_uop_cf_pd_isRet),
    .io_in_1_bits_uop_ctrl_rfWen(arbSel_arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(arbSel_arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_ctrl_flushPipe(arbSel_arb_io_in_1_bits_uop_ctrl_flushPipe),
    .io_in_1_bits_uop_ctrl_imm(arbSel_arb_io_in_1_bits_uop_ctrl_imm),
    .io_in_1_bits_uop_pdest(arbSel_arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(arbSel_arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(arbSel_arb_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(arbSel_arb_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(arbSel_arb_io_in_1_bits_uop_lqIdx_value),
    .io_in_2_valid(arbSel_arb_io_in_2_valid),
    .io_in_2_bits_uop_cf_exceptionVec_2(arbSel_arb_io_in_2_bits_uop_cf_exceptionVec_2),
    .io_in_2_bits_uop_cf_pd_isRVC(arbSel_arb_io_in_2_bits_uop_cf_pd_isRVC),
    .io_in_2_bits_uop_cf_pd_brType(arbSel_arb_io_in_2_bits_uop_cf_pd_brType),
    .io_in_2_bits_uop_cf_pd_isCall(arbSel_arb_io_in_2_bits_uop_cf_pd_isCall),
    .io_in_2_bits_uop_cf_pd_isRet(arbSel_arb_io_in_2_bits_uop_cf_pd_isRet),
    .io_in_2_bits_uop_ctrl_rfWen(arbSel_arb_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(arbSel_arb_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_ctrl_imm(arbSel_arb_io_in_2_bits_uop_ctrl_imm),
    .io_in_2_bits_uop_pdest(arbSel_arb_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(arbSel_arb_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(arbSel_arb_io_in_2_bits_uop_robIdx_value),
    .io_in_2_bits_uop_lqIdx_flag(arbSel_arb_io_in_2_bits_uop_lqIdx_flag),
    .io_in_2_bits_uop_lqIdx_value(arbSel_arb_io_in_2_bits_uop_lqIdx_value),
    .io_in_3_ready(arbSel_arb_io_in_3_ready),
    .io_in_3_valid(arbSel_arb_io_in_3_valid),
    .io_in_3_bits_uop_cf_pd_isRVC(arbSel_arb_io_in_3_bits_uop_cf_pd_isRVC),
    .io_in_3_bits_uop_cf_pd_brType(arbSel_arb_io_in_3_bits_uop_cf_pd_brType),
    .io_in_3_bits_uop_cf_pd_isCall(arbSel_arb_io_in_3_bits_uop_cf_pd_isCall),
    .io_in_3_bits_uop_cf_pd_isRet(arbSel_arb_io_in_3_bits_uop_cf_pd_isRet),
    .io_in_3_bits_uop_ctrl_rfWen(arbSel_arb_io_in_3_bits_uop_ctrl_rfWen),
    .io_in_3_bits_uop_ctrl_fpWen(arbSel_arb_io_in_3_bits_uop_ctrl_fpWen),
    .io_in_3_bits_uop_ctrl_imm(arbSel_arb_io_in_3_bits_uop_ctrl_imm),
    .io_in_3_bits_uop_pdest(arbSel_arb_io_in_3_bits_uop_pdest),
    .io_in_3_bits_uop_robIdx_flag(arbSel_arb_io_in_3_bits_uop_robIdx_flag),
    .io_in_3_bits_uop_robIdx_value(arbSel_arb_io_in_3_bits_uop_robIdx_value),
    .io_in_3_bits_uop_lqIdx_flag(arbSel_arb_io_in_3_bits_uop_lqIdx_flag),
    .io_in_3_bits_uop_lqIdx_value(arbSel_arb_io_in_3_bits_uop_lqIdx_value),
    .io_out_ready(arbSel_arb_io_out_ready),
    .io_out_valid(arbSel_arb_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(arbSel_arb_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(arbSel_arb_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(arbSel_arb_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(arbSel_arb_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(arbSel_arb_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_pd_isRVC(arbSel_arb_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(arbSel_arb_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(arbSel_arb_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(arbSel_arb_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(arbSel_arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(arbSel_arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(arbSel_arb_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_ctrl_imm(arbSel_arb_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(arbSel_arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(arbSel_arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(arbSel_arb_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(arbSel_arb_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(arbSel_arb_io_out_bits_uop_lqIdx_value)
  );
  DelayN_17 csrio_tlb_delay ( // @[Hold.scala 97:23]
    .clock(csrio_tlb_delay_clock),
    .io_in_satp_mode(csrio_tlb_delay_io_in_satp_mode),
    .io_in_satp_asid(csrio_tlb_delay_io_in_satp_asid),
    .io_in_satp_ppn(csrio_tlb_delay_io_in_satp_ppn),
    .io_in_satp_changed(csrio_tlb_delay_io_in_satp_changed),
    .io_in_priv_mxr(csrio_tlb_delay_io_in_priv_mxr),
    .io_in_priv_sum(csrio_tlb_delay_io_in_priv_sum),
    .io_in_priv_imode(csrio_tlb_delay_io_in_priv_imode),
    .io_in_priv_dmode(csrio_tlb_delay_io_in_priv_dmode),
    .io_out_satp_mode(csrio_tlb_delay_io_out_satp_mode),
    .io_out_satp_asid(csrio_tlb_delay_io_out_satp_asid),
    .io_out_satp_ppn(csrio_tlb_delay_io_out_satp_ppn),
    .io_out_satp_changed(csrio_tlb_delay_io_out_satp_changed),
    .io_out_priv_mxr(csrio_tlb_delay_io_out_priv_mxr),
    .io_out_priv_sum(csrio_tlb_delay_io_out_priv_sum),
    .io_out_priv_imode(csrio_tlb_delay_io_out_priv_imode),
    .io_out_priv_dmode(csrio_tlb_delay_io_out_priv_dmode)
  );
  DelayN_18 csrio_customCtrl_delay ( // @[Hold.scala 97:23]
    .clock(csrio_customCtrl_delay_clock),
    .io_in_l2_pf_store_only(csrio_customCtrl_delay_io_in_l2_pf_store_only),
    .io_in_icache_parity_enable(csrio_customCtrl_delay_io_in_icache_parity_enable),
    .io_in_lvpred_timeout(csrio_customCtrl_delay_io_in_lvpred_timeout),
    .io_in_bp_ctrl_ubtb_enable(csrio_customCtrl_delay_io_in_bp_ctrl_ubtb_enable),
    .io_in_bp_ctrl_btb_enable(csrio_customCtrl_delay_io_in_bp_ctrl_btb_enable),
    .io_in_bp_ctrl_tage_enable(csrio_customCtrl_delay_io_in_bp_ctrl_tage_enable),
    .io_in_bp_ctrl_sc_enable(csrio_customCtrl_delay_io_in_bp_ctrl_sc_enable),
    .io_in_bp_ctrl_ras_enable(csrio_customCtrl_delay_io_in_bp_ctrl_ras_enable),
    .io_in_ldld_vio_check_enable(csrio_customCtrl_delay_io_in_ldld_vio_check_enable),
    .io_in_cache_error_enable(csrio_customCtrl_delay_io_in_cache_error_enable),
    .io_in_uncache_write_outstanding_enable(csrio_customCtrl_delay_io_in_uncache_write_outstanding_enable),
    .io_in_fusion_enable(csrio_customCtrl_delay_io_in_fusion_enable),
    .io_in_wfi_enable(csrio_customCtrl_delay_io_in_wfi_enable),
    .io_in_svinval_enable(csrio_customCtrl_delay_io_in_svinval_enable),
    .io_in_distribute_csr_wvalid(csrio_customCtrl_delay_io_in_distribute_csr_wvalid),
    .io_in_distribute_csr_waddr(csrio_customCtrl_delay_io_in_distribute_csr_waddr),
    .io_in_distribute_csr_wdata(csrio_customCtrl_delay_io_in_distribute_csr_wdata),
    .io_in_singlestep(csrio_customCtrl_delay_io_in_singlestep),
    .io_in_frontend_trigger_t_valid(csrio_customCtrl_delay_io_in_frontend_trigger_t_valid),
    .io_in_frontend_trigger_t_bits_addr(csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_addr),
    .io_in_frontend_trigger_t_bits_tdata_matchType(csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_matchType)
      ,
    .io_in_frontend_trigger_t_bits_tdata_select(csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_select),
    .io_in_frontend_trigger_t_bits_tdata_timing(csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_timing),
    .io_in_frontend_trigger_t_bits_tdata_chain(csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_chain),
    .io_in_frontend_trigger_t_bits_tdata_tdata2(csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_tdata2),
    .io_in_mem_trigger_t_valid(csrio_customCtrl_delay_io_in_mem_trigger_t_valid),
    .io_in_mem_trigger_t_bits_addr(csrio_customCtrl_delay_io_in_mem_trigger_t_bits_addr),
    .io_in_mem_trigger_t_bits_tdata_matchType(csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_matchType),
    .io_in_mem_trigger_t_bits_tdata_select(csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_select),
    .io_in_mem_trigger_t_bits_tdata_chain(csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_chain),
    .io_in_mem_trigger_t_bits_tdata_tdata2(csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_tdata2),
    .io_in_trigger_enable_0(csrio_customCtrl_delay_io_in_trigger_enable_0),
    .io_in_trigger_enable_1(csrio_customCtrl_delay_io_in_trigger_enable_1),
    .io_in_trigger_enable_2(csrio_customCtrl_delay_io_in_trigger_enable_2),
    .io_in_trigger_enable_3(csrio_customCtrl_delay_io_in_trigger_enable_3),
    .io_in_trigger_enable_4(csrio_customCtrl_delay_io_in_trigger_enable_4),
    .io_in_trigger_enable_5(csrio_customCtrl_delay_io_in_trigger_enable_5),
    .io_in_trigger_enable_6(csrio_customCtrl_delay_io_in_trigger_enable_6),
    .io_in_trigger_enable_7(csrio_customCtrl_delay_io_in_trigger_enable_7),
    .io_in_trigger_enable_8(csrio_customCtrl_delay_io_in_trigger_enable_8),
    .io_in_trigger_enable_9(csrio_customCtrl_delay_io_in_trigger_enable_9),
    .io_out_l2_pf_store_only(csrio_customCtrl_delay_io_out_l2_pf_store_only),
    .io_out_icache_parity_enable(csrio_customCtrl_delay_io_out_icache_parity_enable),
    .io_out_lvpred_timeout(csrio_customCtrl_delay_io_out_lvpred_timeout),
    .io_out_bp_ctrl_ubtb_enable(csrio_customCtrl_delay_io_out_bp_ctrl_ubtb_enable),
    .io_out_bp_ctrl_btb_enable(csrio_customCtrl_delay_io_out_bp_ctrl_btb_enable),
    .io_out_bp_ctrl_tage_enable(csrio_customCtrl_delay_io_out_bp_ctrl_tage_enable),
    .io_out_bp_ctrl_sc_enable(csrio_customCtrl_delay_io_out_bp_ctrl_sc_enable),
    .io_out_bp_ctrl_ras_enable(csrio_customCtrl_delay_io_out_bp_ctrl_ras_enable),
    .io_out_ldld_vio_check_enable(csrio_customCtrl_delay_io_out_ldld_vio_check_enable),
    .io_out_cache_error_enable(csrio_customCtrl_delay_io_out_cache_error_enable),
    .io_out_uncache_write_outstanding_enable(csrio_customCtrl_delay_io_out_uncache_write_outstanding_enable),
    .io_out_fusion_enable(csrio_customCtrl_delay_io_out_fusion_enable),
    .io_out_wfi_enable(csrio_customCtrl_delay_io_out_wfi_enable),
    .io_out_svinval_enable(csrio_customCtrl_delay_io_out_svinval_enable),
    .io_out_distribute_csr_wvalid(csrio_customCtrl_delay_io_out_distribute_csr_wvalid),
    .io_out_distribute_csr_waddr(csrio_customCtrl_delay_io_out_distribute_csr_waddr),
    .io_out_distribute_csr_wdata(csrio_customCtrl_delay_io_out_distribute_csr_wdata),
    .io_out_singlestep(csrio_customCtrl_delay_io_out_singlestep),
    .io_out_frontend_trigger_t_valid(csrio_customCtrl_delay_io_out_frontend_trigger_t_valid),
    .io_out_frontend_trigger_t_bits_addr(csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_addr),
    .io_out_frontend_trigger_t_bits_tdata_matchType(
      csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_matchType),
    .io_out_frontend_trigger_t_bits_tdata_select(csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_select),
    .io_out_frontend_trigger_t_bits_tdata_timing(csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_timing),
    .io_out_frontend_trigger_t_bits_tdata_chain(csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_chain),
    .io_out_frontend_trigger_t_bits_tdata_tdata2(csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_tdata2),
    .io_out_mem_trigger_t_valid(csrio_customCtrl_delay_io_out_mem_trigger_t_valid),
    .io_out_mem_trigger_t_bits_addr(csrio_customCtrl_delay_io_out_mem_trigger_t_bits_addr),
    .io_out_mem_trigger_t_bits_tdata_matchType(csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_matchType),
    .io_out_mem_trigger_t_bits_tdata_select(csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_select),
    .io_out_mem_trigger_t_bits_tdata_chain(csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_chain),
    .io_out_mem_trigger_t_bits_tdata_tdata2(csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_tdata2),
    .io_out_trigger_enable_0(csrio_customCtrl_delay_io_out_trigger_enable_0),
    .io_out_trigger_enable_1(csrio_customCtrl_delay_io_out_trigger_enable_1),
    .io_out_trigger_enable_2(csrio_customCtrl_delay_io_out_trigger_enable_2),
    .io_out_trigger_enable_3(csrio_customCtrl_delay_io_out_trigger_enable_3),
    .io_out_trigger_enable_4(csrio_customCtrl_delay_io_out_trigger_enable_4),
    .io_out_trigger_enable_5(csrio_customCtrl_delay_io_out_trigger_enable_5),
    .io_out_trigger_enable_6(csrio_customCtrl_delay_io_out_trigger_enable_6),
    .io_out_trigger_enable_7(csrio_customCtrl_delay_io_out_trigger_enable_7),
    .io_out_trigger_enable_8(csrio_customCtrl_delay_io_out_trigger_enable_8),
    .io_out_trigger_enable_9(csrio_customCtrl_delay_io_out_trigger_enable_9)
  );
  DelayN_30 csr_csrio_exception_delay ( // @[Hold.scala 97:23]
    .clock(csr_csrio_exception_delay_clock),
    .io_in_valid(csr_csrio_exception_delay_io_in_valid),
    .io_in_bits_uop_cf_pc(csr_csrio_exception_delay_io_in_bits_uop_cf_pc),
    .io_in_bits_uop_cf_exceptionVec_0(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_0),
    .io_in_bits_uop_cf_exceptionVec_1(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_1),
    .io_in_bits_uop_cf_exceptionVec_2(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_2),
    .io_in_bits_uop_cf_exceptionVec_3(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_3),
    .io_in_bits_uop_cf_exceptionVec_4(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_8(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_8),
    .io_in_bits_uop_cf_exceptionVec_9(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_9),
    .io_in_bits_uop_cf_exceptionVec_11(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_11),
    .io_in_bits_uop_cf_exceptionVec_12(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_12),
    .io_in_bits_uop_cf_exceptionVec_13(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_exceptionVec_15(csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_frontendHit_0(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_0),
    .io_in_bits_uop_cf_trigger_frontendHit_1(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_1),
    .io_in_bits_uop_cf_trigger_frontendHit_2(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_2),
    .io_in_bits_uop_cf_trigger_frontendHit_3(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_0(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_crossPageIPFFix(csr_csrio_exception_delay_io_in_bits_uop_cf_crossPageIPFFix),
    .io_in_bits_uop_ctrl_singleStep(csr_csrio_exception_delay_io_in_bits_uop_ctrl_singleStep),
    .io_in_bits_isInterrupt(csr_csrio_exception_delay_io_in_bits_isInterrupt),
    .io_out_valid(csr_csrio_exception_delay_io_out_valid),
    .io_out_bits_uop_cf_pc(csr_csrio_exception_delay_io_out_bits_uop_cf_pc),
    .io_out_bits_uop_cf_exceptionVec_0(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_0),
    .io_out_bits_uop_cf_exceptionVec_1(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_1),
    .io_out_bits_uop_cf_exceptionVec_2(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_4(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_8(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_exceptionVec_12(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_12),
    .io_out_bits_uop_cf_exceptionVec_13(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_frontendHit_0(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_0),
    .io_out_bits_uop_cf_trigger_frontendHit_1(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_1),
    .io_out_bits_uop_cf_trigger_frontendHit_2(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_2),
    .io_out_bits_uop_cf_trigger_frontendHit_3(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_0(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_crossPageIPFFix(csr_csrio_exception_delay_io_out_bits_uop_cf_crossPageIPFFix),
    .io_out_bits_uop_ctrl_singleStep(csr_csrio_exception_delay_io_out_bits_uop_ctrl_singleStep),
    .io_out_bits_isInterrupt(csr_csrio_exception_delay_io_out_bits_isInterrupt)
  );
  assign io_fromInt_ready = ~io_fromInt_valid | _io_fromInt_ready_T_6; // @[Exu.scala 234:43]
  assign io_out_valid = arbSel_arb_io_out_valid; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_exceptionVec_2 = arbSel_arb_io_out_bits_uop_cf_exceptionVec_2; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_exceptionVec_3 = arbSel_arb_io_out_bits_uop_cf_exceptionVec_3; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_exceptionVec_8 = arbSel_arb_io_out_bits_uop_cf_exceptionVec_8; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_exceptionVec_9 = arbSel_arb_io_out_bits_uop_cf_exceptionVec_9; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_exceptionVec_11 = arbSel_arb_io_out_bits_uop_cf_exceptionVec_11; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_pd_isRVC = arbSel_arb_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_pd_brType = arbSel_arb_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_pd_isCall = arbSel_arb_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 182:20]
  assign io_out_bits_uop_cf_pd_isRet = arbSel_arb_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 182:20]
  assign io_out_bits_uop_ctrl_rfWen = arbSel_arb_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 182:20]
  assign io_out_bits_uop_ctrl_fpWen = arbSel_arb_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 182:20]
  assign io_out_bits_uop_ctrl_flushPipe = arbSel_arb_io_out_bits_uop_ctrl_flushPipe; // @[Exu.scala 182:20]
  assign io_out_bits_uop_ctrl_imm = arbSel_arb_io_out_bits_uop_ctrl_imm; // @[Exu.scala 182:20]
  assign io_out_bits_uop_pdest = arbSel_arb_io_out_bits_uop_pdest; // @[Exu.scala 182:20]
  assign io_out_bits_uop_robIdx_flag = arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 182:20]
  assign io_out_bits_uop_robIdx_value = arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 182:20]
  assign io_out_bits_uop_lqIdx_flag = arbSel_arb_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 182:20]
  assign io_out_bits_uop_lqIdx_value = arbSel_arb_io_out_bits_uop_lqIdx_value; // @[Exu.scala 182:20]
  assign io_out_bits_data = _dataReg_T_4 | _dataReg_T_3; // @[Mux.scala 27:73]
  assign io_out_bits_fflags = i2f_fflags; // @[ExeUnit.scala 92:24]
  assign io_out_bits_redirectValid = jmp_redirectOutValid; // @[ExeUnit.scala 46:31]
  assign io_out_bits_redirect_robIdx_flag = jmp_redirectOut_robIdx_flag; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_robIdx_value = jmp_redirectOut_robIdx_value; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_ftqIdx_flag = jmp_redirectOut_ftqIdx_flag; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_ftqIdx_value = jmp_redirectOut_ftqIdx_value; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_ftqOffset = jmp_redirectOut_ftqOffset; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_cfiUpdate_target = jmp_redirectOut_cfiUpdate_target; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_cfiUpdate_isMisPred = jmp_redirectOut_cfiUpdate_isMisPred; // @[ExeUnit.scala 47:26]
  assign io_out_bits_debug_isPerfCnt = io_out_bits_debug_isPerfCnt_REG; // @[ExeUnit.scala 62:33]
  assign csrio_fpu_frm = csr_csrio_fpu_frm; // @[ExeUnit.scala 54:15]
  assign csrio_isXRet = csr_csrio_isXRet; // @[ExeUnit.scala 54:15]
  assign csrio_trapTarget = csrio_trapTarget_REG; // @[ExeUnit.scala 57:26]
  assign csrio_interrupt = csr_csrio_interrupt; // @[ExeUnit.scala 54:15]
  assign csrio_wfi_event = csr_csrio_wfi_event; // @[ExeUnit.scala 54:15]
  assign csrio_tlb_satp_mode = csrio_tlb_delay_io_out_satp_mode; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_satp_asid = csrio_tlb_delay_io_out_satp_asid; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_satp_ppn = csrio_tlb_delay_io_out_satp_ppn; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_satp_changed = csrio_tlb_delay_io_out_satp_changed; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_priv_mxr = csrio_tlb_delay_io_out_priv_mxr; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_priv_sum = csrio_tlb_delay_io_out_priv_sum; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_priv_imode = csrio_tlb_delay_io_out_priv_imode; // @[ExeUnit.scala 55:19]
  assign csrio_tlb_priv_dmode = csrio_tlb_delay_io_out_priv_dmode; // @[ExeUnit.scala 55:19]
  assign csrio_customCtrl_l2_pf_store_only = csrio_customCtrl_delay_io_out_l2_pf_store_only; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_icache_parity_enable = csrio_customCtrl_delay_io_out_icache_parity_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_lvpred_timeout = csrio_customCtrl_delay_io_out_lvpred_timeout; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_bp_ctrl_ubtb_enable = csrio_customCtrl_delay_io_out_bp_ctrl_ubtb_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_bp_ctrl_btb_enable = csrio_customCtrl_delay_io_out_bp_ctrl_btb_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_bp_ctrl_tage_enable = csrio_customCtrl_delay_io_out_bp_ctrl_tage_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_bp_ctrl_sc_enable = csrio_customCtrl_delay_io_out_bp_ctrl_sc_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_bp_ctrl_ras_enable = csrio_customCtrl_delay_io_out_bp_ctrl_ras_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_ldld_vio_check_enable = csrio_customCtrl_delay_io_out_ldld_vio_check_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_cache_error_enable = csrio_customCtrl_delay_io_out_cache_error_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_uncache_write_outstanding_enable =
    csrio_customCtrl_delay_io_out_uncache_write_outstanding_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_fusion_enable = csrio_customCtrl_delay_io_out_fusion_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_wfi_enable = csrio_customCtrl_delay_io_out_wfi_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_svinval_enable = csrio_customCtrl_delay_io_out_svinval_enable; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_distribute_csr_wvalid = csrio_customCtrl_delay_io_out_distribute_csr_wvalid; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_distribute_csr_waddr = csrio_customCtrl_delay_io_out_distribute_csr_waddr; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_distribute_csr_wdata = csrio_customCtrl_delay_io_out_distribute_csr_wdata; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_singlestep = csrio_customCtrl_delay_io_out_singlestep; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_valid = csrio_customCtrl_delay_io_out_frontend_trigger_t_valid; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_bits_addr = csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_addr; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType =
    csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_matchType; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_select =
    csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_select; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_timing =
    csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_timing; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_chain =
    csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_chain; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    csrio_customCtrl_delay_io_out_frontend_trigger_t_bits_tdata_tdata2; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_mem_trigger_t_valid = csrio_customCtrl_delay_io_out_mem_trigger_t_valid; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_mem_trigger_t_bits_addr = csrio_customCtrl_delay_io_out_mem_trigger_t_bits_addr; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_matchType =
    csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_matchType; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_select =
    csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_select; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_chain = csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_chain; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 =
    csrio_customCtrl_delay_io_out_mem_trigger_t_bits_tdata_tdata2; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_0 = csrio_customCtrl_delay_io_out_trigger_enable_0; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_1 = csrio_customCtrl_delay_io_out_trigger_enable_1; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_2 = csrio_customCtrl_delay_io_out_trigger_enable_2; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_3 = csrio_customCtrl_delay_io_out_trigger_enable_3; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_4 = csrio_customCtrl_delay_io_out_trigger_enable_4; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_5 = csrio_customCtrl_delay_io_out_trigger_enable_5; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_6 = csrio_customCtrl_delay_io_out_trigger_enable_6; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_7 = csrio_customCtrl_delay_io_out_trigger_enable_7; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_8 = csrio_customCtrl_delay_io_out_trigger_enable_8; // @[ExeUnit.scala 56:26]
  assign csrio_customCtrl_trigger_enable_9 = csrio_customCtrl_delay_io_out_trigger_enable_9; // @[ExeUnit.scala 56:26]
  assign fenceio_sfence_valid = fence_sfence_valid; // @[ExeUnit.scala 69:24]
  assign fenceio_sfence_bits_rs1 = fence_sfence_bits_rs1; // @[ExeUnit.scala 69:24]
  assign fenceio_sfence_bits_rs2 = fence_sfence_bits_rs2; // @[ExeUnit.scala 69:24]
  assign fenceio_sfence_bits_addr = fence_sfence_bits_addr; // @[ExeUnit.scala 69:24]
  assign fenceio_sfence_bits_asid = fence_sfence_bits_asid; // @[ExeUnit.scala 69:24]
  assign fenceio_fencei = fence_fencei; // @[ExeUnit.scala 70:24]
  assign fenceio_sbuffer_flushSb = fence_toSbuffer_flushSb; // @[ExeUnit.scala 71:25]
  assign jmp_io_in_valid = io_fromInt_valid & fuSel_0; // @[Exu.scala 158:34]
  assign jmp_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 160:25]
  assign jmp_io_in_bits_src_1 = io_fromInt_bits_src_1; // @[Exu.scala 160:25]
  assign jmp_io_in_bits_uop_cf_pc = io_fromInt_bits_uop_cf_pc; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_pd_isRVC = io_fromInt_bits_uop_cf_pd_isRVC; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_pd_brType = io_fromInt_bits_uop_cf_pd_brType; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_pd_isCall = io_fromInt_bits_uop_cf_pd_isCall; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_pd_isRet = io_fromInt_bits_uop_cf_pd_isRet; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_pred_taken = io_fromInt_bits_uop_cf_pred_taken; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_ftqPtr_flag = io_fromInt_bits_uop_cf_ftqPtr_flag; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_ftqPtr_value = io_fromInt_bits_uop_cf_ftqPtr_value; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_cf_ftqOffset = io_fromInt_bits_uop_cf_ftqOffset; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_ctrl_imm = io_fromInt_bits_uop_ctrl_imm; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_lqIdx_flag = io_fromInt_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign jmp_io_in_bits_uop_lqIdx_value = io_fromInt_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign jmp_io_out_ready = arbSel_arb_io_in_0_ready; // @[Exu.scala 176:19]
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_in_valid = io_fromInt_valid & fuSel_1; // @[Exu.scala 158:34]
  assign csr_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 160:25]
  assign csr_io_in_bits_uop_cf_pd_isRVC = io_fromInt_bits_uop_cf_pd_isRVC; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_cf_pd_brType = io_fromInt_bits_uop_cf_pd_brType; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_cf_pd_isCall = io_fromInt_bits_uop_cf_pd_isCall; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_cf_pd_isRet = io_fromInt_bits_uop_cf_pd_isRet; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_ctrl_imm = io_fromInt_bits_uop_ctrl_imm; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_lqIdx_flag = io_fromInt_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign csr_io_in_bits_uop_lqIdx_value = io_fromInt_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign csr_io_out_ready = arbSel_arb_io_in_1_ready; // @[Exu.scala 176:19]
  assign csr_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 146:22]
  assign csr_csrio_hartId = csrio_hartId; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_0_value = csrio_perf_perfEventsFrontend_0_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_1_value = csrio_perf_perfEventsFrontend_1_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_2_value = csrio_perf_perfEventsFrontend_2_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_3_value = csrio_perf_perfEventsFrontend_3_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_4_value = csrio_perf_perfEventsFrontend_4_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_5_value = csrio_perf_perfEventsFrontend_5_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_6_value = csrio_perf_perfEventsFrontend_6_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsFrontend_7_value = csrio_perf_perfEventsFrontend_7_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_0_value = csrio_perf_perfEventsCtrl_0_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_1_value = csrio_perf_perfEventsCtrl_1_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_2_value = csrio_perf_perfEventsCtrl_2_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_3_value = csrio_perf_perfEventsCtrl_3_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_4_value = csrio_perf_perfEventsCtrl_4_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_5_value = csrio_perf_perfEventsCtrl_5_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_6_value = csrio_perf_perfEventsCtrl_6_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsCtrl_7_value = csrio_perf_perfEventsCtrl_7_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_0_value = csrio_perf_perfEventsLsu_0_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_1_value = csrio_perf_perfEventsLsu_1_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_2_value = csrio_perf_perfEventsLsu_2_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_3_value = csrio_perf_perfEventsLsu_3_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_4_value = csrio_perf_perfEventsLsu_4_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_5_value = csrio_perf_perfEventsLsu_5_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_6_value = csrio_perf_perfEventsLsu_6_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_perfEventsLsu_7_value = csrio_perf_perfEventsLsu_7_value; // @[ExeUnit.scala 54:15]
  assign csr_csrio_perf_retiredInstr = csrio_perf_retiredInstr; // @[ExeUnit.scala 54:15]
  assign csr_csrio_fpu_fflags_valid = csrio_fpu_fflags_valid; // @[ExeUnit.scala 54:15]
  assign csr_csrio_fpu_fflags_bits = csrio_fpu_fflags_bits; // @[ExeUnit.scala 54:15]
  assign csr_csrio_fpu_dirty_fs = csrio_fpu_dirty_fs; // @[ExeUnit.scala 54:15]
  assign csr_csrio_exception_valid = csr_csrio_exception_delay_io_out_valid; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_pc = csr_csrio_exception_delay_io_out_bits_uop_cf_pc; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_0 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_0; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_1 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_1; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_2 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_2; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_3 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_3; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_4 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_4; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_5 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_5; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_6 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_6; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_7 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_7; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_8 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_8; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_9 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_9; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_11 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_11; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_12 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_12; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_13 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_13; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_exceptionVec_15 = csr_csrio_exception_delay_io_out_bits_uop_cf_exceptionVec_15; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_frontendHit_0 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_0; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_frontendHit_1 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_1; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_frontendHit_2 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_2; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_frontendHit_3 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_frontendHit_3; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_backendHit_0 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_0; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_backendHit_1 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_1; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_backendHit_2 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_2; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_backendHit_3 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_3; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_backendHit_4 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_4; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_trigger_backendHit_5 =
    csr_csrio_exception_delay_io_out_bits_uop_cf_trigger_backendHit_5; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_cf_crossPageIPFFix = csr_csrio_exception_delay_io_out_bits_uop_cf_crossPageIPFFix; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_uop_ctrl_singleStep = csr_csrio_exception_delay_io_out_bits_uop_ctrl_singleStep; // @[ExeUnit.scala 58:25]
  assign csr_csrio_exception_bits_isInterrupt = csr_csrio_exception_delay_io_out_bits_isInterrupt; // @[ExeUnit.scala 58:25]
  assign csr_csrio_memExceptionVAddr = csrio_memExceptionVAddr; // @[ExeUnit.scala 54:15]
  assign csr_csrio_externalInterrupt_mtip = csrio_externalInterrupt_mtip; // @[ExeUnit.scala 54:15]
  assign csr_csrio_externalInterrupt_msip = csrio_externalInterrupt_msip; // @[ExeUnit.scala 54:15]
  assign csr_csrio_externalInterrupt_meip = csrio_externalInterrupt_meip; // @[ExeUnit.scala 54:15]
  assign csr_csrio_externalInterrupt_seip = csrio_externalInterrupt_seip; // @[ExeUnit.scala 54:15]
  assign csr_csrio_externalInterrupt_debug = csrio_externalInterrupt_debug; // @[ExeUnit.scala 54:15]
  assign csr_csrio_distributedUpdate_0_wvalid = csrio_distributedUpdate_0_wvalid; // @[ExeUnit.scala 54:15]
  assign csr_csrio_distributedUpdate_0_waddr = csrio_distributedUpdate_0_waddr; // @[ExeUnit.scala 54:15]
  assign csr_csrio_distributedUpdate_0_wdata = csrio_distributedUpdate_0_wdata; // @[ExeUnit.scala 54:15]
  assign csr_csrio_distributedUpdate_1_wvalid = csrio_distributedUpdate_1_wvalid; // @[ExeUnit.scala 54:15]
  assign csr_csrio_distributedUpdate_1_waddr = csrio_distributedUpdate_1_waddr; // @[ExeUnit.scala 54:15]
  assign csr_csrio_distributedUpdate_1_wdata = csrio_distributedUpdate_1_wdata; // @[ExeUnit.scala 54:15]
  assign fence_clock = clock;
  assign fence_reset = reset;
  assign fence_io_in_valid = io_fromInt_valid & fuSel_2; // @[Exu.scala 158:34]
  assign fence_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 160:25]
  assign fence_io_in_bits_src_1 = io_fromInt_bits_src_1; // @[Exu.scala 160:25]
  assign fence_io_in_bits_uop_cf_pd_isRVC = io_fromInt_bits_uop_cf_pd_isRVC; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_cf_pd_brType = io_fromInt_bits_uop_cf_pd_brType; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_cf_pd_isCall = io_fromInt_bits_uop_cf_pd_isCall; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_cf_pd_isRet = io_fromInt_bits_uop_cf_pd_isRet; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_ctrl_imm = io_fromInt_bits_uop_ctrl_imm; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_lqIdx_flag = io_fromInt_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign fence_io_in_bits_uop_lqIdx_value = io_fromInt_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign fence_toSbuffer_sbIsEmpty = fenceio_sbuffer_sbIsEmpty; // @[ExeUnit.scala 71:25]
  assign fence_disableSfence = csr_csrio_disableSfence; // @[ExeUnit.scala 73:25]
  assign i2f_clock = clock;
  assign i2f_reset = reset;
  assign i2f_io_in_valid = io_fromInt_valid & io_fromInt_bits_uop_ctrl_fpu_fromInt; // @[Exu.scala 158:34]
  assign i2f_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 160:25]
  assign i2f_io_in_bits_uop_cf_pd_isRVC = io_fromInt_bits_uop_cf_pd_isRVC; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_cf_pd_brType = io_fromInt_bits_uop_cf_pd_brType; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_cf_pd_isCall = io_fromInt_bits_uop_cf_pd_isCall; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_cf_pd_isRet = io_fromInt_bits_uop_cf_pd_isRet; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_imm = io_fromInt_bits_uop_ctrl_imm; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_fpu_typeTagOut = io_fromInt_bits_uop_ctrl_fpu_typeTagOut; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_fpu_wflags = io_fromInt_bits_uop_ctrl_fpu_wflags; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_fpu_typ = io_fromInt_bits_uop_ctrl_fpu_typ; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_ctrl_fpu_rm = io_fromInt_bits_uop_ctrl_fpu_rm; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_lqIdx_flag = io_fromInt_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign i2f_io_in_bits_uop_lqIdx_value = io_fromInt_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign i2f_io_out_ready = arbSel_arb_io_in_3_ready; // @[Exu.scala 176:19]
  assign i2f_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 146:22]
  assign i2f_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 146:22]
  assign i2f_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 146:22]
  assign i2f_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 146:22]
  assign i2f_rm = i2f_io_in_bits_uop_ctrl_fpu_rm != 3'h7 ? i2f_io_in_bits_uop_ctrl_fpu_rm : csr_frm; // @[ExeUnit.scala 82:20]
  assign arbSel_arb_io_in_0_valid = jmp_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_0_bits_uop_cf_pd_isRVC = jmp_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_pd_brType = jmp_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_pd_isCall = jmp_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_pd_isRet = jmp_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_rfWen = jmp_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_fpWen = jmp_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_imm = jmp_io_out_bits_uop_ctrl_imm; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_pdest = jmp_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_flag = jmp_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_value = jmp_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_lqIdx_flag = jmp_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_lqIdx_value = jmp_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_valid = csr_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_2 = csr_io_out_bits_uop_cf_exceptionVec_2; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_3 = csr_io_out_bits_uop_cf_exceptionVec_3; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_8 = csr_io_out_bits_uop_cf_exceptionVec_8; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_9 = csr_io_out_bits_uop_cf_exceptionVec_9; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_exceptionVec_11 = csr_io_out_bits_uop_cf_exceptionVec_11; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_pd_isRVC = csr_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_pd_brType = csr_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_pd_isCall = csr_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_pd_isRet = csr_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_rfWen = csr_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_fpWen = csr_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_flushPipe = csr_io_out_bits_uop_ctrl_flushPipe; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_imm = csr_io_out_bits_uop_ctrl_imm; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_pdest = csr_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_flag = csr_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_value = csr_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_lqIdx_flag = csr_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_lqIdx_value = csr_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_valid = fence_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_2_bits_uop_cf_exceptionVec_2 = fence_io_out_bits_uop_cf_exceptionVec_2; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_pd_isRVC = fence_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_pd_brType = fence_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_pd_isCall = fence_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_pd_isRet = fence_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_rfWen = fence_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_fpWen = fence_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_imm = fence_io_out_bits_uop_ctrl_imm; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_pdest = fence_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_robIdx_flag = fence_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_robIdx_value = fence_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_lqIdx_flag = fence_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_lqIdx_value = fence_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_valid = i2f_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_3_bits_uop_cf_pd_isRVC = i2f_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_cf_pd_brType = i2f_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_cf_pd_isCall = i2f_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_cf_pd_isRet = i2f_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_ctrl_rfWen = i2f_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_ctrl_fpWen = i2f_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_ctrl_imm = i2f_io_out_bits_uop_ctrl_imm; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_pdest = i2f_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_robIdx_flag = i2f_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_robIdx_value = i2f_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_lqIdx_flag = i2f_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_3_bits_uop_lqIdx_value = i2f_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_out_ready = io_out_ready; // @[Exu.scala 182:20]
  assign csrio_tlb_delay_clock = clock;
  assign csrio_tlb_delay_io_in_satp_mode = csr_csrio_tlb_satp_mode; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_satp_asid = csr_csrio_tlb_satp_asid; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_satp_ppn = csr_csrio_tlb_satp_ppn; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_satp_changed = csr_csrio_tlb_satp_changed; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_priv_mxr = csr_csrio_tlb_priv_mxr; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_priv_sum = csr_csrio_tlb_priv_sum; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_priv_imode = csr_csrio_tlb_priv_imode; // @[Hold.scala 98:17]
  assign csrio_tlb_delay_io_in_priv_dmode = csr_csrio_tlb_priv_dmode; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_clock = clock;
  assign csrio_customCtrl_delay_io_in_l2_pf_store_only = csr_csrio_customCtrl_l2_pf_store_only; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_icache_parity_enable = 1'h0; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_lvpred_timeout = csr_csrio_customCtrl_lvpred_timeout; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_bp_ctrl_ubtb_enable = csr_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_bp_ctrl_btb_enable = csr_csrio_customCtrl_bp_ctrl_btb_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_bp_ctrl_tage_enable = csr_csrio_customCtrl_bp_ctrl_tage_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_bp_ctrl_sc_enable = csr_csrio_customCtrl_bp_ctrl_sc_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_bp_ctrl_ras_enable = csr_csrio_customCtrl_bp_ctrl_ras_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_ldld_vio_check_enable = csr_csrio_customCtrl_ldld_vio_check_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_cache_error_enable = csr_csrio_customCtrl_cache_error_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_uncache_write_outstanding_enable =
    csr_csrio_customCtrl_uncache_write_outstanding_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_fusion_enable = csr_csrio_customCtrl_fusion_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_wfi_enable = csr_csrio_customCtrl_wfi_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_svinval_enable = csr_csrio_customCtrl_svinval_enable; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_distribute_csr_wvalid = csr_csrio_customCtrl_distribute_csr_wvalid; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_distribute_csr_waddr = csr_csrio_customCtrl_distribute_csr_waddr; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_distribute_csr_wdata = csr_csrio_customCtrl_distribute_csr_wdata; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_singlestep = csr_csrio_customCtrl_singlestep; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_valid = csr_csrio_customCtrl_frontend_trigger_t_valid; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_addr = csr_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_matchType =
    csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_select =
    csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_timing =
    csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_chain =
    csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_frontend_trigger_t_bits_tdata_tdata2 =
    csr_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_mem_trigger_t_valid = csr_csrio_customCtrl_mem_trigger_t_valid; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_mem_trigger_t_bits_addr = csr_csrio_customCtrl_mem_trigger_t_bits_addr; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_matchType =
    csr_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_select =
    csr_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_chain =
    csr_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_mem_trigger_t_bits_tdata_tdata2 =
    csr_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_0 = csr_csrio_customCtrl_trigger_enable_0; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_1 = csr_csrio_customCtrl_trigger_enable_1; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_2 = csr_csrio_customCtrl_trigger_enable_2; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_3 = csr_csrio_customCtrl_trigger_enable_3; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_4 = csr_csrio_customCtrl_trigger_enable_4; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_5 = csr_csrio_customCtrl_trigger_enable_5; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_6 = csr_csrio_customCtrl_trigger_enable_6; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_7 = csr_csrio_customCtrl_trigger_enable_7; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_8 = csr_csrio_customCtrl_trigger_enable_8; // @[Hold.scala 98:17]
  assign csrio_customCtrl_delay_io_in_trigger_enable_9 = csr_csrio_customCtrl_trigger_enable_9; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_clock = clock;
  assign csr_csrio_exception_delay_io_in_valid = csrio_exception_valid; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_pc = csrio_exception_bits_uop_cf_pc; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_0 = csrio_exception_bits_uop_cf_exceptionVec_0; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_1 = csrio_exception_bits_uop_cf_exceptionVec_1; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_2 = csrio_exception_bits_uop_cf_exceptionVec_2; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_3 = csrio_exception_bits_uop_cf_exceptionVec_3; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_4 = csrio_exception_bits_uop_cf_exceptionVec_4; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_5 = csrio_exception_bits_uop_cf_exceptionVec_5; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_6 = csrio_exception_bits_uop_cf_exceptionVec_6; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_7 = csrio_exception_bits_uop_cf_exceptionVec_7; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_8 = csrio_exception_bits_uop_cf_exceptionVec_8; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_9 = csrio_exception_bits_uop_cf_exceptionVec_9; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_11 = csrio_exception_bits_uop_cf_exceptionVec_11; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_12 = csrio_exception_bits_uop_cf_exceptionVec_12; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_13 = csrio_exception_bits_uop_cf_exceptionVec_13; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_exceptionVec_15 = csrio_exception_bits_uop_cf_exceptionVec_15; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_0 =
    csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_1 =
    csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_2 =
    csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_frontendHit_3 =
    csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_0 =
    csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_1 =
    csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_2 =
    csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_3 =
    csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_4 =
    csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_trigger_backendHit_5 =
    csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_cf_crossPageIPFFix = csrio_exception_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_uop_ctrl_singleStep = csrio_exception_bits_uop_ctrl_singleStep; // @[Hold.scala 98:17]
  assign csr_csrio_exception_delay_io_in_bits_isInterrupt = csrio_exception_bits_isInterrupt; // @[Hold.scala 98:17]
  always @(posedge clock) begin
    arbSelReg_0 <= jmp_io_out_ready & jmp_io_out_valid; // @[Decoupled.scala 50:35]
    arbSelReg_1 <= csr_io_out_ready & csr_io_out_valid; // @[Decoupled.scala 50:35]
    arbSelReg_3 <= i2f_io_out_ready & i2f_io_out_valid; // @[Decoupled.scala 50:35]
    dataRegVec_0 <= jmp_io_out_bits_data; // @[Exu.scala 201:63]
    dataRegVec_1 <= csr_io_out_bits_data; // @[Exu.scala 201:63]
    csrio_trapTarget_REG <= csr_csrio_trapTarget; // @[ExeUnit.scala 57:36]
    io_out_bits_debug_isPerfCnt_REG <= csr_csrio_isPerfCnt; // @[ExeUnit.scala 62:43]
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
  arbSelReg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  arbSelReg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  arbSelReg_3 = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  dataRegVec_0 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  dataRegVec_1 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  csrio_trapTarget_REG = _RAND_5[38:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_debug_isPerfCnt_REG = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

