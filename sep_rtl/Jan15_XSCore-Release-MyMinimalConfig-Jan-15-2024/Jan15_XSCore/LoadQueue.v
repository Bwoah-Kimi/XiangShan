module LoadQueue(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_enq_canAccept,
  input         io_enq_sqCanAccept,
  input         io_enq_needAlloc_0,
  input         io_enq_needAlloc_1,
  input         io_enq_needAlloc_2,
  input         io_enq_req_0_valid,
  input         io_enq_req_0_bits_robIdx_flag,
  input  [4:0]  io_enq_req_0_bits_robIdx_value,
  input  [3:0]  io_enq_req_0_bits_lqIdx_value,
  input         io_enq_req_1_valid,
  input         io_enq_req_1_bits_robIdx_flag,
  input  [4:0]  io_enq_req_1_bits_robIdx_value,
  input  [3:0]  io_enq_req_1_bits_lqIdx_value,
  input         io_enq_req_2_valid,
  input         io_enq_req_2_bits_robIdx_flag,
  input  [4:0]  io_enq_req_2_bits_robIdx_value,
  input  [3:0]  io_enq_req_2_bits_lqIdx_value,
  input         io_enq_req_3_valid,
  input         io_enq_req_3_bits_robIdx_flag,
  input  [4:0]  io_enq_req_3_bits_robIdx_value,
  input  [3:0]  io_enq_req_3_bits_lqIdx_value,
  output        io_enq_resp_0_flag,
  output [3:0]  io_enq_resp_0_value,
  output        io_enq_resp_1_flag,
  output [3:0]  io_enq_resp_1_value,
  output        io_enq_resp_2_flag,
  output [3:0]  io_enq_resp_2_value,
  output        io_enq_resp_3_flag,
  output [3:0]  io_enq_resp_3_value,
  output        io_ldu_stld_nuke_query_0_req_ready,
  input         io_ldu_stld_nuke_query_0_req_valid,
  input         io_ldu_stld_nuke_query_0_req_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_ldu_stld_nuke_query_0_req_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_ldu_stld_nuke_query_0_req_bits_uop_cf_ftqOffset,
  input         io_ldu_stld_nuke_query_0_req_bits_uop_robIdx_flag,
  input  [4:0]  io_ldu_stld_nuke_query_0_req_bits_uop_robIdx_value,
  input         io_ldu_stld_nuke_query_0_req_bits_uop_sqIdx_flag,
  input  [3:0]  io_ldu_stld_nuke_query_0_req_bits_uop_sqIdx_value,
  input  [15:0] io_ldu_stld_nuke_query_0_req_bits_mask,
  input  [35:0] io_ldu_stld_nuke_query_0_req_bits_paddr,
  input         io_ldu_stld_nuke_query_0_req_bits_data_valid,
  input         io_ldu_stld_nuke_query_0_revoke,
  output        io_ldu_stld_nuke_query_1_req_ready,
  input         io_ldu_stld_nuke_query_1_req_valid,
  input         io_ldu_stld_nuke_query_1_req_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_ldu_stld_nuke_query_1_req_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_ldu_stld_nuke_query_1_req_bits_uop_cf_ftqOffset,
  input         io_ldu_stld_nuke_query_1_req_bits_uop_robIdx_flag,
  input  [4:0]  io_ldu_stld_nuke_query_1_req_bits_uop_robIdx_value,
  input         io_ldu_stld_nuke_query_1_req_bits_uop_sqIdx_flag,
  input  [3:0]  io_ldu_stld_nuke_query_1_req_bits_uop_sqIdx_value,
  input  [15:0] io_ldu_stld_nuke_query_1_req_bits_mask,
  input  [35:0] io_ldu_stld_nuke_query_1_req_bits_paddr,
  input         io_ldu_stld_nuke_query_1_req_bits_data_valid,
  input         io_ldu_stld_nuke_query_1_revoke,
  output        io_ldu_ldld_nuke_query_0_req_ready,
  input         io_ldu_ldld_nuke_query_0_req_valid,
  input         io_ldu_ldld_nuke_query_0_req_bits_uop_robIdx_flag,
  input  [4:0]  io_ldu_ldld_nuke_query_0_req_bits_uop_robIdx_value,
  input         io_ldu_ldld_nuke_query_0_req_bits_uop_lqIdx_flag,
  input  [3:0]  io_ldu_ldld_nuke_query_0_req_bits_uop_lqIdx_value,
  input  [35:0] io_ldu_ldld_nuke_query_0_req_bits_paddr,
  input         io_ldu_ldld_nuke_query_0_req_bits_data_valid,
  output        io_ldu_ldld_nuke_query_0_resp_valid,
  output        io_ldu_ldld_nuke_query_0_resp_bits_rep_frm_fetch,
  input         io_ldu_ldld_nuke_query_0_revoke,
  output        io_ldu_ldld_nuke_query_1_req_ready,
  input         io_ldu_ldld_nuke_query_1_req_valid,
  input         io_ldu_ldld_nuke_query_1_req_bits_uop_robIdx_flag,
  input  [4:0]  io_ldu_ldld_nuke_query_1_req_bits_uop_robIdx_value,
  input         io_ldu_ldld_nuke_query_1_req_bits_uop_lqIdx_flag,
  input  [3:0]  io_ldu_ldld_nuke_query_1_req_bits_uop_lqIdx_value,
  input  [35:0] io_ldu_ldld_nuke_query_1_req_bits_paddr,
  input         io_ldu_ldld_nuke_query_1_req_bits_data_valid,
  output        io_ldu_ldld_nuke_query_1_resp_valid,
  output        io_ldu_ldld_nuke_query_1_resp_bits_rep_frm_fetch,
  input         io_ldu_ldld_nuke_query_1_revoke,
  output        io_ldu_ldin_0_ready,
  input         io_ldu_ldin_0_valid,
  input         io_ldu_ldin_0_bits_uop_cf_exceptionVec_4,
  input         io_ldu_ldin_0_bits_uop_cf_exceptionVec_5,
  input         io_ldu_ldin_0_bits_uop_cf_exceptionVec_13,
  input         io_ldu_ldin_0_bits_uop_cf_trigger_backendEn_1,
  input         io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_0,
  input         io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_1,
  input         io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_4,
  input         io_ldu_ldin_0_bits_uop_cf_storeSetHit,
  input         io_ldu_ldin_0_bits_uop_cf_loadWaitStrict,
  input  [4:0]  io_ldu_ldin_0_bits_uop_cf_ssid,
  input         io_ldu_ldin_0_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_ldu_ldin_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_ldu_ldin_0_bits_uop_cf_ftqOffset,
  input  [6:0]  io_ldu_ldin_0_bits_uop_ctrl_fuOpType,
  input         io_ldu_ldin_0_bits_uop_ctrl_rfWen,
  input         io_ldu_ldin_0_bits_uop_ctrl_fpWen,
  input         io_ldu_ldin_0_bits_uop_ctrl_replayInst,
  input  [5:0]  io_ldu_ldin_0_bits_uop_pdest,
  input         io_ldu_ldin_0_bits_uop_robIdx_flag,
  input  [4:0]  io_ldu_ldin_0_bits_uop_robIdx_value,
  input         io_ldu_ldin_0_bits_uop_lqIdx_flag,
  input  [3:0]  io_ldu_ldin_0_bits_uop_lqIdx_value,
  input         io_ldu_ldin_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_ldu_ldin_0_bits_uop_sqIdx_value,
  input  [38:0] io_ldu_ldin_0_bits_vaddr,
  input  [35:0] io_ldu_ldin_0_bits_paddr,
  input  [15:0] io_ldu_ldin_0_bits_mask,
  input         io_ldu_ldin_0_bits_miss,
  input         io_ldu_ldin_0_bits_tlbMiss,
  input         io_ldu_ldin_0_bits_mmio,
  input         io_ldu_ldin_0_bits_isLoadReplay,
  input         io_ldu_ldin_0_bits_handledByMSHR,
  input         io_ldu_ldin_0_bits_dcacheRequireReplay,
  input  [2:0]  io_ldu_ldin_0_bits_schedIndex,
  input  [1:0]  io_ldu_ldin_0_bits_rep_info_mshr_id,
  input         io_ldu_ldin_0_bits_rep_info_full_fwd,
  input         io_ldu_ldin_0_bits_rep_info_data_inv_sq_idx_flag,
  input  [3:0]  io_ldu_ldin_0_bits_rep_info_data_inv_sq_idx_value,
  input         io_ldu_ldin_0_bits_rep_info_addr_inv_sq_idx_flag,
  input  [3:0]  io_ldu_ldin_0_bits_rep_info_addr_inv_sq_idx_value,
  input         io_ldu_ldin_0_bits_rep_info_last_beat,
  input         io_ldu_ldin_0_bits_rep_info_cause_0,
  input         io_ldu_ldin_0_bits_rep_info_cause_1,
  input         io_ldu_ldin_0_bits_rep_info_cause_2,
  input         io_ldu_ldin_0_bits_rep_info_cause_3,
  input         io_ldu_ldin_0_bits_rep_info_cause_4,
  input         io_ldu_ldin_0_bits_rep_info_cause_5,
  input         io_ldu_ldin_0_bits_rep_info_cause_6,
  input         io_ldu_ldin_0_bits_rep_info_cause_7,
  input         io_ldu_ldin_0_bits_rep_info_cause_8,
  input         io_ldu_ldin_0_bits_rep_info_cause_9,
  input         io_ldu_ldin_0_bits_data_wen_dup_5,
  output        io_ldu_ldin_1_ready,
  input         io_ldu_ldin_1_valid,
  input         io_ldu_ldin_1_bits_uop_cf_exceptionVec_4,
  input         io_ldu_ldin_1_bits_uop_cf_exceptionVec_5,
  input         io_ldu_ldin_1_bits_uop_cf_exceptionVec_13,
  input         io_ldu_ldin_1_bits_uop_cf_trigger_backendEn_1,
  input         io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_0,
  input         io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_1,
  input         io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_4,
  input         io_ldu_ldin_1_bits_uop_cf_storeSetHit,
  input         io_ldu_ldin_1_bits_uop_cf_loadWaitStrict,
  input  [4:0]  io_ldu_ldin_1_bits_uop_cf_ssid,
  input         io_ldu_ldin_1_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_ldu_ldin_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_ldu_ldin_1_bits_uop_cf_ftqOffset,
  input  [6:0]  io_ldu_ldin_1_bits_uop_ctrl_fuOpType,
  input         io_ldu_ldin_1_bits_uop_ctrl_rfWen,
  input         io_ldu_ldin_1_bits_uop_ctrl_fpWen,
  input         io_ldu_ldin_1_bits_uop_ctrl_replayInst,
  input  [5:0]  io_ldu_ldin_1_bits_uop_pdest,
  input         io_ldu_ldin_1_bits_uop_robIdx_flag,
  input  [4:0]  io_ldu_ldin_1_bits_uop_robIdx_value,
  input         io_ldu_ldin_1_bits_uop_lqIdx_flag,
  input  [3:0]  io_ldu_ldin_1_bits_uop_lqIdx_value,
  input         io_ldu_ldin_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_ldu_ldin_1_bits_uop_sqIdx_value,
  input  [38:0] io_ldu_ldin_1_bits_vaddr,
  input  [35:0] io_ldu_ldin_1_bits_paddr,
  input  [15:0] io_ldu_ldin_1_bits_mask,
  input         io_ldu_ldin_1_bits_miss,
  input         io_ldu_ldin_1_bits_tlbMiss,
  input         io_ldu_ldin_1_bits_mmio,
  input         io_ldu_ldin_1_bits_isLoadReplay,
  input         io_ldu_ldin_1_bits_handledByMSHR,
  input         io_ldu_ldin_1_bits_dcacheRequireReplay,
  input  [2:0]  io_ldu_ldin_1_bits_schedIndex,
  input  [1:0]  io_ldu_ldin_1_bits_rep_info_mshr_id,
  input         io_ldu_ldin_1_bits_rep_info_full_fwd,
  input         io_ldu_ldin_1_bits_rep_info_data_inv_sq_idx_flag,
  input  [3:0]  io_ldu_ldin_1_bits_rep_info_data_inv_sq_idx_value,
  input         io_ldu_ldin_1_bits_rep_info_addr_inv_sq_idx_flag,
  input  [3:0]  io_ldu_ldin_1_bits_rep_info_addr_inv_sq_idx_value,
  input         io_ldu_ldin_1_bits_rep_info_last_beat,
  input         io_ldu_ldin_1_bits_rep_info_cause_0,
  input         io_ldu_ldin_1_bits_rep_info_cause_1,
  input         io_ldu_ldin_1_bits_rep_info_cause_2,
  input         io_ldu_ldin_1_bits_rep_info_cause_3,
  input         io_ldu_ldin_1_bits_rep_info_cause_4,
  input         io_ldu_ldin_1_bits_rep_info_cause_5,
  input         io_ldu_ldin_1_bits_rep_info_cause_6,
  input         io_ldu_ldin_1_bits_rep_info_cause_7,
  input         io_ldu_ldin_1_bits_rep_info_cause_8,
  input         io_ldu_ldin_1_bits_rep_info_cause_9,
  input         io_ldu_ldin_1_bits_data_wen_dup_5,
  input         io_sta_storeAddrIn_0_valid,
  input  [2:0]  io_sta_storeAddrIn_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_sta_storeAddrIn_0_bits_uop_cf_ftqOffset,
  input         io_sta_storeAddrIn_0_bits_uop_robIdx_flag,
  input  [4:0]  io_sta_storeAddrIn_0_bits_uop_robIdx_value,
  input         io_sta_storeAddrIn_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_sta_storeAddrIn_0_bits_uop_sqIdx_value,
  input  [35:0] io_sta_storeAddrIn_0_bits_paddr,
  input  [15:0] io_sta_storeAddrIn_0_bits_mask,
  input         io_sta_storeAddrIn_0_bits_miss,
  input         io_sta_storeAddrIn_1_valid,
  input  [2:0]  io_sta_storeAddrIn_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_sta_storeAddrIn_1_bits_uop_cf_ftqOffset,
  input         io_sta_storeAddrIn_1_bits_uop_robIdx_flag,
  input  [4:0]  io_sta_storeAddrIn_1_bits_uop_robIdx_value,
  input         io_sta_storeAddrIn_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_sta_storeAddrIn_1_bits_uop_sqIdx_value,
  input  [35:0] io_sta_storeAddrIn_1_bits_paddr,
  input  [15:0] io_sta_storeAddrIn_1_bits_mask,
  input         io_sta_storeAddrIn_1_bits_miss,
  input         io_std_storeDataIn_0_valid,
  input         io_std_storeDataIn_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_std_storeDataIn_0_bits_uop_sqIdx_value,
  input         io_std_storeDataIn_1_valid,
  input         io_std_storeDataIn_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_std_storeDataIn_1_bits_uop_sqIdx_value,
  input         io_sq_stAddrReadySqPtr_flag,
  input  [3:0]  io_sq_stAddrReadySqPtr_value,
  input         io_sq_stAddrReadyVec_0,
  input         io_sq_stAddrReadyVec_1,
  input         io_sq_stAddrReadyVec_2,
  input         io_sq_stAddrReadyVec_3,
  input         io_sq_stAddrReadyVec_4,
  input         io_sq_stAddrReadyVec_5,
  input         io_sq_stAddrReadyVec_6,
  input         io_sq_stAddrReadyVec_7,
  input         io_sq_stAddrReadyVec_8,
  input         io_sq_stAddrReadyVec_9,
  input         io_sq_stAddrReadyVec_10,
  input         io_sq_stAddrReadyVec_11,
  input         io_sq_stDataReadySqPtr_flag,
  input  [3:0]  io_sq_stDataReadySqPtr_value,
  input         io_sq_stDataReadyVec_0,
  input         io_sq_stDataReadyVec_1,
  input         io_sq_stDataReadyVec_2,
  input         io_sq_stDataReadyVec_3,
  input         io_sq_stDataReadyVec_4,
  input         io_sq_stDataReadyVec_5,
  input         io_sq_stDataReadyVec_6,
  input         io_sq_stDataReadyVec_7,
  input         io_sq_stDataReadyVec_8,
  input         io_sq_stDataReadyVec_9,
  input         io_sq_stDataReadyVec_10,
  input         io_sq_stDataReadyVec_11,
  input         io_sq_stIssuePtr_flag,
  input  [3:0]  io_sq_stIssuePtr_value,
  input         io_sq_sqEmpty,
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
  input         io_replay_0_ready,
  output        io_replay_0_valid,
  output        io_replay_0_bits_uop_cf_exceptionVec_13,
  output        io_replay_0_bits_uop_cf_trigger_backendEn_1,
  output        io_replay_0_bits_uop_cf_trigger_backendHit_0,
  output        io_replay_0_bits_uop_cf_trigger_backendHit_1,
  output        io_replay_0_bits_uop_cf_trigger_backendHit_4,
  output        io_replay_0_bits_uop_cf_storeSetHit,
  output        io_replay_0_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_replay_0_bits_uop_cf_ssid,
  output        io_replay_0_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_replay_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_replay_0_bits_uop_cf_ftqOffset,
  output [6:0]  io_replay_0_bits_uop_ctrl_fuOpType,
  output        io_replay_0_bits_uop_ctrl_rfWen,
  output        io_replay_0_bits_uop_ctrl_fpWen,
  output [5:0]  io_replay_0_bits_uop_pdest,
  output        io_replay_0_bits_uop_robIdx_flag,
  output [4:0]  io_replay_0_bits_uop_robIdx_value,
  output        io_replay_0_bits_uop_lqIdx_flag,
  output [3:0]  io_replay_0_bits_uop_lqIdx_value,
  output        io_replay_0_bits_uop_sqIdx_flag,
  output [3:0]  io_replay_0_bits_uop_sqIdx_value,
  output [38:0] io_replay_0_bits_vaddr,
  output [1:0]  io_replay_0_bits_mshrid,
  output        io_replay_0_bits_forward_tlDchannel,
  output [2:0]  io_replay_0_bits_schedIndex,
  input         io_replay_1_ready,
  output        io_replay_1_valid,
  output        io_replay_1_bits_uop_cf_exceptionVec_13,
  output        io_replay_1_bits_uop_cf_trigger_backendEn_1,
  output        io_replay_1_bits_uop_cf_trigger_backendHit_0,
  output        io_replay_1_bits_uop_cf_trigger_backendHit_1,
  output        io_replay_1_bits_uop_cf_trigger_backendHit_4,
  output        io_replay_1_bits_uop_cf_storeSetHit,
  output        io_replay_1_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_replay_1_bits_uop_cf_ssid,
  output        io_replay_1_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_replay_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_replay_1_bits_uop_cf_ftqOffset,
  output [6:0]  io_replay_1_bits_uop_ctrl_fuOpType,
  output        io_replay_1_bits_uop_ctrl_rfWen,
  output        io_replay_1_bits_uop_ctrl_fpWen,
  output [5:0]  io_replay_1_bits_uop_pdest,
  output        io_replay_1_bits_uop_robIdx_flag,
  output [4:0]  io_replay_1_bits_uop_robIdx_value,
  output        io_replay_1_bits_uop_lqIdx_flag,
  output [3:0]  io_replay_1_bits_uop_lqIdx_value,
  output        io_replay_1_bits_uop_sqIdx_flag,
  output [3:0]  io_replay_1_bits_uop_sqIdx_value,
  output [38:0] io_replay_1_bits_vaddr,
  output [1:0]  io_replay_1_bits_mshrid,
  output        io_replay_1_bits_forward_tlDchannel,
  output [2:0]  io_replay_1_bits_schedIndex,
  input         io_tl_d_channel_valid,
  input  [1:0]  io_tl_d_channel_mshrid,
  input         io_release_valid,
  input  [35:0] io_release_bits_paddr,
  output        io_rollback_valid,
  output        io_rollback_bits_robIdx_flag,
  output [4:0]  io_rollback_bits_robIdx_value,
  output        io_rollback_bits_ftqIdx_flag,
  output [2:0]  io_rollback_bits_ftqIdx_value,
  output [2:0]  io_rollback_bits_ftqOffset,
  output [2:0]  io_rollback_bits_stFtqIdx_value,
  output [2:0]  io_rollback_bits_stFtqOffset,
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
  output [38:0] io_exceptionAddr_vaddr,
  output [1:0]  io_lqDeq,
  output [4:0]  io_lqCancelCnt,
  output        io_lq_rep_full,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_0,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_1,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_2,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_3,
  input         io_l2_hint_valid,
  input  [1:0]  io_l2_hint_bits_sourceId,
  output        io_lqEmpty,
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
  output [5:0]  io_perf_13_value,
  output [5:0]  io_perf_14_value,
  output [5:0]  io_perf_15_value,
  output [5:0]  io_perf_16_value,
  output [5:0]  io_perf_17_value,
  output [5:0]  io_perf_18_value,
  output [5:0]  io_perf_19_value,
  output [5:0]  io_perf_20_value,
  output [5:0]  io_perf_21_value,
  output [5:0]  io_perf_22_value,
  output [5:0]  io_perf_23_value,
  output [5:0]  io_perf_24_value,
  output [5:0]  io_perf_25_value,
  input         io_rob_head_miss_in_tlb,
  input         sourceVaddr_valid,
  input  [38:0] sourceVaddr_bits
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
`endif // RANDOMIZE_REG_INIT
  wire  loadQueueRAR_clock; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_reset; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_redirect_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 130:28]
  wire [4:0] loadQueueRAR_io_redirect_bits_robIdx_value; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_redirect_bits_level; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_req_ready; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_req_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 130:28]
  wire [4:0] loadQueueRAR_io_query_0_req_bits_uop_robIdx_value; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_req_bits_uop_lqIdx_flag; // @[LoadQueue.scala 130:28]
  wire [3:0] loadQueueRAR_io_query_0_req_bits_uop_lqIdx_value; // @[LoadQueue.scala 130:28]
  wire [35:0] loadQueueRAR_io_query_0_req_bits_paddr; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_req_bits_data_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_resp_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_resp_bits_rep_frm_fetch; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_0_revoke; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_req_ready; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_req_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 130:28]
  wire [4:0] loadQueueRAR_io_query_1_req_bits_uop_robIdx_value; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueue.scala 130:28]
  wire [3:0] loadQueueRAR_io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueue.scala 130:28]
  wire [35:0] loadQueueRAR_io_query_1_req_bits_paddr; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_req_bits_data_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_resp_valid; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_resp_bits_rep_frm_fetch; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_query_1_revoke; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_release_valid; // @[LoadQueue.scala 130:28]
  wire [35:0] loadQueueRAR_io_release_bits_paddr; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_ldWbPtr_flag; // @[LoadQueue.scala 130:28]
  wire [3:0] loadQueueRAR_io_ldWbPtr_value; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAR_io_lqFull; // @[LoadQueue.scala 130:28]
  wire [5:0] loadQueueRAR_io_perf_0_value; // @[LoadQueue.scala 130:28]
  wire [5:0] loadQueueRAR_io_perf_1_value; // @[LoadQueue.scala 130:28]
  wire  loadQueueRAW_clock; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_reset; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_redirect_valid; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 131:28]
  wire [4:0] loadQueueRAW_io_redirect_bits_robIdx_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_redirect_bits_level; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_req_ready; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_req_valid; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_query_0_req_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_query_0_req_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 131:28]
  wire [4:0] loadQueueRAW_io_query_0_req_bits_uop_robIdx_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_req_bits_uop_sqIdx_flag; // @[LoadQueue.scala 131:28]
  wire [3:0] loadQueueRAW_io_query_0_req_bits_uop_sqIdx_value; // @[LoadQueue.scala 131:28]
  wire [15:0] loadQueueRAW_io_query_0_req_bits_mask; // @[LoadQueue.scala 131:28]
  wire [35:0] loadQueueRAW_io_query_0_req_bits_paddr; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_req_bits_data_valid; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_0_revoke; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_req_ready; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_req_valid; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 131:28]
  wire [4:0] loadQueueRAW_io_query_1_req_bits_uop_robIdx_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueue.scala 131:28]
  wire [3:0] loadQueueRAW_io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueue.scala 131:28]
  wire [15:0] loadQueueRAW_io_query_1_req_bits_mask; // @[LoadQueue.scala 131:28]
  wire [35:0] loadQueueRAW_io_query_1_req_bits_paddr; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_req_bits_data_valid; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_query_1_revoke; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_storeIn_0_valid; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_storeIn_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_storeIn_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_storeIn_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 131:28]
  wire [4:0] loadQueueRAW_io_storeIn_0_bits_uop_robIdx_value; // @[LoadQueue.scala 131:28]
  wire [35:0] loadQueueRAW_io_storeIn_0_bits_paddr; // @[LoadQueue.scala 131:28]
  wire [15:0] loadQueueRAW_io_storeIn_0_bits_mask; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_storeIn_0_bits_miss; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_storeIn_1_valid; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_storeIn_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_storeIn_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_storeIn_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 131:28]
  wire [4:0] loadQueueRAW_io_storeIn_1_bits_uop_robIdx_value; // @[LoadQueue.scala 131:28]
  wire [35:0] loadQueueRAW_io_storeIn_1_bits_paddr; // @[LoadQueue.scala 131:28]
  wire [15:0] loadQueueRAW_io_storeIn_1_bits_mask; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_storeIn_1_bits_miss; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_rollback_valid; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_rollback_bits_robIdx_flag; // @[LoadQueue.scala 131:28]
  wire [4:0] loadQueueRAW_io_rollback_bits_robIdx_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_rollback_bits_ftqIdx_flag; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_rollback_bits_ftqIdx_value; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_rollback_bits_ftqOffset; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_rollback_bits_stFtqIdx_value; // @[LoadQueue.scala 131:28]
  wire [2:0] loadQueueRAW_io_rollback_bits_stFtqOffset; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_stAddrReadySqPtr_flag; // @[LoadQueue.scala 131:28]
  wire [3:0] loadQueueRAW_io_stAddrReadySqPtr_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_stIssuePtr_flag; // @[LoadQueue.scala 131:28]
  wire [3:0] loadQueueRAW_io_stIssuePtr_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueRAW_io_lqFull; // @[LoadQueue.scala 131:28]
  wire [5:0] loadQueueRAW_io_perf_0_value; // @[LoadQueue.scala 131:28]
  wire [5:0] loadQueueRAW_io_perf_1_value; // @[LoadQueue.scala 131:28]
  wire  loadQueueReplay_clock; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_reset; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_redirect_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_redirect_bits_robIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_redirect_bits_level; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_ready; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_enq_0_bits_uop_cf_ssid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_enq_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_enq_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_enq_0_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_enq_0_bits_uop_pdest; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_enq_0_bits_uop_robIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire [38:0] loadQueueReplay_io_enq_0_bits_vaddr; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_tlbMiss; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_isLoadReplay; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_handledByMSHR; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_enq_0_bits_schedIndex; // @[LoadQueue.scala 132:31]
  wire [1:0] loadQueueReplay_io_enq_0_bits_rep_info_mshr_id; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_full_fwd; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_0_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_addr_inv_sq_idx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_0_bits_rep_info_addr_inv_sq_idx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_last_beat; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_2; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_3; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_5; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_6; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_7; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_8; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_0_bits_rep_info_cause_9; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_ready; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_enq_1_bits_uop_cf_ssid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_enq_1_bits_uop_pdest; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_enq_1_bits_uop_robIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire [38:0] loadQueueReplay_io_enq_1_bits_vaddr; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_tlbMiss; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_isLoadReplay; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_handledByMSHR; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_enq_1_bits_schedIndex; // @[LoadQueue.scala 132:31]
  wire [1:0] loadQueueReplay_io_enq_1_bits_rep_info_mshr_id; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_full_fwd; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_addr_inv_sq_idx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_enq_1_bits_rep_info_addr_inv_sq_idx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_last_beat; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_2; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_3; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_5; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_6; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_7; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_8; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_enq_1_bits_rep_info_cause_9; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeAddrIn_0_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeAddrIn_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_storeAddrIn_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeAddrIn_0_bits_miss; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeAddrIn_1_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeAddrIn_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_storeAddrIn_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeAddrIn_1_bits_miss; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeDataIn_0_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeDataIn_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_storeDataIn_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeDataIn_1_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_storeDataIn_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_storeDataIn_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_ready; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_replay_0_bits_uop_cf_ssid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_replay_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_replay_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_replay_0_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_replay_0_bits_uop_pdest; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_replay_0_bits_uop_robIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_replay_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_replay_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire [38:0] loadQueueReplay_io_replay_0_bits_vaddr; // @[LoadQueue.scala 132:31]
  wire [1:0] loadQueueReplay_io_replay_0_bits_mshrid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_0_bits_forward_tlDchannel; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_replay_0_bits_schedIndex; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_ready; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_valid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_replay_1_bits_uop_cf_ssid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_replay_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_replay_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_replay_1_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_replay_1_bits_uop_pdest; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 132:31]
  wire [4:0] loadQueueReplay_io_replay_1_bits_uop_robIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_lqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_replay_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_replay_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 132:31]
  wire [38:0] loadQueueReplay_io_replay_1_bits_vaddr; // @[LoadQueue.scala 132:31]
  wire [1:0] loadQueueReplay_io_replay_1_bits_mshrid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_replay_1_bits_forward_tlDchannel; // @[LoadQueue.scala 132:31]
  wire [2:0] loadQueueReplay_io_replay_1_bits_schedIndex; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_tl_d_channel_valid; // @[LoadQueue.scala 132:31]
  wire [1:0] loadQueueReplay_io_tl_d_channel_mshrid; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadySqPtr_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_stAddrReadySqPtr_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_2; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_3; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_5; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_6; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_7; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_8; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_9; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_10; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stAddrReadyVec_11; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadySqPtr_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_stDataReadySqPtr_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_1; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_2; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_3; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_4; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_5; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_6; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_7; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_8; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_9; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_10; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_stDataReadyVec_11; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_sqEmpty; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_lqFull; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_ldWbPtr_flag; // @[LoadQueue.scala 132:31]
  wire [3:0] loadQueueReplay_io_ldWbPtr_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_rarFull; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_rawFull; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_io_l2_hint_valid; // @[LoadQueue.scala 132:31]
  wire [1:0] loadQueueReplay_io_l2_hint_bits_sourceId; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_tlbReplayDelayCycleCtrl_0; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_tlbReplayDelayCycleCtrl_1; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_tlbReplayDelayCycleCtrl_2; // @[LoadQueue.scala 132:31]
  wire [6:0] loadQueueReplay_io_tlbReplayDelayCycleCtrl_3; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_0_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_1_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_2_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_3_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_4_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_5_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_6_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_7_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_8_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_9_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_10_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_11_value; // @[LoadQueue.scala 132:31]
  wire [5:0] loadQueueReplay_io_perf_12_value; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_miss_in_dtlb_0; // @[LoadQueue.scala 132:31]
  wire  loadQueueReplay_rob_head_vaddr_0_valid; // @[LoadQueue.scala 132:31]
  wire [38:0] loadQueueReplay_rob_head_vaddr_0_bits; // @[LoadQueue.scala 132:31]
  wire  virtualLoadQueue_clock; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_reset; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_redirect_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 133:32]
  wire [4:0] virtualLoadQueue_io_redirect_bits_robIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_redirect_bits_level; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_canAccept; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_sqCanAccept; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_needAlloc_0; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_needAlloc_1; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_needAlloc_2; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_0_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_0_bits_robIdx_flag; // @[LoadQueue.scala 133:32]
  wire [4:0] virtualLoadQueue_io_enq_req_0_bits_robIdx_value; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_req_0_bits_lqIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_1_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_1_bits_robIdx_flag; // @[LoadQueue.scala 133:32]
  wire [4:0] virtualLoadQueue_io_enq_req_1_bits_robIdx_value; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_req_1_bits_lqIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_2_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_2_bits_robIdx_flag; // @[LoadQueue.scala 133:32]
  wire [4:0] virtualLoadQueue_io_enq_req_2_bits_robIdx_value; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_req_2_bits_lqIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_3_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_req_3_bits_robIdx_flag; // @[LoadQueue.scala 133:32]
  wire [4:0] virtualLoadQueue_io_enq_req_3_bits_robIdx_value; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_req_3_bits_lqIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_resp_0_flag; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_resp_0_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_resp_1_flag; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_resp_1_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_resp_2_flag; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_resp_2_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_enq_resp_3_flag; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_enq_resp_3_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_ldin_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_miss; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_tlbMiss; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_mmio; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_dcacheRequireReplay; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_0; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_1; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_2; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_3; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_4; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_5; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_6; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_7; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_8; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_0_bits_rep_info_cause_9; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_valid; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_ldin_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_miss; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_tlbMiss; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_mmio; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_dcacheRequireReplay; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_0; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_1; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_2; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_3; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_4; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_5; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_6; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_7; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_8; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldin_1_bits_rep_info_cause_9; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_ldWbPtr_flag; // @[LoadQueue.scala 133:32]
  wire [3:0] virtualLoadQueue_io_ldWbPtr_value; // @[LoadQueue.scala 133:32]
  wire  virtualLoadQueue_io_lqEmpty; // @[LoadQueue.scala 133:32]
  wire [1:0] virtualLoadQueue_io_lqDeq; // @[LoadQueue.scala 133:32]
  wire [4:0] virtualLoadQueue_io_lqCancelCnt; // @[LoadQueue.scala 133:32]
  wire  exceptionBuffer_clock; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_reset; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_redirect_valid; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 134:31]
  wire [4:0] exceptionBuffer_io_redirect_bits_robIdx_value; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_redirect_bits_level; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_0_valid; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 134:31]
  wire [4:0] exceptionBuffer_io_req_0_bits_uop_robIdx_value; // @[LoadQueue.scala 134:31]
  wire [38:0] exceptionBuffer_io_req_0_bits_vaddr; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_1_valid; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 134:31]
  wire  exceptionBuffer_io_req_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 134:31]
  wire [4:0] exceptionBuffer_io_req_1_bits_uop_robIdx_value; // @[LoadQueue.scala 134:31]
  wire [38:0] exceptionBuffer_io_req_1_bits_vaddr; // @[LoadQueue.scala 134:31]
  wire [38:0] exceptionBuffer_io_exceptionAddr_vaddr; // @[LoadQueue.scala 134:31]
  wire  uncacheBuffer_clock; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_reset; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_redirect_valid; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_redirect_bits_robIdx_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_redirect_bits_level; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_valid; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_req_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_req_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 135:29]
  wire [6:0] uncacheBuffer_io_req_0_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_ctrl_replayInst; // @[LoadQueue.scala 135:29]
  wire [5:0] uncacheBuffer_io_req_0_bits_uop_pdest; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_req_0_bits_uop_robIdx_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 135:29]
  wire [3:0] uncacheBuffer_io_req_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 135:29]
  wire [35:0] uncacheBuffer_io_req_0_bits_paddr; // @[LoadQueue.scala 135:29]
  wire [15:0] uncacheBuffer_io_req_0_bits_mask; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_mmio; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_2; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_3; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_6; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_7; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_8; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_rep_info_cause_9; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_0_bits_data_wen_dup_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_valid; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_req_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_req_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 135:29]
  wire [6:0] uncacheBuffer_io_req_1_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_ctrl_replayInst; // @[LoadQueue.scala 135:29]
  wire [5:0] uncacheBuffer_io_req_1_bits_uop_pdest; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_req_1_bits_uop_robIdx_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_uop_lqIdx_flag; // @[LoadQueue.scala 135:29]
  wire [3:0] uncacheBuffer_io_req_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 135:29]
  wire [35:0] uncacheBuffer_io_req_1_bits_paddr; // @[LoadQueue.scala 135:29]
  wire [15:0] uncacheBuffer_io_req_1_bits_mask; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_mmio; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_2; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_3; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_6; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_7; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_8; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_rep_info_cause_9; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_req_1_bits_data_wen_dup_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_ready; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_valid; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_ctrl_replayInst; // @[LoadQueue.scala 135:29]
  wire [5:0] uncacheBuffer_io_ldout_0_bits_uop_pdest; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_ldout_0_bits_uop_robIdx_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ldout_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 135:29]
  wire [3:0] uncacheBuffer_io_ldout_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 135:29]
  wire [63:0] uncacheBuffer_io_ld_raw_data_0_lqData; // @[LoadQueue.scala 135:29]
  wire [6:0] uncacheBuffer_io_ld_raw_data_0_uop_ctrl_fuOpType; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_ld_raw_data_0_uop_ctrl_fpWen; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_ld_raw_data_0_addrOffset; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rob_pendingld; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rob_commit; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rob_pendingPtr_flag; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_rob_pendingPtr_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rob_mmio_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rob_mmio_1; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_rob_uop_0_robIdx_value; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_rob_uop_1_robIdx_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_uncache_req_ready; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_uncache_req_valid; // @[LoadQueue.scala 135:29]
  wire [35:0] uncacheBuffer_io_uncache_req_bits_addr; // @[LoadQueue.scala 135:29]
  wire [7:0] uncacheBuffer_io_uncache_req_bits_mask; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_uncache_req_bits_id; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_uncache_resp_ready; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_uncache_resp_valid; // @[LoadQueue.scala 135:29]
  wire [63:0] uncacheBuffer_io_uncache_resp_bits_data; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_uncache_resp_bits_id; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_2; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_0; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_1; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_2; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rollback_valid; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rollback_bits_robIdx_flag; // @[LoadQueue.scala 135:29]
  wire [4:0] uncacheBuffer_io_rollback_bits_robIdx_value; // @[LoadQueue.scala 135:29]
  wire  uncacheBuffer_io_rollback_bits_ftqIdx_flag; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_rollback_bits_ftqIdx_value; // @[LoadQueue.scala 135:29]
  wire [2:0] uncacheBuffer_io_rollback_bits_ftqOffset; // @[LoadQueue.scala 135:29]
  wire  oldest_differentFlag = loadQueueRAW_io_rollback_bits_robIdx_flag ^ uncacheBuffer_io_rollback_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare = loadQueueRAW_io_rollback_bits_robIdx_value > uncacheBuffer_io_rollback_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_1 = oldest_differentFlag ^ oldest_compare; // @[CircularQueuePtr.scala 68:19]
  wire  res_1_valid = uncacheBuffer_io_rollback_valid; // @[LoadQueue.scala 203:33 205:22]
  wire  res_0_valid = loadQueueRAW_io_rollback_valid; // @[LoadQueue.scala 203:33 205:22]
  wire  _oldest_T_2_valid = _oldest_T_1 ? res_1_valid : res_0_valid; // @[LoadQueue.scala 208:49]
  wire  res_1_bits_robIdx_flag = uncacheBuffer_io_rollback_bits_robIdx_flag; // @[LoadQueue.scala 203:33 206:21]
  wire  res_0_bits_robIdx_flag = loadQueueRAW_io_rollback_bits_robIdx_flag; // @[LoadQueue.scala 203:33 206:21]
  wire  _oldest_T_2_bits_robIdx_flag = _oldest_T_1 ? res_1_bits_robIdx_flag : res_0_bits_robIdx_flag; // @[LoadQueue.scala 208:49]
  wire [4:0] res_1_bits_robIdx_value = uncacheBuffer_io_rollback_bits_robIdx_value; // @[LoadQueue.scala 203:33 206:21]
  wire [4:0] res_0_bits_robIdx_value = loadQueueRAW_io_rollback_bits_robIdx_value; // @[LoadQueue.scala 203:33 206:21]
  wire [4:0] _oldest_T_2_bits_robIdx_value = _oldest_T_1 ? res_1_bits_robIdx_value : res_0_bits_robIdx_value; // @[LoadQueue.scala 208:49]
  wire  res_1_bits_ftqIdx_flag = uncacheBuffer_io_rollback_bits_ftqIdx_flag; // @[LoadQueue.scala 203:33 206:21]
  wire  res_0_bits_ftqIdx_flag = loadQueueRAW_io_rollback_bits_ftqIdx_flag; // @[LoadQueue.scala 203:33 206:21]
  wire  _oldest_T_2_bits_ftqIdx_flag = _oldest_T_1 ? res_1_bits_ftqIdx_flag : res_0_bits_ftqIdx_flag; // @[LoadQueue.scala 208:49]
  wire [2:0] res_1_bits_ftqIdx_value = uncacheBuffer_io_rollback_bits_ftqIdx_value; // @[LoadQueue.scala 203:33 206:21]
  wire [2:0] res_0_bits_ftqIdx_value = loadQueueRAW_io_rollback_bits_ftqIdx_value; // @[LoadQueue.scala 203:33 206:21]
  wire [2:0] _oldest_T_2_bits_ftqIdx_value = _oldest_T_1 ? res_1_bits_ftqIdx_value : res_0_bits_ftqIdx_value; // @[LoadQueue.scala 208:49]
  wire [2:0] res_1_bits_ftqOffset = uncacheBuffer_io_rollback_bits_ftqOffset; // @[LoadQueue.scala 203:33 206:21]
  wire [2:0] res_0_bits_ftqOffset = loadQueueRAW_io_rollback_bits_ftqOffset; // @[LoadQueue.scala 203:33 206:21]
  wire [2:0] _oldest_T_2_bits_ftqOffset = _oldest_T_1 ? res_1_bits_ftqOffset : res_0_bits_ftqOffset; // @[LoadQueue.scala 208:49]
  wire [2:0] res_0_bits_stFtqIdx_value = loadQueueRAW_io_rollback_bits_stFtqIdx_value; // @[LoadQueue.scala 203:33 206:21]
  wire [2:0] _oldest_T_2_bits_stFtqIdx_value = _oldest_T_1 ? 3'h0 : res_0_bits_stFtqIdx_value; // @[LoadQueue.scala 208:49]
  wire [2:0] res_0_bits_stFtqOffset = loadQueueRAW_io_rollback_bits_stFtqOffset; // @[LoadQueue.scala 203:33 206:21]
  wire [2:0] _oldest_T_2_bits_stFtqOffset = _oldest_T_1 ? 3'h0 : res_0_bits_stFtqOffset; // @[LoadQueue.scala 208:49]
  wire  _oldest_T_5_valid = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ? res_0_valid :
    res_1_valid; // @[LoadQueue.scala 208:111]
  wire  _oldest_T_5_bits_robIdx_flag = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_robIdx_flag : res_1_bits_robIdx_flag; // @[LoadQueue.scala 208:111]
  wire [4:0] _oldest_T_5_bits_robIdx_value = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_robIdx_value : res_1_bits_robIdx_value; // @[LoadQueue.scala 208:111]
  wire  _oldest_T_5_bits_ftqIdx_flag = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_ftqIdx_flag : res_1_bits_ftqIdx_flag; // @[LoadQueue.scala 208:111]
  wire [2:0] _oldest_T_5_bits_ftqIdx_value = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_ftqIdx_value : res_1_bits_ftqIdx_value; // @[LoadQueue.scala 208:111]
  wire [2:0] _oldest_T_5_bits_ftqOffset = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_ftqOffset : res_1_bits_ftqOffset; // @[LoadQueue.scala 208:111]
  wire [2:0] _oldest_T_5_bits_stFtqIdx_value = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_stFtqIdx_value : 3'h0; // @[LoadQueue.scala 208:111]
  wire [2:0] _oldest_T_5_bits_stFtqOffset = loadQueueRAW_io_rollback_valid & ~uncacheBuffer_io_rollback_valid ?
    res_0_bits_stFtqOffset : 3'h0; // @[LoadQueue.scala 208:111]
  wire [2:0] full_mask = {loadQueueRAR_io_lqFull,loadQueueRAW_io_lqFull,loadQueueReplay_io_lqFull}; // @[Cat.scala 31:58]
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
  reg [5:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_18_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_18_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_19_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_19_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_20_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_20_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_21_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_21_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_22_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_23_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_23_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_24_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_24_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_25_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_25_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  LoadQueueRAR loadQueueRAR ( // @[LoadQueue.scala 130:28]
    .clock(loadQueueRAR_clock),
    .reset(loadQueueRAR_reset),
    .io_redirect_valid(loadQueueRAR_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(loadQueueRAR_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(loadQueueRAR_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(loadQueueRAR_io_redirect_bits_level),
    .io_query_0_req_ready(loadQueueRAR_io_query_0_req_ready),
    .io_query_0_req_valid(loadQueueRAR_io_query_0_req_valid),
    .io_query_0_req_bits_uop_robIdx_flag(loadQueueRAR_io_query_0_req_bits_uop_robIdx_flag),
    .io_query_0_req_bits_uop_robIdx_value(loadQueueRAR_io_query_0_req_bits_uop_robIdx_value),
    .io_query_0_req_bits_uop_lqIdx_flag(loadQueueRAR_io_query_0_req_bits_uop_lqIdx_flag),
    .io_query_0_req_bits_uop_lqIdx_value(loadQueueRAR_io_query_0_req_bits_uop_lqIdx_value),
    .io_query_0_req_bits_paddr(loadQueueRAR_io_query_0_req_bits_paddr),
    .io_query_0_req_bits_data_valid(loadQueueRAR_io_query_0_req_bits_data_valid),
    .io_query_0_resp_valid(loadQueueRAR_io_query_0_resp_valid),
    .io_query_0_resp_bits_rep_frm_fetch(loadQueueRAR_io_query_0_resp_bits_rep_frm_fetch),
    .io_query_0_revoke(loadQueueRAR_io_query_0_revoke),
    .io_query_1_req_ready(loadQueueRAR_io_query_1_req_ready),
    .io_query_1_req_valid(loadQueueRAR_io_query_1_req_valid),
    .io_query_1_req_bits_uop_robIdx_flag(loadQueueRAR_io_query_1_req_bits_uop_robIdx_flag),
    .io_query_1_req_bits_uop_robIdx_value(loadQueueRAR_io_query_1_req_bits_uop_robIdx_value),
    .io_query_1_req_bits_uop_lqIdx_flag(loadQueueRAR_io_query_1_req_bits_uop_lqIdx_flag),
    .io_query_1_req_bits_uop_lqIdx_value(loadQueueRAR_io_query_1_req_bits_uop_lqIdx_value),
    .io_query_1_req_bits_paddr(loadQueueRAR_io_query_1_req_bits_paddr),
    .io_query_1_req_bits_data_valid(loadQueueRAR_io_query_1_req_bits_data_valid),
    .io_query_1_resp_valid(loadQueueRAR_io_query_1_resp_valid),
    .io_query_1_resp_bits_rep_frm_fetch(loadQueueRAR_io_query_1_resp_bits_rep_frm_fetch),
    .io_query_1_revoke(loadQueueRAR_io_query_1_revoke),
    .io_release_valid(loadQueueRAR_io_release_valid),
    .io_release_bits_paddr(loadQueueRAR_io_release_bits_paddr),
    .io_ldWbPtr_flag(loadQueueRAR_io_ldWbPtr_flag),
    .io_ldWbPtr_value(loadQueueRAR_io_ldWbPtr_value),
    .io_lqFull(loadQueueRAR_io_lqFull),
    .io_perf_0_value(loadQueueRAR_io_perf_0_value),
    .io_perf_1_value(loadQueueRAR_io_perf_1_value)
  );
  LoadQueueRAW loadQueueRAW ( // @[LoadQueue.scala 131:28]
    .clock(loadQueueRAW_clock),
    .reset(loadQueueRAW_reset),
    .io_redirect_valid(loadQueueRAW_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(loadQueueRAW_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(loadQueueRAW_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(loadQueueRAW_io_redirect_bits_level),
    .io_query_0_req_ready(loadQueueRAW_io_query_0_req_ready),
    .io_query_0_req_valid(loadQueueRAW_io_query_0_req_valid),
    .io_query_0_req_bits_uop_cf_ftqPtr_flag(loadQueueRAW_io_query_0_req_bits_uop_cf_ftqPtr_flag),
    .io_query_0_req_bits_uop_cf_ftqPtr_value(loadQueueRAW_io_query_0_req_bits_uop_cf_ftqPtr_value),
    .io_query_0_req_bits_uop_cf_ftqOffset(loadQueueRAW_io_query_0_req_bits_uop_cf_ftqOffset),
    .io_query_0_req_bits_uop_robIdx_flag(loadQueueRAW_io_query_0_req_bits_uop_robIdx_flag),
    .io_query_0_req_bits_uop_robIdx_value(loadQueueRAW_io_query_0_req_bits_uop_robIdx_value),
    .io_query_0_req_bits_uop_sqIdx_flag(loadQueueRAW_io_query_0_req_bits_uop_sqIdx_flag),
    .io_query_0_req_bits_uop_sqIdx_value(loadQueueRAW_io_query_0_req_bits_uop_sqIdx_value),
    .io_query_0_req_bits_mask(loadQueueRAW_io_query_0_req_bits_mask),
    .io_query_0_req_bits_paddr(loadQueueRAW_io_query_0_req_bits_paddr),
    .io_query_0_req_bits_data_valid(loadQueueRAW_io_query_0_req_bits_data_valid),
    .io_query_0_revoke(loadQueueRAW_io_query_0_revoke),
    .io_query_1_req_ready(loadQueueRAW_io_query_1_req_ready),
    .io_query_1_req_valid(loadQueueRAW_io_query_1_req_valid),
    .io_query_1_req_bits_uop_cf_ftqPtr_flag(loadQueueRAW_io_query_1_req_bits_uop_cf_ftqPtr_flag),
    .io_query_1_req_bits_uop_cf_ftqPtr_value(loadQueueRAW_io_query_1_req_bits_uop_cf_ftqPtr_value),
    .io_query_1_req_bits_uop_cf_ftqOffset(loadQueueRAW_io_query_1_req_bits_uop_cf_ftqOffset),
    .io_query_1_req_bits_uop_robIdx_flag(loadQueueRAW_io_query_1_req_bits_uop_robIdx_flag),
    .io_query_1_req_bits_uop_robIdx_value(loadQueueRAW_io_query_1_req_bits_uop_robIdx_value),
    .io_query_1_req_bits_uop_sqIdx_flag(loadQueueRAW_io_query_1_req_bits_uop_sqIdx_flag),
    .io_query_1_req_bits_uop_sqIdx_value(loadQueueRAW_io_query_1_req_bits_uop_sqIdx_value),
    .io_query_1_req_bits_mask(loadQueueRAW_io_query_1_req_bits_mask),
    .io_query_1_req_bits_paddr(loadQueueRAW_io_query_1_req_bits_paddr),
    .io_query_1_req_bits_data_valid(loadQueueRAW_io_query_1_req_bits_data_valid),
    .io_query_1_revoke(loadQueueRAW_io_query_1_revoke),
    .io_storeIn_0_valid(loadQueueRAW_io_storeIn_0_valid),
    .io_storeIn_0_bits_uop_cf_ftqPtr_value(loadQueueRAW_io_storeIn_0_bits_uop_cf_ftqPtr_value),
    .io_storeIn_0_bits_uop_cf_ftqOffset(loadQueueRAW_io_storeIn_0_bits_uop_cf_ftqOffset),
    .io_storeIn_0_bits_uop_robIdx_flag(loadQueueRAW_io_storeIn_0_bits_uop_robIdx_flag),
    .io_storeIn_0_bits_uop_robIdx_value(loadQueueRAW_io_storeIn_0_bits_uop_robIdx_value),
    .io_storeIn_0_bits_paddr(loadQueueRAW_io_storeIn_0_bits_paddr),
    .io_storeIn_0_bits_mask(loadQueueRAW_io_storeIn_0_bits_mask),
    .io_storeIn_0_bits_miss(loadQueueRAW_io_storeIn_0_bits_miss),
    .io_storeIn_1_valid(loadQueueRAW_io_storeIn_1_valid),
    .io_storeIn_1_bits_uop_cf_ftqPtr_value(loadQueueRAW_io_storeIn_1_bits_uop_cf_ftqPtr_value),
    .io_storeIn_1_bits_uop_cf_ftqOffset(loadQueueRAW_io_storeIn_1_bits_uop_cf_ftqOffset),
    .io_storeIn_1_bits_uop_robIdx_flag(loadQueueRAW_io_storeIn_1_bits_uop_robIdx_flag),
    .io_storeIn_1_bits_uop_robIdx_value(loadQueueRAW_io_storeIn_1_bits_uop_robIdx_value),
    .io_storeIn_1_bits_paddr(loadQueueRAW_io_storeIn_1_bits_paddr),
    .io_storeIn_1_bits_mask(loadQueueRAW_io_storeIn_1_bits_mask),
    .io_storeIn_1_bits_miss(loadQueueRAW_io_storeIn_1_bits_miss),
    .io_rollback_valid(loadQueueRAW_io_rollback_valid),
    .io_rollback_bits_robIdx_flag(loadQueueRAW_io_rollback_bits_robIdx_flag),
    .io_rollback_bits_robIdx_value(loadQueueRAW_io_rollback_bits_robIdx_value),
    .io_rollback_bits_ftqIdx_flag(loadQueueRAW_io_rollback_bits_ftqIdx_flag),
    .io_rollback_bits_ftqIdx_value(loadQueueRAW_io_rollback_bits_ftqIdx_value),
    .io_rollback_bits_ftqOffset(loadQueueRAW_io_rollback_bits_ftqOffset),
    .io_rollback_bits_stFtqIdx_value(loadQueueRAW_io_rollback_bits_stFtqIdx_value),
    .io_rollback_bits_stFtqOffset(loadQueueRAW_io_rollback_bits_stFtqOffset),
    .io_stAddrReadySqPtr_flag(loadQueueRAW_io_stAddrReadySqPtr_flag),
    .io_stAddrReadySqPtr_value(loadQueueRAW_io_stAddrReadySqPtr_value),
    .io_stIssuePtr_flag(loadQueueRAW_io_stIssuePtr_flag),
    .io_stIssuePtr_value(loadQueueRAW_io_stIssuePtr_value),
    .io_lqFull(loadQueueRAW_io_lqFull),
    .io_perf_0_value(loadQueueRAW_io_perf_0_value),
    .io_perf_1_value(loadQueueRAW_io_perf_1_value)
  );
  LoadQueueReplay loadQueueReplay ( // @[LoadQueue.scala 132:31]
    .clock(loadQueueReplay_clock),
    .reset(loadQueueReplay_reset),
    .io_redirect_valid(loadQueueReplay_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(loadQueueReplay_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(loadQueueReplay_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(loadQueueReplay_io_redirect_bits_level),
    .io_enq_0_ready(loadQueueReplay_io_enq_0_ready),
    .io_enq_0_valid(loadQueueReplay_io_enq_0_valid),
    .io_enq_0_bits_uop_cf_exceptionVec_4(loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_4),
    .io_enq_0_bits_uop_cf_exceptionVec_5(loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_5),
    .io_enq_0_bits_uop_cf_exceptionVec_13(loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_13),
    .io_enq_0_bits_uop_cf_trigger_backendEn_1(loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendEn_1),
    .io_enq_0_bits_uop_cf_trigger_backendHit_0(loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_0),
    .io_enq_0_bits_uop_cf_trigger_backendHit_1(loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_1),
    .io_enq_0_bits_uop_cf_trigger_backendHit_4(loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_4),
    .io_enq_0_bits_uop_cf_storeSetHit(loadQueueReplay_io_enq_0_bits_uop_cf_storeSetHit),
    .io_enq_0_bits_uop_cf_loadWaitStrict(loadQueueReplay_io_enq_0_bits_uop_cf_loadWaitStrict),
    .io_enq_0_bits_uop_cf_ssid(loadQueueReplay_io_enq_0_bits_uop_cf_ssid),
    .io_enq_0_bits_uop_cf_ftqPtr_flag(loadQueueReplay_io_enq_0_bits_uop_cf_ftqPtr_flag),
    .io_enq_0_bits_uop_cf_ftqPtr_value(loadQueueReplay_io_enq_0_bits_uop_cf_ftqPtr_value),
    .io_enq_0_bits_uop_cf_ftqOffset(loadQueueReplay_io_enq_0_bits_uop_cf_ftqOffset),
    .io_enq_0_bits_uop_ctrl_fuOpType(loadQueueReplay_io_enq_0_bits_uop_ctrl_fuOpType),
    .io_enq_0_bits_uop_ctrl_rfWen(loadQueueReplay_io_enq_0_bits_uop_ctrl_rfWen),
    .io_enq_0_bits_uop_ctrl_fpWen(loadQueueReplay_io_enq_0_bits_uop_ctrl_fpWen),
    .io_enq_0_bits_uop_pdest(loadQueueReplay_io_enq_0_bits_uop_pdest),
    .io_enq_0_bits_uop_robIdx_flag(loadQueueReplay_io_enq_0_bits_uop_robIdx_flag),
    .io_enq_0_bits_uop_robIdx_value(loadQueueReplay_io_enq_0_bits_uop_robIdx_value),
    .io_enq_0_bits_uop_lqIdx_flag(loadQueueReplay_io_enq_0_bits_uop_lqIdx_flag),
    .io_enq_0_bits_uop_lqIdx_value(loadQueueReplay_io_enq_0_bits_uop_lqIdx_value),
    .io_enq_0_bits_uop_sqIdx_flag(loadQueueReplay_io_enq_0_bits_uop_sqIdx_flag),
    .io_enq_0_bits_uop_sqIdx_value(loadQueueReplay_io_enq_0_bits_uop_sqIdx_value),
    .io_enq_0_bits_vaddr(loadQueueReplay_io_enq_0_bits_vaddr),
    .io_enq_0_bits_tlbMiss(loadQueueReplay_io_enq_0_bits_tlbMiss),
    .io_enq_0_bits_isLoadReplay(loadQueueReplay_io_enq_0_bits_isLoadReplay),
    .io_enq_0_bits_handledByMSHR(loadQueueReplay_io_enq_0_bits_handledByMSHR),
    .io_enq_0_bits_schedIndex(loadQueueReplay_io_enq_0_bits_schedIndex),
    .io_enq_0_bits_rep_info_mshr_id(loadQueueReplay_io_enq_0_bits_rep_info_mshr_id),
    .io_enq_0_bits_rep_info_full_fwd(loadQueueReplay_io_enq_0_bits_rep_info_full_fwd),
    .io_enq_0_bits_rep_info_data_inv_sq_idx_flag(loadQueueReplay_io_enq_0_bits_rep_info_data_inv_sq_idx_flag),
    .io_enq_0_bits_rep_info_data_inv_sq_idx_value(loadQueueReplay_io_enq_0_bits_rep_info_data_inv_sq_idx_value),
    .io_enq_0_bits_rep_info_addr_inv_sq_idx_flag(loadQueueReplay_io_enq_0_bits_rep_info_addr_inv_sq_idx_flag),
    .io_enq_0_bits_rep_info_addr_inv_sq_idx_value(loadQueueReplay_io_enq_0_bits_rep_info_addr_inv_sq_idx_value),
    .io_enq_0_bits_rep_info_last_beat(loadQueueReplay_io_enq_0_bits_rep_info_last_beat),
    .io_enq_0_bits_rep_info_cause_0(loadQueueReplay_io_enq_0_bits_rep_info_cause_0),
    .io_enq_0_bits_rep_info_cause_1(loadQueueReplay_io_enq_0_bits_rep_info_cause_1),
    .io_enq_0_bits_rep_info_cause_2(loadQueueReplay_io_enq_0_bits_rep_info_cause_2),
    .io_enq_0_bits_rep_info_cause_3(loadQueueReplay_io_enq_0_bits_rep_info_cause_3),
    .io_enq_0_bits_rep_info_cause_4(loadQueueReplay_io_enq_0_bits_rep_info_cause_4),
    .io_enq_0_bits_rep_info_cause_5(loadQueueReplay_io_enq_0_bits_rep_info_cause_5),
    .io_enq_0_bits_rep_info_cause_6(loadQueueReplay_io_enq_0_bits_rep_info_cause_6),
    .io_enq_0_bits_rep_info_cause_7(loadQueueReplay_io_enq_0_bits_rep_info_cause_7),
    .io_enq_0_bits_rep_info_cause_8(loadQueueReplay_io_enq_0_bits_rep_info_cause_8),
    .io_enq_0_bits_rep_info_cause_9(loadQueueReplay_io_enq_0_bits_rep_info_cause_9),
    .io_enq_1_ready(loadQueueReplay_io_enq_1_ready),
    .io_enq_1_valid(loadQueueReplay_io_enq_1_valid),
    .io_enq_1_bits_uop_cf_exceptionVec_4(loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_4),
    .io_enq_1_bits_uop_cf_exceptionVec_5(loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_5),
    .io_enq_1_bits_uop_cf_exceptionVec_13(loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_13),
    .io_enq_1_bits_uop_cf_trigger_backendEn_1(loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendEn_1),
    .io_enq_1_bits_uop_cf_trigger_backendHit_0(loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_0),
    .io_enq_1_bits_uop_cf_trigger_backendHit_1(loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_1),
    .io_enq_1_bits_uop_cf_trigger_backendHit_4(loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_4),
    .io_enq_1_bits_uop_cf_storeSetHit(loadQueueReplay_io_enq_1_bits_uop_cf_storeSetHit),
    .io_enq_1_bits_uop_cf_loadWaitStrict(loadQueueReplay_io_enq_1_bits_uop_cf_loadWaitStrict),
    .io_enq_1_bits_uop_cf_ssid(loadQueueReplay_io_enq_1_bits_uop_cf_ssid),
    .io_enq_1_bits_uop_cf_ftqPtr_flag(loadQueueReplay_io_enq_1_bits_uop_cf_ftqPtr_flag),
    .io_enq_1_bits_uop_cf_ftqPtr_value(loadQueueReplay_io_enq_1_bits_uop_cf_ftqPtr_value),
    .io_enq_1_bits_uop_cf_ftqOffset(loadQueueReplay_io_enq_1_bits_uop_cf_ftqOffset),
    .io_enq_1_bits_uop_ctrl_fuOpType(loadQueueReplay_io_enq_1_bits_uop_ctrl_fuOpType),
    .io_enq_1_bits_uop_ctrl_rfWen(loadQueueReplay_io_enq_1_bits_uop_ctrl_rfWen),
    .io_enq_1_bits_uop_ctrl_fpWen(loadQueueReplay_io_enq_1_bits_uop_ctrl_fpWen),
    .io_enq_1_bits_uop_pdest(loadQueueReplay_io_enq_1_bits_uop_pdest),
    .io_enq_1_bits_uop_robIdx_flag(loadQueueReplay_io_enq_1_bits_uop_robIdx_flag),
    .io_enq_1_bits_uop_robIdx_value(loadQueueReplay_io_enq_1_bits_uop_robIdx_value),
    .io_enq_1_bits_uop_lqIdx_flag(loadQueueReplay_io_enq_1_bits_uop_lqIdx_flag),
    .io_enq_1_bits_uop_lqIdx_value(loadQueueReplay_io_enq_1_bits_uop_lqIdx_value),
    .io_enq_1_bits_uop_sqIdx_flag(loadQueueReplay_io_enq_1_bits_uop_sqIdx_flag),
    .io_enq_1_bits_uop_sqIdx_value(loadQueueReplay_io_enq_1_bits_uop_sqIdx_value),
    .io_enq_1_bits_vaddr(loadQueueReplay_io_enq_1_bits_vaddr),
    .io_enq_1_bits_tlbMiss(loadQueueReplay_io_enq_1_bits_tlbMiss),
    .io_enq_1_bits_isLoadReplay(loadQueueReplay_io_enq_1_bits_isLoadReplay),
    .io_enq_1_bits_handledByMSHR(loadQueueReplay_io_enq_1_bits_handledByMSHR),
    .io_enq_1_bits_schedIndex(loadQueueReplay_io_enq_1_bits_schedIndex),
    .io_enq_1_bits_rep_info_mshr_id(loadQueueReplay_io_enq_1_bits_rep_info_mshr_id),
    .io_enq_1_bits_rep_info_full_fwd(loadQueueReplay_io_enq_1_bits_rep_info_full_fwd),
    .io_enq_1_bits_rep_info_data_inv_sq_idx_flag(loadQueueReplay_io_enq_1_bits_rep_info_data_inv_sq_idx_flag),
    .io_enq_1_bits_rep_info_data_inv_sq_idx_value(loadQueueReplay_io_enq_1_bits_rep_info_data_inv_sq_idx_value),
    .io_enq_1_bits_rep_info_addr_inv_sq_idx_flag(loadQueueReplay_io_enq_1_bits_rep_info_addr_inv_sq_idx_flag),
    .io_enq_1_bits_rep_info_addr_inv_sq_idx_value(loadQueueReplay_io_enq_1_bits_rep_info_addr_inv_sq_idx_value),
    .io_enq_1_bits_rep_info_last_beat(loadQueueReplay_io_enq_1_bits_rep_info_last_beat),
    .io_enq_1_bits_rep_info_cause_0(loadQueueReplay_io_enq_1_bits_rep_info_cause_0),
    .io_enq_1_bits_rep_info_cause_1(loadQueueReplay_io_enq_1_bits_rep_info_cause_1),
    .io_enq_1_bits_rep_info_cause_2(loadQueueReplay_io_enq_1_bits_rep_info_cause_2),
    .io_enq_1_bits_rep_info_cause_3(loadQueueReplay_io_enq_1_bits_rep_info_cause_3),
    .io_enq_1_bits_rep_info_cause_4(loadQueueReplay_io_enq_1_bits_rep_info_cause_4),
    .io_enq_1_bits_rep_info_cause_5(loadQueueReplay_io_enq_1_bits_rep_info_cause_5),
    .io_enq_1_bits_rep_info_cause_6(loadQueueReplay_io_enq_1_bits_rep_info_cause_6),
    .io_enq_1_bits_rep_info_cause_7(loadQueueReplay_io_enq_1_bits_rep_info_cause_7),
    .io_enq_1_bits_rep_info_cause_8(loadQueueReplay_io_enq_1_bits_rep_info_cause_8),
    .io_enq_1_bits_rep_info_cause_9(loadQueueReplay_io_enq_1_bits_rep_info_cause_9),
    .io_storeAddrIn_0_valid(loadQueueReplay_io_storeAddrIn_0_valid),
    .io_storeAddrIn_0_bits_uop_sqIdx_flag(loadQueueReplay_io_storeAddrIn_0_bits_uop_sqIdx_flag),
    .io_storeAddrIn_0_bits_uop_sqIdx_value(loadQueueReplay_io_storeAddrIn_0_bits_uop_sqIdx_value),
    .io_storeAddrIn_0_bits_miss(loadQueueReplay_io_storeAddrIn_0_bits_miss),
    .io_storeAddrIn_1_valid(loadQueueReplay_io_storeAddrIn_1_valid),
    .io_storeAddrIn_1_bits_uop_sqIdx_flag(loadQueueReplay_io_storeAddrIn_1_bits_uop_sqIdx_flag),
    .io_storeAddrIn_1_bits_uop_sqIdx_value(loadQueueReplay_io_storeAddrIn_1_bits_uop_sqIdx_value),
    .io_storeAddrIn_1_bits_miss(loadQueueReplay_io_storeAddrIn_1_bits_miss),
    .io_storeDataIn_0_valid(loadQueueReplay_io_storeDataIn_0_valid),
    .io_storeDataIn_0_bits_uop_sqIdx_flag(loadQueueReplay_io_storeDataIn_0_bits_uop_sqIdx_flag),
    .io_storeDataIn_0_bits_uop_sqIdx_value(loadQueueReplay_io_storeDataIn_0_bits_uop_sqIdx_value),
    .io_storeDataIn_1_valid(loadQueueReplay_io_storeDataIn_1_valid),
    .io_storeDataIn_1_bits_uop_sqIdx_flag(loadQueueReplay_io_storeDataIn_1_bits_uop_sqIdx_flag),
    .io_storeDataIn_1_bits_uop_sqIdx_value(loadQueueReplay_io_storeDataIn_1_bits_uop_sqIdx_value),
    .io_replay_0_ready(loadQueueReplay_io_replay_0_ready),
    .io_replay_0_valid(loadQueueReplay_io_replay_0_valid),
    .io_replay_0_bits_uop_cf_exceptionVec_13(loadQueueReplay_io_replay_0_bits_uop_cf_exceptionVec_13),
    .io_replay_0_bits_uop_cf_trigger_backendEn_1(loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendEn_1),
    .io_replay_0_bits_uop_cf_trigger_backendHit_0(loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_0),
    .io_replay_0_bits_uop_cf_trigger_backendHit_1(loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_1),
    .io_replay_0_bits_uop_cf_trigger_backendHit_4(loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_4),
    .io_replay_0_bits_uop_cf_storeSetHit(loadQueueReplay_io_replay_0_bits_uop_cf_storeSetHit),
    .io_replay_0_bits_uop_cf_loadWaitStrict(loadQueueReplay_io_replay_0_bits_uop_cf_loadWaitStrict),
    .io_replay_0_bits_uop_cf_ssid(loadQueueReplay_io_replay_0_bits_uop_cf_ssid),
    .io_replay_0_bits_uop_cf_ftqPtr_flag(loadQueueReplay_io_replay_0_bits_uop_cf_ftqPtr_flag),
    .io_replay_0_bits_uop_cf_ftqPtr_value(loadQueueReplay_io_replay_0_bits_uop_cf_ftqPtr_value),
    .io_replay_0_bits_uop_cf_ftqOffset(loadQueueReplay_io_replay_0_bits_uop_cf_ftqOffset),
    .io_replay_0_bits_uop_ctrl_fuOpType(loadQueueReplay_io_replay_0_bits_uop_ctrl_fuOpType),
    .io_replay_0_bits_uop_ctrl_rfWen(loadQueueReplay_io_replay_0_bits_uop_ctrl_rfWen),
    .io_replay_0_bits_uop_ctrl_fpWen(loadQueueReplay_io_replay_0_bits_uop_ctrl_fpWen),
    .io_replay_0_bits_uop_pdest(loadQueueReplay_io_replay_0_bits_uop_pdest),
    .io_replay_0_bits_uop_robIdx_flag(loadQueueReplay_io_replay_0_bits_uop_robIdx_flag),
    .io_replay_0_bits_uop_robIdx_value(loadQueueReplay_io_replay_0_bits_uop_robIdx_value),
    .io_replay_0_bits_uop_lqIdx_flag(loadQueueReplay_io_replay_0_bits_uop_lqIdx_flag),
    .io_replay_0_bits_uop_lqIdx_value(loadQueueReplay_io_replay_0_bits_uop_lqIdx_value),
    .io_replay_0_bits_uop_sqIdx_flag(loadQueueReplay_io_replay_0_bits_uop_sqIdx_flag),
    .io_replay_0_bits_uop_sqIdx_value(loadQueueReplay_io_replay_0_bits_uop_sqIdx_value),
    .io_replay_0_bits_vaddr(loadQueueReplay_io_replay_0_bits_vaddr),
    .io_replay_0_bits_mshrid(loadQueueReplay_io_replay_0_bits_mshrid),
    .io_replay_0_bits_forward_tlDchannel(loadQueueReplay_io_replay_0_bits_forward_tlDchannel),
    .io_replay_0_bits_schedIndex(loadQueueReplay_io_replay_0_bits_schedIndex),
    .io_replay_1_ready(loadQueueReplay_io_replay_1_ready),
    .io_replay_1_valid(loadQueueReplay_io_replay_1_valid),
    .io_replay_1_bits_uop_cf_exceptionVec_13(loadQueueReplay_io_replay_1_bits_uop_cf_exceptionVec_13),
    .io_replay_1_bits_uop_cf_trigger_backendEn_1(loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendEn_1),
    .io_replay_1_bits_uop_cf_trigger_backendHit_0(loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_0),
    .io_replay_1_bits_uop_cf_trigger_backendHit_1(loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_1),
    .io_replay_1_bits_uop_cf_trigger_backendHit_4(loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_4),
    .io_replay_1_bits_uop_cf_storeSetHit(loadQueueReplay_io_replay_1_bits_uop_cf_storeSetHit),
    .io_replay_1_bits_uop_cf_loadWaitStrict(loadQueueReplay_io_replay_1_bits_uop_cf_loadWaitStrict),
    .io_replay_1_bits_uop_cf_ssid(loadQueueReplay_io_replay_1_bits_uop_cf_ssid),
    .io_replay_1_bits_uop_cf_ftqPtr_flag(loadQueueReplay_io_replay_1_bits_uop_cf_ftqPtr_flag),
    .io_replay_1_bits_uop_cf_ftqPtr_value(loadQueueReplay_io_replay_1_bits_uop_cf_ftqPtr_value),
    .io_replay_1_bits_uop_cf_ftqOffset(loadQueueReplay_io_replay_1_bits_uop_cf_ftqOffset),
    .io_replay_1_bits_uop_ctrl_fuOpType(loadQueueReplay_io_replay_1_bits_uop_ctrl_fuOpType),
    .io_replay_1_bits_uop_ctrl_rfWen(loadQueueReplay_io_replay_1_bits_uop_ctrl_rfWen),
    .io_replay_1_bits_uop_ctrl_fpWen(loadQueueReplay_io_replay_1_bits_uop_ctrl_fpWen),
    .io_replay_1_bits_uop_pdest(loadQueueReplay_io_replay_1_bits_uop_pdest),
    .io_replay_1_bits_uop_robIdx_flag(loadQueueReplay_io_replay_1_bits_uop_robIdx_flag),
    .io_replay_1_bits_uop_robIdx_value(loadQueueReplay_io_replay_1_bits_uop_robIdx_value),
    .io_replay_1_bits_uop_lqIdx_flag(loadQueueReplay_io_replay_1_bits_uop_lqIdx_flag),
    .io_replay_1_bits_uop_lqIdx_value(loadQueueReplay_io_replay_1_bits_uop_lqIdx_value),
    .io_replay_1_bits_uop_sqIdx_flag(loadQueueReplay_io_replay_1_bits_uop_sqIdx_flag),
    .io_replay_1_bits_uop_sqIdx_value(loadQueueReplay_io_replay_1_bits_uop_sqIdx_value),
    .io_replay_1_bits_vaddr(loadQueueReplay_io_replay_1_bits_vaddr),
    .io_replay_1_bits_mshrid(loadQueueReplay_io_replay_1_bits_mshrid),
    .io_replay_1_bits_forward_tlDchannel(loadQueueReplay_io_replay_1_bits_forward_tlDchannel),
    .io_replay_1_bits_schedIndex(loadQueueReplay_io_replay_1_bits_schedIndex),
    .io_tl_d_channel_valid(loadQueueReplay_io_tl_d_channel_valid),
    .io_tl_d_channel_mshrid(loadQueueReplay_io_tl_d_channel_mshrid),
    .io_stAddrReadySqPtr_flag(loadQueueReplay_io_stAddrReadySqPtr_flag),
    .io_stAddrReadySqPtr_value(loadQueueReplay_io_stAddrReadySqPtr_value),
    .io_stAddrReadyVec_0(loadQueueReplay_io_stAddrReadyVec_0),
    .io_stAddrReadyVec_1(loadQueueReplay_io_stAddrReadyVec_1),
    .io_stAddrReadyVec_2(loadQueueReplay_io_stAddrReadyVec_2),
    .io_stAddrReadyVec_3(loadQueueReplay_io_stAddrReadyVec_3),
    .io_stAddrReadyVec_4(loadQueueReplay_io_stAddrReadyVec_4),
    .io_stAddrReadyVec_5(loadQueueReplay_io_stAddrReadyVec_5),
    .io_stAddrReadyVec_6(loadQueueReplay_io_stAddrReadyVec_6),
    .io_stAddrReadyVec_7(loadQueueReplay_io_stAddrReadyVec_7),
    .io_stAddrReadyVec_8(loadQueueReplay_io_stAddrReadyVec_8),
    .io_stAddrReadyVec_9(loadQueueReplay_io_stAddrReadyVec_9),
    .io_stAddrReadyVec_10(loadQueueReplay_io_stAddrReadyVec_10),
    .io_stAddrReadyVec_11(loadQueueReplay_io_stAddrReadyVec_11),
    .io_stDataReadySqPtr_flag(loadQueueReplay_io_stDataReadySqPtr_flag),
    .io_stDataReadySqPtr_value(loadQueueReplay_io_stDataReadySqPtr_value),
    .io_stDataReadyVec_0(loadQueueReplay_io_stDataReadyVec_0),
    .io_stDataReadyVec_1(loadQueueReplay_io_stDataReadyVec_1),
    .io_stDataReadyVec_2(loadQueueReplay_io_stDataReadyVec_2),
    .io_stDataReadyVec_3(loadQueueReplay_io_stDataReadyVec_3),
    .io_stDataReadyVec_4(loadQueueReplay_io_stDataReadyVec_4),
    .io_stDataReadyVec_5(loadQueueReplay_io_stDataReadyVec_5),
    .io_stDataReadyVec_6(loadQueueReplay_io_stDataReadyVec_6),
    .io_stDataReadyVec_7(loadQueueReplay_io_stDataReadyVec_7),
    .io_stDataReadyVec_8(loadQueueReplay_io_stDataReadyVec_8),
    .io_stDataReadyVec_9(loadQueueReplay_io_stDataReadyVec_9),
    .io_stDataReadyVec_10(loadQueueReplay_io_stDataReadyVec_10),
    .io_stDataReadyVec_11(loadQueueReplay_io_stDataReadyVec_11),
    .io_sqEmpty(loadQueueReplay_io_sqEmpty),
    .io_lqFull(loadQueueReplay_io_lqFull),
    .io_ldWbPtr_flag(loadQueueReplay_io_ldWbPtr_flag),
    .io_ldWbPtr_value(loadQueueReplay_io_ldWbPtr_value),
    .io_rarFull(loadQueueReplay_io_rarFull),
    .io_rawFull(loadQueueReplay_io_rawFull),
    .io_l2_hint_valid(loadQueueReplay_io_l2_hint_valid),
    .io_l2_hint_bits_sourceId(loadQueueReplay_io_l2_hint_bits_sourceId),
    .io_tlbReplayDelayCycleCtrl_0(loadQueueReplay_io_tlbReplayDelayCycleCtrl_0),
    .io_tlbReplayDelayCycleCtrl_1(loadQueueReplay_io_tlbReplayDelayCycleCtrl_1),
    .io_tlbReplayDelayCycleCtrl_2(loadQueueReplay_io_tlbReplayDelayCycleCtrl_2),
    .io_tlbReplayDelayCycleCtrl_3(loadQueueReplay_io_tlbReplayDelayCycleCtrl_3),
    .io_perf_0_value(loadQueueReplay_io_perf_0_value),
    .io_perf_1_value(loadQueueReplay_io_perf_1_value),
    .io_perf_2_value(loadQueueReplay_io_perf_2_value),
    .io_perf_3_value(loadQueueReplay_io_perf_3_value),
    .io_perf_4_value(loadQueueReplay_io_perf_4_value),
    .io_perf_5_value(loadQueueReplay_io_perf_5_value),
    .io_perf_6_value(loadQueueReplay_io_perf_6_value),
    .io_perf_7_value(loadQueueReplay_io_perf_7_value),
    .io_perf_8_value(loadQueueReplay_io_perf_8_value),
    .io_perf_9_value(loadQueueReplay_io_perf_9_value),
    .io_perf_10_value(loadQueueReplay_io_perf_10_value),
    .io_perf_11_value(loadQueueReplay_io_perf_11_value),
    .io_perf_12_value(loadQueueReplay_io_perf_12_value),
    .miss_in_dtlb_0(loadQueueReplay_miss_in_dtlb_0),
    .rob_head_vaddr_0_valid(loadQueueReplay_rob_head_vaddr_0_valid),
    .rob_head_vaddr_0_bits(loadQueueReplay_rob_head_vaddr_0_bits)
  );
  VirtualLoadQueue virtualLoadQueue ( // @[LoadQueue.scala 133:32]
    .clock(virtualLoadQueue_clock),
    .reset(virtualLoadQueue_reset),
    .io_redirect_valid(virtualLoadQueue_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(virtualLoadQueue_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(virtualLoadQueue_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(virtualLoadQueue_io_redirect_bits_level),
    .io_enq_canAccept(virtualLoadQueue_io_enq_canAccept),
    .io_enq_sqCanAccept(virtualLoadQueue_io_enq_sqCanAccept),
    .io_enq_needAlloc_0(virtualLoadQueue_io_enq_needAlloc_0),
    .io_enq_needAlloc_1(virtualLoadQueue_io_enq_needAlloc_1),
    .io_enq_needAlloc_2(virtualLoadQueue_io_enq_needAlloc_2),
    .io_enq_req_0_valid(virtualLoadQueue_io_enq_req_0_valid),
    .io_enq_req_0_bits_robIdx_flag(virtualLoadQueue_io_enq_req_0_bits_robIdx_flag),
    .io_enq_req_0_bits_robIdx_value(virtualLoadQueue_io_enq_req_0_bits_robIdx_value),
    .io_enq_req_0_bits_lqIdx_value(virtualLoadQueue_io_enq_req_0_bits_lqIdx_value),
    .io_enq_req_1_valid(virtualLoadQueue_io_enq_req_1_valid),
    .io_enq_req_1_bits_robIdx_flag(virtualLoadQueue_io_enq_req_1_bits_robIdx_flag),
    .io_enq_req_1_bits_robIdx_value(virtualLoadQueue_io_enq_req_1_bits_robIdx_value),
    .io_enq_req_1_bits_lqIdx_value(virtualLoadQueue_io_enq_req_1_bits_lqIdx_value),
    .io_enq_req_2_valid(virtualLoadQueue_io_enq_req_2_valid),
    .io_enq_req_2_bits_robIdx_flag(virtualLoadQueue_io_enq_req_2_bits_robIdx_flag),
    .io_enq_req_2_bits_robIdx_value(virtualLoadQueue_io_enq_req_2_bits_robIdx_value),
    .io_enq_req_2_bits_lqIdx_value(virtualLoadQueue_io_enq_req_2_bits_lqIdx_value),
    .io_enq_req_3_valid(virtualLoadQueue_io_enq_req_3_valid),
    .io_enq_req_3_bits_robIdx_flag(virtualLoadQueue_io_enq_req_3_bits_robIdx_flag),
    .io_enq_req_3_bits_robIdx_value(virtualLoadQueue_io_enq_req_3_bits_robIdx_value),
    .io_enq_req_3_bits_lqIdx_value(virtualLoadQueue_io_enq_req_3_bits_lqIdx_value),
    .io_enq_resp_0_flag(virtualLoadQueue_io_enq_resp_0_flag),
    .io_enq_resp_0_value(virtualLoadQueue_io_enq_resp_0_value),
    .io_enq_resp_1_flag(virtualLoadQueue_io_enq_resp_1_flag),
    .io_enq_resp_1_value(virtualLoadQueue_io_enq_resp_1_value),
    .io_enq_resp_2_flag(virtualLoadQueue_io_enq_resp_2_flag),
    .io_enq_resp_2_value(virtualLoadQueue_io_enq_resp_2_value),
    .io_enq_resp_3_flag(virtualLoadQueue_io_enq_resp_3_flag),
    .io_enq_resp_3_value(virtualLoadQueue_io_enq_resp_3_value),
    .io_ldin_0_valid(virtualLoadQueue_io_ldin_0_valid),
    .io_ldin_0_bits_uop_cf_exceptionVec_4(virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_4),
    .io_ldin_0_bits_uop_cf_exceptionVec_5(virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_5),
    .io_ldin_0_bits_uop_cf_exceptionVec_13(virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_13),
    .io_ldin_0_bits_uop_lqIdx_value(virtualLoadQueue_io_ldin_0_bits_uop_lqIdx_value),
    .io_ldin_0_bits_miss(virtualLoadQueue_io_ldin_0_bits_miss),
    .io_ldin_0_bits_tlbMiss(virtualLoadQueue_io_ldin_0_bits_tlbMiss),
    .io_ldin_0_bits_mmio(virtualLoadQueue_io_ldin_0_bits_mmio),
    .io_ldin_0_bits_dcacheRequireReplay(virtualLoadQueue_io_ldin_0_bits_dcacheRequireReplay),
    .io_ldin_0_bits_rep_info_cause_0(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_0),
    .io_ldin_0_bits_rep_info_cause_1(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_1),
    .io_ldin_0_bits_rep_info_cause_2(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_2),
    .io_ldin_0_bits_rep_info_cause_3(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_3),
    .io_ldin_0_bits_rep_info_cause_4(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_4),
    .io_ldin_0_bits_rep_info_cause_5(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_5),
    .io_ldin_0_bits_rep_info_cause_6(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_6),
    .io_ldin_0_bits_rep_info_cause_7(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_7),
    .io_ldin_0_bits_rep_info_cause_8(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_8),
    .io_ldin_0_bits_rep_info_cause_9(virtualLoadQueue_io_ldin_0_bits_rep_info_cause_9),
    .io_ldin_1_valid(virtualLoadQueue_io_ldin_1_valid),
    .io_ldin_1_bits_uop_cf_exceptionVec_4(virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_4),
    .io_ldin_1_bits_uop_cf_exceptionVec_5(virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_5),
    .io_ldin_1_bits_uop_cf_exceptionVec_13(virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_13),
    .io_ldin_1_bits_uop_lqIdx_value(virtualLoadQueue_io_ldin_1_bits_uop_lqIdx_value),
    .io_ldin_1_bits_miss(virtualLoadQueue_io_ldin_1_bits_miss),
    .io_ldin_1_bits_tlbMiss(virtualLoadQueue_io_ldin_1_bits_tlbMiss),
    .io_ldin_1_bits_mmio(virtualLoadQueue_io_ldin_1_bits_mmio),
    .io_ldin_1_bits_dcacheRequireReplay(virtualLoadQueue_io_ldin_1_bits_dcacheRequireReplay),
    .io_ldin_1_bits_rep_info_cause_0(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_0),
    .io_ldin_1_bits_rep_info_cause_1(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_1),
    .io_ldin_1_bits_rep_info_cause_2(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_2),
    .io_ldin_1_bits_rep_info_cause_3(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_3),
    .io_ldin_1_bits_rep_info_cause_4(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_4),
    .io_ldin_1_bits_rep_info_cause_5(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_5),
    .io_ldin_1_bits_rep_info_cause_6(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_6),
    .io_ldin_1_bits_rep_info_cause_7(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_7),
    .io_ldin_1_bits_rep_info_cause_8(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_8),
    .io_ldin_1_bits_rep_info_cause_9(virtualLoadQueue_io_ldin_1_bits_rep_info_cause_9),
    .io_ldWbPtr_flag(virtualLoadQueue_io_ldWbPtr_flag),
    .io_ldWbPtr_value(virtualLoadQueue_io_ldWbPtr_value),
    .io_lqEmpty(virtualLoadQueue_io_lqEmpty),
    .io_lqDeq(virtualLoadQueue_io_lqDeq),
    .io_lqCancelCnt(virtualLoadQueue_io_lqCancelCnt)
  );
  LqExceptionBuffer exceptionBuffer ( // @[LoadQueue.scala 134:31]
    .clock(exceptionBuffer_clock),
    .reset(exceptionBuffer_reset),
    .io_redirect_valid(exceptionBuffer_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exceptionBuffer_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exceptionBuffer_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exceptionBuffer_io_redirect_bits_level),
    .io_req_0_valid(exceptionBuffer_io_req_0_valid),
    .io_req_0_bits_uop_cf_exceptionVec_4(exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_4),
    .io_req_0_bits_uop_cf_exceptionVec_5(exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_5),
    .io_req_0_bits_uop_cf_exceptionVec_13(exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_13),
    .io_req_0_bits_uop_robIdx_flag(exceptionBuffer_io_req_0_bits_uop_robIdx_flag),
    .io_req_0_bits_uop_robIdx_value(exceptionBuffer_io_req_0_bits_uop_robIdx_value),
    .io_req_0_bits_vaddr(exceptionBuffer_io_req_0_bits_vaddr),
    .io_req_1_valid(exceptionBuffer_io_req_1_valid),
    .io_req_1_bits_uop_cf_exceptionVec_4(exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_4),
    .io_req_1_bits_uop_cf_exceptionVec_5(exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_5),
    .io_req_1_bits_uop_cf_exceptionVec_13(exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_13),
    .io_req_1_bits_uop_robIdx_flag(exceptionBuffer_io_req_1_bits_uop_robIdx_flag),
    .io_req_1_bits_uop_robIdx_value(exceptionBuffer_io_req_1_bits_uop_robIdx_value),
    .io_req_1_bits_vaddr(exceptionBuffer_io_req_1_bits_vaddr),
    .io_exceptionAddr_vaddr(exceptionBuffer_io_exceptionAddr_vaddr)
  );
  UncacheBuffer uncacheBuffer ( // @[LoadQueue.scala 135:29]
    .clock(uncacheBuffer_clock),
    .reset(uncacheBuffer_reset),
    .io_redirect_valid(uncacheBuffer_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(uncacheBuffer_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(uncacheBuffer_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(uncacheBuffer_io_redirect_bits_level),
    .io_req_0_valid(uncacheBuffer_io_req_0_valid),
    .io_req_0_bits_uop_cf_exceptionVec_4(uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_4),
    .io_req_0_bits_uop_cf_exceptionVec_5(uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_5),
    .io_req_0_bits_uop_cf_exceptionVec_13(uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_13),
    .io_req_0_bits_uop_cf_trigger_backendEn_1(uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendEn_1),
    .io_req_0_bits_uop_cf_trigger_backendHit_0(uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_0),
    .io_req_0_bits_uop_cf_trigger_backendHit_1(uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_1),
    .io_req_0_bits_uop_cf_trigger_backendHit_4(uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_4),
    .io_req_0_bits_uop_cf_ftqPtr_flag(uncacheBuffer_io_req_0_bits_uop_cf_ftqPtr_flag),
    .io_req_0_bits_uop_cf_ftqPtr_value(uncacheBuffer_io_req_0_bits_uop_cf_ftqPtr_value),
    .io_req_0_bits_uop_cf_ftqOffset(uncacheBuffer_io_req_0_bits_uop_cf_ftqOffset),
    .io_req_0_bits_uop_ctrl_fuOpType(uncacheBuffer_io_req_0_bits_uop_ctrl_fuOpType),
    .io_req_0_bits_uop_ctrl_rfWen(uncacheBuffer_io_req_0_bits_uop_ctrl_rfWen),
    .io_req_0_bits_uop_ctrl_fpWen(uncacheBuffer_io_req_0_bits_uop_ctrl_fpWen),
    .io_req_0_bits_uop_ctrl_replayInst(uncacheBuffer_io_req_0_bits_uop_ctrl_replayInst),
    .io_req_0_bits_uop_pdest(uncacheBuffer_io_req_0_bits_uop_pdest),
    .io_req_0_bits_uop_robIdx_flag(uncacheBuffer_io_req_0_bits_uop_robIdx_flag),
    .io_req_0_bits_uop_robIdx_value(uncacheBuffer_io_req_0_bits_uop_robIdx_value),
    .io_req_0_bits_uop_lqIdx_flag(uncacheBuffer_io_req_0_bits_uop_lqIdx_flag),
    .io_req_0_bits_uop_lqIdx_value(uncacheBuffer_io_req_0_bits_uop_lqIdx_value),
    .io_req_0_bits_paddr(uncacheBuffer_io_req_0_bits_paddr),
    .io_req_0_bits_mask(uncacheBuffer_io_req_0_bits_mask),
    .io_req_0_bits_mmio(uncacheBuffer_io_req_0_bits_mmio),
    .io_req_0_bits_rep_info_cause_0(uncacheBuffer_io_req_0_bits_rep_info_cause_0),
    .io_req_0_bits_rep_info_cause_1(uncacheBuffer_io_req_0_bits_rep_info_cause_1),
    .io_req_0_bits_rep_info_cause_2(uncacheBuffer_io_req_0_bits_rep_info_cause_2),
    .io_req_0_bits_rep_info_cause_3(uncacheBuffer_io_req_0_bits_rep_info_cause_3),
    .io_req_0_bits_rep_info_cause_4(uncacheBuffer_io_req_0_bits_rep_info_cause_4),
    .io_req_0_bits_rep_info_cause_5(uncacheBuffer_io_req_0_bits_rep_info_cause_5),
    .io_req_0_bits_rep_info_cause_6(uncacheBuffer_io_req_0_bits_rep_info_cause_6),
    .io_req_0_bits_rep_info_cause_7(uncacheBuffer_io_req_0_bits_rep_info_cause_7),
    .io_req_0_bits_rep_info_cause_8(uncacheBuffer_io_req_0_bits_rep_info_cause_8),
    .io_req_0_bits_rep_info_cause_9(uncacheBuffer_io_req_0_bits_rep_info_cause_9),
    .io_req_0_bits_data_wen_dup_5(uncacheBuffer_io_req_0_bits_data_wen_dup_5),
    .io_req_1_valid(uncacheBuffer_io_req_1_valid),
    .io_req_1_bits_uop_cf_exceptionVec_4(uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_4),
    .io_req_1_bits_uop_cf_exceptionVec_5(uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_5),
    .io_req_1_bits_uop_cf_exceptionVec_13(uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_13),
    .io_req_1_bits_uop_cf_trigger_backendEn_1(uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendEn_1),
    .io_req_1_bits_uop_cf_trigger_backendHit_0(uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_0),
    .io_req_1_bits_uop_cf_trigger_backendHit_1(uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_1),
    .io_req_1_bits_uop_cf_trigger_backendHit_4(uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_4),
    .io_req_1_bits_uop_cf_ftqPtr_flag(uncacheBuffer_io_req_1_bits_uop_cf_ftqPtr_flag),
    .io_req_1_bits_uop_cf_ftqPtr_value(uncacheBuffer_io_req_1_bits_uop_cf_ftqPtr_value),
    .io_req_1_bits_uop_cf_ftqOffset(uncacheBuffer_io_req_1_bits_uop_cf_ftqOffset),
    .io_req_1_bits_uop_ctrl_fuOpType(uncacheBuffer_io_req_1_bits_uop_ctrl_fuOpType),
    .io_req_1_bits_uop_ctrl_rfWen(uncacheBuffer_io_req_1_bits_uop_ctrl_rfWen),
    .io_req_1_bits_uop_ctrl_fpWen(uncacheBuffer_io_req_1_bits_uop_ctrl_fpWen),
    .io_req_1_bits_uop_ctrl_replayInst(uncacheBuffer_io_req_1_bits_uop_ctrl_replayInst),
    .io_req_1_bits_uop_pdest(uncacheBuffer_io_req_1_bits_uop_pdest),
    .io_req_1_bits_uop_robIdx_flag(uncacheBuffer_io_req_1_bits_uop_robIdx_flag),
    .io_req_1_bits_uop_robIdx_value(uncacheBuffer_io_req_1_bits_uop_robIdx_value),
    .io_req_1_bits_uop_lqIdx_flag(uncacheBuffer_io_req_1_bits_uop_lqIdx_flag),
    .io_req_1_bits_uop_lqIdx_value(uncacheBuffer_io_req_1_bits_uop_lqIdx_value),
    .io_req_1_bits_paddr(uncacheBuffer_io_req_1_bits_paddr),
    .io_req_1_bits_mask(uncacheBuffer_io_req_1_bits_mask),
    .io_req_1_bits_mmio(uncacheBuffer_io_req_1_bits_mmio),
    .io_req_1_bits_rep_info_cause_0(uncacheBuffer_io_req_1_bits_rep_info_cause_0),
    .io_req_1_bits_rep_info_cause_1(uncacheBuffer_io_req_1_bits_rep_info_cause_1),
    .io_req_1_bits_rep_info_cause_2(uncacheBuffer_io_req_1_bits_rep_info_cause_2),
    .io_req_1_bits_rep_info_cause_3(uncacheBuffer_io_req_1_bits_rep_info_cause_3),
    .io_req_1_bits_rep_info_cause_4(uncacheBuffer_io_req_1_bits_rep_info_cause_4),
    .io_req_1_bits_rep_info_cause_5(uncacheBuffer_io_req_1_bits_rep_info_cause_5),
    .io_req_1_bits_rep_info_cause_6(uncacheBuffer_io_req_1_bits_rep_info_cause_6),
    .io_req_1_bits_rep_info_cause_7(uncacheBuffer_io_req_1_bits_rep_info_cause_7),
    .io_req_1_bits_rep_info_cause_8(uncacheBuffer_io_req_1_bits_rep_info_cause_8),
    .io_req_1_bits_rep_info_cause_9(uncacheBuffer_io_req_1_bits_rep_info_cause_9),
    .io_req_1_bits_data_wen_dup_5(uncacheBuffer_io_req_1_bits_data_wen_dup_5),
    .io_ldout_0_ready(uncacheBuffer_io_ldout_0_ready),
    .io_ldout_0_valid(uncacheBuffer_io_ldout_0_valid),
    .io_ldout_0_bits_uop_cf_exceptionVec_4(uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_4),
    .io_ldout_0_bits_uop_cf_exceptionVec_5(uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_5),
    .io_ldout_0_bits_uop_cf_exceptionVec_13(uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_13),
    .io_ldout_0_bits_uop_cf_trigger_backendEn_1(uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_0_bits_uop_cf_trigger_backendHit_0(uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_0_bits_uop_cf_trigger_backendHit_1(uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_0_bits_uop_cf_trigger_backendHit_4(uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_0_bits_uop_ctrl_rfWen(uncacheBuffer_io_ldout_0_bits_uop_ctrl_rfWen),
    .io_ldout_0_bits_uop_ctrl_fpWen(uncacheBuffer_io_ldout_0_bits_uop_ctrl_fpWen),
    .io_ldout_0_bits_uop_ctrl_replayInst(uncacheBuffer_io_ldout_0_bits_uop_ctrl_replayInst),
    .io_ldout_0_bits_uop_pdest(uncacheBuffer_io_ldout_0_bits_uop_pdest),
    .io_ldout_0_bits_uop_robIdx_flag(uncacheBuffer_io_ldout_0_bits_uop_robIdx_flag),
    .io_ldout_0_bits_uop_robIdx_value(uncacheBuffer_io_ldout_0_bits_uop_robIdx_value),
    .io_ldout_0_bits_uop_lqIdx_flag(uncacheBuffer_io_ldout_0_bits_uop_lqIdx_flag),
    .io_ldout_0_bits_uop_lqIdx_value(uncacheBuffer_io_ldout_0_bits_uop_lqIdx_value),
    .io_ld_raw_data_0_lqData(uncacheBuffer_io_ld_raw_data_0_lqData),
    .io_ld_raw_data_0_uop_ctrl_fuOpType(uncacheBuffer_io_ld_raw_data_0_uop_ctrl_fuOpType),
    .io_ld_raw_data_0_uop_ctrl_fpWen(uncacheBuffer_io_ld_raw_data_0_uop_ctrl_fpWen),
    .io_ld_raw_data_0_addrOffset(uncacheBuffer_io_ld_raw_data_0_addrOffset),
    .io_rob_pendingld(uncacheBuffer_io_rob_pendingld),
    .io_rob_commit(uncacheBuffer_io_rob_commit),
    .io_rob_pendingPtr_flag(uncacheBuffer_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(uncacheBuffer_io_rob_pendingPtr_value),
    .io_rob_mmio_0(uncacheBuffer_io_rob_mmio_0),
    .io_rob_mmio_1(uncacheBuffer_io_rob_mmio_1),
    .io_rob_uop_0_robIdx_value(uncacheBuffer_io_rob_uop_0_robIdx_value),
    .io_rob_uop_1_robIdx_value(uncacheBuffer_io_rob_uop_1_robIdx_value),
    .io_uncache_req_ready(uncacheBuffer_io_uncache_req_ready),
    .io_uncache_req_valid(uncacheBuffer_io_uncache_req_valid),
    .io_uncache_req_bits_addr(uncacheBuffer_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(uncacheBuffer_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(uncacheBuffer_io_uncache_req_bits_id),
    .io_uncache_resp_ready(uncacheBuffer_io_uncache_resp_ready),
    .io_uncache_resp_valid(uncacheBuffer_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(uncacheBuffer_io_uncache_resp_bits_data),
    .io_uncache_resp_bits_id(uncacheBuffer_io_uncache_resp_bits_id),
    .io_trigger_0_hitLoadAddrTriggerHitVec_0(uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_0),
    .io_trigger_0_hitLoadAddrTriggerHitVec_1(uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_1),
    .io_trigger_0_hitLoadAddrTriggerHitVec_2(uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_2),
    .io_trigger_0_lqLoadAddrTriggerHitVec_0(uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_0),
    .io_trigger_0_lqLoadAddrTriggerHitVec_1(uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_1),
    .io_trigger_0_lqLoadAddrTriggerHitVec_2(uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_2),
    .io_trigger_1_hitLoadAddrTriggerHitVec_0(uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_0),
    .io_trigger_1_hitLoadAddrTriggerHitVec_1(uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_1),
    .io_trigger_1_hitLoadAddrTriggerHitVec_2(uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_2),
    .io_rollback_valid(uncacheBuffer_io_rollback_valid),
    .io_rollback_bits_robIdx_flag(uncacheBuffer_io_rollback_bits_robIdx_flag),
    .io_rollback_bits_robIdx_value(uncacheBuffer_io_rollback_bits_robIdx_value),
    .io_rollback_bits_ftqIdx_flag(uncacheBuffer_io_rollback_bits_ftqIdx_flag),
    .io_rollback_bits_ftqIdx_value(uncacheBuffer_io_rollback_bits_ftqIdx_value),
    .io_rollback_bits_ftqOffset(uncacheBuffer_io_rollback_bits_ftqOffset)
  );
  assign io_enq_canAccept = virtualLoadQueue_io_enq_canAccept; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_0_flag = virtualLoadQueue_io_enq_resp_0_flag; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_0_value = virtualLoadQueue_io_enq_resp_0_value; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_1_flag = virtualLoadQueue_io_enq_resp_1_flag; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_1_value = virtualLoadQueue_io_enq_resp_1_value; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_2_flag = virtualLoadQueue_io_enq_resp_2_flag; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_2_value = virtualLoadQueue_io_enq_resp_2_value; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_3_flag = virtualLoadQueue_io_enq_resp_3_flag; // @[LoadQueue.scala 166:35]
  assign io_enq_resp_3_value = virtualLoadQueue_io_enq_resp_3_value; // @[LoadQueue.scala 166:35]
  assign io_ldu_stld_nuke_query_0_req_ready = loadQueueRAW_io_query_0_req_ready; // @[LoadQueue.scala 157:37]
  assign io_ldu_stld_nuke_query_1_req_ready = loadQueueRAW_io_query_1_req_ready; // @[LoadQueue.scala 157:37]
  assign io_ldu_ldld_nuke_query_0_req_ready = loadQueueRAR_io_query_0_req_ready; // @[LoadQueue.scala 144:37]
  assign io_ldu_ldld_nuke_query_0_resp_valid = loadQueueRAR_io_query_0_resp_valid; // @[LoadQueue.scala 145:37]
  assign io_ldu_ldld_nuke_query_0_resp_bits_rep_frm_fetch = loadQueueRAR_io_query_0_resp_bits_rep_frm_fetch; // @[LoadQueue.scala 145:37]
  assign io_ldu_ldld_nuke_query_1_req_ready = loadQueueRAR_io_query_1_req_ready; // @[LoadQueue.scala 144:37]
  assign io_ldu_ldld_nuke_query_1_resp_valid = loadQueueRAR_io_query_1_resp_valid; // @[LoadQueue.scala 145:37]
  assign io_ldu_ldld_nuke_query_1_resp_bits_rep_frm_fetch = loadQueueRAR_io_query_1_resp_bits_rep_frm_fetch; // @[LoadQueue.scala 145:37]
  assign io_ldu_ldin_0_ready = loadQueueReplay_io_enq_0_ready; // @[LoadQueue.scala 230:39]
  assign io_ldu_ldin_1_ready = loadQueueReplay_io_enq_1_ready; // @[LoadQueue.scala 230:39]
  assign io_ldout_0_valid = uncacheBuffer_io_ldout_0_valid; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_exceptionVec_4 = uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_exceptionVec_5 = uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_exceptionVec_13 = uncacheBuffer_io_ldout_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_trigger_backendEn_1 = uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_0 = uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_1 = uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_4 = uncacheBuffer_io_ldout_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_ctrl_rfWen = uncacheBuffer_io_ldout_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_ctrl_fpWen = uncacheBuffer_io_ldout_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_ctrl_replayInst = uncacheBuffer_io_ldout_0_bits_uop_ctrl_replayInst; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_pdest = uncacheBuffer_io_ldout_0_bits_uop_pdest; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_robIdx_flag = uncacheBuffer_io_ldout_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_robIdx_value = uncacheBuffer_io_ldout_0_bits_uop_robIdx_value; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_lqIdx_flag = uncacheBuffer_io_ldout_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 187:31]
  assign io_ldout_0_bits_uop_lqIdx_value = uncacheBuffer_io_ldout_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 187:31]
  assign io_ld_raw_data_0_lqData = uncacheBuffer_io_ld_raw_data_0_lqData; // @[LoadQueue.scala 188:33]
  assign io_ld_raw_data_0_uop_ctrl_fuOpType = uncacheBuffer_io_ld_raw_data_0_uop_ctrl_fuOpType; // @[LoadQueue.scala 188:33]
  assign io_ld_raw_data_0_uop_ctrl_fpWen = uncacheBuffer_io_ld_raw_data_0_uop_ctrl_fpWen; // @[LoadQueue.scala 188:33]
  assign io_ld_raw_data_0_addrOffset = uncacheBuffer_io_ld_raw_data_0_addrOffset; // @[LoadQueue.scala 188:33]
  assign io_replay_0_valid = loadQueueReplay_io_replay_0_valid; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_exceptionVec_13 = loadQueueReplay_io_replay_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_trigger_backendEn_1 = loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_trigger_backendHit_0 = loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_trigger_backendHit_1 = loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_trigger_backendHit_4 = loadQueueReplay_io_replay_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_storeSetHit = loadQueueReplay_io_replay_0_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_loadWaitStrict = loadQueueReplay_io_replay_0_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_ssid = loadQueueReplay_io_replay_0_bits_uop_cf_ssid; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_ftqPtr_flag = loadQueueReplay_io_replay_0_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_ftqPtr_value = loadQueueReplay_io_replay_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_cf_ftqOffset = loadQueueReplay_io_replay_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_ctrl_fuOpType = loadQueueReplay_io_replay_0_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_ctrl_rfWen = loadQueueReplay_io_replay_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_ctrl_fpWen = loadQueueReplay_io_replay_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_pdest = loadQueueReplay_io_replay_0_bits_uop_pdest; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_robIdx_flag = loadQueueReplay_io_replay_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_robIdx_value = loadQueueReplay_io_replay_0_bits_uop_robIdx_value; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_lqIdx_flag = loadQueueReplay_io_replay_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_lqIdx_value = loadQueueReplay_io_replay_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_sqIdx_flag = loadQueueReplay_io_replay_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_uop_sqIdx_value = loadQueueReplay_io_replay_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_vaddr = loadQueueReplay_io_replay_0_bits_vaddr; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_mshrid = loadQueueReplay_io_replay_0_bits_mshrid; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_forward_tlDchannel = loadQueueReplay_io_replay_0_bits_forward_tlDchannel; // @[LoadQueue.scala 233:39]
  assign io_replay_0_bits_schedIndex = loadQueueReplay_io_replay_0_bits_schedIndex; // @[LoadQueue.scala 233:39]
  assign io_replay_1_valid = loadQueueReplay_io_replay_1_valid; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_exceptionVec_13 = loadQueueReplay_io_replay_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_trigger_backendEn_1 = loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_trigger_backendHit_0 = loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_trigger_backendHit_1 = loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_trigger_backendHit_4 = loadQueueReplay_io_replay_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_storeSetHit = loadQueueReplay_io_replay_1_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_loadWaitStrict = loadQueueReplay_io_replay_1_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_ssid = loadQueueReplay_io_replay_1_bits_uop_cf_ssid; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_ftqPtr_flag = loadQueueReplay_io_replay_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_ftqPtr_value = loadQueueReplay_io_replay_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_cf_ftqOffset = loadQueueReplay_io_replay_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_ctrl_fuOpType = loadQueueReplay_io_replay_1_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_ctrl_rfWen = loadQueueReplay_io_replay_1_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_ctrl_fpWen = loadQueueReplay_io_replay_1_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_pdest = loadQueueReplay_io_replay_1_bits_uop_pdest; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_robIdx_flag = loadQueueReplay_io_replay_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_robIdx_value = loadQueueReplay_io_replay_1_bits_uop_robIdx_value; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_lqIdx_flag = loadQueueReplay_io_replay_1_bits_uop_lqIdx_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_lqIdx_value = loadQueueReplay_io_replay_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_sqIdx_flag = loadQueueReplay_io_replay_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_uop_sqIdx_value = loadQueueReplay_io_replay_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_vaddr = loadQueueReplay_io_replay_1_bits_vaddr; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_mshrid = loadQueueReplay_io_replay_1_bits_mshrid; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_forward_tlDchannel = loadQueueReplay_io_replay_1_bits_forward_tlDchannel; // @[LoadQueue.scala 233:39]
  assign io_replay_1_bits_schedIndex = loadQueueReplay_io_replay_1_bits_schedIndex; // @[LoadQueue.scala 233:39]
  assign io_rollback_valid = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ? _oldest_T_2_valid :
    _oldest_T_5_valid; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_robIdx_flag = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_robIdx_flag : _oldest_T_5_bits_robIdx_flag; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_robIdx_value = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_robIdx_value : _oldest_T_5_bits_robIdx_value; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_ftqIdx_flag = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_ftqIdx_flag : _oldest_T_5_bits_ftqIdx_flag; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_ftqIdx_value = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_ftqIdx_value : _oldest_T_5_bits_ftqIdx_value; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_ftqOffset = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_ftqOffset : _oldest_T_5_bits_ftqOffset; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_stFtqIdx_value = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_stFtqIdx_value : _oldest_T_5_bits_stFtqIdx_value; // @[LoadQueue.scala 208:23]
  assign io_rollback_bits_stFtqOffset = loadQueueRAW_io_rollback_valid & uncacheBuffer_io_rollback_valid ?
    _oldest_T_2_bits_stFtqOffset : _oldest_T_5_bits_stFtqOffset; // @[LoadQueue.scala 208:23]
  assign io_rob_mmio_0 = uncacheBuffer_io_rob_mmio_0; // @[LoadQueue.scala 189:31]
  assign io_rob_mmio_1 = uncacheBuffer_io_rob_mmio_1; // @[LoadQueue.scala 189:31]
  assign io_rob_uop_0_robIdx_value = uncacheBuffer_io_rob_uop_0_robIdx_value; // @[LoadQueue.scala 189:31]
  assign io_rob_uop_1_robIdx_value = uncacheBuffer_io_rob_uop_1_robIdx_value; // @[LoadQueue.scala 189:31]
  assign io_uncache_req_valid = uncacheBuffer_io_uncache_req_valid; // @[LoadQueue.scala 190:31]
  assign io_uncache_req_bits_addr = uncacheBuffer_io_uncache_req_bits_addr; // @[LoadQueue.scala 190:31]
  assign io_uncache_req_bits_mask = uncacheBuffer_io_uncache_req_bits_mask; // @[LoadQueue.scala 190:31]
  assign io_uncache_req_bits_id = uncacheBuffer_io_uncache_req_bits_id; // @[LoadQueue.scala 190:31]
  assign io_uncache_resp_ready = uncacheBuffer_io_uncache_resp_ready; // @[LoadQueue.scala 190:31]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_0 = uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_0; // @[LoadQueue.scala 191:31]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_1 = uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_1; // @[LoadQueue.scala 191:31]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_2 = uncacheBuffer_io_trigger_0_lqLoadAddrTriggerHitVec_2; // @[LoadQueue.scala 191:31]
  assign io_exceptionAddr_vaddr = exceptionBuffer_io_exceptionAddr_vaddr; // @[LoadQueue.scala 181:20]
  assign io_lqDeq = virtualLoadQueue_io_lqDeq; // @[LoadQueue.scala 169:35]
  assign io_lqCancelCnt = virtualLoadQueue_io_lqCancelCnt; // @[LoadQueue.scala 170:35]
  assign io_lq_rep_full = loadQueueReplay_io_lqFull; // @[LoadQueue.scala 241:39]
  assign io_lqEmpty = virtualLoadQueue_io_lqEmpty; // @[LoadQueue.scala 171:31]
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
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_14_value = io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_15_value = io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_16_value = io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_17_value = {{5'd0}, io_perf_17_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_18_value = {{5'd0}, io_perf_18_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_19_value = {{5'd0}, io_perf_19_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_20_value = {{5'd0}, io_perf_20_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_21_value = {{5'd0}, io_perf_21_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_22_value = {{5'd0}, io_perf_22_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_23_value = {{5'd0}, io_perf_23_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_24_value = {{5'd0}, io_perf_24_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_25_value = {{5'd0}, io_perf_25_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign loadQueueRAR_clock = clock;
  assign loadQueueRAR_reset = reset;
  assign loadQueueRAR_io_redirect_valid = io_redirect_valid; // @[LoadQueue.scala 140:28]
  assign loadQueueRAR_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 140:28]
  assign loadQueueRAR_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[LoadQueue.scala 140:28]
  assign loadQueueRAR_io_redirect_bits_level = io_redirect_bits_level; // @[LoadQueue.scala 140:28]
  assign loadQueueRAR_io_query_0_req_valid = io_ldu_ldld_nuke_query_0_req_valid; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_req_bits_uop_robIdx_flag = io_ldu_ldld_nuke_query_0_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_req_bits_uop_robIdx_value = io_ldu_ldld_nuke_query_0_req_bits_uop_robIdx_value; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_req_bits_uop_lqIdx_flag = io_ldu_ldld_nuke_query_0_req_bits_uop_lqIdx_flag; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_req_bits_uop_lqIdx_value = io_ldu_ldld_nuke_query_0_req_bits_uop_lqIdx_value; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_req_bits_paddr = io_ldu_ldld_nuke_query_0_req_bits_paddr; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_req_bits_data_valid = io_ldu_ldld_nuke_query_0_req_bits_data_valid; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_0_revoke = io_ldu_ldld_nuke_query_0_revoke; // @[LoadQueue.scala 146:37]
  assign loadQueueRAR_io_query_1_req_valid = io_ldu_ldld_nuke_query_1_req_valid; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_req_bits_uop_robIdx_flag = io_ldu_ldld_nuke_query_1_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_req_bits_uop_robIdx_value = io_ldu_ldld_nuke_query_1_req_bits_uop_robIdx_value; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_req_bits_uop_lqIdx_flag = io_ldu_ldld_nuke_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_req_bits_uop_lqIdx_value = io_ldu_ldld_nuke_query_1_req_bits_uop_lqIdx_value; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_req_bits_paddr = io_ldu_ldld_nuke_query_1_req_bits_paddr; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_req_bits_data_valid = io_ldu_ldld_nuke_query_1_req_bits_data_valid; // @[LoadQueue.scala 144:37]
  assign loadQueueRAR_io_query_1_revoke = io_ldu_ldld_nuke_query_1_revoke; // @[LoadQueue.scala 146:37]
  assign loadQueueRAR_io_release_valid = io_release_valid; // @[LoadQueue.scala 141:28]
  assign loadQueueRAR_io_release_bits_paddr = io_release_bits_paddr; // @[LoadQueue.scala 141:28]
  assign loadQueueRAR_io_ldWbPtr_flag = virtualLoadQueue_io_ldWbPtr_flag; // @[LoadQueue.scala 142:28]
  assign loadQueueRAR_io_ldWbPtr_value = virtualLoadQueue_io_ldWbPtr_value; // @[LoadQueue.scala 142:28]
  assign loadQueueRAW_clock = clock;
  assign loadQueueRAW_reset = reset;
  assign loadQueueRAW_io_redirect_valid = io_redirect_valid; // @[LoadQueue.scala 152:36]
  assign loadQueueRAW_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 152:36]
  assign loadQueueRAW_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[LoadQueue.scala 152:36]
  assign loadQueueRAW_io_redirect_bits_level = io_redirect_bits_level; // @[LoadQueue.scala 152:36]
  assign loadQueueRAW_io_query_0_req_valid = io_ldu_stld_nuke_query_0_req_valid; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_cf_ftqPtr_flag = io_ldu_stld_nuke_query_0_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_cf_ftqPtr_value = io_ldu_stld_nuke_query_0_req_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_cf_ftqOffset = io_ldu_stld_nuke_query_0_req_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_robIdx_flag = io_ldu_stld_nuke_query_0_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_robIdx_value = io_ldu_stld_nuke_query_0_req_bits_uop_robIdx_value; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_sqIdx_flag = io_ldu_stld_nuke_query_0_req_bits_uop_sqIdx_flag; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_uop_sqIdx_value = io_ldu_stld_nuke_query_0_req_bits_uop_sqIdx_value; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_mask = io_ldu_stld_nuke_query_0_req_bits_mask; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_paddr = io_ldu_stld_nuke_query_0_req_bits_paddr; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_req_bits_data_valid = io_ldu_stld_nuke_query_0_req_bits_data_valid; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_0_revoke = io_ldu_stld_nuke_query_0_revoke; // @[LoadQueue.scala 159:37]
  assign loadQueueRAW_io_query_1_req_valid = io_ldu_stld_nuke_query_1_req_valid; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_cf_ftqPtr_flag = io_ldu_stld_nuke_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_cf_ftqPtr_value = io_ldu_stld_nuke_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_cf_ftqOffset = io_ldu_stld_nuke_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_robIdx_flag = io_ldu_stld_nuke_query_1_req_bits_uop_robIdx_flag; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_robIdx_value = io_ldu_stld_nuke_query_1_req_bits_uop_robIdx_value; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_sqIdx_flag = io_ldu_stld_nuke_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_uop_sqIdx_value = io_ldu_stld_nuke_query_1_req_bits_uop_sqIdx_value; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_mask = io_ldu_stld_nuke_query_1_req_bits_mask; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_paddr = io_ldu_stld_nuke_query_1_req_bits_paddr; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_req_bits_data_valid = io_ldu_stld_nuke_query_1_req_bits_data_valid; // @[LoadQueue.scala 157:37]
  assign loadQueueRAW_io_query_1_revoke = io_ldu_stld_nuke_query_1_revoke; // @[LoadQueue.scala 159:37]
  assign loadQueueRAW_io_storeIn_0_valid = io_sta_storeAddrIn_0_valid; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_uop_cf_ftqPtr_value = io_sta_storeAddrIn_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_uop_cf_ftqOffset = io_sta_storeAddrIn_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_uop_robIdx_flag = io_sta_storeAddrIn_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_uop_robIdx_value = io_sta_storeAddrIn_0_bits_uop_robIdx_value; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_paddr = io_sta_storeAddrIn_0_bits_paddr; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_mask = io_sta_storeAddrIn_0_bits_mask; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_0_bits_miss = io_sta_storeAddrIn_0_bits_miss; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_valid = io_sta_storeAddrIn_1_valid; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_uop_cf_ftqPtr_value = io_sta_storeAddrIn_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_uop_cf_ftqOffset = io_sta_storeAddrIn_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_uop_robIdx_flag = io_sta_storeAddrIn_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_uop_robIdx_value = io_sta_storeAddrIn_1_bits_uop_robIdx_value; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_paddr = io_sta_storeAddrIn_1_bits_paddr; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_mask = io_sta_storeAddrIn_1_bits_mask; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_storeIn_1_bits_miss = io_sta_storeAddrIn_1_bits_miss; // @[LoadQueue.scala 153:36]
  assign loadQueueRAW_io_stAddrReadySqPtr_flag = io_sq_stAddrReadySqPtr_flag; // @[LoadQueue.scala 154:36]
  assign loadQueueRAW_io_stAddrReadySqPtr_value = io_sq_stAddrReadySqPtr_value; // @[LoadQueue.scala 154:36]
  assign loadQueueRAW_io_stIssuePtr_flag = io_sq_stIssuePtr_flag; // @[LoadQueue.scala 155:36]
  assign loadQueueRAW_io_stIssuePtr_value = io_sq_stIssuePtr_value; // @[LoadQueue.scala 155:36]
  assign loadQueueReplay_clock = clock;
  assign loadQueueReplay_reset = reset;
  assign loadQueueReplay_io_redirect_valid = io_redirect_valid; // @[LoadQueue.scala 229:39]
  assign loadQueueReplay_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 229:39]
  assign loadQueueReplay_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[LoadQueue.scala 229:39]
  assign loadQueueReplay_io_redirect_bits_level = io_redirect_bits_level; // @[LoadQueue.scala 229:39]
  assign loadQueueReplay_io_enq_0_valid = io_ldu_ldin_0_valid; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendEn_1 = io_ldu_ldin_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_0 = io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_1 = io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_trigger_backendHit_4 = io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_storeSetHit = io_ldu_ldin_0_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_loadWaitStrict = io_ldu_ldin_0_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_ssid = io_ldu_ldin_0_bits_uop_cf_ssid; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_ftqPtr_flag = io_ldu_ldin_0_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_ftqPtr_value = io_ldu_ldin_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_cf_ftqOffset = io_ldu_ldin_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_ctrl_fuOpType = io_ldu_ldin_0_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_ctrl_rfWen = io_ldu_ldin_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_ctrl_fpWen = io_ldu_ldin_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_pdest = io_ldu_ldin_0_bits_uop_pdest; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_robIdx_flag = io_ldu_ldin_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_robIdx_value = io_ldu_ldin_0_bits_uop_robIdx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_lqIdx_flag = io_ldu_ldin_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_lqIdx_value = io_ldu_ldin_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_sqIdx_flag = io_ldu_ldin_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_uop_sqIdx_value = io_ldu_ldin_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_vaddr = io_ldu_ldin_0_bits_vaddr; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_tlbMiss = io_ldu_ldin_0_bits_tlbMiss; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_isLoadReplay = io_ldu_ldin_0_bits_isLoadReplay; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_handledByMSHR = io_ldu_ldin_0_bits_handledByMSHR; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_schedIndex = io_ldu_ldin_0_bits_schedIndex; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_mshr_id = io_ldu_ldin_0_bits_rep_info_mshr_id; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_full_fwd = io_ldu_ldin_0_bits_rep_info_full_fwd; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_data_inv_sq_idx_flag = io_ldu_ldin_0_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_data_inv_sq_idx_value =
    io_ldu_ldin_0_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_addr_inv_sq_idx_flag = io_ldu_ldin_0_bits_rep_info_addr_inv_sq_idx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_addr_inv_sq_idx_value =
    io_ldu_ldin_0_bits_rep_info_addr_inv_sq_idx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_last_beat = io_ldu_ldin_0_bits_rep_info_last_beat; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_0 = io_ldu_ldin_0_bits_rep_info_cause_0; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_1 = io_ldu_ldin_0_bits_rep_info_cause_1; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_2 = io_ldu_ldin_0_bits_rep_info_cause_2; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_3 = io_ldu_ldin_0_bits_rep_info_cause_3; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_4 = io_ldu_ldin_0_bits_rep_info_cause_4; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_5 = io_ldu_ldin_0_bits_rep_info_cause_5; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_6 = io_ldu_ldin_0_bits_rep_info_cause_6; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_7 = io_ldu_ldin_0_bits_rep_info_cause_7; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_8 = io_ldu_ldin_0_bits_rep_info_cause_8; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_0_bits_rep_info_cause_9 = io_ldu_ldin_0_bits_rep_info_cause_9; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_valid = io_ldu_ldin_1_valid; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendEn_1 = io_ldu_ldin_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_0 = io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_1 = io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_trigger_backendHit_4 = io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_storeSetHit = io_ldu_ldin_1_bits_uop_cf_storeSetHit; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_loadWaitStrict = io_ldu_ldin_1_bits_uop_cf_loadWaitStrict; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_ssid = io_ldu_ldin_1_bits_uop_cf_ssid; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_ftqPtr_flag = io_ldu_ldin_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_ftqPtr_value = io_ldu_ldin_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_cf_ftqOffset = io_ldu_ldin_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_ctrl_fuOpType = io_ldu_ldin_1_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_ctrl_rfWen = io_ldu_ldin_1_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_ctrl_fpWen = io_ldu_ldin_1_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_pdest = io_ldu_ldin_1_bits_uop_pdest; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_robIdx_flag = io_ldu_ldin_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_robIdx_value = io_ldu_ldin_1_bits_uop_robIdx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_lqIdx_flag = io_ldu_ldin_1_bits_uop_lqIdx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_lqIdx_value = io_ldu_ldin_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_sqIdx_flag = io_ldu_ldin_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_uop_sqIdx_value = io_ldu_ldin_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_vaddr = io_ldu_ldin_1_bits_vaddr; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_tlbMiss = io_ldu_ldin_1_bits_tlbMiss; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_isLoadReplay = io_ldu_ldin_1_bits_isLoadReplay; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_handledByMSHR = io_ldu_ldin_1_bits_handledByMSHR; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_schedIndex = io_ldu_ldin_1_bits_schedIndex; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_mshr_id = io_ldu_ldin_1_bits_rep_info_mshr_id; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_full_fwd = io_ldu_ldin_1_bits_rep_info_full_fwd; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_data_inv_sq_idx_flag = io_ldu_ldin_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_data_inv_sq_idx_value =
    io_ldu_ldin_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_addr_inv_sq_idx_flag = io_ldu_ldin_1_bits_rep_info_addr_inv_sq_idx_flag; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_addr_inv_sq_idx_value =
    io_ldu_ldin_1_bits_rep_info_addr_inv_sq_idx_value; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_last_beat = io_ldu_ldin_1_bits_rep_info_last_beat; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_0 = io_ldu_ldin_1_bits_rep_info_cause_0; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_1 = io_ldu_ldin_1_bits_rep_info_cause_1; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_2 = io_ldu_ldin_1_bits_rep_info_cause_2; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_3 = io_ldu_ldin_1_bits_rep_info_cause_3; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_4 = io_ldu_ldin_1_bits_rep_info_cause_4; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_5 = io_ldu_ldin_1_bits_rep_info_cause_5; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_6 = io_ldu_ldin_1_bits_rep_info_cause_6; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_7 = io_ldu_ldin_1_bits_rep_info_cause_7; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_8 = io_ldu_ldin_1_bits_rep_info_cause_8; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_enq_1_bits_rep_info_cause_9 = io_ldu_ldin_1_bits_rep_info_cause_9; // @[LoadQueue.scala 230:39]
  assign loadQueueReplay_io_storeAddrIn_0_valid = io_sta_storeAddrIn_0_valid; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_0_bits_uop_sqIdx_flag = io_sta_storeAddrIn_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_0_bits_uop_sqIdx_value = io_sta_storeAddrIn_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_0_bits_miss = io_sta_storeAddrIn_0_bits_miss; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_1_valid = io_sta_storeAddrIn_1_valid; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_1_bits_uop_sqIdx_flag = io_sta_storeAddrIn_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_1_bits_uop_sqIdx_value = io_sta_storeAddrIn_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeAddrIn_1_bits_miss = io_sta_storeAddrIn_1_bits_miss; // @[LoadQueue.scala 231:39]
  assign loadQueueReplay_io_storeDataIn_0_valid = io_std_storeDataIn_0_valid; // @[LoadQueue.scala 232:39]
  assign loadQueueReplay_io_storeDataIn_0_bits_uop_sqIdx_flag = io_std_storeDataIn_0_bits_uop_sqIdx_flag; // @[LoadQueue.scala 232:39]
  assign loadQueueReplay_io_storeDataIn_0_bits_uop_sqIdx_value = io_std_storeDataIn_0_bits_uop_sqIdx_value; // @[LoadQueue.scala 232:39]
  assign loadQueueReplay_io_storeDataIn_1_valid = io_std_storeDataIn_1_valid; // @[LoadQueue.scala 232:39]
  assign loadQueueReplay_io_storeDataIn_1_bits_uop_sqIdx_flag = io_std_storeDataIn_1_bits_uop_sqIdx_flag; // @[LoadQueue.scala 232:39]
  assign loadQueueReplay_io_storeDataIn_1_bits_uop_sqIdx_value = io_std_storeDataIn_1_bits_uop_sqIdx_value; // @[LoadQueue.scala 232:39]
  assign loadQueueReplay_io_replay_0_ready = io_replay_0_ready; // @[LoadQueue.scala 233:39]
  assign loadQueueReplay_io_replay_1_ready = io_replay_1_ready; // @[LoadQueue.scala 233:39]
  assign loadQueueReplay_io_tl_d_channel_valid = io_tl_d_channel_valid; // @[LoadQueue.scala 235:39]
  assign loadQueueReplay_io_tl_d_channel_mshrid = io_tl_d_channel_mshrid; // @[LoadQueue.scala 235:39]
  assign loadQueueReplay_io_stAddrReadySqPtr_flag = io_sq_stAddrReadySqPtr_flag; // @[LoadQueue.scala 236:39]
  assign loadQueueReplay_io_stAddrReadySqPtr_value = io_sq_stAddrReadySqPtr_value; // @[LoadQueue.scala 236:39]
  assign loadQueueReplay_io_stAddrReadyVec_0 = io_sq_stAddrReadyVec_0; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_1 = io_sq_stAddrReadyVec_1; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_2 = io_sq_stAddrReadyVec_2; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_3 = io_sq_stAddrReadyVec_3; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_4 = io_sq_stAddrReadyVec_4; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_5 = io_sq_stAddrReadyVec_5; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_6 = io_sq_stAddrReadyVec_6; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_7 = io_sq_stAddrReadyVec_7; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_8 = io_sq_stAddrReadyVec_8; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_9 = io_sq_stAddrReadyVec_9; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_10 = io_sq_stAddrReadyVec_10; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stAddrReadyVec_11 = io_sq_stAddrReadyVec_11; // @[LoadQueue.scala 237:39]
  assign loadQueueReplay_io_stDataReadySqPtr_flag = io_sq_stDataReadySqPtr_flag; // @[LoadQueue.scala 238:39]
  assign loadQueueReplay_io_stDataReadySqPtr_value = io_sq_stDataReadySqPtr_value; // @[LoadQueue.scala 238:39]
  assign loadQueueReplay_io_stDataReadyVec_0 = io_sq_stDataReadyVec_0; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_1 = io_sq_stDataReadyVec_1; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_2 = io_sq_stDataReadyVec_2; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_3 = io_sq_stDataReadyVec_3; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_4 = io_sq_stDataReadyVec_4; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_5 = io_sq_stDataReadyVec_5; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_6 = io_sq_stDataReadyVec_6; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_7 = io_sq_stDataReadyVec_7; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_8 = io_sq_stDataReadyVec_8; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_9 = io_sq_stDataReadyVec_9; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_10 = io_sq_stDataReadyVec_10; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_stDataReadyVec_11 = io_sq_stDataReadyVec_11; // @[LoadQueue.scala 239:39]
  assign loadQueueReplay_io_sqEmpty = io_sq_sqEmpty; // @[LoadQueue.scala 240:39]
  assign loadQueueReplay_io_ldWbPtr_flag = virtualLoadQueue_io_ldWbPtr_flag; // @[LoadQueue.scala 242:39]
  assign loadQueueReplay_io_ldWbPtr_value = virtualLoadQueue_io_ldWbPtr_value; // @[LoadQueue.scala 242:39]
  assign loadQueueReplay_io_rarFull = loadQueueRAR_io_lqFull; // @[LoadQueue.scala 243:39]
  assign loadQueueReplay_io_rawFull = loadQueueRAW_io_lqFull; // @[LoadQueue.scala 244:39]
  assign loadQueueReplay_io_l2_hint_valid = io_l2_hint_valid; // @[LoadQueue.scala 245:39]
  assign loadQueueReplay_io_l2_hint_bits_sourceId = io_l2_hint_bits_sourceId; // @[LoadQueue.scala 245:39]
  assign loadQueueReplay_io_tlbReplayDelayCycleCtrl_0 = io_tlbReplayDelayCycleCtrl_0; // @[LoadQueue.scala 246:46]
  assign loadQueueReplay_io_tlbReplayDelayCycleCtrl_1 = io_tlbReplayDelayCycleCtrl_1; // @[LoadQueue.scala 246:46]
  assign loadQueueReplay_io_tlbReplayDelayCycleCtrl_2 = io_tlbReplayDelayCycleCtrl_2; // @[LoadQueue.scala 246:46]
  assign loadQueueReplay_io_tlbReplayDelayCycleCtrl_3 = io_tlbReplayDelayCycleCtrl_3; // @[LoadQueue.scala 246:46]
  assign loadQueueReplay_miss_in_dtlb_0 = io_rob_head_miss_in_tlb;
  assign loadQueueReplay_rob_head_vaddr_0_valid = sourceVaddr_valid;
  assign loadQueueReplay_rob_head_vaddr_0_bits = sourceVaddr_bits;
  assign virtualLoadQueue_clock = clock;
  assign virtualLoadQueue_reset = reset;
  assign virtualLoadQueue_io_redirect_valid = io_redirect_valid; // @[LoadQueue.scala 165:35]
  assign virtualLoadQueue_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 165:35]
  assign virtualLoadQueue_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[LoadQueue.scala 165:35]
  assign virtualLoadQueue_io_redirect_bits_level = io_redirect_bits_level; // @[LoadQueue.scala 165:35]
  assign virtualLoadQueue_io_enq_sqCanAccept = io_enq_sqCanAccept; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_needAlloc_0 = io_enq_needAlloc_0; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_needAlloc_1 = io_enq_needAlloc_1; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_needAlloc_2 = io_enq_needAlloc_2; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_0_valid = io_enq_req_0_valid; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_0_bits_robIdx_flag = io_enq_req_0_bits_robIdx_flag; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_0_bits_robIdx_value = io_enq_req_0_bits_robIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_0_bits_lqIdx_value = io_enq_req_0_bits_lqIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_1_valid = io_enq_req_1_valid; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_1_bits_robIdx_flag = io_enq_req_1_bits_robIdx_flag; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_1_bits_robIdx_value = io_enq_req_1_bits_robIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_1_bits_lqIdx_value = io_enq_req_1_bits_lqIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_2_valid = io_enq_req_2_valid; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_2_bits_robIdx_flag = io_enq_req_2_bits_robIdx_flag; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_2_bits_robIdx_value = io_enq_req_2_bits_robIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_2_bits_lqIdx_value = io_enq_req_2_bits_lqIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_3_valid = io_enq_req_3_valid; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_3_bits_robIdx_flag = io_enq_req_3_bits_robIdx_flag; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_3_bits_robIdx_value = io_enq_req_3_bits_robIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_enq_req_3_bits_lqIdx_value = io_enq_req_3_bits_lqIdx_value; // @[LoadQueue.scala 166:35]
  assign virtualLoadQueue_io_ldin_0_valid = io_ldu_ldin_0_valid; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_uop_lqIdx_value = io_ldu_ldin_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_miss = io_ldu_ldin_0_bits_miss; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_tlbMiss = io_ldu_ldin_0_bits_tlbMiss; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_mmio = io_ldu_ldin_0_bits_mmio; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_dcacheRequireReplay = io_ldu_ldin_0_bits_dcacheRequireReplay; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_0 = io_ldu_ldin_0_bits_rep_info_cause_0; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_1 = io_ldu_ldin_0_bits_rep_info_cause_1; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_2 = io_ldu_ldin_0_bits_rep_info_cause_2; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_3 = io_ldu_ldin_0_bits_rep_info_cause_3; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_4 = io_ldu_ldin_0_bits_rep_info_cause_4; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_5 = io_ldu_ldin_0_bits_rep_info_cause_5; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_6 = io_ldu_ldin_0_bits_rep_info_cause_6; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_7 = io_ldu_ldin_0_bits_rep_info_cause_7; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_8 = io_ldu_ldin_0_bits_rep_info_cause_8; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_0_bits_rep_info_cause_9 = io_ldu_ldin_0_bits_rep_info_cause_9; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_valid = io_ldu_ldin_1_valid; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_uop_lqIdx_value = io_ldu_ldin_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_miss = io_ldu_ldin_1_bits_miss; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_tlbMiss = io_ldu_ldin_1_bits_tlbMiss; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_mmio = io_ldu_ldin_1_bits_mmio; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_dcacheRequireReplay = io_ldu_ldin_1_bits_dcacheRequireReplay; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_0 = io_ldu_ldin_1_bits_rep_info_cause_0; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_1 = io_ldu_ldin_1_bits_rep_info_cause_1; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_2 = io_ldu_ldin_1_bits_rep_info_cause_2; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_3 = io_ldu_ldin_1_bits_rep_info_cause_3; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_4 = io_ldu_ldin_1_bits_rep_info_cause_4; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_5 = io_ldu_ldin_1_bits_rep_info_cause_5; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_6 = io_ldu_ldin_1_bits_rep_info_cause_6; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_7 = io_ldu_ldin_1_bits_rep_info_cause_7; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_8 = io_ldu_ldin_1_bits_rep_info_cause_8; // @[LoadQueue.scala 167:35]
  assign virtualLoadQueue_io_ldin_1_bits_rep_info_cause_9 = io_ldu_ldin_1_bits_rep_info_cause_9; // @[LoadQueue.scala 167:35]
  assign exceptionBuffer_clock = clock;
  assign exceptionBuffer_reset = reset;
  assign exceptionBuffer_io_redirect_valid = io_redirect_valid; // @[LoadQueue.scala 176:31]
  assign exceptionBuffer_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 176:31]
  assign exceptionBuffer_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[LoadQueue.scala 176:31]
  assign exceptionBuffer_io_redirect_bits_level = io_redirect_bits_level; // @[LoadQueue.scala 176:31]
  assign exceptionBuffer_io_req_0_valid = io_ldu_ldin_0_valid; // @[LoadQueue.scala 178:16]
  assign exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_0_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_0_bits_uop_robIdx_flag = io_ldu_ldin_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_0_bits_uop_robIdx_value = io_ldu_ldin_0_bits_uop_robIdx_value; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_0_bits_vaddr = io_ldu_ldin_0_bits_vaddr; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_1_valid = io_ldu_ldin_1_valid; // @[LoadQueue.scala 178:16]
  assign exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_1_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_1_bits_uop_robIdx_flag = io_ldu_ldin_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_1_bits_uop_robIdx_value = io_ldu_ldin_1_bits_uop_robIdx_value; // @[LoadQueue.scala 179:15]
  assign exceptionBuffer_io_req_1_bits_vaddr = io_ldu_ldin_1_bits_vaddr; // @[LoadQueue.scala 179:15]
  assign uncacheBuffer_clock = clock;
  assign uncacheBuffer_reset = reset;
  assign uncacheBuffer_io_redirect_valid = io_redirect_valid; // @[LoadQueue.scala 186:31]
  assign uncacheBuffer_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[LoadQueue.scala 186:31]
  assign uncacheBuffer_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[LoadQueue.scala 186:31]
  assign uncacheBuffer_io_redirect_bits_level = io_redirect_bits_level; // @[LoadQueue.scala 186:31]
  assign uncacheBuffer_io_req_0_valid = io_ldu_ldin_0_valid; // @[LoadQueue.scala 193:16]
  assign uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_0_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendEn_1 = io_ldu_ldin_0_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_0 = io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_1 = io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_trigger_backendHit_4 = io_ldu_ldin_0_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_ftqPtr_flag = io_ldu_ldin_0_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_ftqPtr_value = io_ldu_ldin_0_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_cf_ftqOffset = io_ldu_ldin_0_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_ctrl_fuOpType = io_ldu_ldin_0_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_ctrl_rfWen = io_ldu_ldin_0_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_ctrl_fpWen = io_ldu_ldin_0_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_ctrl_replayInst = io_ldu_ldin_0_bits_uop_ctrl_replayInst; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_pdest = io_ldu_ldin_0_bits_uop_pdest; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_robIdx_flag = io_ldu_ldin_0_bits_uop_robIdx_flag; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_robIdx_value = io_ldu_ldin_0_bits_uop_robIdx_value; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_lqIdx_flag = io_ldu_ldin_0_bits_uop_lqIdx_flag; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_uop_lqIdx_value = io_ldu_ldin_0_bits_uop_lqIdx_value; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_paddr = io_ldu_ldin_0_bits_paddr; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_mask = io_ldu_ldin_0_bits_mask; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_mmio = io_ldu_ldin_0_bits_mmio; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_0 = io_ldu_ldin_0_bits_rep_info_cause_0; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_1 = io_ldu_ldin_0_bits_rep_info_cause_1; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_2 = io_ldu_ldin_0_bits_rep_info_cause_2; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_3 = io_ldu_ldin_0_bits_rep_info_cause_3; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_4 = io_ldu_ldin_0_bits_rep_info_cause_4; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_5 = io_ldu_ldin_0_bits_rep_info_cause_5; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_6 = io_ldu_ldin_0_bits_rep_info_cause_6; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_7 = io_ldu_ldin_0_bits_rep_info_cause_7; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_8 = io_ldu_ldin_0_bits_rep_info_cause_8; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_rep_info_cause_9 = io_ldu_ldin_0_bits_rep_info_cause_9; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_0_bits_data_wen_dup_5 = io_ldu_ldin_0_bits_data_wen_dup_5; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_valid = io_ldu_ldin_1_valid; // @[LoadQueue.scala 193:16]
  assign uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_4 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_4; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_5 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_5; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_exceptionVec_13 = io_ldu_ldin_1_bits_uop_cf_exceptionVec_13; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendEn_1 = io_ldu_ldin_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_0 = io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_1 = io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_trigger_backendHit_4 = io_ldu_ldin_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_ftqPtr_flag = io_ldu_ldin_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_ftqPtr_value = io_ldu_ldin_1_bits_uop_cf_ftqPtr_value; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_cf_ftqOffset = io_ldu_ldin_1_bits_uop_cf_ftqOffset; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_ctrl_fuOpType = io_ldu_ldin_1_bits_uop_ctrl_fuOpType; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_ctrl_rfWen = io_ldu_ldin_1_bits_uop_ctrl_rfWen; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_ctrl_fpWen = io_ldu_ldin_1_bits_uop_ctrl_fpWen; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_ctrl_replayInst = io_ldu_ldin_1_bits_uop_ctrl_replayInst; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_pdest = io_ldu_ldin_1_bits_uop_pdest; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_robIdx_flag = io_ldu_ldin_1_bits_uop_robIdx_flag; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_robIdx_value = io_ldu_ldin_1_bits_uop_robIdx_value; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_lqIdx_flag = io_ldu_ldin_1_bits_uop_lqIdx_flag; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_uop_lqIdx_value = io_ldu_ldin_1_bits_uop_lqIdx_value; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_paddr = io_ldu_ldin_1_bits_paddr; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_mask = io_ldu_ldin_1_bits_mask; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_mmio = io_ldu_ldin_1_bits_mmio; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_0 = io_ldu_ldin_1_bits_rep_info_cause_0; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_1 = io_ldu_ldin_1_bits_rep_info_cause_1; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_2 = io_ldu_ldin_1_bits_rep_info_cause_2; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_3 = io_ldu_ldin_1_bits_rep_info_cause_3; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_4 = io_ldu_ldin_1_bits_rep_info_cause_4; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_5 = io_ldu_ldin_1_bits_rep_info_cause_5; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_6 = io_ldu_ldin_1_bits_rep_info_cause_6; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_7 = io_ldu_ldin_1_bits_rep_info_cause_7; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_8 = io_ldu_ldin_1_bits_rep_info_cause_8; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_rep_info_cause_9 = io_ldu_ldin_1_bits_rep_info_cause_9; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_req_1_bits_data_wen_dup_5 = io_ldu_ldin_1_bits_data_wen_dup_5; // @[LoadQueue.scala 194:15]
  assign uncacheBuffer_io_ldout_0_ready = io_ldout_0_ready; // @[LoadQueue.scala 187:31]
  assign uncacheBuffer_io_rob_pendingld = io_rob_pendingld; // @[LoadQueue.scala 189:31]
  assign uncacheBuffer_io_rob_commit = io_rob_commit; // @[LoadQueue.scala 189:31]
  assign uncacheBuffer_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[LoadQueue.scala 189:31]
  assign uncacheBuffer_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[LoadQueue.scala 189:31]
  assign uncacheBuffer_io_uncache_req_ready = io_uncache_req_ready; // @[LoadQueue.scala 190:31]
  assign uncacheBuffer_io_uncache_resp_valid = io_uncache_resp_valid; // @[LoadQueue.scala 190:31]
  assign uncacheBuffer_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[LoadQueue.scala 190:31]
  assign uncacheBuffer_io_uncache_resp_bits_id = io_uncache_resp_bits_id; // @[LoadQueue.scala 190:31]
  assign uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_0 = io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[LoadQueue.scala 191:31]
  assign uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_1 = io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[LoadQueue.scala 191:31]
  assign uncacheBuffer_io_trigger_0_hitLoadAddrTriggerHitVec_2 = io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[LoadQueue.scala 191:31]
  assign uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_0 = io_trigger_1_hitLoadAddrTriggerHitVec_0; // @[LoadQueue.scala 191:31]
  assign uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_1 = io_trigger_1_hitLoadAddrTriggerHitVec_1; // @[LoadQueue.scala 191:31]
  assign uncacheBuffer_io_trigger_1_hitLoadAddrTriggerHitVec_2 = io_trigger_1_hitLoadAddrTriggerHitVec_2; // @[LoadQueue.scala 191:31]
  always @(posedge clock) begin
    io_perf_0_value_REG <= loadQueueRAR_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= loadQueueRAR_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= loadQueueRAW_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= loadQueueRAW_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= loadQueueReplay_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= loadQueueReplay_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= loadQueueReplay_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= loadQueueReplay_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= loadQueueReplay_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= loadQueueReplay_io_perf_5_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= loadQueueReplay_io_perf_6_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= loadQueueReplay_io_perf_7_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= loadQueueReplay_io_perf_8_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_13_value_REG <= loadQueueReplay_io_perf_9_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_14_value_REG <= loadQueueReplay_io_perf_10_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_15_value_REG <= loadQueueReplay_io_perf_11_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_16_value_REG <= loadQueueReplay_io_perf_12_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_17_value_REG <= full_mask == 3'h0; // @[LoadQueue.scala 262:33]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_18_value_REG <= full_mask == 3'h1; // @[LoadQueue.scala 263:33]
    io_perf_18_value_REG_1 <= io_perf_18_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_19_value_REG <= full_mask == 3'h2; // @[LoadQueue.scala 264:33]
    io_perf_19_value_REG_1 <= io_perf_19_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_20_value_REG <= full_mask == 3'h3; // @[LoadQueue.scala 265:33]
    io_perf_20_value_REG_1 <= io_perf_20_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_21_value_REG <= full_mask == 3'h4; // @[LoadQueue.scala 266:33]
    io_perf_21_value_REG_1 <= io_perf_21_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_22_value_REG <= full_mask == 3'h5; // @[LoadQueue.scala 267:33]
    io_perf_22_value_REG_1 <= io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_23_value_REG <= full_mask == 3'h6; // @[LoadQueue.scala 268:33]
    io_perf_23_value_REG_1 <= io_perf_23_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_24_value_REG <= full_mask == 3'h7; // @[LoadQueue.scala 269:33]
    io_perf_24_value_REG_1 <= io_perf_24_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_25_value_REG <= io_rollback_valid; // @[PerfCounterUtils.scala 295:35]
    io_perf_25_value_REG_1 <= io_perf_25_value_REG; // @[PerfCounterUtils.scala 295:27]
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
  io_perf_12_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_18_value_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_18_value_REG_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_perf_19_value_REG = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_perf_19_value_REG_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  io_perf_20_value_REG = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_perf_20_value_REG_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_perf_21_value_REG = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  io_perf_21_value_REG_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_perf_22_value_REG = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  io_perf_22_value_REG_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  io_perf_23_value_REG = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_perf_23_value_REG_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_perf_24_value_REG = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_perf_24_value_REG_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  io_perf_25_value_REG = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_perf_25_value_REG_1 = _RAND_51[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

