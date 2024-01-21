module LoadUnit(
  input          clock,
  input          reset,
  input          io_redirect_valid,
  input          io_redirect_bits_robIdx_flag,
  input  [4:0]   io_redirect_bits_robIdx_value,
  input          io_redirect_bits_level,
  input          io_csrCtrl_ldld_vio_check_enable,
  input          io_csrCtrl_cache_error_enable,
  output         io_ldin_ready,
  input          io_ldin_valid,
  input          io_ldin_bits_uop_cf_trigger_backendEn_1,
  input          io_ldin_bits_uop_cf_storeSetHit,
  input          io_ldin_bits_uop_cf_loadWaitStrict,
  input  [4:0]   io_ldin_bits_uop_cf_ssid,
  input          io_ldin_bits_uop_cf_ftqPtr_flag,
  input  [2:0]   io_ldin_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_ldin_bits_uop_cf_ftqOffset,
  input  [6:0]   io_ldin_bits_uop_ctrl_fuOpType,
  input          io_ldin_bits_uop_ctrl_rfWen,
  input          io_ldin_bits_uop_ctrl_fpWen,
  input  [19:0]  io_ldin_bits_uop_ctrl_imm,
  input  [5:0]   io_ldin_bits_uop_pdest,
  input          io_ldin_bits_uop_robIdx_flag,
  input  [4:0]   io_ldin_bits_uop_robIdx_value,
  input          io_ldin_bits_uop_lqIdx_flag,
  input  [3:0]   io_ldin_bits_uop_lqIdx_value,
  input          io_ldin_bits_uop_sqIdx_flag,
  input  [3:0]   io_ldin_bits_uop_sqIdx_value,
  input  [63:0]  io_ldin_bits_src_0,
  input          io_ldout_ready,
  output         io_ldout_valid,
  output         io_ldout_bits_uop_cf_exceptionVec_4,
  output         io_ldout_bits_uop_cf_exceptionVec_5,
  output         io_ldout_bits_uop_cf_exceptionVec_13,
  output         io_ldout_bits_uop_cf_trigger_backendEn_1,
  output         io_ldout_bits_uop_cf_trigger_backendHit_0,
  output         io_ldout_bits_uop_cf_trigger_backendHit_1,
  output         io_ldout_bits_uop_cf_trigger_backendHit_4,
  output         io_ldout_bits_uop_ctrl_rfWen,
  output         io_ldout_bits_uop_ctrl_fpWen,
  output         io_ldout_bits_uop_ctrl_replayInst,
  output [5:0]   io_ldout_bits_uop_pdest,
  output         io_ldout_bits_uop_robIdx_flag,
  output [4:0]   io_ldout_bits_uop_robIdx_value,
  output         io_ldout_bits_uop_lqIdx_flag,
  output [3:0]   io_ldout_bits_uop_lqIdx_value,
  output [63:0]  io_ldout_bits_data,
  output         io_ldout_bits_debug_isMMIO,
  input  [3:0]   io_rsIdx,
  output         io_tlb_req_valid,
  output [38:0]  io_tlb_req_bits_vaddr,
  output [2:0]   io_tlb_req_bits_cmd,
  output         io_tlb_req_bits_kill,
  output         io_tlb_req_bits_no_translate,
  output         io_tlb_req_kill,
  input  [35:0]  io_tlb_resp_bits_paddr_0,
  input  [35:0]  io_tlb_resp_bits_paddr_1,
  input          io_tlb_resp_bits_miss,
  input          io_tlb_resp_bits_fast_miss,
  input          io_tlb_resp_bits_excp_0_pf_ld,
  input          io_tlb_resp_bits_excp_0_af_ld,
  input          io_tlb_resp_bits_static_pm_valid,
  input          io_tlb_resp_bits_static_pm_bits,
  input          io_pmp_ld,
  input          io_pmp_mmio,
  input          io_dcache_req_ready,
  output         io_dcache_req_valid,
  output [4:0]   io_dcache_req_bits_cmd,
  output [38:0]  io_dcache_req_bits_vaddr,
  output [3:0]   io_dcache_req_bits_instrtype,
  input  [127:0] io_dcache_resp_bits_data_delayed,
  input          io_dcache_resp_bits_miss,
  input          io_dcache_resp_bits_tag_error,
  input  [1:0]   io_dcache_resp_bits_mshr_id,
  input          io_dcache_resp_bits_handled,
  input          io_dcache_resp_bits_error_delayed,
  output         io_dcache_s1_kill,
  output         io_dcache_s2_kill,
  output [35:0]  io_dcache_s1_paddr_dup_lsu,
  output [35:0]  io_dcache_s1_paddr_dup_dcache,
  input          io_dcache_s1_disable_fast_wakeup,
  input          io_dcache_s2_bank_conflict,
  input          io_dcache_s2_mq_nack,
  output [38:0]  io_sbuffer_vaddr,
  output [35:0]  io_sbuffer_paddr,
  output         io_sbuffer_valid,
  input          io_sbuffer_forwardMask_0,
  input          io_sbuffer_forwardMask_1,
  input          io_sbuffer_forwardMask_2,
  input          io_sbuffer_forwardMask_3,
  input          io_sbuffer_forwardMask_4,
  input          io_sbuffer_forwardMask_5,
  input          io_sbuffer_forwardMask_6,
  input          io_sbuffer_forwardMask_7,
  input          io_sbuffer_forwardMask_8,
  input          io_sbuffer_forwardMask_9,
  input          io_sbuffer_forwardMask_10,
  input          io_sbuffer_forwardMask_11,
  input          io_sbuffer_forwardMask_12,
  input          io_sbuffer_forwardMask_13,
  input          io_sbuffer_forwardMask_14,
  input          io_sbuffer_forwardMask_15,
  input  [7:0]   io_sbuffer_forwardData_0,
  input  [7:0]   io_sbuffer_forwardData_1,
  input  [7:0]   io_sbuffer_forwardData_2,
  input  [7:0]   io_sbuffer_forwardData_3,
  input  [7:0]   io_sbuffer_forwardData_4,
  input  [7:0]   io_sbuffer_forwardData_5,
  input  [7:0]   io_sbuffer_forwardData_6,
  input  [7:0]   io_sbuffer_forwardData_7,
  input  [7:0]   io_sbuffer_forwardData_8,
  input  [7:0]   io_sbuffer_forwardData_9,
  input  [7:0]   io_sbuffer_forwardData_10,
  input  [7:0]   io_sbuffer_forwardData_11,
  input  [7:0]   io_sbuffer_forwardData_12,
  input  [7:0]   io_sbuffer_forwardData_13,
  input  [7:0]   io_sbuffer_forwardData_14,
  input  [7:0]   io_sbuffer_forwardData_15,
  input          io_sbuffer_matchInvalid,
  input          io_lsq_ldin_ready,
  output         io_lsq_ldin_valid,
  output         io_lsq_ldin_bits_uop_cf_exceptionVec_4,
  output         io_lsq_ldin_bits_uop_cf_exceptionVec_5,
  output         io_lsq_ldin_bits_uop_cf_exceptionVec_13,
  output         io_lsq_ldin_bits_uop_cf_trigger_backendEn_1,
  output         io_lsq_ldin_bits_uop_cf_trigger_backendHit_0,
  output         io_lsq_ldin_bits_uop_cf_trigger_backendHit_1,
  output         io_lsq_ldin_bits_uop_cf_trigger_backendHit_4,
  output         io_lsq_ldin_bits_uop_cf_storeSetHit,
  output         io_lsq_ldin_bits_uop_cf_loadWaitStrict,
  output [4:0]   io_lsq_ldin_bits_uop_cf_ssid,
  output         io_lsq_ldin_bits_uop_cf_ftqPtr_flag,
  output [2:0]   io_lsq_ldin_bits_uop_cf_ftqPtr_value,
  output [2:0]   io_lsq_ldin_bits_uop_cf_ftqOffset,
  output [6:0]   io_lsq_ldin_bits_uop_ctrl_fuOpType,
  output         io_lsq_ldin_bits_uop_ctrl_rfWen,
  output         io_lsq_ldin_bits_uop_ctrl_fpWen,
  output         io_lsq_ldin_bits_uop_ctrl_replayInst,
  output [5:0]   io_lsq_ldin_bits_uop_pdest,
  output         io_lsq_ldin_bits_uop_robIdx_flag,
  output [4:0]   io_lsq_ldin_bits_uop_robIdx_value,
  output         io_lsq_ldin_bits_uop_lqIdx_flag,
  output [3:0]   io_lsq_ldin_bits_uop_lqIdx_value,
  output         io_lsq_ldin_bits_uop_sqIdx_flag,
  output [3:0]   io_lsq_ldin_bits_uop_sqIdx_value,
  output [38:0]  io_lsq_ldin_bits_vaddr,
  output [35:0]  io_lsq_ldin_bits_paddr,
  output [15:0]  io_lsq_ldin_bits_mask,
  output         io_lsq_ldin_bits_miss,
  output         io_lsq_ldin_bits_tlbMiss,
  output         io_lsq_ldin_bits_mmio,
  output         io_lsq_ldin_bits_isLoadReplay,
  output         io_lsq_ldin_bits_handledByMSHR,
  output         io_lsq_ldin_bits_dcacheRequireReplay,
  output [2:0]   io_lsq_ldin_bits_schedIndex,
  output [1:0]   io_lsq_ldin_bits_rep_info_mshr_id,
  output         io_lsq_ldin_bits_rep_info_full_fwd,
  output         io_lsq_ldin_bits_rep_info_data_inv_sq_idx_flag,
  output [3:0]   io_lsq_ldin_bits_rep_info_data_inv_sq_idx_value,
  output         io_lsq_ldin_bits_rep_info_addr_inv_sq_idx_flag,
  output [3:0]   io_lsq_ldin_bits_rep_info_addr_inv_sq_idx_value,
  output         io_lsq_ldin_bits_rep_info_last_beat,
  output         io_lsq_ldin_bits_rep_info_cause_0,
  output         io_lsq_ldin_bits_rep_info_cause_1,
  output         io_lsq_ldin_bits_rep_info_cause_2,
  output         io_lsq_ldin_bits_rep_info_cause_3,
  output         io_lsq_ldin_bits_rep_info_cause_4,
  output         io_lsq_ldin_bits_rep_info_cause_5,
  output         io_lsq_ldin_bits_rep_info_cause_6,
  output         io_lsq_ldin_bits_rep_info_cause_7,
  output         io_lsq_ldin_bits_rep_info_cause_8,
  output         io_lsq_ldin_bits_rep_info_cause_9,
  output         io_lsq_ldin_bits_data_wen_dup_5,
  output         io_lsq_uncache_ready,
  input          io_lsq_uncache_valid,
  input          io_lsq_uncache_bits_uop_cf_exceptionVec_4,
  input          io_lsq_uncache_bits_uop_cf_exceptionVec_5,
  input          io_lsq_uncache_bits_uop_cf_exceptionVec_13,
  input          io_lsq_uncache_bits_uop_cf_trigger_backendEn_1,
  input          io_lsq_uncache_bits_uop_cf_trigger_backendHit_0,
  input          io_lsq_uncache_bits_uop_cf_trigger_backendHit_1,
  input          io_lsq_uncache_bits_uop_cf_trigger_backendHit_4,
  input          io_lsq_uncache_bits_uop_ctrl_rfWen,
  input          io_lsq_uncache_bits_uop_ctrl_fpWen,
  input          io_lsq_uncache_bits_uop_ctrl_replayInst,
  input  [5:0]   io_lsq_uncache_bits_uop_pdest,
  input          io_lsq_uncache_bits_uop_robIdx_flag,
  input  [4:0]   io_lsq_uncache_bits_uop_robIdx_value,
  input          io_lsq_uncache_bits_uop_lqIdx_flag,
  input  [3:0]   io_lsq_uncache_bits_uop_lqIdx_value,
  input          io_lsq_uncache_bits_debug_isMMIO,
  input  [63:0]  io_lsq_ld_raw_data_lqData,
  input  [6:0]   io_lsq_ld_raw_data_uop_ctrl_fuOpType,
  input          io_lsq_ld_raw_data_uop_ctrl_fpWen,
  input  [2:0]   io_lsq_ld_raw_data_addrOffset,
  output [38:0]  io_lsq_forward_vaddr,
  output [35:0]  io_lsq_forward_paddr,
  output [15:0]  io_lsq_forward_mask,
  output         io_lsq_forward_uop_cf_loadWaitStrict,
  output [4:0]   io_lsq_forward_uop_cf_ssid,
  output         io_lsq_forward_uop_sqIdx_flag,
  output [3:0]   io_lsq_forward_uop_sqIdx_value,
  output         io_lsq_forward_valid,
  input          io_lsq_forward_forwardMask_0,
  input          io_lsq_forward_forwardMask_1,
  input          io_lsq_forward_forwardMask_2,
  input          io_lsq_forward_forwardMask_3,
  input          io_lsq_forward_forwardMask_4,
  input          io_lsq_forward_forwardMask_5,
  input          io_lsq_forward_forwardMask_6,
  input          io_lsq_forward_forwardMask_7,
  input          io_lsq_forward_forwardMask_8,
  input          io_lsq_forward_forwardMask_9,
  input          io_lsq_forward_forwardMask_10,
  input          io_lsq_forward_forwardMask_11,
  input          io_lsq_forward_forwardMask_12,
  input          io_lsq_forward_forwardMask_13,
  input          io_lsq_forward_forwardMask_14,
  input          io_lsq_forward_forwardMask_15,
  input  [7:0]   io_lsq_forward_forwardData_0,
  input  [7:0]   io_lsq_forward_forwardData_1,
  input  [7:0]   io_lsq_forward_forwardData_2,
  input  [7:0]   io_lsq_forward_forwardData_3,
  input  [7:0]   io_lsq_forward_forwardData_4,
  input  [7:0]   io_lsq_forward_forwardData_5,
  input  [7:0]   io_lsq_forward_forwardData_6,
  input  [7:0]   io_lsq_forward_forwardData_7,
  input  [7:0]   io_lsq_forward_forwardData_8,
  input  [7:0]   io_lsq_forward_forwardData_9,
  input  [7:0]   io_lsq_forward_forwardData_10,
  input  [7:0]   io_lsq_forward_forwardData_11,
  input  [7:0]   io_lsq_forward_forwardData_12,
  input  [7:0]   io_lsq_forward_forwardData_13,
  input  [7:0]   io_lsq_forward_forwardData_14,
  input  [7:0]   io_lsq_forward_forwardData_15,
  output         io_lsq_forward_sqIdx_flag,
  input          io_lsq_forward_dataInvalid,
  input          io_lsq_forward_matchInvalid,
  input          io_lsq_forward_addrInvalid,
  output [11:0]  io_lsq_forward_sqIdxMask,
  input          io_lsq_forward_dataInvalidFast,
  input          io_lsq_forward_dataInvalidSqIdx_flag,
  input  [3:0]   io_lsq_forward_dataInvalidSqIdx_value,
  input          io_lsq_forward_addrInvalidSqIdx_flag,
  input  [3:0]   io_lsq_forward_addrInvalidSqIdx_value,
  input          io_lsq_stld_nuke_query_req_ready,
  output         io_lsq_stld_nuke_query_req_valid,
  output         io_lsq_stld_nuke_query_req_bits_uop_cf_ftqPtr_flag,
  output [2:0]   io_lsq_stld_nuke_query_req_bits_uop_cf_ftqPtr_value,
  output [2:0]   io_lsq_stld_nuke_query_req_bits_uop_cf_ftqOffset,
  output         io_lsq_stld_nuke_query_req_bits_uop_robIdx_flag,
  output [4:0]   io_lsq_stld_nuke_query_req_bits_uop_robIdx_value,
  output         io_lsq_stld_nuke_query_req_bits_uop_sqIdx_flag,
  output [3:0]   io_lsq_stld_nuke_query_req_bits_uop_sqIdx_value,
  output [15:0]  io_lsq_stld_nuke_query_req_bits_mask,
  output [35:0]  io_lsq_stld_nuke_query_req_bits_paddr,
  output         io_lsq_stld_nuke_query_req_bits_data_valid,
  output         io_lsq_stld_nuke_query_revoke,
  input          io_lsq_ldld_nuke_query_req_ready,
  output         io_lsq_ldld_nuke_query_req_valid,
  output         io_lsq_ldld_nuke_query_req_bits_uop_robIdx_flag,
  output [4:0]   io_lsq_ldld_nuke_query_req_bits_uop_robIdx_value,
  output         io_lsq_ldld_nuke_query_req_bits_uop_lqIdx_flag,
  output [3:0]   io_lsq_ldld_nuke_query_req_bits_uop_lqIdx_value,
  output [35:0]  io_lsq_ldld_nuke_query_req_bits_paddr,
  output         io_lsq_ldld_nuke_query_req_bits_data_valid,
  input          io_lsq_ldld_nuke_query_resp_valid,
  input          io_lsq_ldld_nuke_query_resp_bits_rep_frm_fetch,
  output         io_lsq_ldld_nuke_query_revoke,
  output         io_lsq_trigger_hitLoadAddrTriggerHitVec_0,
  output         io_lsq_trigger_hitLoadAddrTriggerHitVec_1,
  output         io_lsq_trigger_hitLoadAddrTriggerHitVec_2,
  input          io_lsq_trigger_lqLoadAddrTriggerHitVec_0,
  input          io_lsq_trigger_lqLoadAddrTriggerHitVec_1,
  input          io_lsq_trigger_lqLoadAddrTriggerHitVec_2,
  input          io_tl_d_channel_valid,
  input  [255:0] io_tl_d_channel_data,
  input  [1:0]   io_tl_d_channel_mshrid,
  input          io_tl_d_channel_last,
  output         io_forward_mshr_valid,
  output [1:0]   io_forward_mshr_mshrid,
  output [35:0]  io_forward_mshr_paddr,
  input          io_forward_mshr_forward_mshr,
  input  [7:0]   io_forward_mshr_forwardData_0,
  input  [7:0]   io_forward_mshr_forwardData_1,
  input  [7:0]   io_forward_mshr_forwardData_2,
  input  [7:0]   io_forward_mshr_forwardData_3,
  input  [7:0]   io_forward_mshr_forwardData_4,
  input  [7:0]   io_forward_mshr_forwardData_5,
  input  [7:0]   io_forward_mshr_forwardData_6,
  input  [7:0]   io_forward_mshr_forwardData_7,
  input  [7:0]   io_forward_mshr_forwardData_8,
  input  [7:0]   io_forward_mshr_forwardData_9,
  input  [7:0]   io_forward_mshr_forwardData_10,
  input  [7:0]   io_forward_mshr_forwardData_11,
  input  [7:0]   io_forward_mshr_forwardData_12,
  input  [7:0]   io_forward_mshr_forwardData_13,
  input  [7:0]   io_forward_mshr_forwardData_14,
  input  [7:0]   io_forward_mshr_forwardData_15,
  input          io_forward_mshr_forward_result_valid,
  input          io_l2_hint_valid,
  input  [1:0]   io_l2_hint_bits_sourceId,
  output         io_fast_uop_valid,
  output         io_fast_uop_bits_ctrl_rfWen,
  output [5:0]   io_fast_uop_bits_pdest,
  input  [63:0]  io_trigger_0_tdata2,
  input  [1:0]   io_trigger_0_matchType,
  input          io_trigger_0_tEnable,
  output         io_trigger_0_addrHit,
  input  [63:0]  io_trigger_1_tdata2,
  input  [1:0]   io_trigger_1_matchType,
  input          io_trigger_1_tEnable,
  output         io_trigger_1_addrHit,
  input  [63:0]  io_trigger_2_tdata2,
  input  [1:0]   io_trigger_2_matchType,
  input          io_trigger_2_tEnable,
  output         io_trigger_2_addrHit,
  input          io_l2l_fwd_in_valid,
  input  [63:0]  io_l2l_fwd_in_data,
  input          io_l2l_fwd_in_dly_ld_err,
  output         io_l2l_fwd_out_valid,
  output [63:0]  io_l2l_fwd_out_data,
  output         io_l2l_fwd_out_dly_ld_err,
  input          io_ld_fast_match,
  input  [6:0]   io_ld_fast_fuOpType,
  input  [11:0]  io_ld_fast_imm,
  output         io_feedback_fast_valid,
  output [3:0]   io_feedback_fast_bits_rsIdx,
  output         io_feedback_slow_valid,
  output [3:0]   io_feedback_slow_bits_rsIdx,
  output         io_feedback_slow_bits_hit,
  input          io_stld_nuke_query_0_valid,
  input          io_stld_nuke_query_0_bits_robIdx_flag,
  input  [4:0]   io_stld_nuke_query_0_bits_robIdx_value,
  input  [35:0]  io_stld_nuke_query_0_bits_paddr,
  input  [15:0]  io_stld_nuke_query_0_bits_mask,
  input          io_stld_nuke_query_1_valid,
  input          io_stld_nuke_query_1_bits_robIdx_flag,
  input  [4:0]   io_stld_nuke_query_1_bits_robIdx_value,
  input  [35:0]  io_stld_nuke_query_1_bits_paddr,
  input  [15:0]  io_stld_nuke_query_1_bits_mask,
  output         io_replay_ready,
  input          io_replay_valid,
  input          io_replay_bits_uop_cf_exceptionVec_13,
  input          io_replay_bits_uop_cf_trigger_backendEn_1,
  input          io_replay_bits_uop_cf_trigger_backendHit_0,
  input          io_replay_bits_uop_cf_trigger_backendHit_1,
  input          io_replay_bits_uop_cf_trigger_backendHit_4,
  input          io_replay_bits_uop_cf_storeSetHit,
  input          io_replay_bits_uop_cf_loadWaitStrict,
  input  [4:0]   io_replay_bits_uop_cf_ssid,
  input          io_replay_bits_uop_cf_ftqPtr_flag,
  input  [2:0]   io_replay_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_replay_bits_uop_cf_ftqOffset,
  input  [6:0]   io_replay_bits_uop_ctrl_fuOpType,
  input          io_replay_bits_uop_ctrl_rfWen,
  input          io_replay_bits_uop_ctrl_fpWen,
  input  [5:0]   io_replay_bits_uop_pdest,
  input          io_replay_bits_uop_robIdx_flag,
  input  [4:0]   io_replay_bits_uop_robIdx_value,
  input          io_replay_bits_uop_lqIdx_flag,
  input  [3:0]   io_replay_bits_uop_lqIdx_value,
  input          io_replay_bits_uop_sqIdx_flag,
  input  [3:0]   io_replay_bits_uop_sqIdx_value,
  input  [38:0]  io_replay_bits_vaddr,
  input  [1:0]   io_replay_bits_mshrid,
  input          io_replay_bits_forward_tlDchannel,
  input  [2:0]   io_replay_bits_schedIndex,
  input          io_lq_rep_full,
  output         io_fast_rep_in_ready,
  input          io_fast_rep_in_valid,
  input          io_fast_rep_in_bits_uop_cf_exceptionVec_13,
  input          io_fast_rep_in_bits_uop_cf_trigger_backendEn_1,
  input          io_fast_rep_in_bits_uop_cf_trigger_backendHit_0,
  input          io_fast_rep_in_bits_uop_cf_trigger_backendHit_1,
  input          io_fast_rep_in_bits_uop_cf_trigger_backendHit_4,
  input          io_fast_rep_in_bits_uop_cf_storeSetHit,
  input          io_fast_rep_in_bits_uop_cf_loadWaitStrict,
  input  [4:0]   io_fast_rep_in_bits_uop_cf_ssid,
  input          io_fast_rep_in_bits_uop_cf_ftqPtr_flag,
  input  [2:0]   io_fast_rep_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_fast_rep_in_bits_uop_cf_ftqOffset,
  input  [6:0]   io_fast_rep_in_bits_uop_ctrl_fuOpType,
  input          io_fast_rep_in_bits_uop_ctrl_rfWen,
  input          io_fast_rep_in_bits_uop_ctrl_fpWen,
  input  [5:0]   io_fast_rep_in_bits_uop_pdest,
  input          io_fast_rep_in_bits_uop_robIdx_flag,
  input  [4:0]   io_fast_rep_in_bits_uop_robIdx_value,
  input          io_fast_rep_in_bits_uop_lqIdx_flag,
  input  [3:0]   io_fast_rep_in_bits_uop_lqIdx_value,
  input          io_fast_rep_in_bits_uop_sqIdx_flag,
  input  [3:0]   io_fast_rep_in_bits_uop_sqIdx_value,
  input  [38:0]  io_fast_rep_in_bits_vaddr,
  input  [15:0]  io_fast_rep_in_bits_mask,
  input  [3:0]   io_fast_rep_in_bits_rsIdx,
  input          io_fast_rep_in_bits_hasROBEntry,
  input          io_fast_rep_in_bits_isLoadReplay,
  input          io_fast_rep_in_bits_delayedLoadError,
  input  [2:0]   io_fast_rep_in_bits_schedIndex,
  input  [1:0]   io_fast_rep_in_bits_rep_info_mshr_id,
  input          io_fast_rep_out_ready,
  output         io_fast_rep_out_valid,
  output         io_fast_rep_out_bits_uop_cf_exceptionVec_13,
  output         io_fast_rep_out_bits_uop_cf_trigger_backendEn_1,
  output         io_fast_rep_out_bits_uop_cf_trigger_backendHit_0,
  output         io_fast_rep_out_bits_uop_cf_trigger_backendHit_1,
  output         io_fast_rep_out_bits_uop_cf_trigger_backendHit_4,
  output         io_fast_rep_out_bits_uop_cf_storeSetHit,
  output         io_fast_rep_out_bits_uop_cf_loadWaitStrict,
  output [4:0]   io_fast_rep_out_bits_uop_cf_ssid,
  output         io_fast_rep_out_bits_uop_cf_ftqPtr_flag,
  output [2:0]   io_fast_rep_out_bits_uop_cf_ftqPtr_value,
  output [2:0]   io_fast_rep_out_bits_uop_cf_ftqOffset,
  output [6:0]   io_fast_rep_out_bits_uop_ctrl_fuOpType,
  output         io_fast_rep_out_bits_uop_ctrl_rfWen,
  output         io_fast_rep_out_bits_uop_ctrl_fpWen,
  output [5:0]   io_fast_rep_out_bits_uop_pdest,
  output         io_fast_rep_out_bits_uop_robIdx_flag,
  output [4:0]   io_fast_rep_out_bits_uop_robIdx_value,
  output         io_fast_rep_out_bits_uop_lqIdx_flag,
  output [3:0]   io_fast_rep_out_bits_uop_lqIdx_value,
  output         io_fast_rep_out_bits_uop_sqIdx_flag,
  output [3:0]   io_fast_rep_out_bits_uop_sqIdx_value,
  output [38:0]  io_fast_rep_out_bits_vaddr,
  output [15:0]  io_fast_rep_out_bits_mask,
  output [3:0]   io_fast_rep_out_bits_rsIdx,
  output         io_fast_rep_out_bits_hasROBEntry,
  output         io_fast_rep_out_bits_isLoadReplay,
  output         io_fast_rep_out_bits_delayedLoadError,
  output [2:0]   io_fast_rep_out_bits_schedIndex,
  output [1:0]   io_fast_rep_out_bits_rep_info_mshr_id,
  output         io_fast_rep_out_bits_rep_info_cause_6,
  output [4:0]   io_lsTopdownInfo_s1_robIdx,
  output         io_lsTopdownInfo_s1_vaddr_valid,
  output [38:0]  io_lsTopdownInfo_s1_vaddr_bits,
  output [4:0]   io_lsTopdownInfo_s2_robIdx,
  output         io_lsTopdownInfo_s2_paddr_valid,
  output [35:0]  io_lsTopdownInfo_s2_paddr_bits,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
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
  reg [63:0] _RAND_69;
  reg [63:0] _RAND_70;
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
  reg [63:0] _RAND_128;
  reg [63:0] _RAND_129;
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
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [63:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [63:0] _RAND_255;
  reg [63:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [63:0] _RAND_259;
  reg [63:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [63:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
`endif // RANDOMIZE_REG_INIT
  wire  s0_super_ld_rep_valid = io_replay_valid & io_replay_bits_forward_tlDchannel; // @[LoadUnit.scala 203:48]
  wire  _s0_valid_T = s0_super_ld_rep_valid | io_fast_rep_in_valid; // @[LoadUnit.scala 281:38]
  wire  s0_rep_stall_differentFlag = io_replay_bits_uop_robIdx_flag ^ io_ldin_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_rep_stall_compare = io_replay_bits_uop_robIdx_value > io_ldin_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_rep_stall_T = s0_rep_stall_differentFlag ^ s0_rep_stall_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s0_rep_stall = io_ldin_valid & _s0_rep_stall_T; // @[LoadUnit.scala 202:46]
  wire  _s0_ld_rep_valid_T_2 = ~s0_rep_stall; // @[LoadUnit.scala 205:89]
  wire  s0_ld_rep_valid = io_replay_valid & ~io_replay_bits_forward_tlDchannel & ~s0_rep_stall; // @[LoadUnit.scala 205:86]
  wire  _s0_valid_T_1 = _s0_valid_T | s0_ld_rep_valid; // @[LoadUnit.scala 282:37]
  wire  _s0_high_conf_prf_valid_T = 1'h0; // @[LoadUnit.scala 206:89]
  wire  s0_high_conf_prf_valid = 1'h0; // @[LoadUnit.scala 206:54]
  wire  _s0_valid_T_2 = _s0_valid_T_1 | _s0_high_conf_prf_valid_T; // @[LoadUnit.scala 283:32]
  wire  _s0_valid_T_3 = _s0_valid_T_2 | io_ldin_valid; // @[LoadUnit.scala 284:39]
  wire  s0_vec_iss_valid = 1'h0;
  wire  _s0_valid_T_4 = _s0_valid_T_3 | _s0_high_conf_prf_valid_T; // @[LoadUnit.scala 285:33]
  wire  s0_l2l_fwd_valid = io_l2l_fwd_in_valid & io_ld_fast_match; // @[LoadUnit.scala 209:52]
  wire  _s0_valid_T_5 = _s0_valid_T_4 | s0_l2l_fwd_valid; // @[LoadUnit.scala 286:33]
  wire  _s0_low_conf_prf_valid_T = 1'h1; // @[LoadUnit.scala 210:89]
  wire  s0_low_conf_prf_valid = 1'h0; // @[LoadUnit.scala 210:54]
  wire  _s0_valid_T_6 = _s0_valid_T_5 | _s0_high_conf_prf_valid_T; // @[LoadUnit.scala 287:33]
  reg  s1_try_ptr_chasing; // @[LoadUnit.scala 654:41]
  reg [6:0] s1_ptr_chasing_vaddr; // @[Reg.scala 16:16]
  reg  s1_addr_mismatch_r; // @[Reg.scala 16:16]
  wire  s1_addr_mismatch = s1_ptr_chasing_vaddr[6] | s1_addr_mismatch_r; // @[LoadUnit.scala 672:54]
  reg [6:0] s1_in_ruop_ctrl_fuOpType; // @[Reg.scala 16:16]
  wire [6:0] s1_in_uop_ctrl_fuOpType = s1_try_ptr_chasing ? io_ldin_bits_uop_ctrl_fuOpType : s1_in_ruop_ctrl_fuOpType; // @[LoadUnit.scala 569:11 683:31 686:27]
  wire  _s1_addr_misaligned_T_8 = 2'h1 == s1_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  reg [38:0] s1_in_rvaddr; // @[Reg.scala 16:16]
  wire [32:0] s1_vaddr_hi = s1_in_rvaddr[38:6]; // @[LoadUnit.scala 588:37]
  wire [5:0] s1_vaddr_lo = s1_try_ptr_chasing ? s1_ptr_chasing_vaddr[5:0] : s1_in_rvaddr[5:0]; // @[LoadUnit.scala 589:23 683:31 689:27]
  wire [38:0] s1_vaddr = {s1_vaddr_hi,s1_vaddr_lo}; // @[Cat.scala 31:58]
  wire  _s1_addr_misaligned_T_9 = 2'h2 == s1_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s1_addr_misaligned_T_4 = s1_vaddr[1:0] != 2'h0; // @[LoadUnit.scala 677:59]
  wire  _s1_addr_misaligned_T_10 = 2'h3 == s1_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s1_addr_misaligned_T_6 = s1_vaddr[2:0] != 3'h0; // @[LoadUnit.scala 678:59]
  wire  s1_addr_misaligned = _s1_addr_misaligned_T_8 & s1_vaddr[0] | _s1_addr_misaligned_T_9 & _s1_addr_misaligned_T_4
     | _s1_addr_misaligned_T_10 & _s1_addr_misaligned_T_6; // @[Mux.scala 27:73]
  wire  s1_ptr_chasing_canceled = ~io_ldin_valid; // @[LoadUnit.scala 681:32]
  wire  s1_cancel_ptr_chasing = s1_try_ptr_chasing & (s1_addr_mismatch | s1_addr_misaligned | s1_ptr_chasing_canceled); // @[LoadUnit.scala 683:31 684:29]
  wire  _s0_ptr_chasing_canceled_T = io_replay_ready & io_replay_valid; // @[Decoupled.scala 50:35]
  wire  _s0_ptr_chasing_canceled_T_3 = io_fast_rep_in_ready & io_fast_rep_in_valid; // @[Decoupled.scala 50:35]
  wire  s0_ptr_chasing_canceled = ~s1_cancel_ptr_chasing & (s1_try_ptr_chasing & ~_s0_ptr_chasing_canceled_T & ~
    _s0_ptr_chasing_canceled_T_3); // @[LoadUnit.scala 697:35 698:31]
  wire  s0_super_ld_rep_ready = 1'h1;
  wire  s0_super_ld_rep_select = s0_super_ld_rep_valid & _s0_low_conf_prf_valid_T; // @[LoadUnit.scala 264:54]
  wire  s0_ld_fast_rep_ready = ~s0_super_ld_rep_valid; // @[LoadUnit.scala 222:32]
  wire  s0_ld_fast_rep_select = io_fast_rep_in_valid & s0_ld_fast_rep_ready; // @[LoadUnit.scala 265:53]
  wire  _s0_ld_rep_ready_T_1 = ~io_fast_rep_in_valid; // @[LoadUnit.scala 224:32]
  wire  s0_ld_rep_ready = s0_ld_fast_rep_ready & _s0_ld_rep_ready_T_1; // @[LoadUnit.scala 223:55]
  wire  s0_ld_rep_select = s0_ld_rep_valid & s0_ld_rep_ready; // @[LoadUnit.scala 266:48]
  wire  _s0_high_conf_prf_ready_T_3 = ~s0_ld_rep_valid; // @[LoadUnit.scala 227:32]
  wire  s0_high_conf_prf_ready = s0_ld_rep_ready & _s0_high_conf_prf_ready_T_3; // @[LoadUnit.scala 226:54]
  wire  _s0_low_conf_prf_ready_T_5 = ~_s0_high_conf_prf_valid_T; // @[LoadUnit.scala 250:32]
  wire  _s0_low_conf_prf_ready_T_6 = s0_high_conf_prf_ready & _s0_low_conf_prf_ready_T_5; // @[LoadUnit.scala 249:49]
  wire  _s0_low_conf_prf_ready_T_8 = _s0_low_conf_prf_ready_T_6 & s1_ptr_chasing_canceled; // @[LoadUnit.scala 250:56]
  wire  _s0_low_conf_prf_ready_T_10 = _s0_low_conf_prf_ready_T_8 & _s0_low_conf_prf_ready_T_5; // @[LoadUnit.scala 251:50]
  wire  _s0_low_conf_prf_ready_T_11 = ~s0_l2l_fwd_valid; // @[LoadUnit.scala 253:32]
  wire  s0_low_conf_prf_ready = _s0_low_conf_prf_ready_T_10 & _s0_low_conf_prf_ready_T_11; // @[LoadUnit.scala 252:50]
  wire  _s0_hw_prf_select_T_1 = s0_low_conf_prf_ready & _s0_high_conf_prf_valid_T; // @[LoadUnit.scala 268:54]
  wire  s0_hw_prf = s0_high_conf_prf_ready & _s0_high_conf_prf_valid_T | _s0_hw_prf_select_T_1; // @[LoadUnit.scala 267:81]
  wire  s0_int_iss_ready = s0_high_conf_prf_ready & _s0_low_conf_prf_ready_T_5; // @[LoadUnit.scala 231:49]
  wire  s0_int_iss_select = _s0_low_conf_prf_ready_T_6 & io_ldin_valid; // @[LoadUnit.scala 269:49]
  wire  s0_vec_iss_ready = _s0_low_conf_prf_ready_T_6 & s1_ptr_chasing_canceled; // @[LoadUnit.scala 237:56]
  wire  s0_vec_iss_select = _s0_low_conf_prf_ready_T_8 & _s0_high_conf_prf_valid_T; // @[LoadUnit.scala 270:49]
  wire  _GEN_206 = s0_int_iss_select & io_ldin_bits_uop_robIdx_flag; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_446 = s0_ld_rep_select ? io_replay_bits_uop_robIdx_flag : _GEN_206; // @[LoadUnit.scala 381:22 481:38]
  wire  _GEN_569 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_robIdx_flag : _GEN_446; // @[LoadUnit.scala 362:22 480:38]
  wire  s0_uop_robIdx_flag = s0_super_ld_rep_select ? io_replay_bits_uop_robIdx_flag : _GEN_569; // @[LoadUnit.scala 381:22 479:38]
  wire [4:0] _GEN_207 = s0_int_iss_select ? io_ldin_bits_uop_robIdx_value : 5'h0; // @[LoadUnit.scala 419:22 483:38]
  wire [4:0] _GEN_447 = s0_ld_rep_select ? io_replay_bits_uop_robIdx_value : _GEN_207; // @[LoadUnit.scala 381:22 481:38]
  wire [4:0] _GEN_570 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_robIdx_value : _GEN_447; // @[LoadUnit.scala 362:22 480:38]
  wire [4:0] s0_uop_robIdx_value = s0_super_ld_rep_select ? io_replay_bits_uop_robIdx_value : _GEN_570; // @[LoadUnit.scala 381:22 479:38]
  wire [5:0] _s0_kill_flushItself_T_1 = {s0_uop_robIdx_flag,s0_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s0_kill_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_kill_flushItself_T_3 = _s0_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_kill_flushItself = io_redirect_bits_level & _s0_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s0_kill_differentFlag = s0_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_kill_compare = s0_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_kill_T = s0_kill_differentFlag ^ s0_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s0_kill_T_2 = io_redirect_valid & (s0_kill_flushItself | _s0_kill_T); // @[Rob.scala 143:20]
  wire  s0_l2l_fwd_ready = _s0_low_conf_prf_ready_T_8 & _s0_low_conf_prf_ready_T_5; // @[LoadUnit.scala 244:50]
  wire  s0_l2l_fwd_select = _s0_low_conf_prf_ready_T_10 & s0_l2l_fwd_valid; // @[LoadUnit.scala 271:49]
  wire  s0_kill = s0_ptr_chasing_canceled | _s0_kill_T_2 & ~s0_l2l_fwd_select; // @[LoadUnit.scala 295:38]
  wire  s0_valid = _s0_valid_T_6 & io_dcache_req_ready & ~s0_kill; // @[LoadUnit.scala 288:62]
  reg  s1_valid; // @[LoadUnit.scala 558:30]
  reg  s1_fast_rep_dly_err; // @[LoadUnit.scala 571:36]
  reg  s1_in_risFastReplay; // @[Reg.scala 16:16]
  wire  s1_fast_rep_kill = s1_fast_rep_dly_err & s1_in_risFastReplay; // @[LoadUnit.scala 572:49]
  reg  s1_l2l_fwd_dly_err; // @[LoadUnit.scala 573:36]
  reg  s1_in_risFastPath; // @[Reg.scala 16:16]
  wire  s1_l2l_fwd_kill = s1_l2l_fwd_dly_err & s1_in_risFastPath; // @[LoadUnit.scala 574:48]
  wire  s1_late_kill = s1_fast_rep_kill | s1_l2l_fwd_kill; // @[LoadUnit.scala 575:46]
  wire  _s1_kill_T = s1_late_kill | s1_cancel_ptr_chasing; // @[LoadUnit.scala 663:27]
  reg  s1_in_ruop_robIdx_flag; // @[Reg.scala 16:16]
  wire  s1_in_uop_robIdx_flag = s1_try_ptr_chasing ? io_ldin_bits_uop_robIdx_flag : s1_in_ruop_robIdx_flag; // @[LoadUnit.scala 569:11 683:31 686:27]
  reg [4:0] s1_in_ruop_robIdx_value; // @[Reg.scala 16:16]
  wire [4:0] s1_in_uop_robIdx_value = s1_try_ptr_chasing ? io_ldin_bits_uop_robIdx_value : s1_in_ruop_robIdx_value; // @[LoadUnit.scala 569:11 683:31 686:27]
  wire [5:0] _s1_kill_flushItself_T_1 = {s1_in_uop_robIdx_flag,s1_in_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_kill_flushItself_T_3 = _s1_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_kill_flushItself = io_redirect_bits_level & _s1_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_kill_differentFlag = s1_in_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_kill_compare = s1_in_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_kill_T_1 = s1_kill_differentFlag ^ s1_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_kill_T_3 = io_redirect_valid & (s1_kill_flushItself | _s1_kill_T_1); // @[Rob.scala 143:20]
  wire  _s1_kill_T_4 = _s1_kill_T | _s1_kill_T_3; // @[LoadUnit.scala 664:36]
  reg  s1_kill_r; // @[Reg.scala 28:20]
  wire  s1_kill = _s1_kill_T_4 | s1_kill_r; // @[LoadUnit.scala 665:54]
  reg  s2_valid; // @[LoadUnit.scala 730:26]
  reg  s2_in_ruop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s2_in_ruop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s2_kill_flushItself_T_1 = {s2_in_ruop_robIdx_flag,s2_in_ruop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s2_kill_flushItself_T_3 = _s2_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s2_kill_flushItself = io_redirect_bits_level & _s2_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s2_kill_differentFlag = s2_in_ruop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_kill_compare = s2_in_ruop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_kill_T = s2_kill_differentFlag ^ s2_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s2_kill = io_redirect_valid & (s2_kill_flushItself | _s2_kill_T); // @[Rob.scala 143:20]
  reg  s3_valid; // @[LoadUnit.scala 1002:32]
  reg  s3_in_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s3_in_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s3_kill_flushItself_T_1 = {s3_in_uop_robIdx_flag,s3_in_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s3_kill_flushItself_T_3 = _s3_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s3_kill_flushItself = io_redirect_bits_level & _s3_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s3_kill_differentFlag = s3_in_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s3_kill_compare = s3_in_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s3_kill_T = s3_kill_differentFlag ^ s3_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s3_kill = io_redirect_valid & (s3_kill_flushItself | _s3_kill_T); // @[Rob.scala 143:20]
  wire  s2_can_go = ~s3_valid | s3_kill | io_ldout_ready; // @[LoadUnit.scala 1010:36]
  wire  s1_can_go = ~s2_valid | s2_kill | s2_can_go; // @[LoadUnit.scala 738:36]
  wire  s0_can_go = ~s1_valid | s1_kill | s1_can_go; // @[LoadUnit.scala 565:36]
  wire  s0_fire = s0_valid & s0_can_go; // @[LoadUnit.scala 189:35]
  wire  s0_do_try_ptr_chasing = s0_l2l_fwd_select & s0_can_go & io_dcache_req_ready; // @[LoadUnit.scala 292:65]
  wire [6:0] s0_ptr_chasing_vaddr = io_l2l_fwd_in_data[5:0] + io_ld_fast_imm[5:0]; // @[LoadUnit.scala 293:58]
  wire  _GEN_233 = s0_int_iss_select & io_ldin_bits_uop_ctrl_fuOpType == 7'ha; // @[LoadUnit.scala 431:22 483:38]
  wire  _GEN_353 = s0_hw_prf ? 1'h0 : _GEN_233; // @[LoadUnit.scala 412:22 482:38]
  wire  _GEN_475 = s0_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType == 7'ha : _GEN_353; // @[LoadUnit.scala 393:22 481:38]
  wire  _GEN_598 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_ctrl_fuOpType == 7'ha : _GEN_475; // @[LoadUnit.scala 374:22 480:38]
  wire  s0_prf_wr = s0_super_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType == 7'ha : _GEN_598; // @[LoadUnit.scala 393:22 479:38]
  wire  _GEN_231 = s0_int_iss_select & io_ldin_bits_uop_ctrl_fuOpType[3]; // @[LoadUnit.scala 429:22 483:38]
  wire  _GEN_351 = s0_hw_prf | _GEN_231; // @[LoadUnit.scala 410:22 482:38]
  wire  _GEN_473 = s0_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType[3] : _GEN_351; // @[LoadUnit.scala 391:22 481:38]
  wire  _GEN_596 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_ctrl_fuOpType[3] : _GEN_473; // @[LoadUnit.scala 372:22 480:38]
  wire  s0_prf = s0_super_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType[3] : _GEN_596; // @[LoadUnit.scala 391:22 479:38]
  wire  _io_tlb_req_bits_cmd_T_1 = s0_prf & s0_prf_wr; // @[LoadUnit.scala 308:44]
  wire  s0_vaddr_signBit = io_ldin_bits_uop_ctrl_imm[11]; // @[BitUtils.scala 80:20]
  wire [26:0] _s0_vaddr_T_4 = s0_vaddr_signBit ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 74:12]
  wire [38:0] _s0_vaddr_T_5 = {_s0_vaddr_T_4,io_ldin_bits_uop_ctrl_imm[11:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_1730 = {{25'd0}, _s0_vaddr_T_5}; // @[LoadUnit.scala 417:36]
  wire [63:0] _s0_vaddr_T_7 = io_ldin_bits_src_0 + _GEN_1730; // @[LoadUnit.scala 417:36]
  wire [63:0] _s0_vaddr_T_10 = {io_l2l_fwd_in_data[63:6],s0_ptr_chasing_vaddr[5:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_0 = s0_vec_iss_select ? 64'h0 : _s0_vaddr_T_10; // @[LoadUnit.scala 436:22 455:27 484:38]
  wire [63:0] _GEN_114 = s0_int_iss_select ? _s0_vaddr_T_7 : _GEN_0; // @[LoadUnit.scala 417:22 483:38]
  wire [63:0] _GEN_234 = s0_hw_prf ? 64'h0 : _GEN_114; // @[LoadUnit.scala 398:22 482:38]
  wire [63:0] _GEN_354 = s0_ld_rep_select ? {{25'd0}, io_replay_bits_vaddr} : _GEN_234; // @[LoadUnit.scala 379:22 481:38]
  wire [63:0] _GEN_477 = s0_ld_fast_rep_select ? {{25'd0}, io_fast_rep_in_bits_vaddr} : _GEN_354; // @[LoadUnit.scala 360:22 480:38]
  wire [63:0] _GEN_600 = s0_super_ld_rep_select ? {{25'd0}, io_replay_bits_vaddr} : _GEN_477; // @[LoadUnit.scala 379:22 479:38]
  wire [38:0] s0_vaddr = _GEN_600[38:0]; // @[LoadUnit.scala 175:30]
  wire [6:0] _GEN_58 = s0_vec_iss_select ? 7'h0 : io_ld_fast_fuOpType; // @[LoadUnit.scala 438:22 459:27 484:38]
  wire [6:0] _GEN_172 = s0_int_iss_select ? io_ldin_bits_uop_ctrl_fuOpType : _GEN_58; // @[LoadUnit.scala 419:22 483:38]
  wire [6:0] _GEN_412 = s0_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType : _GEN_172; // @[LoadUnit.scala 381:22 481:38]
  wire [6:0] _GEN_535 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_ctrl_fuOpType : _GEN_412; // @[LoadUnit.scala 362:22 480:38]
  wire [6:0] s0_uop_ctrl_fuOpType = s0_super_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType : _GEN_535; // @[LoadUnit.scala 381:22 479:38]
  wire [1:0] _io_dcache_req_bits_cmd_T = s0_prf_wr ? 2'h3 : 2'h0; // @[LoadUnit.scala 327:42]
  wire  _GEN_232 = s0_int_iss_select & io_ldin_bits_uop_ctrl_fuOpType == 7'h9; // @[LoadUnit.scala 430:22 483:38]
  wire  _GEN_352 = s0_hw_prf | _GEN_232; // @[LoadUnit.scala 411:22 482:38]
  wire  _GEN_474 = s0_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType == 7'h9 : _GEN_352; // @[LoadUnit.scala 392:22 481:38]
  wire  _GEN_597 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_ctrl_fuOpType == 7'h9 : _GEN_474; // @[LoadUnit.scala 373:22 480:38]
  wire  s0_prf_rd = s0_super_ld_rep_select ? io_replay_bits_uop_ctrl_fuOpType == 7'h9 : _GEN_597; // @[LoadUnit.scala 392:22 479:38]
  wire [1:0] _io_dcache_req_bits_cmd_T_1 = s0_prf_rd ? 2'h2 : _io_dcache_req_bits_cmd_T; // @[LoadUnit.scala 325:41]
  wire [1:0] _io_dcache_req_bits_instrtype_T = s0_prf ? 2'h3 : 2'h0; // @[LoadUnit.scala 333:41]
  wire  _s0_mask_T_1 = 2'h0 == io_replay_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_2 = 2'h1 == io_replay_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_3 = 2'h2 == io_replay_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_4 = 2'h3 == io_replay_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire [1:0] _s0_mask_T_6 = _s0_mask_T_2 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_7 = _s0_mask_T_3 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_8 = _s0_mask_T_4 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_1731 = {{1'd0}, _s0_mask_T_1}; // @[Mux.scala 27:73]
  wire [1:0] _s0_mask_T_9 = _GEN_1731 | _s0_mask_T_6; // @[Mux.scala 27:73]
  wire [3:0] _GEN_1732 = {{2'd0}, _s0_mask_T_9}; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_10 = _GEN_1732 | _s0_mask_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_1733 = {{4'd0}, _s0_mask_T_10}; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_11 = _GEN_1733 | _s0_mask_T_8; // @[Mux.scala 27:73]
  wire [22:0] _GEN_2 = {{15'd0}, _s0_mask_T_11}; // @[MemCommon.scala 50:8]
  wire [22:0] _s0_mask_T_13 = _GEN_2 << io_replay_bits_vaddr[3:0]; // @[MemCommon.scala 50:8]
  wire  _s0_mask_T_29 = 2'h0 == io_ldin_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_30 = 2'h1 == io_ldin_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_31 = 2'h2 == io_ldin_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_32 = 2'h3 == io_ldin_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire [1:0] _s0_mask_T_34 = _s0_mask_T_30 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_35 = _s0_mask_T_31 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_36 = _s0_mask_T_32 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_1737 = {{1'd0}, _s0_mask_T_29}; // @[Mux.scala 27:73]
  wire [1:0] _s0_mask_T_37 = _GEN_1737 | _s0_mask_T_34; // @[Mux.scala 27:73]
  wire [3:0] _GEN_1738 = {{2'd0}, _s0_mask_T_37}; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_38 = _GEN_1738 | _s0_mask_T_35; // @[Mux.scala 27:73]
  wire [7:0] _GEN_1739 = {{4'd0}, _s0_mask_T_38}; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_39 = _GEN_1739 | _s0_mask_T_36; // @[Mux.scala 27:73]
  wire [22:0] _GEN_3 = {{15'd0}, _s0_mask_T_39}; // @[MemCommon.scala 50:8]
  wire [22:0] _s0_mask_T_41 = _GEN_3 << s0_vaddr[3:0]; // @[MemCommon.scala 50:8]
  wire  _s0_mask_T_43 = 2'h0 == io_ld_fast_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_44 = 2'h1 == io_ld_fast_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_45 = 2'h2 == io_ld_fast_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_46 = 2'h3 == io_ld_fast_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire [1:0] _s0_mask_T_48 = _s0_mask_T_44 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_49 = _s0_mask_T_45 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_50 = _s0_mask_T_46 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_1740 = {{1'd0}, _s0_mask_T_43}; // @[Mux.scala 27:73]
  wire [1:0] _s0_mask_T_51 = _GEN_1740 | _s0_mask_T_48; // @[Mux.scala 27:73]
  wire [3:0] _GEN_1741 = {{2'd0}, _s0_mask_T_51}; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_52 = _GEN_1741 | _s0_mask_T_49; // @[Mux.scala 27:73]
  wire [7:0] _GEN_1742 = {{4'd0}, _s0_mask_T_52}; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_53 = _GEN_1742 | _s0_mask_T_50; // @[Mux.scala 27:73]
  wire [22:0] _GEN_4 = {{15'd0}, _s0_mask_T_53}; // @[MemCommon.scala 50:8]
  wire [22:0] _s0_mask_T_55 = _GEN_4 << s0_vaddr[3:0]; // @[MemCommon.scala 50:8]
  wire [22:0] _GEN_1 = s0_vec_iss_select ? 23'h0 : _s0_mask_T_55; // @[LoadUnit.scala 437:22 456:27 484:38]
  wire  _GEN_110 = s0_vec_iss_select ? 1'h0 : 1'h1; // @[LoadUnit.scala 439:22 460:27 484:38]
  wire [22:0] _GEN_115 = s0_int_iss_select ? _s0_mask_T_41 : _GEN_1; // @[LoadUnit.scala 418:22 483:38]
  wire  _GEN_140 = s0_int_iss_select & io_ldin_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_154 = s0_int_iss_select & io_ldin_bits_uop_cf_storeSetHit; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_158 = s0_int_iss_select & io_ldin_bits_uop_cf_loadWaitStrict; // @[LoadUnit.scala 419:22 483:38]
  wire [4:0] _GEN_159 = s0_int_iss_select ? io_ldin_bits_uop_cf_ssid : 5'h0; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_160 = s0_int_iss_select & io_ldin_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 419:22 483:38]
  wire [2:0] _GEN_161 = s0_int_iss_select ? io_ldin_bits_uop_cf_ftqPtr_value : 3'h0; // @[LoadUnit.scala 419:22 483:38]
  wire [2:0] _GEN_162 = s0_int_iss_select ? io_ldin_bits_uop_cf_ftqOffset : 3'h0; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_173 = s0_int_iss_select & io_ldin_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_174 = s0_int_iss_select & io_ldin_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 419:22 483:38]
  wire [5:0] _GEN_205 = s0_int_iss_select ? io_ldin_bits_uop_pdest : 6'h0; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_208 = s0_int_iss_select & io_ldin_bits_uop_lqIdx_flag; // @[LoadUnit.scala 419:22 483:38]
  wire [3:0] _GEN_209 = s0_int_iss_select ? io_ldin_bits_uop_lqIdx_value : 4'h0; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_210 = s0_int_iss_select & io_ldin_bits_uop_sqIdx_flag; // @[LoadUnit.scala 419:22 483:38]
  wire [3:0] _GEN_211 = s0_int_iss_select ? io_ldin_bits_uop_sqIdx_value : 4'h0; // @[LoadUnit.scala 419:22 483:38]
  wire  _GEN_224 = s0_int_iss_select ? 1'h0 : _GEN_110; // @[LoadUnit.scala 420:22 483:38]
  wire [3:0] _GEN_226 = s0_int_iss_select ? io_rsIdx : 4'h0; // @[LoadUnit.scala 422:22 483:38]
  wire [22:0] _GEN_235 = s0_hw_prf ? 23'h0 : _GEN_115; // @[LoadUnit.scala 399:22 482:38]
  wire  _GEN_344 = s0_hw_prf ? 1'h0 : _GEN_224; // @[LoadUnit.scala 401:22 482:38]
  wire  _GEN_345 = s0_hw_prf ? 1'h0 : s0_int_iss_select; // @[LoadUnit.scala 402:22 482:38]
  wire [3:0] _GEN_346 = s0_hw_prf ? 4'h0 : _GEN_226; // @[LoadUnit.scala 403:22 482:38]
  wire [22:0] _GEN_355 = s0_ld_rep_select ? _s0_mask_T_13 : _GEN_235; // @[LoadUnit.scala 380:22 481:38]
  wire  _GEN_372 = s0_ld_rep_select & io_replay_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 381:22 481:38]
  wire  _GEN_381 = s0_ld_rep_select & io_replay_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 381:22 481:38]
  wire  _GEN_382 = s0_ld_rep_select & io_replay_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 381:22 481:38]
  wire  _GEN_385 = s0_ld_rep_select & io_replay_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 381:22 481:38]
  wire [3:0] _GEN_451 = s0_ld_rep_select ? io_replay_bits_uop_sqIdx_value : _GEN_211; // @[LoadUnit.scala 381:22 481:38]
  wire  _GEN_465 = s0_ld_rep_select | _GEN_345; // @[LoadUnit.scala 383:22 481:38]
  wire [22:0] _GEN_478 = s0_ld_fast_rep_select ? {{7'd0}, io_fast_rep_in_bits_mask} : _GEN_355; // @[LoadUnit.scala 361:22 480:38]
  wire [3:0] _GEN_574 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_uop_sqIdx_value : _GEN_451; // @[LoadUnit.scala 362:22 480:38]
  wire  _GEN_588 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_hasROBEntry : _GEN_465; // @[LoadUnit.scala 364:22 480:38]
  wire  _GEN_595 = s0_ld_fast_rep_select ? io_fast_rep_in_bits_isLoadReplay : s0_ld_rep_select; // @[LoadUnit.scala 370:22 480:38]
  wire [22:0] _GEN_601 = s0_super_ld_rep_select ? _s0_mask_T_13 : _GEN_478; // @[LoadUnit.scala 380:22 479:38]
  wire [3:0] s0_uop_sqIdx_value = s0_super_ld_rep_select ? io_replay_bits_uop_sqIdx_value : _GEN_574; // @[LoadUnit.scala 381:22 479:38]
  wire  s0_has_rob_entry = s0_super_ld_rep_select | _GEN_588; // @[LoadUnit.scala 383:22 479:38]
  wire  s0_ld_rep = s0_super_ld_rep_select | _GEN_595; // @[LoadUnit.scala 389:22 479:38]
  wire  _s0_addr_aligned_T_2 = ~s0_vaddr[0]; // @[LoadUnit.scala 496:34]
  wire  _s0_addr_aligned_T_4 = s0_vaddr[1:0] == 2'h0; // @[LoadUnit.scala 497:34]
  wire  _s0_addr_aligned_T_6 = s0_vaddr[2:0] == 3'h0; // @[LoadUnit.scala 498:34]
  wire  _s0_addr_aligned_T_7 = 2'h0 == s0_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_addr_aligned_T_8 = 2'h1 == s0_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_addr_aligned_T_9 = 2'h2 == s0_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_addr_aligned_T_10 = 2'h3 == s0_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  s0_addr_aligned = _s0_addr_aligned_T_7 | _s0_addr_aligned_T_8 & _s0_addr_aligned_T_2 | _s0_addr_aligned_T_9 &
    _s0_addr_aligned_T_4 | _s0_addr_aligned_T_10 & _s0_addr_aligned_T_6; // @[Mux.scala 27:73]
  wire  s0_out_uop_cf_exceptionVec_4 = ~s0_addr_aligned; // @[LoadUnit.scala 516:53]
  wire  _io_fast_rep_in_ready_T = s0_can_go & io_dcache_req_ready; // @[LoadUnit.scala 526:38]
  wire  _s1_fire_T = ~s1_kill; // @[LoadUnit.scala 563:35]
  wire  s1_fire = s1_valid & ~s1_kill & s1_can_go; // @[LoadUnit.scala 563:44]
  wire  _GEN_724 = s1_kill ? 1'h0 : s1_valid; // @[LoadUnit.scala 568:23 558:30 568:34]
  wire  _GEN_725 = s1_fire ? 1'h0 : _GEN_724; // @[LoadUnit.scala 567:{23,34}]
  reg  s1_in_ruop_cf_exceptionVec_4; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_in_ruop_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_in_ruop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_in_ruop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_in_ruop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg  s1_in_ruop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_in_ruop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] s1_in_ruop_pdest; // @[Reg.scala 16:16]
  reg  s1_in_ruop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_in_ruop_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_in_ruop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_in_ruop_sqIdx_value; // @[Reg.scala 16:16]
  reg [15:0] s1_in_rmask; // @[Reg.scala 16:16]
  reg [3:0] s1_in_rrsIdx; // @[Reg.scala 16:16]
  reg  s1_in_risPrefetch; // @[Reg.scala 16:16]
  reg  s1_in_risHWPrefetch; // @[Reg.scala 16:16]
  reg  s1_in_rhasROBEntry; // @[Reg.scala 16:16]
  reg  s1_in_risLoadReplay; // @[Reg.scala 16:16]
  reg [1:0] s1_in_rmshrid; // @[Reg.scala 16:16]
  reg  s1_in_rforward_tlDchannel; // @[Reg.scala 16:16]
  reg [2:0] s1_in_rschedIndex; // @[Reg.scala 16:16]
  wire [15:0] s0_mask = _GEN_601[15:0]; // @[LoadUnit.scala 176:30]
  wire  s1_out_uop_cf_exceptionVec_5 = ~s1_late_kill ? io_tlb_resp_bits_excp_0_af_ld : s1_late_kill; // @[LoadUnit.scala 643:24 647:49 650:52]
  wire  s1_in_uop_cf_exceptionVec_4 = s1_try_ptr_chasing ? 1'h0 : s1_in_ruop_cf_exceptionVec_4; // @[LoadUnit.scala 569:11 683:31 686:27]
  wire  s1_out_uop_cf_exceptionVec_4 = ~s1_late_kill & s1_in_uop_cf_exceptionVec_4; // @[LoadUnit.scala 643:24 633:28 649:52]
  wire  s1_in_uop_cf_exceptionVec_13 = s1_try_ptr_chasing ? 1'h0 : s1_in_ruop_cf_exceptionVec_13; // @[LoadUnit.scala 569:11 683:31 686:27]
  wire  s1_out_uop_cf_exceptionVec_13 = ~s1_late_kill ? io_tlb_resp_bits_excp_0_pf_ld : s1_in_uop_cf_exceptionVec_13; // @[LoadUnit.scala 643:24 633:28 646:49]
  wire [15:0] _s1_exception_T = {2'h0,s1_out_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,s1_out_uop_cf_exceptionVec_5,
    s1_out_uop_cf_exceptionVec_4,4'h0}; // @[LoadUnit.scala 581:88]
  wire  s1_exception = |_s1_exception_T; // @[LoadUnit.scala 581:95]
  wire  _s1_sw_prf_T = ~s1_in_risHWPrefetch; // @[LoadUnit.scala 585:39]
  wire  s1_sw_prf = s1_in_risPrefetch & ~s1_in_risHWPrefetch; // @[LoadUnit.scala 585:36]
  wire  _T_8 = ~io_tlb_resp_bits_miss; // @[LoadUnit.scala 594:53]
  wire  _io_sbuffer_valid_T_3 = ~(s1_exception | io_tlb_resp_bits_miss | s1_kill | s1_in_risPrefetch); // @[LoadUnit.scala 607:35]
  wire  s1_nuke_differentFlag = s1_in_uop_robIdx_flag ^ io_stld_nuke_query_0_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_nuke_compare = s1_in_uop_robIdx_value > io_stld_nuke_query_0_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_nuke_T = s1_nuke_differentFlag ^ s1_nuke_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_nuke_T_1 = io_stld_nuke_query_0_valid & _s1_nuke_T; // @[LoadUnit.scala 626:52]
  wire [35:0] _s1_paddr_dup_lsu_T_1 = {io_tlb_resp_bits_paddr_0[35:6],s1_vaddr_lo}; // @[Cat.scala 31:58]
  wire [35:0] s1_paddr_dup_lsu = s1_try_ptr_chasing ? _s1_paddr_dup_lsu_T_1 : io_tlb_resp_bits_paddr_0; // @[LoadUnit.scala 591:23 683:31 690:27]
  wire  _s1_nuke_T_4 = s1_paddr_dup_lsu[35:3] == io_stld_nuke_query_0_bits_paddr[35:3]; // @[LoadUnit.scala 629:58]
  wire  _s1_nuke_T_5 = _s1_nuke_T_1 & _s1_nuke_T_4; // @[LoadUnit.scala 627:85]
  wire [15:0] _s1_nuke_T_6 = s1_in_rmask & io_stld_nuke_query_0_bits_mask; // @[LoadUnit.scala 630:36]
  wire  _s1_nuke_T_7 = |_s1_nuke_T_6; // @[LoadUnit.scala 630:71]
  wire  _s1_nuke_T_8 = _s1_nuke_T_5 & _s1_nuke_T_7; // @[LoadUnit.scala 629:112]
  wire  s1_nuke_differentFlag_1 = s1_in_uop_robIdx_flag ^ io_stld_nuke_query_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_nuke_compare_1 = s1_in_uop_robIdx_value > io_stld_nuke_query_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_nuke_T_9 = s1_nuke_differentFlag_1 ^ s1_nuke_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_nuke_T_10 = io_stld_nuke_query_1_valid & _s1_nuke_T_9; // @[LoadUnit.scala 626:52]
  wire  _s1_nuke_T_13 = s1_paddr_dup_lsu[35:3] == io_stld_nuke_query_1_bits_paddr[35:3]; // @[LoadUnit.scala 629:58]
  wire  _s1_nuke_T_14 = _s1_nuke_T_10 & _s1_nuke_T_13; // @[LoadUnit.scala 627:85]
  wire [15:0] _s1_nuke_T_15 = s1_in_rmask & io_stld_nuke_query_1_bits_mask; // @[LoadUnit.scala 630:36]
  wire  _s1_nuke_T_16 = |_s1_nuke_T_15; // @[LoadUnit.scala 630:71]
  wire  _s1_nuke_T_17 = _s1_nuke_T_14 & _s1_nuke_T_16; // @[LoadUnit.scala 629:112]
  wire [1:0] _s1_nuke_T_18 = {_s1_nuke_T_17,_s1_nuke_T_8}; // @[LoadUnit.scala 631:27]
  wire  s1_nuke = |_s1_nuke_T_18 & _T_8; // @[LoadUnit.scala 631:38]
  wire  s1_out_rep_info_cause_9 = s1_nuke & ~s1_sw_prf; // @[LoadUnit.scala 640:39]
  wire  _s1_kill_T_7 = io_ldin_valid | io_replay_valid | io_l2l_fwd_in_valid | io_fast_rep_in_valid; // @[LoadUnit.scala 666:98]
  wire  _s1_addr_mismatch_T_2 = |io_ld_fast_imm[11:6]; // @[LoadUnit.scala 672:89]
  wire  _GEN_1052 = s1_try_ptr_chasing | _io_fast_rep_in_ready_T & _s0_low_conf_prf_ready_T_6; // @[LoadUnit.scala 537:17 699:33 700:23]
  wire [15:0] _s1_sqIdx_mask_T = 16'h1 << s0_uop_sqIdx_value; // @[OneHot.scala 57:35]
  reg [11:0] s1_sqIdx_mask; // @[LoadUnit.scala 706:30]
  wire [15:0] _io_lsq_forward_sqIdxMask_T = 16'h1 << io_ldin_bits_uop_sqIdx_value; // @[OneHot.scala 57:35]
  wire [11:0] _io_lsq_forward_sqIdxMask_T_3 = _io_lsq_forward_sqIdxMask_T[11:0] - 12'h1; // @[BitUtils.scala 180:75]
  wire  _io_forward_mshr_valid_T = s1_valid & s1_in_rforward_tlDchannel; // @[LoadUnit.scala 717:38]
  wire  _s2_fire_T = ~s2_kill; // @[LoadUnit.scala 735:31]
  wire  s2_fire = s2_valid & ~s2_kill & s2_can_go; // @[LoadUnit.scala 735:40]
  wire  _GEN_1056 = s2_kill ? 1'h0 : s2_valid; // @[LoadUnit.scala 741:23 730:26 741:34]
  wire  _GEN_1057 = s2_fire ? 1'h0 : _GEN_1056; // @[LoadUnit.scala 740:{23,34}]
  reg  s2_in_ruop_cf_exceptionVec_4; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_exceptionVec_5; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s2_in_ruop_cf_ssid; // @[Reg.scala 16:16]
  reg  s2_in_ruop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s2_in_ruop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s2_in_ruop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [6:0] s2_in_ruop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s2_in_ruop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s2_in_ruop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] s2_in_ruop_pdest; // @[Reg.scala 16:16]
  reg  s2_in_ruop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_in_ruop_lqIdx_value; // @[Reg.scala 16:16]
  reg  s2_in_ruop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_in_ruop_sqIdx_value; // @[Reg.scala 16:16]
  reg [38:0] s2_in_rvaddr; // @[Reg.scala 16:16]
  reg [35:0] s2_in_rpaddr; // @[Reg.scala 16:16]
  reg [15:0] s2_in_rmask; // @[Reg.scala 16:16]
  reg  s2_in_rtlbMiss; // @[Reg.scala 16:16]
  reg [3:0] s2_in_rrsIdx; // @[Reg.scala 16:16]
  reg  s2_in_risPrefetch; // @[Reg.scala 16:16]
  reg  s2_in_risHWPrefetch; // @[Reg.scala 16:16]
  reg  s2_in_rhasROBEntry; // @[Reg.scala 16:16]
  reg  s2_in_risLoadReplay; // @[Reg.scala 16:16]
  reg [1:0] s2_in_rmshrid; // @[Reg.scala 16:16]
  reg  s2_in_rforward_tlDchannel; // @[Reg.scala 16:16]
  reg  s2_in_rlateKill; // @[Reg.scala 16:16]
  reg [2:0] s2_in_rschedIndex; // @[Reg.scala 16:16]
  reg  s2_in_rrep_info_cause_9; // @[Reg.scala 16:16]
  reg  s2_static_pm_valid; // @[LoadUnit.scala 745:29]
  reg  s2_static_pm_bits; // @[LoadUnit.scala 745:29]
  wire  s2_pmp_ld = s2_static_pm_valid ? 1'h0 : io_pmp_ld; // @[LoadUnit.scala 746:29 747:18]
  wire  s2_pmp_mmio = s2_static_pm_valid ? s2_static_pm_bits : io_pmp_mmio; // @[LoadUnit.scala 746:29 750:18]
  wire  _T_15 = ~s2_in_rlateKill; // @[LoadUnit.scala 759:9]
  wire  _GEN_1272 = s2_in_risPrefetch | s2_in_rtlbMiss ? 1'h0 : s2_in_ruop_cf_exceptionVec_4; // @[LoadUnit.scala 762:36 763:24]
  wire  _GEN_1273 = s2_in_risPrefetch | s2_in_rtlbMiss ? 1'h0 : s2_in_ruop_cf_exceptionVec_5 | s2_pmp_ld; // @[LoadUnit.scala 762:36 763:24 760:39]
  wire  _GEN_1281 = s2_in_risPrefetch | s2_in_rtlbMiss ? 1'h0 : s2_in_ruop_cf_exceptionVec_13; // @[LoadUnit.scala 762:36 763:24]
  wire  s2_exception_vec_5 = ~s2_in_rlateKill ? _GEN_1273 : s2_in_ruop_cf_exceptionVec_5; // @[LoadUnit.scala 759:26]
  wire  s2_exception_vec_4 = ~s2_in_rlateKill ? _GEN_1272 : s2_in_ruop_cf_exceptionVec_4; // @[LoadUnit.scala 759:26]
  wire  s2_exception_vec_13 = ~s2_in_rlateKill ? _GEN_1281 : s2_in_ruop_cf_exceptionVec_13; // @[LoadUnit.scala 759:26]
  wire [15:0] _s2_exception_T = {2'h0,s2_exception_vec_13,1'h0,4'h0,2'h0,s2_exception_vec_5,s2_exception_vec_4,4'h0}; // @[LoadUnit.scala 766:71]
  wire  s2_exception = |_s2_exception_T; // @[LoadUnit.scala 766:78]
  wire  _all_match_T_1 = s1_in_rmshrid == io_tl_d_channel_mshrid; // @[DCacheWrapper.scala 630:29]
  wire  _all_match_T_2 = _io_forward_mshr_valid_T & io_tl_d_channel_valid & _all_match_T_1; // @[DCacheWrapper.scala 629:40]
  wire  _all_match_T_4 = s1_paddr_dup_lsu[5] == io_tl_d_channel_last; // @[DCacheWrapper.scala 631:48]
  reg  s2_fwd_frm_d_chan; // @[DCacheWrapper.scala 633:28]
  reg [7:0] s2_fwd_data_frm_d_chan_0; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_1; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_2; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_3; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_4; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_5; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_6; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_7; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_8; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_9; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_10; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_11; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_12; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_13; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_14; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s2_fwd_data_frm_d_chan_15; // @[DCacheWrapper.scala 634:30]
  wire [1:0] block_idx = s1_paddr_dup_lsu[4:3]; // @[DCacheWrapper.scala 636:30]
  wire [63:0] block_data__0 = io_tl_d_channel_data[63:0]; // @[DCacheWrapper.scala 639:28]
  wire [63:0] block_data__1 = io_tl_d_channel_data[127:64]; // @[DCacheWrapper.scala 639:28]
  wire [63:0] block_data__2 = io_tl_d_channel_data[191:128]; // @[DCacheWrapper.scala 639:28]
  wire [63:0] block_data__3 = io_tl_d_channel_data[255:192]; // @[DCacheWrapper.scala 639:28]
  wire [63:0] _GEN_1301 = 2'h1 == block_idx ? block_data__1 : block_data__0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1302 = 2'h2 == block_idx ? block_data__2 : _GEN_1301; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1303 = 2'h3 == block_idx ? block_data__3 : _GEN_1302; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_1 = {_GEN_1303,_GEN_1303}; // @[Cat.scala 31:58]
  wire [1:0] _selected_data_T_3 = block_idx + 2'h1; // @[DCacheWrapper.scala 642:97]
  wire [63:0] _GEN_1305 = 2'h1 == _selected_data_T_3 ? block_data__1 : block_data__0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1306 = 2'h2 == _selected_data_T_3 ? block_data__2 : _GEN_1305; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1307 = 2'h3 == _selected_data_T_3 ? block_data__3 : _GEN_1306; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_4 = {_GEN_1307,_GEN_1303}; // @[Cat.scala 31:58]
  wire [127:0] selected_data = s1_paddr_dup_lsu[3] ? _selected_data_T_1 : _selected_data_T_4; // @[DCacheWrapper.scala 642:25]
  wire  s2_fwd_frm_d_chan_or_mshr = io_forward_mshr_forward_result_valid & (s2_fwd_frm_d_chan |
    io_forward_mshr_forward_mshr); // @[LoadUnit.scala 770:53]
  wire  _s2_mmio_T = ~s2_in_risPrefetch; // @[LoadUnit.scala 776:26]
  wire  _s2_mmio_T_1 = ~s2_in_risPrefetch & s2_pmp_mmio; // @[LoadUnit.scala 776:34]
  wire  _s2_mmio_T_2 = ~s2_exception; // @[LoadUnit.scala 778:26]
  wire  _s2_mmio_T_3 = _s2_mmio_T_1 & _s2_mmio_T_2; // @[LoadUnit.scala 777:44]
  wire  _s2_mmio_T_4 = ~s2_in_rtlbMiss; // @[LoadUnit.scala 779:26]
  wire  s2_mmio = _s2_mmio_T_3 & _s2_mmio_T_4; // @[LoadUnit.scala 778:40]
  wire  s2_mem_amb = s2_in_ruop_cf_storeSetHit & io_lsq_forward_addrInvalid; // @[LoadUnit.scala 782:51]
  wire  _s2_dcache_miss_T = ~s2_fwd_frm_d_chan_or_mshr; // @[LoadUnit.scala 788:26]
  wire  _s2_dcache_miss_T_1 = io_dcache_resp_bits_miss & _s2_dcache_miss_T; // @[LoadUnit.scala 787:51]
  wire  s2_fwd_mask_15 = io_lsq_forward_forwardMask_15 | io_sbuffer_forwardMask_15; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_14 = io_lsq_forward_forwardMask_14 | io_sbuffer_forwardMask_14; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_13 = io_lsq_forward_forwardMask_13 | io_sbuffer_forwardMask_13; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_12 = io_lsq_forward_forwardMask_12 | io_sbuffer_forwardMask_12; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_11 = io_lsq_forward_forwardMask_11 | io_sbuffer_forwardMask_11; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_10 = io_lsq_forward_forwardMask_10 | io_sbuffer_forwardMask_10; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_9 = io_lsq_forward_forwardMask_9 | io_sbuffer_forwardMask_9; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_8 = io_lsq_forward_forwardMask_8 | io_sbuffer_forwardMask_8; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_7 = io_lsq_forward_forwardMask_7 | io_sbuffer_forwardMask_7; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_6 = io_lsq_forward_forwardMask_6 | io_sbuffer_forwardMask_6; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_5 = io_lsq_forward_forwardMask_5 | io_sbuffer_forwardMask_5; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_4 = io_lsq_forward_forwardMask_4 | io_sbuffer_forwardMask_4; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_3 = io_lsq_forward_forwardMask_3 | io_sbuffer_forwardMask_3; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_2 = io_lsq_forward_forwardMask_2 | io_sbuffer_forwardMask_2; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_1 = io_lsq_forward_forwardMask_1 | io_sbuffer_forwardMask_1; // @[LoadUnit.scala 888:53]
  wire  s2_fwd_mask_0 = io_lsq_forward_forwardMask_0 | io_sbuffer_forwardMask_0; // @[LoadUnit.scala 888:53]
  wire [7:0] s2_full_fwd_lo = {s2_fwd_mask_7,s2_fwd_mask_6,s2_fwd_mask_5,s2_fwd_mask_4,s2_fwd_mask_3,s2_fwd_mask_2,
    s2_fwd_mask_1,s2_fwd_mask_0}; // @[LoadUnit.scala 885:33]
  wire [15:0] _s2_full_fwd_T = {s2_fwd_mask_15,s2_fwd_mask_14,s2_fwd_mask_13,s2_fwd_mask_12,s2_fwd_mask_11,
    s2_fwd_mask_10,s2_fwd_mask_9,s2_fwd_mask_8,s2_full_fwd_lo}; // @[LoadUnit.scala 885:33]
  wire [15:0] _s2_full_fwd_T_1 = ~_s2_full_fwd_T; // @[LoadUnit.scala 885:20]
  wire [15:0] _s2_full_fwd_T_2 = _s2_full_fwd_T_1 & s2_in_rmask; // @[LoadUnit.scala 885:48]
  wire  _s2_full_fwd_T_4 = ~io_lsq_forward_dataInvalid; // @[LoadUnit.scala 885:73]
  wire  s2_full_fwd = _s2_full_fwd_T_2 == 16'h0 & ~io_lsq_forward_dataInvalid; // @[LoadUnit.scala 885:70]
  wire  _s2_dcache_miss_T_2 = ~s2_full_fwd; // @[LoadUnit.scala 789:26]
  wire  s2_dcache_miss = _s2_dcache_miss_T_1 & _s2_dcache_miss_T_2; // @[LoadUnit.scala 788:53]
  wire  _s2_mq_nack_T_1 = io_dcache_s2_mq_nack & _s2_dcache_miss_T; // @[LoadUnit.scala 791:47]
  wire  s2_mq_nack = _s2_mq_nack_T_1 & _s2_dcache_miss_T_2; // @[LoadUnit.scala 792:53]
  wire  _s2_bank_conflict_T_1 = io_dcache_s2_bank_conflict & _s2_dcache_miss_T; // @[LoadUnit.scala 795:53]
  wire  s2_bank_conflict = _s2_bank_conflict_T_1 & _s2_dcache_miss_T_2; // @[LoadUnit.scala 796:53]
  wire  _s2_rar_nack_T = ~io_lsq_ldld_nuke_query_req_ready; // @[LoadUnit.scala 804:26]
  wire  s2_rar_nack = io_lsq_ldld_nuke_query_req_valid & _s2_rar_nack_T; // @[LoadUnit.scala 803:59]
  wire  _s2_raw_nack_T = ~io_lsq_stld_nuke_query_req_ready; // @[LoadUnit.scala 807:26]
  wire  s2_raw_nack = io_lsq_stld_nuke_query_req_valid & _s2_raw_nack_T; // @[LoadUnit.scala 806:59]
  wire  s2_nuke_differentFlag = s2_in_ruop_robIdx_flag ^ io_stld_nuke_query_0_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_nuke_compare = s2_in_ruop_robIdx_value > io_stld_nuke_query_0_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_nuke_T = s2_nuke_differentFlag ^ s2_nuke_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_nuke_T_1 = io_stld_nuke_query_0_valid & _s2_nuke_T; // @[LoadUnit.scala 815:55]
  wire  _s2_nuke_T_4 = s2_in_rpaddr[35:3] == io_stld_nuke_query_0_bits_paddr[35:3]; // @[LoadUnit.scala 818:56]
  wire  _s2_nuke_T_5 = _s2_nuke_T_1 & _s2_nuke_T_4; // @[LoadUnit.scala 816:88]
  wire [15:0] _s2_nuke_T_6 = s2_in_rmask & io_stld_nuke_query_0_bits_mask; // @[LoadUnit.scala 819:39]
  wire  _s2_nuke_T_7 = |_s2_nuke_T_6; // @[LoadUnit.scala 819:74]
  wire  _s2_nuke_T_8 = _s2_nuke_T_5 & _s2_nuke_T_7; // @[LoadUnit.scala 818:110]
  wire  s2_nuke_differentFlag_1 = s2_in_ruop_robIdx_flag ^ io_stld_nuke_query_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_nuke_compare_1 = s2_in_ruop_robIdx_value > io_stld_nuke_query_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_nuke_T_9 = s2_nuke_differentFlag_1 ^ s2_nuke_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_nuke_T_10 = io_stld_nuke_query_1_valid & _s2_nuke_T_9; // @[LoadUnit.scala 815:55]
  wire  _s2_nuke_T_13 = s2_in_rpaddr[35:3] == io_stld_nuke_query_1_bits_paddr[35:3]; // @[LoadUnit.scala 818:56]
  wire  _s2_nuke_T_14 = _s2_nuke_T_10 & _s2_nuke_T_13; // @[LoadUnit.scala 816:88]
  wire [15:0] _s2_nuke_T_15 = s2_in_rmask & io_stld_nuke_query_1_bits_mask; // @[LoadUnit.scala 819:39]
  wire  _s2_nuke_T_16 = |_s2_nuke_T_15; // @[LoadUnit.scala 819:74]
  wire  _s2_nuke_T_17 = _s2_nuke_T_14 & _s2_nuke_T_16; // @[LoadUnit.scala 818:110]
  wire [1:0] _s2_nuke_T_18 = {_s2_nuke_T_17,_s2_nuke_T_8}; // @[LoadUnit.scala 820:29]
  wire  s2_nuke = |_s2_nuke_T_18 & _s2_mmio_T_4 | s2_in_rrep_info_cause_9; // @[LoadUnit.scala 820:56]
  reg  s2_cache_tag_error_REG; // @[LoadUnit.scala 823:35]
  wire  s2_cache_tag_error = s2_cache_tag_error_REG & io_dcache_resp_bits_tag_error; // @[LoadUnit.scala 823:67]
  wire  _s2_troublem_T_1 = ~s2_mmio; // @[LoadUnit.scala 827:28]
  wire  _s2_troublem_T_2 = _s2_mmio_T_2 & _s2_troublem_T_1; // @[LoadUnit.scala 826:42]
  wire  _s2_troublem_T_4 = _s2_troublem_T_2 & _s2_mmio_T; // @[LoadUnit.scala 827:37]
  wire  s2_troublem = _s2_troublem_T_4 & _T_15; // @[LoadUnit.scala 828:36]
  wire  _s2_dcache_fast_rep_T = ~s2_dcache_miss; // @[LoadUnit.scala 836:43]
  wire  s2_dcache_fast_rep = s2_mq_nack | ~s2_dcache_miss & s2_bank_conflict; // @[LoadUnit.scala 836:40]
  wire  _s2_nuke_fast_rep_T = ~s2_mq_nack; // @[LoadUnit.scala 837:28]
  wire  _s2_nuke_fast_rep_T_2 = ~s2_mq_nack & _s2_dcache_fast_rep_T; // @[LoadUnit.scala 837:40]
  wire  _s2_nuke_fast_rep_T_3 = ~s2_bank_conflict; // @[LoadUnit.scala 839:28]
  wire  _s2_nuke_fast_rep_T_4 = _s2_nuke_fast_rep_T_2 & _s2_nuke_fast_rep_T_3; // @[LoadUnit.scala 838:44]
  wire  _s2_nuke_fast_rep_T_7 = ~s2_rar_nack; // @[LoadUnit.scala 841:28]
  wire  _s2_nuke_fast_rep_T_8 = _s2_nuke_fast_rep_T_4 & _s2_nuke_fast_rep_T_7; // @[LoadUnit.scala 840:46]
  wire  _s2_nuke_fast_rep_T_9 = ~s2_raw_nack; // @[LoadUnit.scala 842:28]
  wire  _s2_nuke_fast_rep_T_10 = _s2_nuke_fast_rep_T_8 & _s2_nuke_fast_rep_T_9; // @[LoadUnit.scala 841:41]
  wire  s2_nuke_fast_rep = _s2_nuke_fast_rep_T_10 & s2_nuke; // @[LoadUnit.scala 842:41]
  wire  _s2_hint_fast_rep_T_1 = _s2_nuke_fast_rep_T & s2_dcache_miss; // @[LoadUnit.scala 845:39]
  wire  _s2_hint_fast_rep_T_2 = _s2_hint_fast_rep_T_1 & io_dcache_resp_bits_handled; // @[LoadUnit.scala 846:42]
  wire  _s2_hint_fast_rep_T_3 = _s2_hint_fast_rep_T_2 & io_l2_hint_valid; // @[LoadUnit.scala 847:44]
  wire  _s2_hint_fast_rep_T_4 = io_l2_hint_bits_sourceId == io_dcache_resp_bits_mshr_id; // @[LoadUnit.scala 849:52]
  wire  s2_hint_fast_rep = _s2_hint_fast_rep_T_3 & _s2_hint_fast_rep_T_4; // @[LoadUnit.scala 848:44]
  wire  _s2_fast_rep_T_2 = ~s2_mem_amb & _s2_mmio_T_4; // @[LoadUnit.scala 852:33]
  wire  _s2_fast_rep_T_4 = _s2_fast_rep_T_2 & _s2_full_fwd_T_4; // @[LoadUnit.scala 853:34]
  wire  _s2_fast_rep_T_6 = s2_dcache_fast_rep | s2_hint_fast_rep | s2_nuke_fast_rep; // @[LoadUnit.scala 855:61]
  wire  _s2_fast_rep_T_7 = _s2_fast_rep_T_4 & _s2_fast_rep_T_6; // @[LoadUnit.scala 854:34]
  wire  _s2_can_query_T_5 = ~s2_dcache_fast_rep; // @[LoadUnit.scala 862:22]
  wire  _s2_can_query_T_6 = _s2_fast_rep_T_4 & _s2_can_query_T_5; // @[LoadUnit.scala 861:35]
  wire  s2_can_query = _s2_can_query_T_6 & s2_troublem; // @[LoadUnit.scala 862:42]
  wire  s2_data_fwded = s2_dcache_miss & (s2_full_fwd | s2_cache_tag_error); // @[LoadUnit.scala 865:38]
  wire  _io_lsq_ldld_nuke_query_req_bits_data_valid_T = s2_full_fwd | io_forward_mshr_forward_result_valid; // @[LoadUnit.scala 872:65]
  wire  s2_out_uop_ctrl_fpWen = s2_in_ruop_ctrl_fpWen & _s2_mmio_T_2; // @[LoadUnit.scala 901:54]
  wire  s2_out_miss = s2_dcache_miss & s2_troublem; // @[LoadUnit.scala 908:48]
  wire  s2_out_rep_info_cause_0 = s2_mem_amb & s2_troublem; // @[LoadUnit.scala 917:49]
  wire  s2_out_rep_info_cause_1 = s2_in_rtlbMiss & s2_troublem; // @[LoadUnit.scala 918:50]
  wire  s2_out_rep_info_cause_2 = io_lsq_forward_dataInvalid & s2_troublem; // @[LoadUnit.scala 919:50]
  wire  s2_out_rep_info_cause_3 = s2_mq_nack & s2_troublem; // @[LoadUnit.scala 920:49]
  wire  s2_out_rep_info_cause_6 = s2_bank_conflict & s2_troublem; // @[LoadUnit.scala 922:55]
  wire  s2_out_rep_info_cause_7 = s2_rar_nack & s2_troublem; // @[LoadUnit.scala 924:50]
  wire  s2_out_rep_info_cause_8 = s2_raw_nack & s2_troublem; // @[LoadUnit.scala 925:50]
  wire  s2_out_rep_info_cause_9 = s2_nuke & s2_troublem; // @[LoadUnit.scala 926:46]
  wire  s2_out_rep_info_last_beat = s2_in_rpaddr[5]; // @[LoadUnit.scala 932:49]
  wire  _io_feedback_fast_valid_T = ~s2_in_risLoadReplay; // @[LoadUnit.scala 943:45]
  wire  _io_feedback_fast_valid_T_1 = s2_valid & _io_feedback_fast_valid_T; // @[LoadUnit.scala 942:54]
  wire  _io_feedback_fast_valid_T_2 = _io_feedback_fast_valid_T_1 & io_lq_rep_full; // @[LoadUnit.scala 943:65]
  wire [9:0] _io_feedback_fast_valid_T_3 = {s2_out_rep_info_cause_9,s2_out_rep_info_cause_8,s2_out_rep_info_cause_7,
    s2_out_rep_info_cause_6,1'h0,s2_out_miss,s2_out_rep_info_cause_3,s2_out_rep_info_cause_2,s2_out_rep_info_cause_1,
    s2_out_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  _io_feedback_fast_valid_T_4 = |_io_feedback_fast_valid_T_3; // @[LoadUnit.scala 62:36]
  wire  _io_feedback_fast_valid_T_5 = _io_feedback_fast_valid_T_2 & _io_feedback_fast_valid_T_4; // @[LoadUnit.scala 944:60]
  wire  _io_feedback_fast_valid_T_7 = _io_feedback_fast_valid_T_5 & _s2_mmio_T_2; // @[LoadUnit.scala 945:70]
  wire  _io_feedback_fast_valid_T_8 = ~s2_in_risHWPrefetch; // @[LoadUnit.scala 947:45]
  wire  _io_fast_uop_valid_T_1 = ~io_dcache_s1_disable_fast_wakeup & s1_valid; // @[LoadUnit.scala 956:39]
  wire  _io_fast_uop_valid_T_3 = _io_fast_uop_valid_T_1 & _s1_fire_T; // @[LoadUnit.scala 957:14]
  wire  _io_fast_uop_valid_T_4 = ~io_tlb_resp_bits_fast_miss; // @[LoadUnit.scala 959:5]
  wire  _io_fast_uop_valid_T_5 = _io_fast_uop_valid_T_3 & _io_fast_uop_valid_T_4; // @[LoadUnit.scala 958:14]
  wire  _io_fast_uop_valid_T_6 = ~io_lsq_forward_dataInvalidFast; // @[LoadUnit.scala 960:5]
  reg  io_fast_uop_valid_REG; // @[LoadUnit.scala 955:31]
  reg  io_fast_uop_bits_REG_ctrl_rfWen; // @[LoadUnit.scala 962:30]
  reg [5:0] io_fast_uop_bits_REG_pdest; // @[LoadUnit.scala 962:30]
  reg [5:0] s2_ld_valid_dup; // @[LoadUnit.scala 991:32]
  reg  s3_in_uop_cf_exceptionVec_4; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_exceptionVec_5; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s3_in_uop_cf_ssid; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s3_in_uop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s3_in_uop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [6:0] s3_in_uop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s3_in_uop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s3_in_uop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] s3_in_uop_pdest; // @[Reg.scala 16:16]
  reg  s3_in_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s3_in_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg  s3_in_uop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s3_in_uop_sqIdx_value; // @[Reg.scala 16:16]
  reg [38:0] s3_in_vaddr; // @[Reg.scala 16:16]
  reg [35:0] s3_in_paddr; // @[Reg.scala 16:16]
  reg [15:0] s3_in_mask; // @[Reg.scala 16:16]
  reg  s3_in_miss; // @[Reg.scala 16:16]
  reg  s3_in_tlbMiss; // @[Reg.scala 16:16]
  reg  s3_in_mmio; // @[Reg.scala 16:16]
  reg [3:0] s3_in_rsIdx; // @[Reg.scala 16:16]
  reg  s3_in_hasROBEntry; // @[Reg.scala 16:16]
  reg  s3_in_isLoadReplay; // @[Reg.scala 16:16]
  reg  s3_in_handledByMSHR; // @[Reg.scala 16:16]
  reg  s3_in_lateKill; // @[Reg.scala 16:16]
  reg  s3_in_feedbacked; // @[Reg.scala 16:16]
  reg [2:0] s3_in_schedIndex; // @[Reg.scala 16:16]
  reg [1:0] s3_in_rep_info_mshr_id; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_full_fwd; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_data_inv_sq_idx_flag; // @[Reg.scala 16:16]
  reg [3:0] s3_in_rep_info_data_inv_sq_idx_value; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_addr_inv_sq_idx_flag; // @[Reg.scala 16:16]
  reg [3:0] s3_in_rep_info_addr_inv_sq_idx_value; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_last_beat; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_0; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_1; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_2; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_3; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_4; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_6; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_7; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_8; // @[Reg.scala 16:16]
  reg  s3_in_rep_info_cause_9; // @[Reg.scala 16:16]
  wire  _s3_dcache_rep_T = s2_dcache_fast_rep & s2_troublem; // @[LoadUnit.scala 1005:54]
  reg  s3_dcache_rep; // @[Reg.scala 16:16]
  reg [5:0] s3_ld_valid_dup; // @[Reg.scala 16:16]
  reg  s3_troublem; // @[LoadUnit.scala 1008:32]
  wire  _T_38 = s2_valid & s2_in_rforward_tlDchannel; // @[LoadUnit.scala 1013:86]
  wire  _all_match_T_6 = s2_in_rmshrid == io_tl_d_channel_mshrid; // @[DCacheWrapper.scala 630:29]
  wire  _all_match_T_7 = _T_38 & io_tl_d_channel_valid & _all_match_T_6; // @[DCacheWrapper.scala 629:40]
  wire  _all_match_T_9 = s2_out_rep_info_last_beat == io_tl_d_channel_last; // @[DCacheWrapper.scala 631:48]
  reg  s3_fwd_frm_d_chan; // @[DCacheWrapper.scala 633:28]
  reg [7:0] s3_fwd_data_frm_d_chan_0; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_1; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_2; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_3; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_4; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_5; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_6; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_7; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_8; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_9; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_10; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_11; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_12; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_13; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_14; // @[DCacheWrapper.scala 634:30]
  reg [7:0] s3_fwd_data_frm_d_chan_15; // @[DCacheWrapper.scala 634:30]
  wire [1:0] block_idx_1 = s2_in_rpaddr[4:3]; // @[DCacheWrapper.scala 636:30]
  wire [63:0] _GEN_1519 = 2'h1 == block_idx_1 ? block_data__1 : block_data__0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1520 = 2'h2 == block_idx_1 ? block_data__2 : _GEN_1519; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1521 = 2'h3 == block_idx_1 ? block_data__3 : _GEN_1520; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_7 = {_GEN_1521,_GEN_1521}; // @[Cat.scala 31:58]
  wire [1:0] _selected_data_T_9 = block_idx_1 + 2'h1; // @[DCacheWrapper.scala 642:97]
  wire [63:0] _GEN_1523 = 2'h1 == _selected_data_T_9 ? block_data__1 : block_data__0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1524 = 2'h2 == _selected_data_T_9 ? block_data__2 : _GEN_1523; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_1525 = 2'h3 == _selected_data_T_9 ? block_data__3 : _GEN_1524; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_10 = {_GEN_1525,_GEN_1521}; // @[Cat.scala 31:58]
  wire [127:0] selected_data_1 = s2_in_rpaddr[3] ? _selected_data_T_7 : _selected_data_T_10; // @[DCacheWrapper.scala 642:25]
  reg  s3_fwd_data_valid; // @[Reg.scala 16:16]
  wire  s3_fwd_frm_d_chan_valid = s3_fwd_frm_d_chan & s3_fwd_data_valid; // @[LoadUnit.scala 1015:52]
  wire  s3_nuke_differentFlag = s3_in_uop_robIdx_flag ^ io_stld_nuke_query_0_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s3_nuke_compare = s3_in_uop_robIdx_value > io_stld_nuke_query_0_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s3_nuke_T = s3_nuke_differentFlag ^ s3_nuke_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s3_nuke_T_1 = io_stld_nuke_query_0_valid & _s3_nuke_T; // @[LoadUnit.scala 1017:55]
  wire  _s3_nuke_T_4 = s3_in_paddr[35:3] == io_stld_nuke_query_0_bits_paddr[35:3]; // @[LoadUnit.scala 1020:56]
  wire  _s3_nuke_T_5 = _s3_nuke_T_1 & _s3_nuke_T_4; // @[LoadUnit.scala 1018:88]
  wire [15:0] _s3_nuke_T_6 = s3_in_mask & io_stld_nuke_query_0_bits_mask; // @[LoadUnit.scala 1021:39]
  wire  _s3_nuke_T_7 = |_s3_nuke_T_6; // @[LoadUnit.scala 1021:74]
  wire  _s3_nuke_T_8 = _s3_nuke_T_5 & _s3_nuke_T_7; // @[LoadUnit.scala 1020:110]
  wire  s3_nuke_differentFlag_1 = s3_in_uop_robIdx_flag ^ io_stld_nuke_query_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s3_nuke_compare_1 = s3_in_uop_robIdx_value > io_stld_nuke_query_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s3_nuke_T_9 = s3_nuke_differentFlag_1 ^ s3_nuke_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s3_nuke_T_10 = io_stld_nuke_query_1_valid & _s3_nuke_T_9; // @[LoadUnit.scala 1017:55]
  wire  _s3_nuke_T_13 = s3_in_paddr[35:3] == io_stld_nuke_query_1_bits_paddr[35:3]; // @[LoadUnit.scala 1020:56]
  wire  _s3_nuke_T_14 = _s3_nuke_T_10 & _s3_nuke_T_13; // @[LoadUnit.scala 1018:88]
  wire [15:0] _s3_nuke_T_15 = s3_in_mask & io_stld_nuke_query_1_bits_mask; // @[LoadUnit.scala 1021:39]
  wire  _s3_nuke_T_16 = |_s3_nuke_T_15; // @[LoadUnit.scala 1021:74]
  wire  _s3_nuke_T_17 = _s3_nuke_T_14 & _s3_nuke_T_16; // @[LoadUnit.scala 1020:110]
  wire [1:0] _s3_nuke_T_18 = {_s3_nuke_T_17,_s3_nuke_T_8}; // @[LoadUnit.scala 1022:29]
  wire  s3_nuke = |_s3_nuke_T_18 & ~s3_in_tlbMiss | s3_in_rep_info_cause_9; // @[LoadUnit.scala 1022:58]
  reg  s3_fast_rep_REG; // @[LoadUnit.scala 1099:25]
  wire  _s3_fast_rep_T = ~s3_in_feedbacked; // @[LoadUnit.scala 1100:18]
  wire  _s3_fast_rep_T_1 = s3_fast_rep_REG & _s3_fast_rep_T; // @[LoadUnit.scala 1099:39]
  wire  _s3_fast_rep_T_2 = ~s3_in_lateKill; // @[LoadUnit.scala 1101:18]
  wire  _s3_fast_rep_T_3 = _s3_fast_rep_T_1 & _s3_fast_rep_T_2; // @[LoadUnit.scala 1100:36]
  reg  s3_vp_match_fail_REG; // @[LoadUnit.scala 1048:33]
  wire  s3_vp_match_fail = s3_vp_match_fail_REG & s3_troublem; // @[LoadUnit.scala 1048:90]
  wire  _s3_ldld_rep_inst_T = io_lsq_ldld_nuke_query_resp_valid & io_lsq_ldld_nuke_query_resp_bits_rep_frm_fetch; // @[LoadUnit.scala 1050:41]
  reg  s3_ldld_rep_inst_REG; // @[LoadUnit.scala 1052:14]
  wire  s3_ldld_rep_inst = _s3_ldld_rep_inst_T & s3_ldld_rep_inst_REG; // @[LoadUnit.scala 1051:54]
  wire  s3_rep_frm_fetch = s3_vp_match_fail | s3_ldld_rep_inst; // @[LoadUnit.scala 1059:43]
  wire  _s3_fast_rep_T_4 = ~s3_rep_frm_fetch; // @[LoadUnit.scala 1102:18]
  wire  _s3_fast_rep_T_5 = _s3_fast_rep_T_3 & _s3_fast_rep_T_4; // @[LoadUnit.scala 1101:34]
  wire [15:0] _s3_exception_T = {2'h0,s3_in_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,s3_in_uop_cf_exceptionVec_5,
    s3_in_uop_cf_exceptionVec_4,4'h0}; // @[LoadUnit.scala 1065:80]
  wire  s3_exception = |_s3_exception_T; // @[LoadUnit.scala 1065:87]
  wire  _s3_fast_rep_T_6 = ~s3_exception; // @[LoadUnit.scala 1103:18]
  wire  s3_fast_rep = _s3_fast_rep_T_5 & _s3_fast_rep_T_6; // @[LoadUnit.scala 1102:36]
  wire  _io_fast_rep_out_valid_T_4 = ~s3_kill; // @[LoadUnit.scala 1026:55]
  wire  _io_lsq_ldin_bits_miss_T = ~s3_fwd_frm_d_chan_valid; // @[LoadUnit.scala 1031:42]
  wire  _io_lsq_ldin_bits_missDbUpdated_T = s2_fire & s2_in_rhasROBEntry; // @[LoadUnit.scala 1036:53]
  reg  s3_dly_ld_err_REG; // @[LoadUnit.scala 1040:71]
  wire  s3_dly_ld_err = (s3_in_lateKill | io_dcache_resp_bits_error_delayed) & s3_dly_ld_err_REG; // @[LoadUnit.scala 1040:61]
  wire  s3_rep_info_cause_6 = s3_in_rep_info_cause_6 & _io_lsq_ldin_bits_miss_T & s3_troublem; // @[LoadUnit.scala 1056:89]
  wire  s3_rep_info_cause_4 = s3_in_rep_info_cause_4 & _io_lsq_ldin_bits_miss_T & s3_troublem; // @[LoadUnit.scala 1057:87]
  wire  s3_rep_info_cause_9 = s3_nuke & s3_troublem; // @[LoadUnit.scala 1058:40]
  wire [9:0] _s3_sel_rep_cause_T = {s3_rep_info_cause_9,s3_in_rep_info_cause_8,s3_in_rep_info_cause_7,
    s3_rep_info_cause_6,1'h0,s3_rep_info_cause_4,s3_in_rep_info_cause_3,s3_in_rep_info_cause_2,s3_in_rep_info_cause_1,
    s3_in_rep_info_cause_0}; // @[LoadUnit.scala 1060:62]
  wire [9:0] _s3_sel_rep_cause_T_11 = _s3_sel_rep_cause_T[9] ? 10'h200 : 10'h0; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_12 = _s3_sel_rep_cause_T[8] ? 10'h100 : _s3_sel_rep_cause_T_11; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_13 = _s3_sel_rep_cause_T[7] ? 10'h80 : _s3_sel_rep_cause_T_12; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_14 = _s3_sel_rep_cause_T[6] ? 10'h40 : _s3_sel_rep_cause_T_13; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_15 = _s3_sel_rep_cause_T[5] ? 10'h20 : _s3_sel_rep_cause_T_14; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_16 = _s3_sel_rep_cause_T[4] ? 10'h10 : _s3_sel_rep_cause_T_15; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_17 = _s3_sel_rep_cause_T[3] ? 10'h8 : _s3_sel_rep_cause_T_16; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_18 = _s3_sel_rep_cause_T[2] ? 10'h4 : _s3_sel_rep_cause_T_17; // @[Mux.scala 47:70]
  wire [9:0] _s3_sel_rep_cause_T_19 = _s3_sel_rep_cause_T[1] ? 10'h2 : _s3_sel_rep_cause_T_18; // @[Mux.scala 47:70]
  wire [9:0] s3_sel_rep_cause = _s3_sel_rep_cause_T[0] ? 10'h1 : _s3_sel_rep_cause_T_19; // @[Mux.scala 47:70]
  wire  _s3_force_rep_T_1 = ~s3_in_uop_cf_exceptionVec_4; // @[LoadUnit.scala 1062:26]
  wire  _s3_force_rep_T_2 = s3_sel_rep_cause[1] & _s3_force_rep_T_1; // @[LoadUnit.scala 1061:66]
  wire  s3_force_rep = _s3_force_rep_T_2 & s3_troublem; // @[LoadUnit.scala 1062:73]
  wire [9:0] _s3_out_valid_T = {io_lsq_ldin_bits_rep_info_cause_9,io_lsq_ldin_bits_rep_info_cause_8,
    io_lsq_ldin_bits_rep_info_cause_7,io_lsq_ldin_bits_rep_info_cause_6,io_lsq_ldin_bits_rep_info_cause_5,
    io_lsq_ldin_bits_rep_info_cause_4,io_lsq_ldin_bits_rep_info_cause_3,io_lsq_ldin_bits_rep_info_cause_2,
    io_lsq_ldin_bits_rep_info_cause_1,io_lsq_ldin_bits_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  _s3_out_valid_T_1 = |_s3_out_valid_T; // @[LoadUnit.scala 62:36]
  wire  _s3_out_valid_T_2 = ~_s3_out_valid_T_1; // @[LoadUnit.scala 1073:46]
  wire  s3_out_valid = s3_valid & ~_s3_out_valid_T_1 & ~s3_in_mmio; // @[LoadUnit.scala 1073:82]
  wire  s3_out_bits_uop_cf_exceptionVec_4 = s3_force_rep ? 1'h0 : s3_in_uop_cf_exceptionVec_4; // @[LoadUnit.scala 1086:23 1074:31 1087:37]
  wire  s3_out_bits_uop_cf_exceptionVec_5 = s3_force_rep ? 1'h0 : s3_dly_ld_err | s3_in_uop_cf_exceptionVec_5; // @[LoadUnit.scala 1086:23 1087:37 1075:52]
  wire  s3_out_bits_uop_cf_exceptionVec_13 = s3_force_rep ? 1'h0 : s3_in_uop_cf_exceptionVec_13; // @[LoadUnit.scala 1086:23 1074:31 1087:37]
  wire  s3_fb_no_waiting = ~s3_in_isLoadReplay & ~(s3_fast_rep & io_fast_rep_out_ready) & _s3_fast_rep_T; // @[LoadUnit.scala 1105:89]
  wire  _s3_picked_data_frm_uncache_T_8 = 3'h0 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_9 = 3'h1 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_10 = 3'h2 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_11 = 3'h3 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_12 = 3'h4 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_13 = 3'h5 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_14 = 3'h6 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_uncache_T_15 = 3'h7 == io_lsq_ld_raw_data_addrOffset; // @[LookupTree.scala 24:34]
  wire [63:0] _s3_picked_data_frm_uncache_T_16 = _s3_picked_data_frm_uncache_T_8 ? io_lsq_ld_raw_data_lqData : 64'h0; // @[Mux.scala 27:73]
  wire [55:0] _s3_picked_data_frm_uncache_T_17 = _s3_picked_data_frm_uncache_T_9 ? io_lsq_ld_raw_data_lqData[63:8] : 56'h0
    ; // @[Mux.scala 27:73]
  wire [47:0] _s3_picked_data_frm_uncache_T_18 = _s3_picked_data_frm_uncache_T_10 ? io_lsq_ld_raw_data_lqData[63:16] : 48'h0
    ; // @[Mux.scala 27:73]
  wire [39:0] _s3_picked_data_frm_uncache_T_19 = _s3_picked_data_frm_uncache_T_11 ? io_lsq_ld_raw_data_lqData[63:24] : 40'h0
    ; // @[Mux.scala 27:73]
  wire [31:0] _s3_picked_data_frm_uncache_T_20 = _s3_picked_data_frm_uncache_T_12 ? io_lsq_ld_raw_data_lqData[63:32] : 32'h0
    ; // @[Mux.scala 27:73]
  wire [23:0] _s3_picked_data_frm_uncache_T_21 = _s3_picked_data_frm_uncache_T_13 ? io_lsq_ld_raw_data_lqData[63:40] : 24'h0
    ; // @[Mux.scala 27:73]
  wire [15:0] _s3_picked_data_frm_uncache_T_22 = _s3_picked_data_frm_uncache_T_14 ? io_lsq_ld_raw_data_lqData[63:48] : 16'h0
    ; // @[Mux.scala 27:73]
  wire [7:0] _s3_picked_data_frm_uncache_T_23 = _s3_picked_data_frm_uncache_T_15 ? io_lsq_ld_raw_data_lqData[63:56] : 8'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1743 = {{8'd0}, _s3_picked_data_frm_uncache_T_17}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_uncache_T_24 = _s3_picked_data_frm_uncache_T_16 | _GEN_1743; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1744 = {{16'd0}, _s3_picked_data_frm_uncache_T_18}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_uncache_T_25 = _s3_picked_data_frm_uncache_T_24 | _GEN_1744; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1745 = {{24'd0}, _s3_picked_data_frm_uncache_T_19}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_uncache_T_26 = _s3_picked_data_frm_uncache_T_25 | _GEN_1745; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1746 = {{32'd0}, _s3_picked_data_frm_uncache_T_20}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_uncache_T_27 = _s3_picked_data_frm_uncache_T_26 | _GEN_1746; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1747 = {{40'd0}, _s3_picked_data_frm_uncache_T_21}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_uncache_T_28 = _s3_picked_data_frm_uncache_T_27 | _GEN_1747; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1748 = {{48'd0}, _s3_picked_data_frm_uncache_T_22}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_uncache_T_29 = _s3_picked_data_frm_uncache_T_28 | _GEN_1748; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1749 = {{56'd0}, _s3_picked_data_frm_uncache_T_23}; // @[Mux.scala 27:73]
  wire [63:0] s3_picked_data_frm_uncache = _s3_picked_data_frm_uncache_T_29 | _GEN_1749; // @[Mux.scala 27:73]
  wire  s3_ld_data_frm_uncache_signBit = s3_picked_data_frm_uncache[7]; // @[BitUtils.scala 80:20]
  wire [55:0] _s3_ld_data_frm_uncache_T_2 = s3_ld_data_frm_uncache_signBit ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _s3_ld_data_frm_uncache_T_3 = {_s3_ld_data_frm_uncache_T_2,s3_picked_data_frm_uncache[7:0]}; // @[Cat.scala 31:58]
  wire  s3_ld_data_frm_uncache_signBit_1 = s3_picked_data_frm_uncache[15]; // @[BitUtils.scala 80:20]
  wire [47:0] _s3_ld_data_frm_uncache_T_6 = s3_ld_data_frm_uncache_signBit_1 ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _s3_ld_data_frm_uncache_T_7 = {_s3_ld_data_frm_uncache_T_6,s3_picked_data_frm_uncache[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_uncache_T_11 = {32'hffffffff,s3_picked_data_frm_uncache[31:0]}; // @[Cat.scala 31:58]
  wire  s3_ld_data_frm_uncache_signBit_2 = s3_picked_data_frm_uncache[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _s3_ld_data_frm_uncache_T_15 = s3_ld_data_frm_uncache_signBit_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _s3_ld_data_frm_uncache_T_16 = {_s3_ld_data_frm_uncache_T_15,s3_picked_data_frm_uncache[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_uncache_T_17 = io_lsq_ld_raw_data_uop_ctrl_fpWen ? _s3_ld_data_frm_uncache_T_11 :
    _s3_ld_data_frm_uncache_T_16; // @[LoadQueue.scala 58:28]
  wire [63:0] _s3_ld_data_frm_uncache_T_27 = {56'h0,s3_picked_data_frm_uncache[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_uncache_T_29 = {48'h0,s3_picked_data_frm_uncache[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_uncache_T_31 = {32'h0,s3_picked_data_frm_uncache[31:0]}; // @[Cat.scala 31:58]
  wire  _s3_ld_data_frm_uncache_T_32 = 7'h0 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_uncache_T_33 = 7'h1 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_uncache_T_34 = 7'h2 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_uncache_T_35 = 7'h3 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_uncache_T_36 = 7'h4 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_uncache_T_37 = 7'h5 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_uncache_T_38 = 7'h6 == io_lsq_ld_raw_data_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire [63:0] _s3_ld_data_frm_uncache_T_39 = _s3_ld_data_frm_uncache_T_32 ? _s3_ld_data_frm_uncache_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_40 = _s3_ld_data_frm_uncache_T_33 ? _s3_ld_data_frm_uncache_T_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_41 = _s3_ld_data_frm_uncache_T_34 ? _s3_ld_data_frm_uncache_T_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_42 = _s3_ld_data_frm_uncache_T_35 ? s3_picked_data_frm_uncache : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_43 = _s3_ld_data_frm_uncache_T_36 ? _s3_ld_data_frm_uncache_T_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_44 = _s3_ld_data_frm_uncache_T_37 ? _s3_ld_data_frm_uncache_T_29 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_45 = _s3_ld_data_frm_uncache_T_38 ? _s3_ld_data_frm_uncache_T_31 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_46 = _s3_ld_data_frm_uncache_T_39 | _s3_ld_data_frm_uncache_T_40; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_47 = _s3_ld_data_frm_uncache_T_46 | _s3_ld_data_frm_uncache_T_41; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_48 = _s3_ld_data_frm_uncache_T_47 | _s3_ld_data_frm_uncache_T_42; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_49 = _s3_ld_data_frm_uncache_T_48 | _s3_ld_data_frm_uncache_T_43; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_uncache_T_50 = _s3_ld_data_frm_uncache_T_49 | _s3_ld_data_frm_uncache_T_44; // @[Mux.scala 27:73]
  wire [63:0] s3_ld_data_frm_uncache = _s3_ld_data_frm_uncache_T_50 | _s3_ld_data_frm_uncache_T_45; // @[Mux.scala 27:73]
  reg  r__0; // @[Reg.scala 16:16]
  reg  r__1; // @[Reg.scala 16:16]
  reg  r__2; // @[Reg.scala 16:16]
  reg  r__3; // @[Reg.scala 16:16]
  reg  r__4; // @[Reg.scala 16:16]
  reg  r__5; // @[Reg.scala 16:16]
  reg  r__6; // @[Reg.scala 16:16]
  reg  r__7; // @[Reg.scala 16:16]
  reg  r__8; // @[Reg.scala 16:16]
  reg  r__9; // @[Reg.scala 16:16]
  reg  r__10; // @[Reg.scala 16:16]
  reg  r__11; // @[Reg.scala 16:16]
  reg  r__12; // @[Reg.scala 16:16]
  reg  r__13; // @[Reg.scala 16:16]
  reg  r__14; // @[Reg.scala 16:16]
  reg  r__15; // @[Reg.scala 16:16]
  reg [7:0] r_1_0; // @[Reg.scala 16:16]
  reg [7:0] r_1_1; // @[Reg.scala 16:16]
  reg [7:0] r_1_2; // @[Reg.scala 16:16]
  reg [7:0] r_1_3; // @[Reg.scala 16:16]
  reg [7:0] r_1_4; // @[Reg.scala 16:16]
  reg [7:0] r_1_5; // @[Reg.scala 16:16]
  reg [7:0] r_1_6; // @[Reg.scala 16:16]
  reg [7:0] r_1_7; // @[Reg.scala 16:16]
  reg [7:0] r_1_8; // @[Reg.scala 16:16]
  reg [7:0] r_1_9; // @[Reg.scala 16:16]
  reg [7:0] r_1_10; // @[Reg.scala 16:16]
  reg [7:0] r_1_11; // @[Reg.scala 16:16]
  reg [7:0] r_1_12; // @[Reg.scala 16:16]
  reg [7:0] r_1_13; // @[Reg.scala 16:16]
  reg [7:0] r_1_14; // @[Reg.scala 16:16]
  reg [7:0] r_1_15; // @[Reg.scala 16:16]
  reg [6:0] s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s3_ld_raw_data_frm_cache_uop_rctrl_fpWen; // @[Reg.scala 16:16]
  reg [3:0] s3_ld_raw_data_frm_cache_addrOffset_r; // @[Reg.scala 16:16]
  reg  s3_ld_raw_data_frm_cache_forward_D_r; // @[Reg.scala 16:16]
  wire  s3_ld_raw_data_frm_cache_forward_D = s3_ld_raw_data_frm_cache_forward_D_r | s3_fwd_frm_d_chan_valid; // @[LoadUnit.scala 1139:91]
  reg [7:0] r_2_0; // @[Reg.scala 16:16]
  reg [7:0] r_2_1; // @[Reg.scala 16:16]
  reg [7:0] r_2_2; // @[Reg.scala 16:16]
  reg [7:0] r_2_3; // @[Reg.scala 16:16]
  reg [7:0] r_2_4; // @[Reg.scala 16:16]
  reg [7:0] r_2_5; // @[Reg.scala 16:16]
  reg [7:0] r_2_6; // @[Reg.scala 16:16]
  reg [7:0] r_2_7; // @[Reg.scala 16:16]
  reg [7:0] r_2_8; // @[Reg.scala 16:16]
  reg [7:0] r_2_9; // @[Reg.scala 16:16]
  reg [7:0] r_2_10; // @[Reg.scala 16:16]
  reg [7:0] r_2_11; // @[Reg.scala 16:16]
  reg [7:0] r_2_12; // @[Reg.scala 16:16]
  reg [7:0] r_2_13; // @[Reg.scala 16:16]
  reg [7:0] r_2_14; // @[Reg.scala 16:16]
  reg [7:0] r_2_15; // @[Reg.scala 16:16]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_0 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_0 : r_2_0; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_1 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_1 : r_2_1; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_2 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_2 : r_2_2; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_3 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_3 : r_2_3; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_4 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_4 : r_2_4; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_5 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_5 : r_2_5; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_6 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_6 : r_2_6; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_7 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_7 : r_2_7; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_8 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_8 : r_2_8; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_9 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_9 : r_2_9; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_10 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_10 : r_2_10; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_11 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_11 : r_2_11; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_12 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_12 : r_2_12; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_13 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_13 : r_2_13; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_14 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_14 : r_2_14; // @[LoadUnit.scala 1140:55]
  wire [7:0] s3_ld_raw_data_frm_cache_forwardData_D_15 = s3_fwd_frm_d_chan_valid ? s3_fwd_data_frm_d_chan_15 : r_2_15; // @[LoadUnit.scala 1140:55]
  reg  s3_ld_raw_data_frm_cache_forward_mshr_r; // @[Reg.scala 16:16]
  reg [7:0] r_3_0; // @[Reg.scala 16:16]
  reg [7:0] r_3_1; // @[Reg.scala 16:16]
  reg [7:0] r_3_2; // @[Reg.scala 16:16]
  reg [7:0] r_3_3; // @[Reg.scala 16:16]
  reg [7:0] r_3_4; // @[Reg.scala 16:16]
  reg [7:0] r_3_5; // @[Reg.scala 16:16]
  reg [7:0] r_3_6; // @[Reg.scala 16:16]
  reg [7:0] r_3_7; // @[Reg.scala 16:16]
  reg [7:0] r_3_8; // @[Reg.scala 16:16]
  reg [7:0] r_3_9; // @[Reg.scala 16:16]
  reg [7:0] r_3_10; // @[Reg.scala 16:16]
  reg [7:0] r_3_11; // @[Reg.scala 16:16]
  reg [7:0] r_3_12; // @[Reg.scala 16:16]
  reg [7:0] r_3_13; // @[Reg.scala 16:16]
  reg [7:0] r_3_14; // @[Reg.scala 16:16]
  reg [7:0] r_3_15; // @[Reg.scala 16:16]
  reg  s3_ld_raw_data_frm_cache_forward_result_valid_r; // @[Reg.scala 16:16]
  wire  s3_merged_data_frm_cache_rdataVec_use_D = s3_ld_raw_data_frm_cache_forward_D &
    s3_ld_raw_data_frm_cache_forward_result_valid_r; // @[MemCommon.scala 347:27]
  wire  s3_merged_data_frm_cache_rdataVec_use_mshr = s3_ld_raw_data_frm_cache_forward_mshr_r &
    s3_ld_raw_data_frm_cache_forward_result_valid_r; // @[MemCommon.scala 348:33]
  wire [63:0] s3_merged_data_frm_cache_rdataVec_lo = {s3_ld_raw_data_frm_cache_forwardData_D_7,
    s3_ld_raw_data_frm_cache_forwardData_D_6,s3_ld_raw_data_frm_cache_forwardData_D_5,
    s3_ld_raw_data_frm_cache_forwardData_D_4,s3_ld_raw_data_frm_cache_forwardData_D_3,
    s3_ld_raw_data_frm_cache_forwardData_D_2,s3_ld_raw_data_frm_cache_forwardData_D_1,
    s3_ld_raw_data_frm_cache_forwardData_D_0}; // @[MemCommon.scala 349:30]
  wire [127:0] _s3_merged_data_frm_cache_rdataVec_T = {s3_ld_raw_data_frm_cache_forwardData_D_15,
    s3_ld_raw_data_frm_cache_forwardData_D_14,s3_ld_raw_data_frm_cache_forwardData_D_13,
    s3_ld_raw_data_frm_cache_forwardData_D_12,s3_ld_raw_data_frm_cache_forwardData_D_11,
    s3_ld_raw_data_frm_cache_forwardData_D_10,s3_ld_raw_data_frm_cache_forwardData_D_9,
    s3_ld_raw_data_frm_cache_forwardData_D_8,s3_merged_data_frm_cache_rdataVec_lo}; // @[MemCommon.scala 349:30]
  wire [63:0] s3_merged_data_frm_cache_rdataVec_lo_1 = {r_3_7,r_3_6,r_3_5,r_3_4,r_3_3,r_3_2,r_3_1,r_3_0}; // @[MemCommon.scala 349:69]
  wire [127:0] _s3_merged_data_frm_cache_rdataVec_T_1 = {r_3_15,r_3_14,r_3_13,r_3_12,r_3_11,r_3_10,r_3_9,r_3_8,
    s3_merged_data_frm_cache_rdataVec_lo_1}; // @[MemCommon.scala 349:69]
  wire [127:0] _s3_merged_data_frm_cache_rdataVec_T_2 = s3_merged_data_frm_cache_rdataVec_use_mshr ?
    _s3_merged_data_frm_cache_rdataVec_T_1 : io_dcache_resp_bits_data_delayed; // @[MemCommon.scala 349:41]
  wire [127:0] _s3_merged_data_frm_cache_rdataVec_T_3 = s3_merged_data_frm_cache_rdataVec_use_D ?
    _s3_merged_data_frm_cache_rdataVec_T : _s3_merged_data_frm_cache_rdataVec_T_2; // @[MemCommon.scala 349:8]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_0 = r__0 ? r_1_0 : _s3_merged_data_frm_cache_rdataVec_T_3[7:0]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_1 = r__1 ? r_1_1 : _s3_merged_data_frm_cache_rdataVec_T_3[15:8]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_2 = r__2 ? r_1_2 : _s3_merged_data_frm_cache_rdataVec_T_3[23:16]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_3 = r__3 ? r_1_3 : _s3_merged_data_frm_cache_rdataVec_T_3[31:24]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_4 = r__4 ? r_1_4 : _s3_merged_data_frm_cache_rdataVec_T_3[39:32]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_5 = r__5 ? r_1_5 : _s3_merged_data_frm_cache_rdataVec_T_3[47:40]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_6 = r__6 ? r_1_6 : _s3_merged_data_frm_cache_rdataVec_T_3[55:48]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_7 = r__7 ? r_1_7 : _s3_merged_data_frm_cache_rdataVec_T_3[63:56]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_8 = r__8 ? r_1_8 : _s3_merged_data_frm_cache_rdataVec_T_3[71:64]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_9 = r__9 ? r_1_9 : _s3_merged_data_frm_cache_rdataVec_T_3[79:72]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_10 = r__10 ? r_1_10 : _s3_merged_data_frm_cache_rdataVec_T_3[87:80]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_11 = r__11 ? r_1_11 : _s3_merged_data_frm_cache_rdataVec_T_3[95:88]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_12 = r__12 ? r_1_12 : _s3_merged_data_frm_cache_rdataVec_T_3[103:96]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_13 = r__13 ? r_1_13 : _s3_merged_data_frm_cache_rdataVec_T_3[111:104]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_14 = r__14 ? r_1_14 : _s3_merged_data_frm_cache_rdataVec_T_3[119:112]; // @[MemCommon.scala 354:10]
  wire [7:0] s3_merged_data_frm_cache_rdataVec_15 = r__15 ? r_1_15 : _s3_merged_data_frm_cache_rdataVec_T_3[127:120]; // @[MemCommon.scala 354:10]
  wire [63:0] s3_merged_data_frm_cache_lo = {s3_merged_data_frm_cache_rdataVec_7,s3_merged_data_frm_cache_rdataVec_6,
    s3_merged_data_frm_cache_rdataVec_5,s3_merged_data_frm_cache_rdataVec_4,s3_merged_data_frm_cache_rdataVec_3,
    s3_merged_data_frm_cache_rdataVec_2,s3_merged_data_frm_cache_rdataVec_1,s3_merged_data_frm_cache_rdataVec_0}; // @[MemCommon.scala 356:14]
  wire [127:0] s3_merged_data_frm_cache = {s3_merged_data_frm_cache_rdataVec_15,s3_merged_data_frm_cache_rdataVec_14,
    s3_merged_data_frm_cache_rdataVec_13,s3_merged_data_frm_cache_rdataVec_12,s3_merged_data_frm_cache_rdataVec_11,
    s3_merged_data_frm_cache_rdataVec_10,s3_merged_data_frm_cache_rdataVec_9,s3_merged_data_frm_cache_rdataVec_8,
    s3_merged_data_frm_cache_lo}; // @[MemCommon.scala 356:14]
  wire  _s3_picked_data_frm_cache_T_16 = 4'h0 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_17 = 4'h1 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_18 = 4'h2 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_19 = 4'h3 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_20 = 4'h4 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_21 = 4'h5 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_22 = 4'h6 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_23 = 4'h7 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_24 = 4'h8 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_25 = 4'h9 == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_26 = 4'ha == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_27 = 4'hb == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_28 = 4'hc == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_29 = 4'hd == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_30 = 4'he == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire  _s3_picked_data_frm_cache_T_31 = 4'hf == s3_ld_raw_data_frm_cache_addrOffset_r; // @[LookupTree.scala 24:34]
  wire [63:0] _s3_picked_data_frm_cache_T_32 = _s3_picked_data_frm_cache_T_16 ? s3_merged_data_frm_cache[63:0] : 64'h0; // @[Mux.scala 27:73]
  wire [55:0] _s3_picked_data_frm_cache_T_33 = _s3_picked_data_frm_cache_T_17 ? s3_merged_data_frm_cache[63:8] : 56'h0; // @[Mux.scala 27:73]
  wire [47:0] _s3_picked_data_frm_cache_T_34 = _s3_picked_data_frm_cache_T_18 ? s3_merged_data_frm_cache[63:16] : 48'h0; // @[Mux.scala 27:73]
  wire [39:0] _s3_picked_data_frm_cache_T_35 = _s3_picked_data_frm_cache_T_19 ? s3_merged_data_frm_cache[63:24] : 40'h0; // @[Mux.scala 27:73]
  wire [31:0] _s3_picked_data_frm_cache_T_36 = _s3_picked_data_frm_cache_T_20 ? s3_merged_data_frm_cache[63:32] : 32'h0; // @[Mux.scala 27:73]
  wire [23:0] _s3_picked_data_frm_cache_T_37 = _s3_picked_data_frm_cache_T_21 ? s3_merged_data_frm_cache[63:40] : 24'h0; // @[Mux.scala 27:73]
  wire [15:0] _s3_picked_data_frm_cache_T_38 = _s3_picked_data_frm_cache_T_22 ? s3_merged_data_frm_cache[63:48] : 16'h0; // @[Mux.scala 27:73]
  wire [7:0] _s3_picked_data_frm_cache_T_39 = _s3_picked_data_frm_cache_T_23 ? s3_merged_data_frm_cache[63:56] : 8'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_40 = _s3_picked_data_frm_cache_T_24 ? s3_merged_data_frm_cache[127:64] : 64'h0
    ; // @[Mux.scala 27:73]
  wire [55:0] _s3_picked_data_frm_cache_T_41 = _s3_picked_data_frm_cache_T_25 ? s3_merged_data_frm_cache[127:72] : 56'h0
    ; // @[Mux.scala 27:73]
  wire [47:0] _s3_picked_data_frm_cache_T_42 = _s3_picked_data_frm_cache_T_26 ? s3_merged_data_frm_cache[127:80] : 48'h0
    ; // @[Mux.scala 27:73]
  wire [39:0] _s3_picked_data_frm_cache_T_43 = _s3_picked_data_frm_cache_T_27 ? s3_merged_data_frm_cache[127:88] : 40'h0
    ; // @[Mux.scala 27:73]
  wire [31:0] _s3_picked_data_frm_cache_T_44 = _s3_picked_data_frm_cache_T_28 ? s3_merged_data_frm_cache[127:96] : 32'h0
    ; // @[Mux.scala 27:73]
  wire [23:0] _s3_picked_data_frm_cache_T_45 = _s3_picked_data_frm_cache_T_29 ? s3_merged_data_frm_cache[127:104] : 24'h0
    ; // @[Mux.scala 27:73]
  wire [15:0] _s3_picked_data_frm_cache_T_46 = _s3_picked_data_frm_cache_T_30 ? s3_merged_data_frm_cache[127:112] : 16'h0
    ; // @[Mux.scala 27:73]
  wire [7:0] _s3_picked_data_frm_cache_T_47 = _s3_picked_data_frm_cache_T_31 ? s3_merged_data_frm_cache[127:120] : 8'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1750 = {{8'd0}, _s3_picked_data_frm_cache_T_33}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_48 = _s3_picked_data_frm_cache_T_32 | _GEN_1750; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1751 = {{16'd0}, _s3_picked_data_frm_cache_T_34}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_49 = _s3_picked_data_frm_cache_T_48 | _GEN_1751; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1752 = {{24'd0}, _s3_picked_data_frm_cache_T_35}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_50 = _s3_picked_data_frm_cache_T_49 | _GEN_1752; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1753 = {{32'd0}, _s3_picked_data_frm_cache_T_36}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_51 = _s3_picked_data_frm_cache_T_50 | _GEN_1753; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1754 = {{40'd0}, _s3_picked_data_frm_cache_T_37}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_52 = _s3_picked_data_frm_cache_T_51 | _GEN_1754; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1755 = {{48'd0}, _s3_picked_data_frm_cache_T_38}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_53 = _s3_picked_data_frm_cache_T_52 | _GEN_1755; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1756 = {{56'd0}, _s3_picked_data_frm_cache_T_39}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_54 = _s3_picked_data_frm_cache_T_53 | _GEN_1756; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_55 = _s3_picked_data_frm_cache_T_54 | _s3_picked_data_frm_cache_T_40; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1757 = {{8'd0}, _s3_picked_data_frm_cache_T_41}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_56 = _s3_picked_data_frm_cache_T_55 | _GEN_1757; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1758 = {{16'd0}, _s3_picked_data_frm_cache_T_42}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_57 = _s3_picked_data_frm_cache_T_56 | _GEN_1758; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1759 = {{24'd0}, _s3_picked_data_frm_cache_T_43}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_58 = _s3_picked_data_frm_cache_T_57 | _GEN_1759; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1760 = {{32'd0}, _s3_picked_data_frm_cache_T_44}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_59 = _s3_picked_data_frm_cache_T_58 | _GEN_1760; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1761 = {{40'd0}, _s3_picked_data_frm_cache_T_45}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_60 = _s3_picked_data_frm_cache_T_59 | _GEN_1761; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1762 = {{48'd0}, _s3_picked_data_frm_cache_T_46}; // @[Mux.scala 27:73]
  wire [63:0] _s3_picked_data_frm_cache_T_61 = _s3_picked_data_frm_cache_T_60 | _GEN_1762; // @[Mux.scala 27:73]
  wire [63:0] _GEN_1763 = {{56'd0}, _s3_picked_data_frm_cache_T_47}; // @[Mux.scala 27:73]
  wire [63:0] s3_picked_data_frm_cache = _s3_picked_data_frm_cache_T_61 | _GEN_1763; // @[Mux.scala 27:73]
  wire  s3_ld_data_frm_cache_signBit = s3_picked_data_frm_cache[7]; // @[BitUtils.scala 80:20]
  wire [55:0] _s3_ld_data_frm_cache_T_2 = s3_ld_data_frm_cache_signBit ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _s3_ld_data_frm_cache_T_3 = {_s3_ld_data_frm_cache_T_2,s3_picked_data_frm_cache[7:0]}; // @[Cat.scala 31:58]
  wire  s3_ld_data_frm_cache_signBit_1 = s3_picked_data_frm_cache[15]; // @[BitUtils.scala 80:20]
  wire [47:0] _s3_ld_data_frm_cache_T_6 = s3_ld_data_frm_cache_signBit_1 ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _s3_ld_data_frm_cache_T_7 = {_s3_ld_data_frm_cache_T_6,s3_picked_data_frm_cache[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_cache_T_11 = {32'hffffffff,s3_picked_data_frm_cache[31:0]}; // @[Cat.scala 31:58]
  wire  s3_ld_data_frm_cache_signBit_2 = s3_picked_data_frm_cache[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _s3_ld_data_frm_cache_T_15 = s3_ld_data_frm_cache_signBit_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _s3_ld_data_frm_cache_T_16 = {_s3_ld_data_frm_cache_T_15,s3_picked_data_frm_cache[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_cache_T_17 = s3_ld_raw_data_frm_cache_uop_rctrl_fpWen ? _s3_ld_data_frm_cache_T_11 :
    _s3_ld_data_frm_cache_T_16; // @[LoadQueue.scala 58:28]
  wire [63:0] _s3_ld_data_frm_cache_T_27 = {56'h0,s3_picked_data_frm_cache[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_cache_T_29 = {48'h0,s3_picked_data_frm_cache[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _s3_ld_data_frm_cache_T_31 = {32'h0,s3_picked_data_frm_cache[31:0]}; // @[Cat.scala 31:58]
  wire  _s3_ld_data_frm_cache_T_32 = 7'h0 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_cache_T_33 = 7'h1 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_cache_T_34 = 7'h2 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_cache_T_35 = 7'h3 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_cache_T_36 = 7'h4 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_cache_T_37 = 7'h5 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _s3_ld_data_frm_cache_T_38 = 7'h6 == s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire [63:0] _s3_ld_data_frm_cache_T_39 = _s3_ld_data_frm_cache_T_32 ? _s3_ld_data_frm_cache_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_40 = _s3_ld_data_frm_cache_T_33 ? _s3_ld_data_frm_cache_T_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_41 = _s3_ld_data_frm_cache_T_34 ? _s3_ld_data_frm_cache_T_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_42 = _s3_ld_data_frm_cache_T_35 ? s3_picked_data_frm_cache : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_43 = _s3_ld_data_frm_cache_T_36 ? _s3_ld_data_frm_cache_T_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_44 = _s3_ld_data_frm_cache_T_37 ? _s3_ld_data_frm_cache_T_29 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_45 = _s3_ld_data_frm_cache_T_38 ? _s3_ld_data_frm_cache_T_31 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_46 = _s3_ld_data_frm_cache_T_39 | _s3_ld_data_frm_cache_T_40; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_47 = _s3_ld_data_frm_cache_T_46 | _s3_ld_data_frm_cache_T_41; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_48 = _s3_ld_data_frm_cache_T_47 | _s3_ld_data_frm_cache_T_42; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_49 = _s3_ld_data_frm_cache_T_48 | _s3_ld_data_frm_cache_T_43; // @[Mux.scala 27:73]
  wire [63:0] _s3_ld_data_frm_cache_T_50 = _s3_ld_data_frm_cache_T_49 | _s3_ld_data_frm_cache_T_44; // @[Mux.scala 27:73]
  wire [63:0] s3_ld_data_frm_cache = _s3_ld_data_frm_cache_T_50 | _s3_ld_data_frm_cache_T_45; // @[Mux.scala 27:73]
  wire  _io_lsq_uncache_ready_T = ~s3_out_valid; // @[LoadUnit.scala 1167:27]
  wire [5:0] _io_ldout_valid_flushItself_T_5 = {io_lsq_uncache_bits_uop_robIdx_flag,io_lsq_uncache_bits_uop_robIdx_value
    }; // @[CircularQueuePtr.scala 61:40]
  wire  _io_ldout_valid_flushItself_T_7 = _io_ldout_valid_flushItself_T_5 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_ldout_valid_flushItself_1 = io_redirect_bits_level & _io_ldout_valid_flushItself_T_7; // @[Rob.scala 142:51]
  wire  io_ldout_valid_differentFlag_1 = io_lsq_uncache_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_ldout_valid_compare_1 = io_lsq_uncache_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_ldout_valid_T_5 = io_ldout_valid_differentFlag_1 ^ io_ldout_valid_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _io_ldout_valid_T_7 = io_redirect_valid & (io_ldout_valid_flushItself_1 | _io_ldout_valid_T_5); // @[Rob.scala 143:20]
  wire  _io_ldout_valid_T_11 = io_lsq_uncache_valid & ~_io_ldout_valid_T_7 & _io_lsq_uncache_ready_T; // @[LoadUnit.scala 1171:105]
  reg [63:0] tdata2; // @[LoadUnit.scala 1184:28]
  reg [1:0] matchType; // @[LoadUnit.scala 1185:28]
  reg  tEnable; // @[LoadUnit.scala 1186:28]
  reg [38:0] hit_ld_addr_trig_hit_vec_0_REG; // @[LoadUnit.scala 1188:54]
  wire [63:0] _GEN_1764 = {{25'd0}, hit_ld_addr_trig_hit_vec_0_REG}; // @[Trigger.scala 27:24]
  wire  hit_ld_addr_trig_hit_vec_0_equal = _GEN_1764 == tdata2; // @[Trigger.scala 27:24]
  wire  hit_ld_addr_trig_hit_vec_0_greater = _GEN_1764 >= tdata2; // @[Trigger.scala 28:26]
  wire  hit_ld_addr_trig_hit_vec_0_less = _GEN_1764 <= tdata2; // @[Trigger.scala 29:23]
  wire  _hit_ld_addr_trig_hit_vec_0_res_T_3 = 2'h2 == matchType ? hit_ld_addr_trig_hit_vec_0_greater : 2'h0 == matchType
     & hit_ld_addr_trig_hit_vec_0_equal; // @[Mux.scala 81:58]
  wire  hit_ld_addr_trig_hit_vec_0_res = 2'h3 == matchType ? hit_ld_addr_trig_hit_vec_0_less :
    _hit_ld_addr_trig_hit_vec_0_res_T_3; // @[Mux.scala 81:58]
  wire  hit_ld_addr_trig_hit_vec_0 = hit_ld_addr_trig_hit_vec_0_res & tEnable; // @[Trigger.scala 34:9]
  reg [63:0] tdata2_1; // @[LoadUnit.scala 1184:28]
  reg [1:0] matchType_1; // @[LoadUnit.scala 1185:28]
  reg  tEnable_1; // @[LoadUnit.scala 1186:28]
  reg [38:0] hit_ld_addr_trig_hit_vec_1_REG; // @[LoadUnit.scala 1188:54]
  wire [63:0] _GEN_1767 = {{25'd0}, hit_ld_addr_trig_hit_vec_1_REG}; // @[Trigger.scala 27:24]
  wire  hit_ld_addr_trig_hit_vec_1_equal = _GEN_1767 == tdata2_1; // @[Trigger.scala 27:24]
  wire  hit_ld_addr_trig_hit_vec_1_greater = _GEN_1767 >= tdata2_1; // @[Trigger.scala 28:26]
  wire  hit_ld_addr_trig_hit_vec_1_less = _GEN_1767 <= tdata2_1; // @[Trigger.scala 29:23]
  wire  _hit_ld_addr_trig_hit_vec_1_res_T_3 = 2'h2 == matchType_1 ? hit_ld_addr_trig_hit_vec_1_greater : 2'h0 ==
    matchType_1 & hit_ld_addr_trig_hit_vec_1_equal; // @[Mux.scala 81:58]
  wire  hit_ld_addr_trig_hit_vec_1_res = 2'h3 == matchType_1 ? hit_ld_addr_trig_hit_vec_1_less :
    _hit_ld_addr_trig_hit_vec_1_res_T_3; // @[Mux.scala 81:58]
  wire  hit_ld_addr_trig_hit_vec_1 = hit_ld_addr_trig_hit_vec_1_res & tEnable_1; // @[Trigger.scala 34:9]
  reg [63:0] tdata2_2; // @[LoadUnit.scala 1184:28]
  reg [1:0] matchType_2; // @[LoadUnit.scala 1185:28]
  reg  tEnable_2; // @[LoadUnit.scala 1186:28]
  reg [38:0] hit_ld_addr_trig_hit_vec_2_REG; // @[LoadUnit.scala 1188:54]
  wire [63:0] _GEN_1770 = {{25'd0}, hit_ld_addr_trig_hit_vec_2_REG}; // @[Trigger.scala 27:24]
  wire  hit_ld_addr_trig_hit_vec_2_equal = _GEN_1770 == tdata2_2; // @[Trigger.scala 27:24]
  wire  hit_ld_addr_trig_hit_vec_2_greater = _GEN_1770 >= tdata2_2; // @[Trigger.scala 28:26]
  wire  hit_ld_addr_trig_hit_vec_2_less = _GEN_1770 <= tdata2_2; // @[Trigger.scala 29:23]
  wire  _hit_ld_addr_trig_hit_vec_2_res_T_3 = 2'h2 == matchType_2 ? hit_ld_addr_trig_hit_vec_2_greater : 2'h0 ==
    matchType_2 & hit_ld_addr_trig_hit_vec_2_equal; // @[Mux.scala 81:58]
  wire  hit_ld_addr_trig_hit_vec_2_res = 2'h3 == matchType_2 ? hit_ld_addr_trig_hit_vec_2_less :
    _hit_ld_addr_trig_hit_vec_2_res_T_3; // @[Mux.scala 81:58]
  wire  hit_ld_addr_trig_hit_vec_2 = hit_ld_addr_trig_hit_vec_2_res & tEnable_2; // @[Trigger.scala 34:9]
  wire  _T_70 = ~io_dcache_req_ready; // @[LoadUnit.scala 1215:64]
  wire  _T_132 = ~s1_ptr_chasing_canceled; // @[LoadUnit.scala 1256:87]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  assign io_ldin_ready = ~s1_cancel_ptr_chasing ? _GEN_1052 : _io_fast_rep_in_ready_T & _s0_low_conf_prf_ready_T_6; // @[LoadUnit.scala 537:17 697:35]
  assign io_ldout_valid = s3_out_valid & _io_fast_rep_out_valid_T_4 | _io_ldout_valid_T_11; // @[LoadUnit.scala 1170:90]
  assign io_ldout_bits_uop_cf_exceptionVec_4 = s3_out_valid ? s3_out_bits_uop_cf_exceptionVec_4 :
    io_lsq_uncache_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_cf_exceptionVec_5 = s3_out_valid ? s3_out_bits_uop_cf_exceptionVec_5 :
    io_lsq_uncache_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_cf_exceptionVec_13 = s3_out_valid ? s3_out_bits_uop_cf_exceptionVec_13 :
    io_lsq_uncache_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_cf_trigger_backendEn_1 = s3_out_valid ? s3_in_uop_cf_trigger_backendEn_1 :
    io_lsq_uncache_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_cf_trigger_backendHit_0 = s3_out_valid ? s3_in_uop_cf_trigger_backendHit_0 :
    io_lsq_uncache_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_cf_trigger_backendHit_1 = s3_out_valid ? s3_in_uop_cf_trigger_backendHit_1 :
    io_lsq_uncache_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_cf_trigger_backendHit_4 = s3_out_valid ? s3_in_uop_cf_trigger_backendHit_4 :
    io_lsq_uncache_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_ctrl_rfWen = s3_out_valid ? s3_in_uop_ctrl_rfWen : io_lsq_uncache_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_ctrl_fpWen = s3_out_valid ? s3_in_uop_ctrl_fpWen : io_lsq_uncache_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_ctrl_replayInst = s3_out_valid ? s3_rep_frm_fetch : io_lsq_uncache_bits_uop_ctrl_replayInst; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_pdest = s3_out_valid ? s3_in_uop_pdest : io_lsq_uncache_bits_uop_pdest; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_robIdx_flag = s3_out_valid ? s3_in_uop_robIdx_flag : io_lsq_uncache_bits_uop_robIdx_flag; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_robIdx_value = s3_out_valid ? s3_in_uop_robIdx_value : io_lsq_uncache_bits_uop_robIdx_value; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_lqIdx_flag = s3_out_valid ? s3_in_uop_lqIdx_flag : io_lsq_uncache_bits_uop_lqIdx_flag; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_uop_lqIdx_value = s3_out_valid ? s3_in_uop_lqIdx_value : io_lsq_uncache_bits_uop_lqIdx_value; // @[LoadUnit.scala 1115:26]
  assign io_ldout_bits_data = s3_out_valid ? s3_ld_data_frm_cache : s3_ld_data_frm_uncache; // @[LoadUnit.scala 1169:30]
  assign io_ldout_bits_debug_isMMIO = s3_out_valid ? s3_in_mmio : io_lsq_uncache_bits_debug_isMMIO; // @[LoadUnit.scala 1115:26]
  assign io_tlb_req_valid = _s0_valid_T_6 & io_dcache_req_ready & ~s0_kill; // @[LoadUnit.scala 288:62]
  assign io_tlb_req_bits_vaddr = s0_hw_prf ? 39'h0 : s0_vaddr; // @[LoadUnit.scala 312:44]
  assign io_tlb_req_bits_cmd = {{2'd0}, _io_tlb_req_bits_cmd_T_1}; // @[LoadUnit.scala 308:38]
  assign io_tlb_req_bits_kill = s0_ptr_chasing_canceled | _s0_kill_T_2 & ~s0_l2l_fwd_select; // @[LoadUnit.scala 295:38]
  assign io_tlb_req_bits_no_translate = s0_hw_prf; // @[LoadUnit.scala 319:38]
  assign io_tlb_req_kill = _s1_kill_T_4 | s1_kill_r; // @[LoadUnit.scala 665:54]
  assign io_dcache_req_valid = _s0_valid_T_6 & io_dcache_req_ready & ~s0_kill; // @[LoadUnit.scala 288:62]
  assign io_dcache_req_bits_cmd = {{3'd0}, _io_dcache_req_bits_cmd_T_1}; // @[LoadUnit.scala 325:35]
  assign io_dcache_req_bits_vaddr = _GEN_600[38:0]; // @[LoadUnit.scala 175:30]
  assign io_dcache_req_bits_instrtype = {{2'd0}, _io_dcache_req_bits_instrtype_T}; // @[LoadUnit.scala 333:35]
  assign io_dcache_s1_kill = s1_kill | io_tlb_resp_bits_miss | s1_exception; // @[LoadUnit.scala 604:59]
  assign io_dcache_s2_kill = s2_pmp_ld | s2_pmp_mmio | s2_kill; // @[LoadUnit.scala 988:54]
  assign io_dcache_s1_paddr_dup_lsu = s1_try_ptr_chasing ? _s1_paddr_dup_lsu_T_1 : io_tlb_resp_bits_paddr_0; // @[LoadUnit.scala 591:23 683:31 690:27]
  assign io_dcache_s1_paddr_dup_dcache = s1_try_ptr_chasing ? _s1_paddr_dup_lsu_T_1 : io_tlb_resp_bits_paddr_1; // @[LoadUnit.scala 592:23 683:31 691:27]
  assign io_sbuffer_vaddr = {s1_vaddr_hi,s1_vaddr_lo}; // @[Cat.scala 31:58]
  assign io_sbuffer_paddr = s1_try_ptr_chasing ? _s1_paddr_dup_lsu_T_1 : io_tlb_resp_bits_paddr_0; // @[LoadUnit.scala 591:23 683:31 690:27]
  assign io_sbuffer_valid = s1_valid & ~(s1_exception | io_tlb_resp_bits_miss | s1_kill | s1_in_risPrefetch); // @[LoadUnit.scala 607:32]
  assign io_lsq_ldin_valid = s3_valid & (~s3_fast_rep | ~io_fast_rep_out_ready) & _s3_fast_rep_T & _s3_fast_rep_T_2; // @[LoadUnit.scala 1029:98]
  assign io_lsq_ldin_bits_uop_cf_exceptionVec_4 = s3_force_rep ? 1'h0 : s3_in_uop_cf_exceptionVec_4; // @[LoadUnit.scala 1086:23 1074:31 1087:37]
  assign io_lsq_ldin_bits_uop_cf_exceptionVec_5 = s3_force_rep ? 1'h0 : s3_dly_ld_err | s3_in_uop_cf_exceptionVec_5; // @[LoadUnit.scala 1086:23 1087:37 1075:52]
  assign io_lsq_ldin_bits_uop_cf_exceptionVec_13 = s3_force_rep ? 1'h0 : s3_in_uop_cf_exceptionVec_13; // @[LoadUnit.scala 1086:23 1074:31 1087:37]
  assign io_lsq_ldin_bits_uop_cf_trigger_backendEn_1 = s3_in_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_trigger_backendHit_0 = s3_in_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_trigger_backendHit_1 = s3_in_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_trigger_backendHit_4 = s3_in_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_storeSetHit = s3_in_uop_cf_storeSetHit; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_loadWaitStrict = s3_in_uop_cf_loadWaitStrict; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_ssid = s3_in_uop_cf_ssid; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_ftqPtr_flag = s3_in_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_ftqPtr_value = s3_in_uop_cf_ftqPtr_value; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_cf_ftqOffset = s3_in_uop_cf_ftqOffset; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_ctrl_fuOpType = s3_in_uop_ctrl_fuOpType; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_ctrl_rfWen = s3_in_uop_ctrl_rfWen; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_ctrl_fpWen = s3_in_uop_ctrl_fpWen; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_ctrl_replayInst = s3_vp_match_fail | s3_ldld_rep_inst; // @[LoadUnit.scala 1059:43]
  assign io_lsq_ldin_bits_uop_pdest = s3_in_uop_pdest; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_robIdx_flag = s3_in_uop_robIdx_flag; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_robIdx_value = s3_in_uop_robIdx_value; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_lqIdx_flag = s3_in_uop_lqIdx_flag; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_lqIdx_value = s3_in_uop_lqIdx_value; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_sqIdx_flag = s3_in_uop_sqIdx_flag; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_uop_sqIdx_value = s3_in_uop_sqIdx_value; // @[LoadUnit.scala 1004:29 1074:31]
  assign io_lsq_ldin_bits_vaddr = s3_in_vaddr; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_paddr = s3_in_paddr; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_mask = s3_in_mask; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_miss = s3_in_miss & ~s3_fwd_frm_d_chan_valid; // @[LoadUnit.scala 1031:39]
  assign io_lsq_ldin_bits_tlbMiss = s3_in_tlbMiss; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_mmio = s3_in_mmio; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_isLoadReplay = s3_in_isLoadReplay; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_handledByMSHR = s3_in_handledByMSHR; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_dcacheRequireReplay = s3_dcache_rep; // @[LoadUnit.scala 1046:41]
  assign io_lsq_ldin_bits_schedIndex = s3_in_schedIndex; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_mshr_id = s3_in_rep_info_mshr_id; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_full_fwd = s3_in_rep_info_full_fwd; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_data_inv_sq_idx_flag = s3_in_rep_info_data_inv_sq_idx_flag; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_data_inv_sq_idx_value = s3_in_rep_info_data_inv_sq_idx_value; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_addr_inv_sq_idx_flag = s3_in_rep_info_addr_inv_sq_idx_flag; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_addr_inv_sq_idx_value = s3_in_rep_info_addr_inv_sq_idx_value; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_last_beat = s3_in_rep_info_last_beat; // @[LoadUnit.scala 1030:20]
  assign io_lsq_ldin_bits_rep_info_cause_0 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[0]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_1 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[1]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_2 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[2]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_3 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[3]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_4 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[4]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_5 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[5]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_6 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[6]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_7 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[7]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_8 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[8]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_rep_info_cause_9 = (s3_exception | s3_dly_ld_err | s3_rep_frm_fetch) & ~s3_force_rep ? 1'h0 :
    s3_sel_rep_cause[9]; // @[LoadUnit.scala 1066:79 1067:37 1069:37]
  assign io_lsq_ldin_bits_data_wen_dup_5 = s3_ld_valid_dup[5]; // @[LoadUnit.scala 1034:52]
  assign io_lsq_uncache_ready = ~s3_out_valid; // @[LoadUnit.scala 1167:27]
  assign io_lsq_forward_vaddr = {s1_vaddr_hi,s1_vaddr_lo}; // @[Cat.scala 31:58]
  assign io_lsq_forward_paddr = s1_try_ptr_chasing ? _s1_paddr_dup_lsu_T_1 : io_tlb_resp_bits_paddr_0; // @[LoadUnit.scala 591:23 683:31 690:27]
  assign io_lsq_forward_mask = s1_in_rmask; // @[LoadUnit.scala 559:27 569:11]
  assign io_lsq_forward_uop_cf_loadWaitStrict = s1_try_ptr_chasing ? io_ldin_bits_uop_cf_loadWaitStrict :
    s1_in_ruop_cf_loadWaitStrict; // @[LoadUnit.scala 569:11 683:31 686:27]
  assign io_lsq_forward_uop_cf_ssid = s1_try_ptr_chasing ? io_ldin_bits_uop_cf_ssid : s1_in_ruop_cf_ssid; // @[LoadUnit.scala 569:11 683:31 686:27]
  assign io_lsq_forward_uop_sqIdx_flag = s1_try_ptr_chasing ? io_ldin_bits_uop_sqIdx_flag : s1_in_ruop_sqIdx_flag; // @[LoadUnit.scala 569:11 683:31 686:27]
  assign io_lsq_forward_uop_sqIdx_value = s1_try_ptr_chasing ? io_ldin_bits_uop_sqIdx_value : s1_in_ruop_sqIdx_value; // @[LoadUnit.scala 569:11 683:31 686:27]
  assign io_lsq_forward_valid = s1_valid & _io_sbuffer_valid_T_3; // @[LoadUnit.scala 615:40]
  assign io_lsq_forward_sqIdx_flag = s1_try_ptr_chasing ? io_ldin_bits_uop_sqIdx_flag : s1_in_ruop_sqIdx_flag; // @[LoadUnit.scala 569:11 683:31 686:27]
  assign io_lsq_forward_sqIdxMask = s1_try_ptr_chasing ? _io_lsq_forward_sqIdxMask_T_3 : s1_sqIdx_mask; // @[LoadUnit.scala 710:28 712:31 713:32]
  assign io_lsq_stld_nuke_query_req_valid = s2_valid & s2_can_query; // @[LoadUnit.scala 875:58]
  assign io_lsq_stld_nuke_query_req_bits_uop_cf_ftqPtr_flag = s2_in_ruop_cf_ftqPtr_flag; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_uop_cf_ftqPtr_value = s2_in_ruop_cf_ftqPtr_value; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_uop_cf_ftqOffset = s2_in_ruop_cf_ftqOffset; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_uop_robIdx_flag = s2_in_ruop_robIdx_flag; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_uop_robIdx_value = s2_in_ruop_robIdx_value; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_uop_sqIdx_flag = s2_in_ruop_sqIdx_flag; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_uop_sqIdx_value = s2_in_ruop_sqIdx_value; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_mask = s2_in_rmask; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_paddr = s2_in_rpaddr; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_stld_nuke_query_req_bits_data_valid = _io_lsq_ldld_nuke_query_req_bits_data_valid_T |
    _s2_dcache_fast_rep_T; // @[LoadUnit.scala 879:52]
  assign io_lsq_stld_nuke_query_revoke = s3_exception | _s3_out_valid_T_1; // @[LoadUnit.scala 1094:32]
  assign io_lsq_ldld_nuke_query_req_valid = s2_valid & s2_can_query; // @[LoadUnit.scala 868:58]
  assign io_lsq_ldld_nuke_query_req_bits_uop_robIdx_flag = s2_in_ruop_robIdx_flag; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_ldld_nuke_query_req_bits_uop_robIdx_value = s2_in_ruop_robIdx_value; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_ldld_nuke_query_req_bits_uop_lqIdx_flag = s2_in_ruop_lqIdx_flag; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_ldld_nuke_query_req_bits_uop_lqIdx_value = s2_in_ruop_lqIdx_value; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_ldld_nuke_query_req_bits_paddr = s2_in_rpaddr; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsq_ldld_nuke_query_req_bits_data_valid = s2_full_fwd | io_forward_mshr_forward_result_valid |
    _s2_dcache_fast_rep_T; // @[LoadUnit.scala 872:52]
  assign io_lsq_ldld_nuke_query_revoke = s3_exception | _s3_out_valid_T_1; // @[LoadUnit.scala 1094:32]
  assign io_lsq_trigger_hitLoadAddrTriggerHitVec_0 = hit_ld_addr_trig_hit_vec_0_res & tEnable; // @[Trigger.scala 34:9]
  assign io_lsq_trigger_hitLoadAddrTriggerHitVec_1 = hit_ld_addr_trig_hit_vec_1_res & tEnable_1; // @[Trigger.scala 34:9]
  assign io_lsq_trigger_hitLoadAddrTriggerHitVec_2 = hit_ld_addr_trig_hit_vec_2_res & tEnable_2; // @[Trigger.scala 34:9]
  assign io_forward_mshr_valid = s1_valid & s1_in_rforward_tlDchannel; // @[LoadUnit.scala 717:38]
  assign io_forward_mshr_mshrid = s1_in_rmshrid; // @[LoadUnit.scala 559:27 569:11]
  assign io_forward_mshr_paddr = s1_try_ptr_chasing ? _s1_paddr_dup_lsu_T_1 : io_tlb_resp_bits_paddr_0; // @[LoadUnit.scala 591:23 683:31 690:27]
  assign io_fast_uop_valid = io_fast_uop_valid_REG & (s2_valid & ~_io_feedback_fast_valid_T_4 & _s2_troublem_T_1); // @[LoadUnit.scala 961:5]
  assign io_fast_uop_bits_ctrl_rfWen = io_fast_uop_bits_REG_ctrl_rfWen; // @[LoadUnit.scala 962:20]
  assign io_fast_uop_bits_pdest = io_fast_uop_bits_REG_pdest; // @[LoadUnit.scala 962:20]
  assign io_trigger_0_addrHit = s3_out_valid ? hit_ld_addr_trig_hit_vec_0 : io_lsq_trigger_lqLoadAddrTriggerHitVec_0; // @[LoadUnit.scala 1189:39]
  assign io_trigger_1_addrHit = s3_out_valid ? hit_ld_addr_trig_hit_vec_1 : io_lsq_trigger_lqLoadAddrTriggerHitVec_1; // @[LoadUnit.scala 1189:39]
  assign io_trigger_2_addrHit = s3_out_valid ? hit_ld_addr_trig_hit_vec_2 : io_lsq_trigger_lqLoadAddrTriggerHitVec_2; // @[LoadUnit.scala 1189:39]
  assign io_l2l_fwd_out_valid = s3_out_valid & _s3_fast_rep_T_2; // @[LoadUnit.scala 1175:45]
  assign io_l2l_fwd_out_data = _s3_ld_data_frm_cache_T_50 | _s3_ld_data_frm_cache_T_45; // @[Mux.scala 27:73]
  assign io_l2l_fwd_out_dly_ld_err = (s3_in_lateKill | io_dcache_resp_bits_error_delayed) & s3_dly_ld_err_REG; // @[LoadUnit.scala 1040:61]
  assign io_feedback_fast_valid = _io_feedback_fast_valid_T_7 & _io_feedback_fast_valid_T_8; // @[LoadUnit.scala 946:59]
  assign io_feedback_fast_bits_rsIdx = s2_in_rrsIdx; // @[LoadUnit.scala 731:23 742:9]
  assign io_feedback_slow_valid = s3_valid & _io_fast_rep_out_valid_T_4 & s3_fb_no_waiting; // @[LoadUnit.scala 1108:98]
  assign io_feedback_slow_bits_rsIdx = s3_in_rsIdx; // @[LoadUnit.scala 1111:42]
  assign io_feedback_slow_bits_hit = _s3_out_valid_T_2 | io_lsq_ldin_ready; // @[LoadUnit.scala 1109:81]
  assign io_replay_ready = _io_fast_rep_in_ready_T & (s0_ld_rep_ready & _s0_ld_rep_valid_T_2 | s0_super_ld_rep_select); // @[LoadUnit.scala 531:56]
  assign io_fast_rep_in_ready = s0_can_go & io_dcache_req_ready & s0_ld_fast_rep_ready; // @[LoadUnit.scala 526:61]
  assign io_fast_rep_out_valid = s3_valid & s3_fast_rep & ~s3_kill; // @[LoadUnit.scala 1026:52]
  assign io_fast_rep_out_bits_uop_cf_exceptionVec_13 = s3_in_uop_cf_exceptionVec_13; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_trigger_backendEn_1 = s3_in_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_trigger_backendHit_0 = s3_in_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_trigger_backendHit_1 = s3_in_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_trigger_backendHit_4 = s3_in_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_storeSetHit = s3_in_uop_cf_storeSetHit; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_loadWaitStrict = s3_in_uop_cf_loadWaitStrict; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_ssid = s3_in_uop_cf_ssid; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_ftqPtr_flag = s3_in_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_ftqPtr_value = s3_in_uop_cf_ftqPtr_value; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_cf_ftqOffset = s3_in_uop_cf_ftqOffset; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_ctrl_fuOpType = s3_in_uop_ctrl_fuOpType; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_ctrl_rfWen = s3_in_uop_ctrl_rfWen; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_ctrl_fpWen = s3_in_uop_ctrl_fpWen; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_pdest = s3_in_uop_pdest; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_robIdx_flag = s3_in_uop_robIdx_flag; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_robIdx_value = s3_in_uop_robIdx_value; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_lqIdx_flag = s3_in_uop_lqIdx_flag; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_lqIdx_value = s3_in_uop_lqIdx_value; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_sqIdx_flag = s3_in_uop_sqIdx_flag; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_uop_sqIdx_value = s3_in_uop_sqIdx_value; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_vaddr = s3_in_vaddr; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_mask = s3_in_mask; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_rsIdx = s3_in_rsIdx; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_hasROBEntry = s3_in_hasROBEntry; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_isLoadReplay = s3_in_isLoadReplay; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_delayedLoadError = (s3_in_lateKill | io_dcache_resp_bits_error_delayed) &
    s3_dly_ld_err_REG; // @[LoadUnit.scala 1040:61]
  assign io_fast_rep_out_bits_schedIndex = s3_in_schedIndex; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_rep_info_mshr_id = s3_in_rep_info_mshr_id; // @[LoadUnit.scala 1027:24]
  assign io_fast_rep_out_bits_rep_info_cause_6 = s3_in_rep_info_cause_6; // @[LoadUnit.scala 1027:24]
  assign io_lsTopdownInfo_s1_robIdx = s1_try_ptr_chasing ? io_ldin_bits_uop_robIdx_value : s1_in_ruop_robIdx_value; // @[LoadUnit.scala 569:11 683:31 686:27]
  assign io_lsTopdownInfo_s1_vaddr_valid = s1_valid & s1_in_rhasROBEntry; // @[LoadUnit.scala 1199:51]
  assign io_lsTopdownInfo_s1_vaddr_bits = {s1_vaddr_hi,s1_vaddr_lo}; // @[Cat.scala 31:58]
  assign io_lsTopdownInfo_s2_robIdx = s2_in_ruop_robIdx_value; // @[LoadUnit.scala 731:23 742:9]
  assign io_lsTopdownInfo_s2_paddr_valid = _io_lsq_ldin_bits_missDbUpdated_T & _s2_mmio_T_4; // @[LoadUnit.scala 1202:71]
  assign io_lsTopdownInfo_s2_paddr_bits = s2_in_rpaddr; // @[LoadUnit.scala 731:23 742:9]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  always @(posedge clock) begin
    if (s0_do_try_ptr_chasing) begin // @[Reg.scala 17:18]
      s1_ptr_chasing_vaddr <= s0_ptr_chasing_vaddr; // @[Reg.scala 17:22]
    end
    if (s0_do_try_ptr_chasing) begin // @[Reg.scala 17:18]
      s1_addr_mismatch_r <= _s1_addr_mismatch_T_2; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_ctrl_fuOpType <= io_replay_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_ctrl_fuOpType <= io_fast_rep_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_ctrl_fuOpType <= io_replay_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_ctrl_fuOpType <= _GEN_172;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_rvaddr <= s0_vaddr; // @[Reg.scala 17:22]
    end
    s1_fast_rep_dly_err <= io_fast_rep_in_bits_delayedLoadError; // @[LoadUnit.scala 571:36]
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_risFastReplay <= 1'h0; // @[LoadUnit.scala 388:22]
      end else begin
        s1_in_risFastReplay <= s0_ld_fast_rep_select;
      end
    end
    s1_l2l_fwd_dly_err <= io_l2l_fwd_in_dly_ld_err; // @[LoadUnit.scala 573:36]
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_risFastPath <= 1'h0; // @[LoadUnit.scala 382:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_risFastPath <= 1'h0; // @[LoadUnit.scala 363:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_risFastPath <= 1'h0; // @[LoadUnit.scala 382:22]
      end else begin
        s1_in_risFastPath <= _GEN_344;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_robIdx_flag <= io_replay_bits_uop_robIdx_flag; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_robIdx_flag <= io_fast_rep_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_robIdx_flag <= io_replay_bits_uop_robIdx_flag; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_robIdx_flag <= _GEN_206;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_robIdx_value <= io_replay_bits_uop_robIdx_value; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_robIdx_value <= io_fast_rep_in_bits_uop_robIdx_value; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_robIdx_value <= io_replay_bits_uop_robIdx_value; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_robIdx_value <= _GEN_207;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_robIdx_flag <= io_ldin_bits_uop_robIdx_flag; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_robIdx_flag <= s1_in_ruop_robIdx_flag; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_robIdx_value <= io_ldin_bits_uop_robIdx_value; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_robIdx_value <= s1_in_ruop_robIdx_value; // @[LoadUnit.scala 569:11]
      end
    end
    s3_valid <= s2_valid & _io_feedback_fast_valid_T_8 & _s2_fire_T; // @[LoadUnit.scala 1002:66]
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_robIdx_flag <= s2_in_ruop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_robIdx_value <= s2_in_ruop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_ruop_cf_exceptionVec_4 <= s0_out_uop_cf_exceptionVec_4; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_exceptionVec_13 <= io_replay_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_exceptionVec_13 <= io_fast_rep_in_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 362:22]
      end else begin
        s1_in_ruop_cf_exceptionVec_13 <= _GEN_372;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_trigger_backendEn_1 <= io_replay_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_trigger_backendEn_1 <= io_fast_rep_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_trigger_backendEn_1 <= io_replay_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_trigger_backendEn_1 <= _GEN_140;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_trigger_backendHit_0 <= io_replay_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_trigger_backendHit_0 <= io_fast_rep_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 362:22]
      end else begin
        s1_in_ruop_cf_trigger_backendHit_0 <= _GEN_381;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_trigger_backendHit_1 <= io_replay_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_trigger_backendHit_1 <= io_fast_rep_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 362:22]
      end else begin
        s1_in_ruop_cf_trigger_backendHit_1 <= _GEN_382;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_trigger_backendHit_4 <= io_replay_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_trigger_backendHit_4 <= io_fast_rep_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 362:22]
      end else begin
        s1_in_ruop_cf_trigger_backendHit_4 <= _GEN_385;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_storeSetHit <= io_replay_bits_uop_cf_storeSetHit; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_storeSetHit <= io_fast_rep_in_bits_uop_cf_storeSetHit; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_storeSetHit <= io_replay_bits_uop_cf_storeSetHit; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_storeSetHit <= _GEN_154;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_loadWaitStrict <= io_replay_bits_uop_cf_loadWaitStrict; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_loadWaitStrict <= io_fast_rep_in_bits_uop_cf_loadWaitStrict; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_loadWaitStrict <= io_replay_bits_uop_cf_loadWaitStrict; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_loadWaitStrict <= _GEN_158;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_ssid <= io_replay_bits_uop_cf_ssid; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_ssid <= io_fast_rep_in_bits_uop_cf_ssid; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_ssid <= io_replay_bits_uop_cf_ssid; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_ssid <= _GEN_159;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_ftqPtr_flag <= io_replay_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_ftqPtr_flag <= io_fast_rep_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_ftqPtr_flag <= io_replay_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_ftqPtr_flag <= _GEN_160;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_ftqPtr_value <= io_replay_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_ftqPtr_value <= io_fast_rep_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_ftqPtr_value <= io_replay_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_ftqPtr_value <= _GEN_161;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_cf_ftqOffset <= io_replay_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_cf_ftqOffset <= io_fast_rep_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_cf_ftqOffset <= io_replay_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_cf_ftqOffset <= _GEN_162;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_ctrl_rfWen <= io_replay_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_ctrl_rfWen <= io_fast_rep_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_ctrl_rfWen <= io_replay_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_ctrl_rfWen <= _GEN_173;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_ctrl_fpWen <= io_replay_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_ctrl_fpWen <= io_fast_rep_in_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_ctrl_fpWen <= io_replay_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_ctrl_fpWen <= _GEN_174;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_pdest <= io_replay_bits_uop_pdest; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_pdest <= io_fast_rep_in_bits_uop_pdest; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_pdest <= io_replay_bits_uop_pdest; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_pdest <= _GEN_205;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_lqIdx_flag <= io_replay_bits_uop_lqIdx_flag; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_lqIdx_flag <= io_fast_rep_in_bits_uop_lqIdx_flag; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_lqIdx_flag <= io_replay_bits_uop_lqIdx_flag; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_lqIdx_flag <= _GEN_208;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_lqIdx_value <= io_replay_bits_uop_lqIdx_value; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_lqIdx_value <= io_fast_rep_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_lqIdx_value <= io_replay_bits_uop_lqIdx_value; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_lqIdx_value <= _GEN_209;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_sqIdx_flag <= io_replay_bits_uop_sqIdx_flag; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_sqIdx_flag <= io_fast_rep_in_bits_uop_sqIdx_flag; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_sqIdx_flag <= io_replay_bits_uop_sqIdx_flag; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_sqIdx_flag <= _GEN_210;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_ruop_sqIdx_value <= io_replay_bits_uop_sqIdx_value; // @[LoadUnit.scala 381:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_ruop_sqIdx_value <= io_fast_rep_in_bits_uop_sqIdx_value; // @[LoadUnit.scala 362:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_ruop_sqIdx_value <= io_replay_bits_uop_sqIdx_value; // @[LoadUnit.scala 381:22]
      end else begin
        s1_in_ruop_sqIdx_value <= _GEN_211;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_rmask <= s0_mask; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_rrsIdx <= 4'h0; // @[LoadUnit.scala 384:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_rrsIdx <= io_fast_rep_in_bits_rsIdx; // @[LoadUnit.scala 367:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_rrsIdx <= 4'h0; // @[LoadUnit.scala 384:22]
      end else begin
        s1_in_rrsIdx <= _GEN_346;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_risPrefetch <= io_replay_bits_uop_ctrl_fuOpType[3]; // @[LoadUnit.scala 391:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_risPrefetch <= io_fast_rep_in_bits_uop_ctrl_fuOpType[3]; // @[LoadUnit.scala 372:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_risPrefetch <= io_replay_bits_uop_ctrl_fuOpType[3]; // @[LoadUnit.scala 391:22]
      end else begin
        s1_in_risPrefetch <= _GEN_351;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_risHWPrefetch <= s0_hw_prf; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_rhasROBEntry <= s0_has_rob_entry; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_risLoadReplay <= s0_ld_rep; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_rmshrid <= io_replay_bits_mshrid; // @[LoadUnit.scala 386:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_rmshrid <= io_fast_rep_in_bits_rep_info_mshr_id; // @[LoadUnit.scala 366:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_rmshrid <= io_replay_bits_mshrid; // @[LoadUnit.scala 386:22]
      end else begin
        s1_in_rmshrid <= 2'h0;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_rforward_tlDchannel <= s0_super_ld_rep_select; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (s0_super_ld_rep_select) begin // @[LoadUnit.scala 479:38]
        s1_in_rschedIndex <= io_replay_bits_schedIndex; // @[LoadUnit.scala 394:22]
      end else if (s0_ld_fast_rep_select) begin // @[LoadUnit.scala 480:38]
        s1_in_rschedIndex <= io_fast_rep_in_bits_schedIndex; // @[LoadUnit.scala 375:22]
      end else if (s0_ld_rep_select) begin // @[LoadUnit.scala 481:38]
        s1_in_rschedIndex <= io_replay_bits_schedIndex; // @[LoadUnit.scala 394:22]
      end else begin
        s1_in_rschedIndex <= 3'h0;
      end
    end
    s1_sqIdx_mask <= _s1_sqIdx_mask_T[11:0] - 12'h1; // @[BitUtils.scala 180:75]
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_ruop_cf_exceptionVec_4 <= s1_out_uop_cf_exceptionVec_4; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (~s1_late_kill) begin // @[LoadUnit.scala 643:24]
        s2_in_ruop_cf_exceptionVec_5 <= io_tlb_resp_bits_excp_0_af_ld; // @[LoadUnit.scala 647:49]
      end else begin
        s2_in_ruop_cf_exceptionVec_5 <= s1_late_kill; // @[LoadUnit.scala 650:52]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (~s1_late_kill) begin // @[LoadUnit.scala 643:24]
        s2_in_ruop_cf_exceptionVec_13 <= io_tlb_resp_bits_excp_0_pf_ld; // @[LoadUnit.scala 646:49]
      end else if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_exceptionVec_13 <= 1'h0; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_exceptionVec_13 <= s1_in_ruop_cf_exceptionVec_13; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_trigger_backendEn_1 <= io_ldin_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_trigger_backendEn_1 <= s1_in_ruop_cf_trigger_backendEn_1; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_trigger_backendHit_0 <= 1'h0; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_trigger_backendHit_0 <= s1_in_ruop_cf_trigger_backendHit_0; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_trigger_backendHit_1 <= 1'h0; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_trigger_backendHit_1 <= s1_in_ruop_cf_trigger_backendHit_1; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_trigger_backendHit_4 <= 1'h0; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_trigger_backendHit_4 <= s1_in_ruop_cf_trigger_backendHit_4; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_storeSetHit <= io_ldin_bits_uop_cf_storeSetHit; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_storeSetHit <= s1_in_ruop_cf_storeSetHit; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_loadWaitStrict <= io_ldin_bits_uop_cf_loadWaitStrict; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_loadWaitStrict <= s1_in_ruop_cf_loadWaitStrict; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_ssid <= io_ldin_bits_uop_cf_ssid; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_ssid <= s1_in_ruop_cf_ssid; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_ftqPtr_flag <= io_ldin_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_ftqPtr_flag <= s1_in_ruop_cf_ftqPtr_flag; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_ftqPtr_value <= io_ldin_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_ftqPtr_value <= s1_in_ruop_cf_ftqPtr_value; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_cf_ftqOffset <= io_ldin_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_cf_ftqOffset <= s1_in_ruop_cf_ftqOffset; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_ctrl_fuOpType <= io_ldin_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_ctrl_fuOpType <= s1_in_ruop_ctrl_fuOpType; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_ctrl_rfWen <= io_ldin_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_ctrl_rfWen <= s1_in_ruop_ctrl_rfWen; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_ctrl_fpWen <= io_ldin_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_ctrl_fpWen <= s1_in_ruop_ctrl_fpWen; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_pdest <= io_ldin_bits_uop_pdest; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_pdest <= s1_in_ruop_pdest; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_lqIdx_flag <= io_ldin_bits_uop_lqIdx_flag; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_lqIdx_flag <= s1_in_ruop_lqIdx_flag; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_lqIdx_value <= io_ldin_bits_uop_lqIdx_value; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_lqIdx_value <= s1_in_ruop_lqIdx_value; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_sqIdx_flag <= io_ldin_bits_uop_sqIdx_flag; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_sqIdx_flag <= s1_in_ruop_sqIdx_flag; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_ruop_sqIdx_value <= io_ldin_bits_uop_sqIdx_value; // @[LoadUnit.scala 686:27]
      end else begin
        s2_in_ruop_sqIdx_value <= s1_in_ruop_sqIdx_value; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rvaddr <= s1_vaddr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_rpaddr <= _s1_paddr_dup_lsu_T_1; // @[LoadUnit.scala 690:27]
      end else begin
        s2_in_rpaddr <= io_tlb_resp_bits_paddr_0; // @[LoadUnit.scala 591:23]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rmask <= s1_in_rmask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rtlbMiss <= io_tlb_resp_bits_miss; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
        s2_in_rrsIdx <= io_rsIdx; // @[LoadUnit.scala 687:27]
      end else begin
        s2_in_rrsIdx <= s1_in_rrsIdx; // @[LoadUnit.scala 569:11]
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_risPrefetch <= s1_in_risPrefetch; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_risHWPrefetch <= s1_in_risHWPrefetch; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rhasROBEntry <= s1_in_rhasROBEntry; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_risLoadReplay <= s1_in_risLoadReplay; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rmshrid <= s1_in_rmshrid; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rforward_tlDchannel <= s1_in_rforward_tlDchannel; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rlateKill <= s1_late_kill; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rschedIndex <= s1_in_rschedIndex; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_rrep_info_cause_9 <= s1_out_rep_info_cause_9; // @[Reg.scala 17:22]
    end
    s2_static_pm_valid <= io_tlb_resp_bits_static_pm_valid; // @[LoadUnit.scala 745:29]
    s2_static_pm_bits <= io_tlb_resp_bits_static_pm_bits; // @[LoadUnit.scala 745:29]
    s2_cache_tag_error_REG <= io_csrCtrl_cache_error_enable; // @[LoadUnit.scala 823:35]
    io_fast_uop_valid_REG <= _io_fast_uop_valid_T_5 & _io_fast_uop_valid_T_6; // @[LoadUnit.scala 959:33]
    if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
      io_fast_uop_bits_REG_ctrl_rfWen <= io_ldin_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 686:27]
    end else begin
      io_fast_uop_bits_REG_ctrl_rfWen <= s1_in_ruop_ctrl_rfWen; // @[LoadUnit.scala 569:11]
    end
    if (s1_try_ptr_chasing) begin // @[LoadUnit.scala 683:31]
      io_fast_uop_bits_REG_pdest <= io_ldin_bits_uop_pdest; // @[LoadUnit.scala 686:27]
    end else begin
      io_fast_uop_bits_REG_pdest <= s1_in_ruop_pdest; // @[LoadUnit.scala 569:11]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      if (~s2_in_rlateKill) begin // @[LoadUnit.scala 759:26]
        if (s2_in_risPrefetch | s2_in_rtlbMiss) begin // @[LoadUnit.scala 762:36]
          s3_in_uop_cf_exceptionVec_4 <= 1'h0; // @[LoadUnit.scala 763:24]
        end else begin
          s3_in_uop_cf_exceptionVec_4 <= s2_in_ruop_cf_exceptionVec_4;
        end
      end else begin
        s3_in_uop_cf_exceptionVec_4 <= s2_in_ruop_cf_exceptionVec_4;
      end
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      if (~s2_in_rlateKill) begin // @[LoadUnit.scala 759:26]
        if (s2_in_risPrefetch | s2_in_rtlbMiss) begin // @[LoadUnit.scala 762:36]
          s3_in_uop_cf_exceptionVec_5 <= 1'h0; // @[LoadUnit.scala 763:24]
        end else begin
          s3_in_uop_cf_exceptionVec_5 <= s2_in_ruop_cf_exceptionVec_5 | s2_pmp_ld; // @[LoadUnit.scala 760:39]
        end
      end else begin
        s3_in_uop_cf_exceptionVec_5 <= s2_in_ruop_cf_exceptionVec_5;
      end
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      if (~s2_in_rlateKill) begin // @[LoadUnit.scala 759:26]
        if (s2_in_risPrefetch | s2_in_rtlbMiss) begin // @[LoadUnit.scala 762:36]
          s3_in_uop_cf_exceptionVec_13 <= 1'h0; // @[LoadUnit.scala 763:24]
        end else begin
          s3_in_uop_cf_exceptionVec_13 <= s2_in_ruop_cf_exceptionVec_13;
        end
      end else begin
        s3_in_uop_cf_exceptionVec_13 <= s2_in_ruop_cf_exceptionVec_13;
      end
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_trigger_backendEn_1 <= s2_in_ruop_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_trigger_backendHit_0 <= s2_in_ruop_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_trigger_backendHit_1 <= s2_in_ruop_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_trigger_backendHit_4 <= s2_in_ruop_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_storeSetHit <= s2_in_ruop_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_loadWaitStrict <= s2_in_ruop_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_ssid <= s2_in_ruop_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_ftqPtr_flag <= s2_in_ruop_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_ftqPtr_value <= s2_in_ruop_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_ftqOffset <= s2_in_ruop_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_ctrl_fuOpType <= s2_in_ruop_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_ctrl_rfWen <= s2_in_ruop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_ctrl_fpWen <= s2_out_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_pdest <= s2_in_ruop_pdest; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_lqIdx_flag <= s2_in_ruop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_lqIdx_value <= s2_in_ruop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_sqIdx_flag <= s2_in_ruop_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_sqIdx_value <= s2_in_ruop_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_vaddr <= s2_in_rvaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_paddr <= s2_in_rpaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_mask <= s2_in_rmask; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_miss <= s2_out_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_tlbMiss <= s2_in_rtlbMiss; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_mmio <= s2_mmio; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rsIdx <= s2_in_rrsIdx; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_hasROBEntry <= s2_in_rhasROBEntry; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_isLoadReplay <= s2_in_risLoadReplay; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_handledByMSHR <= io_dcache_resp_bits_handled; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_lateKill <= s2_in_rlateKill; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_feedbacked <= io_feedback_fast_valid; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_schedIndex <= s2_in_rschedIndex; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_mshr_id <= io_dcache_resp_bits_mshr_id; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_full_fwd <= s2_data_fwded; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_data_inv_sq_idx_flag <= io_lsq_forward_dataInvalidSqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_data_inv_sq_idx_value <= io_lsq_forward_dataInvalidSqIdx_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_addr_inv_sq_idx_flag <= io_lsq_forward_addrInvalidSqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_addr_inv_sq_idx_value <= io_lsq_forward_addrInvalidSqIdx_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_last_beat <= s2_out_rep_info_last_beat; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_0 <= s2_out_rep_info_cause_0; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_1 <= s2_out_rep_info_cause_1; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_2 <= s2_out_rep_info_cause_2; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_3 <= s2_out_rep_info_cause_3; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_4 <= s2_out_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_6 <= s2_out_rep_info_cause_6; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_7 <= s2_out_rep_info_cause_7; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_8 <= s2_out_rep_info_cause_8; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_rep_info_cause_9 <= s2_out_rep_info_cause_9; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_dcache_rep <= _s3_dcache_rep_T; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_ld_valid_dup <= s2_ld_valid_dup; // @[Reg.scala 17:22]
    end
    s3_troublem <= _s2_troublem_T_4 & _T_15; // @[LoadUnit.scala 828:36]
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_fwd_data_valid <= io_forward_mshr_forward_result_valid; // @[Reg.scala 17:22]
    end
    s3_fast_rep_REG <= _s2_fast_rep_T_7 & s2_troublem; // @[LoadUnit.scala 855:82]
    s3_vp_match_fail_REG <= io_lsq_forward_matchInvalid | io_sbuffer_matchInvalid; // @[LoadUnit.scala 1048:62]
    s3_ldld_rep_inst_REG <= io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 1052:14]
    s3_dly_ld_err_REG <= io_csrCtrl_cache_error_enable; // @[LoadUnit.scala 1040:71]
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__0 <= s2_fwd_mask_0; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__1 <= s2_fwd_mask_1; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__2 <= s2_fwd_mask_2; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__3 <= s2_fwd_mask_3; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__4 <= s2_fwd_mask_4; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__5 <= s2_fwd_mask_5; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__6 <= s2_fwd_mask_6; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__7 <= s2_fwd_mask_7; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__8 <= s2_fwd_mask_8; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__9 <= s2_fwd_mask_9; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__10 <= s2_fwd_mask_10; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__11 <= s2_fwd_mask_11; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__12 <= s2_fwd_mask_12; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__13 <= s2_fwd_mask_13; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__14 <= s2_fwd_mask_14; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r__15 <= s2_fwd_mask_15; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_0) begin // @[LoadUnit.scala 889:26]
        r_1_0 <= io_lsq_forward_forwardData_0;
      end else begin
        r_1_0 <= io_sbuffer_forwardData_0;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_1) begin // @[LoadUnit.scala 889:26]
        r_1_1 <= io_lsq_forward_forwardData_1;
      end else begin
        r_1_1 <= io_sbuffer_forwardData_1;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_2) begin // @[LoadUnit.scala 889:26]
        r_1_2 <= io_lsq_forward_forwardData_2;
      end else begin
        r_1_2 <= io_sbuffer_forwardData_2;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_3) begin // @[LoadUnit.scala 889:26]
        r_1_3 <= io_lsq_forward_forwardData_3;
      end else begin
        r_1_3 <= io_sbuffer_forwardData_3;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_4) begin // @[LoadUnit.scala 889:26]
        r_1_4 <= io_lsq_forward_forwardData_4;
      end else begin
        r_1_4 <= io_sbuffer_forwardData_4;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_5) begin // @[LoadUnit.scala 889:26]
        r_1_5 <= io_lsq_forward_forwardData_5;
      end else begin
        r_1_5 <= io_sbuffer_forwardData_5;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_6) begin // @[LoadUnit.scala 889:26]
        r_1_6 <= io_lsq_forward_forwardData_6;
      end else begin
        r_1_6 <= io_sbuffer_forwardData_6;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_7) begin // @[LoadUnit.scala 889:26]
        r_1_7 <= io_lsq_forward_forwardData_7;
      end else begin
        r_1_7 <= io_sbuffer_forwardData_7;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_8) begin // @[LoadUnit.scala 889:26]
        r_1_8 <= io_lsq_forward_forwardData_8;
      end else begin
        r_1_8 <= io_sbuffer_forwardData_8;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_9) begin // @[LoadUnit.scala 889:26]
        r_1_9 <= io_lsq_forward_forwardData_9;
      end else begin
        r_1_9 <= io_sbuffer_forwardData_9;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_10) begin // @[LoadUnit.scala 889:26]
        r_1_10 <= io_lsq_forward_forwardData_10;
      end else begin
        r_1_10 <= io_sbuffer_forwardData_10;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_11) begin // @[LoadUnit.scala 889:26]
        r_1_11 <= io_lsq_forward_forwardData_11;
      end else begin
        r_1_11 <= io_sbuffer_forwardData_11;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_12) begin // @[LoadUnit.scala 889:26]
        r_1_12 <= io_lsq_forward_forwardData_12;
      end else begin
        r_1_12 <= io_sbuffer_forwardData_12;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_13) begin // @[LoadUnit.scala 889:26]
        r_1_13 <= io_lsq_forward_forwardData_13;
      end else begin
        r_1_13 <= io_sbuffer_forwardData_13;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_14) begin // @[LoadUnit.scala 889:26]
        r_1_14 <= io_lsq_forward_forwardData_14;
      end else begin
        r_1_14 <= io_sbuffer_forwardData_14;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      if (io_lsq_forward_forwardMask_15) begin // @[LoadUnit.scala 889:26]
        r_1_15 <= io_lsq_forward_forwardData_15;
      end else begin
        r_1_15 <= io_sbuffer_forwardData_15;
      end
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType <= s2_in_ruop_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_ld_raw_data_frm_cache_uop_rctrl_fpWen <= s2_out_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_ld_raw_data_frm_cache_addrOffset_r <= s2_in_rpaddr[3:0]; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_ld_raw_data_frm_cache_forward_D_r <= s2_fwd_frm_d_chan; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_0 <= s2_fwd_data_frm_d_chan_0; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_1 <= s2_fwd_data_frm_d_chan_1; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_2 <= s2_fwd_data_frm_d_chan_2; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_3 <= s2_fwd_data_frm_d_chan_3; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_4 <= s2_fwd_data_frm_d_chan_4; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_5 <= s2_fwd_data_frm_d_chan_5; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_6 <= s2_fwd_data_frm_d_chan_6; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_7 <= s2_fwd_data_frm_d_chan_7; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_8 <= s2_fwd_data_frm_d_chan_8; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_9 <= s2_fwd_data_frm_d_chan_9; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_10 <= s2_fwd_data_frm_d_chan_10; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_11 <= s2_fwd_data_frm_d_chan_11; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_12 <= s2_fwd_data_frm_d_chan_12; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_13 <= s2_fwd_data_frm_d_chan_13; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_14 <= s2_fwd_data_frm_d_chan_14; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_2_15 <= s2_fwd_data_frm_d_chan_15; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_ld_raw_data_frm_cache_forward_mshr_r <= io_forward_mshr_forward_mshr; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_0 <= io_forward_mshr_forwardData_0; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_1 <= io_forward_mshr_forwardData_1; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_2 <= io_forward_mshr_forwardData_2; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_3 <= io_forward_mshr_forwardData_3; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_4 <= io_forward_mshr_forwardData_4; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_5 <= io_forward_mshr_forwardData_5; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_6 <= io_forward_mshr_forwardData_6; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_7 <= io_forward_mshr_forwardData_7; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_8 <= io_forward_mshr_forwardData_8; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_9 <= io_forward_mshr_forwardData_9; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_10 <= io_forward_mshr_forwardData_10; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_11 <= io_forward_mshr_forwardData_11; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_12 <= io_forward_mshr_forwardData_12; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_13 <= io_forward_mshr_forwardData_13; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_14 <= io_forward_mshr_forwardData_14; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      r_3_15 <= io_forward_mshr_forwardData_15; // @[Reg.scala 17:22]
    end
    if (s2_valid) begin // @[Reg.scala 17:18]
      s3_ld_raw_data_frm_cache_forward_result_valid_r <= io_forward_mshr_forward_result_valid; // @[Reg.scala 17:22]
    end
    tdata2 <= io_trigger_0_tdata2; // @[LoadUnit.scala 1184:28]
    matchType <= io_trigger_0_matchType; // @[LoadUnit.scala 1185:28]
    tEnable <= io_trigger_0_tEnable; // @[LoadUnit.scala 1186:28]
    hit_ld_addr_trig_hit_vec_0_REG <= s2_in_rvaddr; // @[LoadUnit.scala 731:23 742:9]
    tdata2_1 <= io_trigger_1_tdata2; // @[LoadUnit.scala 1184:28]
    matchType_1 <= io_trigger_1_matchType; // @[LoadUnit.scala 1185:28]
    tEnable_1 <= io_trigger_1_tEnable; // @[LoadUnit.scala 1186:28]
    hit_ld_addr_trig_hit_vec_1_REG <= s2_in_rvaddr; // @[LoadUnit.scala 731:23 742:9]
    tdata2_2 <= io_trigger_2_tdata2; // @[LoadUnit.scala 1184:28]
    matchType_2 <= io_trigger_2_matchType; // @[LoadUnit.scala 1185:28]
    tEnable_2 <= io_trigger_2_tEnable; // @[LoadUnit.scala 1186:28]
    hit_ld_addr_trig_hit_vec_2_REG <= s2_in_rvaddr; // @[LoadUnit.scala 731:23 742:9]
    io_perf_0_value_REG <= s0_valid & s0_can_go; // @[LoadUnit.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= s1_fire & s1_try_ptr_chasing & _T_132; // @[LoadUnit.scala 1269:64]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= s0_fire & _T_70; // @[LoadUnit.scala 1270:56]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= s0_valid & s0_can_go; // @[LoadUnit.scala 189:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= s1_fire & io_tlb_resp_bits_miss; // @[LoadUnit.scala 1272:42]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= s1_valid & ~s1_kill & s1_can_go; // @[LoadUnit.scala 563:44]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= s2_fire & io_dcache_resp_bits_miss; // @[LoadUnit.scala 1274:42]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadUnit.scala 292:65]
      s1_try_ptr_chasing <= 1'h0;
    end else begin
      s1_try_ptr_chasing <= s0_l2l_fwd_select & s0_can_go & io_dcache_req_ready;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadUnit.scala 566:18]
      s1_valid <= 1'h0; // @[LoadUnit.scala 566:29]
    end else begin
      s1_valid <= s0_fire | _GEN_725;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      s1_kill_r <= 1'h0; // @[Reg.scala 29:22]
    end else if (_s1_kill_T_7) begin // @[Reg.scala 28:20]
      s1_kill_r <= s0_kill;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadUnit.scala 739:18]
      s2_valid <= 1'h0; // @[LoadUnit.scala 739:29]
    end else begin
      s2_valid <= s1_fire | _GEN_1057;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 630:40]
      s2_fwd_frm_d_chan <= 1'h0;
    end else begin
      s2_fwd_frm_d_chan <= _all_match_T_2 & _all_match_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_0 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_0 <= selected_data[7:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_1 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_1 <= selected_data[15:8];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_2 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_2 <= selected_data[23:16];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_3 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_3 <= selected_data[31:24];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_4 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_4 <= selected_data[39:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_5 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_5 <= selected_data[47:40];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_6 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_6 <= selected_data[55:48];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_7 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_7 <= selected_data[63:56];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_8 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_8 <= selected_data[71:64];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_9 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_9 <= selected_data[79:72];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_10 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_10 <= selected_data[87:80];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_11 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_11 <= selected_data[95:88];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_12 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_12 <= selected_data[103:96];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_13 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_13 <= selected_data[111:104];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_14 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_14 <= selected_data[119:112];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s2_fwd_data_frm_d_chan_15 <= 8'h0;
    end else begin
      s2_fwd_data_frm_d_chan_15 <= selected_data[127:120];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadUnit.scala 994:41]
      s2_ld_valid_dup <= 6'h0; // @[LoadUnit.scala 994:59]
    end else if (s1_kill | s1_in_risHWPrefetch) begin // @[LoadUnit.scala 993:50]
      s2_ld_valid_dup <= 6'h0; // @[LoadUnit.scala 993:68]
    end else if (s1_fire & _s1_sw_prf_T) begin // @[LoadUnit.scala 992:19]
      s2_ld_valid_dup <= 6'h3f;
    end else begin
      s2_ld_valid_dup <= 6'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 630:40]
      s3_fwd_frm_d_chan <= 1'h0;
    end else begin
      s3_fwd_frm_d_chan <= _all_match_T_7 & _all_match_T_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_0 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_0 <= selected_data_1[7:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_1 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_1 <= selected_data_1[15:8];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_2 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_2 <= selected_data_1[23:16];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_3 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_3 <= selected_data_1[31:24];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_4 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_4 <= selected_data_1[39:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_5 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_5 <= selected_data_1[47:40];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_6 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_6 <= selected_data_1[55:48];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_7 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_7 <= selected_data_1[63:56];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_8 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_8 <= selected_data_1[71:64];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_9 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_9 <= selected_data_1[79:72];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_10 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_10 <= selected_data_1[87:80];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_11 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_11 <= selected_data_1[95:88];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_12 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_12 <= selected_data_1[103:96];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_13 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_13 <= selected_data_1[111:104];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_14 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_14 <= selected_data_1[119:112];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 646:38]
      s3_fwd_data_frm_d_chan_15 <= 8'h0;
    end else begin
      s3_fwd_data_frm_d_chan_15 <= selected_data_1[127:120];
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
  s1_try_ptr_chasing = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s1_ptr_chasing_vaddr = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  s1_addr_mismatch_r = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s1_in_ruop_ctrl_fuOpType = _RAND_3[6:0];
  _RAND_4 = {2{`RANDOM}};
  s1_in_rvaddr = _RAND_4[38:0];
  _RAND_5 = {1{`RANDOM}};
  s1_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_fast_rep_dly_err = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_in_risFastReplay = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s1_l2l_fwd_dly_err = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_in_risFastPath = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s1_in_ruop_robIdx_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s1_in_ruop_robIdx_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  s1_kill_r = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_valid = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_in_ruop_robIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_in_ruop_robIdx_value = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  s3_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s3_in_uop_robIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s3_in_uop_robIdx_value = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  s1_in_ruop_cf_exceptionVec_4 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s1_in_ruop_cf_exceptionVec_13 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s1_in_ruop_cf_trigger_backendEn_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s1_in_ruop_cf_trigger_backendHit_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s1_in_ruop_cf_trigger_backendHit_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s1_in_ruop_cf_trigger_backendHit_4 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s1_in_ruop_cf_storeSetHit = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s1_in_ruop_cf_loadWaitStrict = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  s1_in_ruop_cf_ssid = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  s1_in_ruop_cf_ftqPtr_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  s1_in_ruop_cf_ftqPtr_value = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  s1_in_ruop_cf_ftqOffset = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  s1_in_ruop_ctrl_rfWen = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s1_in_ruop_ctrl_fpWen = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s1_in_ruop_pdest = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  s1_in_ruop_lqIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s1_in_ruop_lqIdx_value = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  s1_in_ruop_sqIdx_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s1_in_ruop_sqIdx_value = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  s1_in_rmask = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  s1_in_rrsIdx = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  s1_in_risPrefetch = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s1_in_risHWPrefetch = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s1_in_rhasROBEntry = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s1_in_risLoadReplay = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s1_in_rmshrid = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  s1_in_rforward_tlDchannel = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s1_in_rschedIndex = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  s1_sqIdx_mask = _RAND_47[11:0];
  _RAND_48 = {1{`RANDOM}};
  s2_in_ruop_cf_exceptionVec_4 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s2_in_ruop_cf_exceptionVec_5 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s2_in_ruop_cf_exceptionVec_13 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s2_in_ruop_cf_trigger_backendEn_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  s2_in_ruop_cf_trigger_backendHit_0 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s2_in_ruop_cf_trigger_backendHit_1 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s2_in_ruop_cf_trigger_backendHit_4 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s2_in_ruop_cf_storeSetHit = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s2_in_ruop_cf_loadWaitStrict = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s2_in_ruop_cf_ssid = _RAND_57[4:0];
  _RAND_58 = {1{`RANDOM}};
  s2_in_ruop_cf_ftqPtr_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s2_in_ruop_cf_ftqPtr_value = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  s2_in_ruop_cf_ftqOffset = _RAND_60[2:0];
  _RAND_61 = {1{`RANDOM}};
  s2_in_ruop_ctrl_fuOpType = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  s2_in_ruop_ctrl_rfWen = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s2_in_ruop_ctrl_fpWen = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s2_in_ruop_pdest = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  s2_in_ruop_lqIdx_flag = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s2_in_ruop_lqIdx_value = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  s2_in_ruop_sqIdx_flag = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  s2_in_ruop_sqIdx_value = _RAND_68[3:0];
  _RAND_69 = {2{`RANDOM}};
  s2_in_rvaddr = _RAND_69[38:0];
  _RAND_70 = {2{`RANDOM}};
  s2_in_rpaddr = _RAND_70[35:0];
  _RAND_71 = {1{`RANDOM}};
  s2_in_rmask = _RAND_71[15:0];
  _RAND_72 = {1{`RANDOM}};
  s2_in_rtlbMiss = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s2_in_rrsIdx = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  s2_in_risPrefetch = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  s2_in_risHWPrefetch = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  s2_in_rhasROBEntry = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  s2_in_risLoadReplay = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  s2_in_rmshrid = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  s2_in_rforward_tlDchannel = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  s2_in_rlateKill = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  s2_in_rschedIndex = _RAND_81[2:0];
  _RAND_82 = {1{`RANDOM}};
  s2_in_rrep_info_cause_9 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  s2_static_pm_valid = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  s2_static_pm_bits = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  s2_fwd_frm_d_chan = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_0 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_1 = _RAND_87[7:0];
  _RAND_88 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_2 = _RAND_88[7:0];
  _RAND_89 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_3 = _RAND_89[7:0];
  _RAND_90 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_4 = _RAND_90[7:0];
  _RAND_91 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_5 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_6 = _RAND_92[7:0];
  _RAND_93 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_7 = _RAND_93[7:0];
  _RAND_94 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_8 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_9 = _RAND_95[7:0];
  _RAND_96 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_10 = _RAND_96[7:0];
  _RAND_97 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_11 = _RAND_97[7:0];
  _RAND_98 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_12 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_13 = _RAND_99[7:0];
  _RAND_100 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_14 = _RAND_100[7:0];
  _RAND_101 = {1{`RANDOM}};
  s2_fwd_data_frm_d_chan_15 = _RAND_101[7:0];
  _RAND_102 = {1{`RANDOM}};
  s2_cache_tag_error_REG = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  io_fast_uop_valid_REG = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  io_fast_uop_bits_REG_ctrl_rfWen = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  io_fast_uop_bits_REG_pdest = _RAND_105[5:0];
  _RAND_106 = {1{`RANDOM}};
  s2_ld_valid_dup = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  s3_in_uop_cf_exceptionVec_4 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  s3_in_uop_cf_exceptionVec_5 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  s3_in_uop_cf_exceptionVec_13 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  s3_in_uop_cf_trigger_backendEn_1 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  s3_in_uop_cf_trigger_backendHit_0 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  s3_in_uop_cf_trigger_backendHit_1 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  s3_in_uop_cf_trigger_backendHit_4 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  s3_in_uop_cf_storeSetHit = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  s3_in_uop_cf_loadWaitStrict = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  s3_in_uop_cf_ssid = _RAND_116[4:0];
  _RAND_117 = {1{`RANDOM}};
  s3_in_uop_cf_ftqPtr_flag = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  s3_in_uop_cf_ftqPtr_value = _RAND_118[2:0];
  _RAND_119 = {1{`RANDOM}};
  s3_in_uop_cf_ftqOffset = _RAND_119[2:0];
  _RAND_120 = {1{`RANDOM}};
  s3_in_uop_ctrl_fuOpType = _RAND_120[6:0];
  _RAND_121 = {1{`RANDOM}};
  s3_in_uop_ctrl_rfWen = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  s3_in_uop_ctrl_fpWen = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  s3_in_uop_pdest = _RAND_123[5:0];
  _RAND_124 = {1{`RANDOM}};
  s3_in_uop_lqIdx_flag = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  s3_in_uop_lqIdx_value = _RAND_125[3:0];
  _RAND_126 = {1{`RANDOM}};
  s3_in_uop_sqIdx_flag = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  s3_in_uop_sqIdx_value = _RAND_127[3:0];
  _RAND_128 = {2{`RANDOM}};
  s3_in_vaddr = _RAND_128[38:0];
  _RAND_129 = {2{`RANDOM}};
  s3_in_paddr = _RAND_129[35:0];
  _RAND_130 = {1{`RANDOM}};
  s3_in_mask = _RAND_130[15:0];
  _RAND_131 = {1{`RANDOM}};
  s3_in_miss = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  s3_in_tlbMiss = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  s3_in_mmio = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  s3_in_rsIdx = _RAND_134[3:0];
  _RAND_135 = {1{`RANDOM}};
  s3_in_hasROBEntry = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  s3_in_isLoadReplay = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  s3_in_handledByMSHR = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  s3_in_lateKill = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  s3_in_feedbacked = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  s3_in_schedIndex = _RAND_140[2:0];
  _RAND_141 = {1{`RANDOM}};
  s3_in_rep_info_mshr_id = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  s3_in_rep_info_full_fwd = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  s3_in_rep_info_data_inv_sq_idx_flag = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  s3_in_rep_info_data_inv_sq_idx_value = _RAND_144[3:0];
  _RAND_145 = {1{`RANDOM}};
  s3_in_rep_info_addr_inv_sq_idx_flag = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  s3_in_rep_info_addr_inv_sq_idx_value = _RAND_146[3:0];
  _RAND_147 = {1{`RANDOM}};
  s3_in_rep_info_last_beat = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  s3_in_rep_info_cause_0 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  s3_in_rep_info_cause_1 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  s3_in_rep_info_cause_2 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  s3_in_rep_info_cause_3 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  s3_in_rep_info_cause_4 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  s3_in_rep_info_cause_6 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  s3_in_rep_info_cause_7 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  s3_in_rep_info_cause_8 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  s3_in_rep_info_cause_9 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  s3_dcache_rep = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  s3_ld_valid_dup = _RAND_158[5:0];
  _RAND_159 = {1{`RANDOM}};
  s3_troublem = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  s3_fwd_frm_d_chan = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_0 = _RAND_161[7:0];
  _RAND_162 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_1 = _RAND_162[7:0];
  _RAND_163 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_2 = _RAND_163[7:0];
  _RAND_164 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_3 = _RAND_164[7:0];
  _RAND_165 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_4 = _RAND_165[7:0];
  _RAND_166 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_5 = _RAND_166[7:0];
  _RAND_167 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_6 = _RAND_167[7:0];
  _RAND_168 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_7 = _RAND_168[7:0];
  _RAND_169 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_8 = _RAND_169[7:0];
  _RAND_170 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_9 = _RAND_170[7:0];
  _RAND_171 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_10 = _RAND_171[7:0];
  _RAND_172 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_11 = _RAND_172[7:0];
  _RAND_173 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_12 = _RAND_173[7:0];
  _RAND_174 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_13 = _RAND_174[7:0];
  _RAND_175 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_14 = _RAND_175[7:0];
  _RAND_176 = {1{`RANDOM}};
  s3_fwd_data_frm_d_chan_15 = _RAND_176[7:0];
  _RAND_177 = {1{`RANDOM}};
  s3_fwd_data_valid = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  s3_fast_rep_REG = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  s3_vp_match_fail_REG = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  s3_ldld_rep_inst_REG = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  s3_dly_ld_err_REG = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  r__0 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  r__1 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  r__2 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  r__3 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  r__4 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  r__5 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  r__6 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  r__7 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  r__8 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  r__9 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  r__10 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  r__11 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  r__12 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  r__13 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  r__14 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  r__15 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  r_1_0 = _RAND_198[7:0];
  _RAND_199 = {1{`RANDOM}};
  r_1_1 = _RAND_199[7:0];
  _RAND_200 = {1{`RANDOM}};
  r_1_2 = _RAND_200[7:0];
  _RAND_201 = {1{`RANDOM}};
  r_1_3 = _RAND_201[7:0];
  _RAND_202 = {1{`RANDOM}};
  r_1_4 = _RAND_202[7:0];
  _RAND_203 = {1{`RANDOM}};
  r_1_5 = _RAND_203[7:0];
  _RAND_204 = {1{`RANDOM}};
  r_1_6 = _RAND_204[7:0];
  _RAND_205 = {1{`RANDOM}};
  r_1_7 = _RAND_205[7:0];
  _RAND_206 = {1{`RANDOM}};
  r_1_8 = _RAND_206[7:0];
  _RAND_207 = {1{`RANDOM}};
  r_1_9 = _RAND_207[7:0];
  _RAND_208 = {1{`RANDOM}};
  r_1_10 = _RAND_208[7:0];
  _RAND_209 = {1{`RANDOM}};
  r_1_11 = _RAND_209[7:0];
  _RAND_210 = {1{`RANDOM}};
  r_1_12 = _RAND_210[7:0];
  _RAND_211 = {1{`RANDOM}};
  r_1_13 = _RAND_211[7:0];
  _RAND_212 = {1{`RANDOM}};
  r_1_14 = _RAND_212[7:0];
  _RAND_213 = {1{`RANDOM}};
  r_1_15 = _RAND_213[7:0];
  _RAND_214 = {1{`RANDOM}};
  s3_ld_raw_data_frm_cache_uop_rctrl_fuOpType = _RAND_214[6:0];
  _RAND_215 = {1{`RANDOM}};
  s3_ld_raw_data_frm_cache_uop_rctrl_fpWen = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  s3_ld_raw_data_frm_cache_addrOffset_r = _RAND_216[3:0];
  _RAND_217 = {1{`RANDOM}};
  s3_ld_raw_data_frm_cache_forward_D_r = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  r_2_0 = _RAND_218[7:0];
  _RAND_219 = {1{`RANDOM}};
  r_2_1 = _RAND_219[7:0];
  _RAND_220 = {1{`RANDOM}};
  r_2_2 = _RAND_220[7:0];
  _RAND_221 = {1{`RANDOM}};
  r_2_3 = _RAND_221[7:0];
  _RAND_222 = {1{`RANDOM}};
  r_2_4 = _RAND_222[7:0];
  _RAND_223 = {1{`RANDOM}};
  r_2_5 = _RAND_223[7:0];
  _RAND_224 = {1{`RANDOM}};
  r_2_6 = _RAND_224[7:0];
  _RAND_225 = {1{`RANDOM}};
  r_2_7 = _RAND_225[7:0];
  _RAND_226 = {1{`RANDOM}};
  r_2_8 = _RAND_226[7:0];
  _RAND_227 = {1{`RANDOM}};
  r_2_9 = _RAND_227[7:0];
  _RAND_228 = {1{`RANDOM}};
  r_2_10 = _RAND_228[7:0];
  _RAND_229 = {1{`RANDOM}};
  r_2_11 = _RAND_229[7:0];
  _RAND_230 = {1{`RANDOM}};
  r_2_12 = _RAND_230[7:0];
  _RAND_231 = {1{`RANDOM}};
  r_2_13 = _RAND_231[7:0];
  _RAND_232 = {1{`RANDOM}};
  r_2_14 = _RAND_232[7:0];
  _RAND_233 = {1{`RANDOM}};
  r_2_15 = _RAND_233[7:0];
  _RAND_234 = {1{`RANDOM}};
  s3_ld_raw_data_frm_cache_forward_mshr_r = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  r_3_0 = _RAND_235[7:0];
  _RAND_236 = {1{`RANDOM}};
  r_3_1 = _RAND_236[7:0];
  _RAND_237 = {1{`RANDOM}};
  r_3_2 = _RAND_237[7:0];
  _RAND_238 = {1{`RANDOM}};
  r_3_3 = _RAND_238[7:0];
  _RAND_239 = {1{`RANDOM}};
  r_3_4 = _RAND_239[7:0];
  _RAND_240 = {1{`RANDOM}};
  r_3_5 = _RAND_240[7:0];
  _RAND_241 = {1{`RANDOM}};
  r_3_6 = _RAND_241[7:0];
  _RAND_242 = {1{`RANDOM}};
  r_3_7 = _RAND_242[7:0];
  _RAND_243 = {1{`RANDOM}};
  r_3_8 = _RAND_243[7:0];
  _RAND_244 = {1{`RANDOM}};
  r_3_9 = _RAND_244[7:0];
  _RAND_245 = {1{`RANDOM}};
  r_3_10 = _RAND_245[7:0];
  _RAND_246 = {1{`RANDOM}};
  r_3_11 = _RAND_246[7:0];
  _RAND_247 = {1{`RANDOM}};
  r_3_12 = _RAND_247[7:0];
  _RAND_248 = {1{`RANDOM}};
  r_3_13 = _RAND_248[7:0];
  _RAND_249 = {1{`RANDOM}};
  r_3_14 = _RAND_249[7:0];
  _RAND_250 = {1{`RANDOM}};
  r_3_15 = _RAND_250[7:0];
  _RAND_251 = {1{`RANDOM}};
  s3_ld_raw_data_frm_cache_forward_result_valid_r = _RAND_251[0:0];
  _RAND_252 = {2{`RANDOM}};
  tdata2 = _RAND_252[63:0];
  _RAND_253 = {1{`RANDOM}};
  matchType = _RAND_253[1:0];
  _RAND_254 = {1{`RANDOM}};
  tEnable = _RAND_254[0:0];
  _RAND_255 = {2{`RANDOM}};
  hit_ld_addr_trig_hit_vec_0_REG = _RAND_255[38:0];
  _RAND_256 = {2{`RANDOM}};
  tdata2_1 = _RAND_256[63:0];
  _RAND_257 = {1{`RANDOM}};
  matchType_1 = _RAND_257[1:0];
  _RAND_258 = {1{`RANDOM}};
  tEnable_1 = _RAND_258[0:0];
  _RAND_259 = {2{`RANDOM}};
  hit_ld_addr_trig_hit_vec_1_REG = _RAND_259[38:0];
  _RAND_260 = {2{`RANDOM}};
  tdata2_2 = _RAND_260[63:0];
  _RAND_261 = {1{`RANDOM}};
  matchType_2 = _RAND_261[1:0];
  _RAND_262 = {1{`RANDOM}};
  tEnable_2 = _RAND_262[0:0];
  _RAND_263 = {2{`RANDOM}};
  hit_ld_addr_trig_hit_vec_2_REG = _RAND_263[38:0];
  _RAND_264 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_277[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    s1_try_ptr_chasing = 1'h0;
  end
  if (reset) begin
    s1_valid = 1'h0;
  end
  if (reset) begin
    s1_kill_r = 1'h0;
  end
  if (reset) begin
    s2_valid = 1'h0;
  end
  if (reset) begin
    s2_fwd_frm_d_chan = 1'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_0 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_1 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_2 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_3 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_4 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_5 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_6 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_7 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_8 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_9 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_10 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_11 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_12 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_13 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_14 = 8'h0;
  end
  if (reset) begin
    s2_fwd_data_frm_d_chan_15 = 8'h0;
  end
  if (reset) begin
    s2_ld_valid_dup = 6'h0;
  end
  if (reset) begin
    s3_fwd_frm_d_chan = 1'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_0 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_1 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_2 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_3 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_4 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_5 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_6 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_7 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_8 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_9 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_10 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_11 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_12 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_13 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_14 = 8'h0;
  end
  if (reset) begin
    s3_fwd_data_frm_d_chan_15 = 8'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

