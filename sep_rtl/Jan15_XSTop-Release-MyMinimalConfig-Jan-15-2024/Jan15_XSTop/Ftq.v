module Ftq(
  input          clock,
  input          reset,
  output         io_fromBpu_resp_ready,
  input          io_fromBpu_resp_valid,
  input  [38:0]  io_fromBpu_resp_bits_s1_pc_3,
  input          io_fromBpu_resp_bits_s1_full_pred_3_br_taken_mask_0,
  input          io_fromBpu_resp_bits_s1_full_pred_3_br_taken_mask_1,
  input          io_fromBpu_resp_bits_s1_full_pred_3_slot_valids_0,
  input          io_fromBpu_resp_bits_s1_full_pred_3_slot_valids_1,
  input  [38:0]  io_fromBpu_resp_bits_s1_full_pred_3_targets_0,
  input  [38:0]  io_fromBpu_resp_bits_s1_full_pred_3_targets_1,
  input  [2:0]   io_fromBpu_resp_bits_s1_full_pred_3_offsets_0,
  input  [2:0]   io_fromBpu_resp_bits_s1_full_pred_3_offsets_1,
  input  [38:0]  io_fromBpu_resp_bits_s1_full_pred_3_fallThroughAddr,
  input          io_fromBpu_resp_bits_s1_full_pred_3_fallThroughErr,
  input          io_fromBpu_resp_bits_s1_full_pred_3_is_br_sharing,
  input          io_fromBpu_resp_bits_s1_full_pred_3_hit,
  input  [38:0]  io_fromBpu_resp_bits_s2_pc_3,
  input          io_fromBpu_resp_bits_s2_valid_3,
  input          io_fromBpu_resp_bits_s2_hasRedirect_3,
  input          io_fromBpu_resp_bits_s2_ftq_idx_flag,
  input  [2:0]   io_fromBpu_resp_bits_s2_ftq_idx_value,
  input          io_fromBpu_resp_bits_s2_full_pred_3_br_taken_mask_0,
  input          io_fromBpu_resp_bits_s2_full_pred_3_br_taken_mask_1,
  input          io_fromBpu_resp_bits_s2_full_pred_3_slot_valids_0,
  input          io_fromBpu_resp_bits_s2_full_pred_3_slot_valids_1,
  input  [38:0]  io_fromBpu_resp_bits_s2_full_pred_3_targets_0,
  input  [38:0]  io_fromBpu_resp_bits_s2_full_pred_3_targets_1,
  input  [2:0]   io_fromBpu_resp_bits_s2_full_pred_3_offsets_0,
  input  [2:0]   io_fromBpu_resp_bits_s2_full_pred_3_offsets_1,
  input  [38:0]  io_fromBpu_resp_bits_s2_full_pred_3_fallThroughAddr,
  input          io_fromBpu_resp_bits_s2_full_pred_3_fallThroughErr,
  input          io_fromBpu_resp_bits_s2_full_pred_3_is_br_sharing,
  input          io_fromBpu_resp_bits_s2_full_pred_3_hit,
  input  [38:0]  io_fromBpu_resp_bits_s3_pc_3,
  input          io_fromBpu_resp_bits_s3_valid_3,
  input          io_fromBpu_resp_bits_s3_hasRedirect_3,
  input          io_fromBpu_resp_bits_s3_ftq_idx_flag,
  input  [2:0]   io_fromBpu_resp_bits_s3_ftq_idx_value,
  input          io_fromBpu_resp_bits_s3_full_pred_3_br_taken_mask_0,
  input          io_fromBpu_resp_bits_s3_full_pred_3_br_taken_mask_1,
  input          io_fromBpu_resp_bits_s3_full_pred_3_slot_valids_0,
  input          io_fromBpu_resp_bits_s3_full_pred_3_slot_valids_1,
  input  [38:0]  io_fromBpu_resp_bits_s3_full_pred_3_targets_0,
  input  [38:0]  io_fromBpu_resp_bits_s3_full_pred_3_targets_1,
  input  [2:0]   io_fromBpu_resp_bits_s3_full_pred_3_offsets_0,
  input  [2:0]   io_fromBpu_resp_bits_s3_full_pred_3_offsets_1,
  input  [38:0]  io_fromBpu_resp_bits_s3_full_pred_3_fallThroughAddr,
  input          io_fromBpu_resp_bits_s3_full_pred_3_fallThroughErr,
  input          io_fromBpu_resp_bits_s3_full_pred_3_is_br_sharing,
  input          io_fromBpu_resp_bits_s3_full_pred_3_hit,
  input  [255:0] io_fromBpu_resp_bits_last_stage_meta,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_17_folded_hist,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_16_folded_hist,
  input  [10:0]  io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_15_folded_hist,
  input  [6:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_14_folded_hist,
  input  [6:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_13_folded_hist,
  input  [6:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_12_folded_hist,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_11_folded_hist,
  input  [8:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_10_folded_hist,
  input  [6:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_9_folded_hist,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_8_folded_hist,
  input  [8:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_7_folded_hist,
  input  [8:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_6_folded_hist,
  input  [10:0]  io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_5_folded_hist,
  input  [3:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_4_folded_hist,
  input  [10:0]  io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_3_folded_hist,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_2_folded_hist,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_1_folded_hist,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_0_folded_hist,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_0,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_1,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_2,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_3,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_0,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_1,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_2,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_3,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_0,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_1,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_2,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_3,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_0,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_1,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_2,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_3,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_0,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_1,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_2,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_3,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_0,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_1,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_2,
  input          io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_3,
  input  [2:0]   io_fromBpu_resp_bits_last_stage_spec_info_lastBrNumOH,
  input          io_fromBpu_resp_bits_last_stage_spec_info_histPtr_flag,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_histPtr_value,
  input  [4:0]   io_fromBpu_resp_bits_last_stage_spec_info_rasSp,
  input  [38:0]  io_fromBpu_resp_bits_last_stage_spec_info_rasTop_retAddr,
  input  [7:0]   io_fromBpu_resp_bits_last_stage_spec_info_rasTop_ctr,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_valid,
  input  [2:0]   io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_offset,
  input  [11:0]  io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_lower,
  input  [1:0]   io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_tarStat,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_sharing,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_valid,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_sc,
  input  [2:0]   io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_offset,
  input  [19:0]  io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_lower,
  input  [1:0]   io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_tarStat,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_sharing,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_valid,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_sc,
  input  [2:0]   io_fromBpu_resp_bits_last_stage_ftb_entry_pftAddr,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_carry,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_isCall,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_isRet,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_isJalr,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_last_may_be_rvi_call,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_always_taken_0,
  input          io_fromBpu_resp_bits_last_stage_ftb_entry_always_taken_1,
  input          io_fromBpu_resp_bits_topdown_info_reasons_0,
  input          io_fromBpu_resp_bits_topdown_info_reasons_1,
  input          io_fromBpu_resp_bits_topdown_info_reasons_2,
  input          io_fromBpu_resp_bits_topdown_info_reasons_3,
  input          io_fromBpu_resp_bits_topdown_info_reasons_4,
  input          io_fromBpu_resp_bits_topdown_info_reasons_5,
  input          io_fromBpu_resp_bits_topdown_info_reasons_6,
  input          io_fromBpu_resp_bits_topdown_info_reasons_7,
  input          io_fromBpu_resp_bits_topdown_info_reasons_8,
  input          io_fromBpu_resp_bits_topdown_info_reasons_9,
  input          io_fromBpu_resp_bits_topdown_info_reasons_10,
  input          io_fromBpu_resp_bits_topdown_info_reasons_11,
  input          io_fromBpu_resp_bits_topdown_info_reasons_12,
  input          io_fromBpu_resp_bits_topdown_info_reasons_13,
  input          io_fromBpu_resp_bits_topdown_info_reasons_14,
  input          io_fromBpu_resp_bits_topdown_info_reasons_15,
  input          io_fromBpu_resp_bits_topdown_info_reasons_16,
  input          io_fromBpu_resp_bits_topdown_info_reasons_17,
  input          io_fromBpu_resp_bits_topdown_info_reasons_18,
  input          io_fromBpu_resp_bits_topdown_info_reasons_19,
  input          io_fromBpu_resp_bits_topdown_info_reasons_20,
  input          io_fromBpu_resp_bits_topdown_info_reasons_21,
  input          io_fromBpu_resp_bits_topdown_info_reasons_22,
  input          io_fromBpu_resp_bits_topdown_info_reasons_23,
  input          io_fromBpu_resp_bits_topdown_info_reasons_24,
  input          io_fromBpu_resp_bits_topdown_info_reasons_25,
  input          io_fromBpu_resp_bits_topdown_info_reasons_26,
  input          io_fromBpu_resp_bits_topdown_info_reasons_27,
  input          io_fromBpu_resp_bits_topdown_info_reasons_28,
  input          io_fromBpu_resp_bits_topdown_info_reasons_29,
  input          io_fromBpu_resp_bits_topdown_info_reasons_30,
  input          io_fromBpu_resp_bits_topdown_info_reasons_31,
  input          io_fromBpu_resp_bits_topdown_info_reasons_32,
  input          io_fromBpu_resp_bits_topdown_info_reasons_33,
  input          io_fromBpu_resp_bits_topdown_info_reasons_34,
  input          io_fromBpu_resp_bits_topdown_info_reasons_35,
  input          io_fromBpu_resp_bits_topdown_info_reasons_36,
  input  [2:0]   io_fromBpu_resp_bits_topdown_info_stallWidth,
  input          io_fromIfu_pdWb_valid,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_0,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_1,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_2,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_3,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_4,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_5,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_6,
  input  [38:0]  io_fromIfu_pdWb_bits_pc_7,
  input          io_fromIfu_pdWb_bits_pd_0_valid,
  input          io_fromIfu_pdWb_bits_pd_0_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_0_brType,
  input          io_fromIfu_pdWb_bits_pd_0_isCall,
  input          io_fromIfu_pdWb_bits_pd_0_isRet,
  input          io_fromIfu_pdWb_bits_pd_1_valid,
  input          io_fromIfu_pdWb_bits_pd_1_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_1_brType,
  input          io_fromIfu_pdWb_bits_pd_1_isCall,
  input          io_fromIfu_pdWb_bits_pd_1_isRet,
  input          io_fromIfu_pdWb_bits_pd_2_valid,
  input          io_fromIfu_pdWb_bits_pd_2_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_2_brType,
  input          io_fromIfu_pdWb_bits_pd_2_isCall,
  input          io_fromIfu_pdWb_bits_pd_2_isRet,
  input          io_fromIfu_pdWb_bits_pd_3_valid,
  input          io_fromIfu_pdWb_bits_pd_3_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_3_brType,
  input          io_fromIfu_pdWb_bits_pd_3_isCall,
  input          io_fromIfu_pdWb_bits_pd_3_isRet,
  input          io_fromIfu_pdWb_bits_pd_4_valid,
  input          io_fromIfu_pdWb_bits_pd_4_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_4_brType,
  input          io_fromIfu_pdWb_bits_pd_4_isCall,
  input          io_fromIfu_pdWb_bits_pd_4_isRet,
  input          io_fromIfu_pdWb_bits_pd_5_valid,
  input          io_fromIfu_pdWb_bits_pd_5_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_5_brType,
  input          io_fromIfu_pdWb_bits_pd_5_isCall,
  input          io_fromIfu_pdWb_bits_pd_5_isRet,
  input          io_fromIfu_pdWb_bits_pd_6_valid,
  input          io_fromIfu_pdWb_bits_pd_6_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_6_brType,
  input          io_fromIfu_pdWb_bits_pd_6_isCall,
  input          io_fromIfu_pdWb_bits_pd_6_isRet,
  input          io_fromIfu_pdWb_bits_pd_7_valid,
  input          io_fromIfu_pdWb_bits_pd_7_isRVC,
  input  [1:0]   io_fromIfu_pdWb_bits_pd_7_brType,
  input          io_fromIfu_pdWb_bits_pd_7_isCall,
  input          io_fromIfu_pdWb_bits_pd_7_isRet,
  input          io_fromIfu_pdWb_bits_ftqIdx_flag,
  input  [2:0]   io_fromIfu_pdWb_bits_ftqIdx_value,
  input          io_fromIfu_pdWb_bits_misOffset_valid,
  input  [2:0]   io_fromIfu_pdWb_bits_misOffset_bits,
  input          io_fromIfu_pdWb_bits_cfiOffset_valid,
  input  [38:0]  io_fromIfu_pdWb_bits_target,
  input  [38:0]  io_fromIfu_pdWb_bits_jalTarget,
  input          io_fromIfu_pdWb_bits_instrRange_0,
  input          io_fromIfu_pdWb_bits_instrRange_1,
  input          io_fromIfu_pdWb_bits_instrRange_2,
  input          io_fromIfu_pdWb_bits_instrRange_3,
  input          io_fromIfu_pdWb_bits_instrRange_4,
  input          io_fromIfu_pdWb_bits_instrRange_5,
  input          io_fromIfu_pdWb_bits_instrRange_6,
  input          io_fromIfu_pdWb_bits_instrRange_7,
  input          io_fromBackend_rob_commits_0_valid,
  input  [2:0]   io_fromBackend_rob_commits_0_bits_commitType,
  input          io_fromBackend_rob_commits_0_bits_ftqIdx_flag,
  input  [2:0]   io_fromBackend_rob_commits_0_bits_ftqIdx_value,
  input  [2:0]   io_fromBackend_rob_commits_0_bits_ftqOffset,
  input          io_fromBackend_rob_commits_1_valid,
  input  [2:0]   io_fromBackend_rob_commits_1_bits_commitType,
  input          io_fromBackend_rob_commits_1_bits_ftqIdx_flag,
  input  [2:0]   io_fromBackend_rob_commits_1_bits_ftqIdx_value,
  input  [2:0]   io_fromBackend_rob_commits_1_bits_ftqOffset,
  input          io_fromBackend_redirect_valid,
  input          io_fromBackend_redirect_bits_ftqIdx_flag,
  input  [2:0]   io_fromBackend_redirect_bits_ftqIdx_value,
  input  [2:0]   io_fromBackend_redirect_bits_ftqOffset,
  input          io_fromBackend_redirect_bits_level,
  input  [38:0]  io_fromBackend_redirect_bits_cfiUpdate_pc,
  input          io_fromBackend_redirect_bits_cfiUpdate_pd_isRVC,
  input  [1:0]   io_fromBackend_redirect_bits_cfiUpdate_pd_brType,
  input          io_fromBackend_redirect_bits_cfiUpdate_pd_isCall,
  input          io_fromBackend_redirect_bits_cfiUpdate_pd_isRet,
  input  [38:0]  io_fromBackend_redirect_bits_cfiUpdate_target,
  input          io_fromBackend_redirect_bits_cfiUpdate_taken,
  input          io_fromBackend_redirect_bits_cfiUpdate_isMisPred,
  input          io_fromBackend_redirect_bits_debugIsCtrl,
  input          io_fromBackend_redirect_bits_debugIsMemVio,
  output         io_toBpu_redirect_valid,
  output         io_toBpu_redirect_bits_level,
  output [38:0]  io_toBpu_redirect_bits_cfiUpdate_pc,
  output         io_toBpu_redirect_bits_cfiUpdate_pd_isRVC,
  output         io_toBpu_redirect_bits_cfiUpdate_pd_isCall,
  output         io_toBpu_redirect_bits_cfiUpdate_pd_isRet,
  output [4:0]   io_toBpu_redirect_bits_cfiUpdate_rasSp,
  output [38:0]  io_toBpu_redirect_bits_cfiUpdate_rasEntry_retAddr,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_rasEntry_ctr,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_17_folded_hist,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_16_folded_hist,
  output [10:0]  io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_15_folded_hist,
  output [6:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_14_folded_hist,
  output [6:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_13_folded_hist,
  output [6:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_12_folded_hist,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_11_folded_hist,
  output [8:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_10_folded_hist,
  output [6:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_9_folded_hist,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_8_folded_hist,
  output [8:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_7_folded_hist,
  output [8:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_6_folded_hist,
  output [10:0]  io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_5_folded_hist,
  output [3:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_4_folded_hist,
  output [10:0]  io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_3_folded_hist,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_2_folded_hist,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_1_folded_hist,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_0_folded_hist,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_0,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_1,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_2,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_3,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_4_bits_0,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_4_bits_1,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_4_bits_2,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_0,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_1,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_2,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_3,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_0,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_1,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_2,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_3,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_0,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_1,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_2,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_3,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_0,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_1,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_2,
  output         io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_3,
  output [2:0]   io_toBpu_redirect_bits_cfiUpdate_lastBrNumOH,
  output         io_toBpu_redirect_bits_cfiUpdate_histPtr_flag,
  output [7:0]   io_toBpu_redirect_bits_cfiUpdate_histPtr_value,
  output         io_toBpu_redirect_bits_cfiUpdate_br_hit,
  output         io_toBpu_redirect_bits_cfiUpdate_jr_hit,
  output         io_toBpu_redirect_bits_cfiUpdate_sc_hit,
  output [38:0]  io_toBpu_redirect_bits_cfiUpdate_target,
  output         io_toBpu_redirect_bits_cfiUpdate_taken,
  output [1:0]   io_toBpu_redirect_bits_cfiUpdate_shift,
  output         io_toBpu_redirect_bits_cfiUpdate_addIntoHist,
  output         io_toBpu_redirect_bits_debugIsCtrl,
  output         io_toBpu_redirect_bits_debugIsMemVio,
  output         io_toBpu_redirect_bits_BTBMissBubble,
  output         io_toBpu_update_valid,
  output [38:0]  io_toBpu_update_bits_pc,
  output [7:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_17_folded_hist,
  output [7:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_16_folded_hist,
  output [10:0]  io_toBpu_update_bits_spec_info_folded_hist_hist_15_folded_hist,
  output [6:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_14_folded_hist,
  output [6:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_13_folded_hist,
  output [6:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_12_folded_hist,
  output [8:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_10_folded_hist,
  output [6:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_9_folded_hist,
  output [7:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_8_folded_hist,
  output [8:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_7_folded_hist,
  output [8:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_6_folded_hist,
  output [10:0]  io_toBpu_update_bits_spec_info_folded_hist_hist_5_folded_hist,
  output [3:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_4_folded_hist,
  output [10:0]  io_toBpu_update_bits_spec_info_folded_hist_hist_3_folded_hist,
  output [7:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_2_folded_hist,
  output [7:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_1_folded_hist,
  output [7:0]   io_toBpu_update_bits_spec_info_folded_hist_hist_0_folded_hist,
  output         io_toBpu_update_bits_ftb_entry_valid,
  output [2:0]   io_toBpu_update_bits_ftb_entry_brSlots_0_offset,
  output [11:0]  io_toBpu_update_bits_ftb_entry_brSlots_0_lower,
  output [1:0]   io_toBpu_update_bits_ftb_entry_brSlots_0_tarStat,
  output         io_toBpu_update_bits_ftb_entry_brSlots_0_sharing,
  output         io_toBpu_update_bits_ftb_entry_brSlots_0_valid,
  output         io_toBpu_update_bits_ftb_entry_brSlots_0_sc,
  output [2:0]   io_toBpu_update_bits_ftb_entry_tailSlot_offset,
  output [19:0]  io_toBpu_update_bits_ftb_entry_tailSlot_lower,
  output [1:0]   io_toBpu_update_bits_ftb_entry_tailSlot_tarStat,
  output         io_toBpu_update_bits_ftb_entry_tailSlot_sharing,
  output         io_toBpu_update_bits_ftb_entry_tailSlot_valid,
  output         io_toBpu_update_bits_ftb_entry_tailSlot_sc,
  output [2:0]   io_toBpu_update_bits_ftb_entry_pftAddr,
  output         io_toBpu_update_bits_ftb_entry_carry,
  output         io_toBpu_update_bits_ftb_entry_isCall,
  output         io_toBpu_update_bits_ftb_entry_isRet,
  output         io_toBpu_update_bits_ftb_entry_isJalr,
  output         io_toBpu_update_bits_ftb_entry_last_may_be_rvi_call,
  output         io_toBpu_update_bits_ftb_entry_always_taken_0,
  output         io_toBpu_update_bits_ftb_entry_always_taken_1,
  output         io_toBpu_update_bits_cfi_idx_valid,
  output [2:0]   io_toBpu_update_bits_cfi_idx_bits,
  output         io_toBpu_update_bits_br_taken_mask_0,
  output         io_toBpu_update_bits_br_taken_mask_1,
  output         io_toBpu_update_bits_br_committed_0,
  output         io_toBpu_update_bits_br_committed_1,
  output         io_toBpu_update_bits_jmp_taken,
  output         io_toBpu_update_bits_mispred_mask_0,
  output         io_toBpu_update_bits_mispred_mask_1,
  output         io_toBpu_update_bits_mispred_mask_2,
  output         io_toBpu_update_bits_false_hit,
  output         io_toBpu_update_bits_old_entry,
  output [255:0] io_toBpu_update_bits_meta,
  output [38:0]  io_toBpu_update_bits_full_target,
  output         io_toBpu_enq_ptr_flag,
  output [2:0]   io_toBpu_enq_ptr_value,
  input          io_toIfu_req_ready,
  output         io_toIfu_req_valid,
  output [38:0]  io_toIfu_req_bits_startAddr,
  output [38:0]  io_toIfu_req_bits_nextlineStart,
  output [38:0]  io_toIfu_req_bits_nextStartAddr,
  output         io_toIfu_req_bits_ftqIdx_flag,
  output [2:0]   io_toIfu_req_bits_ftqIdx_value,
  output         io_toIfu_req_bits_ftqOffset_valid,
  output [2:0]   io_toIfu_req_bits_ftqOffset_bits,
  output         io_toIfu_req_bits_topdown_info_reasons_0,
  output         io_toIfu_req_bits_topdown_info_reasons_1,
  output         io_toIfu_req_bits_topdown_info_reasons_2,
  output         io_toIfu_req_bits_topdown_info_reasons_3,
  output         io_toIfu_req_bits_topdown_info_reasons_4,
  output         io_toIfu_req_bits_topdown_info_reasons_5,
  output         io_toIfu_req_bits_topdown_info_reasons_6,
  output         io_toIfu_req_bits_topdown_info_reasons_7,
  output         io_toIfu_req_bits_topdown_info_reasons_8,
  output         io_toIfu_req_bits_topdown_info_reasons_9,
  output         io_toIfu_req_bits_topdown_info_reasons_10,
  output         io_toIfu_req_bits_topdown_info_reasons_11,
  output         io_toIfu_req_bits_topdown_info_reasons_12,
  output         io_toIfu_req_bits_topdown_info_reasons_13,
  output         io_toIfu_req_bits_topdown_info_reasons_14,
  output         io_toIfu_req_bits_topdown_info_reasons_15,
  output         io_toIfu_req_bits_topdown_info_reasons_16,
  output         io_toIfu_req_bits_topdown_info_reasons_17,
  output         io_toIfu_req_bits_topdown_info_reasons_18,
  output         io_toIfu_req_bits_topdown_info_reasons_19,
  output         io_toIfu_req_bits_topdown_info_reasons_20,
  output         io_toIfu_req_bits_topdown_info_reasons_21,
  output         io_toIfu_req_bits_topdown_info_reasons_22,
  output         io_toIfu_req_bits_topdown_info_reasons_23,
  output         io_toIfu_req_bits_topdown_info_reasons_24,
  output         io_toIfu_req_bits_topdown_info_reasons_25,
  output         io_toIfu_req_bits_topdown_info_reasons_26,
  output         io_toIfu_req_bits_topdown_info_reasons_27,
  output         io_toIfu_req_bits_topdown_info_reasons_28,
  output         io_toIfu_req_bits_topdown_info_reasons_29,
  output         io_toIfu_req_bits_topdown_info_reasons_30,
  output         io_toIfu_req_bits_topdown_info_reasons_31,
  output         io_toIfu_req_bits_topdown_info_reasons_32,
  output         io_toIfu_req_bits_topdown_info_reasons_33,
  output         io_toIfu_req_bits_topdown_info_reasons_34,
  output         io_toIfu_req_bits_topdown_info_reasons_35,
  output         io_toIfu_req_bits_topdown_info_reasons_36,
  output [2:0]   io_toIfu_req_bits_topdown_info_stallWidth,
  output         io_toIfu_redirect_valid,
  output         io_toIfu_redirect_bits_ftqIdx_flag,
  output [2:0]   io_toIfu_redirect_bits_ftqIdx_value,
  output [2:0]   io_toIfu_redirect_bits_ftqOffset,
  output         io_toIfu_redirect_bits_level,
  output         io_toIfu_topdown_redirect_valid,
  output         io_toIfu_topdown_redirect_bits_cfiUpdate_pd_isRet,
  output         io_toIfu_topdown_redirect_bits_cfiUpdate_br_hit,
  output         io_toIfu_topdown_redirect_bits_cfiUpdate_jr_hit,
  output         io_toIfu_topdown_redirect_bits_cfiUpdate_sc_hit,
  output         io_toIfu_topdown_redirect_bits_debugIsCtrl,
  output         io_toIfu_topdown_redirect_bits_debugIsMemVio,
  output         io_toIfu_flushFromBpu_s2_valid,
  output         io_toIfu_flushFromBpu_s2_bits_flag,
  output [2:0]   io_toIfu_flushFromBpu_s2_bits_value,
  output         io_toIfu_flushFromBpu_s3_valid,
  output         io_toIfu_flushFromBpu_s3_bits_flag,
  output [2:0]   io_toIfu_flushFromBpu_s3_bits_value,
  output         io_toICache_req_valid,
  output [38:0]  io_toICache_req_bits_pcMemRead_0_startAddr,
  output [38:0]  io_toICache_req_bits_pcMemRead_0_nextlineStart,
  output [38:0]  io_toICache_req_bits_pcMemRead_1_startAddr,
  output [38:0]  io_toICache_req_bits_pcMemRead_1_nextlineStart,
  output [38:0]  io_toICache_req_bits_pcMemRead_2_startAddr,
  output [38:0]  io_toICache_req_bits_pcMemRead_2_nextlineStart,
  output         io_toICache_req_bits_readValid_0,
  output         io_toICache_req_bits_readValid_1,
  output         io_toICache_req_bits_readValid_2,
  output         io_toBackend_pc_mem_wen,
  output [2:0]   io_toBackend_pc_mem_waddr,
  output [38:0]  io_toBackend_pc_mem_wdata_startAddr,
  output [38:0]  io_toBackend_pc_mem_wdata_nextLineAddr,
  output         io_toBackend_pc_mem_wdata_isNextMask_0,
  output         io_toBackend_pc_mem_wdata_isNextMask_1,
  output         io_toBackend_pc_mem_wdata_isNextMask_2,
  output         io_toBackend_pc_mem_wdata_isNextMask_3,
  output         io_toBackend_pc_mem_wdata_isNextMask_4,
  output         io_toBackend_pc_mem_wdata_isNextMask_5,
  output         io_toBackend_pc_mem_wdata_isNextMask_6,
  output         io_toBackend_pc_mem_wdata_isNextMask_7,
  output [38:0]  io_toBackend_newest_entry_target,
  output         io_toBackend_newest_entry_ptr_flag,
  output [2:0]   io_toBackend_newest_entry_ptr_value,
  output         io_toPrefetch_req_valid,
  output [38:0]  io_toPrefetch_req_bits_target,
  input          io_mmioCommitRead_mmioFtqPtr_flag,
  input  [2:0]   io_mmioCommitRead_mmioFtqPtr_value,
  output         io_mmioCommitRead_mmioLastCommit,
  output         io_ControlBTBMissBubble,
  output         io_TAGEMissBubble,
  output         io_SCMissBubble,
  output         io_ITTAGEMissBubble,
  output         io_RASMissBubble,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value,
  output [5:0]   io_perf_8_value,
  output [5:0]   io_perf_9_value,
  output [5:0]   io_perf_10_value,
  output [5:0]   io_perf_11_value,
  output [5:0]   io_perf_12_value,
  output [5:0]   io_perf_13_value,
  output [5:0]   io_perf_14_value,
  output [5:0]   io_perf_15_value,
  output [5:0]   io_perf_16_value,
  output [5:0]   io_perf_17_value,
  output [5:0]   io_perf_18_value,
  output [5:0]   io_perf_19_value,
  output [5:0]   io_perf_20_value,
  output [5:0]   io_perf_21_value,
  output [5:0]   io_perf_22_value,
  output [5:0]   io_perf_23_value
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
  reg [63:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [63:0] _RAND_48;
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
  reg [63:0] _RAND_150;
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
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [63:0] _RAND_266;
  reg [63:0] _RAND_267;
  reg [63:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [63:0] _RAND_278;
  reg [63:0] _RAND_279;
  reg [63:0] _RAND_280;
  reg [63:0] _RAND_281;
  reg [63:0] _RAND_282;
  reg [63:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [31:0] _RAND_289;
  reg [31:0] _RAND_290;
  reg [31:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [63:0] _RAND_296;
  reg [63:0] _RAND_297;
  reg [63:0] _RAND_298;
  reg [63:0] _RAND_299;
  reg [63:0] _RAND_300;
  reg [63:0] _RAND_301;
  reg [63:0] _RAND_302;
  reg [63:0] _RAND_303;
  reg [63:0] _RAND_304;
  reg [63:0] _RAND_305;
  reg [63:0] _RAND_306;
  reg [63:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [31:0] _RAND_310;
  reg [31:0] _RAND_311;
  reg [31:0] _RAND_312;
  reg [31:0] _RAND_313;
  reg [31:0] _RAND_314;
  reg [31:0] _RAND_315;
  reg [31:0] _RAND_316;
  reg [31:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [63:0] _RAND_320;
  reg [63:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [63:0] _RAND_325;
  reg [63:0] _RAND_326;
  reg [63:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
  reg [31:0] _RAND_330;
  reg [63:0] _RAND_331;
  reg [31:0] _RAND_332;
  reg [31:0] _RAND_333;
  reg [31:0] _RAND_334;
  reg [31:0] _RAND_335;
  reg [31:0] _RAND_336;
  reg [31:0] _RAND_337;
  reg [31:0] _RAND_338;
  reg [31:0] _RAND_339;
  reg [31:0] _RAND_340;
  reg [31:0] _RAND_341;
  reg [31:0] _RAND_342;
  reg [31:0] _RAND_343;
  reg [31:0] _RAND_344;
  reg [31:0] _RAND_345;
  reg [31:0] _RAND_346;
  reg [31:0] _RAND_347;
  reg [31:0] _RAND_348;
  reg [31:0] _RAND_349;
  reg [31:0] _RAND_350;
  reg [31:0] _RAND_351;
  reg [31:0] _RAND_352;
  reg [31:0] _RAND_353;
  reg [31:0] _RAND_354;
  reg [31:0] _RAND_355;
  reg [31:0] _RAND_356;
  reg [31:0] _RAND_357;
  reg [31:0] _RAND_358;
  reg [31:0] _RAND_359;
  reg [31:0] _RAND_360;
  reg [31:0] _RAND_361;
  reg [31:0] _RAND_362;
  reg [31:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [63:0] _RAND_369;
  reg [63:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [31:0] _RAND_374;
  reg [31:0] _RAND_375;
  reg [31:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [31:0] _RAND_378;
  reg [31:0] _RAND_379;
  reg [31:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [63:0] _RAND_382;
  reg [31:0] _RAND_383;
  reg [31:0] _RAND_384;
  reg [31:0] _RAND_385;
  reg [63:0] _RAND_386;
  reg [31:0] _RAND_387;
  reg [31:0] _RAND_388;
  reg [31:0] _RAND_389;
  reg [31:0] _RAND_390;
  reg [31:0] _RAND_391;
  reg [31:0] _RAND_392;
  reg [31:0] _RAND_393;
  reg [31:0] _RAND_394;
  reg [31:0] _RAND_395;
  reg [31:0] _RAND_396;
  reg [31:0] _RAND_397;
  reg [31:0] _RAND_398;
  reg [31:0] _RAND_399;
  reg [31:0] _RAND_400;
  reg [31:0] _RAND_401;
  reg [31:0] _RAND_402;
  reg [31:0] _RAND_403;
  reg [31:0] _RAND_404;
  reg [31:0] _RAND_405;
  reg [31:0] _RAND_406;
  reg [31:0] _RAND_407;
  reg [31:0] _RAND_408;
  reg [31:0] _RAND_409;
  reg [31:0] _RAND_410;
  reg [31:0] _RAND_411;
  reg [31:0] _RAND_412;
  reg [31:0] _RAND_413;
  reg [31:0] _RAND_414;
  reg [31:0] _RAND_415;
  reg [63:0] _RAND_416;
  reg [31:0] _RAND_417;
  reg [63:0] _RAND_418;
  reg [63:0] _RAND_419;
  reg [31:0] _RAND_420;
  reg [31:0] _RAND_421;
  reg [31:0] _RAND_422;
  reg [31:0] _RAND_423;
  reg [31:0] _RAND_424;
  reg [31:0] _RAND_425;
  reg [31:0] _RAND_426;
  reg [31:0] _RAND_427;
  reg [31:0] _RAND_428;
  reg [31:0] _RAND_429;
  reg [31:0] _RAND_430;
  reg [31:0] _RAND_431;
  reg [31:0] _RAND_432;
  reg [31:0] _RAND_433;
  reg [31:0] _RAND_434;
  reg [31:0] _RAND_435;
  reg [31:0] _RAND_436;
  reg [31:0] _RAND_437;
  reg [31:0] _RAND_438;
  reg [31:0] _RAND_439;
  reg [31:0] _RAND_440;
  reg [31:0] _RAND_441;
  reg [63:0] _RAND_442;
  reg [31:0] _RAND_443;
  reg [31:0] _RAND_444;
  reg [31:0] _RAND_445;
  reg [31:0] _RAND_446;
  reg [31:0] _RAND_447;
  reg [31:0] _RAND_448;
  reg [31:0] _RAND_449;
  reg [31:0] _RAND_450;
  reg [31:0] _RAND_451;
  reg [31:0] _RAND_452;
  reg [31:0] _RAND_453;
  reg [31:0] _RAND_454;
  reg [31:0] _RAND_455;
  reg [31:0] _RAND_456;
  reg [31:0] _RAND_457;
  reg [31:0] _RAND_458;
  reg [31:0] _RAND_459;
  reg [31:0] _RAND_460;
  reg [31:0] _RAND_461;
  reg [31:0] _RAND_462;
  reg [31:0] _RAND_463;
  reg [31:0] _RAND_464;
  reg [31:0] _RAND_465;
  reg [31:0] _RAND_466;
  reg [31:0] _RAND_467;
  reg [31:0] _RAND_468;
  reg [31:0] _RAND_469;
  reg [31:0] _RAND_470;
  reg [31:0] _RAND_471;
  reg [31:0] _RAND_472;
  reg [31:0] _RAND_473;
  reg [31:0] _RAND_474;
  reg [31:0] _RAND_475;
  reg [31:0] _RAND_476;
  reg [31:0] _RAND_477;
  reg [31:0] _RAND_478;
  reg [31:0] _RAND_479;
  reg [31:0] _RAND_480;
  reg [31:0] _RAND_481;
  reg [31:0] _RAND_482;
  reg [31:0] _RAND_483;
  reg [31:0] _RAND_484;
  reg [31:0] _RAND_485;
  reg [31:0] _RAND_486;
  reg [31:0] _RAND_487;
  reg [31:0] _RAND_488;
  reg [31:0] _RAND_489;
  reg [31:0] _RAND_490;
`endif // RANDOMIZE_REG_INIT
  wire  ftq_pc_mem_clock; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_ifuPtr_wvalue; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_ifuPtrPlus1_wvalue; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_ifuPtrPlus2_wvalue; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_commPtr_wvalue; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_commPtrPlus1_wvalue; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_ifuPtr_rdata_startAddr; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_ifuPtr_rdata_nextLineAddr; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_ifuPtr_rdata_fallThruError; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_ifuPtrPlus1_rdata_nextLineAddr; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_ifuPtrPlus1_rdata_fallThruError; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_ifuPtrPlus2_rdata_startAddr; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_commPtr_rdata_startAddr; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_commPtrPlus1_rdata_startAddr; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_other_raddrs_0; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_other_rdatas_0_startAddr; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wen; // @[NewFtq.scala 542:26]
  wire [2:0] ftq_pc_mem_io_waddr; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_wdata_startAddr; // @[NewFtq.scala 542:26]
  wire [38:0] ftq_pc_mem_io_wdata_nextLineAddr; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_0; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_1; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_2; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_3; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_4; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_5; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_6; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_isNextMask_7; // @[NewFtq.scala 542:26]
  wire  ftq_pc_mem_io_wdata_fallThruError; // @[NewFtq.scala 542:26]
  wire  ftq_redirect_sram_clock; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_reset; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_raddr_0; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_raddr_1; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_raddr_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_ren_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_ren_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_ren_2; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 549:33]
  wire [3:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_rdata_0_lastBrNumOH; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_0_histPtr_flag; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_histPtr_value; // @[NewFtq.scala 549:33]
  wire [4:0] ftq_redirect_sram_io_rdata_0_rasSp; // @[NewFtq.scala 549:33]
  wire [38:0] ftq_redirect_sram_io_rdata_0_rasTop_retAddr; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_0_rasTop_ctr; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 549:33]
  wire [3:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_3; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_rdata_1_lastBrNumOH; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_rdata_1_histPtr_flag; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_histPtr_value; // @[NewFtq.scala 549:33]
  wire [4:0] ftq_redirect_sram_io_rdata_1_rasSp; // @[NewFtq.scala 549:33]
  wire [38:0] ftq_redirect_sram_io_rdata_1_rasTop_retAddr; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_1_rasTop_ctr; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 549:33]
  wire [3:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_rdata_2_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_waddr; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wen; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 549:33]
  wire [6:0] ftq_redirect_sram_io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 549:33]
  wire [8:0] ftq_redirect_sram_io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 549:33]
  wire [3:0] ftq_redirect_sram_io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 549:33]
  wire [10:0] ftq_redirect_sram_io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 549:33]
  wire [2:0] ftq_redirect_sram_io_wdata_lastBrNumOH; // @[NewFtq.scala 549:33]
  wire  ftq_redirect_sram_io_wdata_histPtr_flag; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_histPtr_value; // @[NewFtq.scala 549:33]
  wire [4:0] ftq_redirect_sram_io_wdata_rasSp; // @[NewFtq.scala 549:33]
  wire [38:0] ftq_redirect_sram_io_wdata_rasTop_retAddr; // @[NewFtq.scala 549:33]
  wire [7:0] ftq_redirect_sram_io_wdata_rasTop_ctr; // @[NewFtq.scala 549:33]
  wire  ftq_meta_1r_sram_clock; // @[NewFtq.scala 557:32]
  wire  ftq_meta_1r_sram_reset; // @[NewFtq.scala 557:32]
  wire [2:0] ftq_meta_1r_sram_io_raddr_0; // @[NewFtq.scala 557:32]
  wire  ftq_meta_1r_sram_io_ren_0; // @[NewFtq.scala 557:32]
  wire [255:0] ftq_meta_1r_sram_io_rdata_0_meta; // @[NewFtq.scala 557:32]
  wire [2:0] ftq_meta_1r_sram_io_waddr; // @[NewFtq.scala 557:32]
  wire  ftq_meta_1r_sram_io_wen; // @[NewFtq.scala 557:32]
  wire [255:0] ftq_meta_1r_sram_io_wdata_meta; // @[NewFtq.scala 557:32]
  wire  ftb_entry_mem_clock; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_raddr_0; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_raddr_1; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_raddr_2; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_0_brSlots_0_offset; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_0_brSlots_0_valid; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_0_tailSlot_offset; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_0_tailSlot_sharing; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_0_tailSlot_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_0_isCall; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_0_isRet; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_0_isJalr; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_1_brSlots_0_offset; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_1_brSlots_0_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_1_brSlots_0_sc; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_1_tailSlot_offset; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_1_tailSlot_sharing; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_1_tailSlot_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_1_tailSlot_sc; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_1_isJalr; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_valid; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_2_brSlots_0_offset; // @[NewFtq.scala 563:29]
  wire [11:0] ftb_entry_mem_io_rdata_2_brSlots_0_lower; // @[NewFtq.scala 563:29]
  wire [1:0] ftb_entry_mem_io_rdata_2_brSlots_0_tarStat; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_brSlots_0_sharing; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_brSlots_0_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_brSlots_0_sc; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_2_tailSlot_offset; // @[NewFtq.scala 563:29]
  wire [19:0] ftb_entry_mem_io_rdata_2_tailSlot_lower; // @[NewFtq.scala 563:29]
  wire [1:0] ftb_entry_mem_io_rdata_2_tailSlot_tarStat; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_tailSlot_sharing; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_tailSlot_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_tailSlot_sc; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_rdata_2_pftAddr; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_carry; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_isCall; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_isRet; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_isJalr; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_last_may_be_rvi_call; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_always_taken_0; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_rdata_2_always_taken_1; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wen_0; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_waddr_0; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_valid; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_wdata_0_brSlots_0_offset; // @[NewFtq.scala 563:29]
  wire [11:0] ftb_entry_mem_io_wdata_0_brSlots_0_lower; // @[NewFtq.scala 563:29]
  wire [1:0] ftb_entry_mem_io_wdata_0_brSlots_0_tarStat; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_brSlots_0_sharing; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_brSlots_0_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_brSlots_0_sc; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_wdata_0_tailSlot_offset; // @[NewFtq.scala 563:29]
  wire [19:0] ftb_entry_mem_io_wdata_0_tailSlot_lower; // @[NewFtq.scala 563:29]
  wire [1:0] ftb_entry_mem_io_wdata_0_tailSlot_tarStat; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_tailSlot_sharing; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_tailSlot_valid; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_tailSlot_sc; // @[NewFtq.scala 563:29]
  wire [2:0] ftb_entry_mem_io_wdata_0_pftAddr; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_carry; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_isCall; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_isRet; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_isJalr; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_last_may_be_rvi_call; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_always_taken_0; // @[NewFtq.scala 563:29]
  wire  ftb_entry_mem_io_wdata_0_always_taken_1; // @[NewFtq.scala 563:29]
  wire  ftq_pd_mem_clock; // @[NewFtq.scala 808:26]
  wire [2:0] ftq_pd_mem_io_raddr_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_1; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_2; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_3; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_4; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_5; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_6; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_brMask_7; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_jmpInfo_valid; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_jmpInfo_bits_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_jmpInfo_bits_1; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_jmpInfo_bits_2; // @[NewFtq.scala 808:26]
  wire [2:0] ftq_pd_mem_io_rdata_0_jmpOffset; // @[NewFtq.scala 808:26]
  wire [38:0] ftq_pd_mem_io_rdata_0_jalTarget; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_1; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_2; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_3; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_4; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_5; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_6; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_rdata_0_rvcMask_7; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wen_0; // @[NewFtq.scala 808:26]
  wire [2:0] ftq_pd_mem_io_waddr_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_1; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_2; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_3; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_4; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_5; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_6; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_brMask_7; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_jmpInfo_valid; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_jmpInfo_bits_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_jmpInfo_bits_1; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_jmpInfo_bits_2; // @[NewFtq.scala 808:26]
  wire [2:0] ftq_pd_mem_io_wdata_0_jmpOffset; // @[NewFtq.scala 808:26]
  wire [38:0] ftq_pd_mem_io_wdata_0_jalTarget; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_0; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_1; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_2; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_3; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_4; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_5; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_6; // @[NewFtq.scala 808:26]
  wire  ftq_pd_mem_io_wdata_0_rvcMask_7; // @[NewFtq.scala 808:26]
  wire [38:0] FTBEntryGen_io_start_addr; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_valid; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_old_entry_brSlots_0_offset; // @[NewFtq.scala 1206:27]
  wire [11:0] FTBEntryGen_io_old_entry_brSlots_0_lower; // @[NewFtq.scala 1206:27]
  wire [1:0] FTBEntryGen_io_old_entry_brSlots_0_tarStat; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_brSlots_0_sharing; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_brSlots_0_valid; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_brSlots_0_sc; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_old_entry_tailSlot_offset; // @[NewFtq.scala 1206:27]
  wire [19:0] FTBEntryGen_io_old_entry_tailSlot_lower; // @[NewFtq.scala 1206:27]
  wire [1:0] FTBEntryGen_io_old_entry_tailSlot_tarStat; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_tailSlot_sharing; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_tailSlot_valid; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_tailSlot_sc; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_old_entry_pftAddr; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_carry; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_isCall; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_isRet; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_isJalr; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_last_may_be_rvi_call; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_always_taken_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_old_entry_always_taken_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_2; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_3; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_4; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_5; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_6; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_brMask_7; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_jmpInfo_valid; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_jmpInfo_bits_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_jmpInfo_bits_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_jmpInfo_bits_2; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_pd_jmpOffset; // @[NewFtq.scala 1206:27]
  wire [38:0] FTBEntryGen_io_pd_jalTarget; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_2; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_3; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_4; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_5; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_6; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_pd_rvcMask_7; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_cfiIndex_valid; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_cfiIndex_bits; // @[NewFtq.scala 1206:27]
  wire [38:0] FTBEntryGen_io_target; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_hit; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_2; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_3; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_4; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_5; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_6; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispredict_vec_7; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_valid; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_new_entry_brSlots_0_offset; // @[NewFtq.scala 1206:27]
  wire [11:0] FTBEntryGen_io_new_entry_brSlots_0_lower; // @[NewFtq.scala 1206:27]
  wire [1:0] FTBEntryGen_io_new_entry_brSlots_0_tarStat; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_brSlots_0_sharing; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_brSlots_0_valid; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_brSlots_0_sc; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_new_entry_tailSlot_offset; // @[NewFtq.scala 1206:27]
  wire [19:0] FTBEntryGen_io_new_entry_tailSlot_lower; // @[NewFtq.scala 1206:27]
  wire [1:0] FTBEntryGen_io_new_entry_tailSlot_tarStat; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_tailSlot_sharing; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_tailSlot_valid; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_tailSlot_sc; // @[NewFtq.scala 1206:27]
  wire [2:0] FTBEntryGen_io_new_entry_pftAddr; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_carry; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_isCall; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_isRet; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_isJalr; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_last_may_be_rvi_call; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_always_taken_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_new_entry_always_taken_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_taken_mask_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_taken_mask_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_jmp_taken; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispred_mask_0; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispred_mask_1; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_mispred_mask_2; // @[NewFtq.scala 1206:27]
  wire  FTBEntryGen_io_is_old_entry; // @[NewFtq.scala 1206:27]
  reg  topdown_stage_reasons_0; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_1; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_2; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_3; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_4; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_5; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_6; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_7; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_8; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_9; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_10; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_11; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_12; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_13; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_14; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_15; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_16; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_17; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_18; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_19; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_20; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_21; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_22; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_23; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_24; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_25; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_26; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_27; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_28; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_29; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_30; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_31; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_32; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_33; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_34; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_35; // @[NewFtq.scala 472:30]
  reg  topdown_stage_reasons_36; // @[NewFtq.scala 472:30]
  reg [2:0] topdown_stage_stallWidth; // @[NewFtq.scala 472:30]
  reg  backendRedirectReg_valid; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_ftqIdx_flag; // @[NewFtq.scala 481:35]
  reg [2:0] backendRedirectReg_bits_ftqIdx_value; // @[NewFtq.scala 481:35]
  reg [2:0] backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_level; // @[NewFtq.scala 481:35]
  reg [38:0] backendRedirectReg_bits_cfiUpdate_pc; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_cfiUpdate_pd_isRVC; // @[NewFtq.scala 481:35]
  reg [1:0] backendRedirectReg_bits_cfiUpdate_pd_brType; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_cfiUpdate_pd_isCall; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_cfiUpdate_pd_isRet; // @[NewFtq.scala 481:35]
  reg [38:0] backendRedirectReg_bits_cfiUpdate_target; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_debugIsCtrl; // @[NewFtq.scala 481:35]
  reg  backendRedirectReg_bits_debugIsMemVio; // @[NewFtq.scala 481:35]
  reg  backendFlush_REG; // @[NewFtq.scala 484:44]
  wire  backendFlush = io_fromBackend_redirect_valid | backendFlush_REG; // @[NewFtq.scala 484:34]
  wire  fromIfuRedirect_valid = io_fromIfu_pdWb_valid & io_fromIfu_pdWb_bits_misOffset_valid & ~backendFlush; // @[NewFtq.scala 921:68]
  reg  ifuRedirectReg_valid; // @[NewFtq.scala 937:31]
  wire  ifuFlush = fromIfuRedirect_valid | ifuRedirectReg_valid; // @[NewFtq.scala 939:37]
  wire  allowToIfu = ~ifuFlush & ~io_fromBackend_redirect_valid & ~backendRedirectReg_valid; // @[NewFtq.scala 492:53]
  reg  bpuPtr_flag; // @[NewFtq.scala 495:50]
  reg [2:0] bpuPtr_value; // @[NewFtq.scala 495:50]
  reg  ifuPtr_flag; // @[NewFtq.scala 495:50]
  reg [2:0] ifuPtr_value; // @[NewFtq.scala 495:50]
  reg  ifuWbPtr_flag; // @[NewFtq.scala 495:50]
  reg [2:0] ifuWbPtr_value; // @[NewFtq.scala 495:50]
  reg  commPtr_flag; // @[NewFtq.scala 495:50]
  reg [2:0] commPtr_value; // @[NewFtq.scala 495:50]
  reg  ifuPtrPlus1_flag; // @[NewFtq.scala 496:28]
  reg [2:0] ifuPtrPlus1_value; // @[NewFtq.scala 496:28]
  reg  ifuPtrPlus2_flag; // @[NewFtq.scala 497:28]
  reg [2:0] ifuPtrPlus2_value; // @[NewFtq.scala 497:28]
  reg  commPtrPlus1_flag; // @[NewFtq.scala 498:29]
  reg [2:0] commPtrPlus1_value; // @[NewFtq.scala 498:29]
  reg  copied_ifu_ptr_0_flag; // @[NewFtq.scala 499:49]
  reg [2:0] copied_ifu_ptr_0_value; // @[NewFtq.scala 499:49]
  reg  copied_ifu_ptr_1_flag; // @[NewFtq.scala 499:49]
  reg [2:0] copied_ifu_ptr_1_value; // @[NewFtq.scala 499:49]
  reg  copied_ifu_ptr_2_flag; // @[NewFtq.scala 499:49]
  reg [2:0] copied_ifu_ptr_2_value; // @[NewFtq.scala 499:49]
  reg  copied_ifu_ptr_3_flag; // @[NewFtq.scala 499:49]
  reg [2:0] copied_ifu_ptr_3_value; // @[NewFtq.scala 499:49]
  reg  copied_ifu_ptr_4_flag; // @[NewFtq.scala 499:49]
  reg [2:0] copied_ifu_ptr_4_value; // @[NewFtq.scala 499:49]
  reg  copied_bpu_ptr_0_flag; // @[NewFtq.scala 500:49]
  reg [2:0] copied_bpu_ptr_0_value; // @[NewFtq.scala 500:49]
  reg  copied_bpu_ptr_1_flag; // @[NewFtq.scala 500:49]
  reg [2:0] copied_bpu_ptr_1_value; // @[NewFtq.scala 500:49]
  reg  copied_bpu_ptr_2_flag; // @[NewFtq.scala 500:49]
  reg [2:0] copied_bpu_ptr_2_value; // @[NewFtq.scala 500:49]
  wire [2:0] _validEntries_T_2 = bpuPtr_value - commPtr_value; // @[CircularQueuePtr.scala 105:21]
  wire [3:0] _GEN_2992 = {{1'd0}, bpuPtr_value}; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _validEntries_T_4 = 4'h8 + _GEN_2992; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _GEN_2993 = {{1'd0}, commPtr_value}; // @[CircularQueuePtr.scala 106:41]
  wire [3:0] _validEntries_T_6 = _validEntries_T_4 - _GEN_2993; // @[CircularQueuePtr.scala 106:41]
  wire [3:0] validEntries = bpuPtr_flag == commPtr_flag ? {{1'd0}, _validEntries_T_2} : _validEntries_T_6; // @[CircularQueuePtr.scala 104:8]
  wire [3:0] _canCommit_T = {commPtr_flag,commPtr_value}; // @[CircularQueuePtr.scala 63:40]
  wire [3:0] _canCommit_T_1 = {ifuWbPtr_flag,ifuWbPtr_value}; // @[CircularQueuePtr.scala 63:56]
  wire  _canCommit_T_2 = _canCommit_T != _canCommit_T_1; // @[CircularQueuePtr.scala 63:47]
  reg [1:0] bpu_ftb_update_stall; // @[NewFtq.scala 1114:37]
  wire  may_have_stall_from_bpu = bpu_ftb_update_stall != 2'h0; // @[NewFtq.scala 1115:51]
  reg [1:0] commitStateQueue_7_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_0; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_0; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2620 = 3'h1 == commPtr_value ? commitStateQueue_1_0 : commitStateQueue_0_0; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2621 = 3'h2 == commPtr_value ? commitStateQueue_2_0 : _GEN_2620; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2622 = 3'h3 == commPtr_value ? commitStateQueue_3_0 : _GEN_2621; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2623 = 3'h4 == commPtr_value ? commitStateQueue_4_0 : _GEN_2622; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2624 = 3'h5 == commPtr_value ? commitStateQueue_5_0 : _GEN_2623; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2625 = 3'h6 == commPtr_value ? commitStateQueue_6_0 : _GEN_2624; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2626 = 3'h7 == commPtr_value ? commitStateQueue_7_0 : _GEN_2625; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_7 = _GEN_2626 == 2'h0 | _GEN_2626 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_1; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_1; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2628 = 3'h1 == commPtr_value ? commitStateQueue_1_1 : commitStateQueue_0_1; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2629 = 3'h2 == commPtr_value ? commitStateQueue_2_1 : _GEN_2628; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2630 = 3'h3 == commPtr_value ? commitStateQueue_3_1 : _GEN_2629; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2631 = 3'h4 == commPtr_value ? commitStateQueue_4_1 : _GEN_2630; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2632 = 3'h5 == commPtr_value ? commitStateQueue_5_1 : _GEN_2631; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2633 = 3'h6 == commPtr_value ? commitStateQueue_6_1 : _GEN_2632; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2634 = 3'h7 == commPtr_value ? commitStateQueue_7_1 : _GEN_2633; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_10 = _GEN_2634 == 2'h0 | _GEN_2634 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_2; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_2; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2636 = 3'h1 == commPtr_value ? commitStateQueue_1_2 : commitStateQueue_0_2; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2637 = 3'h2 == commPtr_value ? commitStateQueue_2_2 : _GEN_2636; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2638 = 3'h3 == commPtr_value ? commitStateQueue_3_2 : _GEN_2637; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2639 = 3'h4 == commPtr_value ? commitStateQueue_4_2 : _GEN_2638; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2640 = 3'h5 == commPtr_value ? commitStateQueue_5_2 : _GEN_2639; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2641 = 3'h6 == commPtr_value ? commitStateQueue_6_2 : _GEN_2640; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2642 = 3'h7 == commPtr_value ? commitStateQueue_7_2 : _GEN_2641; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_13 = _GEN_2642 == 2'h0 | _GEN_2642 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_3; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_3; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2644 = 3'h1 == commPtr_value ? commitStateQueue_1_3 : commitStateQueue_0_3; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2645 = 3'h2 == commPtr_value ? commitStateQueue_2_3 : _GEN_2644; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2646 = 3'h3 == commPtr_value ? commitStateQueue_3_3 : _GEN_2645; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2647 = 3'h4 == commPtr_value ? commitStateQueue_4_3 : _GEN_2646; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2648 = 3'h5 == commPtr_value ? commitStateQueue_5_3 : _GEN_2647; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2649 = 3'h6 == commPtr_value ? commitStateQueue_6_3 : _GEN_2648; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2650 = 3'h7 == commPtr_value ? commitStateQueue_7_3 : _GEN_2649; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_16 = _GEN_2650 == 2'h0 | _GEN_2650 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_4; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_4; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2652 = 3'h1 == commPtr_value ? commitStateQueue_1_4 : commitStateQueue_0_4; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2653 = 3'h2 == commPtr_value ? commitStateQueue_2_4 : _GEN_2652; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2654 = 3'h3 == commPtr_value ? commitStateQueue_3_4 : _GEN_2653; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2655 = 3'h4 == commPtr_value ? commitStateQueue_4_4 : _GEN_2654; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2656 = 3'h5 == commPtr_value ? commitStateQueue_5_4 : _GEN_2655; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2657 = 3'h6 == commPtr_value ? commitStateQueue_6_4 : _GEN_2656; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2658 = 3'h7 == commPtr_value ? commitStateQueue_7_4 : _GEN_2657; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_19 = _GEN_2658 == 2'h0 | _GEN_2658 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_5; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_5; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2660 = 3'h1 == commPtr_value ? commitStateQueue_1_5 : commitStateQueue_0_5; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2661 = 3'h2 == commPtr_value ? commitStateQueue_2_5 : _GEN_2660; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2662 = 3'h3 == commPtr_value ? commitStateQueue_3_5 : _GEN_2661; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2663 = 3'h4 == commPtr_value ? commitStateQueue_4_5 : _GEN_2662; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2664 = 3'h5 == commPtr_value ? commitStateQueue_5_5 : _GEN_2663; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2665 = 3'h6 == commPtr_value ? commitStateQueue_6_5 : _GEN_2664; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2666 = 3'h7 == commPtr_value ? commitStateQueue_7_5 : _GEN_2665; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_22 = _GEN_2666 == 2'h0 | _GEN_2666 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_6; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_6; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2668 = 3'h1 == commPtr_value ? commitStateQueue_1_6 : commitStateQueue_0_6; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2669 = 3'h2 == commPtr_value ? commitStateQueue_2_6 : _GEN_2668; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2670 = 3'h3 == commPtr_value ? commitStateQueue_3_6 : _GEN_2669; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2671 = 3'h4 == commPtr_value ? commitStateQueue_4_6 : _GEN_2670; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2672 = 3'h5 == commPtr_value ? commitStateQueue_5_6 : _GEN_2671; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2673 = 3'h6 == commPtr_value ? commitStateQueue_6_6 : _GEN_2672; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2674 = 3'h7 == commPtr_value ? commitStateQueue_7_6 : _GEN_2673; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_25 = _GEN_2674 == 2'h0 | _GEN_2674 == 2'h2; // @[NewFtq.scala 1118:23]
  reg [1:0] commitStateQueue_7_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_6_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_5_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_4_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_3_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_2_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_1_7; // @[NewFtq.scala 578:33]
  reg [1:0] commitStateQueue_0_7; // @[NewFtq.scala 578:33]
  wire [1:0] _GEN_2676 = 3'h1 == commPtr_value ? commitStateQueue_1_7 : commitStateQueue_0_7; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2677 = 3'h2 == commPtr_value ? commitStateQueue_2_7 : _GEN_2676; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2678 = 3'h3 == commPtr_value ? commitStateQueue_3_7 : _GEN_2677; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2679 = 3'h4 == commPtr_value ? commitStateQueue_4_7 : _GEN_2678; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2680 = 3'h5 == commPtr_value ? commitStateQueue_5_7 : _GEN_2679; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2681 = 3'h6 == commPtr_value ? commitStateQueue_6_7 : _GEN_2680; // @[NewFtq.scala 1118:{9,9}]
  wire [1:0] _GEN_2682 = 3'h7 == commPtr_value ? commitStateQueue_7_7 : _GEN_2681; // @[NewFtq.scala 1118:{9,9}]
  wire  _canCommit_T_28 = _GEN_2682 == 2'h0 | _GEN_2682 == 2'h2; // @[NewFtq.scala 1118:23]
  wire [7:0] _canCommit_T_29 = {_canCommit_T_7,_canCommit_T_10,_canCommit_T_13,_canCommit_T_16,_canCommit_T_19,
    _canCommit_T_22,_canCommit_T_25,_canCommit_T_28}; // @[Cat.scala 31:58]
  wire  _canCommit_T_30 = &_canCommit_T_29; // @[NewFtq.scala 1119:13]
  wire  canCommit = _canCommit_T_2 & ~may_have_stall_from_bpu & _canCommit_T_30; // @[NewFtq.scala 1116:65]
  wire  bpu_s2_redirect = io_fromBpu_resp_bits_s2_valid_3 & io_fromBpu_resp_bits_s2_hasRedirect_3; // @[NewFtq.scala 529:46]
  wire  bpu_s3_redirect = io_fromBpu_resp_bits_s3_valid_3 & io_fromBpu_resp_bits_s3_hasRedirect_3; // @[NewFtq.scala 530:46]
  wire  _enq_fire_T = io_fromBpu_resp_ready & io_fromBpu_resp_valid; // @[Decoupled.scala 50:35]
  wire  enq_fire = _enq_fire_T & allowToIfu; // @[NewFtq.scala 533:41]
  wire  bpu_in_fire = (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
  wire [38:0] _bpu_in_resp_res_T_2_pc_3 = bpu_s2_redirect ? io_fromBpu_resp_bits_s2_pc_3 : io_fromBpu_resp_bits_s1_pc_3; // @[Mux.scala 47:70]
  wire [2:0] _bpu_in_resp_res_T_2_ftq_idx_value = bpu_s2_redirect ? io_fromBpu_resp_bits_s2_ftq_idx_value : 3'h0; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_br_taken_mask_0 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_br_taken_mask_0 : io_fromBpu_resp_bits_s1_full_pred_3_br_taken_mask_0; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_br_taken_mask_1 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_br_taken_mask_1 : io_fromBpu_resp_bits_s1_full_pred_3_br_taken_mask_1; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_slot_valids_0 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_slot_valids_0 : io_fromBpu_resp_bits_s1_full_pred_3_slot_valids_0; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_slot_valids_1 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_slot_valids_1 : io_fromBpu_resp_bits_s1_full_pred_3_slot_valids_1; // @[Mux.scala 47:70]
  wire [38:0] _bpu_in_resp_res_T_2_full_pred_3_targets_0 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_targets_0 : io_fromBpu_resp_bits_s1_full_pred_3_targets_0; // @[Mux.scala 47:70]
  wire [38:0] _bpu_in_resp_res_T_2_full_pred_3_targets_1 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_targets_1 : io_fromBpu_resp_bits_s1_full_pred_3_targets_1; // @[Mux.scala 47:70]
  wire [2:0] _bpu_in_resp_res_T_2_full_pred_3_offsets_0 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_offsets_0 : io_fromBpu_resp_bits_s1_full_pred_3_offsets_0; // @[Mux.scala 47:70]
  wire [2:0] _bpu_in_resp_res_T_2_full_pred_3_offsets_1 = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_offsets_1 : io_fromBpu_resp_bits_s1_full_pred_3_offsets_1; // @[Mux.scala 47:70]
  wire [38:0] _bpu_in_resp_res_T_2_full_pred_3_fallThroughAddr = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_fallThroughAddr : io_fromBpu_resp_bits_s1_full_pred_3_fallThroughAddr; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_fallThroughErr = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_fallThroughErr : io_fromBpu_resp_bits_s1_full_pred_3_fallThroughErr; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_is_br_sharing = bpu_s2_redirect ?
    io_fromBpu_resp_bits_s2_full_pred_3_is_br_sharing : io_fromBpu_resp_bits_s1_full_pred_3_is_br_sharing; // @[Mux.scala 47:70]
  wire  _bpu_in_resp_res_T_2_full_pred_3_hit = bpu_s2_redirect ? io_fromBpu_resp_bits_s2_full_pred_3_hit :
    io_fromBpu_resp_bits_s1_full_pred_3_hit; // @[Mux.scala 47:70]
  wire [38:0] bpu_in_resp_pc_3 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_pc_3 : _bpu_in_resp_res_T_2_pc_3; // @[Mux.scala 47:70]
  wire [2:0] bpu_in_resp_ftq_idx_value = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_ftq_idx_value :
    _bpu_in_resp_res_T_2_ftq_idx_value; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_br_taken_mask_0 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_br_taken_mask_0
     : _bpu_in_resp_res_T_2_full_pred_3_br_taken_mask_0; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_br_taken_mask_1 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_br_taken_mask_1
     : _bpu_in_resp_res_T_2_full_pred_3_br_taken_mask_1; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_slot_valids_0 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_slot_valids_0 :
    _bpu_in_resp_res_T_2_full_pred_3_slot_valids_0; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_slot_valids_1 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_slot_valids_1 :
    _bpu_in_resp_res_T_2_full_pred_3_slot_valids_1; // @[Mux.scala 47:70]
  wire [38:0] bpu_in_resp_full_pred_3_targets_0 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_targets_0 :
    _bpu_in_resp_res_T_2_full_pred_3_targets_0; // @[Mux.scala 47:70]
  wire [38:0] bpu_in_resp_full_pred_3_targets_1 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_targets_1 :
    _bpu_in_resp_res_T_2_full_pred_3_targets_1; // @[Mux.scala 47:70]
  wire [2:0] bpu_in_resp_full_pred_3_offsets_0 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_offsets_0 :
    _bpu_in_resp_res_T_2_full_pred_3_offsets_0; // @[Mux.scala 47:70]
  wire [2:0] bpu_in_resp_full_pred_3_offsets_1 = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_offsets_1 :
    _bpu_in_resp_res_T_2_full_pred_3_offsets_1; // @[Mux.scala 47:70]
  wire [38:0] bpu_in_resp_full_pred_3_fallThroughAddr = bpu_s3_redirect ?
    io_fromBpu_resp_bits_s3_full_pred_3_fallThroughAddr : _bpu_in_resp_res_T_2_full_pred_3_fallThroughAddr; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_fallThroughErr = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_fallThroughErr :
    _bpu_in_resp_res_T_2_full_pred_3_fallThroughErr; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_is_br_sharing = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_is_br_sharing :
    _bpu_in_resp_res_T_2_full_pred_3_is_br_sharing; // @[Mux.scala 47:70]
  wire  bpu_in_resp_full_pred_3_hit = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_full_pred_3_hit :
    _bpu_in_resp_res_T_2_full_pred_3_hit; // @[Mux.scala 47:70]
  wire [1:0] _bpu_in_stage_T_2 = bpu_s2_redirect ? 2'h1 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] bpu_in_stage = bpu_s3_redirect ? 2'h2 : _bpu_in_stage_T_2; // @[Mux.scala 47:70]
  wire [3:0] _T_1 = {{1'd0}, bpu_in_resp_pc_3[3:1]}; // @[NewFtq.scala 99:46]
  wire [3:0] _T_5 = bpu_in_resp_pc_3[3:1] + 3'h1; // @[NewFtq.scala 99:46]
  wire [3:0] _T_9 = bpu_in_resp_pc_3[3:1] + 3'h2; // @[NewFtq.scala 99:46]
  wire [3:0] _T_13 = bpu_in_resp_pc_3[3:1] + 3'h3; // @[NewFtq.scala 99:46]
  wire [3:0] _T_17 = bpu_in_resp_pc_3[3:1] + 3'h4; // @[NewFtq.scala 99:46]
  wire [3:0] _T_21 = bpu_in_resp_pc_3[3:1] + 3'h5; // @[NewFtq.scala 99:46]
  wire [3:0] _T_25 = bpu_in_resp_pc_3[3:1] + 3'h6; // @[NewFtq.scala 99:46]
  wire [3:0] _T_29 = bpu_in_resp_pc_3[3:1] + 3'h7; // @[NewFtq.scala 99:46]
  reg [38:0] newest_entry_target; // @[NewFtq.scala 571:32]
  reg  newest_entry_ptr_flag; // @[NewFtq.scala 572:29]
  reg [2:0] newest_entry_ptr_value; // @[NewFtq.scala 572:29]
  reg  cfiIndex_vec_0_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_0_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_1_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_1_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_2_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_2_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_3_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_3_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_4_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_4_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_5_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_5_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_6_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_6_bits; // @[NewFtq.scala 573:25]
  reg  cfiIndex_vec_7_valid; // @[NewFtq.scala 573:25]
  reg [2:0] cfiIndex_vec_7_bits; // @[NewFtq.scala 573:25]
  reg  mispredict_vec_0_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_0_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_1_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_2_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_3_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_4_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_5_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_6_7; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_0; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_1; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_2; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_3; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_4; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_5; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_6; // @[NewFtq.scala 574:27]
  reg  mispredict_vec_7_7; // @[NewFtq.scala 574:27]
  reg  entry_fetch_status_0; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_1; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_2; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_3; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_4; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_5; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_6; // @[NewFtq.scala 583:35]
  reg  entry_fetch_status_7; // @[NewFtq.scala 583:35]
  reg [1:0] entry_hit_status_0; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_1; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_2; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_3; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_4; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_5; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_6; // @[NewFtq.scala 586:33]
  reg [1:0] entry_hit_status_7; // @[NewFtq.scala 586:33]
  reg  last_cycle_bpu_in; // @[NewFtq.scala 589:34]
  reg  last_cycle_bpu_in_ptr_flag; // @[NewFtq.scala 590:38]
  reg [2:0] last_cycle_bpu_in_ptr_value; // @[NewFtq.scala 590:38]
  wire [38:0] last_cycle_bpu_target_targetVec_3_3 = bpu_in_resp_pc_3 + 39'h10; // @[FrontendBundle.scala 485:55]
  wire  last_cycle_bpu_target_tm_3_0 = bpu_in_resp_full_pred_3_slot_valids_0 & bpu_in_resp_full_pred_3_br_taken_mask_0; // @[FrontendBundle.scala 447:69]
  wire  _last_cycle_bpu_target_tm_T_18 = bpu_in_resp_full_pred_3_is_br_sharing & bpu_in_resp_full_pred_3_br_taken_mask_1
     | ~bpu_in_resp_full_pred_3_is_br_sharing; // @[FrontendBundle.scala 449:47]
  wire  last_cycle_bpu_target_tm_3_1 = bpu_in_resp_full_pred_3_slot_valids_1 & _last_cycle_bpu_target_tm_T_18; // @[FrontendBundle.scala 448:25]
  wire  last_cycle_bpu_target_selVecOH_0_3 = last_cycle_bpu_target_tm_3_0 & bpu_in_resp_full_pred_3_hit; // @[FrontendBundle.scala 488:80]
  wire  last_cycle_bpu_target_selVecOH_1_3 = ~last_cycle_bpu_target_tm_3_0 & last_cycle_bpu_target_tm_3_1 &
    bpu_in_resp_full_pred_3_hit; // @[FrontendBundle.scala 488:80]
  wire [1:0] _last_cycle_bpu_target_selVecOH_T_29 = {last_cycle_bpu_target_tm_3_1,last_cycle_bpu_target_tm_3_0}; // @[FrontendBundle.scala 489:12]
  wire  last_cycle_bpu_target_selVecOH_2_3 = ~(|_last_cycle_bpu_target_selVecOH_T_29) & bpu_in_resp_full_pred_3_hit; // @[FrontendBundle.scala 489:23]
  wire  last_cycle_bpu_target_selVecOH_3_3 = ~bpu_in_resp_full_pred_3_hit; // @[FrontendBundle.scala 489:34]
  wire [38:0] _last_cycle_bpu_target_T_21 = last_cycle_bpu_target_selVecOH_0_3 ? bpu_in_resp_full_pred_3_targets_0 : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _last_cycle_bpu_target_T_22 = last_cycle_bpu_target_selVecOH_1_3 ? bpu_in_resp_full_pred_3_targets_1 : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _last_cycle_bpu_target_T_23 = last_cycle_bpu_target_selVecOH_2_3 ? bpu_in_resp_full_pred_3_fallThroughAddr
     : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _last_cycle_bpu_target_T_24 = last_cycle_bpu_target_selVecOH_3_3 ? last_cycle_bpu_target_targetVec_3_3 : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _last_cycle_bpu_target_T_25 = _last_cycle_bpu_target_T_21 | _last_cycle_bpu_target_T_22; // @[Mux.scala 27:73]
  wire [38:0] _last_cycle_bpu_target_T_26 = _last_cycle_bpu_target_T_25 | _last_cycle_bpu_target_T_23; // @[Mux.scala 27:73]
  reg [38:0] last_cycle_bpu_target; // @[NewFtq.scala 592:38]
  wire  _last_cycle_cfiIndex_cfiIndex_valid_T_33 = last_cycle_bpu_target_tm_3_1 & bpu_in_resp_full_pred_3_hit; // @[FrontendBundle.scala 456:38]
  wire [1:0] _last_cycle_cfiIndex_cfiIndex_valid_T_34 = {_last_cycle_cfiIndex_cfiIndex_valid_T_33,
    last_cycle_bpu_target_selVecOH_0_3}; // @[FrontendBundle.scala 504:46]
  wire  last_cycle_cfiIndex_cfiIndex_3_valid = |_last_cycle_cfiIndex_cfiIndex_valid_T_34; // @[FrontendBundle.scala 504:53]
  wire [2:0] _last_cycle_cfiIndex_cfiIndex_bits_T_74 = last_cycle_bpu_target_selVecOH_0_3 ?
    bpu_in_resp_full_pred_3_offsets_0 : bpu_in_resp_full_pred_3_offsets_1; // @[ParallelMux.scala 90:77]
  wire  _last_cycle_cfiIndex_cfiIndex_bits_T_84 = ~last_cycle_cfiIndex_cfiIndex_3_valid; // @[FrontendBundle.scala 508:37]
  wire [2:0] _last_cycle_cfiIndex_cfiIndex_bits_T_86 = _last_cycle_cfiIndex_cfiIndex_bits_T_84 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  reg  last_cycle_cfiIndex_valid; // @[NewFtq.scala 593:36]
  reg [2:0] last_cycle_cfiIndex_bits; // @[NewFtq.scala 593:36]
  reg  copied_last_cycle_bpu_in_REG; // @[NewFtq.scala 597:102]
  reg  copied_last_cycle_bpu_in_REG_1; // @[NewFtq.scala 597:102]
  reg  copied_last_cycle_bpu_in_REG_2; // @[NewFtq.scala 597:102]
  reg  copied_last_cycle_bpu_in_REG_5; // @[NewFtq.scala 597:102]
  reg  copied_last_cycle_bpu_in_REG_6; // @[NewFtq.scala 597:102]
  reg [2:0] copied_last_cycle_bpu_in_ptr_for_ftq_REG_value; // @[NewFtq.scala 598:106]
  reg [2:0] copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value; // @[NewFtq.scala 598:106]
  wire  _GEN_0 = 3'h0 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_0; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_1 = 3'h1 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_1; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_2 = 3'h2 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_2; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_3 = 3'h3 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_3; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_4 = 3'h4 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_4; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_5 = 3'h5 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_5; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_6 = 3'h6 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_6; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_7 = 3'h7 == last_cycle_bpu_in_ptr_value ? 1'h0 : entry_fetch_status_7; // @[NewFtq.scala 583:35 601:{47,47}]
  wire  _GEN_8 = 3'h0 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_0_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_9 = 3'h1 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_1_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_10 = 3'h2 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_2_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_11 = 3'h3 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_3_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_12 = 3'h4 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_4_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_13 = 3'h5 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_5_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_14 = 3'h6 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_6_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_15 = 3'h7 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_valid : cfiIndex_vec_7_valid; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_16 = 3'h0 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_0_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_17 = 3'h1 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_1_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_18 = 3'h2 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_2_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_19 = 3'h3 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_3_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_20 = 3'h4 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_4_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_21 = 3'h5 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_5_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_22 = 3'h6 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_6_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire [2:0] _GEN_23 = 3'h7 == last_cycle_bpu_in_ptr_value ? last_cycle_cfiIndex_bits : cfiIndex_vec_7_bits; // @[NewFtq.scala 573:25 602:{41,41}]
  wire  _GEN_40 = last_cycle_bpu_in ? _GEN_0 : entry_fetch_status_0; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_41 = last_cycle_bpu_in ? _GEN_1 : entry_fetch_status_1; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_42 = last_cycle_bpu_in ? _GEN_2 : entry_fetch_status_2; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_43 = last_cycle_bpu_in ? _GEN_3 : entry_fetch_status_3; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_44 = last_cycle_bpu_in ? _GEN_4 : entry_fetch_status_4; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_45 = last_cycle_bpu_in ? _GEN_5 : entry_fetch_status_5; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_46 = last_cycle_bpu_in ? _GEN_6 : entry_fetch_status_6; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_47 = last_cycle_bpu_in ? _GEN_7 : entry_fetch_status_7; // @[NewFtq.scala 600:28 583:35]
  wire  _GEN_48 = last_cycle_bpu_in ? _GEN_8 : cfiIndex_vec_0_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_49 = last_cycle_bpu_in ? _GEN_9 : cfiIndex_vec_1_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_50 = last_cycle_bpu_in ? _GEN_10 : cfiIndex_vec_2_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_51 = last_cycle_bpu_in ? _GEN_11 : cfiIndex_vec_3_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_52 = last_cycle_bpu_in ? _GEN_12 : cfiIndex_vec_4_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_53 = last_cycle_bpu_in ? _GEN_13 : cfiIndex_vec_5_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_54 = last_cycle_bpu_in ? _GEN_14 : cfiIndex_vec_6_valid; // @[NewFtq.scala 573:25 600:28]
  wire  _GEN_55 = last_cycle_bpu_in ? _GEN_15 : cfiIndex_vec_7_valid; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_56 = last_cycle_bpu_in ? _GEN_16 : cfiIndex_vec_0_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_57 = last_cycle_bpu_in ? _GEN_17 : cfiIndex_vec_1_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_58 = last_cycle_bpu_in ? _GEN_18 : cfiIndex_vec_2_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_59 = last_cycle_bpu_in ? _GEN_19 : cfiIndex_vec_3_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_60 = last_cycle_bpu_in ? _GEN_20 : cfiIndex_vec_4_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_61 = last_cycle_bpu_in ? _GEN_21 : cfiIndex_vec_5_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_62 = last_cycle_bpu_in ? _GEN_22 : cfiIndex_vec_6_bits; // @[NewFtq.scala 573:25 600:28]
  wire [2:0] _GEN_63 = last_cycle_bpu_in ? _GEN_23 : cfiIndex_vec_7_bits; // @[NewFtq.scala 573:25 600:28]
  reg  REG; // @[NewFtq.scala 611:16]
  reg [2:0] REG_1; // @[NewFtq.scala 612:27]
  wire  _GEN_83 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_84 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_85 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_86 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_87 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_88 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_89 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_90 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_0; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_91 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_92 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_93 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_94 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_95 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_96 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_97 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_98 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_1; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_99 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_100 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_101 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_102 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_103 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_104 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_105 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_106 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_2; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_107 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_108 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_109 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_110 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_111 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_112 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_113 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_114 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_3; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_115 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_116 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_117 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_118 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_119 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_120 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_121 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_122 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_4; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_123 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_124 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_125 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_126 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_127 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_128 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_129 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_130 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_5; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_131 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_132 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_133 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_134 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_135 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_136 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_137 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_138 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_6; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_139 = 3'h0 == REG_1 ? 1'h0 : mispredict_vec_0_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_140 = 3'h1 == REG_1 ? 1'h0 : mispredict_vec_1_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_141 = 3'h2 == REG_1 ? 1'h0 : mispredict_vec_2_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_142 = 3'h3 == REG_1 ? 1'h0 : mispredict_vec_3_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_143 = 3'h4 == REG_1 ? 1'h0 : mispredict_vec_4_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_144 = 3'h5 == REG_1 ? 1'h0 : mispredict_vec_5_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_145 = 3'h6 == REG_1 ? 1'h0 : mispredict_vec_6_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_146 = 3'h7 == REG_1 ? 1'h0 : mispredict_vec_7_7; // @[NewFtq.scala 574:27 612:{52,52}]
  wire  _GEN_147 = REG ? _GEN_83 : mispredict_vec_0_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_148 = REG ? _GEN_84 : mispredict_vec_1_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_149 = REG ? _GEN_85 : mispredict_vec_2_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_150 = REG ? _GEN_86 : mispredict_vec_3_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_151 = REG ? _GEN_87 : mispredict_vec_4_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_152 = REG ? _GEN_88 : mispredict_vec_5_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_153 = REG ? _GEN_89 : mispredict_vec_6_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_154 = REG ? _GEN_90 : mispredict_vec_7_0; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_155 = REG ? _GEN_91 : mispredict_vec_0_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_156 = REG ? _GEN_92 : mispredict_vec_1_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_157 = REG ? _GEN_93 : mispredict_vec_2_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_158 = REG ? _GEN_94 : mispredict_vec_3_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_159 = REG ? _GEN_95 : mispredict_vec_4_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_160 = REG ? _GEN_96 : mispredict_vec_5_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_161 = REG ? _GEN_97 : mispredict_vec_6_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_162 = REG ? _GEN_98 : mispredict_vec_7_1; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_163 = REG ? _GEN_99 : mispredict_vec_0_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_164 = REG ? _GEN_100 : mispredict_vec_1_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_165 = REG ? _GEN_101 : mispredict_vec_2_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_166 = REG ? _GEN_102 : mispredict_vec_3_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_167 = REG ? _GEN_103 : mispredict_vec_4_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_168 = REG ? _GEN_104 : mispredict_vec_5_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_169 = REG ? _GEN_105 : mispredict_vec_6_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_170 = REG ? _GEN_106 : mispredict_vec_7_2; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_171 = REG ? _GEN_107 : mispredict_vec_0_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_172 = REG ? _GEN_108 : mispredict_vec_1_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_173 = REG ? _GEN_109 : mispredict_vec_2_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_174 = REG ? _GEN_110 : mispredict_vec_3_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_175 = REG ? _GEN_111 : mispredict_vec_4_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_176 = REG ? _GEN_112 : mispredict_vec_5_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_177 = REG ? _GEN_113 : mispredict_vec_6_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_178 = REG ? _GEN_114 : mispredict_vec_7_3; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_179 = REG ? _GEN_115 : mispredict_vec_0_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_180 = REG ? _GEN_116 : mispredict_vec_1_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_181 = REG ? _GEN_117 : mispredict_vec_2_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_182 = REG ? _GEN_118 : mispredict_vec_3_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_183 = REG ? _GEN_119 : mispredict_vec_4_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_184 = REG ? _GEN_120 : mispredict_vec_5_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_185 = REG ? _GEN_121 : mispredict_vec_6_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_186 = REG ? _GEN_122 : mispredict_vec_7_4; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_187 = REG ? _GEN_123 : mispredict_vec_0_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_188 = REG ? _GEN_124 : mispredict_vec_1_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_189 = REG ? _GEN_125 : mispredict_vec_2_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_190 = REG ? _GEN_126 : mispredict_vec_3_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_191 = REG ? _GEN_127 : mispredict_vec_4_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_192 = REG ? _GEN_128 : mispredict_vec_5_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_193 = REG ? _GEN_129 : mispredict_vec_6_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_194 = REG ? _GEN_130 : mispredict_vec_7_5; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_195 = REG ? _GEN_131 : mispredict_vec_0_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_196 = REG ? _GEN_132 : mispredict_vec_1_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_197 = REG ? _GEN_133 : mispredict_vec_2_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_198 = REG ? _GEN_134 : mispredict_vec_3_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_199 = REG ? _GEN_135 : mispredict_vec_4_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_200 = REG ? _GEN_136 : mispredict_vec_5_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_201 = REG ? _GEN_137 : mispredict_vec_6_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_202 = REG ? _GEN_138 : mispredict_vec_7_6; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_203 = REG ? _GEN_139 : mispredict_vec_0_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_204 = REG ? _GEN_140 : mispredict_vec_1_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_205 = REG ? _GEN_141 : mispredict_vec_2_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_206 = REG ? _GEN_142 : mispredict_vec_3_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_207 = REG ? _GEN_143 : mispredict_vec_4_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_208 = REG ? _GEN_144 : mispredict_vec_5_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_209 = REG ? _GEN_145 : mispredict_vec_6_7; // @[NewFtq.scala 574:27 611:37]
  wire  _GEN_210 = REG ? _GEN_146 : mispredict_vec_7_7; // @[NewFtq.scala 574:27 611:37]
  wire [1:0] _GEN_211 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_212 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_213 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_214 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_215 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_216 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_217 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_218 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h0 ? 2'h0 : commitStateQueue_0_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_219 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_220 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_221 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_222 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_223 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_224 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_225 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_226 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h1 ? 2'h0 : commitStateQueue_1_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_227 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_228 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_229 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_230 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_231 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_232 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_233 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_234 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h2 ? 2'h0 : commitStateQueue_2_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_235 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_236 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_237 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_238 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_239 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_240 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_241 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_242 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_value == 3'h3 ? 2'h0 : commitStateQueue_3_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_243 = copied_last_cycle_bpu_in_REG_5 ? _GEN_211 : commitStateQueue_0_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_244 = copied_last_cycle_bpu_in_REG_5 ? _GEN_212 : commitStateQueue_0_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_245 = copied_last_cycle_bpu_in_REG_5 ? _GEN_213 : commitStateQueue_0_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_246 = copied_last_cycle_bpu_in_REG_5 ? _GEN_214 : commitStateQueue_0_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_247 = copied_last_cycle_bpu_in_REG_5 ? _GEN_215 : commitStateQueue_0_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_248 = copied_last_cycle_bpu_in_REG_5 ? _GEN_216 : commitStateQueue_0_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_249 = copied_last_cycle_bpu_in_REG_5 ? _GEN_217 : commitStateQueue_0_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_250 = copied_last_cycle_bpu_in_REG_5 ? _GEN_218 : commitStateQueue_0_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_251 = copied_last_cycle_bpu_in_REG_5 ? _GEN_219 : commitStateQueue_1_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_252 = copied_last_cycle_bpu_in_REG_5 ? _GEN_220 : commitStateQueue_1_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_253 = copied_last_cycle_bpu_in_REG_5 ? _GEN_221 : commitStateQueue_1_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_254 = copied_last_cycle_bpu_in_REG_5 ? _GEN_222 : commitStateQueue_1_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_255 = copied_last_cycle_bpu_in_REG_5 ? _GEN_223 : commitStateQueue_1_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_256 = copied_last_cycle_bpu_in_REG_5 ? _GEN_224 : commitStateQueue_1_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_257 = copied_last_cycle_bpu_in_REG_5 ? _GEN_225 : commitStateQueue_1_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_258 = copied_last_cycle_bpu_in_REG_5 ? _GEN_226 : commitStateQueue_1_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_259 = copied_last_cycle_bpu_in_REG_5 ? _GEN_227 : commitStateQueue_2_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_260 = copied_last_cycle_bpu_in_REG_5 ? _GEN_228 : commitStateQueue_2_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_261 = copied_last_cycle_bpu_in_REG_5 ? _GEN_229 : commitStateQueue_2_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_262 = copied_last_cycle_bpu_in_REG_5 ? _GEN_230 : commitStateQueue_2_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_263 = copied_last_cycle_bpu_in_REG_5 ? _GEN_231 : commitStateQueue_2_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_264 = copied_last_cycle_bpu_in_REG_5 ? _GEN_232 : commitStateQueue_2_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_265 = copied_last_cycle_bpu_in_REG_5 ? _GEN_233 : commitStateQueue_2_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_266 = copied_last_cycle_bpu_in_REG_5 ? _GEN_234 : commitStateQueue_2_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_267 = copied_last_cycle_bpu_in_REG_5 ? _GEN_235 : commitStateQueue_3_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_268 = copied_last_cycle_bpu_in_REG_5 ? _GEN_236 : commitStateQueue_3_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_269 = copied_last_cycle_bpu_in_REG_5 ? _GEN_237 : commitStateQueue_3_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_270 = copied_last_cycle_bpu_in_REG_5 ? _GEN_238 : commitStateQueue_3_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_271 = copied_last_cycle_bpu_in_REG_5 ? _GEN_239 : commitStateQueue_3_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_272 = copied_last_cycle_bpu_in_REG_5 ? _GEN_240 : commitStateQueue_3_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_273 = copied_last_cycle_bpu_in_REG_5 ? _GEN_241 : commitStateQueue_3_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_274 = copied_last_cycle_bpu_in_REG_5 ? _GEN_242 : commitStateQueue_3_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_275 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_276 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_277 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_278 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_279 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_280 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_281 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_282 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h4 ? 2'h0 : commitStateQueue_4_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_283 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_284 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_285 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_286 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_287 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_288 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_289 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_290 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h5 ? 2'h0 : commitStateQueue_5_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_291 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_292 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_293 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_294 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_295 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_296 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_297 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_298 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h6 ? 2'h0 : commitStateQueue_6_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_299 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_0; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_300 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_1; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_301 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_2; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_302 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_3; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_303 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_4; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_304 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_5; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_305 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_6; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_306 = copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value == 3'h7 ? 2'h0 : commitStateQueue_7_7; // @[NewFtq.scala 578:33 623:54 624:49]
  wire [1:0] _GEN_307 = copied_last_cycle_bpu_in_REG_6 ? _GEN_275 : commitStateQueue_4_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_308 = copied_last_cycle_bpu_in_REG_6 ? _GEN_276 : commitStateQueue_4_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_309 = copied_last_cycle_bpu_in_REG_6 ? _GEN_277 : commitStateQueue_4_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_310 = copied_last_cycle_bpu_in_REG_6 ? _GEN_278 : commitStateQueue_4_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_311 = copied_last_cycle_bpu_in_REG_6 ? _GEN_279 : commitStateQueue_4_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_312 = copied_last_cycle_bpu_in_REG_6 ? _GEN_280 : commitStateQueue_4_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_313 = copied_last_cycle_bpu_in_REG_6 ? _GEN_281 : commitStateQueue_4_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_314 = copied_last_cycle_bpu_in_REG_6 ? _GEN_282 : commitStateQueue_4_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_315 = copied_last_cycle_bpu_in_REG_6 ? _GEN_283 : commitStateQueue_5_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_316 = copied_last_cycle_bpu_in_REG_6 ? _GEN_284 : commitStateQueue_5_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_317 = copied_last_cycle_bpu_in_REG_6 ? _GEN_285 : commitStateQueue_5_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_318 = copied_last_cycle_bpu_in_REG_6 ? _GEN_286 : commitStateQueue_5_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_319 = copied_last_cycle_bpu_in_REG_6 ? _GEN_287 : commitStateQueue_5_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_320 = copied_last_cycle_bpu_in_REG_6 ? _GEN_288 : commitStateQueue_5_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_321 = copied_last_cycle_bpu_in_REG_6 ? _GEN_289 : commitStateQueue_5_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_322 = copied_last_cycle_bpu_in_REG_6 ? _GEN_290 : commitStateQueue_5_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_323 = copied_last_cycle_bpu_in_REG_6 ? _GEN_291 : commitStateQueue_6_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_324 = copied_last_cycle_bpu_in_REG_6 ? _GEN_292 : commitStateQueue_6_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_325 = copied_last_cycle_bpu_in_REG_6 ? _GEN_293 : commitStateQueue_6_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_326 = copied_last_cycle_bpu_in_REG_6 ? _GEN_294 : commitStateQueue_6_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_327 = copied_last_cycle_bpu_in_REG_6 ? _GEN_295 : commitStateQueue_6_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_328 = copied_last_cycle_bpu_in_REG_6 ? _GEN_296 : commitStateQueue_6_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_329 = copied_last_cycle_bpu_in_REG_6 ? _GEN_297 : commitStateQueue_6_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_330 = copied_last_cycle_bpu_in_REG_6 ? _GEN_298 : commitStateQueue_6_7; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_331 = copied_last_cycle_bpu_in_REG_6 ? _GEN_299 : commitStateQueue_7_0; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_332 = copied_last_cycle_bpu_in_REG_6 ? _GEN_300 : commitStateQueue_7_1; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_333 = copied_last_cycle_bpu_in_REG_6 ? _GEN_301 : commitStateQueue_7_2; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_334 = copied_last_cycle_bpu_in_REG_6 ? _GEN_302 : commitStateQueue_7_3; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_335 = copied_last_cycle_bpu_in_REG_6 ? _GEN_303 : commitStateQueue_7_4; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_336 = copied_last_cycle_bpu_in_REG_6 ? _GEN_304 : commitStateQueue_7_5; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_337 = copied_last_cycle_bpu_in_REG_6 ? _GEN_305 : commitStateQueue_7_6; // @[NewFtq.scala 619:17 578:33]
  wire [1:0] _GEN_338 = copied_last_cycle_bpu_in_REG_6 ? _GEN_306 : commitStateQueue_7_7; // @[NewFtq.scala 619:17 578:33]
  reg  io_toBackend_newest_entry_ptr_REG_flag; // @[NewFtq.scala 631:43]
  reg [2:0] io_toBackend_newest_entry_ptr_REG_value; // @[NewFtq.scala 631:43]
  reg [38:0] io_toBackend_newest_entry_target_REG; // @[NewFtq.scala 632:46]
  wire [3:0] _bpuPtr_new_ptr_T = {bpuPtr_flag,bpuPtr_value}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_2994 = {{3'd0}, enq_fire}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _bpuPtr_new_ptr_T_2 = _bpuPtr_new_ptr_T + _GEN_2994; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] bpuPtr_new_ptr_value = _bpuPtr_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  bpuPtr_new_ptr_flag = _bpuPtr_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire  _T_42 = io_toIfu_req_ready & io_toIfu_req_valid; // @[Decoupled.scala 50:35]
  wire [3:0] _ifuPtrPlus2_write_new_ptr_T = {ifuPtrPlus2_flag,ifuPtrPlus2_value}; // @[Cat.scala 31:58]
  wire [3:0] _ifuPtrPlus2_write_new_ptr_T_2 = _ifuPtrPlus2_write_new_ptr_T + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] ifuPtrPlus2_write_new_ptr_value = _ifuPtrPlus2_write_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  ifuPtrPlus2_write_new_ptr_flag = _ifuPtrPlus2_write_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire  _GEN_339 = _T_42 & allowToIfu ? ifuPtrPlus1_flag : ifuPtr_flag; // @[NewFtq.scala 637:42 638:18]
  wire [2:0] _GEN_340 = _T_42 & allowToIfu ? ifuPtrPlus1_value : ifuPtr_value; // @[NewFtq.scala 637:42 638:18]
  wire  _GEN_341 = _T_42 & allowToIfu ? ifuPtrPlus2_flag : ifuPtrPlus1_flag; // @[NewFtq.scala 637:42 639:23]
  wire [2:0] _GEN_342 = _T_42 & allowToIfu ? ifuPtrPlus2_value : ifuPtrPlus1_value; // @[NewFtq.scala 637:42 639:23]
  wire  _GEN_343 = _T_42 & allowToIfu ? ifuPtrPlus2_write_new_ptr_flag : ifuPtrPlus2_flag; // @[NewFtq.scala 637:42 640:23]
  wire [2:0] _GEN_344 = _T_42 & allowToIfu ? ifuPtrPlus2_write_new_ptr_value : ifuPtrPlus2_value; // @[NewFtq.scala 637:42 640:23]
  wire [1:0] _entry_hit_status_T = io_fromBpu_resp_bits_s2_full_pred_3_hit ? 2'h2 : 2'h0; // @[NewFtq.scala 645:55]
  wire [1:0] _GEN_345 = 3'h0 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_0; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_346 = 3'h1 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_1; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_347 = 3'h2 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_2; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_348 = 3'h3 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_3; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_349 = 3'h4 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_4; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_350 = 3'h5 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_5; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_351 = 3'h6 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_6; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_352 = 3'h7 == io_fromBpu_resp_bits_s2_ftq_idx_value ? _entry_hit_status_T : entry_hit_status_7; // @[NewFtq.scala 586:33 645:{49,49}]
  wire [1:0] _GEN_353 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_345 : entry_hit_status_0; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_354 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_346 : entry_hit_status_1; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_355 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_347 : entry_hit_status_2; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_356 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_348 : entry_hit_status_3; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_357 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_349 : entry_hit_status_4; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_358 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_350 : entry_hit_status_5; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_359 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_351 : entry_hit_status_6; // @[NewFtq.scala 644:31 586:33]
  wire [1:0] _GEN_360 = io_fromBpu_resp_bits_s2_valid_3 ? _GEN_352 : entry_hit_status_7; // @[NewFtq.scala 644:31 586:33]
  wire [3:0] _bpuPtr_new_ptr_T_5 = {io_fromBpu_resp_bits_s2_ftq_idx_flag,io_fromBpu_resp_bits_s2_ftq_idx_value}; // @[Cat.scala 31:58]
  wire [3:0] _bpuPtr_new_ptr_T_7 = _bpuPtr_new_ptr_T_5 + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] bpuPtr_new_ptr_1_value = _bpuPtr_new_ptr_T_7[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  bpuPtr_new_ptr_1_flag = _bpuPtr_new_ptr_T_7[3]; // @[CircularQueuePtr.scala 39:59]
  wire  differentFlag = ifuPtr_flag ^ io_fromBpu_resp_bits_s2_ftq_idx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  compare = ifuPtr_value < io_fromBpu_resp_bits_s2_ftq_idx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _T_44 = differentFlag ^ compare; // @[CircularQueuePtr.scala 74:19]
  wire [3:0] _ifuPtrPlus2_write_new_ptr_T_7 = _bpuPtr_new_ptr_T_5 + 4'h2; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] ifuPtrPlus2_write_new_ptr_1_value = _ifuPtrPlus2_write_new_ptr_T_7[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  ifuPtrPlus2_write_new_ptr_1_flag = _ifuPtrPlus2_write_new_ptr_T_7[3]; // @[CircularQueuePtr.scala 39:59]
  wire  _GEN_361 = ~_T_44 ? io_fromBpu_resp_bits_s2_ftq_idx_flag : _GEN_339; // @[NewFtq.scala 655:51 656:20]
  wire [2:0] _GEN_362 = ~_T_44 ? io_fromBpu_resp_bits_s2_ftq_idx_value : _GEN_340; // @[NewFtq.scala 655:51 656:20]
  wire  _GEN_363 = ~_T_44 ? bpuPtr_new_ptr_1_flag : _GEN_341; // @[NewFtq.scala 655:51 657:25]
  wire [2:0] _GEN_364 = ~_T_44 ? bpuPtr_new_ptr_1_value : _GEN_342; // @[NewFtq.scala 655:51 657:25]
  wire  _GEN_365 = ~_T_44 ? ifuPtrPlus2_write_new_ptr_1_flag : _GEN_343; // @[NewFtq.scala 655:51 658:25]
  wire [2:0] _GEN_366 = ~_T_44 ? ifuPtrPlus2_write_new_ptr_1_value : _GEN_344; // @[NewFtq.scala 655:51 658:25]
  wire  _GEN_379 = bpu_s2_redirect ? _GEN_361 : _GEN_339; // @[NewFtq.scala 651:26]
  wire [2:0] _GEN_380 = bpu_s2_redirect ? _GEN_362 : _GEN_340; // @[NewFtq.scala 651:26]
  wire  _GEN_381 = bpu_s2_redirect ? _GEN_363 : _GEN_341; // @[NewFtq.scala 651:26]
  wire [2:0] _GEN_382 = bpu_s2_redirect ? _GEN_364 : _GEN_342; // @[NewFtq.scala 651:26]
  wire  _GEN_383 = bpu_s2_redirect ? _GEN_365 : _GEN_343; // @[NewFtq.scala 651:26]
  wire [2:0] _GEN_384 = bpu_s2_redirect ? _GEN_366 : _GEN_344; // @[NewFtq.scala 651:26]
  wire [3:0] _bpuPtr_new_ptr_T_10 = {io_fromBpu_resp_bits_s3_ftq_idx_flag,io_fromBpu_resp_bits_s3_ftq_idx_value}; // @[Cat.scala 31:58]
  wire [3:0] _bpuPtr_new_ptr_T_12 = _bpuPtr_new_ptr_T_10 + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] bpuPtr_new_ptr_2_value = _bpuPtr_new_ptr_T_12[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  bpuPtr_new_ptr_2_flag = _bpuPtr_new_ptr_T_12[3]; // @[CircularQueuePtr.scala 39:59]
  wire  differentFlag_1 = ifuPtr_flag ^ io_fromBpu_resp_bits_s3_ftq_idx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  compare_1 = ifuPtr_value < io_fromBpu_resp_bits_s3_ftq_idx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _T_46 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 74:19]
  wire [3:0] _ifuPtrPlus2_write_new_ptr_T_12 = _bpuPtr_new_ptr_T_10 + 4'h2; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] ifuPtrPlus2_write_new_ptr_2_value = _ifuPtrPlus2_write_new_ptr_T_12[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  ifuPtrPlus2_write_new_ptr_2_flag = _ifuPtrPlus2_write_new_ptr_T_12[3]; // @[CircularQueuePtr.scala 39:59]
  wire [2:0] _GEN_386 = ~_T_46 ? io_fromBpu_resp_bits_s3_ftq_idx_value : _GEN_380; // @[NewFtq.scala 668:51 669:20]
  wire [2:0] _GEN_388 = ~_T_46 ? bpuPtr_new_ptr_2_value : _GEN_382; // @[NewFtq.scala 668:51 670:25]
  wire [2:0] _GEN_390 = ~_T_46 ? ifuPtrPlus2_write_new_ptr_2_value : _GEN_384; // @[NewFtq.scala 668:51 671:25]
  wire [2:0] _GEN_404 = bpu_s3_redirect ? _GEN_386 : _GEN_380; // @[NewFtq.scala 664:26]
  wire [2:0] _GEN_406 = bpu_s3_redirect ? _GEN_388 : _GEN_382; // @[NewFtq.scala 664:26]
  wire [2:0] _GEN_408 = bpu_s3_redirect ? _GEN_390 : _GEN_384; // @[NewFtq.scala 664:26]
  wire [3:0] _T_60 = {copied_bpu_ptr_0_flag,copied_bpu_ptr_0_value}; // @[CircularQueuePtr.scala 63:40]
  wire [3:0] _T_63 = {copied_bpu_ptr_1_flag,copied_bpu_ptr_1_value}; // @[CircularQueuePtr.scala 63:40]
  wire [3:0] _T_66 = {copied_bpu_ptr_2_flag,copied_bpu_ptr_2_value}; // @[CircularQueuePtr.scala 63:40]
  reg [38:0] bpu_in_bypass_buf_startAddr; // @[Reg.scala 16:16]
  reg [38:0] bpu_in_bypass_buf_nextLineAddr; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_0; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_1; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_2; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_3; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_4; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_5; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_6; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_isNextMask_7; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_buf_fallThruError; // @[Reg.scala 16:16]
  reg [38:0] copied_bpu_in_bypass_buf_rstartAddr; // @[Reg.scala 16:16]
  reg [38:0] copied_bpu_in_bypass_buf_rnextLineAddr; // @[Reg.scala 16:16]
  reg [38:0] copied_bpu_in_bypass_buf_r1_startAddr; // @[Reg.scala 16:16]
  reg [38:0] copied_bpu_in_bypass_buf_r1_nextLineAddr; // @[Reg.scala 16:16]
  reg [38:0] copied_bpu_in_bypass_buf_r2_startAddr; // @[Reg.scala 16:16]
  reg [38:0] copied_bpu_in_bypass_buf_r2_nextLineAddr; // @[Reg.scala 16:16]
  reg  bpu_in_bypass_ptr_flag; // @[NewFtq.scala 689:34]
  reg [2:0] bpu_in_bypass_ptr_value; // @[NewFtq.scala 689:34]
  reg  last_cycle_to_ifu_fire; // @[NewFtq.scala 690:39]
  reg  copied_bpu_in_bypass_ptr_REG_flag; // @[NewFtq.scala 692:67]
  reg [2:0] copied_bpu_in_bypass_ptr_REG_value; // @[NewFtq.scala 692:67]
  reg  copied_bpu_in_bypass_ptr_REG_1_flag; // @[NewFtq.scala 692:67]
  reg [2:0] copied_bpu_in_bypass_ptr_REG_1_value; // @[NewFtq.scala 692:67]
  reg  copied_bpu_in_bypass_ptr_REG_2_flag; // @[NewFtq.scala 692:67]
  reg [2:0] copied_bpu_in_bypass_ptr_REG_2_value; // @[NewFtq.scala 692:67]
  reg  copied_last_cycle_to_ifu_fire_REG; // @[NewFtq.scala 693:72]
  reg  copied_last_cycle_to_ifu_fire_REG_1; // @[NewFtq.scala 693:72]
  reg  copied_last_cycle_to_ifu_fire_REG_2; // @[NewFtq.scala 693:72]
  wire  _GEN_476 = 3'h1 == ifuPtr_value ? entry_fetch_status_1 : entry_fetch_status_0; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_477 = 3'h2 == ifuPtr_value ? entry_fetch_status_2 : _GEN_476; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_478 = 3'h3 == ifuPtr_value ? entry_fetch_status_3 : _GEN_477; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_479 = 3'h4 == ifuPtr_value ? entry_fetch_status_4 : _GEN_478; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_480 = 3'h5 == ifuPtr_value ? entry_fetch_status_5 : _GEN_479; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_481 = 3'h6 == ifuPtr_value ? entry_fetch_status_6 : _GEN_480; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_482 = 3'h7 == ifuPtr_value ? entry_fetch_status_7 : _GEN_481; // @[NewFtq.scala 708:{68,68}]
  wire  _GEN_484 = 3'h1 == ifuPtr_value ? cfiIndex_vec_1_valid : cfiIndex_vec_0_valid; // @[]
  wire  _GEN_485 = 3'h2 == ifuPtr_value ? cfiIndex_vec_2_valid : _GEN_484; // @[]
  wire  _GEN_486 = 3'h3 == ifuPtr_value ? cfiIndex_vec_3_valid : _GEN_485; // @[]
  wire  _GEN_487 = 3'h4 == ifuPtr_value ? cfiIndex_vec_4_valid : _GEN_486; // @[]
  wire  _GEN_488 = 3'h5 == ifuPtr_value ? cfiIndex_vec_5_valid : _GEN_487; // @[]
  wire  _GEN_489 = 3'h6 == ifuPtr_value ? cfiIndex_vec_6_valid : _GEN_488; // @[]
  wire  _GEN_490 = 3'h7 == ifuPtr_value ? cfiIndex_vec_7_valid : _GEN_489; // @[]
  wire [2:0] _GEN_492 = 3'h1 == ifuPtr_value ? cfiIndex_vec_1_bits : cfiIndex_vec_0_bits; // @[]
  wire [2:0] _GEN_493 = 3'h2 == ifuPtr_value ? cfiIndex_vec_2_bits : _GEN_492; // @[]
  wire [2:0] _GEN_494 = 3'h3 == ifuPtr_value ? cfiIndex_vec_3_bits : _GEN_493; // @[]
  wire [2:0] _GEN_495 = 3'h4 == ifuPtr_value ? cfiIndex_vec_4_bits : _GEN_494; // @[]
  wire [2:0] _GEN_496 = 3'h5 == ifuPtr_value ? cfiIndex_vec_5_bits : _GEN_495; // @[]
  wire [2:0] _GEN_497 = 3'h6 == ifuPtr_value ? cfiIndex_vec_6_bits : _GEN_496; // @[]
  wire [2:0] _GEN_498 = 3'h7 == ifuPtr_value ? cfiIndex_vec_7_bits : _GEN_497; // @[]
  reg [38:0] pc_mem_ifu_ptr_rdata_REG_startAddr; // @[NewFtq.scala 712:65]
  reg [38:0] pc_mem_ifu_ptr_rdata_REG_nextLineAddr; // @[NewFtq.scala 712:65]
  reg [38:0] pc_mem_ifu_ptr_rdata_REG_1_startAddr; // @[NewFtq.scala 712:65]
  reg [38:0] pc_mem_ifu_ptr_rdata_REG_1_nextLineAddr; // @[NewFtq.scala 712:65]
  reg [38:0] pc_mem_ifu_ptr_rdata_REG_2_startAddr; // @[NewFtq.scala 712:65]
  reg [38:0] pc_mem_ifu_ptr_rdata_REG_2_nextLineAddr; // @[NewFtq.scala 712:65]
  reg [38:0] pc_mem_ifu_plus1_rdata_REG_startAddr; // @[NewFtq.scala 713:65]
  reg [38:0] pc_mem_ifu_plus1_rdata_REG_nextLineAddr; // @[NewFtq.scala 713:65]
  reg [38:0] pc_mem_ifu_plus1_rdata_REG_1_startAddr; // @[NewFtq.scala 713:65]
  reg [38:0] pc_mem_ifu_plus1_rdata_REG_1_nextLineAddr; // @[NewFtq.scala 713:65]
  reg [38:0] pc_mem_ifu_plus1_rdata_REG_2_startAddr; // @[NewFtq.scala 713:65]
  reg [38:0] pc_mem_ifu_plus1_rdata_REG_2_nextLineAddr; // @[NewFtq.scala 713:65]
  wire  _GEN_508 = 3'h1 == ifuPtrPlus1_value ? entry_fetch_status_1 : entry_fetch_status_0; // @[NewFtq.scala 716:{106,106}]
  wire  _GEN_509 = 3'h2 == ifuPtrPlus1_value ? entry_fetch_status_2 : _GEN_508; // @[NewFtq.scala 716:{106,106}]
  wire  _GEN_510 = 3'h3 == ifuPtrPlus1_value ? entry_fetch_status_3 : _GEN_509; // @[NewFtq.scala 716:{106,106}]
  wire  _GEN_511 = 3'h4 == ifuPtrPlus1_value ? entry_fetch_status_4 : _GEN_510; // @[NewFtq.scala 716:{106,106}]
  wire  _GEN_512 = 3'h5 == ifuPtrPlus1_value ? entry_fetch_status_5 : _GEN_511; // @[NewFtq.scala 716:{106,106}]
  wire  _GEN_513 = 3'h6 == ifuPtrPlus1_value ? entry_fetch_status_6 : _GEN_512; // @[NewFtq.scala 716:{106,106}]
  wire  _GEN_514 = 3'h7 == ifuPtrPlus1_value ? entry_fetch_status_7 : _GEN_513; // @[NewFtq.scala 716:{106,106}]
  reg  copied_ifu_plus1_to_send_REG; // @[NewFtq.scala 716:67]
  wire [3:0] _copied_ifu_plus1_to_send_T_1 = {bpu_in_bypass_ptr_flag,bpu_in_bypass_ptr_value}; // @[CircularQueuePtr.scala 61:40]
  wire [3:0] _copied_ifu_plus1_to_send_T_2 = {ifuPtrPlus1_flag,ifuPtrPlus1_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _copied_ifu_plus1_to_send_T_3 = _copied_ifu_plus1_to_send_T_1 == _copied_ifu_plus1_to_send_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _copied_ifu_plus1_to_send_T_4 = last_cycle_bpu_in & _copied_ifu_plus1_to_send_T_3; // @[NewFtq.scala 716:150]
  reg  copied_ifu_plus1_to_send_REG_1; // @[NewFtq.scala 716:131]
  wire  copied_ifu_plus1_to_send_0 = copied_ifu_plus1_to_send_REG | copied_ifu_plus1_to_send_REG_1; // @[NewFtq.scala 716:121]
  reg  copied_ifu_plus1_to_send_REG_2; // @[NewFtq.scala 716:67]
  reg  copied_ifu_plus1_to_send_REG_3; // @[NewFtq.scala 716:131]
  wire  copied_ifu_plus1_to_send_1 = copied_ifu_plus1_to_send_REG_2 | copied_ifu_plus1_to_send_REG_3; // @[NewFtq.scala 716:121]
  reg  copied_ifu_plus1_to_send_REG_4; // @[NewFtq.scala 716:67]
  reg  copied_ifu_plus1_to_send_REG_5; // @[NewFtq.scala 716:131]
  wire  copied_ifu_plus1_to_send_2 = copied_ifu_plus1_to_send_REG_4 | copied_ifu_plus1_to_send_REG_5; // @[NewFtq.scala 716:121]
  reg  copied_ifu_ptr_to_send_REG; // @[NewFtq.scala 717:67]
  wire [3:0] _copied_ifu_ptr_to_send_T_2 = {ifuPtr_flag,ifuPtr_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _copied_ifu_ptr_to_send_T_3 = _copied_ifu_plus1_to_send_T_1 == _copied_ifu_ptr_to_send_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _copied_ifu_ptr_to_send_T_4 = last_cycle_bpu_in & _copied_ifu_ptr_to_send_T_3; // @[NewFtq.scala 717:145]
  reg  copied_ifu_ptr_to_send_REG_1; // @[NewFtq.scala 717:126]
  wire  copied_ifu_ptr_to_send_0 = copied_ifu_ptr_to_send_REG | copied_ifu_ptr_to_send_REG_1; // @[NewFtq.scala 717:116]
  reg  copied_ifu_ptr_to_send_REG_2; // @[NewFtq.scala 717:67]
  reg  copied_ifu_ptr_to_send_REG_3; // @[NewFtq.scala 717:126]
  wire  copied_ifu_ptr_to_send_1 = copied_ifu_ptr_to_send_REG_2 | copied_ifu_ptr_to_send_REG_3; // @[NewFtq.scala 717:116]
  reg  copied_ifu_ptr_to_send_REG_4; // @[NewFtq.scala 717:67]
  reg  copied_ifu_ptr_to_send_REG_5; // @[NewFtq.scala 717:126]
  wire  copied_ifu_ptr_to_send_2 = copied_ifu_ptr_to_send_REG_4 | copied_ifu_ptr_to_send_REG_5; // @[NewFtq.scala 717:116]
  wire [3:0] _T_75 = {copied_bpu_in_bypass_ptr_REG_flag,copied_bpu_in_bypass_ptr_REG_value}; // @[CircularQueuePtr.scala 61:40]
  wire [3:0] _T_76 = {copied_ifu_ptr_0_flag,copied_ifu_ptr_0_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _T_77 = _T_75 == _T_76; // @[CircularQueuePtr.scala 61:47]
  wire [38:0] _GEN_515 = copied_last_cycle_to_ifu_fire_REG ? pc_mem_ifu_plus1_rdata_REG_startAddr :
    pc_mem_ifu_ptr_rdata_REG_startAddr; // @[NewFtq.scala 723:49 724:27 727:27]
  wire [38:0] _GEN_516 = copied_last_cycle_to_ifu_fire_REG ? pc_mem_ifu_plus1_rdata_REG_nextLineAddr :
    pc_mem_ifu_ptr_rdata_REG_nextLineAddr; // @[NewFtq.scala 723:49 724:27 727:27]
  wire  _GEN_526 = copied_last_cycle_to_ifu_fire_REG ? copied_ifu_plus1_to_send_0 : copied_ifu_ptr_to_send_0; // @[NewFtq.scala 723:49 725:32 728:32]
  wire  toICacheEntryToSend_0 = copied_last_cycle_bpu_in_REG & _T_77 | _GEN_526; // @[NewFtq.scala 720:91 722:32]
  wire [3:0] _T_79 = {copied_bpu_in_bypass_ptr_REG_1_flag,copied_bpu_in_bypass_ptr_REG_1_value}; // @[CircularQueuePtr.scala 61:40]
  wire [3:0] _T_80 = {copied_ifu_ptr_1_flag,copied_ifu_ptr_1_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _T_81 = _T_79 == _T_80; // @[CircularQueuePtr.scala 61:47]
  wire [38:0] _GEN_539 = copied_last_cycle_to_ifu_fire_REG_1 ? pc_mem_ifu_plus1_rdata_REG_1_startAddr :
    pc_mem_ifu_ptr_rdata_REG_1_startAddr; // @[NewFtq.scala 723:49 724:27 727:27]
  wire [38:0] _GEN_540 = copied_last_cycle_to_ifu_fire_REG_1 ? pc_mem_ifu_plus1_rdata_REG_1_nextLineAddr :
    pc_mem_ifu_ptr_rdata_REG_1_nextLineAddr; // @[NewFtq.scala 723:49 724:27 727:27]
  wire  _GEN_550 = copied_last_cycle_to_ifu_fire_REG_1 ? copied_ifu_plus1_to_send_1 : copied_ifu_ptr_to_send_1; // @[NewFtq.scala 723:49 725:32 728:32]
  wire  toICacheEntryToSend_1 = copied_last_cycle_bpu_in_REG_1 & _T_81 | _GEN_550; // @[NewFtq.scala 720:91 722:32]
  wire [3:0] _T_83 = {copied_bpu_in_bypass_ptr_REG_2_flag,copied_bpu_in_bypass_ptr_REG_2_value}; // @[CircularQueuePtr.scala 61:40]
  wire [3:0] _T_84 = {copied_ifu_ptr_2_flag,copied_ifu_ptr_2_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _T_85 = _T_83 == _T_84; // @[CircularQueuePtr.scala 61:47]
  wire [38:0] _GEN_563 = copied_last_cycle_to_ifu_fire_REG_2 ? pc_mem_ifu_plus1_rdata_REG_2_startAddr :
    pc_mem_ifu_ptr_rdata_REG_2_startAddr; // @[NewFtq.scala 723:49 724:27 727:27]
  wire [38:0] _GEN_564 = copied_last_cycle_to_ifu_fire_REG_2 ? pc_mem_ifu_plus1_rdata_REG_2_nextLineAddr :
    pc_mem_ifu_ptr_rdata_REG_2_nextLineAddr; // @[NewFtq.scala 723:49 724:27 727:27]
  wire  _GEN_574 = copied_last_cycle_to_ifu_fire_REG_2 ? copied_ifu_plus1_to_send_2 : copied_ifu_ptr_to_send_2; // @[NewFtq.scala 723:49 725:32 728:32]
  wire  toICacheEntryToSend_2 = copied_last_cycle_bpu_in_REG_2 & _T_85 | _GEN_574; // @[NewFtq.scala 720:91 722:32]
  reg [38:0] toIfuPcBundle_REG_startAddr; // @[NewFtq.scala 740:29]
  reg [38:0] toIfuPcBundle_REG_nextLineAddr; // @[NewFtq.scala 740:29]
  reg  toIfuPcBundle_REG_fallThruError; // @[NewFtq.scala 740:29]
  reg  entry_is_to_send_REG; // @[NewFtq.scala 741:32]
  reg  entry_is_to_send_REG_1; // @[NewFtq.scala 742:32]
  wire [3:0] _entry_next_addr_T_5 = {newest_entry_ptr_flag,newest_entry_ptr_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _entry_next_addr_T_6 = _copied_ifu_ptr_to_send_T_2 == _entry_next_addr_T_5; // @[CircularQueuePtr.scala 61:47]
  reg [38:0] entry_next_addr_REG; // @[NewFtq.scala 747:36]
  wire [38:0] _entry_next_addr_T_7 = _entry_next_addr_T_6 ? newest_entry_target : entry_next_addr_REG; // @[NewFtq.scala 745:30]
  wire [38:0] _entry_next_addr_T_8 = _copied_ifu_plus1_to_send_T_4 ? bpu_in_bypass_buf_startAddr : _entry_next_addr_T_7; // @[NewFtq.scala 743:27]
  reg [38:0] toIfuPcBundle_REG_1_startAddr; // @[NewFtq.scala 749:29]
  reg [38:0] toIfuPcBundle_REG_1_nextLineAddr; // @[NewFtq.scala 749:29]
  reg  toIfuPcBundle_REG_1_fallThruError; // @[NewFtq.scala 749:29]
  reg  entry_is_to_send_REG_2; // @[NewFtq.scala 750:32]
  reg  entry_is_to_send_REG_3; // @[NewFtq.scala 751:32]
  reg [38:0] entry_next_addr_REG_1; // @[NewFtq.scala 756:36]
  wire [38:0] _entry_next_addr_T_16 = _entry_next_addr_T_6 ? newest_entry_target : entry_next_addr_REG_1; // @[NewFtq.scala 754:30]
  wire [38:0] _entry_next_addr_T_17 = _copied_ifu_plus1_to_send_T_4 ? bpu_in_bypass_buf_startAddr :
    _entry_next_addr_T_16; // @[NewFtq.scala 752:27]
  wire [38:0] _GEN_635 = last_cycle_to_ifu_fire ? toIfuPcBundle_REG_startAddr : toIfuPcBundle_REG_1_startAddr; // @[NewFtq.scala 739:39 740:19 749:19]
  wire [38:0] _GEN_636 = last_cycle_to_ifu_fire ? toIfuPcBundle_REG_nextLineAddr : toIfuPcBundle_REG_1_nextLineAddr; // @[NewFtq.scala 739:39 740:19 749:19]
  wire  _GEN_645 = last_cycle_to_ifu_fire ? toIfuPcBundle_REG_fallThruError : toIfuPcBundle_REG_1_fallThruError; // @[NewFtq.scala 739:39 740:19 749:19]
  wire  _GEN_646 = last_cycle_to_ifu_fire ? entry_is_to_send_REG | entry_is_to_send_REG_1 : entry_is_to_send_REG_2 |
    entry_is_to_send_REG_3; // @[NewFtq.scala 739:39 741:22 750:22]
  wire [38:0] _GEN_647 = last_cycle_to_ifu_fire ? _entry_next_addr_T_8 : _entry_next_addr_T_17; // @[NewFtq.scala 739:39 743:21 752:21]
  wire [38:0] toIfuPcBundle_startAddr = _copied_ifu_ptr_to_send_T_4 ? bpu_in_bypass_buf_startAddr : _GEN_635; // @[NewFtq.scala 733:60 734:19]
  wire [38:0] toIfuPcBundle_nextLineAddr = _copied_ifu_ptr_to_send_T_4 ? bpu_in_bypass_buf_nextLineAddr : _GEN_636; // @[NewFtq.scala 733:60 734:19]
  wire  toIfuPcBundle_fallThruError = _copied_ifu_ptr_to_send_T_4 ? bpu_in_bypass_buf_fallThruError : _GEN_645; // @[NewFtq.scala 733:60 734:19]
  wire  entry_is_to_send = _copied_ifu_ptr_to_send_T_4 | _GEN_646; // @[NewFtq.scala 733:60 735:22]
  wire [38:0] entry_next_addr = _copied_ifu_ptr_to_send_T_4 ? last_cycle_bpu_target : _GEN_647; // @[NewFtq.scala 733:60 736:21]
  wire  _io_toIfu_req_valid_T_2 = _copied_ifu_ptr_to_send_T_2 != _bpuPtr_new_ptr_T; // @[CircularQueuePtr.scala 63:47]
  wire [38:0] nextBlockHigherTemp = io_toIfu_req_bits_startAddr[4] ? toIfuPcBundle_startAddr :
    toIfuPcBundle_nextLineAddr; // @[FrontendBundle.scala 53:36]
  wire [33:0] nextBlockHigher = nextBlockHigherTemp[38:5]; // @[FrontendBundle.scala 54:48]
  wire  _io_toIfu_req_bits_nextStartAddr_T_1 = io_toIfu_req_bits_startAddr[4] ^ 1'h1; // @[FrontendBundle.scala 57:60]
  wire [38:0] _io_toIfu_req_bits_nextStartAddr_T_3 = {nextBlockHigher,_io_toIfu_req_bits_nextStartAddr_T_1,
    io_toIfu_req_bits_startAddr[3:1],1'h0}; // @[Cat.scala 31:58]
  wire  _io_toICache_req_bits_readValid_0_T_2 = _T_76 != _T_60; // @[CircularQueuePtr.scala 63:47]
  wire  _io_toICache_req_bits_readValid_1_T_2 = _T_80 != _T_63; // @[CircularQueuePtr.scala 63:47]
  wire  _io_toICache_req_bits_readValid_2_T_2 = _T_84 != _T_66; // @[CircularQueuePtr.scala 63:47]
  wire [1:0] _GEN_666 = 3'h1 == ifuPtr_value ? entry_hit_status_1 : entry_hit_status_0; // @[NewFtq.scala 778:{71,71}]
  wire [1:0] _GEN_667 = 3'h2 == ifuPtr_value ? entry_hit_status_2 : _GEN_666; // @[NewFtq.scala 778:{71,71}]
  wire [1:0] _GEN_668 = 3'h3 == ifuPtr_value ? entry_hit_status_3 : _GEN_667; // @[NewFtq.scala 778:{71,71}]
  wire [1:0] _GEN_669 = 3'h4 == ifuPtr_value ? entry_hit_status_4 : _GEN_668; // @[NewFtq.scala 778:{71,71}]
  wire [1:0] _GEN_670 = 3'h5 == ifuPtr_value ? entry_hit_status_5 : _GEN_669; // @[NewFtq.scala 778:{71,71}]
  wire [1:0] _GEN_671 = 3'h6 == ifuPtr_value ? entry_hit_status_6 : _GEN_670; // @[NewFtq.scala 778:{71,71}]
  wire [1:0] _GEN_672 = 3'h7 == ifuPtr_value ? entry_hit_status_7 : _GEN_671; // @[NewFtq.scala 778:{71,71}]
  wire  _T_106 = _bpuPtr_new_ptr_T_5 == _copied_ifu_ptr_to_send_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _T_108 = ~(bpu_s2_redirect & _T_106); // @[NewFtq.scala 780:7]
  wire  _T_109 = _T_42 & _T_108; // @[NewFtq.scala 779:29]
  wire  _T_112 = _bpuPtr_new_ptr_T_10 == _copied_ifu_ptr_to_send_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  _T_114 = ~(bpu_s3_redirect & _T_112); // @[NewFtq.scala 781:7]
  wire  _T_115 = _T_109 & _T_114; // @[NewFtq.scala 780:60]
  wire [1:0] _GEN_673 = 3'h0 == ifuPtr_value ? 2'h1 : _GEN_353; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_674 = 3'h1 == ifuPtr_value ? 2'h1 : _GEN_354; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_675 = 3'h2 == ifuPtr_value ? 2'h1 : _GEN_355; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_676 = 3'h3 == ifuPtr_value ? 2'h1 : _GEN_356; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_677 = 3'h4 == ifuPtr_value ? 2'h1 : _GEN_357; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_678 = 3'h5 == ifuPtr_value ? 2'h1 : _GEN_358; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_679 = 3'h6 == ifuPtr_value ? 2'h1 : _GEN_359; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_680 = 3'h7 == ifuPtr_value ? 2'h1 : _GEN_360; // @[NewFtq.scala 783:{38,38}]
  wire [1:0] _GEN_681 = _T_115 ? _GEN_673 : _GEN_353; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_682 = _T_115 ? _GEN_674 : _GEN_354; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_683 = _T_115 ? _GEN_675 : _GEN_355; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_684 = _T_115 ? _GEN_676 : _GEN_356; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_685 = _T_115 ? _GEN_677 : _GEN_357; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_686 = _T_115 ? _GEN_678 : _GEN_358; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_687 = _T_115 ? _GEN_679 : _GEN_359; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_688 = _T_115 ? _GEN_680 : _GEN_360; // @[NewFtq.scala 782:7]
  wire [1:0] _GEN_689 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_681 : _GEN_353; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_690 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_682 : _GEN_354; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_691 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_683 : _GEN_355; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_692 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_684 : _GEN_356; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_693 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_685 : _GEN_357; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_694 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_686 : _GEN_358; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_695 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_687 : _GEN_359; // @[NewFtq.scala 778:82]
  wire [1:0] _GEN_696 = toIfuPcBundle_fallThruError & _GEN_672 == 2'h2 ? _GEN_688 : _GEN_360; // @[NewFtq.scala 778:82]
  wire  ifu_req_should_be_flushed_differentFlag = io_toIfu_flushFromBpu_s2_bits_flag ^ io_toIfu_req_bits_ftqIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  ifu_req_should_be_flushed_compare = io_toIfu_flushFromBpu_s2_bits_value > io_toIfu_req_bits_ftqIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _ifu_req_should_be_flushed_T = ifu_req_should_be_flushed_differentFlag ^ ifu_req_should_be_flushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _ifu_req_should_be_flushed_T_2 = io_toIfu_flushFromBpu_s2_valid & ~_ifu_req_should_be_flushed_T; // @[NewFtq.scala 187:17]
  wire  ifu_req_should_be_flushed_differentFlag_1 = io_toIfu_flushFromBpu_s3_bits_flag ^ io_toIfu_req_bits_ftqIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  ifu_req_should_be_flushed_compare_1 = io_toIfu_flushFromBpu_s3_bits_value > io_toIfu_req_bits_ftqIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _ifu_req_should_be_flushed_T_3 = ifu_req_should_be_flushed_differentFlag_1 ^ ifu_req_should_be_flushed_compare_1
    ; // @[CircularQueuePtr.scala 68:19]
  wire  _ifu_req_should_be_flushed_T_5 = io_toIfu_flushFromBpu_s3_valid & ~_ifu_req_should_be_flushed_T_3; // @[NewFtq.scala 187:17]
  wire  ifu_req_should_be_flushed = _ifu_req_should_be_flushed_T_2 | _ifu_req_should_be_flushed_T_5; // @[NewFtq.scala 793:73]
  wire  _GEN_697 = 3'h0 == ifuPtr_value | _GEN_40; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_698 = 3'h1 == ifuPtr_value | _GEN_41; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_699 = 3'h2 == ifuPtr_value | _GEN_42; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_700 = 3'h3 == ifuPtr_value | _GEN_43; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_701 = 3'h4 == ifuPtr_value | _GEN_44; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_702 = 3'h5 == ifuPtr_value | _GEN_45; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_703 = 3'h6 == ifuPtr_value | _GEN_46; // @[NewFtq.scala 797:{40,40}]
  wire  _GEN_704 = 3'h7 == ifuPtr_value | _GEN_47; // @[NewFtq.scala 797:{40,40}]
  wire  _T_135 = io_fromIfu_pdWb_bits_pd_0_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_137 = io_fromIfu_pdWb_bits_pd_1_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_139 = io_fromIfu_pdWb_bits_pd_2_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_141 = io_fromIfu_pdWb_bits_pd_3_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_143 = io_fromIfu_pdWb_bits_pd_4_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_145 = io_fromIfu_pdWb_bits_pd_5_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_147 = io_fromIfu_pdWb_bits_pd_6_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _T_149 = io_fromIfu_pdWb_bits_pd_7_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T = io_fromIfu_pdWb_bits_pd_0_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_1 = io_fromIfu_pdWb_bits_pd_0_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_1) & io_fromIfu_pdWb_bits_pd_0_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_4 = io_fromIfu_pdWb_bits_pd_1_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_5 = io_fromIfu_pdWb_bits_pd_1_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_4 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_5) & io_fromIfu_pdWb_bits_pd_1_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_8 = io_fromIfu_pdWb_bits_pd_2_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_9 = io_fromIfu_pdWb_bits_pd_2_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_8 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_9) & io_fromIfu_pdWb_bits_pd_2_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_12 = io_fromIfu_pdWb_bits_pd_3_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_13 = io_fromIfu_pdWb_bits_pd_3_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_15 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_12 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_13) & io_fromIfu_pdWb_bits_pd_3_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_16 = io_fromIfu_pdWb_bits_pd_4_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_17 = io_fromIfu_pdWb_bits_pd_4_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_16 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_17) & io_fromIfu_pdWb_bits_pd_4_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_20 = io_fromIfu_pdWb_bits_pd_5_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_21 = io_fromIfu_pdWb_bits_pd_5_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_23 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_20 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_21) & io_fromIfu_pdWb_bits_pd_5_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_24 = io_fromIfu_pdWb_bits_pd_6_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_25 = io_fromIfu_pdWb_bits_pd_6_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_27 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_24 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_25) & io_fromIfu_pdWb_bits_pd_6_valid; // @[NewFtq.scala 123:73]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_28 = io_fromIfu_pdWb_bits_pd_7_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_29 = io_fromIfu_pdWb_bits_pd_7_brType == 2'h3; // @[PreDecode.scala 78:24]
  wire  _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_31 = (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_28 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_29) & io_fromIfu_pdWb_bits_pd_7_valid; // @[NewFtq.scala 123:73]
  wire [7:0] _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_32 = {_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_31,
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_27,_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_23,
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19,_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_15,
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11,_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7,
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3}; // @[NewFtq.scala 123:87]
  wire  _T_192_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 ? _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_1 :
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_5; // @[ParallelMux.scala 90:77]
  wire  _T_192_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 ? io_fromIfu_pdWb_bits_pd_0_isCall :
    io_fromIfu_pdWb_bits_pd_1_isCall; // @[ParallelMux.scala 90:77]
  wire  _T_192_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 ? io_fromIfu_pdWb_bits_pd_0_isRet :
    io_fromIfu_pdWb_bits_pd_1_isRet; // @[ParallelMux.scala 90:77]
  wire  _T_194_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 ? _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_9 :
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_13; // @[ParallelMux.scala 90:77]
  wire  _T_194_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 ? io_fromIfu_pdWb_bits_pd_2_isCall :
    io_fromIfu_pdWb_bits_pd_3_isCall; // @[ParallelMux.scala 90:77]
  wire  _T_194_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 ? io_fromIfu_pdWb_bits_pd_2_isRet :
    io_fromIfu_pdWb_bits_pd_3_isRet; // @[ParallelMux.scala 90:77]
  wire  _T_196_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 | _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 ? _T_192_0 :
    _T_194_0; // @[ParallelMux.scala 90:77]
  wire  _T_196_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 | _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 ? _T_192_1 :
    _T_194_1; // @[ParallelMux.scala 90:77]
  wire  _T_196_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 | _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 ? _T_192_2 :
    _T_194_2; // @[ParallelMux.scala 90:77]
  wire  _T_198_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 ? _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_17 :
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_21; // @[ParallelMux.scala 90:77]
  wire  _T_198_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 ? io_fromIfu_pdWb_bits_pd_4_isCall :
    io_fromIfu_pdWb_bits_pd_5_isCall; // @[ParallelMux.scala 90:77]
  wire  _T_198_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 ? io_fromIfu_pdWb_bits_pd_4_isRet :
    io_fromIfu_pdWb_bits_pd_5_isRet; // @[ParallelMux.scala 90:77]
  wire  _T_200_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_27 ? _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_25 :
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_29; // @[ParallelMux.scala 90:77]
  wire  _T_200_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_27 ? io_fromIfu_pdWb_bits_pd_6_isCall :
    io_fromIfu_pdWb_bits_pd_7_isCall; // @[ParallelMux.scala 90:77]
  wire  _T_200_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_27 ? io_fromIfu_pdWb_bits_pd_6_isRet :
    io_fromIfu_pdWb_bits_pd_7_isRet; // @[ParallelMux.scala 90:77]
  wire  _T_202_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 | _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_23 ? _T_198_0 :
    _T_200_0; // @[ParallelMux.scala 90:77]
  wire  _T_202_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 | _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_23 ? _T_198_1 :
    _T_200_1; // @[ParallelMux.scala 90:77]
  wire  _T_202_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 | _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_23 ? _T_198_2 :
    _T_200_2; // @[ParallelMux.scala 90:77]
  wire  _ftq_pd_mem_io_wdata_0_jmpOffset_T_33 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _ftq_pd_mem_io_wdata_0_jmpOffset_T_35 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _ftq_pd_mem_io_wdata_0_jmpOffset_T_37 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 ? {{1'd0}, _ftq_pd_mem_io_wdata_0_jmpOffset_T_33} :
    _ftq_pd_mem_io_wdata_0_jmpOffset_T_35; // @[ParallelMux.scala 90:77]
  wire [2:0] _ftq_pd_mem_io_wdata_0_jmpOffset_T_39 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _ftq_pd_mem_io_wdata_0_jmpOffset_T_41 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_27 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _ftq_pd_mem_io_wdata_0_jmpOffset_T_43 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_19 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_23 ? _ftq_pd_mem_io_wdata_0_jmpOffset_T_39 :
    _ftq_pd_mem_io_wdata_0_jmpOffset_T_41; // @[ParallelMux.scala 90:77]
  wire [1:0] _GEN_714 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_1 : entry_hit_status_0; // @[NewFtq.scala 813:{51,51}]
  wire [1:0] _GEN_715 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_2 : _GEN_714; // @[NewFtq.scala 813:{51,51}]
  wire [1:0] _GEN_716 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_3 : _GEN_715; // @[NewFtq.scala 813:{51,51}]
  wire [1:0] _GEN_717 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_4 : _GEN_716; // @[NewFtq.scala 813:{51,51}]
  wire [1:0] _GEN_718 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_5 : _GEN_717; // @[NewFtq.scala 813:{51,51}]
  wire [1:0] _GEN_719 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_6 : _GEN_718; // @[NewFtq.scala 813:{51,51}]
  wire [1:0] _GEN_720 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? entry_hit_status_7 : _GEN_719; // @[NewFtq.scala 813:{51,51}]
  wire  hit_pd_valid = _GEN_720 == 2'h2 & io_fromIfu_pdWb_valid; // @[NewFtq.scala 813:61]
  reg  hit_pd_mispred_reg; // @[NewFtq.scala 815:35]
  reg  pd_reg_0_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_0_brType; // @[Reg.scala 16:16]
  reg  pd_reg_0_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_0_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_1_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_1_brType; // @[Reg.scala 16:16]
  reg  pd_reg_1_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_1_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_2_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_2_brType; // @[Reg.scala 16:16]
  reg  pd_reg_2_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_2_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_3_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_3_brType; // @[Reg.scala 16:16]
  reg  pd_reg_3_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_3_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_4_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_4_brType; // @[Reg.scala 16:16]
  reg  pd_reg_4_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_4_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_5_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_5_brType; // @[Reg.scala 16:16]
  reg  pd_reg_5_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_5_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_6_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_6_brType; // @[Reg.scala 16:16]
  reg  pd_reg_6_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_6_isRet; // @[Reg.scala 16:16]
  reg  pd_reg_7_valid; // @[Reg.scala 16:16]
  reg [1:0] pd_reg_7_brType; // @[Reg.scala 16:16]
  reg  pd_reg_7_isCall; // @[Reg.scala 16:16]
  reg  pd_reg_7_isRet; // @[Reg.scala 16:16]
  reg [2:0] wb_idx_reg; // @[Reg.scala 16:16]
  wire  comm_stq_wen_0 = io_fromIfu_pdWb_bits_pd_0_valid & io_fromIfu_pdWb_bits_instrRange_0; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_1 = io_fromIfu_pdWb_bits_pd_1_valid & io_fromIfu_pdWb_bits_instrRange_1; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_2 = io_fromIfu_pdWb_bits_pd_2_valid & io_fromIfu_pdWb_bits_instrRange_2; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_3 = io_fromIfu_pdWb_bits_pd_3_valid & io_fromIfu_pdWb_bits_instrRange_3; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_4 = io_fromIfu_pdWb_bits_pd_4_valid & io_fromIfu_pdWb_bits_instrRange_4; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_5 = io_fromIfu_pdWb_bits_pd_5_valid & io_fromIfu_pdWb_bits_instrRange_5; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_6 = io_fromIfu_pdWb_bits_pd_6_valid & io_fromIfu_pdWb_bits_instrRange_6; // @[NewFtq.scala 822:30]
  wire  comm_stq_wen_7 = io_fromIfu_pdWb_bits_pd_7_valid & io_fromIfu_pdWb_bits_instrRange_7; // @[NewFtq.scala 822:30]
  wire [1:0] _GEN_763 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_243; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_764 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_251; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_765 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_259; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_766 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_267; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_767 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_307; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_768 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_315; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_769 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_323; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_770 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_331; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_771 = comm_stq_wen_0 ? _GEN_763 : _GEN_243; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_772 = comm_stq_wen_0 ? _GEN_764 : _GEN_251; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_773 = comm_stq_wen_0 ? _GEN_765 : _GEN_259; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_774 = comm_stq_wen_0 ? _GEN_766 : _GEN_267; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_775 = comm_stq_wen_0 ? _GEN_767 : _GEN_307; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_776 = comm_stq_wen_0 ? _GEN_768 : _GEN_315; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_777 = comm_stq_wen_0 ? _GEN_769 : _GEN_323; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_778 = comm_stq_wen_0 ? _GEN_770 : _GEN_331; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_779 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_244; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_780 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_252; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_781 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_260; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_782 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_268; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_783 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_308; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_784 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_316; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_785 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_324; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_786 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_332; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_787 = comm_stq_wen_1 ? _GEN_779 : _GEN_244; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_788 = comm_stq_wen_1 ? _GEN_780 : _GEN_252; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_789 = comm_stq_wen_1 ? _GEN_781 : _GEN_260; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_790 = comm_stq_wen_1 ? _GEN_782 : _GEN_268; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_791 = comm_stq_wen_1 ? _GEN_783 : _GEN_308; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_792 = comm_stq_wen_1 ? _GEN_784 : _GEN_316; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_793 = comm_stq_wen_1 ? _GEN_785 : _GEN_324; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_794 = comm_stq_wen_1 ? _GEN_786 : _GEN_332; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_795 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_245; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_796 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_253; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_797 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_261; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_798 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_269; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_799 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_309; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_800 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_317; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_801 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_325; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_802 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_333; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_803 = comm_stq_wen_2 ? _GEN_795 : _GEN_245; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_804 = comm_stq_wen_2 ? _GEN_796 : _GEN_253; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_805 = comm_stq_wen_2 ? _GEN_797 : _GEN_261; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_806 = comm_stq_wen_2 ? _GEN_798 : _GEN_269; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_807 = comm_stq_wen_2 ? _GEN_799 : _GEN_309; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_808 = comm_stq_wen_2 ? _GEN_800 : _GEN_317; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_809 = comm_stq_wen_2 ? _GEN_801 : _GEN_325; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_810 = comm_stq_wen_2 ? _GEN_802 : _GEN_333; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_811 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_246; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_812 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_254; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_813 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_262; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_814 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_270; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_815 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_310; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_816 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_318; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_817 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_326; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_818 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_334; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_819 = comm_stq_wen_3 ? _GEN_811 : _GEN_246; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_820 = comm_stq_wen_3 ? _GEN_812 : _GEN_254; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_821 = comm_stq_wen_3 ? _GEN_813 : _GEN_262; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_822 = comm_stq_wen_3 ? _GEN_814 : _GEN_270; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_823 = comm_stq_wen_3 ? _GEN_815 : _GEN_310; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_824 = comm_stq_wen_3 ? _GEN_816 : _GEN_318; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_825 = comm_stq_wen_3 ? _GEN_817 : _GEN_326; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_826 = comm_stq_wen_3 ? _GEN_818 : _GEN_334; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_827 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_247; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_828 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_255; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_829 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_263; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_830 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_271; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_831 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_311; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_832 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_319; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_833 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_327; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_834 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_335; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_835 = comm_stq_wen_4 ? _GEN_827 : _GEN_247; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_836 = comm_stq_wen_4 ? _GEN_828 : _GEN_255; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_837 = comm_stq_wen_4 ? _GEN_829 : _GEN_263; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_838 = comm_stq_wen_4 ? _GEN_830 : _GEN_271; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_839 = comm_stq_wen_4 ? _GEN_831 : _GEN_311; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_840 = comm_stq_wen_4 ? _GEN_832 : _GEN_319; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_841 = comm_stq_wen_4 ? _GEN_833 : _GEN_327; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_842 = comm_stq_wen_4 ? _GEN_834 : _GEN_335; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_843 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_248; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_844 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_256; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_845 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_264; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_846 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_272; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_847 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_312; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_848 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_320; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_849 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_328; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_850 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_336; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_851 = comm_stq_wen_5 ? _GEN_843 : _GEN_248; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_852 = comm_stq_wen_5 ? _GEN_844 : _GEN_256; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_853 = comm_stq_wen_5 ? _GEN_845 : _GEN_264; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_854 = comm_stq_wen_5 ? _GEN_846 : _GEN_272; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_855 = comm_stq_wen_5 ? _GEN_847 : _GEN_312; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_856 = comm_stq_wen_5 ? _GEN_848 : _GEN_320; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_857 = comm_stq_wen_5 ? _GEN_849 : _GEN_328; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_858 = comm_stq_wen_5 ? _GEN_850 : _GEN_336; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_859 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_249; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_860 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_257; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_861 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_265; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_862 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_273; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_863 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_313; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_864 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_321; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_865 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_329; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_866 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_337; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_867 = comm_stq_wen_6 ? _GEN_859 : _GEN_249; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_868 = comm_stq_wen_6 ? _GEN_860 : _GEN_257; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_869 = comm_stq_wen_6 ? _GEN_861 : _GEN_265; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_870 = comm_stq_wen_6 ? _GEN_862 : _GEN_273; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_871 = comm_stq_wen_6 ? _GEN_863 : _GEN_313; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_872 = comm_stq_wen_6 ? _GEN_864 : _GEN_321; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_873 = comm_stq_wen_6 ? _GEN_865 : _GEN_329; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_874 = comm_stq_wen_6 ? _GEN_866 : _GEN_337; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_875 = 3'h0 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_250; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_876 = 3'h1 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_258; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_877 = 3'h2 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_266; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_878 = 3'h3 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_274; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_879 = 3'h4 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_314; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_880 = 3'h5 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_322; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_881 = 3'h6 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_330; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_882 = 3'h7 == io_fromIfu_pdWb_bits_ftqIdx_value ? 2'h1 : _GEN_338; // @[NewFtq.scala 825:{37,37}]
  wire [1:0] _GEN_883 = comm_stq_wen_7 ? _GEN_875 : _GEN_250; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_884 = comm_stq_wen_7 ? _GEN_876 : _GEN_258; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_885 = comm_stq_wen_7 ? _GEN_877 : _GEN_266; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_886 = comm_stq_wen_7 ? _GEN_878 : _GEN_274; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_887 = comm_stq_wen_7 ? _GEN_879 : _GEN_314; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_888 = comm_stq_wen_7 ? _GEN_880 : _GEN_322; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_889 = comm_stq_wen_7 ? _GEN_881 : _GEN_330; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_890 = comm_stq_wen_7 ? _GEN_882 : _GEN_338; // @[NewFtq.scala 825:32]
  wire [1:0] _GEN_891 = io_fromIfu_pdWb_valid ? _GEN_771 : _GEN_243; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_892 = io_fromIfu_pdWb_valid ? _GEN_772 : _GEN_251; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_893 = io_fromIfu_pdWb_valid ? _GEN_773 : _GEN_259; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_894 = io_fromIfu_pdWb_valid ? _GEN_774 : _GEN_267; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_895 = io_fromIfu_pdWb_valid ? _GEN_775 : _GEN_307; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_896 = io_fromIfu_pdWb_valid ? _GEN_776 : _GEN_315; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_897 = io_fromIfu_pdWb_valid ? _GEN_777 : _GEN_323; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_898 = io_fromIfu_pdWb_valid ? _GEN_778 : _GEN_331; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_899 = io_fromIfu_pdWb_valid ? _GEN_787 : _GEN_244; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_900 = io_fromIfu_pdWb_valid ? _GEN_788 : _GEN_252; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_901 = io_fromIfu_pdWb_valid ? _GEN_789 : _GEN_260; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_902 = io_fromIfu_pdWb_valid ? _GEN_790 : _GEN_268; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_903 = io_fromIfu_pdWb_valid ? _GEN_791 : _GEN_308; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_904 = io_fromIfu_pdWb_valid ? _GEN_792 : _GEN_316; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_905 = io_fromIfu_pdWb_valid ? _GEN_793 : _GEN_324; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_906 = io_fromIfu_pdWb_valid ? _GEN_794 : _GEN_332; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_907 = io_fromIfu_pdWb_valid ? _GEN_803 : _GEN_245; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_908 = io_fromIfu_pdWb_valid ? _GEN_804 : _GEN_253; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_909 = io_fromIfu_pdWb_valid ? _GEN_805 : _GEN_261; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_910 = io_fromIfu_pdWb_valid ? _GEN_806 : _GEN_269; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_911 = io_fromIfu_pdWb_valid ? _GEN_807 : _GEN_309; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_912 = io_fromIfu_pdWb_valid ? _GEN_808 : _GEN_317; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_913 = io_fromIfu_pdWb_valid ? _GEN_809 : _GEN_325; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_914 = io_fromIfu_pdWb_valid ? _GEN_810 : _GEN_333; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_915 = io_fromIfu_pdWb_valid ? _GEN_819 : _GEN_246; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_916 = io_fromIfu_pdWb_valid ? _GEN_820 : _GEN_254; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_917 = io_fromIfu_pdWb_valid ? _GEN_821 : _GEN_262; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_918 = io_fromIfu_pdWb_valid ? _GEN_822 : _GEN_270; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_919 = io_fromIfu_pdWb_valid ? _GEN_823 : _GEN_310; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_920 = io_fromIfu_pdWb_valid ? _GEN_824 : _GEN_318; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_921 = io_fromIfu_pdWb_valid ? _GEN_825 : _GEN_326; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_922 = io_fromIfu_pdWb_valid ? _GEN_826 : _GEN_334; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_923 = io_fromIfu_pdWb_valid ? _GEN_835 : _GEN_247; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_924 = io_fromIfu_pdWb_valid ? _GEN_836 : _GEN_255; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_925 = io_fromIfu_pdWb_valid ? _GEN_837 : _GEN_263; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_926 = io_fromIfu_pdWb_valid ? _GEN_838 : _GEN_271; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_927 = io_fromIfu_pdWb_valid ? _GEN_839 : _GEN_311; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_928 = io_fromIfu_pdWb_valid ? _GEN_840 : _GEN_319; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_929 = io_fromIfu_pdWb_valid ? _GEN_841 : _GEN_327; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_930 = io_fromIfu_pdWb_valid ? _GEN_842 : _GEN_335; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_931 = io_fromIfu_pdWb_valid ? _GEN_851 : _GEN_248; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_932 = io_fromIfu_pdWb_valid ? _GEN_852 : _GEN_256; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_933 = io_fromIfu_pdWb_valid ? _GEN_853 : _GEN_264; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_934 = io_fromIfu_pdWb_valid ? _GEN_854 : _GEN_272; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_935 = io_fromIfu_pdWb_valid ? _GEN_855 : _GEN_312; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_936 = io_fromIfu_pdWb_valid ? _GEN_856 : _GEN_320; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_937 = io_fromIfu_pdWb_valid ? _GEN_857 : _GEN_328; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_938 = io_fromIfu_pdWb_valid ? _GEN_858 : _GEN_336; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_939 = io_fromIfu_pdWb_valid ? _GEN_867 : _GEN_249; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_940 = io_fromIfu_pdWb_valid ? _GEN_868 : _GEN_257; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_941 = io_fromIfu_pdWb_valid ? _GEN_869 : _GEN_265; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_942 = io_fromIfu_pdWb_valid ? _GEN_870 : _GEN_273; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_943 = io_fromIfu_pdWb_valid ? _GEN_871 : _GEN_313; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_944 = io_fromIfu_pdWb_valid ? _GEN_872 : _GEN_321; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_945 = io_fromIfu_pdWb_valid ? _GEN_873 : _GEN_329; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_946 = io_fromIfu_pdWb_valid ? _GEN_874 : _GEN_337; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_947 = io_fromIfu_pdWb_valid ? _GEN_883 : _GEN_250; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_948 = io_fromIfu_pdWb_valid ? _GEN_884 : _GEN_258; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_949 = io_fromIfu_pdWb_valid ? _GEN_885 : _GEN_266; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_950 = io_fromIfu_pdWb_valid ? _GEN_886 : _GEN_274; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_951 = io_fromIfu_pdWb_valid ? _GEN_887 : _GEN_314; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_952 = io_fromIfu_pdWb_valid ? _GEN_888 : _GEN_322; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_953 = io_fromIfu_pdWb_valid ? _GEN_889 : _GEN_330; // @[NewFtq.scala 820:23]
  wire [1:0] _GEN_954 = io_fromIfu_pdWb_valid ? _GEN_890 : _GEN_338; // @[NewFtq.scala 820:23]
  wire [3:0] _ifuWbPtr_write_new_ptr_T_2 = _canCommit_T_1 + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] ifuWbPtr_write_new_ptr_value = _ifuWbPtr_write_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  ifuWbPtr_write_new_ptr_flag = _ifuWbPtr_write_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  reg  REG_2; // @[NewFtq.scala 837:16]
  wire [1:0] _GEN_958 = 3'h1 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_1_brType : pd_reg_0_brType; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_959 = 3'h2 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_2_brType : _GEN_958; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_960 = 3'h3 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_3_brType : _GEN_959; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_961 = 3'h4 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_4_brType : _GEN_960; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_962 = 3'h5 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_5_brType : _GEN_961; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_963 = 3'h6 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_6_brType : _GEN_962; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_964 = 3'h7 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_7_brType : _GEN_963; // @[PreDecode.scala 76:{24,24}]
  wire  _br_false_hit_T = _GEN_964 == 2'h1; // @[PreDecode.scala 76:24]
  wire  _GEN_966 = 3'h1 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_1_valid : pd_reg_0_valid; // @[NewFtq.scala 847:{50,50}]
  wire  _GEN_967 = 3'h2 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_2_valid : _GEN_966; // @[NewFtq.scala 847:{50,50}]
  wire  _GEN_968 = 3'h3 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_3_valid : _GEN_967; // @[NewFtq.scala 847:{50,50}]
  wire  _GEN_969 = 3'h4 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_4_valid : _GEN_968; // @[NewFtq.scala 847:{50,50}]
  wire  _GEN_970 = 3'h5 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_5_valid : _GEN_969; // @[NewFtq.scala 847:{50,50}]
  wire  _GEN_971 = 3'h6 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_6_valid : _GEN_970; // @[NewFtq.scala 847:{50,50}]
  wire  _GEN_972 = 3'h7 == ftb_entry_mem_io_rdata_0_brSlots_0_offset ? pd_reg_7_valid : _GEN_971; // @[NewFtq.scala 847:{50,50}]
  wire  _br_false_hit_T_3 = ftb_entry_mem_io_rdata_0_brSlots_0_valid & ~(_GEN_972 & _br_false_hit_T); // @[NewFtq.scala 847:22]
  wire [1:0] _GEN_974 = 3'h1 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_1_brType : pd_reg_0_brType; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_975 = 3'h2 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_2_brType : _GEN_974; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_976 = 3'h3 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_3_brType : _GEN_975; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_977 = 3'h4 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_4_brType : _GEN_976; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_978 = 3'h5 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_5_brType : _GEN_977; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_979 = 3'h6 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_6_brType : _GEN_978; // @[PreDecode.scala 76:{24,24}]
  wire [1:0] _GEN_980 = 3'h7 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_7_brType : _GEN_979; // @[PreDecode.scala 76:{24,24}]
  wire  _br_false_hit_T_5 = _GEN_980 == 2'h1; // @[PreDecode.scala 76:24]
  wire  _GEN_982 = 3'h1 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_1_valid : pd_reg_0_valid; // @[NewFtq.scala 850:{41,41}]
  wire  _GEN_983 = 3'h2 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_2_valid : _GEN_982; // @[NewFtq.scala 850:{41,41}]
  wire  _GEN_984 = 3'h3 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_3_valid : _GEN_983; // @[NewFtq.scala 850:{41,41}]
  wire  _GEN_985 = 3'h4 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_4_valid : _GEN_984; // @[NewFtq.scala 850:{41,41}]
  wire  _GEN_986 = 3'h5 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_5_valid : _GEN_985; // @[NewFtq.scala 850:{41,41}]
  wire  _GEN_987 = 3'h6 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_6_valid : _GEN_986; // @[NewFtq.scala 850:{41,41}]
  wire  _GEN_988 = 3'h7 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_7_valid : _GEN_987; // @[NewFtq.scala 850:{41,41}]
  wire  _br_false_hit_T_7 = ~(_GEN_988 & _br_false_hit_T_5); // @[NewFtq.scala 850:9]
  wire  _br_false_hit_T_8 = ftb_entry_mem_io_rdata_0_tailSlot_valid & ftb_entry_mem_io_rdata_0_tailSlot_sharing &
    _br_false_hit_T_7; // @[NewFtq.scala 849:58]
  wire  br_false_hit = _br_false_hit_T_3 | _br_false_hit_T_8; // @[NewFtq.scala 848:22]
  wire  _jal_false_hit_T_1 = ftb_entry_mem_io_rdata_0_tailSlot_valid & ~ftb_entry_mem_io_rdata_0_tailSlot_sharing; // @[FTB.scala 221:20]
  wire  _jal_false_hit_T_2 = ~ftb_entry_mem_io_rdata_0_isJalr; // @[FTB.scala 178:15]
  wire  _jal_false_hit_T_3 = _GEN_980 == 2'h2; // @[PreDecode.scala 77:24]
  wire  _jal_false_hit_T_7 = _GEN_980 == 2'h3; // @[PreDecode.scala 78:24]
  wire  _jal_false_hit_T_10 = ftb_entry_mem_io_rdata_0_isJalr & ~(_GEN_988 & _jal_false_hit_T_7); // @[NewFtq.scala 856:31]
  wire  _jal_false_hit_T_11 = _jal_false_hit_T_2 & ~(_GEN_988 & _jal_false_hit_T_3) | _jal_false_hit_T_10; // @[NewFtq.scala 855:67]
  wire  _GEN_990 = 3'h1 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_1_isCall : pd_reg_0_isCall; // @[NewFtq.scala 857:{49,49}]
  wire  _GEN_991 = 3'h2 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_2_isCall : _GEN_990; // @[NewFtq.scala 857:{49,49}]
  wire  _GEN_992 = 3'h3 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_3_isCall : _GEN_991; // @[NewFtq.scala 857:{49,49}]
  wire  _GEN_993 = 3'h4 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_4_isCall : _GEN_992; // @[NewFtq.scala 857:{49,49}]
  wire  _GEN_994 = 3'h5 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_5_isCall : _GEN_993; // @[NewFtq.scala 857:{49,49}]
  wire  _GEN_995 = 3'h6 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_6_isCall : _GEN_994; // @[NewFtq.scala 857:{49,49}]
  wire  _GEN_996 = 3'h7 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_7_isCall : _GEN_995; // @[NewFtq.scala 857:{49,49}]
  wire  _jal_false_hit_T_14 = ftb_entry_mem_io_rdata_0_isCall & ~(_GEN_988 & _GEN_996); // @[NewFtq.scala 857:31]
  wire  _jal_false_hit_T_15 = _jal_false_hit_T_11 | _jal_false_hit_T_14; // @[NewFtq.scala 856:68]
  wire  _GEN_998 = 3'h1 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_1_isRet : pd_reg_0_isRet; // @[NewFtq.scala 858:{49,49}]
  wire  _GEN_999 = 3'h2 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_2_isRet : _GEN_998; // @[NewFtq.scala 858:{49,49}]
  wire  _GEN_1000 = 3'h3 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_3_isRet : _GEN_999; // @[NewFtq.scala 858:{49,49}]
  wire  _GEN_1001 = 3'h4 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_4_isRet : _GEN_1000; // @[NewFtq.scala 858:{49,49}]
  wire  _GEN_1002 = 3'h5 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_5_isRet : _GEN_1001; // @[NewFtq.scala 858:{49,49}]
  wire  _GEN_1003 = 3'h6 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_6_isRet : _GEN_1002; // @[NewFtq.scala 858:{49,49}]
  wire  _GEN_1004 = 3'h7 == ftb_entry_mem_io_rdata_0_tailSlot_offset ? pd_reg_7_isRet : _GEN_1003; // @[NewFtq.scala 858:{49,49}]
  wire  _jal_false_hit_T_18 = ftb_entry_mem_io_rdata_0_isRet & ~(_GEN_988 & _GEN_1004); // @[NewFtq.scala 858:31]
  wire  _jal_false_hit_T_19 = _jal_false_hit_T_15 | _jal_false_hit_T_18; // @[NewFtq.scala 857:68]
  wire  jal_false_hit = _jal_false_hit_T_1 & _jal_false_hit_T_19; // @[NewFtq.scala 854:49]
  wire  has_false_hit = REG_2 & (br_false_hit | jal_false_hit | hit_pd_mispred_reg); // @[NewFtq.scala 837:32 861:19]
  reg  io_toBackend_pc_mem_wen_REG; // @[NewFtq.scala 876:39]
  reg [2:0] io_toBackend_pc_mem_waddr_REG; // @[NewFtq.scala 877:39]
  reg [38:0] io_toBackend_pc_mem_wdata_REG_startAddr; // @[NewFtq.scala 878:39]
  reg [38:0] io_toBackend_pc_mem_wdata_REG_nextLineAddr; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_0; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_1; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_2; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_3; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_4; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_5; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_6; // @[NewFtq.scala 878:39]
  reg  io_toBackend_pc_mem_wdata_REG_isNextMask_7; // @[NewFtq.scala 878:39]
  wire  _fromBackendRedirect_bits_cfiUpdate_br_hit_T = ftb_entry_mem_io_rdata_1_brSlots_0_offset ==
    backendRedirectReg_bits_ftqOffset; // @[FTB.scala 198:44]
  wire  _fromBackendRedirect_bits_cfiUpdate_br_hit_T_1 = ftb_entry_mem_io_rdata_1_brSlots_0_valid &
    ftb_entry_mem_io_rdata_1_brSlots_0_offset == backendRedirectReg_bits_ftqOffset; // @[FTB.scala 198:32]
  wire  _fromBackendRedirect_bits_cfiUpdate_br_hit_T_2 = ftb_entry_mem_io_rdata_1_tailSlot_offset ==
    backendRedirectReg_bits_ftqOffset; // @[FTB.scala 199:42]
  wire  _fromBackendRedirect_bits_cfiUpdate_br_hit_T_4 = ftb_entry_mem_io_rdata_1_tailSlot_valid &
    ftb_entry_mem_io_rdata_1_tailSlot_offset == backendRedirectReg_bits_ftqOffset &
    ftb_entry_mem_io_rdata_1_tailSlot_sharing; // @[FTB.scala 199:53]
  wire  fromBackendRedirect_bits_cfiUpdate_br_hit = _fromBackendRedirect_bits_cfiUpdate_br_hit_T_1 |
    _fromBackendRedirect_bits_cfiUpdate_br_hit_T_4; // @[FTB.scala 203:66]
  wire  fromBackendRedirect_bits_cfiUpdate_jr_hit = ftb_entry_mem_io_rdata_1_isJalr &
    _fromBackendRedirect_bits_cfiUpdate_br_hit_T_2; // @[NewFtq.scala 900:51]
  wire  _fromBackendRedirect_bits_cfiUpdate_sc_hit_T_1 = _fromBackendRedirect_bits_cfiUpdate_br_hit_T ?
    ftb_entry_mem_io_rdata_1_brSlots_0_sc : ftb_entry_mem_io_rdata_1_tailSlot_sc; // @[NewFtq.scala 901:64]
  wire  fromBackendRedirect_bits_cfiUpdate_sc_hit = fromBackendRedirect_bits_cfiUpdate_br_hit &
    _fromBackendRedirect_bits_cfiUpdate_sc_hit_T_1; // @[NewFtq.scala 901:58]
  wire [1:0] _GEN_1023 = 3'h1 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_1 : entry_hit_status_0; // @[NewFtq.scala 904:{65,65}]
  wire [1:0] _GEN_1024 = 3'h2 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_2 : _GEN_1023; // @[NewFtq.scala 904:{65,65}]
  wire [1:0] _GEN_1025 = 3'h3 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_3 : _GEN_1024; // @[NewFtq.scala 904:{65,65}]
  wire [1:0] _GEN_1026 = 3'h4 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_4 : _GEN_1025; // @[NewFtq.scala 904:{65,65}]
  wire [1:0] _GEN_1027 = 3'h5 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_5 : _GEN_1026; // @[NewFtq.scala 904:{65,65}]
  wire [1:0] _GEN_1028 = 3'h6 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_6 : _GEN_1027; // @[NewFtq.scala 904:{65,65}]
  wire [1:0] _GEN_1029 = 3'h7 == backendRedirectReg_bits_ftqIdx_value ? entry_hit_status_7 : _GEN_1028; // @[NewFtq.scala 904:{65,65}]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_1 = ftb_entry_mem_io_rdata_1_brSlots_0_valid &
    ftb_entry_mem_io_rdata_1_brSlots_0_offset <= backendRedirectReg_bits_ftqOffset; // @[FTB.scala 193:31]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_4 = ftb_entry_mem_io_rdata_1_tailSlot_valid &
    ftb_entry_mem_io_rdata_1_tailSlot_offset <= backendRedirectReg_bits_ftqOffset &
    ftb_entry_mem_io_rdata_1_tailSlot_sharing; // @[FTB.scala 194:50]
  wire [1:0] _fromBackendRedirect_bits_cfiUpdate_shift_T_5 = _fromBackendRedirect_bits_cfiUpdate_shift_T_1 +
    _fromBackendRedirect_bits_cfiUpdate_shift_T_4; // @[Bitwise.scala 48:55]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_7 = backendRedirectReg_bits_cfiUpdate_pd_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_14 = ~fromBackendRedirect_bits_cfiUpdate_br_hit; // @[NewFtq.scala 906:38]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_17 = ftb_entry_mem_io_rdata_1_tailSlot_valid &
    ftb_entry_mem_io_rdata_1_tailSlot_offset < backendRedirectReg_bits_ftqOffset; // @[FTB.scala 217:25]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_18 = ~_fromBackendRedirect_bits_cfiUpdate_shift_T_17; // @[NewFtq.scala 907:7]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_19 = _fromBackendRedirect_bits_cfiUpdate_shift_T_7 & ~
    fromBackendRedirect_bits_cfiUpdate_br_hit & _fromBackendRedirect_bits_cfiUpdate_shift_T_18; // @[NewFtq.scala 906:74]
  wire [1:0] _GEN_3008 = {{1'd0}, _fromBackendRedirect_bits_cfiUpdate_shift_T_19}; // @[NewFtq.scala 905:86]
  wire [2:0] _fromBackendRedirect_bits_cfiUpdate_shift_T_20 = _fromBackendRedirect_bits_cfiUpdate_shift_T_5 + _GEN_3008; // @[NewFtq.scala 905:86]
  wire  _fromBackendRedirect_bits_cfiUpdate_shift_T_22 = _fromBackendRedirect_bits_cfiUpdate_shift_T_7 &
    backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 912:61]
  wire [2:0] _GEN_1030 = _GEN_1029 == 2'h2 ? _fromBackendRedirect_bits_cfiUpdate_shift_T_20 : {{2'd0},
    _fromBackendRedirect_bits_cfiUpdate_shift_T_22}; // @[NewFtq.scala 904:76 905:30 912:30]
  wire  fromBackendRedirect_bits_cfiUpdate_addIntoHist = _GEN_1029 == 2'h2 ?
    _fromBackendRedirect_bits_cfiUpdate_shift_T_7 & (fromBackendRedirect_bits_cfiUpdate_br_hit |
    _fromBackendRedirect_bits_cfiUpdate_shift_T_18) : _fromBackendRedirect_bits_cfiUpdate_shift_T_7; // @[NewFtq.scala 904:76 909:36 913:36]
  wire [38:0] _GEN_1033 = 3'h1 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pc_1 :
    io_fromIfu_pdWb_bits_pc_0; // @[NewFtq.scala 930:{27,27}]
  wire [38:0] _GEN_1034 = 3'h2 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pc_2 : _GEN_1033; // @[NewFtq.scala 930:{27,27}]
  wire [38:0] _GEN_1035 = 3'h3 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pc_3 : _GEN_1034; // @[NewFtq.scala 930:{27,27}]
  wire  _GEN_1049 = 3'h1 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_1_isRVC :
    io_fromIfu_pdWb_bits_pd_0_isRVC; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1050 = 3'h2 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_2_isRVC : _GEN_1049; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1051 = 3'h3 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_3_isRVC : _GEN_1050; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1065 = 3'h1 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_1_isCall :
    io_fromIfu_pdWb_bits_pd_0_isCall; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1066 = 3'h2 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_2_isCall : _GEN_1065; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1067 = 3'h3 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_3_isCall : _GEN_1066; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1073 = 3'h1 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_1_isRet :
    io_fromIfu_pdWb_bits_pd_0_isRet; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1074 = 3'h2 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_2_isRet : _GEN_1073; // @[NewFtq.scala 931:{27,27}]
  wire  _GEN_1075 = 3'h3 == io_fromIfu_pdWb_bits_misOffset_bits ? io_fromIfu_pdWb_bits_pd_3_isRet : _GEN_1074; // @[NewFtq.scala 931:{27,27}]
  reg  ifuRedirectReg_bits_ftqIdx_flag; // @[NewFtq.scala 937:31]
  reg [2:0] ifuRedirectReg_bits_ftqIdx_value; // @[NewFtq.scala 937:31]
  reg [2:0] ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 937:31]
  reg [38:0] ifuRedirectReg_bits_cfiUpdate_pc; // @[NewFtq.scala 937:31]
  reg  ifuRedirectReg_bits_cfiUpdate_pd_isRVC; // @[NewFtq.scala 937:31]
  reg  ifuRedirectReg_bits_cfiUpdate_pd_isCall; // @[NewFtq.scala 937:31]
  reg  ifuRedirectReg_bits_cfiUpdate_pd_isRet; // @[NewFtq.scala 937:31]
  reg [38:0] ifuRedirectReg_bits_cfiUpdate_target; // @[NewFtq.scala 937:31]
  reg  ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 937:31]
  reg  ifuRedirectReg_bits_BTBMissBubble; // @[NewFtq.scala 937:31]
  wire [38:0] ifuRedirectToBpu_bits_cfiUpdate_rasEntry_retAddr = ftq_redirect_sram_io_rdata_0_rasTop_retAddr;
  wire [38:0] ifuRedirectToBpu_bits_cfiUpdate_target = ifuRedirectReg_bits_cfiUpdate_pd_isRet ?
    ifuRedirectToBpu_bits_cfiUpdate_rasEntry_retAddr : ifuRedirectReg_bits_cfiUpdate_target; // @[NewFtq.scala 948:49 949:21]
  wire  _lastIsMispredict_T = ~io_fromBackend_redirect_bits_level; // @[NewFtq.scala 978:57]
  wire [2:0] _GEN_1122 = 3'h1 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_1_bits : cfiIndex_vec_0_bits; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1123 = 3'h2 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_2_bits : _GEN_1122; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1124 = 3'h3 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_3_bits : _GEN_1123; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1125 = 3'h4 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_4_bits : _GEN_1124; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1126 = 3'h5 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_5_bits : _GEN_1125; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1127 = 3'h6 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_6_bits : _GEN_1126; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1128 = 3'h7 == backendRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_7_bits : _GEN_1127; // @[NewFtq.scala 984:{60,60}]
  wire  cfiIndex_bits_wen = backendRedirectReg_valid & backendRedirectReg_bits_cfiUpdate_taken &
    backendRedirectReg_bits_ftqOffset < _GEN_1128; // @[NewFtq.scala 984:48]
  wire  cfiIndex_valid_wen = backendRedirectReg_valid & backendRedirectReg_bits_ftqOffset == _GEN_1128; // @[NewFtq.scala 985:38]
  wire [2:0] _GEN_1250 = 3'h1 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_1_bits : cfiIndex_vec_0_bits; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1251 = 3'h2 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_2_bits : _GEN_1250; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1252 = 3'h3 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_3_bits : _GEN_1251; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1253 = 3'h4 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_4_bits : _GEN_1252; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1254 = 3'h5 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_5_bits : _GEN_1253; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1255 = 3'h6 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_6_bits : _GEN_1254; // @[NewFtq.scala 984:{60,60}]
  wire [2:0] _GEN_1256 = 3'h7 == ifuRedirectReg_bits_ftqIdx_value ? cfiIndex_vec_7_bits : _GEN_1255; // @[NewFtq.scala 984:{60,60}]
  wire  cfiIndex_bits_wen_1 = ifuRedirectReg_valid & ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset
     < _GEN_1256; // @[NewFtq.scala 984:48]
  wire  cfiIndex_valid_wen_1 = ifuRedirectReg_valid & ifuRedirectReg_bits_ftqOffset == _GEN_1256; // @[NewFtq.scala 985:38]
  wire  _GEN_1265 = 3'h0 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_48; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1266 = 3'h1 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_49; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1267 = 3'h2 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_50; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1268 = 3'h3 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_51; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1269 = 3'h4 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_52; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1270 = 3'h5 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_53; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1271 = 3'h6 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_54; // @[NewFtq.scala 989:{33,33}]
  wire  _GEN_1272 = 3'h7 == ifuRedirectReg_bits_ftqIdx_value ? 1'h0 : _GEN_55; // @[NewFtq.scala 989:{33,33}]
  wire  _T_221 = backendRedirectReg_bits_debugIsCtrl & _fromBackendRedirect_bits_cfiUpdate_shift_T_14 & ~
    fromBackendRedirect_bits_cfiUpdate_jr_hit; // @[FrontendBundle.scala 669:73]
  wire  _T_222 = backendRedirectReg_bits_debugIsCtrl & fromBackendRedirect_bits_cfiUpdate_br_hit; // @[FrontendBundle.scala 670:46]
  wire  _T_224 = backendRedirectReg_bits_debugIsCtrl & fromBackendRedirect_bits_cfiUpdate_br_hit & ~
    fromBackendRedirect_bits_cfiUpdate_sc_hit; // @[FrontendBundle.scala 670:66]
  wire  _T_226 = _T_222 & fromBackendRedirect_bits_cfiUpdate_sc_hit; // @[FrontendBundle.scala 671:64]
  wire  _T_227 = backendRedirectReg_bits_debugIsCtrl & fromBackendRedirect_bits_cfiUpdate_jr_hit; // @[FrontendBundle.scala 672:48]
  wire  _T_229 = backendRedirectReg_bits_debugIsCtrl & fromBackendRedirect_bits_cfiUpdate_jr_hit & ~
    backendRedirectReg_bits_cfiUpdate_pd_isRet; // @[FrontendBundle.scala 672:68]
  wire  _T_231 = _T_227 & backendRedirectReg_bits_cfiUpdate_pd_isRet; // @[FrontendBundle.scala 673:65]
  wire  _GEN_1431 = _T_231 | io_fromBpu_resp_bits_topdown_info_reasons_6; // @[NewFtq.scala 1022:60 1023:65 475:17]
  wire  _GEN_1432 = _T_231 | topdown_stage_reasons_6; // @[NewFtq.scala 1022:60 1024:82 476:34]
  wire  _GEN_1433 = _T_229 | io_fromBpu_resp_bits_topdown_info_reasons_5; // @[NewFtq.scala 1019:63 1020:68 475:17]
  wire  _GEN_1434 = _T_229 | topdown_stage_reasons_5; // @[NewFtq.scala 1019:63 1021:85 476:34]
  wire  _GEN_1435 = _T_229 ? io_fromBpu_resp_bits_topdown_info_reasons_6 : _GEN_1431; // @[NewFtq.scala 1019:63 475:17]
  wire  _GEN_1436 = _T_229 ? topdown_stage_reasons_6 : _GEN_1432; // @[NewFtq.scala 1019:63 476:34]
  wire  _GEN_1437 = _T_226 | io_fromBpu_resp_bits_topdown_info_reasons_4; // @[NewFtq.scala 1016:59 1017:64 475:17]
  wire  _GEN_1438 = _T_226 | topdown_stage_reasons_4; // @[NewFtq.scala 1016:59 1018:81 476:34]
  wire  _GEN_1439 = _T_226 ? io_fromBpu_resp_bits_topdown_info_reasons_5 : _GEN_1433; // @[NewFtq.scala 1016:59 475:17]
  wire  _GEN_1440 = _T_226 ? topdown_stage_reasons_5 : _GEN_1434; // @[NewFtq.scala 1016:59 476:34]
  wire  _GEN_1441 = _T_226 ? io_fromBpu_resp_bits_topdown_info_reasons_6 : _GEN_1435; // @[NewFtq.scala 1016:59 475:17]
  wire  _GEN_1442 = _T_226 ? topdown_stage_reasons_6 : _GEN_1436; // @[NewFtq.scala 1016:59 476:34]
  wire  _GEN_1443 = _T_224 | io_fromBpu_resp_bits_topdown_info_reasons_3; // @[NewFtq.scala 1013:61 1014:66 475:17]
  wire  _GEN_1444 = _T_224 | topdown_stage_reasons_3; // @[NewFtq.scala 1013:61 1015:83 476:34]
  wire  _GEN_1446 = _T_224 ? topdown_stage_reasons_4 : _GEN_1438; // @[NewFtq.scala 1013:61 476:34]
  wire  _GEN_1448 = _T_224 ? topdown_stage_reasons_5 : _GEN_1440; // @[NewFtq.scala 1013:61 476:34]
  wire  _GEN_1450 = _T_224 ? topdown_stage_reasons_6 : _GEN_1442; // @[NewFtq.scala 1013:61 476:34]
  wire  _GEN_1451 = _T_221 | io_fromBpu_resp_bits_topdown_info_reasons_12; // @[NewFtq.scala 1010:60 1011:65 475:17]
  wire  _GEN_1452 = _T_221 | topdown_stage_reasons_12; // @[NewFtq.scala 1010:60 1012:82 476:34]
  wire  _GEN_1454 = _T_221 ? topdown_stage_reasons_3 : _GEN_1444; // @[NewFtq.scala 1010:60 476:34]
  wire  _GEN_1456 = _T_221 ? topdown_stage_reasons_4 : _GEN_1446; // @[NewFtq.scala 1010:60 476:34]
  wire  _GEN_1458 = _T_221 ? topdown_stage_reasons_5 : _GEN_1448; // @[NewFtq.scala 1010:60 476:34]
  wire  _GEN_1460 = _T_221 ? topdown_stage_reasons_6 : _GEN_1450; // @[NewFtq.scala 1010:60 476:34]
  wire  _GEN_1461 = backendRedirectReg_bits_debugIsMemVio | io_fromBpu_resp_bits_topdown_info_reasons_7; // @[NewFtq.scala 1028:64 1029:70 475:17]
  wire  _GEN_1462 = backendRedirectReg_bits_debugIsMemVio | topdown_stage_reasons_7; // @[NewFtq.scala 1028:64 1030:87 476:34]
  wire  _GEN_1464 = backendRedirectReg_bits_debugIsMemVio ? topdown_stage_reasons_8 : 1'h1; // @[NewFtq.scala 1028:64 476:34 1033:86]
  wire  _GEN_1466 = backendRedirectReg_bits_debugIsCtrl ? _GEN_1452 : topdown_stage_reasons_12; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1468 = backendRedirectReg_bits_debugIsCtrl ? _GEN_1454 : topdown_stage_reasons_3; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1470 = backendRedirectReg_bits_debugIsCtrl ? _GEN_1456 : topdown_stage_reasons_4; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1472 = backendRedirectReg_bits_debugIsCtrl ? _GEN_1458 : topdown_stage_reasons_5; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1474 = backendRedirectReg_bits_debugIsCtrl ? _GEN_1460 : topdown_stage_reasons_6; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1476 = backendRedirectReg_bits_debugIsCtrl ? topdown_stage_reasons_7 : _GEN_1462; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1478 = backendRedirectReg_bits_debugIsCtrl ? topdown_stage_reasons_8 : _GEN_1464; // @[NewFtq.scala 1009:58 476:34]
  wire  _GEN_1479 = ifuRedirectReg_valid | io_fromBpu_resp_bits_topdown_info_reasons_12; // @[NewFtq.scala 1035:38 1036:61 475:17]
  wire  _GEN_1480 = ifuRedirectReg_valid | topdown_stage_reasons_12; // @[NewFtq.scala 1035:38 1037:78 476:34]
  wire  _T_232 = io_fromBackend_redirect_valid | fromIfuRedirect_valid; // @[NewFtq.scala 1053:46]
  wire  r_ftqIdx_flag = io_fromBackend_redirect_valid ? io_fromBackend_redirect_bits_ftqIdx_flag :
    io_fromIfu_pdWb_bits_ftqIdx_flag; // @[Mux.scala 47:70]
  wire [2:0] r_ftqIdx_value = io_fromBackend_redirect_valid ? io_fromBackend_redirect_bits_ftqIdx_value :
    io_fromIfu_pdWb_bits_ftqIdx_value; // @[Mux.scala 47:70]
  wire [3:0] _next_new_ptr_T = {r_ftqIdx_flag,r_ftqIdx_value}; // @[Cat.scala 31:58]
  wire [3:0] _next_new_ptr_T_2 = _next_new_ptr_T + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] next_value = _next_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  next_flag = _next_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] _ifuPtrPlus1_write_new_ptr_T_12 = _next_new_ptr_T + 4'h2; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] ifuPtrPlus1_write_new_ptr_2_value = _ifuPtrPlus1_write_new_ptr_T_12[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  ifuPtrPlus1_write_new_ptr_2_flag = _ifuPtrPlus1_write_new_ptr_T_12[3]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] _ifuPtrPlus2_write_new_ptr_T_17 = _next_new_ptr_T + 4'h3; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] ifuPtrPlus2_write_new_ptr_3_value = _ifuPtrPlus2_write_new_ptr_T_17[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  ifuPtrPlus2_write_new_ptr_3_flag = _ifuPtrPlus2_write_new_ptr_T_17[3]; // @[CircularQueuePtr.scala 39:59]
  reg  REG_4; // @[NewFtq.scala 1066:15]
  reg  REG_5; // @[NewFtq.scala 1070:18]
  reg [2:0] REG_6; // @[NewFtq.scala 1071:31]
  reg [2:0] REG_8; // @[NewFtq.scala 1072:54]
  reg  REG_9; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1515 = 3'h0 == REG_6 ? 2'h0 : _GEN_891; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1516 = 3'h1 == REG_6 ? 2'h0 : _GEN_892; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1517 = 3'h2 == REG_6 ? 2'h0 : _GEN_893; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1518 = 3'h3 == REG_6 ? 2'h0 : _GEN_894; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1519 = 3'h4 == REG_6 ? 2'h0 : _GEN_895; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1520 = 3'h5 == REG_6 ? 2'h0 : _GEN_896; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1521 = 3'h6 == REG_6 ? 2'h0 : _GEN_897; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1522 = 3'h7 == REG_6 ? 2'h0 : _GEN_898; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1523 = 3'h0 == REG_8 & REG_9 ? _GEN_1515 : _GEN_891; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1524 = 3'h0 == REG_8 & REG_9 ? _GEN_1516 : _GEN_892; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1525 = 3'h0 == REG_8 & REG_9 ? _GEN_1517 : _GEN_893; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1526 = 3'h0 == REG_8 & REG_9 ? _GEN_1518 : _GEN_894; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1527 = 3'h0 == REG_8 & REG_9 ? _GEN_1519 : _GEN_895; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1528 = 3'h0 == REG_8 & REG_9 ? _GEN_1520 : _GEN_896; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1529 = 3'h0 == REG_8 & REG_9 ? _GEN_1521 : _GEN_897; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1530 = 3'h0 == REG_8 & REG_9 ? _GEN_1522 : _GEN_898; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_10; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_11; // @[NewFtq.scala 1072:54]
  reg  REG_12; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1531 = 3'h0 == REG_6 ? 2'h0 : _GEN_899; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1532 = 3'h1 == REG_6 ? 2'h0 : _GEN_900; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1533 = 3'h2 == REG_6 ? 2'h0 : _GEN_901; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1534 = 3'h3 == REG_6 ? 2'h0 : _GEN_902; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1535 = 3'h4 == REG_6 ? 2'h0 : _GEN_903; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1536 = 3'h5 == REG_6 ? 2'h0 : _GEN_904; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1537 = 3'h6 == REG_6 ? 2'h0 : _GEN_905; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1538 = 3'h7 == REG_6 ? 2'h0 : _GEN_906; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1539 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1531 : _GEN_899; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1540 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1532 : _GEN_900; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1541 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1533 : _GEN_901; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1542 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1534 : _GEN_902; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1543 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1535 : _GEN_903; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1544 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1536 : _GEN_904; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1545 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1537 : _GEN_905; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1546 = 3'h1 > REG_10 | 3'h1 == REG_11 & REG_12 ? _GEN_1538 : _GEN_906; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_13; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_14; // @[NewFtq.scala 1072:54]
  reg  REG_15; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1547 = 3'h0 == REG_6 ? 2'h0 : _GEN_907; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1548 = 3'h1 == REG_6 ? 2'h0 : _GEN_908; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1549 = 3'h2 == REG_6 ? 2'h0 : _GEN_909; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1550 = 3'h3 == REG_6 ? 2'h0 : _GEN_910; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1551 = 3'h4 == REG_6 ? 2'h0 : _GEN_911; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1552 = 3'h5 == REG_6 ? 2'h0 : _GEN_912; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1553 = 3'h6 == REG_6 ? 2'h0 : _GEN_913; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1554 = 3'h7 == REG_6 ? 2'h0 : _GEN_914; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1555 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1547 : _GEN_907; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1556 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1548 : _GEN_908; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1557 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1549 : _GEN_909; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1558 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1550 : _GEN_910; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1559 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1551 : _GEN_911; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1560 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1552 : _GEN_912; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1561 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1553 : _GEN_913; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1562 = 3'h2 > REG_13 | 3'h2 == REG_14 & REG_15 ? _GEN_1554 : _GEN_914; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_16; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_17; // @[NewFtq.scala 1072:54]
  reg  REG_18; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1563 = 3'h0 == REG_6 ? 2'h0 : _GEN_915; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1564 = 3'h1 == REG_6 ? 2'h0 : _GEN_916; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1565 = 3'h2 == REG_6 ? 2'h0 : _GEN_917; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1566 = 3'h3 == REG_6 ? 2'h0 : _GEN_918; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1567 = 3'h4 == REG_6 ? 2'h0 : _GEN_919; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1568 = 3'h5 == REG_6 ? 2'h0 : _GEN_920; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1569 = 3'h6 == REG_6 ? 2'h0 : _GEN_921; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1570 = 3'h7 == REG_6 ? 2'h0 : _GEN_922; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1571 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1563 : _GEN_915; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1572 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1564 : _GEN_916; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1573 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1565 : _GEN_917; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1574 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1566 : _GEN_918; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1575 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1567 : _GEN_919; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1576 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1568 : _GEN_920; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1577 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1569 : _GEN_921; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1578 = 3'h3 > REG_16 | 3'h3 == REG_17 & REG_18 ? _GEN_1570 : _GEN_922; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_19; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_20; // @[NewFtq.scala 1072:54]
  reg  REG_21; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1579 = 3'h0 == REG_6 ? 2'h0 : _GEN_923; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1580 = 3'h1 == REG_6 ? 2'h0 : _GEN_924; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1581 = 3'h2 == REG_6 ? 2'h0 : _GEN_925; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1582 = 3'h3 == REG_6 ? 2'h0 : _GEN_926; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1583 = 3'h4 == REG_6 ? 2'h0 : _GEN_927; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1584 = 3'h5 == REG_6 ? 2'h0 : _GEN_928; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1585 = 3'h6 == REG_6 ? 2'h0 : _GEN_929; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1586 = 3'h7 == REG_6 ? 2'h0 : _GEN_930; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1587 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1579 : _GEN_923; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1588 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1580 : _GEN_924; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1589 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1581 : _GEN_925; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1590 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1582 : _GEN_926; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1591 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1583 : _GEN_927; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1592 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1584 : _GEN_928; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1593 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1585 : _GEN_929; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1594 = 3'h4 > REG_19 | 3'h4 == REG_20 & REG_21 ? _GEN_1586 : _GEN_930; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_22; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_23; // @[NewFtq.scala 1072:54]
  reg  REG_24; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1595 = 3'h0 == REG_6 ? 2'h0 : _GEN_931; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1596 = 3'h1 == REG_6 ? 2'h0 : _GEN_932; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1597 = 3'h2 == REG_6 ? 2'h0 : _GEN_933; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1598 = 3'h3 == REG_6 ? 2'h0 : _GEN_934; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1599 = 3'h4 == REG_6 ? 2'h0 : _GEN_935; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1600 = 3'h5 == REG_6 ? 2'h0 : _GEN_936; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1601 = 3'h6 == REG_6 ? 2'h0 : _GEN_937; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1602 = 3'h7 == REG_6 ? 2'h0 : _GEN_938; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1603 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1595 : _GEN_931; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1604 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1596 : _GEN_932; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1605 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1597 : _GEN_933; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1606 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1598 : _GEN_934; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1607 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1599 : _GEN_935; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1608 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1600 : _GEN_936; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1609 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1601 : _GEN_937; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1610 = 3'h5 > REG_22 | 3'h5 == REG_23 & REG_24 ? _GEN_1602 : _GEN_938; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_25; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_26; // @[NewFtq.scala 1072:54]
  reg  REG_27; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1611 = 3'h0 == REG_6 ? 2'h0 : _GEN_939; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1612 = 3'h1 == REG_6 ? 2'h0 : _GEN_940; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1613 = 3'h2 == REG_6 ? 2'h0 : _GEN_941; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1614 = 3'h3 == REG_6 ? 2'h0 : _GEN_942; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1615 = 3'h4 == REG_6 ? 2'h0 : _GEN_943; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1616 = 3'h5 == REG_6 ? 2'h0 : _GEN_944; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1617 = 3'h6 == REG_6 ? 2'h0 : _GEN_945; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1618 = 3'h7 == REG_6 ? 2'h0 : _GEN_946; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1619 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1611 : _GEN_939; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1620 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1612 : _GEN_940; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1621 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1613 : _GEN_941; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1622 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1614 : _GEN_942; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1623 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1615 : _GEN_943; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1624 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1616 : _GEN_944; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1625 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1617 : _GEN_945; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1626 = 3'h6 > REG_25 | 3'h6 == REG_26 & REG_27 ? _GEN_1618 : _GEN_946; // @[NewFtq.scala 1072:87]
  reg [2:0] REG_28; // @[NewFtq.scala 1072:27]
  reg [2:0] REG_29; // @[NewFtq.scala 1072:54]
  reg  REG_30; // @[NewFtq.scala 1072:73]
  wire [1:0] _GEN_1627 = 3'h0 == REG_6 ? 2'h0 : _GEN_947; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1628 = 3'h1 == REG_6 ? 2'h0 : _GEN_948; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1629 = 3'h2 == REG_6 ? 2'h0 : _GEN_949; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1630 = 3'h3 == REG_6 ? 2'h0 : _GEN_950; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1631 = 3'h4 == REG_6 ? 2'h0 : _GEN_951; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1632 = 3'h5 == REG_6 ? 2'h0 : _GEN_952; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1633 = 3'h6 == REG_6 ? 2'h0 : _GEN_953; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1634 = 3'h7 == REG_6 ? 2'h0 : _GEN_954; // @[NewFtq.scala 1073:{13,13}]
  wire [1:0] _GEN_1635 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1627 : _GEN_947; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1636 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1628 : _GEN_948; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1637 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1629 : _GEN_949; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1638 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1630 : _GEN_950; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1639 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1631 : _GEN_951; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1640 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1632 : _GEN_952; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1641 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1633 : _GEN_953; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1642 = 3'h7 > REG_28 | 3'h7 == REG_29 & REG_30 ? _GEN_1634 : _GEN_954; // @[NewFtq.scala 1072:87]
  wire [1:0] _GEN_1643 = REG_5 ? _GEN_1523 : _GEN_891; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1644 = REG_5 ? _GEN_1524 : _GEN_892; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1645 = REG_5 ? _GEN_1525 : _GEN_893; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1646 = REG_5 ? _GEN_1526 : _GEN_894; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1647 = REG_5 ? _GEN_1527 : _GEN_895; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1648 = REG_5 ? _GEN_1528 : _GEN_896; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1649 = REG_5 ? _GEN_1529 : _GEN_897; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1650 = REG_5 ? _GEN_1530 : _GEN_898; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1651 = REG_5 ? _GEN_1539 : _GEN_899; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1652 = REG_5 ? _GEN_1540 : _GEN_900; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1653 = REG_5 ? _GEN_1541 : _GEN_901; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1654 = REG_5 ? _GEN_1542 : _GEN_902; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1655 = REG_5 ? _GEN_1543 : _GEN_903; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1656 = REG_5 ? _GEN_1544 : _GEN_904; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1657 = REG_5 ? _GEN_1545 : _GEN_905; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1658 = REG_5 ? _GEN_1546 : _GEN_906; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1659 = REG_5 ? _GEN_1555 : _GEN_907; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1660 = REG_5 ? _GEN_1556 : _GEN_908; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1661 = REG_5 ? _GEN_1557 : _GEN_909; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1662 = REG_5 ? _GEN_1558 : _GEN_910; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1663 = REG_5 ? _GEN_1559 : _GEN_911; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1664 = REG_5 ? _GEN_1560 : _GEN_912; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1665 = REG_5 ? _GEN_1561 : _GEN_913; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1666 = REG_5 ? _GEN_1562 : _GEN_914; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1667 = REG_5 ? _GEN_1571 : _GEN_915; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1668 = REG_5 ? _GEN_1572 : _GEN_916; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1669 = REG_5 ? _GEN_1573 : _GEN_917; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1670 = REG_5 ? _GEN_1574 : _GEN_918; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1671 = REG_5 ? _GEN_1575 : _GEN_919; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1672 = REG_5 ? _GEN_1576 : _GEN_920; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1673 = REG_5 ? _GEN_1577 : _GEN_921; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1674 = REG_5 ? _GEN_1578 : _GEN_922; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1675 = REG_5 ? _GEN_1587 : _GEN_923; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1676 = REG_5 ? _GEN_1588 : _GEN_924; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1677 = REG_5 ? _GEN_1589 : _GEN_925; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1678 = REG_5 ? _GEN_1590 : _GEN_926; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1679 = REG_5 ? _GEN_1591 : _GEN_927; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1680 = REG_5 ? _GEN_1592 : _GEN_928; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1681 = REG_5 ? _GEN_1593 : _GEN_929; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1682 = REG_5 ? _GEN_1594 : _GEN_930; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1683 = REG_5 ? _GEN_1603 : _GEN_931; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1684 = REG_5 ? _GEN_1604 : _GEN_932; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1685 = REG_5 ? _GEN_1605 : _GEN_933; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1686 = REG_5 ? _GEN_1606 : _GEN_934; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1687 = REG_5 ? _GEN_1607 : _GEN_935; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1688 = REG_5 ? _GEN_1608 : _GEN_936; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1689 = REG_5 ? _GEN_1609 : _GEN_937; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1690 = REG_5 ? _GEN_1610 : _GEN_938; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1691 = REG_5 ? _GEN_1619 : _GEN_939; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1692 = REG_5 ? _GEN_1620 : _GEN_940; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1693 = REG_5 ? _GEN_1621 : _GEN_941; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1694 = REG_5 ? _GEN_1622 : _GEN_942; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1695 = REG_5 ? _GEN_1623 : _GEN_943; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1696 = REG_5 ? _GEN_1624 : _GEN_944; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1697 = REG_5 ? _GEN_1625 : _GEN_945; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1698 = REG_5 ? _GEN_1626 : _GEN_946; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1699 = REG_5 ? _GEN_1635 : _GEN_947; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1700 = REG_5 ? _GEN_1636 : _GEN_948; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1701 = REG_5 ? _GEN_1637 : _GEN_949; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1702 = REG_5 ? _GEN_1638 : _GEN_950; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1703 = REG_5 ? _GEN_1639 : _GEN_951; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1704 = REG_5 ? _GEN_1640 : _GEN_952; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1705 = REG_5 ? _GEN_1641 : _GEN_953; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1706 = REG_5 ? _GEN_1642 : _GEN_954; // @[NewFtq.scala 1070:28]
  wire [1:0] _GEN_1707 = REG_4 ? _GEN_1643 : _GEN_891; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1708 = REG_4 ? _GEN_1644 : _GEN_892; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1709 = REG_4 ? _GEN_1645 : _GEN_893; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1710 = REG_4 ? _GEN_1646 : _GEN_894; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1711 = REG_4 ? _GEN_1647 : _GEN_895; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1712 = REG_4 ? _GEN_1648 : _GEN_896; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1713 = REG_4 ? _GEN_1649 : _GEN_897; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1714 = REG_4 ? _GEN_1650 : _GEN_898; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1715 = REG_4 ? _GEN_1651 : _GEN_899; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1716 = REG_4 ? _GEN_1652 : _GEN_900; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1717 = REG_4 ? _GEN_1653 : _GEN_901; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1718 = REG_4 ? _GEN_1654 : _GEN_902; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1719 = REG_4 ? _GEN_1655 : _GEN_903; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1720 = REG_4 ? _GEN_1656 : _GEN_904; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1721 = REG_4 ? _GEN_1657 : _GEN_905; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1722 = REG_4 ? _GEN_1658 : _GEN_906; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1723 = REG_4 ? _GEN_1659 : _GEN_907; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1724 = REG_4 ? _GEN_1660 : _GEN_908; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1725 = REG_4 ? _GEN_1661 : _GEN_909; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1726 = REG_4 ? _GEN_1662 : _GEN_910; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1727 = REG_4 ? _GEN_1663 : _GEN_911; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1728 = REG_4 ? _GEN_1664 : _GEN_912; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1729 = REG_4 ? _GEN_1665 : _GEN_913; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1730 = REG_4 ? _GEN_1666 : _GEN_914; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1731 = REG_4 ? _GEN_1667 : _GEN_915; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1732 = REG_4 ? _GEN_1668 : _GEN_916; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1733 = REG_4 ? _GEN_1669 : _GEN_917; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1734 = REG_4 ? _GEN_1670 : _GEN_918; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1735 = REG_4 ? _GEN_1671 : _GEN_919; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1736 = REG_4 ? _GEN_1672 : _GEN_920; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1737 = REG_4 ? _GEN_1673 : _GEN_921; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1738 = REG_4 ? _GEN_1674 : _GEN_922; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1739 = REG_4 ? _GEN_1675 : _GEN_923; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1740 = REG_4 ? _GEN_1676 : _GEN_924; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1741 = REG_4 ? _GEN_1677 : _GEN_925; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1742 = REG_4 ? _GEN_1678 : _GEN_926; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1743 = REG_4 ? _GEN_1679 : _GEN_927; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1744 = REG_4 ? _GEN_1680 : _GEN_928; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1745 = REG_4 ? _GEN_1681 : _GEN_929; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1746 = REG_4 ? _GEN_1682 : _GEN_930; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1747 = REG_4 ? _GEN_1683 : _GEN_931; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1748 = REG_4 ? _GEN_1684 : _GEN_932; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1749 = REG_4 ? _GEN_1685 : _GEN_933; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1750 = REG_4 ? _GEN_1686 : _GEN_934; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1751 = REG_4 ? _GEN_1687 : _GEN_935; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1752 = REG_4 ? _GEN_1688 : _GEN_936; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1753 = REG_4 ? _GEN_1689 : _GEN_937; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1754 = REG_4 ? _GEN_1690 : _GEN_938; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1755 = REG_4 ? _GEN_1691 : _GEN_939; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1756 = REG_4 ? _GEN_1692 : _GEN_940; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1757 = REG_4 ? _GEN_1693 : _GEN_941; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1758 = REG_4 ? _GEN_1694 : _GEN_942; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1759 = REG_4 ? _GEN_1695 : _GEN_943; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1760 = REG_4 ? _GEN_1696 : _GEN_944; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1761 = REG_4 ? _GEN_1697 : _GEN_945; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1762 = REG_4 ? _GEN_1698 : _GEN_946; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1763 = REG_4 ? _GEN_1699 : _GEN_947; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1764 = REG_4 ? _GEN_1700 : _GEN_948; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1765 = REG_4 ? _GEN_1701 : _GEN_949; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1766 = REG_4 ? _GEN_1702 : _GEN_950; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1767 = REG_4 ? _GEN_1703 : _GEN_951; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1768 = REG_4 ? _GEN_1704 : _GEN_952; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1769 = REG_4 ? _GEN_1705 : _GEN_953; // @[NewFtq.scala 1066:60]
  wire [1:0] _GEN_1770 = REG_4 ? _GEN_1706 : _GEN_954; // @[NewFtq.scala 1066:60]
  wire  _GEN_3145 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1771 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1707; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1772 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1715; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1773 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1723; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1774 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1731; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1775 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1739; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1776 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1747; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1777 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1755; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1778 = 3'h0 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1763; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3161 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1779 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1708; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1780 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1716; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1781 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1724; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1782 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1732; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1783 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1740; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1784 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1748; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1785 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1756; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1786 = 3'h1 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1764; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3177 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1787 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1709; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1788 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1717; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1789 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1725; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1790 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1733; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1791 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1741; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1792 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1749; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1793 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1757; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1794 = 3'h2 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1765; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3193 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1795 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1710; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1796 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1718; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1797 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1726; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1798 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1734; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1799 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1742; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1800 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1750; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1801 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1758; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1802 = 3'h3 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1766; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3209 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1803 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1711; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1804 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1719; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1805 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1727; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1806 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1735; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1807 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1743; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1808 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1751; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1809 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1759; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1810 = 3'h4 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1767; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3225 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1811 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1712; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1812 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1720; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1813 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1728; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1814 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1736; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1815 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1744; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1816 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1752; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1817 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1760; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1818 = 3'h5 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1768; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3241 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1819 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1713; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1820 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1721; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1821 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1729; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1822 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1737; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1823 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1745; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1824 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1753; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1825 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1761; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1826 = 3'h6 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1769; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3257 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1827 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1714; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1828 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1722; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1829 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1730; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1830 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1738; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1831 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1746; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1832 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1754; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1833 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1762; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_1834 = 3'h7 == io_fromBackend_rob_commits_0_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_0_bits_ftqOffset ? 2'h2 : _GEN_1770; // @[NewFtq.scala 1088:{63,63}]
  wire [2:0] _T_270 = io_fromBackend_rob_commits_0_bits_ftqOffset + 3'h1; // @[NewFtq.scala 1092:64]
  wire [1:0] _GEN_1835 = _GEN_3145 & 3'h0 == _T_270 ? 2'h2 : _GEN_1771; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1836 = _GEN_3145 & 3'h1 == _T_270 ? 2'h2 : _GEN_1772; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1837 = _GEN_3145 & 3'h2 == _T_270 ? 2'h2 : _GEN_1773; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1838 = _GEN_3145 & 3'h3 == _T_270 ? 2'h2 : _GEN_1774; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1839 = _GEN_3145 & 3'h4 == _T_270 ? 2'h2 : _GEN_1775; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1840 = _GEN_3145 & 3'h5 == _T_270 ? 2'h2 : _GEN_1776; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1841 = _GEN_3145 & 3'h6 == _T_270 ? 2'h2 : _GEN_1777; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1842 = _GEN_3145 & 3'h7 == _T_270 ? 2'h2 : _GEN_1778; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1843 = _GEN_3161 & 3'h0 == _T_270 ? 2'h2 : _GEN_1779; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1844 = _GEN_3161 & 3'h1 == _T_270 ? 2'h2 : _GEN_1780; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1845 = _GEN_3161 & 3'h2 == _T_270 ? 2'h2 : _GEN_1781; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1846 = _GEN_3161 & 3'h3 == _T_270 ? 2'h2 : _GEN_1782; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1847 = _GEN_3161 & 3'h4 == _T_270 ? 2'h2 : _GEN_1783; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1848 = _GEN_3161 & 3'h5 == _T_270 ? 2'h2 : _GEN_1784; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1849 = _GEN_3161 & 3'h6 == _T_270 ? 2'h2 : _GEN_1785; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1850 = _GEN_3161 & 3'h7 == _T_270 ? 2'h2 : _GEN_1786; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1851 = _GEN_3177 & 3'h0 == _T_270 ? 2'h2 : _GEN_1787; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1852 = _GEN_3177 & 3'h1 == _T_270 ? 2'h2 : _GEN_1788; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1853 = _GEN_3177 & 3'h2 == _T_270 ? 2'h2 : _GEN_1789; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1854 = _GEN_3177 & 3'h3 == _T_270 ? 2'h2 : _GEN_1790; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1855 = _GEN_3177 & 3'h4 == _T_270 ? 2'h2 : _GEN_1791; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1856 = _GEN_3177 & 3'h5 == _T_270 ? 2'h2 : _GEN_1792; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1857 = _GEN_3177 & 3'h6 == _T_270 ? 2'h2 : _GEN_1793; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1858 = _GEN_3177 & 3'h7 == _T_270 ? 2'h2 : _GEN_1794; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1859 = _GEN_3193 & 3'h0 == _T_270 ? 2'h2 : _GEN_1795; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1860 = _GEN_3193 & 3'h1 == _T_270 ? 2'h2 : _GEN_1796; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1861 = _GEN_3193 & 3'h2 == _T_270 ? 2'h2 : _GEN_1797; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1862 = _GEN_3193 & 3'h3 == _T_270 ? 2'h2 : _GEN_1798; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1863 = _GEN_3193 & 3'h4 == _T_270 ? 2'h2 : _GEN_1799; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1864 = _GEN_3193 & 3'h5 == _T_270 ? 2'h2 : _GEN_1800; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1865 = _GEN_3193 & 3'h6 == _T_270 ? 2'h2 : _GEN_1801; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1866 = _GEN_3193 & 3'h7 == _T_270 ? 2'h2 : _GEN_1802; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1867 = _GEN_3209 & 3'h0 == _T_270 ? 2'h2 : _GEN_1803; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1868 = _GEN_3209 & 3'h1 == _T_270 ? 2'h2 : _GEN_1804; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1869 = _GEN_3209 & 3'h2 == _T_270 ? 2'h2 : _GEN_1805; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1870 = _GEN_3209 & 3'h3 == _T_270 ? 2'h2 : _GEN_1806; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1871 = _GEN_3209 & 3'h4 == _T_270 ? 2'h2 : _GEN_1807; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1872 = _GEN_3209 & 3'h5 == _T_270 ? 2'h2 : _GEN_1808; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1873 = _GEN_3209 & 3'h6 == _T_270 ? 2'h2 : _GEN_1809; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1874 = _GEN_3209 & 3'h7 == _T_270 ? 2'h2 : _GEN_1810; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1875 = _GEN_3225 & 3'h0 == _T_270 ? 2'h2 : _GEN_1811; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1876 = _GEN_3225 & 3'h1 == _T_270 ? 2'h2 : _GEN_1812; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1877 = _GEN_3225 & 3'h2 == _T_270 ? 2'h2 : _GEN_1813; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1878 = _GEN_3225 & 3'h3 == _T_270 ? 2'h2 : _GEN_1814; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1879 = _GEN_3225 & 3'h4 == _T_270 ? 2'h2 : _GEN_1815; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1880 = _GEN_3225 & 3'h5 == _T_270 ? 2'h2 : _GEN_1816; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1881 = _GEN_3225 & 3'h6 == _T_270 ? 2'h2 : _GEN_1817; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1882 = _GEN_3225 & 3'h7 == _T_270 ? 2'h2 : _GEN_1818; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1883 = _GEN_3241 & 3'h0 == _T_270 ? 2'h2 : _GEN_1819; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1884 = _GEN_3241 & 3'h1 == _T_270 ? 2'h2 : _GEN_1820; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1885 = _GEN_3241 & 3'h2 == _T_270 ? 2'h2 : _GEN_1821; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1886 = _GEN_3241 & 3'h3 == _T_270 ? 2'h2 : _GEN_1822; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1887 = _GEN_3241 & 3'h4 == _T_270 ? 2'h2 : _GEN_1823; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1888 = _GEN_3241 & 3'h5 == _T_270 ? 2'h2 : _GEN_1824; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1889 = _GEN_3241 & 3'h6 == _T_270 ? 2'h2 : _GEN_1825; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1890 = _GEN_3241 & 3'h7 == _T_270 ? 2'h2 : _GEN_1826; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1891 = _GEN_3257 & 3'h0 == _T_270 ? 2'h2 : _GEN_1827; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1892 = _GEN_3257 & 3'h1 == _T_270 ? 2'h2 : _GEN_1828; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1893 = _GEN_3257 & 3'h2 == _T_270 ? 2'h2 : _GEN_1829; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1894 = _GEN_3257 & 3'h3 == _T_270 ? 2'h2 : _GEN_1830; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1895 = _GEN_3257 & 3'h4 == _T_270 ? 2'h2 : _GEN_1831; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1896 = _GEN_3257 & 3'h5 == _T_270 ? 2'h2 : _GEN_1832; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1897 = _GEN_3257 & 3'h6 == _T_270 ? 2'h2 : _GEN_1833; // @[NewFtq.scala 1092:{71,71}]
  wire [1:0] _GEN_1898 = _GEN_3257 & 3'h7 == _T_270 ? 2'h2 : _GEN_1834; // @[NewFtq.scala 1092:{71,71}]
  wire [2:0] _T_273 = io_fromBackend_rob_commits_0_bits_ftqOffset + 3'h2; // @[NewFtq.scala 1094:64]
  wire [1:0] _GEN_1899 = _GEN_3145 & 3'h0 == _T_273 ? 2'h2 : _GEN_1771; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1900 = _GEN_3145 & 3'h1 == _T_273 ? 2'h2 : _GEN_1772; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1901 = _GEN_3145 & 3'h2 == _T_273 ? 2'h2 : _GEN_1773; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1902 = _GEN_3145 & 3'h3 == _T_273 ? 2'h2 : _GEN_1774; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1903 = _GEN_3145 & 3'h4 == _T_273 ? 2'h2 : _GEN_1775; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1904 = _GEN_3145 & 3'h5 == _T_273 ? 2'h2 : _GEN_1776; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1905 = _GEN_3145 & 3'h6 == _T_273 ? 2'h2 : _GEN_1777; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1906 = _GEN_3145 & 3'h7 == _T_273 ? 2'h2 : _GEN_1778; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1907 = _GEN_3161 & 3'h0 == _T_273 ? 2'h2 : _GEN_1779; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1908 = _GEN_3161 & 3'h1 == _T_273 ? 2'h2 : _GEN_1780; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1909 = _GEN_3161 & 3'h2 == _T_273 ? 2'h2 : _GEN_1781; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1910 = _GEN_3161 & 3'h3 == _T_273 ? 2'h2 : _GEN_1782; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1911 = _GEN_3161 & 3'h4 == _T_273 ? 2'h2 : _GEN_1783; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1912 = _GEN_3161 & 3'h5 == _T_273 ? 2'h2 : _GEN_1784; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1913 = _GEN_3161 & 3'h6 == _T_273 ? 2'h2 : _GEN_1785; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1914 = _GEN_3161 & 3'h7 == _T_273 ? 2'h2 : _GEN_1786; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1915 = _GEN_3177 & 3'h0 == _T_273 ? 2'h2 : _GEN_1787; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1916 = _GEN_3177 & 3'h1 == _T_273 ? 2'h2 : _GEN_1788; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1917 = _GEN_3177 & 3'h2 == _T_273 ? 2'h2 : _GEN_1789; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1918 = _GEN_3177 & 3'h3 == _T_273 ? 2'h2 : _GEN_1790; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1919 = _GEN_3177 & 3'h4 == _T_273 ? 2'h2 : _GEN_1791; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1920 = _GEN_3177 & 3'h5 == _T_273 ? 2'h2 : _GEN_1792; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1921 = _GEN_3177 & 3'h6 == _T_273 ? 2'h2 : _GEN_1793; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1922 = _GEN_3177 & 3'h7 == _T_273 ? 2'h2 : _GEN_1794; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1923 = _GEN_3193 & 3'h0 == _T_273 ? 2'h2 : _GEN_1795; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1924 = _GEN_3193 & 3'h1 == _T_273 ? 2'h2 : _GEN_1796; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1925 = _GEN_3193 & 3'h2 == _T_273 ? 2'h2 : _GEN_1797; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1926 = _GEN_3193 & 3'h3 == _T_273 ? 2'h2 : _GEN_1798; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1927 = _GEN_3193 & 3'h4 == _T_273 ? 2'h2 : _GEN_1799; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1928 = _GEN_3193 & 3'h5 == _T_273 ? 2'h2 : _GEN_1800; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1929 = _GEN_3193 & 3'h6 == _T_273 ? 2'h2 : _GEN_1801; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1930 = _GEN_3193 & 3'h7 == _T_273 ? 2'h2 : _GEN_1802; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1931 = _GEN_3209 & 3'h0 == _T_273 ? 2'h2 : _GEN_1803; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1932 = _GEN_3209 & 3'h1 == _T_273 ? 2'h2 : _GEN_1804; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1933 = _GEN_3209 & 3'h2 == _T_273 ? 2'h2 : _GEN_1805; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1934 = _GEN_3209 & 3'h3 == _T_273 ? 2'h2 : _GEN_1806; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1935 = _GEN_3209 & 3'h4 == _T_273 ? 2'h2 : _GEN_1807; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1936 = _GEN_3209 & 3'h5 == _T_273 ? 2'h2 : _GEN_1808; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1937 = _GEN_3209 & 3'h6 == _T_273 ? 2'h2 : _GEN_1809; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1938 = _GEN_3209 & 3'h7 == _T_273 ? 2'h2 : _GEN_1810; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1939 = _GEN_3225 & 3'h0 == _T_273 ? 2'h2 : _GEN_1811; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1940 = _GEN_3225 & 3'h1 == _T_273 ? 2'h2 : _GEN_1812; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1941 = _GEN_3225 & 3'h2 == _T_273 ? 2'h2 : _GEN_1813; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1942 = _GEN_3225 & 3'h3 == _T_273 ? 2'h2 : _GEN_1814; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1943 = _GEN_3225 & 3'h4 == _T_273 ? 2'h2 : _GEN_1815; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1944 = _GEN_3225 & 3'h5 == _T_273 ? 2'h2 : _GEN_1816; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1945 = _GEN_3225 & 3'h6 == _T_273 ? 2'h2 : _GEN_1817; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1946 = _GEN_3225 & 3'h7 == _T_273 ? 2'h2 : _GEN_1818; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1947 = _GEN_3241 & 3'h0 == _T_273 ? 2'h2 : _GEN_1819; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1948 = _GEN_3241 & 3'h1 == _T_273 ? 2'h2 : _GEN_1820; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1949 = _GEN_3241 & 3'h2 == _T_273 ? 2'h2 : _GEN_1821; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1950 = _GEN_3241 & 3'h3 == _T_273 ? 2'h2 : _GEN_1822; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1951 = _GEN_3241 & 3'h4 == _T_273 ? 2'h2 : _GEN_1823; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1952 = _GEN_3241 & 3'h5 == _T_273 ? 2'h2 : _GEN_1824; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1953 = _GEN_3241 & 3'h6 == _T_273 ? 2'h2 : _GEN_1825; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1954 = _GEN_3241 & 3'h7 == _T_273 ? 2'h2 : _GEN_1826; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1955 = _GEN_3257 & 3'h0 == _T_273 ? 2'h2 : _GEN_1827; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1956 = _GEN_3257 & 3'h1 == _T_273 ? 2'h2 : _GEN_1828; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1957 = _GEN_3257 & 3'h2 == _T_273 ? 2'h2 : _GEN_1829; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1958 = _GEN_3257 & 3'h3 == _T_273 ? 2'h2 : _GEN_1830; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1959 = _GEN_3257 & 3'h4 == _T_273 ? 2'h2 : _GEN_1831; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1960 = _GEN_3257 & 3'h5 == _T_273 ? 2'h2 : _GEN_1832; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1961 = _GEN_3257 & 3'h6 == _T_273 ? 2'h2 : _GEN_1833; // @[NewFtq.scala 1094:{71,71}]
  wire [1:0] _GEN_1962 = _GEN_3257 & 3'h7 == _T_273 ? 2'h2 : _GEN_1834; // @[NewFtq.scala 1094:{71,71}]
  wire [3:0] _index_new_ptr_T = {io_fromBackend_rob_commits_0_bits_ftqIdx_flag,
    io_fromBackend_rob_commits_0_bits_ftqIdx_value}; // @[Cat.scala 31:58]
  wire [3:0] _index_new_ptr_T_2 = _index_new_ptr_T + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] index_new_ptr_value = _index_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _GEN_1963 = 3'h0 == index_new_ptr_value ? 2'h2 : _GEN_1771; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1964 = 3'h1 == index_new_ptr_value ? 2'h2 : _GEN_1779; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1965 = 3'h2 == index_new_ptr_value ? 2'h2 : _GEN_1787; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1966 = 3'h3 == index_new_ptr_value ? 2'h2 : _GEN_1795; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1967 = 3'h4 == index_new_ptr_value ? 2'h2 : _GEN_1803; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1968 = 3'h5 == index_new_ptr_value ? 2'h2 : _GEN_1811; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1969 = 3'h6 == index_new_ptr_value ? 2'h2 : _GEN_1819; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1970 = 3'h7 == index_new_ptr_value ? 2'h2 : _GEN_1827; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_1971 = 3'h0 == index_new_ptr_value ? 2'h2 : _GEN_1772; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1972 = 3'h1 == index_new_ptr_value ? 2'h2 : _GEN_1780; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1973 = 3'h2 == index_new_ptr_value ? 2'h2 : _GEN_1788; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1974 = 3'h3 == index_new_ptr_value ? 2'h2 : _GEN_1796; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1975 = 3'h4 == index_new_ptr_value ? 2'h2 : _GEN_1804; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1976 = 3'h5 == index_new_ptr_value ? 2'h2 : _GEN_1812; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1977 = 3'h6 == index_new_ptr_value ? 2'h2 : _GEN_1820; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1978 = 3'h7 == index_new_ptr_value ? 2'h2 : _GEN_1828; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_1979 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1971 : _GEN_1772; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1980 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1972 : _GEN_1780; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1981 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1973 : _GEN_1788; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1982 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1974 : _GEN_1796; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1983 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1975 : _GEN_1804; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1984 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1976 : _GEN_1812; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1985 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1977 : _GEN_1820; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1986 = io_fromBackend_rob_commits_0_bits_commitType == 3'h7 ? _GEN_1978 : _GEN_1828; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_1987 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1963 : _GEN_1771; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1988 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1964 : _GEN_1779; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1989 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1965 : _GEN_1787; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1990 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1966 : _GEN_1795; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1991 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1967 : _GEN_1803; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1992 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1968 : _GEN_1811; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1993 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1969 : _GEN_1819; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1994 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1970 : _GEN_1827; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1995 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1772 : _GEN_1979; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1996 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1780 : _GEN_1980; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1997 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1788 : _GEN_1981; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1998 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1796 : _GEN_1982; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_1999 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1804 : _GEN_1983; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_2000 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1812 : _GEN_1984; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_2001 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1820 : _GEN_1985; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_2002 = io_fromBackend_rob_commits_0_bits_commitType == 3'h6 ? _GEN_1828 : _GEN_1986; // @[NewFtq.scala 1095:45]
  wire [1:0] _GEN_2003 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1899 : _GEN_1987; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2004 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1900 : _GEN_1995; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2005 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1901 : _GEN_1773; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2006 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1902 : _GEN_1774; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2007 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1903 : _GEN_1775; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2008 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1904 : _GEN_1776; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2009 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1905 : _GEN_1777; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2010 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1906 : _GEN_1778; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2011 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1907 : _GEN_1988; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2012 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1908 : _GEN_1996; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2013 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1909 : _GEN_1781; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2014 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1910 : _GEN_1782; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2015 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1911 : _GEN_1783; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2016 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1912 : _GEN_1784; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2017 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1913 : _GEN_1785; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2018 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1914 : _GEN_1786; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2019 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1915 : _GEN_1989; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2020 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1916 : _GEN_1997; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2021 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1917 : _GEN_1789; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2022 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1918 : _GEN_1790; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2023 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1919 : _GEN_1791; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2024 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1920 : _GEN_1792; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2025 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1921 : _GEN_1793; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2026 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1922 : _GEN_1794; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2027 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1923 : _GEN_1990; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2028 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1924 : _GEN_1998; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2029 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1925 : _GEN_1797; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2030 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1926 : _GEN_1798; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2031 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1927 : _GEN_1799; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2032 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1928 : _GEN_1800; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2033 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1929 : _GEN_1801; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2034 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1930 : _GEN_1802; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2035 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1931 : _GEN_1991; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2036 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1932 : _GEN_1999; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2037 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1933 : _GEN_1805; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2038 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1934 : _GEN_1806; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2039 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1935 : _GEN_1807; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2040 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1936 : _GEN_1808; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2041 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1937 : _GEN_1809; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2042 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1938 : _GEN_1810; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2043 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1939 : _GEN_1992; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2044 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1940 : _GEN_2000; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2045 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1941 : _GEN_1813; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2046 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1942 : _GEN_1814; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2047 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1943 : _GEN_1815; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2048 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1944 : _GEN_1816; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2049 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1945 : _GEN_1817; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2050 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1946 : _GEN_1818; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2051 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1947 : _GEN_1993; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2052 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1948 : _GEN_2001; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2053 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1949 : _GEN_1821; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2054 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1950 : _GEN_1822; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2055 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1951 : _GEN_1823; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2056 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1952 : _GEN_1824; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2057 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1953 : _GEN_1825; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2058 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1954 : _GEN_1826; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2059 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1955 : _GEN_1994; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2060 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1956 : _GEN_2002; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2061 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1957 : _GEN_1829; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2062 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1958 : _GEN_1830; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2063 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1959 : _GEN_1831; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2064 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1960 : _GEN_1832; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2065 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1961 : _GEN_1833; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2066 = io_fromBackend_rob_commits_0_bits_commitType == 3'h5 ? _GEN_1962 : _GEN_1834; // @[NewFtq.scala 1093:45]
  wire [1:0] _GEN_2067 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1835 : _GEN_2003; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2068 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1836 : _GEN_2004; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2069 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1837 : _GEN_2005; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2070 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1838 : _GEN_2006; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2071 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1839 : _GEN_2007; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2072 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1840 : _GEN_2008; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2073 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1841 : _GEN_2009; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2074 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1842 : _GEN_2010; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2075 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1843 : _GEN_2011; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2076 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1844 : _GEN_2012; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2077 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1845 : _GEN_2013; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2078 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1846 : _GEN_2014; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2079 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1847 : _GEN_2015; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2080 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1848 : _GEN_2016; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2081 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1849 : _GEN_2017; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2082 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1850 : _GEN_2018; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2083 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1851 : _GEN_2019; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2084 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1852 : _GEN_2020; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2085 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1853 : _GEN_2021; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2086 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1854 : _GEN_2022; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2087 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1855 : _GEN_2023; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2088 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1856 : _GEN_2024; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2089 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1857 : _GEN_2025; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2090 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1858 : _GEN_2026; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2091 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1859 : _GEN_2027; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2092 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1860 : _GEN_2028; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2093 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1861 : _GEN_2029; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2094 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1862 : _GEN_2030; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2095 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1863 : _GEN_2031; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2096 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1864 : _GEN_2032; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2097 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1865 : _GEN_2033; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2098 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1866 : _GEN_2034; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2099 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1867 : _GEN_2035; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2100 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1868 : _GEN_2036; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2101 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1869 : _GEN_2037; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2102 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1870 : _GEN_2038; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2103 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1871 : _GEN_2039; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2104 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1872 : _GEN_2040; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2105 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1873 : _GEN_2041; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2106 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1874 : _GEN_2042; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2107 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1875 : _GEN_2043; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2108 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1876 : _GEN_2044; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2109 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1877 : _GEN_2045; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2110 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1878 : _GEN_2046; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2111 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1879 : _GEN_2047; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2112 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1880 : _GEN_2048; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2113 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1881 : _GEN_2049; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2114 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1882 : _GEN_2050; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2115 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1883 : _GEN_2051; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2116 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1884 : _GEN_2052; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2117 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1885 : _GEN_2053; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2118 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1886 : _GEN_2054; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2119 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1887 : _GEN_2055; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2120 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1888 : _GEN_2056; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2121 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1889 : _GEN_2057; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2122 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1890 : _GEN_2058; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2123 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1891 : _GEN_2059; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2124 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1892 : _GEN_2060; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2125 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1893 : _GEN_2061; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2126 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1894 : _GEN_2062; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2127 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1895 : _GEN_2063; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2128 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1896 : _GEN_2064; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2129 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1897 : _GEN_2065; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2130 = io_fromBackend_rob_commits_0_bits_commitType == 3'h4 ? _GEN_1898 : _GEN_2066; // @[NewFtq.scala 1091:40]
  wire [1:0] _GEN_2131 = io_fromBackend_rob_commits_0_valid ? _GEN_2067 : _GEN_1707; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2132 = io_fromBackend_rob_commits_0_valid ? _GEN_2068 : _GEN_1715; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2133 = io_fromBackend_rob_commits_0_valid ? _GEN_2069 : _GEN_1723; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2134 = io_fromBackend_rob_commits_0_valid ? _GEN_2070 : _GEN_1731; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2135 = io_fromBackend_rob_commits_0_valid ? _GEN_2071 : _GEN_1739; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2136 = io_fromBackend_rob_commits_0_valid ? _GEN_2072 : _GEN_1747; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2137 = io_fromBackend_rob_commits_0_valid ? _GEN_2073 : _GEN_1755; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2138 = io_fromBackend_rob_commits_0_valid ? _GEN_2074 : _GEN_1763; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2139 = io_fromBackend_rob_commits_0_valid ? _GEN_2075 : _GEN_1708; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2140 = io_fromBackend_rob_commits_0_valid ? _GEN_2076 : _GEN_1716; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2141 = io_fromBackend_rob_commits_0_valid ? _GEN_2077 : _GEN_1724; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2142 = io_fromBackend_rob_commits_0_valid ? _GEN_2078 : _GEN_1732; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2143 = io_fromBackend_rob_commits_0_valid ? _GEN_2079 : _GEN_1740; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2144 = io_fromBackend_rob_commits_0_valid ? _GEN_2080 : _GEN_1748; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2145 = io_fromBackend_rob_commits_0_valid ? _GEN_2081 : _GEN_1756; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2146 = io_fromBackend_rob_commits_0_valid ? _GEN_2082 : _GEN_1764; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2147 = io_fromBackend_rob_commits_0_valid ? _GEN_2083 : _GEN_1709; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2148 = io_fromBackend_rob_commits_0_valid ? _GEN_2084 : _GEN_1717; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2149 = io_fromBackend_rob_commits_0_valid ? _GEN_2085 : _GEN_1725; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2150 = io_fromBackend_rob_commits_0_valid ? _GEN_2086 : _GEN_1733; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2151 = io_fromBackend_rob_commits_0_valid ? _GEN_2087 : _GEN_1741; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2152 = io_fromBackend_rob_commits_0_valid ? _GEN_2088 : _GEN_1749; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2153 = io_fromBackend_rob_commits_0_valid ? _GEN_2089 : _GEN_1757; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2154 = io_fromBackend_rob_commits_0_valid ? _GEN_2090 : _GEN_1765; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2155 = io_fromBackend_rob_commits_0_valid ? _GEN_2091 : _GEN_1710; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2156 = io_fromBackend_rob_commits_0_valid ? _GEN_2092 : _GEN_1718; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2157 = io_fromBackend_rob_commits_0_valid ? _GEN_2093 : _GEN_1726; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2158 = io_fromBackend_rob_commits_0_valid ? _GEN_2094 : _GEN_1734; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2159 = io_fromBackend_rob_commits_0_valid ? _GEN_2095 : _GEN_1742; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2160 = io_fromBackend_rob_commits_0_valid ? _GEN_2096 : _GEN_1750; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2161 = io_fromBackend_rob_commits_0_valid ? _GEN_2097 : _GEN_1758; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2162 = io_fromBackend_rob_commits_0_valid ? _GEN_2098 : _GEN_1766; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2163 = io_fromBackend_rob_commits_0_valid ? _GEN_2099 : _GEN_1711; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2164 = io_fromBackend_rob_commits_0_valid ? _GEN_2100 : _GEN_1719; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2165 = io_fromBackend_rob_commits_0_valid ? _GEN_2101 : _GEN_1727; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2166 = io_fromBackend_rob_commits_0_valid ? _GEN_2102 : _GEN_1735; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2167 = io_fromBackend_rob_commits_0_valid ? _GEN_2103 : _GEN_1743; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2168 = io_fromBackend_rob_commits_0_valid ? _GEN_2104 : _GEN_1751; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2169 = io_fromBackend_rob_commits_0_valid ? _GEN_2105 : _GEN_1759; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2170 = io_fromBackend_rob_commits_0_valid ? _GEN_2106 : _GEN_1767; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2171 = io_fromBackend_rob_commits_0_valid ? _GEN_2107 : _GEN_1712; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2172 = io_fromBackend_rob_commits_0_valid ? _GEN_2108 : _GEN_1720; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2173 = io_fromBackend_rob_commits_0_valid ? _GEN_2109 : _GEN_1728; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2174 = io_fromBackend_rob_commits_0_valid ? _GEN_2110 : _GEN_1736; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2175 = io_fromBackend_rob_commits_0_valid ? _GEN_2111 : _GEN_1744; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2176 = io_fromBackend_rob_commits_0_valid ? _GEN_2112 : _GEN_1752; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2177 = io_fromBackend_rob_commits_0_valid ? _GEN_2113 : _GEN_1760; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2178 = io_fromBackend_rob_commits_0_valid ? _GEN_2114 : _GEN_1768; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2179 = io_fromBackend_rob_commits_0_valid ? _GEN_2115 : _GEN_1713; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2180 = io_fromBackend_rob_commits_0_valid ? _GEN_2116 : _GEN_1721; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2181 = io_fromBackend_rob_commits_0_valid ? _GEN_2117 : _GEN_1729; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2182 = io_fromBackend_rob_commits_0_valid ? _GEN_2118 : _GEN_1737; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2183 = io_fromBackend_rob_commits_0_valid ? _GEN_2119 : _GEN_1745; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2184 = io_fromBackend_rob_commits_0_valid ? _GEN_2120 : _GEN_1753; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2185 = io_fromBackend_rob_commits_0_valid ? _GEN_2121 : _GEN_1761; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2186 = io_fromBackend_rob_commits_0_valid ? _GEN_2122 : _GEN_1769; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2187 = io_fromBackend_rob_commits_0_valid ? _GEN_2123 : _GEN_1714; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2188 = io_fromBackend_rob_commits_0_valid ? _GEN_2124 : _GEN_1722; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2189 = io_fromBackend_rob_commits_0_valid ? _GEN_2125 : _GEN_1730; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2190 = io_fromBackend_rob_commits_0_valid ? _GEN_2126 : _GEN_1738; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2191 = io_fromBackend_rob_commits_0_valid ? _GEN_2127 : _GEN_1746; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2192 = io_fromBackend_rob_commits_0_valid ? _GEN_2128 : _GEN_1754; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2193 = io_fromBackend_rob_commits_0_valid ? _GEN_2129 : _GEN_1762; // @[NewFtq.scala 1087:19]
  wire [1:0] _GEN_2194 = io_fromBackend_rob_commits_0_valid ? _GEN_2130 : _GEN_1770; // @[NewFtq.scala 1087:19]
  wire  _GEN_3529 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2195 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2131; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2196 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2132; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2197 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2133; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2198 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2134; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2199 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2135; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2200 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2136; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2201 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2137; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2202 = 3'h0 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2138; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3545 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2203 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2139; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2204 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2140; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2205 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2141; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2206 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2142; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2207 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2143; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2208 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2144; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2209 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2145; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2210 = 3'h1 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2146; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3561 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2211 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2147; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2212 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2148; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2213 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2149; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2214 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2150; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2215 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2151; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2216 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2152; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2217 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2153; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2218 = 3'h2 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2154; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3577 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2219 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2155; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2220 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2156; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2221 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2157; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2222 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2158; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2223 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2159; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2224 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2160; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2225 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2161; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2226 = 3'h3 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2162; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3593 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2227 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2163; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2228 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2164; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2229 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2165; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2230 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2166; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2231 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2167; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2232 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2168; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2233 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2169; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2234 = 3'h4 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2170; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3609 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2235 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2171; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2236 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2172; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2237 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2173; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2238 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2174; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2239 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2175; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2240 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2176; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2241 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2177; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2242 = 3'h5 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2178; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3625 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2243 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2179; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2244 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2180; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2245 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2181; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2246 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2182; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2247 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2183; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2248 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2184; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2249 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2185; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2250 = 3'h6 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2186; // @[NewFtq.scala 1088:{63,63}]
  wire  _GEN_3641 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2251 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h0 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2187; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2252 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h1 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2188; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2253 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h2 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2189; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2254 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h3 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2190; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2255 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h4 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2191; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2256 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h5 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2192; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2257 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h6 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2193; // @[NewFtq.scala 1088:{63,63}]
  wire [1:0] _GEN_2258 = 3'h7 == io_fromBackend_rob_commits_1_bits_ftqIdx_value & 3'h7 ==
    io_fromBackend_rob_commits_1_bits_ftqOffset ? 2'h2 : _GEN_2194; // @[NewFtq.scala 1088:{63,63}]
  wire [2:0] _T_278 = io_fromBackend_rob_commits_1_bits_ftqOffset + 3'h1; // @[NewFtq.scala 1092:64]
  wire [2:0] _T_281 = io_fromBackend_rob_commits_1_bits_ftqOffset + 3'h2; // @[NewFtq.scala 1094:64]
  wire [3:0] _index_new_ptr_T_10 = {io_fromBackend_rob_commits_1_bits_ftqIdx_flag,
    io_fromBackend_rob_commits_1_bits_ftqIdx_value}; // @[Cat.scala 31:58]
  wire [3:0] _index_new_ptr_T_12 = _index_new_ptr_T_10 + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] index_new_ptr_2_value = _index_new_ptr_T_12[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _GEN_2387 = 3'h0 == index_new_ptr_2_value ? 2'h2 : _GEN_2195; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2388 = 3'h1 == index_new_ptr_2_value ? 2'h2 : _GEN_2203; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2389 = 3'h2 == index_new_ptr_2_value ? 2'h2 : _GEN_2211; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2390 = 3'h3 == index_new_ptr_2_value ? 2'h2 : _GEN_2219; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2391 = 3'h4 == index_new_ptr_2_value ? 2'h2 : _GEN_2227; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2392 = 3'h5 == index_new_ptr_2_value ? 2'h2 : _GEN_2235; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2393 = 3'h6 == index_new_ptr_2_value ? 2'h2 : _GEN_2243; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2394 = 3'h7 == index_new_ptr_2_value ? 2'h2 : _GEN_2251; // @[NewFtq.scala 1097:{36,36}]
  wire [1:0] _GEN_2395 = 3'h0 == index_new_ptr_2_value ? 2'h2 : _GEN_2196; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2396 = 3'h1 == index_new_ptr_2_value ? 2'h2 : _GEN_2204; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2397 = 3'h2 == index_new_ptr_2_value ? 2'h2 : _GEN_2212; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2398 = 3'h3 == index_new_ptr_2_value ? 2'h2 : _GEN_2220; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2399 = 3'h4 == index_new_ptr_2_value ? 2'h2 : _GEN_2228; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2400 = 3'h5 == index_new_ptr_2_value ? 2'h2 : _GEN_2236; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2401 = 3'h6 == index_new_ptr_2_value ? 2'h2 : _GEN_2244; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2402 = 3'h7 == index_new_ptr_2_value ? 2'h2 : _GEN_2252; // @[NewFtq.scala 1100:{36,36}]
  wire [1:0] _GEN_2403 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2395 : _GEN_2196; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2404 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2396 : _GEN_2204; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2405 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2397 : _GEN_2212; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2406 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2398 : _GEN_2220; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2407 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2399 : _GEN_2228; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2408 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2400 : _GEN_2236; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2409 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2401 : _GEN_2244; // @[NewFtq.scala 1098:45]
  wire [1:0] _GEN_2410 = io_fromBackend_rob_commits_1_bits_commitType == 3'h7 ? _GEN_2402 : _GEN_2252; // @[NewFtq.scala 1098:45]
  wire [4:0] fromBackendRedirect_bits_cfiUpdate_rasSp = ftq_redirect_sram_io_rdata_1_rasSp;
  wire [4:0] ifuRedirectToBpu_bits_cfiUpdate_rasSp = ftq_redirect_sram_io_rdata_0_rasSp;
  wire [38:0] fromBackendRedirect_bits_cfiUpdate_rasEntry_retAddr = ftq_redirect_sram_io_rdata_1_rasTop_retAddr;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_rasEntry_ctr = ftq_redirect_sram_io_rdata_1_rasTop_ctr;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_rasEntry_ctr = ftq_redirect_sram_io_rdata_0_rasTop_ctr;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_17_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_17_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_17_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_17_folded_hist;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_16_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_16_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_16_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_16_folded_hist;
  wire [10:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_15_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_15_folded_hist;
  wire [10:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_15_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_15_folded_hist;
  wire [6:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_14_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_14_folded_hist;
  wire [6:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_14_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_14_folded_hist;
  wire [6:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_13_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_13_folded_hist;
  wire [6:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_13_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_13_folded_hist;
  wire [6:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_12_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_12_folded_hist;
  wire [6:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_12_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_12_folded_hist;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_11_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_11_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_11_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_11_folded_hist;
  wire [8:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_10_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_10_folded_hist;
  wire [8:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_10_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_10_folded_hist;
  wire [6:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_9_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_9_folded_hist;
  wire [6:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_9_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_9_folded_hist;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_8_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_8_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_8_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_8_folded_hist;
  wire [8:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_7_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_7_folded_hist;
  wire [8:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_7_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_7_folded_hist;
  wire [8:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_6_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_6_folded_hist;
  wire [8:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_6_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_6_folded_hist;
  wire [10:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_5_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_5_folded_hist;
  wire [10:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_5_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_5_folded_hist;
  wire [3:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_4_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_4_folded_hist;
  wire [3:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_4_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_4_folded_hist;
  wire [10:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_3_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_3_folded_hist;
  wire [10:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_3_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_3_folded_hist;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_2_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_2_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_2_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_2_folded_hist;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_1_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_1_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_1_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_1_folded_hist;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_0_folded_hist =
    ftq_redirect_sram_io_rdata_1_folded_hist_hist_0_folded_hist;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_0_folded_hist =
    ftq_redirect_sram_io_rdata_0_folded_hist_hist_0_folded_hist;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_0 = ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_0;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_0 = ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_0;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_1 = ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_1;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_1 = ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_1;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_2 = ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_2;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_2 = ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_2;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_3 = ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_3;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_3 = ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_3;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_4_bits_0 = ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_0;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_4_bits_0 = ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_0;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_4_bits_1 = ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_1;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_4_bits_1 = ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_1;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_4_bits_2 = ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_2;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_4_bits_2 = ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_2;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_0 = ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_0;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_0 = ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_0;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_1 = ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_1;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_1 = ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_1;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_2 = ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_2;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_2 = ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_2;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_3 = ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_3;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_3 = ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_3;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_0 = ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_0;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_0 = ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_0;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_1 = ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_1;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_1 = ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_1;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_2 = ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_2;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_2 = ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_2;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_3 = ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_3;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_3 = ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_3;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_0 = ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_0;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_0 = ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_0;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_1 = ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_1;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_1 = ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_1;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_2 = ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_2;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_2 = ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_2;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_3 = ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_3;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_3 = ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_3;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_0 = ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_0;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_0 = ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_0;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_1 = ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_1;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_1 = ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_1;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_2 = ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_2;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_2 = ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_2;
  wire  fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_3 = ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_3;
  wire  ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_3 = ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_3;
  wire [2:0] fromBackendRedirect_bits_cfiUpdate_lastBrNumOH = ftq_redirect_sram_io_rdata_1_lastBrNumOH;
  wire [2:0] ifuRedirectToBpu_bits_cfiUpdate_lastBrNumOH = ftq_redirect_sram_io_rdata_0_lastBrNumOH;
  wire  fromBackendRedirect_bits_cfiUpdate_histPtr_flag = ftq_redirect_sram_io_rdata_1_histPtr_flag;
  wire  ifuRedirectToBpu_bits_cfiUpdate_histPtr_flag = ftq_redirect_sram_io_rdata_0_histPtr_flag;
  wire [7:0] fromBackendRedirect_bits_cfiUpdate_histPtr_value = ftq_redirect_sram_io_rdata_1_histPtr_value;
  wire [7:0] ifuRedirectToBpu_bits_cfiUpdate_histPtr_value = ftq_redirect_sram_io_rdata_0_histPtr_value;
  wire [1:0] fromBackendRedirect_bits_cfiUpdate_shift = _GEN_1030[1:0];
  wire  mmioLastCommit_differentFlag = commPtr_flag ^ io_mmioCommitRead_mmioFtqPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire  mmioLastCommit_compare = commPtr_value < io_mmioCommitRead_mmioFtqPtr_value; // @[CircularQueuePtr.scala 73:30]
  wire  _mmioLastCommit_T = mmioLastCommit_differentFlag ^ mmioLastCommit_compare; // @[CircularQueuePtr.scala 74:19]
  wire  mmioLastCommit_differentFlag_1 = ifuPtr_flag ^ io_mmioCommitRead_mmioFtqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  mmioLastCommit_compare_1 = ifuPtr_value > io_mmioCommitRead_mmioFtqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _mmioLastCommit_T_1 = mmioLastCommit_differentFlag_1 ^ mmioLastCommit_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire [3:0] _mmioLastCommit_T_2 = {io_mmioCommitRead_mmioFtqPtr_flag,io_mmioCommitRead_mmioFtqPtr_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _mmioLastCommit_T_4 = _mmioLastCommit_T_2 == _copied_ifu_ptr_to_send_T_2; // @[CircularQueuePtr.scala 61:47]
  wire [1:0] _GEN_2684 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_0 : commitStateQueue_0_0; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2685 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_0 : _GEN_2684; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2686 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_0 : _GEN_2685; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2687 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_0 : _GEN_2686; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2688 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_0 : _GEN_2687; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2689 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_0 : _GEN_2688; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2690 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_0 : _GEN_2689; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_9 = _GEN_2690 == 2'h0 | _GEN_2690 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2692 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_1 : commitStateQueue_0_1; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2693 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_1 : _GEN_2692; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2694 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_1 : _GEN_2693; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2695 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_1 : _GEN_2694; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2696 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_1 : _GEN_2695; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2697 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_1 : _GEN_2696; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2698 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_1 : _GEN_2697; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_12 = _GEN_2698 == 2'h0 | _GEN_2698 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2700 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_2 : commitStateQueue_0_2; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2701 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_2 : _GEN_2700; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2702 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_2 : _GEN_2701; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2703 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_2 : _GEN_2702; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2704 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_2 : _GEN_2703; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2705 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_2 : _GEN_2704; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2706 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_2 : _GEN_2705; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_15 = _GEN_2706 == 2'h0 | _GEN_2706 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2708 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_3 : commitStateQueue_0_3; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2709 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_3 : _GEN_2708; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2710 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_3 : _GEN_2709; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2711 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_3 : _GEN_2710; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2712 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_3 : _GEN_2711; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2713 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_3 : _GEN_2712; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2714 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_3 : _GEN_2713; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_18 = _GEN_2714 == 2'h0 | _GEN_2714 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2716 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_4 : commitStateQueue_0_4; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2717 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_4 : _GEN_2716; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2718 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_4 : _GEN_2717; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2719 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_4 : _GEN_2718; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2720 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_4 : _GEN_2719; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2721 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_4 : _GEN_2720; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2722 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_4 : _GEN_2721; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_21 = _GEN_2722 == 2'h0 | _GEN_2722 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2724 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_5 : commitStateQueue_0_5; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2725 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_5 : _GEN_2724; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2726 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_5 : _GEN_2725; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2727 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_5 : _GEN_2726; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2728 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_5 : _GEN_2727; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2729 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_5 : _GEN_2728; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2730 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_5 : _GEN_2729; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_24 = _GEN_2730 == 2'h0 | _GEN_2730 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2732 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_6 : commitStateQueue_0_6; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2733 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_6 : _GEN_2732; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2734 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_6 : _GEN_2733; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2735 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_6 : _GEN_2734; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2736 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_6 : _GEN_2735; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2737 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_6 : _GEN_2736; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2738 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_6 : _GEN_2737; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_27 = _GEN_2738 == 2'h0 | _GEN_2738 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [1:0] _GEN_2740 = 3'h1 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_1_7 : commitStateQueue_0_7; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2741 = 3'h2 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_2_7 : _GEN_2740; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2742 = 3'h3 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_3_7 : _GEN_2741; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2743 = 3'h4 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_4_7 : _GEN_2742; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2744 = 3'h5 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_5_7 : _GEN_2743; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2745 = 3'h6 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_6_7 : _GEN_2744; // @[NewFtq.scala 1123:{77,77}]
  wire [1:0] _GEN_2746 = 3'h7 == io_mmioCommitRead_mmioFtqPtr_value ? commitStateQueue_7_7 : _GEN_2745; // @[NewFtq.scala 1123:{77,77}]
  wire  _mmioLastCommit_T_30 = _GEN_2746 == 2'h0 | _GEN_2746 == 2'h2; // @[NewFtq.scala 1123:91]
  wire [7:0] _mmioLastCommit_T_31 = {_mmioLastCommit_T_9,_mmioLastCommit_T_12,_mmioLastCommit_T_15,_mmioLastCommit_T_18,
    _mmioLastCommit_T_21,_mmioLastCommit_T_24,_mmioLastCommit_T_27,_mmioLastCommit_T_30}; // @[Cat.scala 31:58]
  wire  _mmioLastCommit_T_32 = &_mmioLastCommit_T_31; // @[NewFtq.scala 1123:118]
  reg  io_mmioCommitRead_mmioLastCommit_REG; // @[NewFtq.scala 1124:46]
  reg [38:0] commit_pc_bundle_startAddr; // @[NewFtq.scala 1127:33]
  reg  commit_target_REG; // @[NewFtq.scala 1129:16]
  reg [38:0] commit_target_REG_1; // @[NewFtq.scala 1130:14]
  reg [38:0] commit_target_REG_2; // @[NewFtq.scala 1131:14]
  reg  do_commit; // @[NewFtq.scala 1145:26]
  wire [3:0] _commPtrPlus1_write_new_ptr_T = {commPtrPlus1_flag,commPtrPlus1_value}; // @[Cat.scala 31:58]
  wire [3:0] _commPtrPlus1_write_new_ptr_T_2 = _commPtrPlus1_write_new_ptr_T + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] commPtrPlus1_write_new_ptr_value = _commPtrPlus1_write_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  commPtrPlus1_write_new_ptr_flag = _commPtrPlus1_write_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  reg [1:0] commit_state_0; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_1; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_2; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_3; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_4; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_5; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_6; // @[NewFtq.scala 1150:29]
  reg [1:0] commit_state_7; // @[NewFtq.scala 1150:29]
  wire  _GEN_2752 = 3'h1 == commPtr_value ? cfiIndex_vec_1_valid : cfiIndex_vec_0_valid; // @[]
  wire  _GEN_2753 = 3'h2 == commPtr_value ? cfiIndex_vec_2_valid : _GEN_2752; // @[]
  wire  _GEN_2754 = 3'h3 == commPtr_value ? cfiIndex_vec_3_valid : _GEN_2753; // @[]
  wire  _GEN_2755 = 3'h4 == commPtr_value ? cfiIndex_vec_4_valid : _GEN_2754; // @[]
  wire  _GEN_2756 = 3'h5 == commPtr_value ? cfiIndex_vec_5_valid : _GEN_2755; // @[]
  wire  _GEN_2757 = 3'h6 == commPtr_value ? cfiIndex_vec_6_valid : _GEN_2756; // @[]
  wire  can_commit_cfi_valid = 3'h7 == commPtr_value ? cfiIndex_vec_7_valid : _GEN_2757; // @[]
  wire [2:0] _GEN_2760 = 3'h1 == commPtr_value ? cfiIndex_vec_1_bits : cfiIndex_vec_0_bits; // @[]
  wire [2:0] _GEN_2761 = 3'h2 == commPtr_value ? cfiIndex_vec_2_bits : _GEN_2760; // @[]
  wire [2:0] _GEN_2762 = 3'h3 == commPtr_value ? cfiIndex_vec_3_bits : _GEN_2761; // @[]
  reg  commit_cfi_valid; // @[NewFtq.scala 1157:27]
  reg [2:0] commit_cfi_bits; // @[NewFtq.scala 1157:27]
  reg  commit_mispredict_REG_0; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_1; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_2; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_3; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_4; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_5; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_6; // @[NewFtq.scala 1160:56]
  reg  commit_mispredict_REG_7; // @[NewFtq.scala 1160:56]
  wire  _GEN_2848 = 3'h1 == commPtr_value ? mispredict_vec_1_0 : mispredict_vec_0_0; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2849 = 3'h2 == commPtr_value ? mispredict_vec_2_0 : _GEN_2848; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2850 = 3'h3 == commPtr_value ? mispredict_vec_3_0 : _GEN_2849; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2856 = 3'h1 == commPtr_value ? mispredict_vec_1_1 : mispredict_vec_0_1; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2857 = 3'h2 == commPtr_value ? mispredict_vec_2_1 : _GEN_2856; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2858 = 3'h3 == commPtr_value ? mispredict_vec_3_1 : _GEN_2857; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2864 = 3'h1 == commPtr_value ? mispredict_vec_1_2 : mispredict_vec_0_2; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2865 = 3'h2 == commPtr_value ? mispredict_vec_2_2 : _GEN_2864; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2866 = 3'h3 == commPtr_value ? mispredict_vec_3_2 : _GEN_2865; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2872 = 3'h1 == commPtr_value ? mispredict_vec_1_3 : mispredict_vec_0_3; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2873 = 3'h2 == commPtr_value ? mispredict_vec_2_3 : _GEN_2872; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2874 = 3'h3 == commPtr_value ? mispredict_vec_3_3 : _GEN_2873; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2880 = 3'h1 == commPtr_value ? mispredict_vec_1_4 : mispredict_vec_0_4; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2881 = 3'h2 == commPtr_value ? mispredict_vec_2_4 : _GEN_2880; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2882 = 3'h3 == commPtr_value ? mispredict_vec_3_4 : _GEN_2881; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2888 = 3'h1 == commPtr_value ? mispredict_vec_1_5 : mispredict_vec_0_5; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2889 = 3'h2 == commPtr_value ? mispredict_vec_2_5 : _GEN_2888; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2890 = 3'h3 == commPtr_value ? mispredict_vec_3_5 : _GEN_2889; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2896 = 3'h1 == commPtr_value ? mispredict_vec_1_6 : mispredict_vec_0_6; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2897 = 3'h2 == commPtr_value ? mispredict_vec_2_6 : _GEN_2896; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2898 = 3'h3 == commPtr_value ? mispredict_vec_3_6 : _GEN_2897; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2904 = 3'h1 == commPtr_value ? mispredict_vec_1_7 : mispredict_vec_0_7; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2905 = 3'h2 == commPtr_value ? mispredict_vec_2_7 : _GEN_2904; // @[NewFtq.scala 1160:{56,56}]
  wire  _GEN_2906 = 3'h3 == commPtr_value ? mispredict_vec_3_7 : _GEN_2905; // @[NewFtq.scala 1160:{56,56}]
  wire  _commit_mispredict_T = commit_state_0 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_0 = commit_mispredict_REG_0 & commit_state_0 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_2 = commit_state_1 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_1 = commit_mispredict_REG_1 & commit_state_1 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_4 = commit_state_2 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_2 = commit_mispredict_REG_2 & commit_state_2 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_6 = commit_state_3 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_3 = commit_mispredict_REG_3 & commit_state_3 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_8 = commit_state_4 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_4 = commit_mispredict_REG_4 & commit_state_4 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_10 = commit_state_5 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_5 = commit_mispredict_REG_5 & commit_state_5 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_12 = commit_state_6 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_6 = commit_mispredict_REG_6 & commit_state_6 == 2'h2; // @[NewFtq.scala 1161:30]
  wire  _commit_mispredict_T_14 = commit_state_7 == 2'h2; // @[NewFtq.scala 1161:39]
  wire  commit_mispredict_7 = commit_mispredict_REG_7 & commit_state_7 == 2'h2; // @[NewFtq.scala 1161:30]
  reg [1:0] commit_hit; // @[NewFtq.scala 1165:47]
  wire [1:0] _GEN_2912 = 3'h1 == commPtr_value ? entry_hit_status_1 : entry_hit_status_0; // @[NewFtq.scala 1165:{47,47}]
  wire [1:0] _GEN_2913 = 3'h2 == commPtr_value ? entry_hit_status_2 : _GEN_2912; // @[NewFtq.scala 1165:{47,47}]
  wire [1:0] _GEN_2914 = 3'h3 == commPtr_value ? entry_hit_status_3 : _GEN_2913; // @[NewFtq.scala 1165:{47,47}]
  wire [1:0] _GEN_2915 = 3'h4 == commPtr_value ? entry_hit_status_4 : _GEN_2914; // @[NewFtq.scala 1165:{47,47}]
  wire [1:0] _GEN_2916 = 3'h5 == commPtr_value ? entry_hit_status_5 : _GEN_2915; // @[NewFtq.scala 1165:{47,47}]
  wire [1:0] _GEN_2917 = 3'h6 == commPtr_value ? entry_hit_status_6 : _GEN_2916; // @[NewFtq.scala 1165:{47,47}]
  wire [1:0] _GEN_2918 = 3'h7 == commPtr_value ? entry_hit_status_7 : _GEN_2917; // @[NewFtq.scala 1165:{47,47}]
  wire  _commit_valid_T = commit_hit == 2'h2; // @[NewFtq.scala 1168:51]
  wire  commit_valid = commit_hit == 2'h2 | commit_cfi_valid; // @[NewFtq.scala 1168:61]
  wire  to_bpu_hit = _GEN_2918 == 2'h2 | _GEN_2918 == 2'h1; // @[NewFtq.scala 1170:45]
  wire  _T_297 = FTBEntryGen_io_new_entry_tailSlot_valid & FTBEntryGen_io_new_entry_tailSlot_sharing; // @[FTB.scala 207:47]
  wire [2:0] _WIRE_22_0 = FTBEntryGen_io_new_entry_brSlots_0_offset; // @[FTB.scala 225:{12,12}]
  wire  _GEN_2940 = 3'h1 == _WIRE_22_0 ? _commit_mispredict_T_2 : _commit_mispredict_T; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2941 = 3'h2 == _WIRE_22_0 ? _commit_mispredict_T_4 : _GEN_2940; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2942 = 3'h3 == _WIRE_22_0 ? _commit_mispredict_T_6 : _GEN_2941; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2943 = 3'h4 == _WIRE_22_0 ? _commit_mispredict_T_8 : _GEN_2942; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2944 = 3'h5 == _WIRE_22_0 ? _commit_mispredict_T_10 : _GEN_2943; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2945 = 3'h6 == _WIRE_22_0 ? _commit_mispredict_T_12 : _GEN_2944; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2946 = 3'h7 == _WIRE_22_0 ? _commit_mispredict_T_14 : _GEN_2945; // @[NewFtq.scala 1222:{35,35}]
  wire  _WIRE_21_0 = FTBEntryGen_io_new_entry_brSlots_0_valid; // @[FTB.scala 206:{12,12}]
  wire [2:0] _WIRE_22_1 = FTBEntryGen_io_new_entry_tailSlot_offset; // @[FTB.scala 225:{12,12}]
  wire  _GEN_2948 = 3'h1 == _WIRE_22_1 ? _commit_mispredict_T_2 : _commit_mispredict_T; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2949 = 3'h2 == _WIRE_22_1 ? _commit_mispredict_T_4 : _GEN_2948; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2950 = 3'h3 == _WIRE_22_1 ? _commit_mispredict_T_6 : _GEN_2949; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2951 = 3'h4 == _WIRE_22_1 ? _commit_mispredict_T_8 : _GEN_2950; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2952 = 3'h5 == _WIRE_22_1 ? _commit_mispredict_T_10 : _GEN_2951; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2953 = 3'h6 == _WIRE_22_1 ? _commit_mispredict_T_12 : _GEN_2952; // @[NewFtq.scala 1222:{35,35}]
  wire  _GEN_2954 = 3'h7 == _WIRE_22_1 ? _commit_mispredict_T_14 : _GEN_2953; // @[NewFtq.scala 1222:{35,35}]
  reg  prefetchPtr_flag; // @[NewFtq.scala 1239:30]
  reg [2:0] prefetchPtr_value; // @[NewFtq.scala 1239:30]
  wire [3:0] _prefetchPtr_new_ptr_T = {prefetchPtr_flag,prefetchPtr_value}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_4039 = {{3'd0}, io_toPrefetch_req_valid}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _prefetchPtr_new_ptr_T_2 = _prefetchPtr_new_ptr_T + _GEN_4039; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] prefetchPtr_new_ptr_value = _prefetchPtr_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  prefetchPtr_new_ptr_flag = _prefetchPtr_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire  prefetch_too_late_differentFlag = prefetchPtr_flag ^ ifuPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire  prefetch_too_late_compare = prefetchPtr_value < ifuPtr_value; // @[CircularQueuePtr.scala 73:30]
  wire  _prefetch_too_late_T = prefetch_too_late_differentFlag ^ prefetch_too_late_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _prefetch_too_late_T_3 = ifuPtr_flag != prefetchPtr_flag & ifuPtr_value == prefetchPtr_value; // @[CircularQueuePtr.scala 99:37]
  wire  _prefetch_too_late_T_8 = _prefetchPtr_new_ptr_T == _copied_ifu_ptr_to_send_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  prefetch_too_late = _prefetch_too_late_T & ~_prefetch_too_late_T_3 | _prefetch_too_late_T_8; // @[NewFtq.scala 1244:93]
  wire  _T_302 = _prefetchPtr_new_ptr_T != _bpuPtr_new_ptr_T; // @[CircularQueuePtr.scala 63:47]
  wire [3:0] _prefetchPtr_flipped_new_ptr_T_1 = 4'h8 - 4'h1; // @[CircularQueuePtr.scala 54:50]
  wire [3:0] _prefetchPtr_flipped_new_ptr_new_ptr_T_2 = _bpuPtr_new_ptr_T + _prefetchPtr_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] prefetchPtr_flipped_new_ptr_value = _prefetchPtr_flipped_new_ptr_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  prefetchPtr_flipped_new_ptr_flag = _prefetchPtr_flipped_new_ptr_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire  prefetchPtr_new_ptr_1_flag = ~prefetchPtr_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
  wire  _GEN_2963 = _T_302 ? prefetchPtr_new_ptr_1_flag : ifuPtr_flag; // @[NewFtq.scala 1246:35 1247:21 1249:21]
  wire [2:0] _GEN_2964 = _T_302 ? prefetchPtr_flipped_new_ptr_value : ifuPtr_value; // @[NewFtq.scala 1246:35 1247:21 1249:21]
  wire  differentFlag_6 = prefetchPtr_flag ^ io_fromBpu_resp_bits_s2_ftq_idx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  compare_6 = prefetchPtr_value < io_fromBpu_resp_bits_s2_ftq_idx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _T_303 = differentFlag_6 ^ compare_6; // @[CircularQueuePtr.scala 74:19]
  wire  differentFlag_7 = prefetchPtr_flag ^ io_fromBpu_resp_bits_s3_ftq_idx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  compare_7 = prefetchPtr_value < io_fromBpu_resp_bits_s3_ftq_idx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _T_306 = differentFlag_7 ^ compare_7; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_2972 = 3'h1 == prefetchPtr_value ? entry_fetch_status_1 : entry_fetch_status_0; // @[NewFtq.scala 1265:{78,78}]
  wire  _GEN_2973 = 3'h2 == prefetchPtr_value ? entry_fetch_status_2 : _GEN_2972; // @[NewFtq.scala 1265:{78,78}]
  wire  _GEN_2974 = 3'h3 == prefetchPtr_value ? entry_fetch_status_3 : _GEN_2973; // @[NewFtq.scala 1265:{78,78}]
  wire  _GEN_2975 = 3'h4 == prefetchPtr_value ? entry_fetch_status_4 : _GEN_2974; // @[NewFtq.scala 1265:{78,78}]
  wire  _GEN_2976 = 3'h5 == prefetchPtr_value ? entry_fetch_status_5 : _GEN_2975; // @[NewFtq.scala 1265:{78,78}]
  wire  _GEN_2977 = 3'h6 == prefetchPtr_value ? entry_fetch_status_6 : _GEN_2976; // @[NewFtq.scala 1265:{78,78}]
  wire  _GEN_2978 = 3'h7 == prefetchPtr_value ? entry_fetch_status_7 : _GEN_2977; // @[NewFtq.scala 1265:{78,78}]
  wire  _prefetch_is_to_send_T = ~_GEN_2978; // @[NewFtq.scala 1265:78]
  wire  _T_311 = _copied_ifu_plus1_to_send_T_1 == _prefetchPtr_new_ptr_T; // @[CircularQueuePtr.scala 61:47]
  reg [38:0] prefetch_addr_REG; // @[NewFtq.scala 1273:31]
  wire  prefetch_is_to_send = last_cycle_bpu_in & _T_311 | _prefetch_is_to_send_T; // @[NewFtq.scala 1268:67 1269:27]
  wire  _commit_inst_mask_T_1 = _commit_mispredict_T & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_3 = _commit_mispredict_T_2 & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_5 = _commit_mispredict_T_4 & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_7 = _commit_mispredict_T_6 & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_9 = _commit_mispredict_T_8 & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_11 = _commit_mispredict_T_10 & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_13 = _commit_mispredict_T_12 & do_commit; // @[NewFtq.scala 1300:76]
  wire  _commit_inst_mask_T_15 = _commit_mispredict_T_14 & do_commit; // @[NewFtq.scala 1300:76]
  wire [7:0] commit_inst_mask = {_commit_inst_mask_T_15,_commit_inst_mask_T_13,_commit_inst_mask_T_11,
    _commit_inst_mask_T_9,_commit_inst_mask_T_7,_commit_inst_mask_T_5,_commit_inst_mask_T_3,_commit_inst_mask_T_1}; // @[NewFtq.scala 1300:91]
  wire [7:0] commit_mispred_mask = {commit_mispredict_7,commit_mispredict_6,commit_mispredict_5,commit_mispredict_4,
    commit_mispredict_3,commit_mispredict_2,commit_mispredict_1,commit_mispredict_0}; // @[NewFtq.scala 1301:47]
  wire [7:0] commit_not_mispred_mask = ~commit_mispred_mask; // @[NewFtq.scala 1302:33]
  wire [7:0] commit_br_mask = {ftq_pd_mem_io_rdata_0_brMask_7,ftq_pd_mem_io_rdata_0_brMask_6,
    ftq_pd_mem_io_rdata_0_brMask_5,ftq_pd_mem_io_rdata_0_brMask_4,ftq_pd_mem_io_rdata_0_brMask_3,
    ftq_pd_mem_io_rdata_0_brMask_2,ftq_pd_mem_io_rdata_0_brMask_1,ftq_pd_mem_io_rdata_0_brMask_0}; // @[NewFtq.scala 1304:41]
  wire [7:0] _commit_jmp_mask_T = 8'h1 << ftq_pd_mem_io_rdata_0_jmpOffset; // @[OneHot.scala 57:35]
  wire  _commit_jmp_mask_WIRE = ftq_pd_mem_io_rdata_0_jmpInfo_valid; // @[NewFtq.scala 1305:{108,108}]
  wire [7:0] _commit_jmp_mask_T_2 = _commit_jmp_mask_WIRE ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] commit_jmp_mask = _commit_jmp_mask_T & _commit_jmp_mask_T_2; // @[NewFtq.scala 1305:55]
  wire [7:0] commit_cfi_mask = commit_br_mask | commit_jmp_mask; // @[NewFtq.scala 1306:41]
  wire [7:0] mbpInstrs = commit_inst_mask & commit_cfi_mask; // @[NewFtq.scala 1308:36]
  wire [7:0] mbpRights = mbpInstrs & commit_not_mispred_mask; // @[NewFtq.scala 1310:29]
  wire [7:0] mbpWrongs = mbpInstrs & commit_mispred_mask; // @[NewFtq.scala 1311:29]
  wire [1:0] _io_bpuInfo_bpRight_T_8 = mbpRights[0] + mbpRights[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpRight_T_10 = mbpRights[2] + mbpRights[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _io_bpuInfo_bpRight_T_12 = _io_bpuInfo_bpRight_T_8 + _io_bpuInfo_bpRight_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpRight_T_14 = mbpRights[4] + mbpRights[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpRight_T_16 = mbpRights[6] + mbpRights[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _io_bpuInfo_bpRight_T_18 = _io_bpuInfo_bpRight_T_14 + _io_bpuInfo_bpRight_T_16; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpWrong_T_8 = mbpWrongs[0] + mbpWrongs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpWrong_T_10 = mbpWrongs[2] + mbpWrongs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _io_bpuInfo_bpWrong_T_12 = _io_bpuInfo_bpWrong_T_8 + _io_bpuInfo_bpWrong_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpWrong_T_14 = mbpWrongs[4] + mbpWrongs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _io_bpuInfo_bpWrong_T_16 = mbpWrongs[6] + mbpWrongs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _io_bpuInfo_bpWrong_T_18 = _io_bpuInfo_bpWrong_T_14 + _io_bpuInfo_bpWrong_T_16; // @[Bitwise.scala 48:55]
  wire  _logbundle_isCall_T = ftq_pd_mem_io_rdata_0_jmpInfo_valid & ftq_pd_mem_io_rdata_0_jmpInfo_bits_1; // @[NewFtq.scala 117:31]
  wire  _logbundle_isRet_T = ftq_pd_mem_io_rdata_0_jmpInfo_valid & ftq_pd_mem_io_rdata_0_jmpInfo_bits_2; // @[NewFtq.scala 118:31]
  wire  _T_368 = ~io_fromBpu_resp_ready; // @[NewFtq.scala 1364:53]
  wire  _T_374 = ~io_toIfu_req_valid; // @[NewFtq.scala 1369:59]
  wire  _T_379 = ~io_fromBpu_resp_valid & io_fromBpu_resp_ready; // @[NewFtq.scala 1372:55]
  wire  _commit_jal_mask_T_2 = ftq_pd_mem_io_rdata_0_jmpInfo_valid & ~ftq_pd_mem_io_rdata_0_jmpInfo_bits_0; // @[NewFtq.scala 115:31]
  wire [7:0] _commit_jal_mask_T_4 = _commit_jal_mask_T_2 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] commit_jal_mask = _commit_jmp_mask_T & _commit_jal_mask_T_4; // @[NewFtq.scala 1397:56]
  wire  _commit_jalr_mask_T_1 = ftq_pd_mem_io_rdata_0_jmpInfo_valid & ftq_pd_mem_io_rdata_0_jmpInfo_bits_0; // @[NewFtq.scala 116:31]
  wire [7:0] _commit_jalr_mask_T_3 = _commit_jalr_mask_T_1 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] commit_jalr_mask = _commit_jmp_mask_T & _commit_jalr_mask_T_3; // @[NewFtq.scala 1398:56]
  wire [7:0] _commit_call_mask_T_3 = _logbundle_isCall_T ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] commit_call_mask = _commit_jmp_mask_T & _commit_call_mask_T_3; // @[NewFtq.scala 1399:56]
  wire [7:0] _commit_ret_mask_T_3 = _logbundle_isRet_T ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] commit_ret_mask = _commit_jmp_mask_T & _commit_ret_mask_T_3; // @[NewFtq.scala 1400:56]
  wire [7:0] mbpBRights = mbpRights & commit_br_mask; // @[NewFtq.scala 1403:30]
  wire [7:0] mbpJRights = mbpRights & commit_jal_mask; // @[NewFtq.scala 1404:30]
  wire [7:0] mbpIRights = mbpRights & commit_jalr_mask; // @[NewFtq.scala 1405:30]
  wire [7:0] mbpCRights = mbpRights & commit_call_mask; // @[NewFtq.scala 1406:30]
  wire [7:0] mbpRRights = mbpRights & commit_ret_mask; // @[NewFtq.scala 1407:30]
  wire [7:0] mbpBWrongs = mbpWrongs & commit_br_mask; // @[NewFtq.scala 1409:30]
  wire [7:0] mbpJWrongs = mbpWrongs & commit_jal_mask; // @[NewFtq.scala 1410:30]
  wire [7:0] mbpIWrongs = mbpWrongs & commit_jalr_mask; // @[NewFtq.scala 1411:30]
  wire [7:0] mbpCWrongs = mbpWrongs & commit_call_mask; // @[NewFtq.scala 1412:30]
  wire [7:0] mbpRWrongs = mbpWrongs & commit_ret_mask; // @[NewFtq.scala 1413:30]
  wire [1:0] _T_1120 = mbpInstrs[0] + mbpInstrs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1122 = mbpInstrs[2] + mbpInstrs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1124 = _T_1120 + _T_1122; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1126 = mbpInstrs[4] + mbpInstrs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1128 = mbpInstrs[6] + mbpInstrs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1130 = _T_1126 + _T_1128; // @[Bitwise.scala 48:55]
  wire [7:0] _T_1134 = mbpBRights | mbpBWrongs; // @[NewFtq.scala 1465:39]
  wire [1:0] _T_1143 = _T_1134[0] + _T_1134[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1145 = _T_1134[2] + _T_1134[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1147 = _T_1143 + _T_1145; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1149 = _T_1134[4] + _T_1134[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1151 = _T_1134[6] + _T_1134[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1153 = _T_1149 + _T_1151; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1209 = mbpBRights[0] + mbpBRights[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1211 = mbpBRights[2] + mbpBRights[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1213 = _T_1209 + _T_1211; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1215 = mbpBRights[4] + mbpBRights[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1217 = mbpBRights[6] + mbpBRights[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1219 = _T_1215 + _T_1217; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1231 = mbpBWrongs[0] + mbpBWrongs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1233 = mbpBWrongs[2] + mbpBWrongs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1235 = _T_1231 + _T_1233; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1237 = mbpBWrongs[4] + mbpBWrongs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1239 = mbpBWrongs[6] + mbpBWrongs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1241 = _T_1237 + _T_1239; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1253 = mbpJRights[0] + mbpJRights[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1255 = mbpJRights[2] + mbpJRights[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1257 = _T_1253 + _T_1255; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1259 = mbpJRights[4] + mbpJRights[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1261 = mbpJRights[6] + mbpJRights[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1263 = _T_1259 + _T_1261; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1275 = mbpJWrongs[0] + mbpJWrongs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1277 = mbpJWrongs[2] + mbpJWrongs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1279 = _T_1275 + _T_1277; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1281 = mbpJWrongs[4] + mbpJWrongs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1283 = mbpJWrongs[6] + mbpJWrongs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1285 = _T_1281 + _T_1283; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1297 = mbpIRights[0] + mbpIRights[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1299 = mbpIRights[2] + mbpIRights[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1301 = _T_1297 + _T_1299; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1303 = mbpIRights[4] + mbpIRights[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1305 = mbpIRights[6] + mbpIRights[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1307 = _T_1303 + _T_1305; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1319 = mbpIWrongs[0] + mbpIWrongs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1321 = mbpIWrongs[2] + mbpIWrongs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1323 = _T_1319 + _T_1321; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1325 = mbpIWrongs[4] + mbpIWrongs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1327 = mbpIWrongs[6] + mbpIWrongs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1329 = _T_1325 + _T_1327; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1341 = mbpCRights[0] + mbpCRights[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1343 = mbpCRights[2] + mbpCRights[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1345 = _T_1341 + _T_1343; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1347 = mbpCRights[4] + mbpCRights[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1349 = mbpCRights[6] + mbpCRights[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1351 = _T_1347 + _T_1349; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1363 = mbpCWrongs[0] + mbpCWrongs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1365 = mbpCWrongs[2] + mbpCWrongs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1367 = _T_1363 + _T_1365; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1369 = mbpCWrongs[4] + mbpCWrongs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1371 = mbpCWrongs[6] + mbpCWrongs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1373 = _T_1369 + _T_1371; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1385 = mbpRRights[0] + mbpRRights[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1387 = mbpRRights[2] + mbpRRights[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1389 = _T_1385 + _T_1387; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1391 = mbpRRights[4] + mbpRRights[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1393 = mbpRRights[6] + mbpRRights[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1395 = _T_1391 + _T_1393; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1407 = mbpRWrongs[0] + mbpRWrongs[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1409 = mbpRWrongs[2] + mbpRWrongs[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1411 = _T_1407 + _T_1409; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1413 = mbpRWrongs[4] + mbpRWrongs[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1415 = mbpRWrongs[6] + mbpRWrongs[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1417 = _T_1413 + _T_1415; // @[Bitwise.scala 48:55]
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
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_18_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_18_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_19_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_19_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_20_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_20_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [3:0] io_perf_21_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [3:0] io_perf_21_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_22_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_23_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_23_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  FtqPcMemWrapper ftq_pc_mem ( // @[NewFtq.scala 542:26]
    .clock(ftq_pc_mem_clock),
    .io_ifuPtr_wvalue(ftq_pc_mem_io_ifuPtr_wvalue),
    .io_ifuPtrPlus1_wvalue(ftq_pc_mem_io_ifuPtrPlus1_wvalue),
    .io_ifuPtrPlus2_wvalue(ftq_pc_mem_io_ifuPtrPlus2_wvalue),
    .io_commPtr_wvalue(ftq_pc_mem_io_commPtr_wvalue),
    .io_commPtrPlus1_wvalue(ftq_pc_mem_io_commPtrPlus1_wvalue),
    .io_ifuPtr_rdata_startAddr(ftq_pc_mem_io_ifuPtr_rdata_startAddr),
    .io_ifuPtr_rdata_nextLineAddr(ftq_pc_mem_io_ifuPtr_rdata_nextLineAddr),
    .io_ifuPtr_rdata_fallThruError(ftq_pc_mem_io_ifuPtr_rdata_fallThruError),
    .io_ifuPtrPlus1_rdata_startAddr(ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr),
    .io_ifuPtrPlus1_rdata_nextLineAddr(ftq_pc_mem_io_ifuPtrPlus1_rdata_nextLineAddr),
    .io_ifuPtrPlus1_rdata_fallThruError(ftq_pc_mem_io_ifuPtrPlus1_rdata_fallThruError),
    .io_ifuPtrPlus2_rdata_startAddr(ftq_pc_mem_io_ifuPtrPlus2_rdata_startAddr),
    .io_commPtr_rdata_startAddr(ftq_pc_mem_io_commPtr_rdata_startAddr),
    .io_commPtrPlus1_rdata_startAddr(ftq_pc_mem_io_commPtrPlus1_rdata_startAddr),
    .io_other_raddrs_0(ftq_pc_mem_io_other_raddrs_0),
    .io_other_rdatas_0_startAddr(ftq_pc_mem_io_other_rdatas_0_startAddr),
    .io_wen(ftq_pc_mem_io_wen),
    .io_waddr(ftq_pc_mem_io_waddr),
    .io_wdata_startAddr(ftq_pc_mem_io_wdata_startAddr),
    .io_wdata_nextLineAddr(ftq_pc_mem_io_wdata_nextLineAddr),
    .io_wdata_isNextMask_0(ftq_pc_mem_io_wdata_isNextMask_0),
    .io_wdata_isNextMask_1(ftq_pc_mem_io_wdata_isNextMask_1),
    .io_wdata_isNextMask_2(ftq_pc_mem_io_wdata_isNextMask_2),
    .io_wdata_isNextMask_3(ftq_pc_mem_io_wdata_isNextMask_3),
    .io_wdata_isNextMask_4(ftq_pc_mem_io_wdata_isNextMask_4),
    .io_wdata_isNextMask_5(ftq_pc_mem_io_wdata_isNextMask_5),
    .io_wdata_isNextMask_6(ftq_pc_mem_io_wdata_isNextMask_6),
    .io_wdata_isNextMask_7(ftq_pc_mem_io_wdata_isNextMask_7),
    .io_wdata_fallThruError(ftq_pc_mem_io_wdata_fallThruError)
  );
  FtqNRSRAM ftq_redirect_sram ( // @[NewFtq.scala 549:33]
    .clock(ftq_redirect_sram_clock),
    .reset(ftq_redirect_sram_reset),
    .io_raddr_0(ftq_redirect_sram_io_raddr_0),
    .io_raddr_1(ftq_redirect_sram_io_raddr_1),
    .io_raddr_2(ftq_redirect_sram_io_raddr_2),
    .io_ren_0(ftq_redirect_sram_io_ren_0),
    .io_ren_1(ftq_redirect_sram_io_ren_1),
    .io_ren_2(ftq_redirect_sram_io_ren_2),
    .io_rdata_0_folded_hist_hist_17_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_17_folded_hist),
    .io_rdata_0_folded_hist_hist_16_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_16_folded_hist),
    .io_rdata_0_folded_hist_hist_15_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_15_folded_hist),
    .io_rdata_0_folded_hist_hist_14_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_14_folded_hist),
    .io_rdata_0_folded_hist_hist_13_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_13_folded_hist),
    .io_rdata_0_folded_hist_hist_12_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_12_folded_hist),
    .io_rdata_0_folded_hist_hist_11_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_11_folded_hist),
    .io_rdata_0_folded_hist_hist_10_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_10_folded_hist),
    .io_rdata_0_folded_hist_hist_9_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_9_folded_hist),
    .io_rdata_0_folded_hist_hist_8_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_8_folded_hist),
    .io_rdata_0_folded_hist_hist_7_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_7_folded_hist),
    .io_rdata_0_folded_hist_hist_6_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_6_folded_hist),
    .io_rdata_0_folded_hist_hist_5_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_5_folded_hist),
    .io_rdata_0_folded_hist_hist_4_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_4_folded_hist),
    .io_rdata_0_folded_hist_hist_3_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_3_folded_hist),
    .io_rdata_0_folded_hist_hist_2_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_2_folded_hist),
    .io_rdata_0_folded_hist_hist_1_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_1_folded_hist),
    .io_rdata_0_folded_hist_hist_0_folded_hist(ftq_redirect_sram_io_rdata_0_folded_hist_hist_0_folded_hist),
    .io_rdata_0_afhob_afhob_5_bits_0(ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_0),
    .io_rdata_0_afhob_afhob_5_bits_1(ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_1),
    .io_rdata_0_afhob_afhob_5_bits_2(ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_2),
    .io_rdata_0_afhob_afhob_5_bits_3(ftq_redirect_sram_io_rdata_0_afhob_afhob_5_bits_3),
    .io_rdata_0_afhob_afhob_4_bits_0(ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_0),
    .io_rdata_0_afhob_afhob_4_bits_1(ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_1),
    .io_rdata_0_afhob_afhob_4_bits_2(ftq_redirect_sram_io_rdata_0_afhob_afhob_4_bits_2),
    .io_rdata_0_afhob_afhob_3_bits_0(ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_0),
    .io_rdata_0_afhob_afhob_3_bits_1(ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_1),
    .io_rdata_0_afhob_afhob_3_bits_2(ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_2),
    .io_rdata_0_afhob_afhob_3_bits_3(ftq_redirect_sram_io_rdata_0_afhob_afhob_3_bits_3),
    .io_rdata_0_afhob_afhob_2_bits_0(ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_0),
    .io_rdata_0_afhob_afhob_2_bits_1(ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_1),
    .io_rdata_0_afhob_afhob_2_bits_2(ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_2),
    .io_rdata_0_afhob_afhob_2_bits_3(ftq_redirect_sram_io_rdata_0_afhob_afhob_2_bits_3),
    .io_rdata_0_afhob_afhob_1_bits_0(ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_0),
    .io_rdata_0_afhob_afhob_1_bits_1(ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_1),
    .io_rdata_0_afhob_afhob_1_bits_2(ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_2),
    .io_rdata_0_afhob_afhob_1_bits_3(ftq_redirect_sram_io_rdata_0_afhob_afhob_1_bits_3),
    .io_rdata_0_afhob_afhob_0_bits_0(ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_0),
    .io_rdata_0_afhob_afhob_0_bits_1(ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_1),
    .io_rdata_0_afhob_afhob_0_bits_2(ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_2),
    .io_rdata_0_afhob_afhob_0_bits_3(ftq_redirect_sram_io_rdata_0_afhob_afhob_0_bits_3),
    .io_rdata_0_lastBrNumOH(ftq_redirect_sram_io_rdata_0_lastBrNumOH),
    .io_rdata_0_histPtr_flag(ftq_redirect_sram_io_rdata_0_histPtr_flag),
    .io_rdata_0_histPtr_value(ftq_redirect_sram_io_rdata_0_histPtr_value),
    .io_rdata_0_rasSp(ftq_redirect_sram_io_rdata_0_rasSp),
    .io_rdata_0_rasTop_retAddr(ftq_redirect_sram_io_rdata_0_rasTop_retAddr),
    .io_rdata_0_rasTop_ctr(ftq_redirect_sram_io_rdata_0_rasTop_ctr),
    .io_rdata_1_folded_hist_hist_17_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_17_folded_hist),
    .io_rdata_1_folded_hist_hist_16_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_16_folded_hist),
    .io_rdata_1_folded_hist_hist_15_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_15_folded_hist),
    .io_rdata_1_folded_hist_hist_14_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_14_folded_hist),
    .io_rdata_1_folded_hist_hist_13_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_13_folded_hist),
    .io_rdata_1_folded_hist_hist_12_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_12_folded_hist),
    .io_rdata_1_folded_hist_hist_11_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_11_folded_hist),
    .io_rdata_1_folded_hist_hist_10_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_10_folded_hist),
    .io_rdata_1_folded_hist_hist_9_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_9_folded_hist),
    .io_rdata_1_folded_hist_hist_8_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_8_folded_hist),
    .io_rdata_1_folded_hist_hist_7_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_7_folded_hist),
    .io_rdata_1_folded_hist_hist_6_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_6_folded_hist),
    .io_rdata_1_folded_hist_hist_5_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_5_folded_hist),
    .io_rdata_1_folded_hist_hist_4_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_4_folded_hist),
    .io_rdata_1_folded_hist_hist_3_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_3_folded_hist),
    .io_rdata_1_folded_hist_hist_2_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_2_folded_hist),
    .io_rdata_1_folded_hist_hist_1_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_1_folded_hist),
    .io_rdata_1_folded_hist_hist_0_folded_hist(ftq_redirect_sram_io_rdata_1_folded_hist_hist_0_folded_hist),
    .io_rdata_1_afhob_afhob_5_bits_0(ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_0),
    .io_rdata_1_afhob_afhob_5_bits_1(ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_1),
    .io_rdata_1_afhob_afhob_5_bits_2(ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_2),
    .io_rdata_1_afhob_afhob_5_bits_3(ftq_redirect_sram_io_rdata_1_afhob_afhob_5_bits_3),
    .io_rdata_1_afhob_afhob_4_bits_0(ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_0),
    .io_rdata_1_afhob_afhob_4_bits_1(ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_1),
    .io_rdata_1_afhob_afhob_4_bits_2(ftq_redirect_sram_io_rdata_1_afhob_afhob_4_bits_2),
    .io_rdata_1_afhob_afhob_3_bits_0(ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_0),
    .io_rdata_1_afhob_afhob_3_bits_1(ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_1),
    .io_rdata_1_afhob_afhob_3_bits_2(ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_2),
    .io_rdata_1_afhob_afhob_3_bits_3(ftq_redirect_sram_io_rdata_1_afhob_afhob_3_bits_3),
    .io_rdata_1_afhob_afhob_2_bits_0(ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_0),
    .io_rdata_1_afhob_afhob_2_bits_1(ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_1),
    .io_rdata_1_afhob_afhob_2_bits_2(ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_2),
    .io_rdata_1_afhob_afhob_2_bits_3(ftq_redirect_sram_io_rdata_1_afhob_afhob_2_bits_3),
    .io_rdata_1_afhob_afhob_1_bits_0(ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_0),
    .io_rdata_1_afhob_afhob_1_bits_1(ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_1),
    .io_rdata_1_afhob_afhob_1_bits_2(ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_2),
    .io_rdata_1_afhob_afhob_1_bits_3(ftq_redirect_sram_io_rdata_1_afhob_afhob_1_bits_3),
    .io_rdata_1_afhob_afhob_0_bits_0(ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_0),
    .io_rdata_1_afhob_afhob_0_bits_1(ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_1),
    .io_rdata_1_afhob_afhob_0_bits_2(ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_2),
    .io_rdata_1_afhob_afhob_0_bits_3(ftq_redirect_sram_io_rdata_1_afhob_afhob_0_bits_3),
    .io_rdata_1_lastBrNumOH(ftq_redirect_sram_io_rdata_1_lastBrNumOH),
    .io_rdata_1_histPtr_flag(ftq_redirect_sram_io_rdata_1_histPtr_flag),
    .io_rdata_1_histPtr_value(ftq_redirect_sram_io_rdata_1_histPtr_value),
    .io_rdata_1_rasSp(ftq_redirect_sram_io_rdata_1_rasSp),
    .io_rdata_1_rasTop_retAddr(ftq_redirect_sram_io_rdata_1_rasTop_retAddr),
    .io_rdata_1_rasTop_ctr(ftq_redirect_sram_io_rdata_1_rasTop_ctr),
    .io_rdata_2_folded_hist_hist_17_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_17_folded_hist),
    .io_rdata_2_folded_hist_hist_16_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_16_folded_hist),
    .io_rdata_2_folded_hist_hist_15_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_15_folded_hist),
    .io_rdata_2_folded_hist_hist_14_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_14_folded_hist),
    .io_rdata_2_folded_hist_hist_13_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_13_folded_hist),
    .io_rdata_2_folded_hist_hist_12_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_12_folded_hist),
    .io_rdata_2_folded_hist_hist_10_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_10_folded_hist),
    .io_rdata_2_folded_hist_hist_9_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_9_folded_hist),
    .io_rdata_2_folded_hist_hist_8_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_8_folded_hist),
    .io_rdata_2_folded_hist_hist_7_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_7_folded_hist),
    .io_rdata_2_folded_hist_hist_6_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_6_folded_hist),
    .io_rdata_2_folded_hist_hist_5_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_5_folded_hist),
    .io_rdata_2_folded_hist_hist_4_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_4_folded_hist),
    .io_rdata_2_folded_hist_hist_3_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_3_folded_hist),
    .io_rdata_2_folded_hist_hist_2_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_2_folded_hist),
    .io_rdata_2_folded_hist_hist_1_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_1_folded_hist),
    .io_rdata_2_folded_hist_hist_0_folded_hist(ftq_redirect_sram_io_rdata_2_folded_hist_hist_0_folded_hist),
    .io_waddr(ftq_redirect_sram_io_waddr),
    .io_wen(ftq_redirect_sram_io_wen),
    .io_wdata_folded_hist_hist_17_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_17_folded_hist),
    .io_wdata_folded_hist_hist_16_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_16_folded_hist),
    .io_wdata_folded_hist_hist_15_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_15_folded_hist),
    .io_wdata_folded_hist_hist_14_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_14_folded_hist),
    .io_wdata_folded_hist_hist_13_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_13_folded_hist),
    .io_wdata_folded_hist_hist_12_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_12_folded_hist),
    .io_wdata_folded_hist_hist_11_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_11_folded_hist),
    .io_wdata_folded_hist_hist_10_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_10_folded_hist),
    .io_wdata_folded_hist_hist_9_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_9_folded_hist),
    .io_wdata_folded_hist_hist_8_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_8_folded_hist),
    .io_wdata_folded_hist_hist_7_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_7_folded_hist),
    .io_wdata_folded_hist_hist_6_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_6_folded_hist),
    .io_wdata_folded_hist_hist_5_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_5_folded_hist),
    .io_wdata_folded_hist_hist_4_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_4_folded_hist),
    .io_wdata_folded_hist_hist_3_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_3_folded_hist),
    .io_wdata_folded_hist_hist_2_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_2_folded_hist),
    .io_wdata_folded_hist_hist_1_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_1_folded_hist),
    .io_wdata_folded_hist_hist_0_folded_hist(ftq_redirect_sram_io_wdata_folded_hist_hist_0_folded_hist),
    .io_wdata_afhob_afhob_5_bits_0(ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_0),
    .io_wdata_afhob_afhob_5_bits_1(ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_1),
    .io_wdata_afhob_afhob_5_bits_2(ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_2),
    .io_wdata_afhob_afhob_5_bits_3(ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_3),
    .io_wdata_afhob_afhob_4_bits_0(ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_0),
    .io_wdata_afhob_afhob_4_bits_1(ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_1),
    .io_wdata_afhob_afhob_4_bits_2(ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_2),
    .io_wdata_afhob_afhob_4_bits_3(ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_3),
    .io_wdata_afhob_afhob_3_bits_0(ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_0),
    .io_wdata_afhob_afhob_3_bits_1(ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_1),
    .io_wdata_afhob_afhob_3_bits_2(ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_2),
    .io_wdata_afhob_afhob_3_bits_3(ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_3),
    .io_wdata_afhob_afhob_2_bits_0(ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_0),
    .io_wdata_afhob_afhob_2_bits_1(ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_1),
    .io_wdata_afhob_afhob_2_bits_2(ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_2),
    .io_wdata_afhob_afhob_2_bits_3(ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_3),
    .io_wdata_afhob_afhob_1_bits_0(ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_0),
    .io_wdata_afhob_afhob_1_bits_1(ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_1),
    .io_wdata_afhob_afhob_1_bits_2(ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_2),
    .io_wdata_afhob_afhob_1_bits_3(ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_3),
    .io_wdata_afhob_afhob_0_bits_0(ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_0),
    .io_wdata_afhob_afhob_0_bits_1(ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_1),
    .io_wdata_afhob_afhob_0_bits_2(ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_2),
    .io_wdata_afhob_afhob_0_bits_3(ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_3),
    .io_wdata_lastBrNumOH(ftq_redirect_sram_io_wdata_lastBrNumOH),
    .io_wdata_histPtr_flag(ftq_redirect_sram_io_wdata_histPtr_flag),
    .io_wdata_histPtr_value(ftq_redirect_sram_io_wdata_histPtr_value),
    .io_wdata_rasSp(ftq_redirect_sram_io_wdata_rasSp),
    .io_wdata_rasTop_retAddr(ftq_redirect_sram_io_wdata_rasTop_retAddr),
    .io_wdata_rasTop_ctr(ftq_redirect_sram_io_wdata_rasTop_ctr)
  );
  FtqNRSRAM_1 ftq_meta_1r_sram ( // @[NewFtq.scala 557:32]
    .clock(ftq_meta_1r_sram_clock),
    .reset(ftq_meta_1r_sram_reset),
    .io_raddr_0(ftq_meta_1r_sram_io_raddr_0),
    .io_ren_0(ftq_meta_1r_sram_io_ren_0),
    .io_rdata_0_meta(ftq_meta_1r_sram_io_rdata_0_meta),
    .io_waddr(ftq_meta_1r_sram_io_waddr),
    .io_wen(ftq_meta_1r_sram_io_wen),
    .io_wdata_meta(ftq_meta_1r_sram_io_wdata_meta)
  );
  SyncDataModuleTemplate__8entry ftb_entry_mem ( // @[NewFtq.scala 563:29]
    .clock(ftb_entry_mem_clock),
    .io_raddr_0(ftb_entry_mem_io_raddr_0),
    .io_raddr_1(ftb_entry_mem_io_raddr_1),
    .io_raddr_2(ftb_entry_mem_io_raddr_2),
    .io_rdata_0_brSlots_0_offset(ftb_entry_mem_io_rdata_0_brSlots_0_offset),
    .io_rdata_0_brSlots_0_valid(ftb_entry_mem_io_rdata_0_brSlots_0_valid),
    .io_rdata_0_tailSlot_offset(ftb_entry_mem_io_rdata_0_tailSlot_offset),
    .io_rdata_0_tailSlot_sharing(ftb_entry_mem_io_rdata_0_tailSlot_sharing),
    .io_rdata_0_tailSlot_valid(ftb_entry_mem_io_rdata_0_tailSlot_valid),
    .io_rdata_0_isCall(ftb_entry_mem_io_rdata_0_isCall),
    .io_rdata_0_isRet(ftb_entry_mem_io_rdata_0_isRet),
    .io_rdata_0_isJalr(ftb_entry_mem_io_rdata_0_isJalr),
    .io_rdata_1_brSlots_0_offset(ftb_entry_mem_io_rdata_1_brSlots_0_offset),
    .io_rdata_1_brSlots_0_valid(ftb_entry_mem_io_rdata_1_brSlots_0_valid),
    .io_rdata_1_brSlots_0_sc(ftb_entry_mem_io_rdata_1_brSlots_0_sc),
    .io_rdata_1_tailSlot_offset(ftb_entry_mem_io_rdata_1_tailSlot_offset),
    .io_rdata_1_tailSlot_sharing(ftb_entry_mem_io_rdata_1_tailSlot_sharing),
    .io_rdata_1_tailSlot_valid(ftb_entry_mem_io_rdata_1_tailSlot_valid),
    .io_rdata_1_tailSlot_sc(ftb_entry_mem_io_rdata_1_tailSlot_sc),
    .io_rdata_1_isJalr(ftb_entry_mem_io_rdata_1_isJalr),
    .io_rdata_2_valid(ftb_entry_mem_io_rdata_2_valid),
    .io_rdata_2_brSlots_0_offset(ftb_entry_mem_io_rdata_2_brSlots_0_offset),
    .io_rdata_2_brSlots_0_lower(ftb_entry_mem_io_rdata_2_brSlots_0_lower),
    .io_rdata_2_brSlots_0_tarStat(ftb_entry_mem_io_rdata_2_brSlots_0_tarStat),
    .io_rdata_2_brSlots_0_sharing(ftb_entry_mem_io_rdata_2_brSlots_0_sharing),
    .io_rdata_2_brSlots_0_valid(ftb_entry_mem_io_rdata_2_brSlots_0_valid),
    .io_rdata_2_brSlots_0_sc(ftb_entry_mem_io_rdata_2_brSlots_0_sc),
    .io_rdata_2_tailSlot_offset(ftb_entry_mem_io_rdata_2_tailSlot_offset),
    .io_rdata_2_tailSlot_lower(ftb_entry_mem_io_rdata_2_tailSlot_lower),
    .io_rdata_2_tailSlot_tarStat(ftb_entry_mem_io_rdata_2_tailSlot_tarStat),
    .io_rdata_2_tailSlot_sharing(ftb_entry_mem_io_rdata_2_tailSlot_sharing),
    .io_rdata_2_tailSlot_valid(ftb_entry_mem_io_rdata_2_tailSlot_valid),
    .io_rdata_2_tailSlot_sc(ftb_entry_mem_io_rdata_2_tailSlot_sc),
    .io_rdata_2_pftAddr(ftb_entry_mem_io_rdata_2_pftAddr),
    .io_rdata_2_carry(ftb_entry_mem_io_rdata_2_carry),
    .io_rdata_2_isCall(ftb_entry_mem_io_rdata_2_isCall),
    .io_rdata_2_isRet(ftb_entry_mem_io_rdata_2_isRet),
    .io_rdata_2_isJalr(ftb_entry_mem_io_rdata_2_isJalr),
    .io_rdata_2_last_may_be_rvi_call(ftb_entry_mem_io_rdata_2_last_may_be_rvi_call),
    .io_rdata_2_always_taken_0(ftb_entry_mem_io_rdata_2_always_taken_0),
    .io_rdata_2_always_taken_1(ftb_entry_mem_io_rdata_2_always_taken_1),
    .io_wen_0(ftb_entry_mem_io_wen_0),
    .io_waddr_0(ftb_entry_mem_io_waddr_0),
    .io_wdata_0_valid(ftb_entry_mem_io_wdata_0_valid),
    .io_wdata_0_brSlots_0_offset(ftb_entry_mem_io_wdata_0_brSlots_0_offset),
    .io_wdata_0_brSlots_0_lower(ftb_entry_mem_io_wdata_0_brSlots_0_lower),
    .io_wdata_0_brSlots_0_tarStat(ftb_entry_mem_io_wdata_0_brSlots_0_tarStat),
    .io_wdata_0_brSlots_0_sharing(ftb_entry_mem_io_wdata_0_brSlots_0_sharing),
    .io_wdata_0_brSlots_0_valid(ftb_entry_mem_io_wdata_0_brSlots_0_valid),
    .io_wdata_0_brSlots_0_sc(ftb_entry_mem_io_wdata_0_brSlots_0_sc),
    .io_wdata_0_tailSlot_offset(ftb_entry_mem_io_wdata_0_tailSlot_offset),
    .io_wdata_0_tailSlot_lower(ftb_entry_mem_io_wdata_0_tailSlot_lower),
    .io_wdata_0_tailSlot_tarStat(ftb_entry_mem_io_wdata_0_tailSlot_tarStat),
    .io_wdata_0_tailSlot_sharing(ftb_entry_mem_io_wdata_0_tailSlot_sharing),
    .io_wdata_0_tailSlot_valid(ftb_entry_mem_io_wdata_0_tailSlot_valid),
    .io_wdata_0_tailSlot_sc(ftb_entry_mem_io_wdata_0_tailSlot_sc),
    .io_wdata_0_pftAddr(ftb_entry_mem_io_wdata_0_pftAddr),
    .io_wdata_0_carry(ftb_entry_mem_io_wdata_0_carry),
    .io_wdata_0_isCall(ftb_entry_mem_io_wdata_0_isCall),
    .io_wdata_0_isRet(ftb_entry_mem_io_wdata_0_isRet),
    .io_wdata_0_isJalr(ftb_entry_mem_io_wdata_0_isJalr),
    .io_wdata_0_last_may_be_rvi_call(ftb_entry_mem_io_wdata_0_last_may_be_rvi_call),
    .io_wdata_0_always_taken_0(ftb_entry_mem_io_wdata_0_always_taken_0),
    .io_wdata_0_always_taken_1(ftb_entry_mem_io_wdata_0_always_taken_1)
  );
  SyncDataModuleTemplate__8entry_1 ftq_pd_mem ( // @[NewFtq.scala 808:26]
    .clock(ftq_pd_mem_clock),
    .io_raddr_0(ftq_pd_mem_io_raddr_0),
    .io_rdata_0_brMask_0(ftq_pd_mem_io_rdata_0_brMask_0),
    .io_rdata_0_brMask_1(ftq_pd_mem_io_rdata_0_brMask_1),
    .io_rdata_0_brMask_2(ftq_pd_mem_io_rdata_0_brMask_2),
    .io_rdata_0_brMask_3(ftq_pd_mem_io_rdata_0_brMask_3),
    .io_rdata_0_brMask_4(ftq_pd_mem_io_rdata_0_brMask_4),
    .io_rdata_0_brMask_5(ftq_pd_mem_io_rdata_0_brMask_5),
    .io_rdata_0_brMask_6(ftq_pd_mem_io_rdata_0_brMask_6),
    .io_rdata_0_brMask_7(ftq_pd_mem_io_rdata_0_brMask_7),
    .io_rdata_0_jmpInfo_valid(ftq_pd_mem_io_rdata_0_jmpInfo_valid),
    .io_rdata_0_jmpInfo_bits_0(ftq_pd_mem_io_rdata_0_jmpInfo_bits_0),
    .io_rdata_0_jmpInfo_bits_1(ftq_pd_mem_io_rdata_0_jmpInfo_bits_1),
    .io_rdata_0_jmpInfo_bits_2(ftq_pd_mem_io_rdata_0_jmpInfo_bits_2),
    .io_rdata_0_jmpOffset(ftq_pd_mem_io_rdata_0_jmpOffset),
    .io_rdata_0_jalTarget(ftq_pd_mem_io_rdata_0_jalTarget),
    .io_rdata_0_rvcMask_0(ftq_pd_mem_io_rdata_0_rvcMask_0),
    .io_rdata_0_rvcMask_1(ftq_pd_mem_io_rdata_0_rvcMask_1),
    .io_rdata_0_rvcMask_2(ftq_pd_mem_io_rdata_0_rvcMask_2),
    .io_rdata_0_rvcMask_3(ftq_pd_mem_io_rdata_0_rvcMask_3),
    .io_rdata_0_rvcMask_4(ftq_pd_mem_io_rdata_0_rvcMask_4),
    .io_rdata_0_rvcMask_5(ftq_pd_mem_io_rdata_0_rvcMask_5),
    .io_rdata_0_rvcMask_6(ftq_pd_mem_io_rdata_0_rvcMask_6),
    .io_rdata_0_rvcMask_7(ftq_pd_mem_io_rdata_0_rvcMask_7),
    .io_wen_0(ftq_pd_mem_io_wen_0),
    .io_waddr_0(ftq_pd_mem_io_waddr_0),
    .io_wdata_0_brMask_0(ftq_pd_mem_io_wdata_0_brMask_0),
    .io_wdata_0_brMask_1(ftq_pd_mem_io_wdata_0_brMask_1),
    .io_wdata_0_brMask_2(ftq_pd_mem_io_wdata_0_brMask_2),
    .io_wdata_0_brMask_3(ftq_pd_mem_io_wdata_0_brMask_3),
    .io_wdata_0_brMask_4(ftq_pd_mem_io_wdata_0_brMask_4),
    .io_wdata_0_brMask_5(ftq_pd_mem_io_wdata_0_brMask_5),
    .io_wdata_0_brMask_6(ftq_pd_mem_io_wdata_0_brMask_6),
    .io_wdata_0_brMask_7(ftq_pd_mem_io_wdata_0_brMask_7),
    .io_wdata_0_jmpInfo_valid(ftq_pd_mem_io_wdata_0_jmpInfo_valid),
    .io_wdata_0_jmpInfo_bits_0(ftq_pd_mem_io_wdata_0_jmpInfo_bits_0),
    .io_wdata_0_jmpInfo_bits_1(ftq_pd_mem_io_wdata_0_jmpInfo_bits_1),
    .io_wdata_0_jmpInfo_bits_2(ftq_pd_mem_io_wdata_0_jmpInfo_bits_2),
    .io_wdata_0_jmpOffset(ftq_pd_mem_io_wdata_0_jmpOffset),
    .io_wdata_0_jalTarget(ftq_pd_mem_io_wdata_0_jalTarget),
    .io_wdata_0_rvcMask_0(ftq_pd_mem_io_wdata_0_rvcMask_0),
    .io_wdata_0_rvcMask_1(ftq_pd_mem_io_wdata_0_rvcMask_1),
    .io_wdata_0_rvcMask_2(ftq_pd_mem_io_wdata_0_rvcMask_2),
    .io_wdata_0_rvcMask_3(ftq_pd_mem_io_wdata_0_rvcMask_3),
    .io_wdata_0_rvcMask_4(ftq_pd_mem_io_wdata_0_rvcMask_4),
    .io_wdata_0_rvcMask_5(ftq_pd_mem_io_wdata_0_rvcMask_5),
    .io_wdata_0_rvcMask_6(ftq_pd_mem_io_wdata_0_rvcMask_6),
    .io_wdata_0_rvcMask_7(ftq_pd_mem_io_wdata_0_rvcMask_7)
  );
  FTBEntryGen FTBEntryGen ( // @[NewFtq.scala 1206:27]
    .io_start_addr(FTBEntryGen_io_start_addr),
    .io_old_entry_valid(FTBEntryGen_io_old_entry_valid),
    .io_old_entry_brSlots_0_offset(FTBEntryGen_io_old_entry_brSlots_0_offset),
    .io_old_entry_brSlots_0_lower(FTBEntryGen_io_old_entry_brSlots_0_lower),
    .io_old_entry_brSlots_0_tarStat(FTBEntryGen_io_old_entry_brSlots_0_tarStat),
    .io_old_entry_brSlots_0_sharing(FTBEntryGen_io_old_entry_brSlots_0_sharing),
    .io_old_entry_brSlots_0_valid(FTBEntryGen_io_old_entry_brSlots_0_valid),
    .io_old_entry_brSlots_0_sc(FTBEntryGen_io_old_entry_brSlots_0_sc),
    .io_old_entry_tailSlot_offset(FTBEntryGen_io_old_entry_tailSlot_offset),
    .io_old_entry_tailSlot_lower(FTBEntryGen_io_old_entry_tailSlot_lower),
    .io_old_entry_tailSlot_tarStat(FTBEntryGen_io_old_entry_tailSlot_tarStat),
    .io_old_entry_tailSlot_sharing(FTBEntryGen_io_old_entry_tailSlot_sharing),
    .io_old_entry_tailSlot_valid(FTBEntryGen_io_old_entry_tailSlot_valid),
    .io_old_entry_tailSlot_sc(FTBEntryGen_io_old_entry_tailSlot_sc),
    .io_old_entry_pftAddr(FTBEntryGen_io_old_entry_pftAddr),
    .io_old_entry_carry(FTBEntryGen_io_old_entry_carry),
    .io_old_entry_isCall(FTBEntryGen_io_old_entry_isCall),
    .io_old_entry_isRet(FTBEntryGen_io_old_entry_isRet),
    .io_old_entry_isJalr(FTBEntryGen_io_old_entry_isJalr),
    .io_old_entry_last_may_be_rvi_call(FTBEntryGen_io_old_entry_last_may_be_rvi_call),
    .io_old_entry_always_taken_0(FTBEntryGen_io_old_entry_always_taken_0),
    .io_old_entry_always_taken_1(FTBEntryGen_io_old_entry_always_taken_1),
    .io_pd_brMask_0(FTBEntryGen_io_pd_brMask_0),
    .io_pd_brMask_1(FTBEntryGen_io_pd_brMask_1),
    .io_pd_brMask_2(FTBEntryGen_io_pd_brMask_2),
    .io_pd_brMask_3(FTBEntryGen_io_pd_brMask_3),
    .io_pd_brMask_4(FTBEntryGen_io_pd_brMask_4),
    .io_pd_brMask_5(FTBEntryGen_io_pd_brMask_5),
    .io_pd_brMask_6(FTBEntryGen_io_pd_brMask_6),
    .io_pd_brMask_7(FTBEntryGen_io_pd_brMask_7),
    .io_pd_jmpInfo_valid(FTBEntryGen_io_pd_jmpInfo_valid),
    .io_pd_jmpInfo_bits_0(FTBEntryGen_io_pd_jmpInfo_bits_0),
    .io_pd_jmpInfo_bits_1(FTBEntryGen_io_pd_jmpInfo_bits_1),
    .io_pd_jmpInfo_bits_2(FTBEntryGen_io_pd_jmpInfo_bits_2),
    .io_pd_jmpOffset(FTBEntryGen_io_pd_jmpOffset),
    .io_pd_jalTarget(FTBEntryGen_io_pd_jalTarget),
    .io_pd_rvcMask_0(FTBEntryGen_io_pd_rvcMask_0),
    .io_pd_rvcMask_1(FTBEntryGen_io_pd_rvcMask_1),
    .io_pd_rvcMask_2(FTBEntryGen_io_pd_rvcMask_2),
    .io_pd_rvcMask_3(FTBEntryGen_io_pd_rvcMask_3),
    .io_pd_rvcMask_4(FTBEntryGen_io_pd_rvcMask_4),
    .io_pd_rvcMask_5(FTBEntryGen_io_pd_rvcMask_5),
    .io_pd_rvcMask_6(FTBEntryGen_io_pd_rvcMask_6),
    .io_pd_rvcMask_7(FTBEntryGen_io_pd_rvcMask_7),
    .io_cfiIndex_valid(FTBEntryGen_io_cfiIndex_valid),
    .io_cfiIndex_bits(FTBEntryGen_io_cfiIndex_bits),
    .io_target(FTBEntryGen_io_target),
    .io_hit(FTBEntryGen_io_hit),
    .io_mispredict_vec_0(FTBEntryGen_io_mispredict_vec_0),
    .io_mispredict_vec_1(FTBEntryGen_io_mispredict_vec_1),
    .io_mispredict_vec_2(FTBEntryGen_io_mispredict_vec_2),
    .io_mispredict_vec_3(FTBEntryGen_io_mispredict_vec_3),
    .io_mispredict_vec_4(FTBEntryGen_io_mispredict_vec_4),
    .io_mispredict_vec_5(FTBEntryGen_io_mispredict_vec_5),
    .io_mispredict_vec_6(FTBEntryGen_io_mispredict_vec_6),
    .io_mispredict_vec_7(FTBEntryGen_io_mispredict_vec_7),
    .io_new_entry_valid(FTBEntryGen_io_new_entry_valid),
    .io_new_entry_brSlots_0_offset(FTBEntryGen_io_new_entry_brSlots_0_offset),
    .io_new_entry_brSlots_0_lower(FTBEntryGen_io_new_entry_brSlots_0_lower),
    .io_new_entry_brSlots_0_tarStat(FTBEntryGen_io_new_entry_brSlots_0_tarStat),
    .io_new_entry_brSlots_0_sharing(FTBEntryGen_io_new_entry_brSlots_0_sharing),
    .io_new_entry_brSlots_0_valid(FTBEntryGen_io_new_entry_brSlots_0_valid),
    .io_new_entry_brSlots_0_sc(FTBEntryGen_io_new_entry_brSlots_0_sc),
    .io_new_entry_tailSlot_offset(FTBEntryGen_io_new_entry_tailSlot_offset),
    .io_new_entry_tailSlot_lower(FTBEntryGen_io_new_entry_tailSlot_lower),
    .io_new_entry_tailSlot_tarStat(FTBEntryGen_io_new_entry_tailSlot_tarStat),
    .io_new_entry_tailSlot_sharing(FTBEntryGen_io_new_entry_tailSlot_sharing),
    .io_new_entry_tailSlot_valid(FTBEntryGen_io_new_entry_tailSlot_valid),
    .io_new_entry_tailSlot_sc(FTBEntryGen_io_new_entry_tailSlot_sc),
    .io_new_entry_pftAddr(FTBEntryGen_io_new_entry_pftAddr),
    .io_new_entry_carry(FTBEntryGen_io_new_entry_carry),
    .io_new_entry_isCall(FTBEntryGen_io_new_entry_isCall),
    .io_new_entry_isRet(FTBEntryGen_io_new_entry_isRet),
    .io_new_entry_isJalr(FTBEntryGen_io_new_entry_isJalr),
    .io_new_entry_last_may_be_rvi_call(FTBEntryGen_io_new_entry_last_may_be_rvi_call),
    .io_new_entry_always_taken_0(FTBEntryGen_io_new_entry_always_taken_0),
    .io_new_entry_always_taken_1(FTBEntryGen_io_new_entry_always_taken_1),
    .io_taken_mask_0(FTBEntryGen_io_taken_mask_0),
    .io_taken_mask_1(FTBEntryGen_io_taken_mask_1),
    .io_jmp_taken(FTBEntryGen_io_jmp_taken),
    .io_mispred_mask_0(FTBEntryGen_io_mispred_mask_0),
    .io_mispred_mask_1(FTBEntryGen_io_mispred_mask_1),
    .io_mispred_mask_2(FTBEntryGen_io_mispred_mask_2),
    .io_is_old_entry(FTBEntryGen_io_is_old_entry)
  );
  assign io_fromBpu_resp_ready = validEntries < 4'h8 | canCommit; // @[NewFtq.scala 524:50]
  assign io_toBpu_redirect_valid = backendRedirectReg_valid ? backendRedirectReg_valid : ifuRedirectReg_valid; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_level = backendRedirectReg_valid & backendRedirectReg_bits_level; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_pc = backendRedirectReg_valid ? backendRedirectReg_bits_cfiUpdate_pc :
    ifuRedirectReg_bits_cfiUpdate_pc; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_pd_isRVC = backendRedirectReg_valid ?
    backendRedirectReg_bits_cfiUpdate_pd_isRVC : ifuRedirectReg_bits_cfiUpdate_pd_isRVC; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_pd_isCall = backendRedirectReg_valid ?
    backendRedirectReg_bits_cfiUpdate_pd_isCall : ifuRedirectReg_bits_cfiUpdate_pd_isCall; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_pd_isRet = backendRedirectReg_valid ?
    backendRedirectReg_bits_cfiUpdate_pd_isRet : ifuRedirectReg_bits_cfiUpdate_pd_isRet; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_rasSp = backendRedirectReg_valid ? fromBackendRedirect_bits_cfiUpdate_rasSp :
    ifuRedirectToBpu_bits_cfiUpdate_rasSp; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_rasEntry_retAddr = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_rasEntry_retAddr : ifuRedirectToBpu_bits_cfiUpdate_rasEntry_retAddr; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_rasEntry_ctr = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_rasEntry_ctr : ifuRedirectToBpu_bits_cfiUpdate_rasEntry_ctr; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_17_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_17_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_16_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_16_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_15_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_15_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_14_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_14_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_13_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_13_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_12_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_12_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_11_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_11_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_10_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_10_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_9_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_9_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_8_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_8_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_7_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_7_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_6_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_6_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_5_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_5_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_4_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_4_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_3_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_3_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_2_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_2_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_1_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_1_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_folded_hist_hist_0_folded_hist = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_folded_hist_hist_0_folded_hist :
    ifuRedirectToBpu_bits_cfiUpdate_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_0 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_0 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_0; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_1 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_1 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_1; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_2 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_2 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_2; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_5_bits_3 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_5_bits_3 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_5_bits_3; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_4_bits_0 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_4_bits_0 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_4_bits_0; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_4_bits_1 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_4_bits_1 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_4_bits_1; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_4_bits_2 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_4_bits_2 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_4_bits_2; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_0 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_0 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_0; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_1 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_1 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_1; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_2 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_2 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_2; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_3_bits_3 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_3_bits_3 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_3_bits_3; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_0 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_0 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_0; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_1 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_1 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_1; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_2 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_2 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_2; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_2_bits_3 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_2_bits_3 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_2_bits_3; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_0 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_0 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_0; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_1 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_1 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_1; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_2 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_2 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_2; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_1_bits_3 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_1_bits_3 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_1_bits_3; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_0 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_0 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_0; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_1 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_1 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_1; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_2 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_2 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_2; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_afhob_afhob_0_bits_3 = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_afhob_afhob_0_bits_3 : ifuRedirectToBpu_bits_cfiUpdate_afhob_afhob_0_bits_3; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_lastBrNumOH = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_lastBrNumOH : ifuRedirectToBpu_bits_cfiUpdate_lastBrNumOH; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_histPtr_flag = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_histPtr_flag : ifuRedirectToBpu_bits_cfiUpdate_histPtr_flag; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_histPtr_value = backendRedirectReg_valid ?
    fromBackendRedirect_bits_cfiUpdate_histPtr_value : ifuRedirectToBpu_bits_cfiUpdate_histPtr_value; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_br_hit = backendRedirectReg_valid & fromBackendRedirect_bits_cfiUpdate_br_hit; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_jr_hit = backendRedirectReg_valid & fromBackendRedirect_bits_cfiUpdate_jr_hit; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_sc_hit = backendRedirectReg_valid & fromBackendRedirect_bits_cfiUpdate_sc_hit; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_target = backendRedirectReg_valid ? backendRedirectReg_bits_cfiUpdate_target
     : ifuRedirectToBpu_bits_cfiUpdate_target; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_taken = backendRedirectReg_valid ? backendRedirectReg_bits_cfiUpdate_taken :
    ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_shift = backendRedirectReg_valid ? fromBackendRedirect_bits_cfiUpdate_shift : 2'h0
    ; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_cfiUpdate_addIntoHist = backendRedirectReg_valid &
    fromBackendRedirect_bits_cfiUpdate_addIntoHist; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_debugIsCtrl = backendRedirectReg_valid & backendRedirectReg_bits_debugIsCtrl; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_debugIsMemVio = backendRedirectReg_valid & backendRedirectReg_bits_debugIsMemVio; // @[NewFtq.scala 1109:27]
  assign io_toBpu_redirect_bits_BTBMissBubble = backendRedirectReg_valid ? 1'h0 : ifuRedirectReg_bits_BTBMissBubble; // @[NewFtq.scala 1109:27]
  assign io_toBpu_update_valid = commit_valid & do_commit; // @[NewFtq.scala 1192:41]
  assign io_toBpu_update_bits_pc = commit_pc_bundle_startAddr; // @[NewFtq.scala 1195:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_17_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_16_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_15_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_14_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_13_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_12_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_10_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_9_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_8_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_7_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_6_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_5_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_4_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_3_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_2_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_1_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_spec_info_folded_hist_hist_0_folded_hist =
    ftq_redirect_sram_io_rdata_2_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 1200:22]
  assign io_toBpu_update_bits_ftb_entry_valid = FTBEntryGen_io_new_entry_valid; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_brSlots_0_offset = FTBEntryGen_io_new_entry_brSlots_0_offset; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_brSlots_0_lower = FTBEntryGen_io_new_entry_brSlots_0_lower; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_brSlots_0_tarStat = FTBEntryGen_io_new_entry_brSlots_0_tarStat; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_brSlots_0_sharing = FTBEntryGen_io_new_entry_brSlots_0_sharing; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_brSlots_0_valid = FTBEntryGen_io_new_entry_brSlots_0_valid; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_brSlots_0_sc = FTBEntryGen_io_new_entry_brSlots_0_sc; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_tailSlot_offset = FTBEntryGen_io_new_entry_tailSlot_offset; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_tailSlot_lower = FTBEntryGen_io_new_entry_tailSlot_lower; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_tailSlot_tarStat = FTBEntryGen_io_new_entry_tailSlot_tarStat; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_tailSlot_sharing = FTBEntryGen_io_new_entry_tailSlot_sharing; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_tailSlot_valid = FTBEntryGen_io_new_entry_tailSlot_valid; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_tailSlot_sc = FTBEntryGen_io_new_entry_tailSlot_sc; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_pftAddr = FTBEntryGen_io_new_entry_pftAddr; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_carry = FTBEntryGen_io_new_entry_carry; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_isCall = FTBEntryGen_io_new_entry_isCall; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_isRet = FTBEntryGen_io_new_entry_isRet; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_isJalr = FTBEntryGen_io_new_entry_isJalr; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_last_may_be_rvi_call = FTBEntryGen_io_new_entry_last_may_be_rvi_call; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_always_taken_0 = FTBEntryGen_io_new_entry_always_taken_0; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_ftb_entry_always_taken_1 = FTBEntryGen_io_new_entry_always_taken_1; // @[NewFtq.scala 1215:28]
  assign io_toBpu_update_bits_cfi_idx_valid = commit_cfi_valid; // @[NewFtq.scala 1197:22]
  assign io_toBpu_update_bits_cfi_idx_bits = commit_cfi_bits; // @[NewFtq.scala 1197:22]
  assign io_toBpu_update_bits_br_taken_mask_0 = FTBEntryGen_io_taken_mask_0; // @[NewFtq.scala 1220:28]
  assign io_toBpu_update_bits_br_taken_mask_1 = FTBEntryGen_io_taken_mask_1; // @[NewFtq.scala 1220:28]
  assign io_toBpu_update_bits_br_committed_0 = _WIRE_21_0 & _GEN_2946; // @[NewFtq.scala 1222:35]
  assign io_toBpu_update_bits_br_committed_1 = _T_297 & _GEN_2954; // @[NewFtq.scala 1222:35]
  assign io_toBpu_update_bits_jmp_taken = FTBEntryGen_io_jmp_taken; // @[NewFtq.scala 1224:28]
  assign io_toBpu_update_bits_mispred_mask_0 = FTBEntryGen_io_mispred_mask_0; // @[NewFtq.scala 1217:28]
  assign io_toBpu_update_bits_mispred_mask_1 = FTBEntryGen_io_mispred_mask_1; // @[NewFtq.scala 1217:28]
  assign io_toBpu_update_bits_mispred_mask_2 = FTBEntryGen_io_mispred_mask_2; // @[NewFtq.scala 1217:28]
  assign io_toBpu_update_bits_false_hit = commit_hit == 2'h1; // @[NewFtq.scala 1194:36]
  assign io_toBpu_update_bits_old_entry = FTBEntryGen_io_is_old_entry; // @[NewFtq.scala 1218:28]
  assign io_toBpu_update_bits_meta = ftq_meta_1r_sram_io_rdata_0_meta; // @[NewFtq.scala 1196:22]
  assign io_toBpu_update_bits_full_target = commit_target_REG ? commit_target_REG_1 : commit_target_REG_2; // @[NewFtq.scala 1129:8]
  assign io_toBpu_enq_ptr_flag = bpuPtr_flag; // @[NewFtq.scala 532:20]
  assign io_toBpu_enq_ptr_value = bpuPtr_value; // @[NewFtq.scala 532:20]
  assign io_toIfu_req_valid = entry_is_to_send & _io_toIfu_req_valid_T_2; // @[NewFtq.scala 759:42]
  assign io_toIfu_req_bits_startAddr = _copied_ifu_ptr_to_send_T_4 ? bpu_in_bypass_buf_startAddr : _GEN_635; // @[NewFtq.scala 733:60 734:19]
  assign io_toIfu_req_bits_nextlineStart = _copied_ifu_ptr_to_send_T_4 ? bpu_in_bypass_buf_nextLineAddr : _GEN_636; // @[NewFtq.scala 733:60 734:19]
  assign io_toIfu_req_bits_nextStartAddr = toIfuPcBundle_fallThruError ? _io_toIfu_req_bits_nextStartAddr_T_3 :
    entry_next_addr; // @[FrontendBundle.scala 52:28 55:26 NewFtq.scala 760:35]
  assign io_toIfu_req_bits_ftqIdx_flag = ifuPtr_flag; // @[NewFtq.scala 703:28]
  assign io_toIfu_req_bits_ftqIdx_value = ifuPtr_value; // @[NewFtq.scala 703:28]
  assign io_toIfu_req_bits_ftqOffset_valid = _copied_ifu_ptr_to_send_T_4 ? last_cycle_cfiIndex_valid : _GEN_490; // @[NewFtq.scala 733:60 737:22]
  assign io_toIfu_req_bits_ftqOffset_bits = _copied_ifu_ptr_to_send_T_4 ? last_cycle_cfiIndex_bits : _GEN_498; // @[NewFtq.scala 733:60 737:22]
  assign io_toIfu_req_bits_topdown_info_reasons_0 = topdown_stage_reasons_0; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_1 = topdown_stage_reasons_1; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_2 = topdown_stage_reasons_2; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_3 = backendRedirectReg_valid ? _GEN_1468 : topdown_stage_reasons_3; // @[NewFtq.scala 1008:35 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_4 = backendRedirectReg_valid ? _GEN_1470 : topdown_stage_reasons_4; // @[NewFtq.scala 1008:35 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_5 = backendRedirectReg_valid ? _GEN_1472 : topdown_stage_reasons_5; // @[NewFtq.scala 1008:35 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_6 = backendRedirectReg_valid ? _GEN_1474 : topdown_stage_reasons_6; // @[NewFtq.scala 1008:35 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_7 = backendRedirectReg_valid ? _GEN_1476 : topdown_stage_reasons_7; // @[NewFtq.scala 1008:35 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_8 = backendRedirectReg_valid ? _GEN_1478 : topdown_stage_reasons_8; // @[NewFtq.scala 1008:35 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_9 = topdown_stage_reasons_9; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_10 = topdown_stage_reasons_10; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_11 = topdown_stage_reasons_11; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_12 = backendRedirectReg_valid ? _GEN_1466 : _GEN_1480; // @[NewFtq.scala 1008:35]
  assign io_toIfu_req_bits_topdown_info_reasons_13 = topdown_stage_reasons_13; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_14 = topdown_stage_reasons_14; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_15 = topdown_stage_reasons_15; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_16 = topdown_stage_reasons_16; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_17 = topdown_stage_reasons_17; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_18 = topdown_stage_reasons_18; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_19 = topdown_stage_reasons_19; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_20 = topdown_stage_reasons_20; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_21 = topdown_stage_reasons_21; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_22 = topdown_stage_reasons_22; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_23 = topdown_stage_reasons_23; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_24 = topdown_stage_reasons_24; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_25 = topdown_stage_reasons_25; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_26 = topdown_stage_reasons_26; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_27 = topdown_stage_reasons_27; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_28 = topdown_stage_reasons_28; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_29 = topdown_stage_reasons_29; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_30 = topdown_stage_reasons_30; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_31 = topdown_stage_reasons_31; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_32 = topdown_stage_reasons_32; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_33 = topdown_stage_reasons_33; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_34 = topdown_stage_reasons_34; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_35 = topdown_stage_reasons_35; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_reasons_36 = topdown_stage_reasons_36; // @[NewFtq.scala 476:34]
  assign io_toIfu_req_bits_topdown_info_stallWidth = topdown_stage_stallWidth; // @[NewFtq.scala 476:34]
  assign io_toIfu_redirect_valid = io_fromBackend_redirect_valid; // @[NewFtq.scala 480:29 963:25]
  assign io_toIfu_redirect_bits_ftqIdx_flag = io_fromBackend_redirect_bits_ftqIdx_flag; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
  assign io_toIfu_redirect_bits_ftqIdx_value = io_fromBackend_redirect_bits_ftqIdx_value; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
  assign io_toIfu_redirect_bits_ftqOffset = io_fromBackend_redirect_bits_ftqOffset; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
  assign io_toIfu_redirect_bits_level = io_fromBackend_redirect_bits_level; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
  assign io_toIfu_topdown_redirect_valid = backendRedirectReg_valid; // @[NewFtq.scala 1083:29]
  assign io_toIfu_topdown_redirect_bits_cfiUpdate_pd_isRet = backendRedirectReg_bits_cfiUpdate_pd_isRet; // @[NewFtq.scala 1083:29]
  assign io_toIfu_topdown_redirect_bits_cfiUpdate_br_hit = _fromBackendRedirect_bits_cfiUpdate_br_hit_T_1 |
    _fromBackendRedirect_bits_cfiUpdate_br_hit_T_4; // @[FTB.scala 203:66]
  assign io_toIfu_topdown_redirect_bits_cfiUpdate_jr_hit = ftb_entry_mem_io_rdata_1_isJalr &
    _fromBackendRedirect_bits_cfiUpdate_br_hit_T_2; // @[NewFtq.scala 900:51]
  assign io_toIfu_topdown_redirect_bits_cfiUpdate_sc_hit = fromBackendRedirect_bits_cfiUpdate_br_hit &
    _fromBackendRedirect_bits_cfiUpdate_sc_hit_T_1; // @[NewFtq.scala 901:58]
  assign io_toIfu_topdown_redirect_bits_debugIsCtrl = backendRedirectReg_bits_debugIsCtrl; // @[NewFtq.scala 1083:29]
  assign io_toIfu_topdown_redirect_bits_debugIsMemVio = backendRedirectReg_bits_debugIsMemVio; // @[NewFtq.scala 1083:29]
  assign io_toIfu_flushFromBpu_s2_valid = io_fromBpu_resp_bits_s2_valid_3 & io_fromBpu_resp_bits_s2_hasRedirect_3; // @[NewFtq.scala 529:46]
  assign io_toIfu_flushFromBpu_s2_bits_flag = io_fromBpu_resp_bits_s2_ftq_idx_flag; // @[NewFtq.scala 650:33]
  assign io_toIfu_flushFromBpu_s2_bits_value = io_fromBpu_resp_bits_s2_ftq_idx_value; // @[NewFtq.scala 650:33]
  assign io_toIfu_flushFromBpu_s3_valid = io_fromBpu_resp_bits_s3_valid_3 & io_fromBpu_resp_bits_s3_hasRedirect_3; // @[NewFtq.scala 530:46]
  assign io_toIfu_flushFromBpu_s3_bits_flag = io_fromBpu_resp_bits_s3_ftq_idx_flag; // @[NewFtq.scala 663:33]
  assign io_toIfu_flushFromBpu_s3_bits_value = io_fromBpu_resp_bits_s3_ftq_idx_value; // @[NewFtq.scala 663:33]
  assign io_toICache_req_valid = entry_is_to_send & _io_toIfu_req_valid_T_2; // @[NewFtq.scala 764:45]
  assign io_toICache_req_bits_pcMemRead_0_startAddr = copied_last_cycle_bpu_in_REG & _T_77 ?
    copied_bpu_in_bypass_buf_rstartAddr : _GEN_515; // @[NewFtq.scala 720:91 721:27]
  assign io_toICache_req_bits_pcMemRead_0_nextlineStart = copied_last_cycle_bpu_in_REG & _T_77 ?
    copied_bpu_in_bypass_buf_rnextLineAddr : _GEN_516; // @[NewFtq.scala 720:91 721:27]
  assign io_toICache_req_bits_pcMemRead_1_startAddr = copied_last_cycle_bpu_in_REG_1 & _T_81 ?
    copied_bpu_in_bypass_buf_r1_startAddr : _GEN_539; // @[NewFtq.scala 720:91 721:27]
  assign io_toICache_req_bits_pcMemRead_1_nextlineStart = copied_last_cycle_bpu_in_REG_1 & _T_81 ?
    copied_bpu_in_bypass_buf_r1_nextLineAddr : _GEN_540; // @[NewFtq.scala 720:91 721:27]
  assign io_toICache_req_bits_pcMemRead_2_startAddr = copied_last_cycle_bpu_in_REG_2 & _T_85 ?
    copied_bpu_in_bypass_buf_r2_startAddr : _GEN_563; // @[NewFtq.scala 720:91 721:27]
  assign io_toICache_req_bits_pcMemRead_2_nextlineStart = copied_last_cycle_bpu_in_REG_2 & _T_85 ?
    copied_bpu_in_bypass_buf_r2_nextLineAddr : _GEN_564; // @[NewFtq.scala 720:91 721:27]
  assign io_toICache_req_bits_readValid_0 = toICacheEntryToSend_0 & _io_toICache_req_bits_readValid_0_T_2; // @[NewFtq.scala 765:99]
  assign io_toICache_req_bits_readValid_1 = toICacheEntryToSend_1 & _io_toICache_req_bits_readValid_1_T_2; // @[NewFtq.scala 765:99]
  assign io_toICache_req_bits_readValid_2 = toICacheEntryToSend_2 & _io_toICache_req_bits_readValid_2_T_2; // @[NewFtq.scala 765:99]
  assign io_toBackend_pc_mem_wen = io_toBackend_pc_mem_wen_REG; // @[NewFtq.scala 876:29]
  assign io_toBackend_pc_mem_waddr = io_toBackend_pc_mem_waddr_REG; // @[NewFtq.scala 877:29]
  assign io_toBackend_pc_mem_wdata_startAddr = io_toBackend_pc_mem_wdata_REG_startAddr; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_nextLineAddr = io_toBackend_pc_mem_wdata_REG_nextLineAddr; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_0 = io_toBackend_pc_mem_wdata_REG_isNextMask_0; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_1 = io_toBackend_pc_mem_wdata_REG_isNextMask_1; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_2 = io_toBackend_pc_mem_wdata_REG_isNextMask_2; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_3 = io_toBackend_pc_mem_wdata_REG_isNextMask_3; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_4 = io_toBackend_pc_mem_wdata_REG_isNextMask_4; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_5 = io_toBackend_pc_mem_wdata_REG_isNextMask_5; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_6 = io_toBackend_pc_mem_wdata_REG_isNextMask_6; // @[NewFtq.scala 878:29]
  assign io_toBackend_pc_mem_wdata_isNextMask_7 = io_toBackend_pc_mem_wdata_REG_isNextMask_7; // @[NewFtq.scala 878:29]
  assign io_toBackend_newest_entry_target = io_toBackend_newest_entry_target_REG; // @[NewFtq.scala 632:36]
  assign io_toBackend_newest_entry_ptr_flag = io_toBackend_newest_entry_ptr_REG_flag; // @[NewFtq.scala 631:33]
  assign io_toBackend_newest_entry_ptr_value = io_toBackend_newest_entry_ptr_REG_value; // @[NewFtq.scala 631:33]
  assign io_toPrefetch_req_valid = _T_302 & prefetch_is_to_send; // @[NewFtq.scala 1275:55]
  assign io_toPrefetch_req_bits_target = last_cycle_bpu_in & _T_311 ? last_cycle_bpu_target : prefetch_addr_REG; // @[NewFtq.scala 1268:67 1270:21 1273:21]
  assign io_mmioCommitRead_mmioLastCommit = io_mmioCommitRead_mmioLastCommit_REG; // @[NewFtq.scala 1124:36]
  assign io_ControlBTBMissBubble = backendRedirectReg_bits_debugIsCtrl & _fromBackendRedirect_bits_cfiUpdate_shift_T_14
     & ~fromBackendRedirect_bits_cfiUpdate_jr_hit; // @[FrontendBundle.scala 669:73]
  assign io_TAGEMissBubble = backendRedirectReg_bits_debugIsCtrl & fromBackendRedirect_bits_cfiUpdate_br_hit & ~
    fromBackendRedirect_bits_cfiUpdate_sc_hit; // @[FrontendBundle.scala 670:66]
  assign io_SCMissBubble = _T_222 & fromBackendRedirect_bits_cfiUpdate_sc_hit; // @[FrontendBundle.scala 671:64]
  assign io_ITTAGEMissBubble = backendRedirectReg_bits_debugIsCtrl & fromBackendRedirect_bits_cfiUpdate_jr_hit & ~
    backendRedirectReg_bits_cfiUpdate_pd_isRet; // @[FrontendBundle.scala 672:68]
  assign io_RASMissBubble = _T_227 & backendRedirectReg_bits_cfiUpdate_pd_isRet; // @[FrontendBundle.scala 673:65]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = {{2'd0}, io_perf_8_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_9_value = {{2'd0}, io_perf_9_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_10_value = {{2'd0}, io_perf_10_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_11_value = {{2'd0}, io_perf_11_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_12_value = {{2'd0}, io_perf_12_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_13_value = {{2'd0}, io_perf_13_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_14_value = {{2'd0}, io_perf_14_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_15_value = {{2'd0}, io_perf_15_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_16_value = {{2'd0}, io_perf_16_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_17_value = {{2'd0}, io_perf_17_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_18_value = {{2'd0}, io_perf_18_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_19_value = {{2'd0}, io_perf_19_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_20_value = {{2'd0}, io_perf_20_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_21_value = {{2'd0}, io_perf_21_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_22_value = {{5'd0}, io_perf_22_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_23_value = {{5'd0}, io_perf_23_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign ftq_pc_mem_clock = clock;
  assign ftq_pc_mem_io_ifuPtr_wvalue = io_fromBackend_redirect_valid | fromIfuRedirect_valid ? next_value : _GEN_404; // @[NewFtq.scala 1053:51 1060:18]
  assign ftq_pc_mem_io_ifuPtrPlus1_wvalue = io_fromBackend_redirect_valid | fromIfuRedirect_valid ?
    ifuPtrPlus1_write_new_ptr_2_value : _GEN_406; // @[NewFtq.scala 1053:51 1062:23]
  assign ftq_pc_mem_io_ifuPtrPlus2_wvalue = io_fromBackend_redirect_valid | fromIfuRedirect_valid ?
    ifuPtrPlus2_write_new_ptr_3_value : _GEN_408; // @[NewFtq.scala 1053:51 1063:23]
  assign ftq_pc_mem_io_commPtr_wvalue = canCommit ? commPtrPlus1_value : commPtr_value; // @[NewFtq.scala 1146:20 1147:19]
  assign ftq_pc_mem_io_commPtrPlus1_wvalue = canCommit ? commPtrPlus1_write_new_ptr_value : commPtrPlus1_value; // @[NewFtq.scala 1146:20 1148:24]
  assign ftq_pc_mem_io_other_raddrs_0 = prefetchPtr_value; // @[NewFtq.scala 1253:35]
  assign ftq_pc_mem_io_wen = (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
  assign ftq_pc_mem_io_waddr = bpu_in_stage == 2'h0 ? bpuPtr_value : bpu_in_resp_ftq_idx_value; // @[NewFtq.scala 538:28]
  assign ftq_pc_mem_io_wdata_startAddr = bpu_s3_redirect ? io_fromBpu_resp_bits_s3_pc_3 : _bpu_in_resp_res_T_2_pc_3; // @[Mux.scala 47:70]
  assign ftq_pc_mem_io_wdata_nextLineAddr = bpu_in_resp_pc_3 + 39'h20; // @[NewFtq.scala 97:37]
  assign ftq_pc_mem_io_wdata_isNextMask_0 = _T_1[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_1 = _T_5[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_2 = _T_9[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_3 = _T_13[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_4 = _T_17[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_5 = _T_21[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_6 = _T_25[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_isNextMask_7 = _T_29[3]; // @[NewFtq.scala 99:53]
  assign ftq_pc_mem_io_wdata_fallThruError = bpu_in_resp_full_pred_3_hit & bpu_in_resp_full_pred_3_fallThroughErr; // @[FrontendBundle.scala 493:33]
  assign ftq_redirect_sram_clock = clock;
  assign ftq_redirect_sram_reset = reset;
  assign ftq_redirect_sram_io_raddr_0 = io_fromIfu_pdWb_bits_ftqIdx_value; // @[NewFtq.scala 942:35]
  assign ftq_redirect_sram_io_raddr_1 = io_fromBackend_redirect_bits_ftqIdx_value; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
  assign ftq_redirect_sram_io_raddr_2 = commPtr_value; // @[NewFtq.scala 1135:35]
  assign ftq_redirect_sram_io_ren_0 = io_fromIfu_pdWb_valid & io_fromIfu_pdWb_bits_misOffset_valid & ~backendFlush; // @[NewFtq.scala 921:68]
  assign ftq_redirect_sram_io_ren_1 = io_fromBackend_redirect_valid; // @[NewFtq.scala 480:29 963:25]
  assign ftq_redirect_sram_io_ren_2 = _canCommit_T_2 & ~may_have_stall_from_bpu & _canCommit_T_30; // @[NewFtq.scala 1116:65]
  assign ftq_redirect_sram_io_waddr = io_fromBpu_resp_bits_s3_ftq_idx_value; // @[NewFtq.scala 552:30]
  assign ftq_redirect_sram_io_wen = io_fromBpu_resp_bits_s3_valid_3; // @[NewFtq.scala 551:28]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_17_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_16_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_15_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_14_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_13_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_12_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_11_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_10_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_9_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_8_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_7_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_6_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_5_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_4_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_3_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_2_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_1_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_folded_hist_hist_0_folded_hist =
    io_fromBpu_resp_bits_last_stage_spec_info_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_0 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_0; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_1 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_1; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_2 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_2; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_5_bits_3 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_5_bits_3; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_0 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_0; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_1 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_1; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_2 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_2; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_4_bits_3 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_4_bits_3; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_0 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_0; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_1 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_1; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_2 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_2; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_3_bits_3 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_3_bits_3; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_0 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_0; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_1 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_1; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_2 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_2; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_2_bits_3 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_2_bits_3; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_0 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_0; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_1 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_1; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_2 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_2; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_1_bits_3 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_1_bits_3; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_0 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_0; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_1 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_1; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_2 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_2; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_afhob_afhob_0_bits_3 =
    io_fromBpu_resp_bits_last_stage_spec_info_afhob_afhob_0_bits_3; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_lastBrNumOH = io_fromBpu_resp_bits_last_stage_spec_info_lastBrNumOH; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_histPtr_flag = io_fromBpu_resp_bits_last_stage_spec_info_histPtr_flag; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_histPtr_value = io_fromBpu_resp_bits_last_stage_spec_info_histPtr_value; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_rasSp = io_fromBpu_resp_bits_last_stage_spec_info_rasSp; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_rasTop_retAddr = io_fromBpu_resp_bits_last_stage_spec_info_rasTop_retAddr; // @[NewFtq.scala 553:30]
  assign ftq_redirect_sram_io_wdata_rasTop_ctr = io_fromBpu_resp_bits_last_stage_spec_info_rasTop_ctr; // @[NewFtq.scala 553:30]
  assign ftq_meta_1r_sram_clock = clock;
  assign ftq_meta_1r_sram_reset = reset;
  assign ftq_meta_1r_sram_io_raddr_0 = commPtr_value; // @[NewFtq.scala 1138:32]
  assign ftq_meta_1r_sram_io_ren_0 = _canCommit_T_2 & ~may_have_stall_from_bpu & _canCommit_T_30; // @[NewFtq.scala 1116:65]
  assign ftq_meta_1r_sram_io_waddr = io_fromBpu_resp_bits_s3_ftq_idx_value; // @[NewFtq.scala 560:29]
  assign ftq_meta_1r_sram_io_wen = io_fromBpu_resp_bits_s3_valid_3; // @[NewFtq.scala 559:27]
  assign ftq_meta_1r_sram_io_wdata_meta = io_fromBpu_resp_bits_last_stage_meta; // @[NewFtq.scala 561:34]
  assign ftb_entry_mem_clock = clock;
  assign ftb_entry_mem_io_raddr_0 = io_fromIfu_pdWb_bits_ftqIdx_value; // @[NewFtq.scala 944:31]
  assign ftb_entry_mem_io_raddr_1 = io_fromBackend_redirect_bits_ftqIdx_value; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
  assign ftb_entry_mem_io_raddr_2 = commPtr_value; // @[NewFtq.scala 1140:31]
  assign ftb_entry_mem_io_wen_0 = io_fromBpu_resp_bits_s3_valid_3; // @[NewFtq.scala 564:27]
  assign ftb_entry_mem_io_waddr_0 = io_fromBpu_resp_bits_s3_ftq_idx_value; // @[NewFtq.scala 565:29]
  assign ftb_entry_mem_io_wdata_0_valid = io_fromBpu_resp_bits_last_stage_ftb_entry_valid; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_brSlots_0_offset = io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_offset; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_brSlots_0_lower = io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_lower; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_brSlots_0_tarStat = io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_tarStat; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_brSlots_0_sharing = io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_sharing; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_brSlots_0_valid = io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_valid; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_brSlots_0_sc = io_fromBpu_resp_bits_last_stage_ftb_entry_brSlots_0_sc; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_tailSlot_offset = io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_offset; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_tailSlot_lower = io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_lower; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_tailSlot_tarStat = io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_tarStat; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_tailSlot_sharing = io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_sharing; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_tailSlot_valid = io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_valid; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_tailSlot_sc = io_fromBpu_resp_bits_last_stage_ftb_entry_tailSlot_sc; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_pftAddr = io_fromBpu_resp_bits_last_stage_ftb_entry_pftAddr; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_carry = io_fromBpu_resp_bits_last_stage_ftb_entry_carry; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_isCall = io_fromBpu_resp_bits_last_stage_ftb_entry_isCall; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_isRet = io_fromBpu_resp_bits_last_stage_ftb_entry_isRet; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_isJalr = io_fromBpu_resp_bits_last_stage_ftb_entry_isJalr; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_last_may_be_rvi_call = io_fromBpu_resp_bits_last_stage_ftb_entry_last_may_be_rvi_call; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_always_taken_0 = io_fromBpu_resp_bits_last_stage_ftb_entry_always_taken_0; // @[NewFtq.scala 566:29]
  assign ftb_entry_mem_io_wdata_0_always_taken_1 = io_fromBpu_resp_bits_last_stage_ftb_entry_always_taken_1; // @[NewFtq.scala 566:29]
  assign ftq_pd_mem_clock = clock;
  assign ftq_pd_mem_io_raddr_0 = commPtr_value; // @[NewFtq.scala 1132:28]
  assign ftq_pd_mem_io_wen_0 = io_fromIfu_pdWb_valid; // @[NewFtq.scala 809:24]
  assign ftq_pd_mem_io_waddr_0 = io_fromIfu_pdWb_bits_ftqIdx_value; // @[NewFtq.scala 810:26]
  assign ftq_pd_mem_io_wdata_0_brMask_0 = _T_135 & io_fromIfu_pdWb_bits_pd_0_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_1 = _T_137 & io_fromIfu_pdWb_bits_pd_1_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_2 = _T_139 & io_fromIfu_pdWb_bits_pd_2_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_3 = _T_141 & io_fromIfu_pdWb_bits_pd_3_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_4 = _T_143 & io_fromIfu_pdWb_bits_pd_4_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_5 = _T_145 & io_fromIfu_pdWb_bits_pd_5_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_6 = _T_147 & io_fromIfu_pdWb_bits_pd_6_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_brMask_7 = _T_149 & io_fromIfu_pdWb_bits_pd_7_valid; // @[NewFtq.scala 122:50]
  assign ftq_pd_mem_io_wdata_0_jmpInfo_valid = |_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_32; // @[NewFtq.scala 123:94]
  assign ftq_pd_mem_io_wdata_0_jmpInfo_bits_0 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 | (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_15) ? _T_196_0 : _T_202_0; // @[ParallelMux.scala 90:77]
  assign ftq_pd_mem_io_wdata_0_jmpInfo_bits_1 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 | (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_15) ? _T_196_1 : _T_202_1; // @[ParallelMux.scala 90:77]
  assign ftq_pd_mem_io_wdata_0_jmpInfo_bits_2 = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 | (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_15) ? _T_196_2 : _T_202_2; // @[ParallelMux.scala 90:77]
  assign ftq_pd_mem_io_wdata_0_jmpOffset = _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_3 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_7 | (_ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_11 |
    _ftq_pd_mem_io_wdata_0_jmpInfo_valid_T_15) ? {{1'd0}, _ftq_pd_mem_io_wdata_0_jmpOffset_T_37} :
    _ftq_pd_mem_io_wdata_0_jmpOffset_T_43; // @[ParallelMux.scala 90:77]
  assign ftq_pd_mem_io_wdata_0_jalTarget = io_fromIfu_pdWb_bits_jalTarget; // @[NewFtq.scala 128:20]
  assign ftq_pd_mem_io_wdata_0_rvcMask_0 = io_fromIfu_pdWb_bits_pd_0_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_1 = io_fromIfu_pdWb_bits_pd_1_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_2 = io_fromIfu_pdWb_bits_pd_2_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_3 = io_fromIfu_pdWb_bits_pd_3_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_4 = io_fromIfu_pdWb_bits_pd_4_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_5 = io_fromIfu_pdWb_bits_pd_5_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_6 = io_fromIfu_pdWb_bits_pd_6_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign ftq_pd_mem_io_wdata_0_rvcMask_7 = io_fromIfu_pdWb_bits_pd_7_isRVC; // @[NewFtq.scala 127:{28,28}]
  assign FTBEntryGen_io_start_addr = commit_pc_bundle_startAddr; // @[NewFtq.scala 1207:30]
  assign FTBEntryGen_io_old_entry_valid = ftb_entry_mem_io_rdata_2_valid; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_brSlots_0_offset = ftb_entry_mem_io_rdata_2_brSlots_0_offset; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_brSlots_0_lower = ftb_entry_mem_io_rdata_2_brSlots_0_lower; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_brSlots_0_tarStat = ftb_entry_mem_io_rdata_2_brSlots_0_tarStat; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_brSlots_0_sharing = ftb_entry_mem_io_rdata_2_brSlots_0_sharing; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_brSlots_0_valid = ftb_entry_mem_io_rdata_2_brSlots_0_valid; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_brSlots_0_sc = ftb_entry_mem_io_rdata_2_brSlots_0_sc; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_tailSlot_offset = ftb_entry_mem_io_rdata_2_tailSlot_offset; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_tailSlot_lower = ftb_entry_mem_io_rdata_2_tailSlot_lower; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_tailSlot_tarStat = ftb_entry_mem_io_rdata_2_tailSlot_tarStat; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_tailSlot_sharing = ftb_entry_mem_io_rdata_2_tailSlot_sharing; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_tailSlot_valid = ftb_entry_mem_io_rdata_2_tailSlot_valid; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_tailSlot_sc = ftb_entry_mem_io_rdata_2_tailSlot_sc; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_pftAddr = ftb_entry_mem_io_rdata_2_pftAddr; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_carry = ftb_entry_mem_io_rdata_2_carry; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_isCall = ftb_entry_mem_io_rdata_2_isCall; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_isRet = ftb_entry_mem_io_rdata_2_isRet; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_isJalr = ftb_entry_mem_io_rdata_2_isJalr; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_last_may_be_rvi_call = ftb_entry_mem_io_rdata_2_last_may_be_rvi_call; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_always_taken_0 = ftb_entry_mem_io_rdata_2_always_taken_0; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_old_entry_always_taken_1 = ftb_entry_mem_io_rdata_2_always_taken_1; // @[NewFtq.scala 1208:30]
  assign FTBEntryGen_io_pd_brMask_0 = ftq_pd_mem_io_rdata_0_brMask_0; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_1 = ftq_pd_mem_io_rdata_0_brMask_1; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_2 = ftq_pd_mem_io_rdata_0_brMask_2; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_3 = ftq_pd_mem_io_rdata_0_brMask_3; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_4 = ftq_pd_mem_io_rdata_0_brMask_4; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_5 = ftq_pd_mem_io_rdata_0_brMask_5; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_6 = ftq_pd_mem_io_rdata_0_brMask_6; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_brMask_7 = ftq_pd_mem_io_rdata_0_brMask_7; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_jmpInfo_valid = ftq_pd_mem_io_rdata_0_jmpInfo_valid; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_jmpInfo_bits_0 = ftq_pd_mem_io_rdata_0_jmpInfo_bits_0; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_jmpInfo_bits_1 = ftq_pd_mem_io_rdata_0_jmpInfo_bits_1; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_jmpInfo_bits_2 = ftq_pd_mem_io_rdata_0_jmpInfo_bits_2; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_jmpOffset = ftq_pd_mem_io_rdata_0_jmpOffset; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_jalTarget = ftq_pd_mem_io_rdata_0_jalTarget; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_0 = ftq_pd_mem_io_rdata_0_rvcMask_0; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_1 = ftq_pd_mem_io_rdata_0_rvcMask_1; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_2 = ftq_pd_mem_io_rdata_0_rvcMask_2; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_3 = ftq_pd_mem_io_rdata_0_rvcMask_3; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_4 = ftq_pd_mem_io_rdata_0_rvcMask_4; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_5 = ftq_pd_mem_io_rdata_0_rvcMask_5; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_6 = ftq_pd_mem_io_rdata_0_rvcMask_6; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_pd_rvcMask_7 = ftq_pd_mem_io_rdata_0_rvcMask_7; // @[NewFtq.scala 1209:30]
  assign FTBEntryGen_io_cfiIndex_valid = commit_cfi_valid; // @[NewFtq.scala 1210:30]
  assign FTBEntryGen_io_cfiIndex_bits = commit_cfi_bits; // @[NewFtq.scala 1210:30]
  assign FTBEntryGen_io_target = commit_target_REG ? commit_target_REG_1 : commit_target_REG_2; // @[NewFtq.scala 1129:8]
  assign FTBEntryGen_io_hit = commit_hit == 2'h2; // @[NewFtq.scala 1203:36]
  assign FTBEntryGen_io_mispredict_vec_0 = commit_mispredict_REG_0 & commit_state_0 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_1 = commit_mispredict_REG_1 & commit_state_1 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_2 = commit_mispredict_REG_2 & commit_state_2 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_3 = commit_mispredict_REG_3 & commit_state_3 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_4 = commit_mispredict_REG_4 & commit_state_4 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_5 = commit_mispredict_REG_5 & commit_state_5 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_6 = commit_mispredict_REG_6 & commit_state_6 == 2'h2; // @[NewFtq.scala 1161:30]
  assign FTBEntryGen_io_mispredict_vec_7 = commit_mispredict_REG_7 & commit_state_7 == 2'h2; // @[NewFtq.scala 1161:30]
  always @(posedge clock) begin
    backendRedirectReg_valid <= io_fromBackend_redirect_valid; // @[NewFtq.scala 480:29 963:25]
    backendRedirectReg_bits_ftqIdx_flag <= io_fromBackend_redirect_bits_ftqIdx_flag; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_ftqIdx_value <= io_fromBackend_redirect_bits_ftqIdx_value; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_ftqOffset <= io_fromBackend_redirect_bits_ftqOffset; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_level <= io_fromBackend_redirect_bits_level; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_pc <= io_fromBackend_redirect_bits_cfiUpdate_pc; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_pd_isRVC <= io_fromBackend_redirect_bits_cfiUpdate_pd_isRVC; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_pd_brType <= io_fromBackend_redirect_bits_cfiUpdate_pd_brType; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_pd_isCall <= io_fromBackend_redirect_bits_cfiUpdate_pd_isCall; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_pd_isRet <= io_fromBackend_redirect_bits_cfiUpdate_pd_isRet; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_target <= io_fromBackend_redirect_bits_cfiUpdate_target; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_taken <= io_fromBackend_redirect_bits_cfiUpdate_taken; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_cfiUpdate_isMisPred <= io_fromBackend_redirect_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_debugIsCtrl <= io_fromBackend_redirect_bits_debugIsCtrl; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendRedirectReg_bits_debugIsMemVio <= io_fromBackend_redirect_bits_debugIsMemVio; // @[NewFtq.scala 480:29 FrontendBundle.scala 680:14]
    backendFlush_REG <= io_fromBackend_redirect_valid; // @[NewFtq.scala 480:29 963:25]
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      newest_entry_target <= backendRedirectReg_bits_cfiUpdate_target; // @[NewFtq.scala 994:25]
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (ifuRedirectReg_bits_cfiUpdate_pd_isRet) begin // @[NewFtq.scala 948:49]
        newest_entry_target <= ifuRedirectToBpu_bits_cfiUpdate_rasEntry_retAddr; // @[NewFtq.scala 949:21]
      end else begin
        newest_entry_target <= ifuRedirectReg_bits_cfiUpdate_target;
      end
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 600:28]
      newest_entry_target <= last_cycle_bpu_target; // @[NewFtq.scala 606:25]
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      newest_entry_ptr_flag <= backendRedirectReg_bits_ftqIdx_flag; // @[NewFtq.scala 995:22]
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      newest_entry_ptr_flag <= ifuRedirectReg_bits_ftqIdx_flag; // @[NewFtq.scala 995:22]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 600:28]
      newest_entry_ptr_flag <= last_cycle_bpu_in_ptr_flag; // @[NewFtq.scala 607:22]
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      newest_entry_ptr_value <= backendRedirectReg_bits_ftqIdx_value; // @[NewFtq.scala 995:22]
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      newest_entry_ptr_value <= ifuRedirectReg_bits_ftqIdx_value; // @[NewFtq.scala 995:22]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 600:28]
      newest_entry_ptr_value <= last_cycle_bpu_in_ptr_value; // @[NewFtq.scala 607:22]
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h0 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_0_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_0_valid <= _GEN_48;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h0 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_0_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_0_valid <= _GEN_48;
        end
      end else begin
        cfiIndex_vec_0_valid <= _GEN_48;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h0 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_0_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_0_valid <= _GEN_48;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_0_valid <= _GEN_1265;
      end else begin
        cfiIndex_vec_0_valid <= _GEN_48;
      end
    end else begin
      cfiIndex_vec_0_valid <= _GEN_48;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h0 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_0_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_0_bits <= _GEN_56;
        end
      end else begin
        cfiIndex_vec_0_bits <= _GEN_56;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h0 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_0_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_0_bits <= _GEN_56;
        end
      end else begin
        cfiIndex_vec_0_bits <= _GEN_56;
      end
    end else begin
      cfiIndex_vec_0_bits <= _GEN_56;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h1 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_1_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_1_valid <= _GEN_49;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h1 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_1_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_1_valid <= _GEN_49;
        end
      end else begin
        cfiIndex_vec_1_valid <= _GEN_49;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h1 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_1_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_1_valid <= _GEN_49;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_1_valid <= _GEN_1266;
      end else begin
        cfiIndex_vec_1_valid <= _GEN_49;
      end
    end else begin
      cfiIndex_vec_1_valid <= _GEN_49;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h1 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_1_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_1_bits <= _GEN_57;
        end
      end else begin
        cfiIndex_vec_1_bits <= _GEN_57;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h1 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_1_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_1_bits <= _GEN_57;
        end
      end else begin
        cfiIndex_vec_1_bits <= _GEN_57;
      end
    end else begin
      cfiIndex_vec_1_bits <= _GEN_57;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h2 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_2_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_2_valid <= _GEN_50;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h2 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_2_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_2_valid <= _GEN_50;
        end
      end else begin
        cfiIndex_vec_2_valid <= _GEN_50;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h2 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_2_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_2_valid <= _GEN_50;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_2_valid <= _GEN_1267;
      end else begin
        cfiIndex_vec_2_valid <= _GEN_50;
      end
    end else begin
      cfiIndex_vec_2_valid <= _GEN_50;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h2 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_2_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_2_bits <= _GEN_58;
        end
      end else begin
        cfiIndex_vec_2_bits <= _GEN_58;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h2 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_2_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_2_bits <= _GEN_58;
        end
      end else begin
        cfiIndex_vec_2_bits <= _GEN_58;
      end
    end else begin
      cfiIndex_vec_2_bits <= _GEN_58;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h3 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_3_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_3_valid <= _GEN_51;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h3 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_3_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_3_valid <= _GEN_51;
        end
      end else begin
        cfiIndex_vec_3_valid <= _GEN_51;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h3 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_3_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_3_valid <= _GEN_51;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_3_valid <= _GEN_1268;
      end else begin
        cfiIndex_vec_3_valid <= _GEN_51;
      end
    end else begin
      cfiIndex_vec_3_valid <= _GEN_51;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h3 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_3_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_3_bits <= _GEN_59;
        end
      end else begin
        cfiIndex_vec_3_bits <= _GEN_59;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h3 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_3_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_3_bits <= _GEN_59;
        end
      end else begin
        cfiIndex_vec_3_bits <= _GEN_59;
      end
    end else begin
      cfiIndex_vec_3_bits <= _GEN_59;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h4 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_4_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_4_valid <= _GEN_52;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h4 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_4_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_4_valid <= _GEN_52;
        end
      end else begin
        cfiIndex_vec_4_valid <= _GEN_52;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h4 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_4_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_4_valid <= _GEN_52;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_4_valid <= _GEN_1269;
      end else begin
        cfiIndex_vec_4_valid <= _GEN_52;
      end
    end else begin
      cfiIndex_vec_4_valid <= _GEN_52;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h4 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_4_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_4_bits <= _GEN_60;
        end
      end else begin
        cfiIndex_vec_4_bits <= _GEN_60;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h4 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_4_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_4_bits <= _GEN_60;
        end
      end else begin
        cfiIndex_vec_4_bits <= _GEN_60;
      end
    end else begin
      cfiIndex_vec_4_bits <= _GEN_60;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h5 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_5_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_5_valid <= _GEN_53;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h5 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_5_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_5_valid <= _GEN_53;
        end
      end else begin
        cfiIndex_vec_5_valid <= _GEN_53;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h5 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_5_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_5_valid <= _GEN_53;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_5_valid <= _GEN_1270;
      end else begin
        cfiIndex_vec_5_valid <= _GEN_53;
      end
    end else begin
      cfiIndex_vec_5_valid <= _GEN_53;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h5 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_5_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_5_bits <= _GEN_61;
        end
      end else begin
        cfiIndex_vec_5_bits <= _GEN_61;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h5 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_5_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_5_bits <= _GEN_61;
        end
      end else begin
        cfiIndex_vec_5_bits <= _GEN_61;
      end
    end else begin
      cfiIndex_vec_5_bits <= _GEN_61;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h6 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_6_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_6_valid <= _GEN_54;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h6 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_6_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_6_valid <= _GEN_54;
        end
      end else begin
        cfiIndex_vec_6_valid <= _GEN_54;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h6 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_6_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_6_valid <= _GEN_54;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_6_valid <= _GEN_1271;
      end else begin
        cfiIndex_vec_6_valid <= _GEN_54;
      end
    end else begin
      cfiIndex_vec_6_valid <= _GEN_54;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h6 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_6_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_6_bits <= _GEN_62;
        end
      end else begin
        cfiIndex_vec_6_bits <= _GEN_62;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h6 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_6_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_6_bits <= _GEN_62;
        end
      end else begin
        cfiIndex_vec_6_bits <= _GEN_62;
      end
    end else begin
      cfiIndex_vec_6_bits <= _GEN_62;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen | cfiIndex_valid_wen) begin // @[NewFtq.scala 986:52]
        if (3'h7 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_7_valid <= cfiIndex_bits_wen | cfiIndex_valid_wen & backendRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_7_valid <= _GEN_55;
        end
      end else if (backendRedirectReg_valid & ~backendRedirectReg_bits_cfiUpdate_taken &
        backendRedirectReg_bits_ftqOffset != _GEN_1128) begin // @[NewFtq.scala 988:80]
        if (3'h7 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 989:33]
          cfiIndex_vec_7_valid <= 1'h0; // @[NewFtq.scala 989:33]
        end else begin
          cfiIndex_vec_7_valid <= _GEN_55;
        end
      end else begin
        cfiIndex_vec_7_valid <= _GEN_55;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1) begin // @[NewFtq.scala 986:52]
        if (3'h7 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 987:33]
          cfiIndex_vec_7_valid <= cfiIndex_bits_wen_1 | cfiIndex_valid_wen_1 & ifuRedirectReg_bits_cfiUpdate_taken; // @[NewFtq.scala 987:33]
        end else begin
          cfiIndex_vec_7_valid <= _GEN_55;
        end
      end else if (ifuRedirectReg_valid & ~ifuRedirectReg_bits_cfiUpdate_taken & ifuRedirectReg_bits_ftqOffset !=
        _GEN_1256) begin // @[NewFtq.scala 988:80]
        cfiIndex_vec_7_valid <= _GEN_1272;
      end else begin
        cfiIndex_vec_7_valid <= _GEN_55;
      end
    end else begin
      cfiIndex_vec_7_valid <= _GEN_55;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (cfiIndex_bits_wen) begin // @[NewFtq.scala 991:30]
        if (3'h7 == backendRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_7_bits <= backendRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_7_bits <= _GEN_63;
        end
      end else begin
        cfiIndex_vec_7_bits <= _GEN_63;
      end
    end else if (ifuRedirectReg_valid) begin // @[NewFtq.scala 1004:39]
      if (cfiIndex_bits_wen_1) begin // @[NewFtq.scala 991:30]
        if (3'h7 == ifuRedirectReg_bits_ftqIdx_value) begin // @[NewFtq.scala 992:32]
          cfiIndex_vec_7_bits <= ifuRedirectReg_bits_ftqOffset; // @[NewFtq.scala 992:32]
        end else begin
          cfiIndex_vec_7_bits <= _GEN_63;
        end
      end else begin
        cfiIndex_vec_7_bits <= _GEN_63;
      end
    end else begin
      cfiIndex_vec_7_bits <= _GEN_63;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_0 <= _GEN_147;
      end
    end else begin
      mispredict_vec_0_0 <= _GEN_147;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_1 <= _GEN_155;
      end
    end else begin
      mispredict_vec_0_1 <= _GEN_155;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_2 <= _GEN_163;
      end
    end else begin
      mispredict_vec_0_2 <= _GEN_163;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_3 <= _GEN_171;
      end
    end else begin
      mispredict_vec_0_3 <= _GEN_171;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_4 <= _GEN_179;
      end
    end else begin
      mispredict_vec_0_4 <= _GEN_179;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_5 <= _GEN_187;
      end
    end else begin
      mispredict_vec_0_5 <= _GEN_187;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_6 <= _GEN_195;
      end
    end else begin
      mispredict_vec_0_6 <= _GEN_195;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h0 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_0_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_0_7 <= _GEN_203;
      end
    end else begin
      mispredict_vec_0_7 <= _GEN_203;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_0 <= _GEN_148;
      end
    end else begin
      mispredict_vec_1_0 <= _GEN_148;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_1 <= _GEN_156;
      end
    end else begin
      mispredict_vec_1_1 <= _GEN_156;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_2 <= _GEN_164;
      end
    end else begin
      mispredict_vec_1_2 <= _GEN_164;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_3 <= _GEN_172;
      end
    end else begin
      mispredict_vec_1_3 <= _GEN_172;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_4 <= _GEN_180;
      end
    end else begin
      mispredict_vec_1_4 <= _GEN_180;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_5 <= _GEN_188;
      end
    end else begin
      mispredict_vec_1_5 <= _GEN_188;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_6 <= _GEN_196;
      end
    end else begin
      mispredict_vec_1_6 <= _GEN_196;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h1 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_1_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_1_7 <= _GEN_204;
      end
    end else begin
      mispredict_vec_1_7 <= _GEN_204;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_0 <= _GEN_149;
      end
    end else begin
      mispredict_vec_2_0 <= _GEN_149;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_1 <= _GEN_157;
      end
    end else begin
      mispredict_vec_2_1 <= _GEN_157;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_2 <= _GEN_165;
      end
    end else begin
      mispredict_vec_2_2 <= _GEN_165;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_3 <= _GEN_173;
      end
    end else begin
      mispredict_vec_2_3 <= _GEN_173;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_4 <= _GEN_181;
      end
    end else begin
      mispredict_vec_2_4 <= _GEN_181;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_5 <= _GEN_189;
      end
    end else begin
      mispredict_vec_2_5 <= _GEN_189;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_6 <= _GEN_197;
      end
    end else begin
      mispredict_vec_2_6 <= _GEN_197;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h2 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_2_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_2_7 <= _GEN_205;
      end
    end else begin
      mispredict_vec_2_7 <= _GEN_205;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_0 <= _GEN_150;
      end
    end else begin
      mispredict_vec_3_0 <= _GEN_150;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_1 <= _GEN_158;
      end
    end else begin
      mispredict_vec_3_1 <= _GEN_158;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_2 <= _GEN_166;
      end
    end else begin
      mispredict_vec_3_2 <= _GEN_166;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_3 <= _GEN_174;
      end
    end else begin
      mispredict_vec_3_3 <= _GEN_174;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_4 <= _GEN_182;
      end
    end else begin
      mispredict_vec_3_4 <= _GEN_182;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_5 <= _GEN_190;
      end
    end else begin
      mispredict_vec_3_5 <= _GEN_190;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_6 <= _GEN_198;
      end
    end else begin
      mispredict_vec_3_6 <= _GEN_198;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h3 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_3_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_3_7 <= _GEN_206;
      end
    end else begin
      mispredict_vec_3_7 <= _GEN_206;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_0 <= _GEN_151;
      end
    end else begin
      mispredict_vec_4_0 <= _GEN_151;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_1 <= _GEN_159;
      end
    end else begin
      mispredict_vec_4_1 <= _GEN_159;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_2 <= _GEN_167;
      end
    end else begin
      mispredict_vec_4_2 <= _GEN_167;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_3 <= _GEN_175;
      end
    end else begin
      mispredict_vec_4_3 <= _GEN_175;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_4 <= _GEN_183;
      end
    end else begin
      mispredict_vec_4_4 <= _GEN_183;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_5 <= _GEN_191;
      end
    end else begin
      mispredict_vec_4_5 <= _GEN_191;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_6 <= _GEN_199;
      end
    end else begin
      mispredict_vec_4_6 <= _GEN_199;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h4 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_4_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_4_7 <= _GEN_207;
      end
    end else begin
      mispredict_vec_4_7 <= _GEN_207;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_0 <= _GEN_152;
      end
    end else begin
      mispredict_vec_5_0 <= _GEN_152;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_1 <= _GEN_160;
      end
    end else begin
      mispredict_vec_5_1 <= _GEN_160;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_2 <= _GEN_168;
      end
    end else begin
      mispredict_vec_5_2 <= _GEN_168;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_3 <= _GEN_176;
      end
    end else begin
      mispredict_vec_5_3 <= _GEN_176;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_4 <= _GEN_184;
      end
    end else begin
      mispredict_vec_5_4 <= _GEN_184;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_5 <= _GEN_192;
      end
    end else begin
      mispredict_vec_5_5 <= _GEN_192;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_6 <= _GEN_200;
      end
    end else begin
      mispredict_vec_5_6 <= _GEN_200;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h5 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_5_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_5_7 <= _GEN_208;
      end
    end else begin
      mispredict_vec_5_7 <= _GEN_208;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_0 <= _GEN_153;
      end
    end else begin
      mispredict_vec_6_0 <= _GEN_153;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_1 <= _GEN_161;
      end
    end else begin
      mispredict_vec_6_1 <= _GEN_161;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_2 <= _GEN_169;
      end
    end else begin
      mispredict_vec_6_2 <= _GEN_169;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_3 <= _GEN_177;
      end
    end else begin
      mispredict_vec_6_3 <= _GEN_177;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_4 <= _GEN_185;
      end
    end else begin
      mispredict_vec_6_4 <= _GEN_185;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_5 <= _GEN_193;
      end
    end else begin
      mispredict_vec_6_5 <= _GEN_193;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_6 <= _GEN_201;
      end
    end else begin
      mispredict_vec_6_6 <= _GEN_201;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h6 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_6_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_6_7 <= _GEN_209;
      end
    end else begin
      mispredict_vec_6_7 <= _GEN_209;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h0 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_0 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_0 <= _GEN_154;
      end
    end else begin
      mispredict_vec_7_0 <= _GEN_154;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h1 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_1 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_1 <= _GEN_162;
      end
    end else begin
      mispredict_vec_7_1 <= _GEN_162;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h2 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_2 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_2 <= _GEN_170;
      end
    end else begin
      mispredict_vec_7_2 <= _GEN_170;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h3 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_3 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_3 <= _GEN_178;
      end
    end else begin
      mispredict_vec_7_3 <= _GEN_178;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h4 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_4 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_4 <= _GEN_186;
      end
    end else begin
      mispredict_vec_7_4 <= _GEN_186;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h5 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_5 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_5 <= _GEN_194;
      end
    end else begin
      mispredict_vec_7_5 <= _GEN_194;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h6 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_6 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_6 <= _GEN_202;
      end
    end else begin
      mispredict_vec_7_6 <= _GEN_202;
    end
    if (backendRedirectReg_valid) begin // @[NewFtq.scala 1002:34]
      if (3'h7 == backendRedirectReg_bits_ftqIdx_value & 3'h7 == backendRedirectReg_bits_ftqOffset) begin // @[NewFtq.scala 998:39]
        mispredict_vec_7_7 <= backendRedirectReg_bits_cfiUpdate_isMisPred; // @[NewFtq.scala 998:39]
      end else begin
        mispredict_vec_7_7 <= _GEN_210;
      end
    end else begin
      mispredict_vec_7_7 <= _GEN_210;
    end
    last_cycle_bpu_in <= (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      last_cycle_bpu_in_ptr_flag <= bpuPtr_flag;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      last_cycle_bpu_in_ptr_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
    end else begin
      last_cycle_bpu_in_ptr_flag <= bpu_s2_redirect & io_fromBpu_resp_bits_s2_ftq_idx_flag;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      last_cycle_bpu_in_ptr_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      last_cycle_bpu_in_ptr_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      last_cycle_bpu_in_ptr_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      last_cycle_bpu_in_ptr_value <= 3'h0;
    end
    last_cycle_bpu_target <= _last_cycle_bpu_target_T_26 | _last_cycle_bpu_target_T_24; // @[Mux.scala 27:73]
    last_cycle_cfiIndex_valid <= |_last_cycle_cfiIndex_cfiIndex_valid_T_34; // @[FrontendBundle.scala 504:53]
    last_cycle_cfiIndex_bits <= _last_cycle_cfiIndex_cfiIndex_bits_T_74 | _last_cycle_cfiIndex_cfiIndex_bits_T_86; // @[FrontendBundle.scala 507:60]
    copied_last_cycle_bpu_in_REG <= (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
    copied_last_cycle_bpu_in_REG_1 <= (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
    copied_last_cycle_bpu_in_REG_2 <= (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
    copied_last_cycle_bpu_in_REG_5 <= (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
    copied_last_cycle_bpu_in_REG_6 <= (_enq_fire_T | bpu_s2_redirect | bpu_s3_redirect) & allowToIfu; // @[NewFtq.scala 534:84]
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_value <= 3'h0;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value <= 3'h0;
    end
    REG <= last_cycle_bpu_in; // @[NewFtq.scala 611:16]
    REG_1 <= last_cycle_bpu_in_ptr_value; // @[NewFtq.scala 612:27]
    io_toBackend_newest_entry_ptr_REG_flag <= newest_entry_ptr_flag; // @[NewFtq.scala 631:43]
    io_toBackend_newest_entry_ptr_REG_value <= newest_entry_ptr_value; // @[NewFtq.scala 631:43]
    io_toBackend_newest_entry_target_REG <= newest_entry_target; // @[NewFtq.scala 632:46]
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_startAddr <= ftq_pc_mem_io_wdata_startAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_nextLineAddr <= ftq_pc_mem_io_wdata_nextLineAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_0 <= ftq_pc_mem_io_wdata_isNextMask_0; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_1 <= ftq_pc_mem_io_wdata_isNextMask_1; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_2 <= ftq_pc_mem_io_wdata_isNextMask_2; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_3 <= ftq_pc_mem_io_wdata_isNextMask_3; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_4 <= ftq_pc_mem_io_wdata_isNextMask_4; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_5 <= ftq_pc_mem_io_wdata_isNextMask_5; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_6 <= ftq_pc_mem_io_wdata_isNextMask_6; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_isNextMask_7 <= ftq_pc_mem_io_wdata_isNextMask_7; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      bpu_in_bypass_buf_fallThruError <= ftq_pc_mem_io_wdata_fallThruError; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      copied_bpu_in_bypass_buf_rstartAddr <= ftq_pc_mem_io_wdata_startAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      copied_bpu_in_bypass_buf_rnextLineAddr <= ftq_pc_mem_io_wdata_nextLineAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      copied_bpu_in_bypass_buf_r1_startAddr <= ftq_pc_mem_io_wdata_startAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      copied_bpu_in_bypass_buf_r1_nextLineAddr <= ftq_pc_mem_io_wdata_nextLineAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      copied_bpu_in_bypass_buf_r2_startAddr <= ftq_pc_mem_io_wdata_startAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_fire) begin // @[Reg.scala 17:18]
      copied_bpu_in_bypass_buf_r2_nextLineAddr <= ftq_pc_mem_io_wdata_nextLineAddr; // @[Reg.scala 17:22]
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      bpu_in_bypass_ptr_flag <= bpuPtr_flag;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      bpu_in_bypass_ptr_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
    end else begin
      bpu_in_bypass_ptr_flag <= bpu_s2_redirect & io_fromBpu_resp_bits_s2_ftq_idx_flag;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      bpu_in_bypass_ptr_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      bpu_in_bypass_ptr_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      bpu_in_bypass_ptr_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      bpu_in_bypass_ptr_value <= 3'h0;
    end
    last_cycle_to_ifu_fire <= io_toIfu_req_ready & io_toIfu_req_valid; // @[Decoupled.scala 50:35]
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_bpu_in_bypass_ptr_REG_flag <= bpuPtr_flag;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
    end else begin
      copied_bpu_in_bypass_ptr_REG_flag <= bpu_s2_redirect & io_fromBpu_resp_bits_s2_ftq_idx_flag;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_bpu_in_bypass_ptr_REG_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      copied_bpu_in_bypass_ptr_REG_value <= 3'h0;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_bpu_in_bypass_ptr_REG_1_flag <= bpuPtr_flag;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_1_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
    end else begin
      copied_bpu_in_bypass_ptr_REG_1_flag <= bpu_s2_redirect & io_fromBpu_resp_bits_s2_ftq_idx_flag;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_bpu_in_bypass_ptr_REG_1_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_1_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_1_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      copied_bpu_in_bypass_ptr_REG_1_value <= 3'h0;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_bpu_in_bypass_ptr_REG_2_flag <= bpuPtr_flag;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_2_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
    end else begin
      copied_bpu_in_bypass_ptr_REG_2_flag <= bpu_s2_redirect & io_fromBpu_resp_bits_s2_ftq_idx_flag;
    end
    if (bpu_in_stage == 2'h0) begin // @[NewFtq.scala 538:28]
      copied_bpu_in_bypass_ptr_REG_2_value <= bpuPtr_value;
    end else if (bpu_s3_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_2_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
    end else if (bpu_s2_redirect) begin // @[Mux.scala 47:70]
      copied_bpu_in_bypass_ptr_REG_2_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else begin
      copied_bpu_in_bypass_ptr_REG_2_value <= 3'h0;
    end
    copied_last_cycle_to_ifu_fire_REG <= io_toIfu_req_ready & io_toIfu_req_valid; // @[Decoupled.scala 50:35]
    copied_last_cycle_to_ifu_fire_REG_1 <= io_toIfu_req_ready & io_toIfu_req_valid; // @[Decoupled.scala 50:35]
    copied_last_cycle_to_ifu_fire_REG_2 <= io_toIfu_req_ready & io_toIfu_req_valid; // @[Decoupled.scala 50:35]
    pc_mem_ifu_ptr_rdata_REG_startAddr <= ftq_pc_mem_io_ifuPtr_rdata_startAddr; // @[NewFtq.scala 712:65]
    pc_mem_ifu_ptr_rdata_REG_nextLineAddr <= ftq_pc_mem_io_ifuPtr_rdata_nextLineAddr; // @[NewFtq.scala 712:65]
    pc_mem_ifu_ptr_rdata_REG_1_startAddr <= ftq_pc_mem_io_ifuPtr_rdata_startAddr; // @[NewFtq.scala 712:65]
    pc_mem_ifu_ptr_rdata_REG_1_nextLineAddr <= ftq_pc_mem_io_ifuPtr_rdata_nextLineAddr; // @[NewFtq.scala 712:65]
    pc_mem_ifu_ptr_rdata_REG_2_startAddr <= ftq_pc_mem_io_ifuPtr_rdata_startAddr; // @[NewFtq.scala 712:65]
    pc_mem_ifu_ptr_rdata_REG_2_nextLineAddr <= ftq_pc_mem_io_ifuPtr_rdata_nextLineAddr; // @[NewFtq.scala 712:65]
    pc_mem_ifu_plus1_rdata_REG_startAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr; // @[NewFtq.scala 713:65]
    pc_mem_ifu_plus1_rdata_REG_nextLineAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_nextLineAddr; // @[NewFtq.scala 713:65]
    pc_mem_ifu_plus1_rdata_REG_1_startAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr; // @[NewFtq.scala 713:65]
    pc_mem_ifu_plus1_rdata_REG_1_nextLineAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_nextLineAddr; // @[NewFtq.scala 713:65]
    pc_mem_ifu_plus1_rdata_REG_2_startAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr; // @[NewFtq.scala 713:65]
    pc_mem_ifu_plus1_rdata_REG_2_nextLineAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_nextLineAddr; // @[NewFtq.scala 713:65]
    copied_ifu_plus1_to_send_REG <= ~_GEN_514; // @[NewFtq.scala 716:106]
    copied_ifu_plus1_to_send_REG_1 <= last_cycle_bpu_in & _copied_ifu_plus1_to_send_T_3; // @[NewFtq.scala 716:150]
    copied_ifu_plus1_to_send_REG_2 <= ~_GEN_514; // @[NewFtq.scala 716:106]
    copied_ifu_plus1_to_send_REG_3 <= last_cycle_bpu_in & _copied_ifu_plus1_to_send_T_3; // @[NewFtq.scala 716:150]
    copied_ifu_plus1_to_send_REG_4 <= ~_GEN_514; // @[NewFtq.scala 716:106]
    copied_ifu_plus1_to_send_REG_5 <= last_cycle_bpu_in & _copied_ifu_plus1_to_send_T_3; // @[NewFtq.scala 716:150]
    copied_ifu_ptr_to_send_REG <= ~_GEN_482; // @[NewFtq.scala 717:101]
    copied_ifu_ptr_to_send_REG_1 <= last_cycle_bpu_in & _copied_ifu_ptr_to_send_T_3; // @[NewFtq.scala 717:145]
    copied_ifu_ptr_to_send_REG_2 <= ~_GEN_482; // @[NewFtq.scala 717:101]
    copied_ifu_ptr_to_send_REG_3 <= last_cycle_bpu_in & _copied_ifu_ptr_to_send_T_3; // @[NewFtq.scala 717:145]
    copied_ifu_ptr_to_send_REG_4 <= ~_GEN_482; // @[NewFtq.scala 717:101]
    copied_ifu_ptr_to_send_REG_5 <= last_cycle_bpu_in & _copied_ifu_ptr_to_send_T_3; // @[NewFtq.scala 717:145]
    toIfuPcBundle_REG_startAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr; // @[NewFtq.scala 740:29]
    toIfuPcBundle_REG_nextLineAddr <= ftq_pc_mem_io_ifuPtrPlus1_rdata_nextLineAddr; // @[NewFtq.scala 740:29]
    toIfuPcBundle_REG_fallThruError <= ftq_pc_mem_io_ifuPtrPlus1_rdata_fallThruError; // @[NewFtq.scala 740:29]
    entry_is_to_send_REG <= ~_GEN_514; // @[NewFtq.scala 741:71]
    entry_is_to_send_REG_1 <= last_cycle_bpu_in & _copied_ifu_plus1_to_send_T_3; // @[NewFtq.scala 742:51]
    entry_next_addr_REG <= ftq_pc_mem_io_ifuPtrPlus2_rdata_startAddr; // @[NewFtq.scala 747:36]
    toIfuPcBundle_REG_1_startAddr <= ftq_pc_mem_io_ifuPtr_rdata_startAddr; // @[NewFtq.scala 749:29]
    toIfuPcBundle_REG_1_nextLineAddr <= ftq_pc_mem_io_ifuPtr_rdata_nextLineAddr; // @[NewFtq.scala 749:29]
    toIfuPcBundle_REG_1_fallThruError <= ftq_pc_mem_io_ifuPtr_rdata_fallThruError; // @[NewFtq.scala 749:29]
    entry_is_to_send_REG_2 <= ~_GEN_482; // @[NewFtq.scala 750:66]
    entry_is_to_send_REG_3 <= last_cycle_bpu_in & _copied_ifu_ptr_to_send_T_3; // @[NewFtq.scala 751:51]
    entry_next_addr_REG_1 <= ftq_pc_mem_io_ifuPtrPlus1_rdata_startAddr; // @[NewFtq.scala 756:36]
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_0_valid <= io_fromIfu_pdWb_bits_pd_0_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_0_brType <= io_fromIfu_pdWb_bits_pd_0_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_0_isCall <= io_fromIfu_pdWb_bits_pd_0_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_0_isRet <= io_fromIfu_pdWb_bits_pd_0_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_1_valid <= io_fromIfu_pdWb_bits_pd_1_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_1_brType <= io_fromIfu_pdWb_bits_pd_1_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_1_isCall <= io_fromIfu_pdWb_bits_pd_1_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_1_isRet <= io_fromIfu_pdWb_bits_pd_1_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_2_valid <= io_fromIfu_pdWb_bits_pd_2_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_2_brType <= io_fromIfu_pdWb_bits_pd_2_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_2_isCall <= io_fromIfu_pdWb_bits_pd_2_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_2_isRet <= io_fromIfu_pdWb_bits_pd_2_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_3_valid <= io_fromIfu_pdWb_bits_pd_3_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_3_brType <= io_fromIfu_pdWb_bits_pd_3_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_3_isCall <= io_fromIfu_pdWb_bits_pd_3_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_3_isRet <= io_fromIfu_pdWb_bits_pd_3_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_4_valid <= io_fromIfu_pdWb_bits_pd_4_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_4_brType <= io_fromIfu_pdWb_bits_pd_4_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_4_isCall <= io_fromIfu_pdWb_bits_pd_4_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_4_isRet <= io_fromIfu_pdWb_bits_pd_4_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_5_valid <= io_fromIfu_pdWb_bits_pd_5_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_5_brType <= io_fromIfu_pdWb_bits_pd_5_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_5_isCall <= io_fromIfu_pdWb_bits_pd_5_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_5_isRet <= io_fromIfu_pdWb_bits_pd_5_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_6_valid <= io_fromIfu_pdWb_bits_pd_6_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_6_brType <= io_fromIfu_pdWb_bits_pd_6_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_6_isCall <= io_fromIfu_pdWb_bits_pd_6_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_6_isRet <= io_fromIfu_pdWb_bits_pd_6_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_7_valid <= io_fromIfu_pdWb_bits_pd_7_valid; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_7_brType <= io_fromIfu_pdWb_bits_pd_7_brType; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_7_isCall <= io_fromIfu_pdWb_bits_pd_7_isCall; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      pd_reg_7_isRet <= io_fromIfu_pdWb_bits_pd_7_isRet; // @[Reg.scala 17:22]
    end
    if (io_fromIfu_pdWb_valid) begin // @[Reg.scala 17:18]
      wb_idx_reg <= io_fromIfu_pdWb_bits_ftqIdx_value; // @[Reg.scala 17:22]
    end
    REG_2 <= _GEN_720 == 2'h2 & io_fromIfu_pdWb_valid; // @[NewFtq.scala 813:61]
    io_toBackend_pc_mem_wen_REG <= last_cycle_bpu_in; // @[NewFtq.scala 876:39]
    io_toBackend_pc_mem_waddr_REG <= last_cycle_bpu_in_ptr_value; // @[NewFtq.scala 877:39]
    io_toBackend_pc_mem_wdata_REG_startAddr <= bpu_in_bypass_buf_startAddr; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_nextLineAddr <= bpu_in_bypass_buf_nextLineAddr; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_0 <= bpu_in_bypass_buf_isNextMask_0; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_1 <= bpu_in_bypass_buf_isNextMask_1; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_2 <= bpu_in_bypass_buf_isNextMask_2; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_3 <= bpu_in_bypass_buf_isNextMask_3; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_4 <= bpu_in_bypass_buf_isNextMask_4; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_5 <= bpu_in_bypass_buf_isNextMask_5; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_6 <= bpu_in_bypass_buf_isNextMask_6; // @[NewFtq.scala 878:39]
    io_toBackend_pc_mem_wdata_REG_isNextMask_7 <= bpu_in_bypass_buf_isNextMask_7; // @[NewFtq.scala 878:39]
    REG_4 <= io_fromBackend_redirect_valid | fromIfuRedirect_valid; // @[NewFtq.scala 1066:54]
    REG_5 <= io_fromBackend_redirect_valid; // @[NewFtq.scala 480:29 963:25]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_6 <= io_fromBackend_redirect_bits_ftqIdx_value;
    end else begin
      REG_6 <= io_fromIfu_pdWb_bits_ftqIdx_value;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_8 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_8 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_9 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_10 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_10 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_11 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_11 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_12 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_13 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_13 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_14 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_14 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_15 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_16 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_16 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_17 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_17 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_18 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_19 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_19 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_20 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_20 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_21 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_22 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_22 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_23 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_23 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_24 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_25 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_25 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_26 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_26 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_27 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_28 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_28 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    if (io_fromBackend_redirect_valid) begin // @[Mux.scala 47:70]
      REG_29 <= io_fromBackend_redirect_bits_ftqOffset;
    end else begin
      REG_29 <= io_fromIfu_pdWb_bits_misOffset_bits;
    end
    REG_30 <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[Mux.scala 47:70]
    io_mmioCommitRead_mmioLastCommit_REG <= _mmioLastCommit_T & (_mmioLastCommit_T_1 | _mmioLastCommit_T_4) &
      _mmioLastCommit_T_32; // @[NewFtq.scala 1122:118]
    commit_pc_bundle_startAddr <= ftq_pc_mem_io_commPtr_rdata_startAddr; // @[NewFtq.scala 1127:33]
    commit_target_REG <= _canCommit_T == _entry_next_addr_T_5; // @[CircularQueuePtr.scala 61:47]
    commit_target_REG_1 <= newest_entry_target; // @[NewFtq.scala 1130:14]
    commit_target_REG_2 <= ftq_pc_mem_io_commPtrPlus1_rdata_startAddr; // @[NewFtq.scala 1131:14]
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_0 <= commitStateQueue_7_0; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_0 <= commitStateQueue_6_0; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_0 <= commitStateQueue_5_0; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_0 <= commitStateQueue_4_0; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_0 <= _GEN_2622;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_1 <= commitStateQueue_7_1; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_1 <= commitStateQueue_6_1; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_1 <= commitStateQueue_5_1; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_1 <= commitStateQueue_4_1; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_1 <= _GEN_2630;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_2 <= commitStateQueue_7_2; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_2 <= commitStateQueue_6_2; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_2 <= commitStateQueue_5_2; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_2 <= commitStateQueue_4_2; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_2 <= _GEN_2638;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_3 <= commitStateQueue_7_3; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_3 <= commitStateQueue_6_3; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_3 <= commitStateQueue_5_3; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_3 <= commitStateQueue_4_3; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_3 <= _GEN_2646;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_4 <= commitStateQueue_7_4; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_4 <= commitStateQueue_6_4; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_4 <= commitStateQueue_5_4; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_4 <= commitStateQueue_4_4; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_4 <= _GEN_2654;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_5 <= commitStateQueue_7_5; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_5 <= commitStateQueue_6_5; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_5 <= commitStateQueue_5_5; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_5 <= commitStateQueue_4_5; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_5 <= _GEN_2662;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_6 <= commitStateQueue_7_6; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_6 <= commitStateQueue_6_6; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_6 <= commitStateQueue_5_6; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_6 <= commitStateQueue_4_6; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_6 <= _GEN_2670;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_7 <= commitStateQueue_7_7; // @[NewFtq.scala 1118:9]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_7 <= commitStateQueue_6_7; // @[NewFtq.scala 1118:9]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_7 <= commitStateQueue_5_7; // @[NewFtq.scala 1118:9]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1118:9]
      commit_state_7 <= commitStateQueue_4_7; // @[NewFtq.scala 1118:9]
    end else begin
      commit_state_7 <= _GEN_2678;
    end
    if (3'h7 == commPtr_value) begin
      commit_cfi_valid <= cfiIndex_vec_7_valid;
    end else if (3'h6 == commPtr_value) begin
      commit_cfi_valid <= cfiIndex_vec_6_valid;
    end else if (3'h5 == commPtr_value) begin
      commit_cfi_valid <= cfiIndex_vec_5_valid;
    end else if (3'h4 == commPtr_value) begin
      commit_cfi_valid <= cfiIndex_vec_4_valid;
    end else begin
      commit_cfi_valid <= _GEN_2754;
    end
    if (3'h7 == commPtr_value) begin
      commit_cfi_bits <= cfiIndex_vec_7_bits;
    end else if (3'h6 == commPtr_value) begin
      commit_cfi_bits <= cfiIndex_vec_6_bits;
    end else if (3'h5 == commPtr_value) begin
      commit_cfi_bits <= cfiIndex_vec_5_bits;
    end else if (3'h4 == commPtr_value) begin
      commit_cfi_bits <= cfiIndex_vec_4_bits;
    end else begin
      commit_cfi_bits <= _GEN_2762;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_0 <= mispredict_vec_7_0; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_0 <= mispredict_vec_6_0; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_0 <= mispredict_vec_5_0; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_0 <= mispredict_vec_4_0; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_0 <= _GEN_2850;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_1 <= mispredict_vec_7_1; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_1 <= mispredict_vec_6_1; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_1 <= mispredict_vec_5_1; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_1 <= mispredict_vec_4_1; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_1 <= _GEN_2858;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_2 <= mispredict_vec_7_2; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_2 <= mispredict_vec_6_2; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_2 <= mispredict_vec_5_2; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_2 <= mispredict_vec_4_2; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_2 <= _GEN_2866;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_3 <= mispredict_vec_7_3; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_3 <= mispredict_vec_6_3; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_3 <= mispredict_vec_5_3; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_3 <= mispredict_vec_4_3; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_3 <= _GEN_2874;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_4 <= mispredict_vec_7_4; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_4 <= mispredict_vec_6_4; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_4 <= mispredict_vec_5_4; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_4 <= mispredict_vec_4_4; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_4 <= _GEN_2882;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_5 <= mispredict_vec_7_5; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_5 <= mispredict_vec_6_5; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_5 <= mispredict_vec_5_5; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_5 <= mispredict_vec_4_5; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_5 <= _GEN_2890;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_6 <= mispredict_vec_7_6; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_6 <= mispredict_vec_6_6; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_6 <= mispredict_vec_5_6; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_6 <= mispredict_vec_4_6; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_6 <= _GEN_2898;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_7 <= mispredict_vec_7_7; // @[NewFtq.scala 1160:56]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_7 <= mispredict_vec_6_7; // @[NewFtq.scala 1160:56]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_7 <= mispredict_vec_5_7; // @[NewFtq.scala 1160:56]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1160:56]
      commit_mispredict_REG_7 <= mispredict_vec_4_7; // @[NewFtq.scala 1160:56]
    end else begin
      commit_mispredict_REG_7 <= _GEN_2906;
    end
    if (3'h7 == commPtr_value) begin // @[NewFtq.scala 1165:47]
      commit_hit <= entry_hit_status_7; // @[NewFtq.scala 1165:47]
    end else if (3'h6 == commPtr_value) begin // @[NewFtq.scala 1165:47]
      commit_hit <= entry_hit_status_6; // @[NewFtq.scala 1165:47]
    end else if (3'h5 == commPtr_value) begin // @[NewFtq.scala 1165:47]
      commit_hit <= entry_hit_status_5; // @[NewFtq.scala 1165:47]
    end else if (3'h4 == commPtr_value) begin // @[NewFtq.scala 1165:47]
      commit_hit <= entry_hit_status_4; // @[NewFtq.scala 1165:47]
    end else begin
      commit_hit <= _GEN_2914;
    end
    prefetch_addr_REG <= ftq_pc_mem_io_other_rdatas_0_startAddr; // @[NewFtq.scala 1273:31]
    io_perf_0_value_REG <= io_fromBpu_resp_bits_s2_valid_3 & io_fromBpu_resp_bits_s2_hasRedirect_3; // @[NewFtq.scala 529:46]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= io_fromBpu_resp_bits_s3_valid_3 & io_fromBpu_resp_bits_s3_hasRedirect_3; // @[NewFtq.scala 530:46]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= io_fromBpu_resp_valid & _T_368; // @[NewFtq.scala 1577:43]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= io_fromBackend_redirect_valid & _lastIsMispredict_T; // @[NewFtq.scala 1578:53]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= io_fromBackend_redirect_valid & io_fromBackend_redirect_bits_level; // @[NewFtq.scala 1579:53]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= io_fromIfu_pdWb_valid & io_fromIfu_pdWb_bits_misOffset_valid & ~backendFlush; // @[NewFtq.scala 921:68]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= io_toIfu_req_ready & _T_374; // @[NewFtq.scala 1581:52]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= _T_379 & allowToIfu; // @[NewFtq.scala 1582:57]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= _T_1124 + _T_1130; // @[Bitwise.scala 48:55]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= _T_1147 + _T_1153; // @[Bitwise.scala 48:55]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= _io_bpuInfo_bpRight_T_12 + _io_bpuInfo_bpRight_T_18; // @[Bitwise.scala 48:55]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= _io_bpuInfo_bpWrong_T_12 + _io_bpuInfo_bpWrong_T_18; // @[Bitwise.scala 48:55]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= _T_1213 + _T_1219; // @[Bitwise.scala 48:55]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_13_value_REG <= _T_1235 + _T_1241; // @[Bitwise.scala 48:55]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_14_value_REG <= _T_1257 + _T_1263; // @[Bitwise.scala 48:55]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_15_value_REG <= _T_1279 + _T_1285; // @[Bitwise.scala 48:55]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_16_value_REG <= _T_1301 + _T_1307; // @[Bitwise.scala 48:55]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_17_value_REG <= _T_1323 + _T_1329; // @[Bitwise.scala 48:55]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_18_value_REG <= _T_1345 + _T_1351; // @[Bitwise.scala 48:55]
    io_perf_18_value_REG_1 <= io_perf_18_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_19_value_REG <= _T_1367 + _T_1373; // @[Bitwise.scala 48:55]
    io_perf_19_value_REG_1 <= io_perf_19_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_20_value_REG <= _T_1389 + _T_1395; // @[Bitwise.scala 48:55]
    io_perf_20_value_REG_1 <= io_perf_20_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_21_value_REG <= _T_1411 + _T_1417; // @[Bitwise.scala 48:55]
    io_perf_21_value_REG_1 <= io_perf_21_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_22_value_REG <= io_toBpu_update_valid & io_toBpu_update_bits_false_hit; // @[NewFtq.scala 1431:36]
    io_perf_22_value_REG_1 <= io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_23_value_REG <= io_toBpu_update_valid & _commit_valid_T; // @[NewFtq.scala 1431:36]
    io_perf_23_value_REG_1 <= io_perf_23_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_0 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_0 <= io_fromBpu_resp_bits_topdown_info_reasons_0; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_1 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_1 <= io_fromBpu_resp_bits_topdown_info_reasons_1; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_2 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_2 <= io_fromBpu_resp_bits_topdown_info_reasons_2; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_3 <= 1'h0; // @[NewFtq.scala 1009:58 1010:60 475:{17,17}]
    end else if (backendRedirectReg_valid) begin // @[NewFtq.scala 475:17]
      if (backendRedirectReg_bits_debugIsCtrl) begin
        if (_T_221) begin
          topdown_stage_reasons_3 <= io_fromBpu_resp_bits_topdown_info_reasons_3;
        end else begin
          topdown_stage_reasons_3 <= _GEN_1443;
        end
      end else begin
        topdown_stage_reasons_3 <= io_fromBpu_resp_bits_topdown_info_reasons_3;
      end
    end else begin
      topdown_stage_reasons_3 <= io_fromBpu_resp_bits_topdown_info_reasons_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_4 <= 1'h0; // @[NewFtq.scala 1009:58 1010:60 475:{17,17} 1013:61 475:17]
    end else if (backendRedirectReg_valid) begin // @[NewFtq.scala 475:17]
      if (backendRedirectReg_bits_debugIsCtrl) begin
        if (_T_221) begin
          topdown_stage_reasons_4 <= io_fromBpu_resp_bits_topdown_info_reasons_4;
        end else if (_T_224) begin
          topdown_stage_reasons_4 <= io_fromBpu_resp_bits_topdown_info_reasons_4;
        end else begin
          topdown_stage_reasons_4 <= _GEN_1437;
        end
      end else begin
        topdown_stage_reasons_4 <= io_fromBpu_resp_bits_topdown_info_reasons_4;
      end
    end else begin
      topdown_stage_reasons_4 <= io_fromBpu_resp_bits_topdown_info_reasons_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_5 <= 1'h0; // @[NewFtq.scala 1009:58 1010:60 475:{17,17} 1013:61 475:17]
    end else if (backendRedirectReg_valid) begin // @[NewFtq.scala 475:17]
      if (backendRedirectReg_bits_debugIsCtrl) begin
        if (_T_221) begin
          topdown_stage_reasons_5 <= io_fromBpu_resp_bits_topdown_info_reasons_5;
        end else if (_T_224) begin
          topdown_stage_reasons_5 <= io_fromBpu_resp_bits_topdown_info_reasons_5;
        end else begin
          topdown_stage_reasons_5 <= _GEN_1439;
        end
      end else begin
        topdown_stage_reasons_5 <= io_fromBpu_resp_bits_topdown_info_reasons_5;
      end
    end else begin
      topdown_stage_reasons_5 <= io_fromBpu_resp_bits_topdown_info_reasons_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_6 <= 1'h0; // @[NewFtq.scala 1009:58 1010:60 475:{17,17} 1013:61 475:17]
    end else if (backendRedirectReg_valid) begin // @[NewFtq.scala 475:17]
      if (backendRedirectReg_bits_debugIsCtrl) begin
        if (_T_221) begin
          topdown_stage_reasons_6 <= io_fromBpu_resp_bits_topdown_info_reasons_6;
        end else if (_T_224) begin
          topdown_stage_reasons_6 <= io_fromBpu_resp_bits_topdown_info_reasons_6;
        end else begin
          topdown_stage_reasons_6 <= _GEN_1441;
        end
      end else begin
        topdown_stage_reasons_6 <= io_fromBpu_resp_bits_topdown_info_reasons_6;
      end
    end else begin
      topdown_stage_reasons_6 <= io_fromBpu_resp_bits_topdown_info_reasons_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_7 <= 1'h0; // @[NewFtq.scala 1009:58 475:17]
    end else if (backendRedirectReg_valid) begin // @[NewFtq.scala 475:17]
      if (backendRedirectReg_bits_debugIsCtrl) begin
        topdown_stage_reasons_7 <= io_fromBpu_resp_bits_topdown_info_reasons_7;
      end else begin
        topdown_stage_reasons_7 <= _GEN_1461;
      end
    end else begin
      topdown_stage_reasons_7 <= io_fromBpu_resp_bits_topdown_info_reasons_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_8 <= 1'h0; // @[NewFtq.scala 1009:58 475:17 1028:64 475:17 1032:69]
    end else if (backendRedirectReg_valid) begin // @[NewFtq.scala 475:17]
      if (backendRedirectReg_bits_debugIsCtrl) begin
        topdown_stage_reasons_8 <= io_fromBpu_resp_bits_topdown_info_reasons_8;
      end else if (backendRedirectReg_bits_debugIsMemVio) begin
        topdown_stage_reasons_8 <= io_fromBpu_resp_bits_topdown_info_reasons_8;
      end else begin
        topdown_stage_reasons_8 <= 1'h1;
      end
    end else begin
      topdown_stage_reasons_8 <= io_fromBpu_resp_bits_topdown_info_reasons_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_9 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_9 <= io_fromBpu_resp_bits_topdown_info_reasons_9; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_10 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_10 <= io_fromBpu_resp_bits_topdown_info_reasons_10; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_11 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_11 <= io_fromBpu_resp_bits_topdown_info_reasons_11; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1008:35]
      topdown_stage_reasons_12 <= 1'h0; // @[NewFtq.scala 1009:58 475:17]
    end else if (backendRedirectReg_valid) begin
      if (backendRedirectReg_bits_debugIsCtrl) begin
        topdown_stage_reasons_12 <= _GEN_1451;
      end else begin
        topdown_stage_reasons_12 <= io_fromBpu_resp_bits_topdown_info_reasons_12;
      end
    end else begin
      topdown_stage_reasons_12 <= _GEN_1479;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_13 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_13 <= io_fromBpu_resp_bits_topdown_info_reasons_13; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_14 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_14 <= io_fromBpu_resp_bits_topdown_info_reasons_14; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_15 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_15 <= io_fromBpu_resp_bits_topdown_info_reasons_15; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_16 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_16 <= io_fromBpu_resp_bits_topdown_info_reasons_16; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_17 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_17 <= io_fromBpu_resp_bits_topdown_info_reasons_17; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_18 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_18 <= io_fromBpu_resp_bits_topdown_info_reasons_18; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_19 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_19 <= io_fromBpu_resp_bits_topdown_info_reasons_19; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_20 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_20 <= io_fromBpu_resp_bits_topdown_info_reasons_20; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_21 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_21 <= io_fromBpu_resp_bits_topdown_info_reasons_21; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_22 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_22 <= io_fromBpu_resp_bits_topdown_info_reasons_22; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_23 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_23 <= io_fromBpu_resp_bits_topdown_info_reasons_23; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_24 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_24 <= io_fromBpu_resp_bits_topdown_info_reasons_24; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_25 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_25 <= io_fromBpu_resp_bits_topdown_info_reasons_25; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_26 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_26 <= io_fromBpu_resp_bits_topdown_info_reasons_26; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_27 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_27 <= io_fromBpu_resp_bits_topdown_info_reasons_27; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_28 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_28 <= io_fromBpu_resp_bits_topdown_info_reasons_28; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_29 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_29 <= io_fromBpu_resp_bits_topdown_info_reasons_29; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_30 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_30 <= io_fromBpu_resp_bits_topdown_info_reasons_30; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_31 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_31 <= io_fromBpu_resp_bits_topdown_info_reasons_31; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_32 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_32 <= io_fromBpu_resp_bits_topdown_info_reasons_32; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_33 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_33 <= io_fromBpu_resp_bits_topdown_info_reasons_33; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_34 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_34 <= io_fromBpu_resp_bits_topdown_info_reasons_34; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_35 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_35 <= io_fromBpu_resp_bits_topdown_info_reasons_35; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_reasons_36 <= 1'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_reasons_36 <= io_fromBpu_resp_bits_topdown_info_reasons_36; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 472:30]
      topdown_stage_stallWidth <= 3'h0; // @[NewFtq.scala 472:30]
    end else begin
      topdown_stage_stallWidth <= io_fromBpu_resp_bits_topdown_info_stallWidth; // @[NewFtq.scala 475:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 921:68]
      ifuRedirectReg_valid <= 1'h0;
    end else begin
      ifuRedirectReg_valid <= io_fromIfu_pdWb_valid & io_fromIfu_pdWb_bits_misOffset_valid & ~backendFlush;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      bpuPtr_flag <= 1'h0; // @[NewFtq.scala 1058:12]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      bpuPtr_flag <= next_flag; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      bpuPtr_flag <= bpuPtr_new_ptr_2_flag; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      bpuPtr_flag <= bpuPtr_new_ptr_1_flag;
    end else begin
      bpuPtr_flag <= bpuPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      bpuPtr_value <= 3'h0; // @[NewFtq.scala 1058:12]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      bpuPtr_value <= next_value; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      bpuPtr_value <= bpuPtr_new_ptr_2_value; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      bpuPtr_value <= bpuPtr_new_ptr_1_value;
    end else begin
      bpuPtr_value <= bpuPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuPtr_flag <= 1'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      ifuPtr_flag <= next_flag; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        ifuPtr_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
      end else begin
        ifuPtr_flag <= _GEN_379;
      end
    end else begin
      ifuPtr_flag <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuPtr_value <= 3'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      ifuPtr_value <= next_value; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        ifuPtr_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
      end else begin
        ifuPtr_value <= _GEN_380;
      end
    end else begin
      ifuPtr_value <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuWbPtr_flag <= 1'h0; // @[NewFtq.scala 1061:20]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 829:23]
      ifuWbPtr_flag <= next_flag; // @[NewFtq.scala 830:20]
    end else if (io_fromIfu_pdWb_valid) begin
      ifuWbPtr_flag <= ifuWbPtr_write_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuWbPtr_value <= 3'h0; // @[NewFtq.scala 1061:20]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 829:23]
      ifuWbPtr_value <= next_value; // @[NewFtq.scala 830:20]
    end else if (io_fromIfu_pdWb_valid) begin
      ifuWbPtr_value <= ifuWbPtr_write_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1146:20]
      commPtr_flag <= 1'h0; // @[NewFtq.scala 1147:19]
    end else if (canCommit) begin
      commPtr_flag <= commPtrPlus1_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1146:20]
      commPtr_value <= 3'h0; // @[NewFtq.scala 1147:19]
    end else if (canCommit) begin
      commPtr_value <= commPtrPlus1_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuPtrPlus1_flag <= 1'h0; // @[NewFtq.scala 1062:23]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      ifuPtrPlus1_flag <= ifuPtrPlus1_write_new_ptr_2_flag; // @[NewFtq.scala 668:51 670:25]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        ifuPtrPlus1_flag <= bpuPtr_new_ptr_2_flag;
      end else begin
        ifuPtrPlus1_flag <= _GEN_381;
      end
    end else begin
      ifuPtrPlus1_flag <= _GEN_381;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuPtrPlus1_value <= 3'h1; // @[NewFtq.scala 1062:23]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      ifuPtrPlus1_value <= ifuPtrPlus1_write_new_ptr_2_value; // @[NewFtq.scala 668:51 670:25]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        ifuPtrPlus1_value <= bpuPtr_new_ptr_2_value;
      end else begin
        ifuPtrPlus1_value <= _GEN_382;
      end
    end else begin
      ifuPtrPlus1_value <= _GEN_382;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuPtrPlus2_flag <= 1'h0; // @[NewFtq.scala 1063:23]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      ifuPtrPlus2_flag <= ifuPtrPlus2_write_new_ptr_3_flag; // @[NewFtq.scala 668:51 671:25]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        ifuPtrPlus2_flag <= ifuPtrPlus2_write_new_ptr_2_flag;
      end else begin
        ifuPtrPlus2_flag <= _GEN_383;
      end
    end else begin
      ifuPtrPlus2_flag <= _GEN_383;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      ifuPtrPlus2_value <= 3'h2; // @[NewFtq.scala 1063:23]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      ifuPtrPlus2_value <= ifuPtrPlus2_write_new_ptr_3_value; // @[NewFtq.scala 668:51 671:25]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        ifuPtrPlus2_value <= ifuPtrPlus2_write_new_ptr_2_value;
      end else begin
        ifuPtrPlus2_value <= _GEN_384;
      end
    end else begin
      ifuPtrPlus2_value <= _GEN_384;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1146:20]
      commPtrPlus1_flag <= 1'h0; // @[NewFtq.scala 1148:24]
    end else if (canCommit) begin
      commPtrPlus1_flag <= commPtrPlus1_write_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1146:20]
      commPtrPlus1_value <= 3'h1; // @[NewFtq.scala 1148:24]
    end else if (canCommit) begin
      commPtrPlus1_value <= commPtrPlus1_write_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_0_flag <= 1'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_0_flag <= next_flag; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_0_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
      end else begin
        copied_ifu_ptr_0_flag <= _GEN_379;
      end
    end else begin
      copied_ifu_ptr_0_flag <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_0_value <= 3'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_0_value <= next_value; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_0_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
      end else begin
        copied_ifu_ptr_0_value <= _GEN_380;
      end
    end else begin
      copied_ifu_ptr_0_value <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_1_flag <= 1'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_1_flag <= next_flag; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_1_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
      end else begin
        copied_ifu_ptr_1_flag <= _GEN_379;
      end
    end else begin
      copied_ifu_ptr_1_flag <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_1_value <= 3'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_1_value <= next_value; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_1_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
      end else begin
        copied_ifu_ptr_1_value <= _GEN_380;
      end
    end else begin
      copied_ifu_ptr_1_value <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_2_flag <= 1'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_2_flag <= next_flag; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_2_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
      end else begin
        copied_ifu_ptr_2_flag <= _GEN_379;
      end
    end else begin
      copied_ifu_ptr_2_flag <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_2_value <= 3'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_2_value <= next_value; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_2_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
      end else begin
        copied_ifu_ptr_2_value <= _GEN_380;
      end
    end else begin
      copied_ifu_ptr_2_value <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_3_flag <= 1'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_3_flag <= next_flag; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_3_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
      end else begin
        copied_ifu_ptr_3_flag <= _GEN_379;
      end
    end else begin
      copied_ifu_ptr_3_flag <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_3_value <= 3'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_3_value <= next_value; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_3_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
      end else begin
        copied_ifu_ptr_3_value <= _GEN_380;
      end
    end else begin
      copied_ifu_ptr_3_value <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_4_flag <= 1'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_4_flag <= next_flag; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_4_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag;
      end else begin
        copied_ifu_ptr_4_flag <= _GEN_379;
      end
    end else begin
      copied_ifu_ptr_4_flag <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_ifu_ptr_4_value <= 3'h0; // @[NewFtq.scala 1060:18]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_ifu_ptr_4_value <= next_value; // @[NewFtq.scala 668:51 669:20]
    end else if (bpu_s3_redirect) begin
      if (~_T_46) begin
        copied_ifu_ptr_4_value <= io_fromBpu_resp_bits_s3_ftq_idx_value;
      end else begin
        copied_ifu_ptr_4_value <= _GEN_380;
      end
    end else begin
      copied_ifu_ptr_4_value <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_bpu_ptr_0_flag <= 1'h0; // @[NewFtq.scala 1059:26]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_bpu_ptr_0_flag <= next_flag; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      copied_bpu_ptr_0_flag <= bpuPtr_new_ptr_2_flag; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      copied_bpu_ptr_0_flag <= bpuPtr_new_ptr_1_flag;
    end else begin
      copied_bpu_ptr_0_flag <= bpuPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_bpu_ptr_0_value <= 3'h0; // @[NewFtq.scala 1059:26]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_bpu_ptr_0_value <= next_value; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      copied_bpu_ptr_0_value <= bpuPtr_new_ptr_2_value; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      copied_bpu_ptr_0_value <= bpuPtr_new_ptr_1_value;
    end else begin
      copied_bpu_ptr_0_value <= bpuPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_bpu_ptr_1_flag <= 1'h0; // @[NewFtq.scala 1059:26]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_bpu_ptr_1_flag <= next_flag; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      copied_bpu_ptr_1_flag <= bpuPtr_new_ptr_2_flag; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      copied_bpu_ptr_1_flag <= bpuPtr_new_ptr_1_flag;
    end else begin
      copied_bpu_ptr_1_flag <= bpuPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_bpu_ptr_1_value <= 3'h0; // @[NewFtq.scala 1059:26]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_bpu_ptr_1_value <= next_value; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      copied_bpu_ptr_1_value <= bpuPtr_new_ptr_2_value; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      copied_bpu_ptr_1_value <= bpuPtr_new_ptr_1_value;
    end else begin
      copied_bpu_ptr_1_value <= bpuPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_bpu_ptr_2_flag <= 1'h0; // @[NewFtq.scala 1059:26]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_bpu_ptr_2_flag <= next_flag; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      copied_bpu_ptr_2_flag <= bpuPtr_new_ptr_2_flag; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      copied_bpu_ptr_2_flag <= bpuPtr_new_ptr_1_flag;
    end else begin
      copied_bpu_ptr_2_flag <= bpuPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1053:51]
      copied_bpu_ptr_2_value <= 3'h0; // @[NewFtq.scala 1059:26]
    end else if (io_fromBackend_redirect_valid | fromIfuRedirect_valid) begin // @[NewFtq.scala 664:26]
      copied_bpu_ptr_2_value <= next_value; // @[NewFtq.scala 665:12]
    end else if (bpu_s3_redirect) begin // @[NewFtq.scala 651:26]
      copied_bpu_ptr_2_value <= bpuPtr_new_ptr_2_value; // @[NewFtq.scala 652:12]
    end else if (bpu_s2_redirect) begin // @[NewFtq.scala 635:10]
      copied_bpu_ptr_2_value <= bpuPtr_new_ptr_1_value;
    end else begin
      copied_bpu_ptr_2_value <= bpuPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1171:33]
      bpu_ftb_update_stall <= 2'h0; // @[NewFtq.scala 1173:63 1174:30 1114:37]
    end else if (2'h0 == bpu_ftb_update_stall) begin // @[NewFtq.scala 1171:33]
      if (can_commit_cfi_valid & ~to_bpu_hit & canCommit) begin // @[NewFtq.scala 1178:28]
        bpu_ftb_update_stall <= 2'h2;
      end
    end else if (2'h2 == bpu_ftb_update_stall) begin // @[NewFtq.scala 1171:33]
      bpu_ftb_update_stall <= 2'h1; // @[NewFtq.scala 1181:28]
    end else if (2'h1 == bpu_ftb_update_stall) begin // @[NewFtq.scala 1114:37]
      bpu_ftb_update_stall <= 2'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h0 == _T_278) begin
          commitStateQueue_7_0 <= 2'h2;
        end else begin
          commitStateQueue_7_0 <= _GEN_2251;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h0 == _T_281) begin
          commitStateQueue_7_0 <= 2'h2;
        end else begin
          commitStateQueue_7_0 <= _GEN_2251;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_7_0 <= _GEN_2394;
      end else begin
        commitStateQueue_7_0 <= _GEN_2251;
      end
    end else begin
      commitStateQueue_7_0 <= _GEN_2187;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h0 == _T_278) begin
          commitStateQueue_6_0 <= 2'h2;
        end else begin
          commitStateQueue_6_0 <= _GEN_2243;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h0 == _T_281) begin
          commitStateQueue_6_0 <= 2'h2;
        end else begin
          commitStateQueue_6_0 <= _GEN_2243;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_6_0 <= _GEN_2393;
      end else begin
        commitStateQueue_6_0 <= _GEN_2243;
      end
    end else begin
      commitStateQueue_6_0 <= _GEN_2179;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h0 == _T_278) begin
          commitStateQueue_5_0 <= 2'h2;
        end else begin
          commitStateQueue_5_0 <= _GEN_2235;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h0 == _T_281) begin
          commitStateQueue_5_0 <= 2'h2;
        end else begin
          commitStateQueue_5_0 <= _GEN_2235;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_5_0 <= _GEN_2392;
      end else begin
        commitStateQueue_5_0 <= _GEN_2235;
      end
    end else begin
      commitStateQueue_5_0 <= _GEN_2171;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h0 == _T_278) begin
          commitStateQueue_4_0 <= 2'h2;
        end else begin
          commitStateQueue_4_0 <= _GEN_2227;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h0 == _T_281) begin
          commitStateQueue_4_0 <= 2'h2;
        end else begin
          commitStateQueue_4_0 <= _GEN_2227;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_4_0 <= _GEN_2391;
      end else begin
        commitStateQueue_4_0 <= _GEN_2227;
      end
    end else begin
      commitStateQueue_4_0 <= _GEN_2163;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h0 == _T_278) begin
          commitStateQueue_3_0 <= 2'h2;
        end else begin
          commitStateQueue_3_0 <= _GEN_2219;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h0 == _T_281) begin
          commitStateQueue_3_0 <= 2'h2;
        end else begin
          commitStateQueue_3_0 <= _GEN_2219;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_3_0 <= _GEN_2390;
      end else begin
        commitStateQueue_3_0 <= _GEN_2219;
      end
    end else begin
      commitStateQueue_3_0 <= _GEN_2155;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h0 == _T_278) begin
          commitStateQueue_2_0 <= 2'h2;
        end else begin
          commitStateQueue_2_0 <= _GEN_2211;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h0 == _T_281) begin
          commitStateQueue_2_0 <= 2'h2;
        end else begin
          commitStateQueue_2_0 <= _GEN_2211;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_2_0 <= _GEN_2389;
      end else begin
        commitStateQueue_2_0 <= _GEN_2211;
      end
    end else begin
      commitStateQueue_2_0 <= _GEN_2147;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h0 == _T_278) begin
          commitStateQueue_1_0 <= 2'h2;
        end else begin
          commitStateQueue_1_0 <= _GEN_2203;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h0 == _T_281) begin
          commitStateQueue_1_0 <= 2'h2;
        end else begin
          commitStateQueue_1_0 <= _GEN_2203;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_1_0 <= _GEN_2388;
      end else begin
        commitStateQueue_1_0 <= _GEN_2203;
      end
    end else begin
      commitStateQueue_1_0 <= _GEN_2139;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_0 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h0 == _T_278) begin
          commitStateQueue_0_0 <= 2'h2;
        end else begin
          commitStateQueue_0_0 <= _GEN_2195;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h0 == _T_281) begin
          commitStateQueue_0_0 <= 2'h2;
        end else begin
          commitStateQueue_0_0 <= _GEN_2195;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_0_0 <= _GEN_2387;
      end else begin
        commitStateQueue_0_0 <= _GEN_2195;
      end
    end else begin
      commitStateQueue_0_0 <= _GEN_2131;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h1 == _T_278) begin
          commitStateQueue_7_1 <= 2'h2;
        end else begin
          commitStateQueue_7_1 <= _GEN_2252;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h1 == _T_281) begin
          commitStateQueue_7_1 <= 2'h2;
        end else begin
          commitStateQueue_7_1 <= _GEN_2252;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_7_1 <= _GEN_2252;
      end else begin
        commitStateQueue_7_1 <= _GEN_2410;
      end
    end else begin
      commitStateQueue_7_1 <= _GEN_2188;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h1 == _T_278) begin
          commitStateQueue_6_1 <= 2'h2;
        end else begin
          commitStateQueue_6_1 <= _GEN_2244;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h1 == _T_281) begin
          commitStateQueue_6_1 <= 2'h2;
        end else begin
          commitStateQueue_6_1 <= _GEN_2244;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_6_1 <= _GEN_2244;
      end else begin
        commitStateQueue_6_1 <= _GEN_2409;
      end
    end else begin
      commitStateQueue_6_1 <= _GEN_2180;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h1 == _T_278) begin
          commitStateQueue_5_1 <= 2'h2;
        end else begin
          commitStateQueue_5_1 <= _GEN_2236;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h1 == _T_281) begin
          commitStateQueue_5_1 <= 2'h2;
        end else begin
          commitStateQueue_5_1 <= _GEN_2236;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_5_1 <= _GEN_2236;
      end else begin
        commitStateQueue_5_1 <= _GEN_2408;
      end
    end else begin
      commitStateQueue_5_1 <= _GEN_2172;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h1 == _T_278) begin
          commitStateQueue_4_1 <= 2'h2;
        end else begin
          commitStateQueue_4_1 <= _GEN_2228;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h1 == _T_281) begin
          commitStateQueue_4_1 <= 2'h2;
        end else begin
          commitStateQueue_4_1 <= _GEN_2228;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_4_1 <= _GEN_2228;
      end else begin
        commitStateQueue_4_1 <= _GEN_2407;
      end
    end else begin
      commitStateQueue_4_1 <= _GEN_2164;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h1 == _T_278) begin
          commitStateQueue_3_1 <= 2'h2;
        end else begin
          commitStateQueue_3_1 <= _GEN_2220;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h1 == _T_281) begin
          commitStateQueue_3_1 <= 2'h2;
        end else begin
          commitStateQueue_3_1 <= _GEN_2220;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_3_1 <= _GEN_2220;
      end else begin
        commitStateQueue_3_1 <= _GEN_2406;
      end
    end else begin
      commitStateQueue_3_1 <= _GEN_2156;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h1 == _T_278) begin
          commitStateQueue_2_1 <= 2'h2;
        end else begin
          commitStateQueue_2_1 <= _GEN_2212;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h1 == _T_281) begin
          commitStateQueue_2_1 <= 2'h2;
        end else begin
          commitStateQueue_2_1 <= _GEN_2212;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_2_1 <= _GEN_2212;
      end else begin
        commitStateQueue_2_1 <= _GEN_2405;
      end
    end else begin
      commitStateQueue_2_1 <= _GEN_2148;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h1 == _T_278) begin
          commitStateQueue_1_1 <= 2'h2;
        end else begin
          commitStateQueue_1_1 <= _GEN_2204;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h1 == _T_281) begin
          commitStateQueue_1_1 <= 2'h2;
        end else begin
          commitStateQueue_1_1 <= _GEN_2204;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_1_1 <= _GEN_2204;
      end else begin
        commitStateQueue_1_1 <= _GEN_2404;
      end
    end else begin
      commitStateQueue_1_1 <= _GEN_2140;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_1 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71} 1095:45]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h1 == _T_278) begin
          commitStateQueue_0_1 <= 2'h2;
        end else begin
          commitStateQueue_0_1 <= _GEN_2196;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h1 == _T_281) begin
          commitStateQueue_0_1 <= 2'h2;
        end else begin
          commitStateQueue_0_1 <= _GEN_2196;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h6) begin
        commitStateQueue_0_1 <= _GEN_2196;
      end else begin
        commitStateQueue_0_1 <= _GEN_2403;
      end
    end else begin
      commitStateQueue_0_1 <= _GEN_2132;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h2 == _T_278) begin
          commitStateQueue_7_2 <= 2'h2;
        end else begin
          commitStateQueue_7_2 <= _GEN_2253;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h2 == _T_281) begin
          commitStateQueue_7_2 <= 2'h2;
        end else begin
          commitStateQueue_7_2 <= _GEN_2253;
        end
      end else begin
        commitStateQueue_7_2 <= _GEN_2253;
      end
    end else begin
      commitStateQueue_7_2 <= _GEN_2189;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h2 == _T_278) begin
          commitStateQueue_6_2 <= 2'h2;
        end else begin
          commitStateQueue_6_2 <= _GEN_2245;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h2 == _T_281) begin
          commitStateQueue_6_2 <= 2'h2;
        end else begin
          commitStateQueue_6_2 <= _GEN_2245;
        end
      end else begin
        commitStateQueue_6_2 <= _GEN_2245;
      end
    end else begin
      commitStateQueue_6_2 <= _GEN_2181;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h2 == _T_278) begin
          commitStateQueue_5_2 <= 2'h2;
        end else begin
          commitStateQueue_5_2 <= _GEN_2237;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h2 == _T_281) begin
          commitStateQueue_5_2 <= 2'h2;
        end else begin
          commitStateQueue_5_2 <= _GEN_2237;
        end
      end else begin
        commitStateQueue_5_2 <= _GEN_2237;
      end
    end else begin
      commitStateQueue_5_2 <= _GEN_2173;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h2 == _T_278) begin
          commitStateQueue_4_2 <= 2'h2;
        end else begin
          commitStateQueue_4_2 <= _GEN_2229;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h2 == _T_281) begin
          commitStateQueue_4_2 <= 2'h2;
        end else begin
          commitStateQueue_4_2 <= _GEN_2229;
        end
      end else begin
        commitStateQueue_4_2 <= _GEN_2229;
      end
    end else begin
      commitStateQueue_4_2 <= _GEN_2165;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h2 == _T_278) begin
          commitStateQueue_3_2 <= 2'h2;
        end else begin
          commitStateQueue_3_2 <= _GEN_2221;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h2 == _T_281) begin
          commitStateQueue_3_2 <= 2'h2;
        end else begin
          commitStateQueue_3_2 <= _GEN_2221;
        end
      end else begin
        commitStateQueue_3_2 <= _GEN_2221;
      end
    end else begin
      commitStateQueue_3_2 <= _GEN_2157;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h2 == _T_278) begin
          commitStateQueue_2_2 <= 2'h2;
        end else begin
          commitStateQueue_2_2 <= _GEN_2213;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h2 == _T_281) begin
          commitStateQueue_2_2 <= 2'h2;
        end else begin
          commitStateQueue_2_2 <= _GEN_2213;
        end
      end else begin
        commitStateQueue_2_2 <= _GEN_2213;
      end
    end else begin
      commitStateQueue_2_2 <= _GEN_2149;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h2 == _T_278) begin
          commitStateQueue_1_2 <= 2'h2;
        end else begin
          commitStateQueue_1_2 <= _GEN_2205;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h2 == _T_281) begin
          commitStateQueue_1_2 <= 2'h2;
        end else begin
          commitStateQueue_1_2 <= _GEN_2205;
        end
      end else begin
        commitStateQueue_1_2 <= _GEN_2205;
      end
    end else begin
      commitStateQueue_1_2 <= _GEN_2141;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_2 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h2 == _T_278) begin
          commitStateQueue_0_2 <= 2'h2;
        end else begin
          commitStateQueue_0_2 <= _GEN_2197;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h2 == _T_281) begin
          commitStateQueue_0_2 <= 2'h2;
        end else begin
          commitStateQueue_0_2 <= _GEN_2197;
        end
      end else begin
        commitStateQueue_0_2 <= _GEN_2197;
      end
    end else begin
      commitStateQueue_0_2 <= _GEN_2133;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h3 == _T_278) begin
          commitStateQueue_7_3 <= 2'h2;
        end else begin
          commitStateQueue_7_3 <= _GEN_2254;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h3 == _T_281) begin
          commitStateQueue_7_3 <= 2'h2;
        end else begin
          commitStateQueue_7_3 <= _GEN_2254;
        end
      end else begin
        commitStateQueue_7_3 <= _GEN_2254;
      end
    end else begin
      commitStateQueue_7_3 <= _GEN_2190;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h3 == _T_278) begin
          commitStateQueue_6_3 <= 2'h2;
        end else begin
          commitStateQueue_6_3 <= _GEN_2246;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h3 == _T_281) begin
          commitStateQueue_6_3 <= 2'h2;
        end else begin
          commitStateQueue_6_3 <= _GEN_2246;
        end
      end else begin
        commitStateQueue_6_3 <= _GEN_2246;
      end
    end else begin
      commitStateQueue_6_3 <= _GEN_2182;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h3 == _T_278) begin
          commitStateQueue_5_3 <= 2'h2;
        end else begin
          commitStateQueue_5_3 <= _GEN_2238;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h3 == _T_281) begin
          commitStateQueue_5_3 <= 2'h2;
        end else begin
          commitStateQueue_5_3 <= _GEN_2238;
        end
      end else begin
        commitStateQueue_5_3 <= _GEN_2238;
      end
    end else begin
      commitStateQueue_5_3 <= _GEN_2174;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h3 == _T_278) begin
          commitStateQueue_4_3 <= 2'h2;
        end else begin
          commitStateQueue_4_3 <= _GEN_2230;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h3 == _T_281) begin
          commitStateQueue_4_3 <= 2'h2;
        end else begin
          commitStateQueue_4_3 <= _GEN_2230;
        end
      end else begin
        commitStateQueue_4_3 <= _GEN_2230;
      end
    end else begin
      commitStateQueue_4_3 <= _GEN_2166;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h3 == _T_278) begin
          commitStateQueue_3_3 <= 2'h2;
        end else begin
          commitStateQueue_3_3 <= _GEN_2222;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h3 == _T_281) begin
          commitStateQueue_3_3 <= 2'h2;
        end else begin
          commitStateQueue_3_3 <= _GEN_2222;
        end
      end else begin
        commitStateQueue_3_3 <= _GEN_2222;
      end
    end else begin
      commitStateQueue_3_3 <= _GEN_2158;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h3 == _T_278) begin
          commitStateQueue_2_3 <= 2'h2;
        end else begin
          commitStateQueue_2_3 <= _GEN_2214;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h3 == _T_281) begin
          commitStateQueue_2_3 <= 2'h2;
        end else begin
          commitStateQueue_2_3 <= _GEN_2214;
        end
      end else begin
        commitStateQueue_2_3 <= _GEN_2214;
      end
    end else begin
      commitStateQueue_2_3 <= _GEN_2150;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h3 == _T_278) begin
          commitStateQueue_1_3 <= 2'h2;
        end else begin
          commitStateQueue_1_3 <= _GEN_2206;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h3 == _T_281) begin
          commitStateQueue_1_3 <= 2'h2;
        end else begin
          commitStateQueue_1_3 <= _GEN_2206;
        end
      end else begin
        commitStateQueue_1_3 <= _GEN_2206;
      end
    end else begin
      commitStateQueue_1_3 <= _GEN_2142;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_3 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h3 == _T_278) begin
          commitStateQueue_0_3 <= 2'h2;
        end else begin
          commitStateQueue_0_3 <= _GEN_2198;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h3 == _T_281) begin
          commitStateQueue_0_3 <= 2'h2;
        end else begin
          commitStateQueue_0_3 <= _GEN_2198;
        end
      end else begin
        commitStateQueue_0_3 <= _GEN_2198;
      end
    end else begin
      commitStateQueue_0_3 <= _GEN_2134;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h4 == _T_278) begin
          commitStateQueue_7_4 <= 2'h2;
        end else begin
          commitStateQueue_7_4 <= _GEN_2255;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h4 == _T_281) begin
          commitStateQueue_7_4 <= 2'h2;
        end else begin
          commitStateQueue_7_4 <= _GEN_2255;
        end
      end else begin
        commitStateQueue_7_4 <= _GEN_2255;
      end
    end else begin
      commitStateQueue_7_4 <= _GEN_2191;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h4 == _T_278) begin
          commitStateQueue_6_4 <= 2'h2;
        end else begin
          commitStateQueue_6_4 <= _GEN_2247;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h4 == _T_281) begin
          commitStateQueue_6_4 <= 2'h2;
        end else begin
          commitStateQueue_6_4 <= _GEN_2247;
        end
      end else begin
        commitStateQueue_6_4 <= _GEN_2247;
      end
    end else begin
      commitStateQueue_6_4 <= _GEN_2183;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h4 == _T_278) begin
          commitStateQueue_5_4 <= 2'h2;
        end else begin
          commitStateQueue_5_4 <= _GEN_2239;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h4 == _T_281) begin
          commitStateQueue_5_4 <= 2'h2;
        end else begin
          commitStateQueue_5_4 <= _GEN_2239;
        end
      end else begin
        commitStateQueue_5_4 <= _GEN_2239;
      end
    end else begin
      commitStateQueue_5_4 <= _GEN_2175;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h4 == _T_278) begin
          commitStateQueue_4_4 <= 2'h2;
        end else begin
          commitStateQueue_4_4 <= _GEN_2231;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h4 == _T_281) begin
          commitStateQueue_4_4 <= 2'h2;
        end else begin
          commitStateQueue_4_4 <= _GEN_2231;
        end
      end else begin
        commitStateQueue_4_4 <= _GEN_2231;
      end
    end else begin
      commitStateQueue_4_4 <= _GEN_2167;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h4 == _T_278) begin
          commitStateQueue_3_4 <= 2'h2;
        end else begin
          commitStateQueue_3_4 <= _GEN_2223;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h4 == _T_281) begin
          commitStateQueue_3_4 <= 2'h2;
        end else begin
          commitStateQueue_3_4 <= _GEN_2223;
        end
      end else begin
        commitStateQueue_3_4 <= _GEN_2223;
      end
    end else begin
      commitStateQueue_3_4 <= _GEN_2159;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h4 == _T_278) begin
          commitStateQueue_2_4 <= 2'h2;
        end else begin
          commitStateQueue_2_4 <= _GEN_2215;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h4 == _T_281) begin
          commitStateQueue_2_4 <= 2'h2;
        end else begin
          commitStateQueue_2_4 <= _GEN_2215;
        end
      end else begin
        commitStateQueue_2_4 <= _GEN_2215;
      end
    end else begin
      commitStateQueue_2_4 <= _GEN_2151;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h4 == _T_278) begin
          commitStateQueue_1_4 <= 2'h2;
        end else begin
          commitStateQueue_1_4 <= _GEN_2207;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h4 == _T_281) begin
          commitStateQueue_1_4 <= 2'h2;
        end else begin
          commitStateQueue_1_4 <= _GEN_2207;
        end
      end else begin
        commitStateQueue_1_4 <= _GEN_2207;
      end
    end else begin
      commitStateQueue_1_4 <= _GEN_2143;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_4 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h4 == _T_278) begin
          commitStateQueue_0_4 <= 2'h2;
        end else begin
          commitStateQueue_0_4 <= _GEN_2199;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h4 == _T_281) begin
          commitStateQueue_0_4 <= 2'h2;
        end else begin
          commitStateQueue_0_4 <= _GEN_2199;
        end
      end else begin
        commitStateQueue_0_4 <= _GEN_2199;
      end
    end else begin
      commitStateQueue_0_4 <= _GEN_2135;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h5 == _T_278) begin
          commitStateQueue_7_5 <= 2'h2;
        end else begin
          commitStateQueue_7_5 <= _GEN_2256;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h5 == _T_281) begin
          commitStateQueue_7_5 <= 2'h2;
        end else begin
          commitStateQueue_7_5 <= _GEN_2256;
        end
      end else begin
        commitStateQueue_7_5 <= _GEN_2256;
      end
    end else begin
      commitStateQueue_7_5 <= _GEN_2192;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h5 == _T_278) begin
          commitStateQueue_6_5 <= 2'h2;
        end else begin
          commitStateQueue_6_5 <= _GEN_2248;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h5 == _T_281) begin
          commitStateQueue_6_5 <= 2'h2;
        end else begin
          commitStateQueue_6_5 <= _GEN_2248;
        end
      end else begin
        commitStateQueue_6_5 <= _GEN_2248;
      end
    end else begin
      commitStateQueue_6_5 <= _GEN_2184;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h5 == _T_278) begin
          commitStateQueue_5_5 <= 2'h2;
        end else begin
          commitStateQueue_5_5 <= _GEN_2240;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h5 == _T_281) begin
          commitStateQueue_5_5 <= 2'h2;
        end else begin
          commitStateQueue_5_5 <= _GEN_2240;
        end
      end else begin
        commitStateQueue_5_5 <= _GEN_2240;
      end
    end else begin
      commitStateQueue_5_5 <= _GEN_2176;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h5 == _T_278) begin
          commitStateQueue_4_5 <= 2'h2;
        end else begin
          commitStateQueue_4_5 <= _GEN_2232;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h5 == _T_281) begin
          commitStateQueue_4_5 <= 2'h2;
        end else begin
          commitStateQueue_4_5 <= _GEN_2232;
        end
      end else begin
        commitStateQueue_4_5 <= _GEN_2232;
      end
    end else begin
      commitStateQueue_4_5 <= _GEN_2168;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h5 == _T_278) begin
          commitStateQueue_3_5 <= 2'h2;
        end else begin
          commitStateQueue_3_5 <= _GEN_2224;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h5 == _T_281) begin
          commitStateQueue_3_5 <= 2'h2;
        end else begin
          commitStateQueue_3_5 <= _GEN_2224;
        end
      end else begin
        commitStateQueue_3_5 <= _GEN_2224;
      end
    end else begin
      commitStateQueue_3_5 <= _GEN_2160;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h5 == _T_278) begin
          commitStateQueue_2_5 <= 2'h2;
        end else begin
          commitStateQueue_2_5 <= _GEN_2216;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h5 == _T_281) begin
          commitStateQueue_2_5 <= 2'h2;
        end else begin
          commitStateQueue_2_5 <= _GEN_2216;
        end
      end else begin
        commitStateQueue_2_5 <= _GEN_2216;
      end
    end else begin
      commitStateQueue_2_5 <= _GEN_2152;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h5 == _T_278) begin
          commitStateQueue_1_5 <= 2'h2;
        end else begin
          commitStateQueue_1_5 <= _GEN_2208;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h5 == _T_281) begin
          commitStateQueue_1_5 <= 2'h2;
        end else begin
          commitStateQueue_1_5 <= _GEN_2208;
        end
      end else begin
        commitStateQueue_1_5 <= _GEN_2208;
      end
    end else begin
      commitStateQueue_1_5 <= _GEN_2144;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_5 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h5 == _T_278) begin
          commitStateQueue_0_5 <= 2'h2;
        end else begin
          commitStateQueue_0_5 <= _GEN_2200;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h5 == _T_281) begin
          commitStateQueue_0_5 <= 2'h2;
        end else begin
          commitStateQueue_0_5 <= _GEN_2200;
        end
      end else begin
        commitStateQueue_0_5 <= _GEN_2200;
      end
    end else begin
      commitStateQueue_0_5 <= _GEN_2136;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h6 == _T_278) begin
          commitStateQueue_7_6 <= 2'h2;
        end else begin
          commitStateQueue_7_6 <= _GEN_2257;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h6 == _T_281) begin
          commitStateQueue_7_6 <= 2'h2;
        end else begin
          commitStateQueue_7_6 <= _GEN_2257;
        end
      end else begin
        commitStateQueue_7_6 <= _GEN_2257;
      end
    end else begin
      commitStateQueue_7_6 <= _GEN_2193;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h6 == _T_278) begin
          commitStateQueue_6_6 <= 2'h2;
        end else begin
          commitStateQueue_6_6 <= _GEN_2249;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h6 == _T_281) begin
          commitStateQueue_6_6 <= 2'h2;
        end else begin
          commitStateQueue_6_6 <= _GEN_2249;
        end
      end else begin
        commitStateQueue_6_6 <= _GEN_2249;
      end
    end else begin
      commitStateQueue_6_6 <= _GEN_2185;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h6 == _T_278) begin
          commitStateQueue_5_6 <= 2'h2;
        end else begin
          commitStateQueue_5_6 <= _GEN_2241;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h6 == _T_281) begin
          commitStateQueue_5_6 <= 2'h2;
        end else begin
          commitStateQueue_5_6 <= _GEN_2241;
        end
      end else begin
        commitStateQueue_5_6 <= _GEN_2241;
      end
    end else begin
      commitStateQueue_5_6 <= _GEN_2177;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h6 == _T_278) begin
          commitStateQueue_4_6 <= 2'h2;
        end else begin
          commitStateQueue_4_6 <= _GEN_2233;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h6 == _T_281) begin
          commitStateQueue_4_6 <= 2'h2;
        end else begin
          commitStateQueue_4_6 <= _GEN_2233;
        end
      end else begin
        commitStateQueue_4_6 <= _GEN_2233;
      end
    end else begin
      commitStateQueue_4_6 <= _GEN_2169;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h6 == _T_278) begin
          commitStateQueue_3_6 <= 2'h2;
        end else begin
          commitStateQueue_3_6 <= _GEN_2225;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h6 == _T_281) begin
          commitStateQueue_3_6 <= 2'h2;
        end else begin
          commitStateQueue_3_6 <= _GEN_2225;
        end
      end else begin
        commitStateQueue_3_6 <= _GEN_2225;
      end
    end else begin
      commitStateQueue_3_6 <= _GEN_2161;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h6 == _T_278) begin
          commitStateQueue_2_6 <= 2'h2;
        end else begin
          commitStateQueue_2_6 <= _GEN_2217;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h6 == _T_281) begin
          commitStateQueue_2_6 <= 2'h2;
        end else begin
          commitStateQueue_2_6 <= _GEN_2217;
        end
      end else begin
        commitStateQueue_2_6 <= _GEN_2217;
      end
    end else begin
      commitStateQueue_2_6 <= _GEN_2153;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h6 == _T_278) begin
          commitStateQueue_1_6 <= 2'h2;
        end else begin
          commitStateQueue_1_6 <= _GEN_2209;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h6 == _T_281) begin
          commitStateQueue_1_6 <= 2'h2;
        end else begin
          commitStateQueue_1_6 <= _GEN_2209;
        end
      end else begin
        commitStateQueue_1_6 <= _GEN_2209;
      end
    end else begin
      commitStateQueue_1_6 <= _GEN_2145;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_6 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h6 == _T_278) begin
          commitStateQueue_0_6 <= 2'h2;
        end else begin
          commitStateQueue_0_6 <= _GEN_2201;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h6 == _T_281) begin
          commitStateQueue_0_6 <= 2'h2;
        end else begin
          commitStateQueue_0_6 <= _GEN_2201;
        end
      end else begin
        commitStateQueue_0_6 <= _GEN_2201;
      end
    end else begin
      commitStateQueue_0_6 <= _GEN_2137;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_7_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3641 & 3'h7 == _T_278) begin
          commitStateQueue_7_7 <= 2'h2;
        end else begin
          commitStateQueue_7_7 <= _GEN_2258;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3641 & 3'h7 == _T_281) begin
          commitStateQueue_7_7 <= 2'h2;
        end else begin
          commitStateQueue_7_7 <= _GEN_2258;
        end
      end else begin
        commitStateQueue_7_7 <= _GEN_2258;
      end
    end else begin
      commitStateQueue_7_7 <= _GEN_2194;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_6_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3625 & 3'h7 == _T_278) begin
          commitStateQueue_6_7 <= 2'h2;
        end else begin
          commitStateQueue_6_7 <= _GEN_2250;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3625 & 3'h7 == _T_281) begin
          commitStateQueue_6_7 <= 2'h2;
        end else begin
          commitStateQueue_6_7 <= _GEN_2250;
        end
      end else begin
        commitStateQueue_6_7 <= _GEN_2250;
      end
    end else begin
      commitStateQueue_6_7 <= _GEN_2186;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_5_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3609 & 3'h7 == _T_278) begin
          commitStateQueue_5_7 <= 2'h2;
        end else begin
          commitStateQueue_5_7 <= _GEN_2242;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3609 & 3'h7 == _T_281) begin
          commitStateQueue_5_7 <= 2'h2;
        end else begin
          commitStateQueue_5_7 <= _GEN_2242;
        end
      end else begin
        commitStateQueue_5_7 <= _GEN_2242;
      end
    end else begin
      commitStateQueue_5_7 <= _GEN_2178;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_4_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3593 & 3'h7 == _T_278) begin
          commitStateQueue_4_7 <= 2'h2;
        end else begin
          commitStateQueue_4_7 <= _GEN_2234;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3593 & 3'h7 == _T_281) begin
          commitStateQueue_4_7 <= 2'h2;
        end else begin
          commitStateQueue_4_7 <= _GEN_2234;
        end
      end else begin
        commitStateQueue_4_7 <= _GEN_2234;
      end
    end else begin
      commitStateQueue_4_7 <= _GEN_2170;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_3_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3577 & 3'h7 == _T_278) begin
          commitStateQueue_3_7 <= 2'h2;
        end else begin
          commitStateQueue_3_7 <= _GEN_2226;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3577 & 3'h7 == _T_281) begin
          commitStateQueue_3_7 <= 2'h2;
        end else begin
          commitStateQueue_3_7 <= _GEN_2226;
        end
      end else begin
        commitStateQueue_3_7 <= _GEN_2226;
      end
    end else begin
      commitStateQueue_3_7 <= _GEN_2162;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_2_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3561 & 3'h7 == _T_278) begin
          commitStateQueue_2_7 <= 2'h2;
        end else begin
          commitStateQueue_2_7 <= _GEN_2218;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3561 & 3'h7 == _T_281) begin
          commitStateQueue_2_7 <= 2'h2;
        end else begin
          commitStateQueue_2_7 <= _GEN_2218;
        end
      end else begin
        commitStateQueue_2_7 <= _GEN_2218;
      end
    end else begin
      commitStateQueue_2_7 <= _GEN_2154;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_1_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3545 & 3'h7 == _T_278) begin
          commitStateQueue_1_7 <= 2'h2;
        end else begin
          commitStateQueue_1_7 <= _GEN_2210;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3545 & 3'h7 == _T_281) begin
          commitStateQueue_1_7 <= 2'h2;
        end else begin
          commitStateQueue_1_7 <= _GEN_2210;
        end
      end else begin
        commitStateQueue_1_7 <= _GEN_2210;
      end
    end else begin
      commitStateQueue_1_7 <= _GEN_2146;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1087:19]
      commitStateQueue_0_7 <= 2'h0; // @[NewFtq.scala 1091:40 1092:{71,71} 1093:45 1094:{71,71}]
    end else if (io_fromBackend_rob_commits_1_valid) begin
      if (io_fromBackend_rob_commits_1_bits_commitType == 3'h4) begin
        if (_GEN_3529 & 3'h7 == _T_278) begin
          commitStateQueue_0_7 <= 2'h2;
        end else begin
          commitStateQueue_0_7 <= _GEN_2202;
        end
      end else if (io_fromBackend_rob_commits_1_bits_commitType == 3'h5) begin
        if (_GEN_3529 & 3'h7 == _T_281) begin
          commitStateQueue_0_7 <= 2'h2;
        end else begin
          commitStateQueue_0_7 <= _GEN_2202;
        end
      end else begin
        commitStateQueue_0_7 <= _GEN_2202;
      end
    end else begin
      commitStateQueue_0_7 <= _GEN_2138;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_0 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_0 <= _GEN_697; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h0 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_1 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_1 <= _GEN_698; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h1 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_2 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_2 <= _GEN_699; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h2 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_2 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_3 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_3 <= _GEN_700; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h3 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_3 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_4 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_4 <= _GEN_701; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h4 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_4 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_5 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_5 <= _GEN_702; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h5 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_5 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_6 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_6 <= _GEN_703; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h6 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_6 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 796:60]
      entry_fetch_status_7 <= 1'h1;
    end else if (_T_42 & ~ifu_req_should_be_flushed) begin // @[NewFtq.scala 600:28]
      entry_fetch_status_7 <= _GEN_704; // @[NewFtq.scala 583:35 601:{47,47}]
    end else if (last_cycle_bpu_in) begin // @[NewFtq.scala 583:35]
      if (3'h7 == last_cycle_bpu_in_ptr_value) begin
        entry_fetch_status_7 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_0 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h0 == wb_idx_reg) begin
        entry_hit_status_0 <= 2'h1;
      end else begin
        entry_hit_status_0 <= _GEN_689;
      end
    end else begin
      entry_hit_status_0 <= _GEN_689;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_1 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h1 == wb_idx_reg) begin
        entry_hit_status_1 <= 2'h1;
      end else begin
        entry_hit_status_1 <= _GEN_690;
      end
    end else begin
      entry_hit_status_1 <= _GEN_690;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_2 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h2 == wb_idx_reg) begin
        entry_hit_status_2 <= 2'h1;
      end else begin
        entry_hit_status_2 <= _GEN_691;
      end
    end else begin
      entry_hit_status_2 <= _GEN_691;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_3 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h3 == wb_idx_reg) begin
        entry_hit_status_3 <= 2'h1;
      end else begin
        entry_hit_status_3 <= _GEN_692;
      end
    end else begin
      entry_hit_status_3 <= _GEN_692;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_4 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h4 == wb_idx_reg) begin
        entry_hit_status_4 <= 2'h1;
      end else begin
        entry_hit_status_4 <= _GEN_693;
      end
    end else begin
      entry_hit_status_4 <= _GEN_693;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_5 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h5 == wb_idx_reg) begin
        entry_hit_status_5 <= 2'h1;
      end else begin
        entry_hit_status_5 <= _GEN_694;
      end
    end else begin
      entry_hit_status_5 <= _GEN_694;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_6 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h6 == wb_idx_reg) begin
        entry_hit_status_6 <= 2'h1;
      end else begin
        entry_hit_status_6 <= _GEN_695;
      end
    end else begin
      entry_hit_status_6 <= _GEN_695;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 867:24]
      entry_hit_status_7 <= 2'h0; // @[NewFtq.scala 868:{34,34}]
    end else if (has_false_hit) begin
      if (3'h7 == wb_idx_reg) begin
        entry_hit_status_7 <= 2'h1;
      end else begin
        entry_hit_status_7 <= _GEN_696;
      end
    end else begin
      entry_hit_status_7 <= _GEN_696;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 814:37]
      hit_pd_mispred_reg <= 1'h0;
    end else begin
      hit_pd_mispred_reg <= hit_pd_valid & io_fromIfu_pdWb_bits_misOffset_valid;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 937:31]
      ifuRedirectReg_bits_ftqIdx_flag <= 1'h0; // @[NewFtq.scala 937:31]
    end else begin
      ifuRedirectReg_bits_ftqIdx_flag <= io_fromIfu_pdWb_bits_ftqIdx_flag; // @[NewFtq.scala 937:31]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 937:31]
      ifuRedirectReg_bits_ftqIdx_value <= 3'h0; // @[NewFtq.scala 937:31]
    end else begin
      ifuRedirectReg_bits_ftqIdx_value <= io_fromIfu_pdWb_bits_ftqIdx_value; // @[NewFtq.scala 937:31]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 937:31]
      ifuRedirectReg_bits_ftqOffset <= 3'h0; // @[NewFtq.scala 937:31]
    end else begin
      ifuRedirectReg_bits_ftqOffset <= io_fromIfu_pdWb_bits_misOffset_bits; // @[NewFtq.scala 937:31]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 930:27]
      ifuRedirectReg_bits_cfiUpdate_pc <= 39'h0; // @[NewFtq.scala 930:27]
    end else if (3'h7 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 930:27]
      ifuRedirectReg_bits_cfiUpdate_pc <= io_fromIfu_pdWb_bits_pc_7; // @[NewFtq.scala 930:27]
    end else if (3'h6 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 930:27]
      ifuRedirectReg_bits_cfiUpdate_pc <= io_fromIfu_pdWb_bits_pc_6; // @[NewFtq.scala 930:27]
    end else if (3'h5 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 930:27]
      ifuRedirectReg_bits_cfiUpdate_pc <= io_fromIfu_pdWb_bits_pc_5; // @[NewFtq.scala 930:27]
    end else if (3'h4 == io_fromIfu_pdWb_bits_misOffset_bits) begin
      ifuRedirectReg_bits_cfiUpdate_pc <= io_fromIfu_pdWb_bits_pc_4;
    end else begin
      ifuRedirectReg_bits_cfiUpdate_pc <= _GEN_1035;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRVC <= 1'h0; // @[NewFtq.scala 931:27]
    end else if (3'h7 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRVC <= io_fromIfu_pdWb_bits_pd_7_isRVC; // @[NewFtq.scala 931:27]
    end else if (3'h6 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRVC <= io_fromIfu_pdWb_bits_pd_6_isRVC; // @[NewFtq.scala 931:27]
    end else if (3'h5 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRVC <= io_fromIfu_pdWb_bits_pd_5_isRVC; // @[NewFtq.scala 931:27]
    end else if (3'h4 == io_fromIfu_pdWb_bits_misOffset_bits) begin
      ifuRedirectReg_bits_cfiUpdate_pd_isRVC <= io_fromIfu_pdWb_bits_pd_4_isRVC;
    end else begin
      ifuRedirectReg_bits_cfiUpdate_pd_isRVC <= _GEN_1051;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isCall <= 1'h0; // @[NewFtq.scala 931:27]
    end else if (3'h7 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isCall <= io_fromIfu_pdWb_bits_pd_7_isCall; // @[NewFtq.scala 931:27]
    end else if (3'h6 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isCall <= io_fromIfu_pdWb_bits_pd_6_isCall; // @[NewFtq.scala 931:27]
    end else if (3'h5 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isCall <= io_fromIfu_pdWb_bits_pd_5_isCall; // @[NewFtq.scala 931:27]
    end else if (3'h4 == io_fromIfu_pdWb_bits_misOffset_bits) begin
      ifuRedirectReg_bits_cfiUpdate_pd_isCall <= io_fromIfu_pdWb_bits_pd_4_isCall;
    end else begin
      ifuRedirectReg_bits_cfiUpdate_pd_isCall <= _GEN_1067;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRet <= 1'h0; // @[NewFtq.scala 931:27]
    end else if (3'h7 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRet <= io_fromIfu_pdWb_bits_pd_7_isRet; // @[NewFtq.scala 931:27]
    end else if (3'h6 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRet <= io_fromIfu_pdWb_bits_pd_6_isRet; // @[NewFtq.scala 931:27]
    end else if (3'h5 == io_fromIfu_pdWb_bits_misOffset_bits) begin // @[NewFtq.scala 931:27]
      ifuRedirectReg_bits_cfiUpdate_pd_isRet <= io_fromIfu_pdWb_bits_pd_5_isRet; // @[NewFtq.scala 931:27]
    end else if (3'h4 == io_fromIfu_pdWb_bits_misOffset_bits) begin
      ifuRedirectReg_bits_cfiUpdate_pd_isRet <= io_fromIfu_pdWb_bits_pd_4_isRet;
    end else begin
      ifuRedirectReg_bits_cfiUpdate_pd_isRet <= _GEN_1075;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 937:31]
      ifuRedirectReg_bits_cfiUpdate_target <= 39'h0; // @[NewFtq.scala 937:31]
    end else begin
      ifuRedirectReg_bits_cfiUpdate_target <= io_fromIfu_pdWb_bits_target; // @[NewFtq.scala 937:31]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 937:31]
      ifuRedirectReg_bits_cfiUpdate_taken <= 1'h0; // @[NewFtq.scala 937:31]
    end else begin
      ifuRedirectReg_bits_cfiUpdate_taken <= io_fromIfu_pdWb_bits_cfiOffset_valid; // @[NewFtq.scala 937:31]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 937:31]
      ifuRedirectReg_bits_BTBMissBubble <= 1'h0; // @[NewFtq.scala 937:31]
    end else begin
      ifuRedirectReg_bits_BTBMissBubble <= 1'h1; // @[NewFtq.scala 937:31]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1116:65]
      do_commit <= 1'h0;
    end else begin
      do_commit <= _canCommit_T_2 & ~may_have_stall_from_bpu & _canCommit_T_30;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1278:53]
      prefetchPtr_flag <= 1'h0; // @[NewFtq.scala 1281:19]
    end else if (_T_232) begin // @[NewFtq.scala 1259:75]
      prefetchPtr_flag <= next_flag; // @[NewFtq.scala 1260:19]
    end else if (bpu_s3_redirect & ~_T_306) begin // @[NewFtq.scala 1255:75]
      prefetchPtr_flag <= io_fromBpu_resp_bits_s3_ftq_idx_flag; // @[NewFtq.scala 1256:19]
    end else if (bpu_s2_redirect & ~_T_303) begin // @[NewFtq.scala 1245:28]
      prefetchPtr_flag <= io_fromBpu_resp_bits_s2_ftq_idx_flag;
    end else if (prefetch_too_late) begin // @[NewFtq.scala 1242:17]
      prefetchPtr_flag <= _GEN_2963;
    end else begin
      prefetchPtr_flag <= prefetchPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[NewFtq.scala 1278:53]
      prefetchPtr_value <= 3'h0; // @[NewFtq.scala 1281:19]
    end else if (_T_232) begin // @[NewFtq.scala 1259:75]
      prefetchPtr_value <= next_value; // @[NewFtq.scala 1260:19]
    end else if (bpu_s3_redirect & ~_T_306) begin // @[NewFtq.scala 1255:75]
      prefetchPtr_value <= io_fromBpu_resp_bits_s3_ftq_idx_value; // @[NewFtq.scala 1256:19]
    end else if (bpu_s2_redirect & ~_T_303) begin // @[NewFtq.scala 1245:28]
      prefetchPtr_value <= io_fromBpu_resp_bits_s2_ftq_idx_value;
    end else if (prefetch_too_late) begin // @[NewFtq.scala 1242:17]
      prefetchPtr_value <= _GEN_2964;
    end else begin
      prefetchPtr_value <= prefetchPtr_new_ptr_value;
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
  topdown_stage_reasons_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  topdown_stage_reasons_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  topdown_stage_reasons_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  topdown_stage_reasons_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  topdown_stage_reasons_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  topdown_stage_reasons_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  topdown_stage_reasons_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  topdown_stage_reasons_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  topdown_stage_reasons_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  topdown_stage_reasons_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  topdown_stage_reasons_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  topdown_stage_reasons_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  topdown_stage_reasons_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  topdown_stage_reasons_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  topdown_stage_reasons_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  topdown_stage_reasons_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  topdown_stage_reasons_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  topdown_stage_reasons_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  topdown_stage_reasons_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  topdown_stage_reasons_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  topdown_stage_reasons_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  topdown_stage_reasons_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  topdown_stage_reasons_22 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  topdown_stage_reasons_23 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  topdown_stage_reasons_24 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  topdown_stage_reasons_25 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  topdown_stage_reasons_26 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  topdown_stage_reasons_27 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  topdown_stage_reasons_28 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  topdown_stage_reasons_29 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  topdown_stage_reasons_30 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  topdown_stage_reasons_31 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  topdown_stage_reasons_32 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  topdown_stage_reasons_33 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  topdown_stage_reasons_34 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  topdown_stage_reasons_35 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  topdown_stage_reasons_36 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  topdown_stage_stallWidth = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  backendRedirectReg_valid = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  backendRedirectReg_bits_ftqIdx_flag = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  backendRedirectReg_bits_ftqIdx_value = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  backendRedirectReg_bits_ftqOffset = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  backendRedirectReg_bits_level = _RAND_42[0:0];
  _RAND_43 = {2{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_pc = _RAND_43[38:0];
  _RAND_44 = {1{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_pd_isRVC = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_pd_brType = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_pd_isCall = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_pd_isRet = _RAND_47[0:0];
  _RAND_48 = {2{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_target = _RAND_48[38:0];
  _RAND_49 = {1{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_taken = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  backendRedirectReg_bits_cfiUpdate_isMisPred = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  backendRedirectReg_bits_debugIsCtrl = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  backendRedirectReg_bits_debugIsMemVio = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  backendFlush_REG = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  ifuRedirectReg_valid = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  bpuPtr_flag = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  bpuPtr_value = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  ifuPtr_flag = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  ifuPtr_value = _RAND_58[2:0];
  _RAND_59 = {1{`RANDOM}};
  ifuWbPtr_flag = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  ifuWbPtr_value = _RAND_60[2:0];
  _RAND_61 = {1{`RANDOM}};
  commPtr_flag = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  commPtr_value = _RAND_62[2:0];
  _RAND_63 = {1{`RANDOM}};
  ifuPtrPlus1_flag = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  ifuPtrPlus1_value = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  ifuPtrPlus2_flag = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  ifuPtrPlus2_value = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  commPtrPlus1_flag = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  commPtrPlus1_value = _RAND_68[2:0];
  _RAND_69 = {1{`RANDOM}};
  copied_ifu_ptr_0_flag = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  copied_ifu_ptr_0_value = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  copied_ifu_ptr_1_flag = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  copied_ifu_ptr_1_value = _RAND_72[2:0];
  _RAND_73 = {1{`RANDOM}};
  copied_ifu_ptr_2_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  copied_ifu_ptr_2_value = _RAND_74[2:0];
  _RAND_75 = {1{`RANDOM}};
  copied_ifu_ptr_3_flag = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  copied_ifu_ptr_3_value = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  copied_ifu_ptr_4_flag = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  copied_ifu_ptr_4_value = _RAND_78[2:0];
  _RAND_79 = {1{`RANDOM}};
  copied_bpu_ptr_0_flag = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  copied_bpu_ptr_0_value = _RAND_80[2:0];
  _RAND_81 = {1{`RANDOM}};
  copied_bpu_ptr_1_flag = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  copied_bpu_ptr_1_value = _RAND_82[2:0];
  _RAND_83 = {1{`RANDOM}};
  copied_bpu_ptr_2_flag = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  copied_bpu_ptr_2_value = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  bpu_ftb_update_stall = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  commitStateQueue_7_0 = _RAND_86[1:0];
  _RAND_87 = {1{`RANDOM}};
  commitStateQueue_6_0 = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  commitStateQueue_5_0 = _RAND_88[1:0];
  _RAND_89 = {1{`RANDOM}};
  commitStateQueue_4_0 = _RAND_89[1:0];
  _RAND_90 = {1{`RANDOM}};
  commitStateQueue_3_0 = _RAND_90[1:0];
  _RAND_91 = {1{`RANDOM}};
  commitStateQueue_2_0 = _RAND_91[1:0];
  _RAND_92 = {1{`RANDOM}};
  commitStateQueue_1_0 = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  commitStateQueue_0_0 = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  commitStateQueue_7_1 = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  commitStateQueue_6_1 = _RAND_95[1:0];
  _RAND_96 = {1{`RANDOM}};
  commitStateQueue_5_1 = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  commitStateQueue_4_1 = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  commitStateQueue_3_1 = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  commitStateQueue_2_1 = _RAND_99[1:0];
  _RAND_100 = {1{`RANDOM}};
  commitStateQueue_1_1 = _RAND_100[1:0];
  _RAND_101 = {1{`RANDOM}};
  commitStateQueue_0_1 = _RAND_101[1:0];
  _RAND_102 = {1{`RANDOM}};
  commitStateQueue_7_2 = _RAND_102[1:0];
  _RAND_103 = {1{`RANDOM}};
  commitStateQueue_6_2 = _RAND_103[1:0];
  _RAND_104 = {1{`RANDOM}};
  commitStateQueue_5_2 = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  commitStateQueue_4_2 = _RAND_105[1:0];
  _RAND_106 = {1{`RANDOM}};
  commitStateQueue_3_2 = _RAND_106[1:0];
  _RAND_107 = {1{`RANDOM}};
  commitStateQueue_2_2 = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  commitStateQueue_1_2 = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  commitStateQueue_0_2 = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  commitStateQueue_7_3 = _RAND_110[1:0];
  _RAND_111 = {1{`RANDOM}};
  commitStateQueue_6_3 = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  commitStateQueue_5_3 = _RAND_112[1:0];
  _RAND_113 = {1{`RANDOM}};
  commitStateQueue_4_3 = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  commitStateQueue_3_3 = _RAND_114[1:0];
  _RAND_115 = {1{`RANDOM}};
  commitStateQueue_2_3 = _RAND_115[1:0];
  _RAND_116 = {1{`RANDOM}};
  commitStateQueue_1_3 = _RAND_116[1:0];
  _RAND_117 = {1{`RANDOM}};
  commitStateQueue_0_3 = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  commitStateQueue_7_4 = _RAND_118[1:0];
  _RAND_119 = {1{`RANDOM}};
  commitStateQueue_6_4 = _RAND_119[1:0];
  _RAND_120 = {1{`RANDOM}};
  commitStateQueue_5_4 = _RAND_120[1:0];
  _RAND_121 = {1{`RANDOM}};
  commitStateQueue_4_4 = _RAND_121[1:0];
  _RAND_122 = {1{`RANDOM}};
  commitStateQueue_3_4 = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  commitStateQueue_2_4 = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  commitStateQueue_1_4 = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  commitStateQueue_0_4 = _RAND_125[1:0];
  _RAND_126 = {1{`RANDOM}};
  commitStateQueue_7_5 = _RAND_126[1:0];
  _RAND_127 = {1{`RANDOM}};
  commitStateQueue_6_5 = _RAND_127[1:0];
  _RAND_128 = {1{`RANDOM}};
  commitStateQueue_5_5 = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  commitStateQueue_4_5 = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  commitStateQueue_3_5 = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  commitStateQueue_2_5 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  commitStateQueue_1_5 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  commitStateQueue_0_5 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  commitStateQueue_7_6 = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  commitStateQueue_6_6 = _RAND_135[1:0];
  _RAND_136 = {1{`RANDOM}};
  commitStateQueue_5_6 = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  commitStateQueue_4_6 = _RAND_137[1:0];
  _RAND_138 = {1{`RANDOM}};
  commitStateQueue_3_6 = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  commitStateQueue_2_6 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  commitStateQueue_1_6 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  commitStateQueue_0_6 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  commitStateQueue_7_7 = _RAND_142[1:0];
  _RAND_143 = {1{`RANDOM}};
  commitStateQueue_6_7 = _RAND_143[1:0];
  _RAND_144 = {1{`RANDOM}};
  commitStateQueue_5_7 = _RAND_144[1:0];
  _RAND_145 = {1{`RANDOM}};
  commitStateQueue_4_7 = _RAND_145[1:0];
  _RAND_146 = {1{`RANDOM}};
  commitStateQueue_3_7 = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  commitStateQueue_2_7 = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  commitStateQueue_1_7 = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  commitStateQueue_0_7 = _RAND_149[1:0];
  _RAND_150 = {2{`RANDOM}};
  newest_entry_target = _RAND_150[38:0];
  _RAND_151 = {1{`RANDOM}};
  newest_entry_ptr_flag = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  newest_entry_ptr_value = _RAND_152[2:0];
  _RAND_153 = {1{`RANDOM}};
  cfiIndex_vec_0_valid = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  cfiIndex_vec_0_bits = _RAND_154[2:0];
  _RAND_155 = {1{`RANDOM}};
  cfiIndex_vec_1_valid = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  cfiIndex_vec_1_bits = _RAND_156[2:0];
  _RAND_157 = {1{`RANDOM}};
  cfiIndex_vec_2_valid = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  cfiIndex_vec_2_bits = _RAND_158[2:0];
  _RAND_159 = {1{`RANDOM}};
  cfiIndex_vec_3_valid = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  cfiIndex_vec_3_bits = _RAND_160[2:0];
  _RAND_161 = {1{`RANDOM}};
  cfiIndex_vec_4_valid = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  cfiIndex_vec_4_bits = _RAND_162[2:0];
  _RAND_163 = {1{`RANDOM}};
  cfiIndex_vec_5_valid = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  cfiIndex_vec_5_bits = _RAND_164[2:0];
  _RAND_165 = {1{`RANDOM}};
  cfiIndex_vec_6_valid = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  cfiIndex_vec_6_bits = _RAND_166[2:0];
  _RAND_167 = {1{`RANDOM}};
  cfiIndex_vec_7_valid = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  cfiIndex_vec_7_bits = _RAND_168[2:0];
  _RAND_169 = {1{`RANDOM}};
  mispredict_vec_0_0 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  mispredict_vec_0_1 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  mispredict_vec_0_2 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  mispredict_vec_0_3 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  mispredict_vec_0_4 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  mispredict_vec_0_5 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  mispredict_vec_0_6 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  mispredict_vec_0_7 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  mispredict_vec_1_0 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  mispredict_vec_1_1 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  mispredict_vec_1_2 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  mispredict_vec_1_3 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  mispredict_vec_1_4 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  mispredict_vec_1_5 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  mispredict_vec_1_6 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  mispredict_vec_1_7 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  mispredict_vec_2_0 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  mispredict_vec_2_1 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  mispredict_vec_2_2 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  mispredict_vec_2_3 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  mispredict_vec_2_4 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  mispredict_vec_2_5 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  mispredict_vec_2_6 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  mispredict_vec_2_7 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  mispredict_vec_3_0 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  mispredict_vec_3_1 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  mispredict_vec_3_2 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  mispredict_vec_3_3 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  mispredict_vec_3_4 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  mispredict_vec_3_5 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  mispredict_vec_3_6 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  mispredict_vec_3_7 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  mispredict_vec_4_0 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  mispredict_vec_4_1 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  mispredict_vec_4_2 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  mispredict_vec_4_3 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  mispredict_vec_4_4 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  mispredict_vec_4_5 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  mispredict_vec_4_6 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  mispredict_vec_4_7 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  mispredict_vec_5_0 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  mispredict_vec_5_1 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  mispredict_vec_5_2 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  mispredict_vec_5_3 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  mispredict_vec_5_4 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  mispredict_vec_5_5 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  mispredict_vec_5_6 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  mispredict_vec_5_7 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  mispredict_vec_6_0 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  mispredict_vec_6_1 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  mispredict_vec_6_2 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  mispredict_vec_6_3 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  mispredict_vec_6_4 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  mispredict_vec_6_5 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  mispredict_vec_6_6 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  mispredict_vec_6_7 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  mispredict_vec_7_0 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  mispredict_vec_7_1 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  mispredict_vec_7_2 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  mispredict_vec_7_3 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  mispredict_vec_7_4 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  mispredict_vec_7_5 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  mispredict_vec_7_6 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  mispredict_vec_7_7 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  entry_fetch_status_0 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  entry_fetch_status_1 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  entry_fetch_status_2 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  entry_fetch_status_3 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  entry_fetch_status_4 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  entry_fetch_status_5 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  entry_fetch_status_6 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  entry_fetch_status_7 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  entry_hit_status_0 = _RAND_241[1:0];
  _RAND_242 = {1{`RANDOM}};
  entry_hit_status_1 = _RAND_242[1:0];
  _RAND_243 = {1{`RANDOM}};
  entry_hit_status_2 = _RAND_243[1:0];
  _RAND_244 = {1{`RANDOM}};
  entry_hit_status_3 = _RAND_244[1:0];
  _RAND_245 = {1{`RANDOM}};
  entry_hit_status_4 = _RAND_245[1:0];
  _RAND_246 = {1{`RANDOM}};
  entry_hit_status_5 = _RAND_246[1:0];
  _RAND_247 = {1{`RANDOM}};
  entry_hit_status_6 = _RAND_247[1:0];
  _RAND_248 = {1{`RANDOM}};
  entry_hit_status_7 = _RAND_248[1:0];
  _RAND_249 = {1{`RANDOM}};
  last_cycle_bpu_in = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  last_cycle_bpu_in_ptr_flag = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  last_cycle_bpu_in_ptr_value = _RAND_251[2:0];
  _RAND_252 = {2{`RANDOM}};
  last_cycle_bpu_target = _RAND_252[38:0];
  _RAND_253 = {1{`RANDOM}};
  last_cycle_cfiIndex_valid = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  last_cycle_cfiIndex_bits = _RAND_254[2:0];
  _RAND_255 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_REG = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_REG_1 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_REG_2 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_REG_5 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_REG_6 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_ptr_for_ftq_REG_value = _RAND_260[2:0];
  _RAND_261 = {1{`RANDOM}};
  copied_last_cycle_bpu_in_ptr_for_ftq_REG_1_value = _RAND_261[2:0];
  _RAND_262 = {1{`RANDOM}};
  REG = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  REG_1 = _RAND_263[2:0];
  _RAND_264 = {1{`RANDOM}};
  io_toBackend_newest_entry_ptr_REG_flag = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  io_toBackend_newest_entry_ptr_REG_value = _RAND_265[2:0];
  _RAND_266 = {2{`RANDOM}};
  io_toBackend_newest_entry_target_REG = _RAND_266[38:0];
  _RAND_267 = {2{`RANDOM}};
  bpu_in_bypass_buf_startAddr = _RAND_267[38:0];
  _RAND_268 = {2{`RANDOM}};
  bpu_in_bypass_buf_nextLineAddr = _RAND_268[38:0];
  _RAND_269 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_0 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_1 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_2 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_3 = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_4 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_5 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_6 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  bpu_in_bypass_buf_isNextMask_7 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  bpu_in_bypass_buf_fallThruError = _RAND_277[0:0];
  _RAND_278 = {2{`RANDOM}};
  copied_bpu_in_bypass_buf_rstartAddr = _RAND_278[38:0];
  _RAND_279 = {2{`RANDOM}};
  copied_bpu_in_bypass_buf_rnextLineAddr = _RAND_279[38:0];
  _RAND_280 = {2{`RANDOM}};
  copied_bpu_in_bypass_buf_r1_startAddr = _RAND_280[38:0];
  _RAND_281 = {2{`RANDOM}};
  copied_bpu_in_bypass_buf_r1_nextLineAddr = _RAND_281[38:0];
  _RAND_282 = {2{`RANDOM}};
  copied_bpu_in_bypass_buf_r2_startAddr = _RAND_282[38:0];
  _RAND_283 = {2{`RANDOM}};
  copied_bpu_in_bypass_buf_r2_nextLineAddr = _RAND_283[38:0];
  _RAND_284 = {1{`RANDOM}};
  bpu_in_bypass_ptr_flag = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  bpu_in_bypass_ptr_value = _RAND_285[2:0];
  _RAND_286 = {1{`RANDOM}};
  last_cycle_to_ifu_fire = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  copied_bpu_in_bypass_ptr_REG_flag = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  copied_bpu_in_bypass_ptr_REG_value = _RAND_288[2:0];
  _RAND_289 = {1{`RANDOM}};
  copied_bpu_in_bypass_ptr_REG_1_flag = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  copied_bpu_in_bypass_ptr_REG_1_value = _RAND_290[2:0];
  _RAND_291 = {1{`RANDOM}};
  copied_bpu_in_bypass_ptr_REG_2_flag = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  copied_bpu_in_bypass_ptr_REG_2_value = _RAND_292[2:0];
  _RAND_293 = {1{`RANDOM}};
  copied_last_cycle_to_ifu_fire_REG = _RAND_293[0:0];
  _RAND_294 = {1{`RANDOM}};
  copied_last_cycle_to_ifu_fire_REG_1 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  copied_last_cycle_to_ifu_fire_REG_2 = _RAND_295[0:0];
  _RAND_296 = {2{`RANDOM}};
  pc_mem_ifu_ptr_rdata_REG_startAddr = _RAND_296[38:0];
  _RAND_297 = {2{`RANDOM}};
  pc_mem_ifu_ptr_rdata_REG_nextLineAddr = _RAND_297[38:0];
  _RAND_298 = {2{`RANDOM}};
  pc_mem_ifu_ptr_rdata_REG_1_startAddr = _RAND_298[38:0];
  _RAND_299 = {2{`RANDOM}};
  pc_mem_ifu_ptr_rdata_REG_1_nextLineAddr = _RAND_299[38:0];
  _RAND_300 = {2{`RANDOM}};
  pc_mem_ifu_ptr_rdata_REG_2_startAddr = _RAND_300[38:0];
  _RAND_301 = {2{`RANDOM}};
  pc_mem_ifu_ptr_rdata_REG_2_nextLineAddr = _RAND_301[38:0];
  _RAND_302 = {2{`RANDOM}};
  pc_mem_ifu_plus1_rdata_REG_startAddr = _RAND_302[38:0];
  _RAND_303 = {2{`RANDOM}};
  pc_mem_ifu_plus1_rdata_REG_nextLineAddr = _RAND_303[38:0];
  _RAND_304 = {2{`RANDOM}};
  pc_mem_ifu_plus1_rdata_REG_1_startAddr = _RAND_304[38:0];
  _RAND_305 = {2{`RANDOM}};
  pc_mem_ifu_plus1_rdata_REG_1_nextLineAddr = _RAND_305[38:0];
  _RAND_306 = {2{`RANDOM}};
  pc_mem_ifu_plus1_rdata_REG_2_startAddr = _RAND_306[38:0];
  _RAND_307 = {2{`RANDOM}};
  pc_mem_ifu_plus1_rdata_REG_2_nextLineAddr = _RAND_307[38:0];
  _RAND_308 = {1{`RANDOM}};
  copied_ifu_plus1_to_send_REG = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  copied_ifu_plus1_to_send_REG_1 = _RAND_309[0:0];
  _RAND_310 = {1{`RANDOM}};
  copied_ifu_plus1_to_send_REG_2 = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  copied_ifu_plus1_to_send_REG_3 = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  copied_ifu_plus1_to_send_REG_4 = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  copied_ifu_plus1_to_send_REG_5 = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  copied_ifu_ptr_to_send_REG = _RAND_314[0:0];
  _RAND_315 = {1{`RANDOM}};
  copied_ifu_ptr_to_send_REG_1 = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  copied_ifu_ptr_to_send_REG_2 = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  copied_ifu_ptr_to_send_REG_3 = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  copied_ifu_ptr_to_send_REG_4 = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  copied_ifu_ptr_to_send_REG_5 = _RAND_319[0:0];
  _RAND_320 = {2{`RANDOM}};
  toIfuPcBundle_REG_startAddr = _RAND_320[38:0];
  _RAND_321 = {2{`RANDOM}};
  toIfuPcBundle_REG_nextLineAddr = _RAND_321[38:0];
  _RAND_322 = {1{`RANDOM}};
  toIfuPcBundle_REG_fallThruError = _RAND_322[0:0];
  _RAND_323 = {1{`RANDOM}};
  entry_is_to_send_REG = _RAND_323[0:0];
  _RAND_324 = {1{`RANDOM}};
  entry_is_to_send_REG_1 = _RAND_324[0:0];
  _RAND_325 = {2{`RANDOM}};
  entry_next_addr_REG = _RAND_325[38:0];
  _RAND_326 = {2{`RANDOM}};
  toIfuPcBundle_REG_1_startAddr = _RAND_326[38:0];
  _RAND_327 = {2{`RANDOM}};
  toIfuPcBundle_REG_1_nextLineAddr = _RAND_327[38:0];
  _RAND_328 = {1{`RANDOM}};
  toIfuPcBundle_REG_1_fallThruError = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  entry_is_to_send_REG_2 = _RAND_329[0:0];
  _RAND_330 = {1{`RANDOM}};
  entry_is_to_send_REG_3 = _RAND_330[0:0];
  _RAND_331 = {2{`RANDOM}};
  entry_next_addr_REG_1 = _RAND_331[38:0];
  _RAND_332 = {1{`RANDOM}};
  hit_pd_mispred_reg = _RAND_332[0:0];
  _RAND_333 = {1{`RANDOM}};
  pd_reg_0_valid = _RAND_333[0:0];
  _RAND_334 = {1{`RANDOM}};
  pd_reg_0_brType = _RAND_334[1:0];
  _RAND_335 = {1{`RANDOM}};
  pd_reg_0_isCall = _RAND_335[0:0];
  _RAND_336 = {1{`RANDOM}};
  pd_reg_0_isRet = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  pd_reg_1_valid = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  pd_reg_1_brType = _RAND_338[1:0];
  _RAND_339 = {1{`RANDOM}};
  pd_reg_1_isCall = _RAND_339[0:0];
  _RAND_340 = {1{`RANDOM}};
  pd_reg_1_isRet = _RAND_340[0:0];
  _RAND_341 = {1{`RANDOM}};
  pd_reg_2_valid = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  pd_reg_2_brType = _RAND_342[1:0];
  _RAND_343 = {1{`RANDOM}};
  pd_reg_2_isCall = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  pd_reg_2_isRet = _RAND_344[0:0];
  _RAND_345 = {1{`RANDOM}};
  pd_reg_3_valid = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  pd_reg_3_brType = _RAND_346[1:0];
  _RAND_347 = {1{`RANDOM}};
  pd_reg_3_isCall = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  pd_reg_3_isRet = _RAND_348[0:0];
  _RAND_349 = {1{`RANDOM}};
  pd_reg_4_valid = _RAND_349[0:0];
  _RAND_350 = {1{`RANDOM}};
  pd_reg_4_brType = _RAND_350[1:0];
  _RAND_351 = {1{`RANDOM}};
  pd_reg_4_isCall = _RAND_351[0:0];
  _RAND_352 = {1{`RANDOM}};
  pd_reg_4_isRet = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  pd_reg_5_valid = _RAND_353[0:0];
  _RAND_354 = {1{`RANDOM}};
  pd_reg_5_brType = _RAND_354[1:0];
  _RAND_355 = {1{`RANDOM}};
  pd_reg_5_isCall = _RAND_355[0:0];
  _RAND_356 = {1{`RANDOM}};
  pd_reg_5_isRet = _RAND_356[0:0];
  _RAND_357 = {1{`RANDOM}};
  pd_reg_6_valid = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  pd_reg_6_brType = _RAND_358[1:0];
  _RAND_359 = {1{`RANDOM}};
  pd_reg_6_isCall = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  pd_reg_6_isRet = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  pd_reg_7_valid = _RAND_361[0:0];
  _RAND_362 = {1{`RANDOM}};
  pd_reg_7_brType = _RAND_362[1:0];
  _RAND_363 = {1{`RANDOM}};
  pd_reg_7_isCall = _RAND_363[0:0];
  _RAND_364 = {1{`RANDOM}};
  pd_reg_7_isRet = _RAND_364[0:0];
  _RAND_365 = {1{`RANDOM}};
  wb_idx_reg = _RAND_365[2:0];
  _RAND_366 = {1{`RANDOM}};
  REG_2 = _RAND_366[0:0];
  _RAND_367 = {1{`RANDOM}};
  io_toBackend_pc_mem_wen_REG = _RAND_367[0:0];
  _RAND_368 = {1{`RANDOM}};
  io_toBackend_pc_mem_waddr_REG = _RAND_368[2:0];
  _RAND_369 = {2{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_startAddr = _RAND_369[38:0];
  _RAND_370 = {2{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_nextLineAddr = _RAND_370[38:0];
  _RAND_371 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_0 = _RAND_371[0:0];
  _RAND_372 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_1 = _RAND_372[0:0];
  _RAND_373 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_2 = _RAND_373[0:0];
  _RAND_374 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_3 = _RAND_374[0:0];
  _RAND_375 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_4 = _RAND_375[0:0];
  _RAND_376 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_5 = _RAND_376[0:0];
  _RAND_377 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_6 = _RAND_377[0:0];
  _RAND_378 = {1{`RANDOM}};
  io_toBackend_pc_mem_wdata_REG_isNextMask_7 = _RAND_378[0:0];
  _RAND_379 = {1{`RANDOM}};
  ifuRedirectReg_bits_ftqIdx_flag = _RAND_379[0:0];
  _RAND_380 = {1{`RANDOM}};
  ifuRedirectReg_bits_ftqIdx_value = _RAND_380[2:0];
  _RAND_381 = {1{`RANDOM}};
  ifuRedirectReg_bits_ftqOffset = _RAND_381[2:0];
  _RAND_382 = {2{`RANDOM}};
  ifuRedirectReg_bits_cfiUpdate_pc = _RAND_382[38:0];
  _RAND_383 = {1{`RANDOM}};
  ifuRedirectReg_bits_cfiUpdate_pd_isRVC = _RAND_383[0:0];
  _RAND_384 = {1{`RANDOM}};
  ifuRedirectReg_bits_cfiUpdate_pd_isCall = _RAND_384[0:0];
  _RAND_385 = {1{`RANDOM}};
  ifuRedirectReg_bits_cfiUpdate_pd_isRet = _RAND_385[0:0];
  _RAND_386 = {2{`RANDOM}};
  ifuRedirectReg_bits_cfiUpdate_target = _RAND_386[38:0];
  _RAND_387 = {1{`RANDOM}};
  ifuRedirectReg_bits_cfiUpdate_taken = _RAND_387[0:0];
  _RAND_388 = {1{`RANDOM}};
  ifuRedirectReg_bits_BTBMissBubble = _RAND_388[0:0];
  _RAND_389 = {1{`RANDOM}};
  REG_4 = _RAND_389[0:0];
  _RAND_390 = {1{`RANDOM}};
  REG_5 = _RAND_390[0:0];
  _RAND_391 = {1{`RANDOM}};
  REG_6 = _RAND_391[2:0];
  _RAND_392 = {1{`RANDOM}};
  REG_8 = _RAND_392[2:0];
  _RAND_393 = {1{`RANDOM}};
  REG_9 = _RAND_393[0:0];
  _RAND_394 = {1{`RANDOM}};
  REG_10 = _RAND_394[2:0];
  _RAND_395 = {1{`RANDOM}};
  REG_11 = _RAND_395[2:0];
  _RAND_396 = {1{`RANDOM}};
  REG_12 = _RAND_396[0:0];
  _RAND_397 = {1{`RANDOM}};
  REG_13 = _RAND_397[2:0];
  _RAND_398 = {1{`RANDOM}};
  REG_14 = _RAND_398[2:0];
  _RAND_399 = {1{`RANDOM}};
  REG_15 = _RAND_399[0:0];
  _RAND_400 = {1{`RANDOM}};
  REG_16 = _RAND_400[2:0];
  _RAND_401 = {1{`RANDOM}};
  REG_17 = _RAND_401[2:0];
  _RAND_402 = {1{`RANDOM}};
  REG_18 = _RAND_402[0:0];
  _RAND_403 = {1{`RANDOM}};
  REG_19 = _RAND_403[2:0];
  _RAND_404 = {1{`RANDOM}};
  REG_20 = _RAND_404[2:0];
  _RAND_405 = {1{`RANDOM}};
  REG_21 = _RAND_405[0:0];
  _RAND_406 = {1{`RANDOM}};
  REG_22 = _RAND_406[2:0];
  _RAND_407 = {1{`RANDOM}};
  REG_23 = _RAND_407[2:0];
  _RAND_408 = {1{`RANDOM}};
  REG_24 = _RAND_408[0:0];
  _RAND_409 = {1{`RANDOM}};
  REG_25 = _RAND_409[2:0];
  _RAND_410 = {1{`RANDOM}};
  REG_26 = _RAND_410[2:0];
  _RAND_411 = {1{`RANDOM}};
  REG_27 = _RAND_411[0:0];
  _RAND_412 = {1{`RANDOM}};
  REG_28 = _RAND_412[2:0];
  _RAND_413 = {1{`RANDOM}};
  REG_29 = _RAND_413[2:0];
  _RAND_414 = {1{`RANDOM}};
  REG_30 = _RAND_414[0:0];
  _RAND_415 = {1{`RANDOM}};
  io_mmioCommitRead_mmioLastCommit_REG = _RAND_415[0:0];
  _RAND_416 = {2{`RANDOM}};
  commit_pc_bundle_startAddr = _RAND_416[38:0];
  _RAND_417 = {1{`RANDOM}};
  commit_target_REG = _RAND_417[0:0];
  _RAND_418 = {2{`RANDOM}};
  commit_target_REG_1 = _RAND_418[38:0];
  _RAND_419 = {2{`RANDOM}};
  commit_target_REG_2 = _RAND_419[38:0];
  _RAND_420 = {1{`RANDOM}};
  do_commit = _RAND_420[0:0];
  _RAND_421 = {1{`RANDOM}};
  commit_state_0 = _RAND_421[1:0];
  _RAND_422 = {1{`RANDOM}};
  commit_state_1 = _RAND_422[1:0];
  _RAND_423 = {1{`RANDOM}};
  commit_state_2 = _RAND_423[1:0];
  _RAND_424 = {1{`RANDOM}};
  commit_state_3 = _RAND_424[1:0];
  _RAND_425 = {1{`RANDOM}};
  commit_state_4 = _RAND_425[1:0];
  _RAND_426 = {1{`RANDOM}};
  commit_state_5 = _RAND_426[1:0];
  _RAND_427 = {1{`RANDOM}};
  commit_state_6 = _RAND_427[1:0];
  _RAND_428 = {1{`RANDOM}};
  commit_state_7 = _RAND_428[1:0];
  _RAND_429 = {1{`RANDOM}};
  commit_cfi_valid = _RAND_429[0:0];
  _RAND_430 = {1{`RANDOM}};
  commit_cfi_bits = _RAND_430[2:0];
  _RAND_431 = {1{`RANDOM}};
  commit_mispredict_REG_0 = _RAND_431[0:0];
  _RAND_432 = {1{`RANDOM}};
  commit_mispredict_REG_1 = _RAND_432[0:0];
  _RAND_433 = {1{`RANDOM}};
  commit_mispredict_REG_2 = _RAND_433[0:0];
  _RAND_434 = {1{`RANDOM}};
  commit_mispredict_REG_3 = _RAND_434[0:0];
  _RAND_435 = {1{`RANDOM}};
  commit_mispredict_REG_4 = _RAND_435[0:0];
  _RAND_436 = {1{`RANDOM}};
  commit_mispredict_REG_5 = _RAND_436[0:0];
  _RAND_437 = {1{`RANDOM}};
  commit_mispredict_REG_6 = _RAND_437[0:0];
  _RAND_438 = {1{`RANDOM}};
  commit_mispredict_REG_7 = _RAND_438[0:0];
  _RAND_439 = {1{`RANDOM}};
  commit_hit = _RAND_439[1:0];
  _RAND_440 = {1{`RANDOM}};
  prefetchPtr_flag = _RAND_440[0:0];
  _RAND_441 = {1{`RANDOM}};
  prefetchPtr_value = _RAND_441[2:0];
  _RAND_442 = {2{`RANDOM}};
  prefetch_addr_REG = _RAND_442[38:0];
  _RAND_443 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_443[0:0];
  _RAND_444 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_444[0:0];
  _RAND_445 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_445[0:0];
  _RAND_446 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_446[0:0];
  _RAND_447 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_447[0:0];
  _RAND_448 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_448[0:0];
  _RAND_449 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_449[0:0];
  _RAND_450 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_450[0:0];
  _RAND_451 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_451[0:0];
  _RAND_452 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_452[0:0];
  _RAND_453 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_453[0:0];
  _RAND_454 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_454[0:0];
  _RAND_455 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_455[0:0];
  _RAND_456 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_456[0:0];
  _RAND_457 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_457[0:0];
  _RAND_458 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_458[0:0];
  _RAND_459 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_459[3:0];
  _RAND_460 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_460[3:0];
  _RAND_461 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_461[3:0];
  _RAND_462 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_462[3:0];
  _RAND_463 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_463[3:0];
  _RAND_464 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_464[3:0];
  _RAND_465 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_465[3:0];
  _RAND_466 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_466[3:0];
  _RAND_467 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_467[3:0];
  _RAND_468 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_468[3:0];
  _RAND_469 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_469[3:0];
  _RAND_470 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_470[3:0];
  _RAND_471 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_471[3:0];
  _RAND_472 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_472[3:0];
  _RAND_473 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_473[3:0];
  _RAND_474 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_474[3:0];
  _RAND_475 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_475[3:0];
  _RAND_476 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_476[3:0];
  _RAND_477 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_477[3:0];
  _RAND_478 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_478[3:0];
  _RAND_479 = {1{`RANDOM}};
  io_perf_18_value_REG = _RAND_479[3:0];
  _RAND_480 = {1{`RANDOM}};
  io_perf_18_value_REG_1 = _RAND_480[3:0];
  _RAND_481 = {1{`RANDOM}};
  io_perf_19_value_REG = _RAND_481[3:0];
  _RAND_482 = {1{`RANDOM}};
  io_perf_19_value_REG_1 = _RAND_482[3:0];
  _RAND_483 = {1{`RANDOM}};
  io_perf_20_value_REG = _RAND_483[3:0];
  _RAND_484 = {1{`RANDOM}};
  io_perf_20_value_REG_1 = _RAND_484[3:0];
  _RAND_485 = {1{`RANDOM}};
  io_perf_21_value_REG = _RAND_485[3:0];
  _RAND_486 = {1{`RANDOM}};
  io_perf_21_value_REG_1 = _RAND_486[3:0];
  _RAND_487 = {1{`RANDOM}};
  io_perf_22_value_REG = _RAND_487[0:0];
  _RAND_488 = {1{`RANDOM}};
  io_perf_22_value_REG_1 = _RAND_488[0:0];
  _RAND_489 = {1{`RANDOM}};
  io_perf_23_value_REG = _RAND_489[0:0];
  _RAND_490 = {1{`RANDOM}};
  io_perf_23_value_REG_1 = _RAND_490[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    topdown_stage_reasons_0 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_1 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_2 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_3 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_4 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_5 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_6 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_7 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_8 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_9 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_10 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_11 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_12 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_13 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_14 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_15 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_16 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_17 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_18 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_19 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_20 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_21 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_22 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_23 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_24 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_25 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_26 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_27 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_28 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_29 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_30 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_31 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_32 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_33 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_34 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_35 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_36 = 1'h0;
  end
  if (reset) begin
    topdown_stage_stallWidth = 3'h0;
  end
  if (reset) begin
    ifuRedirectReg_valid = 1'h0;
  end
  if (reset) begin
    bpuPtr_flag = 1'h0;
  end
  if (reset) begin
    bpuPtr_value = 3'h0;
  end
  if (reset) begin
    ifuPtr_flag = 1'h0;
  end
  if (reset) begin
    ifuPtr_value = 3'h0;
  end
  if (reset) begin
    ifuWbPtr_flag = 1'h0;
  end
  if (reset) begin
    ifuWbPtr_value = 3'h0;
  end
  if (reset) begin
    commPtr_flag = 1'h0;
  end
  if (reset) begin
    commPtr_value = 3'h0;
  end
  if (reset) begin
    ifuPtrPlus1_flag = 1'h0;
  end
  if (reset) begin
    ifuPtrPlus1_value = 3'h1;
  end
  if (reset) begin
    ifuPtrPlus2_flag = 1'h0;
  end
  if (reset) begin
    ifuPtrPlus2_value = 3'h2;
  end
  if (reset) begin
    commPtrPlus1_flag = 1'h0;
  end
  if (reset) begin
    commPtrPlus1_value = 3'h1;
  end
  if (reset) begin
    copied_ifu_ptr_0_flag = 1'h0;
  end
  if (reset) begin
    copied_ifu_ptr_0_value = 3'h0;
  end
  if (reset) begin
    copied_ifu_ptr_1_flag = 1'h0;
  end
  if (reset) begin
    copied_ifu_ptr_1_value = 3'h0;
  end
  if (reset) begin
    copied_ifu_ptr_2_flag = 1'h0;
  end
  if (reset) begin
    copied_ifu_ptr_2_value = 3'h0;
  end
  if (reset) begin
    copied_ifu_ptr_3_flag = 1'h0;
  end
  if (reset) begin
    copied_ifu_ptr_3_value = 3'h0;
  end
  if (reset) begin
    copied_ifu_ptr_4_flag = 1'h0;
  end
  if (reset) begin
    copied_ifu_ptr_4_value = 3'h0;
  end
  if (reset) begin
    copied_bpu_ptr_0_flag = 1'h0;
  end
  if (reset) begin
    copied_bpu_ptr_0_value = 3'h0;
  end
  if (reset) begin
    copied_bpu_ptr_1_flag = 1'h0;
  end
  if (reset) begin
    copied_bpu_ptr_1_value = 3'h0;
  end
  if (reset) begin
    copied_bpu_ptr_2_flag = 1'h0;
  end
  if (reset) begin
    copied_bpu_ptr_2_value = 3'h0;
  end
  if (reset) begin
    bpu_ftb_update_stall = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_0 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_1 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_2 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_3 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_4 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_5 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_6 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_7_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_6_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_5_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_4_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_3_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_2_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_1_7 = 2'h0;
  end
  if (reset) begin
    commitStateQueue_0_7 = 2'h0;
  end
  if (reset) begin
    entry_fetch_status_0 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_1 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_2 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_3 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_4 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_5 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_6 = 1'h1;
  end
  if (reset) begin
    entry_fetch_status_7 = 1'h1;
  end
  if (reset) begin
    entry_hit_status_0 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_1 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_2 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_3 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_4 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_5 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_6 = 2'h0;
  end
  if (reset) begin
    entry_hit_status_7 = 2'h0;
  end
  if (reset) begin
    hit_pd_mispred_reg = 1'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_ftqIdx_flag = 1'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_ftqIdx_value = 3'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_ftqOffset = 3'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_cfiUpdate_pc = 39'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_cfiUpdate_pd_isRVC = 1'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_cfiUpdate_pd_isCall = 1'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_cfiUpdate_pd_isRet = 1'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_cfiUpdate_target = 39'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_cfiUpdate_taken = 1'h0;
  end
  if (reset) begin
    ifuRedirectReg_bits_BTBMissBubble = 1'h0;
  end
  if (reset) begin
    do_commit = 1'h0;
  end
  if (reset) begin
    prefetchPtr_flag = 1'h0;
  end
  if (reset) begin
    prefetchPtr_value = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

