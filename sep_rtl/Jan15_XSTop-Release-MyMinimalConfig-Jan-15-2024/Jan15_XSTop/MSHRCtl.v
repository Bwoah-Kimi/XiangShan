module MSHRCtl(
  input          clock,
  input          reset,
  output         io_toReqArb_blockA_s1,
  output         io_toReqArb_blockB_s1,
  input          io_fromMainPipe_mshr_alloc_s3_valid,
  input          io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit,
  input  [21:0]  io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag,
  input  [6:0]   io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set,
  input  [2:0]   io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way,
  input          io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty,
  input  [1:0]   io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state,
  input          io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients,
  input          io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack,
  input          io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp,
  input  [2:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_channel,
  input  [6:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_set,
  input  [21:0]  io_fromMainPipe_mshr_alloc_s3_bits_task_tag,
  input  [5:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_off,
  input  [2:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_opcode,
  input  [2:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_param,
  input  [2:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_size,
  input  [4:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId,
  input          io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData,
  input  [3:0]   io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource,
  output [7:0]   io_toMainPipe_mshr_alloc_ptr,
  input          io_mshrTask_ready,
  output         io_mshrTask_valid,
  output [2:0]   io_mshrTask_bits_channel,
  output [6:0]   io_mshrTask_bits_set,
  output [21:0]  io_mshrTask_bits_tag,
  output [5:0]   io_mshrTask_bits_off,
  output [2:0]   io_mshrTask_bits_opcode,
  output [2:0]   io_mshrTask_bits_param,
  output [2:0]   io_mshrTask_bits_size,
  output [4:0]   io_mshrTask_bits_sourceId,
  output         io_mshrTask_bits_mshrTask,
  output [7:0]   io_mshrTask_bits_mshrId,
  output         io_mshrTask_bits_useProbeData,
  output         io_mshrTask_bits_dirty,
  output [2:0]   io_mshrTask_bits_way,
  output         io_mshrTask_bits_meta_dirty,
  output [1:0]   io_mshrTask_bits_meta_state,
  output         io_mshrTask_bits_meta_clients,
  output         io_mshrTask_bits_meta_accessed,
  output         io_mshrTask_bits_metaWen,
  output         io_mshrTask_bits_tagWen,
  output         io_mshrTask_bits_dsWen,
  output [7:0]   io_mshrTask_bits_wayMask,
  output         io_mshrTask_bits_replTask,
  output [3:0]   io_mshrTask_bits_reqSource,
  input          io_sourceA_ready,
  output         io_sourceA_valid,
  output [2:0]   io_sourceA_bits_opcode,
  output [2:0]   io_sourceA_bits_param,
  output [2:0]   io_sourceA_bits_size,
  output [7:0]   io_sourceA_bits_source,
  output [35:0]  io_sourceA_bits_address,
  output         io_sourceA_bits_echo_blockisdirty,
  output [31:0]  io_sourceA_bits_mask,
  output [255:0] io_sourceA_bits_data,
  output         io_sourceA_bits_corrupt,
  input          io_sourceB_ready,
  output         io_sourceB_valid,
  output [2:0]   io_sourceB_bits_opcode,
  output [1:0]   io_sourceB_bits_param,
  output [35:0]  io_sourceB_bits_address,
  input          io_grantStatus_0_valid,
  input  [6:0]   io_grantStatus_0_set,
  input  [21:0]  io_grantStatus_0_tag,
  input          io_grantStatus_1_valid,
  input  [6:0]   io_grantStatus_1_set,
  input  [21:0]  io_grantStatus_1_tag,
  input          io_grantStatus_2_valid,
  input  [6:0]   io_grantStatus_2_set,
  input  [21:0]  io_grantStatus_2_tag,
  input          io_grantStatus_3_valid,
  input  [6:0]   io_grantStatus_3_set,
  input  [21:0]  io_grantStatus_3_tag,
  input          io_grantStatus_4_valid,
  input  [6:0]   io_grantStatus_4_set,
  input  [21:0]  io_grantStatus_4_tag,
  input          io_grantStatus_5_valid,
  input  [6:0]   io_grantStatus_5_set,
  input  [21:0]  io_grantStatus_5_tag,
  input          io_grantStatus_6_valid,
  input  [6:0]   io_grantStatus_6_set,
  input  [21:0]  io_grantStatus_6_tag,
  input          io_grantStatus_7_valid,
  input  [6:0]   io_grantStatus_7_set,
  input  [21:0]  io_grantStatus_7_tag,
  input          io_grantStatus_8_valid,
  input  [6:0]   io_grantStatus_8_set,
  input  [21:0]  io_grantStatus_8_tag,
  input          io_grantStatus_9_valid,
  input  [6:0]   io_grantStatus_9_set,
  input  [21:0]  io_grantStatus_9_tag,
  input          io_grantStatus_10_valid,
  input  [6:0]   io_grantStatus_10_set,
  input  [21:0]  io_grantStatus_10_tag,
  input          io_grantStatus_11_valid,
  input  [6:0]   io_grantStatus_11_set,
  input  [21:0]  io_grantStatus_11_tag,
  input          io_grantStatus_12_valid,
  input  [6:0]   io_grantStatus_12_set,
  input  [21:0]  io_grantStatus_12_tag,
  input          io_grantStatus_13_valid,
  input  [6:0]   io_grantStatus_13_set,
  input  [21:0]  io_grantStatus_13_tag,
  input          io_grantStatus_14_valid,
  input  [6:0]   io_grantStatus_14_set,
  input  [21:0]  io_grantStatus_14_tag,
  input          io_grantStatus_15_valid,
  input  [6:0]   io_grantStatus_15_set,
  input  [21:0]  io_grantStatus_15_tag,
  input          io_resps_sinkC_valid,
  input  [6:0]   io_resps_sinkC_set,
  input  [21:0]  io_resps_sinkC_tag,
  input  [2:0]   io_resps_sinkC_respInfo_opcode,
  input  [2:0]   io_resps_sinkC_respInfo_param,
  input          io_resps_sinkC_respInfo_last,
  input          io_resps_sinkD_valid,
  input  [7:0]   io_resps_sinkD_mshrId,
  input  [2:0]   io_resps_sinkD_respInfo_opcode,
  input  [2:0]   io_resps_sinkD_respInfo_param,
  input          io_resps_sinkD_respInfo_last,
  input          io_resps_sinkD_respInfo_dirty,
  input          io_resps_sinkE_valid,
  input  [7:0]   io_resps_sinkE_mshrId,
  output [7:0]   io_releaseBufWriteId,
  input  [6:0]   io_nestedwb_set,
  input  [21:0]  io_nestedwb_tag,
  input          io_nestedwb_c_set_dirty,
  output         io_nestedwbDataId_valid,
  output [7:0]   io_nestedwbDataId_bits,
  input          io_pipeStatusVec_0_valid,
  input          io_pipeStatusVec_1_valid,
  output         io_msInfo_0_valid,
  output [6:0]   io_msInfo_0_bits_set,
  output [2:0]   io_msInfo_0_bits_way,
  output [21:0]  io_msInfo_0_bits_reqTag,
  output         io_msInfo_0_bits_willFree,
  output         io_msInfo_0_bits_needRelease,
  output         io_msInfo_0_bits_releaseNotSent,
  output [21:0]  io_msInfo_0_bits_metaTag,
  output         io_msInfo_0_bits_dirHit,
  output         io_msInfo_0_bits_nestB,
  output         io_msInfo_0_bits_mergeB,
  output         io_msInfo_0_bits_isAcqOrPrefetch,
  output         io_msInfo_0_bits_isPrefetch,
  output         io_msInfo_1_valid,
  output [6:0]   io_msInfo_1_bits_set,
  output [2:0]   io_msInfo_1_bits_way,
  output [21:0]  io_msInfo_1_bits_reqTag,
  output         io_msInfo_1_bits_willFree,
  output         io_msInfo_1_bits_needRelease,
  output         io_msInfo_1_bits_releaseNotSent,
  output [21:0]  io_msInfo_1_bits_metaTag,
  output         io_msInfo_1_bits_dirHit,
  output         io_msInfo_1_bits_nestB,
  output         io_msInfo_1_bits_mergeB,
  output         io_msInfo_1_bits_isAcqOrPrefetch,
  output         io_msInfo_1_bits_isPrefetch,
  output         io_msInfo_2_valid,
  output [6:0]   io_msInfo_2_bits_set,
  output [2:0]   io_msInfo_2_bits_way,
  output [21:0]  io_msInfo_2_bits_reqTag,
  output         io_msInfo_2_bits_willFree,
  output         io_msInfo_2_bits_needRelease,
  output         io_msInfo_2_bits_releaseNotSent,
  output [21:0]  io_msInfo_2_bits_metaTag,
  output         io_msInfo_2_bits_dirHit,
  output         io_msInfo_2_bits_nestB,
  output         io_msInfo_2_bits_mergeB,
  output         io_msInfo_2_bits_isAcqOrPrefetch,
  output         io_msInfo_2_bits_isPrefetch,
  output         io_msInfo_3_valid,
  output [6:0]   io_msInfo_3_bits_set,
  output [2:0]   io_msInfo_3_bits_way,
  output [21:0]  io_msInfo_3_bits_reqTag,
  output         io_msInfo_3_bits_willFree,
  output         io_msInfo_3_bits_needRelease,
  output         io_msInfo_3_bits_releaseNotSent,
  output [21:0]  io_msInfo_3_bits_metaTag,
  output         io_msInfo_3_bits_dirHit,
  output         io_msInfo_3_bits_nestB,
  output         io_msInfo_3_bits_mergeB,
  output         io_msInfo_3_bits_isAcqOrPrefetch,
  output         io_msInfo_3_bits_isPrefetch,
  output         io_msInfo_4_valid,
  output [6:0]   io_msInfo_4_bits_set,
  output [2:0]   io_msInfo_4_bits_way,
  output [21:0]  io_msInfo_4_bits_reqTag,
  output         io_msInfo_4_bits_willFree,
  output         io_msInfo_4_bits_needRelease,
  output         io_msInfo_4_bits_releaseNotSent,
  output [21:0]  io_msInfo_4_bits_metaTag,
  output         io_msInfo_4_bits_dirHit,
  output         io_msInfo_4_bits_nestB,
  output         io_msInfo_4_bits_mergeB,
  output         io_msInfo_4_bits_isAcqOrPrefetch,
  output         io_msInfo_4_bits_isPrefetch,
  output         io_msInfo_5_valid,
  output [6:0]   io_msInfo_5_bits_set,
  output [2:0]   io_msInfo_5_bits_way,
  output [21:0]  io_msInfo_5_bits_reqTag,
  output         io_msInfo_5_bits_willFree,
  output         io_msInfo_5_bits_needRelease,
  output         io_msInfo_5_bits_releaseNotSent,
  output [21:0]  io_msInfo_5_bits_metaTag,
  output         io_msInfo_5_bits_dirHit,
  output         io_msInfo_5_bits_nestB,
  output         io_msInfo_5_bits_mergeB,
  output         io_msInfo_5_bits_isAcqOrPrefetch,
  output         io_msInfo_5_bits_isPrefetch,
  output         io_msInfo_6_valid,
  output [6:0]   io_msInfo_6_bits_set,
  output [2:0]   io_msInfo_6_bits_way,
  output [21:0]  io_msInfo_6_bits_reqTag,
  output         io_msInfo_6_bits_willFree,
  output         io_msInfo_6_bits_needRelease,
  output         io_msInfo_6_bits_releaseNotSent,
  output [21:0]  io_msInfo_6_bits_metaTag,
  output         io_msInfo_6_bits_dirHit,
  output         io_msInfo_6_bits_nestB,
  output         io_msInfo_6_bits_mergeB,
  output         io_msInfo_6_bits_isAcqOrPrefetch,
  output         io_msInfo_6_bits_isPrefetch,
  output         io_msInfo_7_valid,
  output [6:0]   io_msInfo_7_bits_set,
  output [2:0]   io_msInfo_7_bits_way,
  output [21:0]  io_msInfo_7_bits_reqTag,
  output         io_msInfo_7_bits_willFree,
  output         io_msInfo_7_bits_needRelease,
  output         io_msInfo_7_bits_releaseNotSent,
  output [21:0]  io_msInfo_7_bits_metaTag,
  output         io_msInfo_7_bits_dirHit,
  output         io_msInfo_7_bits_nestB,
  output         io_msInfo_7_bits_mergeB,
  output         io_msInfo_7_bits_isAcqOrPrefetch,
  output         io_msInfo_7_bits_isPrefetch,
  output         io_msInfo_8_valid,
  output [6:0]   io_msInfo_8_bits_set,
  output [2:0]   io_msInfo_8_bits_way,
  output [21:0]  io_msInfo_8_bits_reqTag,
  output         io_msInfo_8_bits_willFree,
  output         io_msInfo_8_bits_needRelease,
  output         io_msInfo_8_bits_releaseNotSent,
  output [21:0]  io_msInfo_8_bits_metaTag,
  output         io_msInfo_8_bits_dirHit,
  output         io_msInfo_8_bits_nestB,
  output         io_msInfo_8_bits_mergeB,
  output         io_msInfo_8_bits_isAcqOrPrefetch,
  output         io_msInfo_8_bits_isPrefetch,
  output         io_msInfo_9_valid,
  output [6:0]   io_msInfo_9_bits_set,
  output [2:0]   io_msInfo_9_bits_way,
  output [21:0]  io_msInfo_9_bits_reqTag,
  output         io_msInfo_9_bits_willFree,
  output         io_msInfo_9_bits_needRelease,
  output         io_msInfo_9_bits_releaseNotSent,
  output [21:0]  io_msInfo_9_bits_metaTag,
  output         io_msInfo_9_bits_dirHit,
  output         io_msInfo_9_bits_nestB,
  output         io_msInfo_9_bits_mergeB,
  output         io_msInfo_9_bits_isAcqOrPrefetch,
  output         io_msInfo_9_bits_isPrefetch,
  output         io_msInfo_10_valid,
  output [6:0]   io_msInfo_10_bits_set,
  output [2:0]   io_msInfo_10_bits_way,
  output [21:0]  io_msInfo_10_bits_reqTag,
  output         io_msInfo_10_bits_willFree,
  output         io_msInfo_10_bits_needRelease,
  output         io_msInfo_10_bits_releaseNotSent,
  output [21:0]  io_msInfo_10_bits_metaTag,
  output         io_msInfo_10_bits_dirHit,
  output         io_msInfo_10_bits_nestB,
  output         io_msInfo_10_bits_mergeB,
  output         io_msInfo_10_bits_isAcqOrPrefetch,
  output         io_msInfo_10_bits_isPrefetch,
  output         io_msInfo_11_valid,
  output [6:0]   io_msInfo_11_bits_set,
  output [2:0]   io_msInfo_11_bits_way,
  output [21:0]  io_msInfo_11_bits_reqTag,
  output         io_msInfo_11_bits_willFree,
  output         io_msInfo_11_bits_needRelease,
  output         io_msInfo_11_bits_releaseNotSent,
  output [21:0]  io_msInfo_11_bits_metaTag,
  output         io_msInfo_11_bits_dirHit,
  output         io_msInfo_11_bits_nestB,
  output         io_msInfo_11_bits_mergeB,
  output         io_msInfo_11_bits_isAcqOrPrefetch,
  output         io_msInfo_11_bits_isPrefetch,
  output         io_msInfo_12_valid,
  output [6:0]   io_msInfo_12_bits_set,
  output [2:0]   io_msInfo_12_bits_way,
  output [21:0]  io_msInfo_12_bits_reqTag,
  output         io_msInfo_12_bits_willFree,
  output         io_msInfo_12_bits_needRelease,
  output         io_msInfo_12_bits_releaseNotSent,
  output [21:0]  io_msInfo_12_bits_metaTag,
  output         io_msInfo_12_bits_dirHit,
  output         io_msInfo_12_bits_nestB,
  output         io_msInfo_12_bits_mergeB,
  output         io_msInfo_12_bits_isAcqOrPrefetch,
  output         io_msInfo_12_bits_isPrefetch,
  output         io_msInfo_13_valid,
  output [6:0]   io_msInfo_13_bits_set,
  output [2:0]   io_msInfo_13_bits_way,
  output [21:0]  io_msInfo_13_bits_reqTag,
  output         io_msInfo_13_bits_willFree,
  output         io_msInfo_13_bits_needRelease,
  output         io_msInfo_13_bits_releaseNotSent,
  output [21:0]  io_msInfo_13_bits_metaTag,
  output         io_msInfo_13_bits_dirHit,
  output         io_msInfo_13_bits_nestB,
  output         io_msInfo_13_bits_mergeB,
  output         io_msInfo_13_bits_isAcqOrPrefetch,
  output         io_msInfo_13_bits_isPrefetch,
  output         io_msInfo_14_valid,
  output [6:0]   io_msInfo_14_bits_set,
  output [2:0]   io_msInfo_14_bits_way,
  output [21:0]  io_msInfo_14_bits_reqTag,
  output         io_msInfo_14_bits_willFree,
  output         io_msInfo_14_bits_needRelease,
  output         io_msInfo_14_bits_releaseNotSent,
  output [21:0]  io_msInfo_14_bits_metaTag,
  output         io_msInfo_14_bits_dirHit,
  output         io_msInfo_14_bits_nestB,
  output         io_msInfo_14_bits_mergeB,
  output         io_msInfo_14_bits_isAcqOrPrefetch,
  output         io_msInfo_14_bits_isPrefetch,
  output         io_msInfo_15_valid,
  output [6:0]   io_msInfo_15_bits_set,
  output [2:0]   io_msInfo_15_bits_way,
  output [21:0]  io_msInfo_15_bits_reqTag,
  output         io_msInfo_15_bits_willFree,
  output         io_msInfo_15_bits_needRelease,
  output         io_msInfo_15_bits_releaseNotSent,
  output [21:0]  io_msInfo_15_bits_metaTag,
  output         io_msInfo_15_bits_dirHit,
  output         io_msInfo_15_bits_nestB,
  output         io_msInfo_15_bits_mergeB,
  output         io_msInfo_15_bits_isAcqOrPrefetch,
  output         io_msInfo_15_bits_isPrefetch,
  input          io_bMergeTask_valid,
  input  [7:0]   io_bMergeTask_bits_id,
  input  [6:0]   io_bMergeTask_bits_task_set,
  input  [21:0]  io_bMergeTask_bits_task_tag,
  input  [5:0]   io_bMergeTask_bits_task_off,
  input  [2:0]   io_bMergeTask_bits_task_param,
  input          io_bMergeTask_bits_task_needProbeAckData,
  input          io_replResp_valid,
  input  [21:0]  io_replResp_bits_tag,
  input  [2:0]   io_replResp_bits_way,
  input          io_replResp_bits_meta_dirty,
  input  [1:0]   io_replResp_bits_meta_state,
  input          io_replResp_bits_meta_clients,
  input          io_replResp_bits_meta_accessed,
  input  [7:0]   io_replResp_bits_mshrId,
  input          io_replResp_bits_retry,
  output         io_msStatus_0_valid,
  output [6:0]   io_msStatus_0_bits_set,
  output [21:0]  io_msStatus_0_bits_reqTag,
  output         io_msStatus_0_bits_is_miss,
  output         io_msStatus_1_valid,
  output [6:0]   io_msStatus_1_bits_set,
  output [21:0]  io_msStatus_1_bits_reqTag,
  output         io_msStatus_1_bits_is_miss,
  output         io_msStatus_2_valid,
  output [6:0]   io_msStatus_2_bits_set,
  output [21:0]  io_msStatus_2_bits_reqTag,
  output         io_msStatus_2_bits_is_miss,
  output         io_msStatus_3_valid,
  output [6:0]   io_msStatus_3_bits_set,
  output [21:0]  io_msStatus_3_bits_reqTag,
  output         io_msStatus_3_bits_is_miss,
  output         io_msStatus_4_valid,
  output [6:0]   io_msStatus_4_bits_set,
  output [21:0]  io_msStatus_4_bits_reqTag,
  output         io_msStatus_4_bits_is_miss,
  output         io_msStatus_5_valid,
  output [6:0]   io_msStatus_5_bits_set,
  output [21:0]  io_msStatus_5_bits_reqTag,
  output         io_msStatus_5_bits_is_miss,
  output         io_msStatus_6_valid,
  output [6:0]   io_msStatus_6_bits_set,
  output [21:0]  io_msStatus_6_bits_reqTag,
  output         io_msStatus_6_bits_is_miss,
  output         io_msStatus_7_valid,
  output [6:0]   io_msStatus_7_bits_set,
  output [21:0]  io_msStatus_7_bits_reqTag,
  output         io_msStatus_7_bits_is_miss,
  output         io_msStatus_8_valid,
  output [6:0]   io_msStatus_8_bits_set,
  output [21:0]  io_msStatus_8_bits_reqTag,
  output         io_msStatus_8_bits_is_miss,
  output         io_msStatus_9_valid,
  output [6:0]   io_msStatus_9_bits_set,
  output [21:0]  io_msStatus_9_bits_reqTag,
  output         io_msStatus_9_bits_is_miss,
  output         io_msStatus_10_valid,
  output [6:0]   io_msStatus_10_bits_set,
  output [21:0]  io_msStatus_10_bits_reqTag,
  output         io_msStatus_10_bits_is_miss,
  output         io_msStatus_11_valid,
  output [6:0]   io_msStatus_11_bits_set,
  output [21:0]  io_msStatus_11_bits_reqTag,
  output         io_msStatus_11_bits_is_miss,
  output         io_msStatus_12_valid,
  output [6:0]   io_msStatus_12_bits_set,
  output [21:0]  io_msStatus_12_bits_reqTag,
  output         io_msStatus_12_bits_is_miss,
  output         io_msStatus_13_valid,
  output [6:0]   io_msStatus_13_bits_set,
  output [21:0]  io_msStatus_13_bits_reqTag,
  output         io_msStatus_13_bits_is_miss,
  output         io_msStatus_14_valid,
  output [6:0]   io_msStatus_14_bits_set,
  output [21:0]  io_msStatus_14_bits_reqTag,
  output         io_msStatus_14_bits_is_miss,
  output         io_msStatus_15_valid,
  output [6:0]   io_msStatus_15_bits_set,
  output [21:0]  io_msStatus_15_bits_reqTag,
  output         io_msStatus_15_bits_is_miss
);
  wire  mshrs_0_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_0_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_0_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_0_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_0_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_0_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_0_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_0_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_0_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_0_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_0_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_0_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_0_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_0_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_0_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_0_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_0_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_0_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_0_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_0_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_0_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_0_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_0_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_1_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_1_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_1_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_1_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_1_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_1_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_1_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_1_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_1_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_1_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_1_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_1_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_1_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_1_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_1_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_1_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_1_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_1_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_1_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_1_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_1_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_1_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_2_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_2_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_2_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_2_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_2_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_2_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_2_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_2_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_2_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_2_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_2_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_2_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_2_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_2_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_2_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_2_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_2_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_2_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_2_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_2_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_2_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_2_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_3_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_3_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_3_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_3_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_3_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_3_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_3_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_3_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_3_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_3_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_3_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_3_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_3_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_3_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_3_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_3_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_3_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_3_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_3_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_3_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_3_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_3_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_4_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_4_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_4_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_4_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_4_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_4_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_4_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_4_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_4_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_4_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_4_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_4_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_4_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_4_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_4_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_4_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_4_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_4_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_4_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_4_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_4_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_4_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_5_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_5_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_5_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_5_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_5_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_5_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_5_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_5_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_5_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_5_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_5_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_5_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_5_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_5_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_5_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_5_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_5_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_5_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_5_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_5_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_5_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_5_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_6_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_6_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_6_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_6_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_6_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_6_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_6_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_6_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_6_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_6_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_6_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_6_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_6_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_6_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_6_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_6_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_6_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_6_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_6_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_6_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_6_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_6_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_7_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_7_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_7_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_7_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_7_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_7_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_7_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_7_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_7_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_7_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_7_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_7_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_7_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_7_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_7_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_7_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_7_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_7_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_7_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_7_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_7_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_7_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_8_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_8_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_8_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_8_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_8_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_8_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_8_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_8_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_8_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_8_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_8_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_8_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_8_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_8_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_8_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_8_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_8_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_8_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_8_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_8_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_8_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_8_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_9_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_9_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_9_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_9_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_9_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_9_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_9_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_9_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_9_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_9_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_9_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_9_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_9_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_9_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_9_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_9_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_9_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_9_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_9_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_9_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_9_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_9_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_10_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_10_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_10_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_10_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_10_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_10_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_10_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_10_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_10_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_10_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_10_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_10_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_10_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_10_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_10_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_10_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_10_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_10_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_10_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_10_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_10_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_10_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_11_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_11_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_11_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_11_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_11_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_11_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_11_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_11_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_11_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_11_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_11_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_11_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_11_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_11_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_11_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_11_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_11_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_11_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_11_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_11_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_11_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_11_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_12_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_12_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_12_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_12_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_12_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_12_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_12_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_12_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_12_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_12_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_12_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_12_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_12_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_12_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_12_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_12_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_12_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_12_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_12_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_12_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_12_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_12_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_13_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_13_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_13_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_13_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_13_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_13_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_13_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_13_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_13_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_13_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_13_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_13_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_13_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_13_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_13_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_13_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_13_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_13_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_13_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_13_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_13_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_13_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_14_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_14_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_14_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_14_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_14_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_14_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_14_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_14_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_14_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_14_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_14_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_14_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_14_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_14_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_14_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_14_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_14_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_14_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_14_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_14_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_14_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_14_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_clock; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_reset; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_15_io_id; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_status_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_status_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_status_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_status_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_status_bits_needsRepl; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_status_bits_wc_resp; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_status_bits_is_miss; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_msInfo_bits_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_msInfo_bits_way; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_willFree; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_nestB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_valid; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_dirResult_hit; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_alloc_bits_dirResult_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_alloc_bits_dirResult_set; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_alloc_bits_dirResult_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_15_io_alloc_bits_dirResult_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_dirResult_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_s_acquire; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_s_rprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_s_pprobe; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_s_probeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_s_refill; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wrprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wpprobeacklast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wpprobeack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wgrantfirst; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wgrantlast; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wgrant; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wgrantack; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_state_wreplResp; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_alloc_bits_task_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_alloc_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_alloc_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_15_io_alloc_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_alloc_bits_task_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_alloc_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_alloc_bits_task_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_15_io_alloc_bits_task_sourceId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_alloc_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_15_io_alloc_bits_task_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_source_a_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_source_a_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_tasks_source_a_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_tasks_source_a_bits_set; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_15_io_tasks_source_a_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_source_a_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_15_io_tasks_source_a_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_source_a_bits_size; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_15_io_tasks_source_a_bits_source; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_15_io_tasks_source_a_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_source_bready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_source_bvalid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_tasks_source_btag; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_tasks_source_bset; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_15_io_tasks_source_bparam; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_ready; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_mainpipe_bits_channel; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_tasks_mainpipe_bits_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_tasks_mainpipe_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_15_io_tasks_mainpipe_bits_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_mainpipe_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_mainpipe_bits_param; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_mainpipe_bits_size; // @[MSHRCtl.scala 96:42]
  wire [4:0] mshrs_15_io_tasks_mainpipe_bits_sourceId; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_15_io_tasks_mainpipe_bits_mshrId; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_useProbeData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_tasks_mainpipe_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_15_io_tasks_mainpipe_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_metaWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_tagWen; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_dsWen; // @[MSHRCtl.scala 96:42]
  wire [7:0] mshrs_15_io_tasks_mainpipe_bits_wayMask; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_tasks_mainpipe_bits_replTask; // @[MSHRCtl.scala 96:42]
  wire [3:0] mshrs_15_io_tasks_mainpipe_bits_reqSource; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_resps_sink_c_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_resps_sink_c_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_resps_sink_c_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_resps_sink_c_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_resps_sink_d_valid; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_resps_sink_d_bits_opcode; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_resps_sink_d_bits_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_resps_sink_d_bits_last; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_resps_sink_d_bits_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_resps_sink_e_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_nestedwb_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_nestedwb_tag; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_nestedwbData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_bMergeTask_valid; // @[MSHRCtl.scala 96:42]
  wire [6:0] mshrs_15_io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 96:42]
  wire [5:0] mshrs_15_io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_replResp_valid; // @[MSHRCtl.scala 96:42]
  wire [21:0] mshrs_15_io_replResp_bits_tag; // @[MSHRCtl.scala 96:42]
  wire [2:0] mshrs_15_io_replResp_bits_way; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 96:42]
  wire [1:0] mshrs_15_io_replResp_bits_meta_state; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_replResp_bits_meta_clients; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 96:42]
  wire  mshrs_15_io_replResp_bits_retry; // @[MSHRCtl.scala 96:42]
  wire  mshrSelector_io_idle_0; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_1; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_2; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_3; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_4; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_5; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_6; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_7; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_8; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_9; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_10; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_11; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_12; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_13; // @[MSHRCtl.scala 103:28]
  wire  mshrSelector_io_idle_14; // @[MSHRCtl.scala 103:28]
  wire [15:0] mshrSelector_io_out_bits; // @[MSHRCtl.scala 103:28]
  wire  acquireUnit_io_sourceA_ready; // @[MSHRCtl.scala 143:27]
  wire  acquireUnit_io_sourceA_valid; // @[MSHRCtl.scala 143:27]
  wire [2:0] acquireUnit_io_sourceA_bits_opcode; // @[MSHRCtl.scala 143:27]
  wire [2:0] acquireUnit_io_sourceA_bits_param; // @[MSHRCtl.scala 143:27]
  wire [2:0] acquireUnit_io_sourceA_bits_size; // @[MSHRCtl.scala 143:27]
  wire [7:0] acquireUnit_io_sourceA_bits_source; // @[MSHRCtl.scala 143:27]
  wire [35:0] acquireUnit_io_sourceA_bits_address; // @[MSHRCtl.scala 143:27]
  wire  acquireUnit_io_sourceA_bits_echo_blockisdirty; // @[MSHRCtl.scala 143:27]
  wire [31:0] acquireUnit_io_sourceA_bits_mask; // @[MSHRCtl.scala 143:27]
  wire [255:0] acquireUnit_io_sourceA_bits_data; // @[MSHRCtl.scala 143:27]
  wire  acquireUnit_io_sourceA_bits_corrupt; // @[MSHRCtl.scala 143:27]
  wire  acquireUnit_io_task_ready; // @[MSHRCtl.scala 143:27]
  wire  acquireUnit_io_task_valid; // @[MSHRCtl.scala 143:27]
  wire [21:0] acquireUnit_io_task_bits_tag; // @[MSHRCtl.scala 143:27]
  wire [6:0] acquireUnit_io_task_bits_set; // @[MSHRCtl.scala 143:27]
  wire [5:0] acquireUnit_io_task_bits_off; // @[MSHRCtl.scala 143:27]
  wire [2:0] acquireUnit_io_task_bits_opcode; // @[MSHRCtl.scala 143:27]
  wire [1:0] acquireUnit_io_task_bits_param; // @[MSHRCtl.scala 143:27]
  wire [2:0] acquireUnit_io_task_bits_size; // @[MSHRCtl.scala 143:27]
  wire [7:0] acquireUnit_io_task_bits_source; // @[MSHRCtl.scala 143:27]
  wire [3:0] acquireUnit_io_task_bits_reqSource; // @[MSHRCtl.scala 143:27]
  wire  source_a_arb_clock; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_reset; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_0_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_0_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_0_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_0_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_0_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_0_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_0_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_0_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_0_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_0_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_1_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_1_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_1_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_1_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_1_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_1_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_1_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_1_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_1_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_1_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_2_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_2_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_2_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_2_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_2_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_2_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_2_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_2_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_2_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_2_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_3_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_3_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_3_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_3_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_3_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_3_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_3_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_3_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_3_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_3_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_4_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_4_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_4_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_4_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_4_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_4_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_4_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_4_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_4_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_4_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_5_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_5_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_5_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_5_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_5_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_5_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_5_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_5_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_5_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_5_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_6_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_6_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_6_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_6_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_6_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_6_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_6_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_6_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_6_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_6_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_7_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_7_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_7_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_7_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_7_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_7_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_7_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_7_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_7_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_7_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_8_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_8_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_8_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_8_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_8_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_8_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_8_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_8_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_8_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_8_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_9_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_9_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_9_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_9_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_9_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_9_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_9_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_9_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_9_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_9_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_10_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_10_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_10_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_10_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_10_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_10_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_10_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_10_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_10_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_10_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_11_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_11_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_11_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_11_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_11_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_11_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_11_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_11_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_11_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_11_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_12_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_12_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_12_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_12_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_12_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_12_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_12_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_12_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_12_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_12_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_13_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_13_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_13_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_13_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_13_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_13_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_13_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_13_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_13_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_13_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_14_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_14_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_14_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_14_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_14_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_14_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_14_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_14_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_14_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_14_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_15_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_in_15_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_in_15_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_in_15_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_in_15_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_15_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_in_15_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_in_15_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_in_15_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_in_15_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_out_ready; // @[CoupledL2.scala 144:21]
  wire  source_a_arb_io_out_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_a_arb_io_out_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_a_arb_io_out_bits_set; // @[CoupledL2.scala 144:21]
  wire [5:0] source_a_arb_io_out_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_out_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_a_arb_io_out_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] source_a_arb_io_out_bits_size; // @[CoupledL2.scala 144:21]
  wire [7:0] source_a_arb_io_out_bits_source; // @[CoupledL2.scala 144:21]
  wire [3:0] source_a_arb_io_out_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  sourceB_clock; // @[MSHRCtl.scala 148:23]
  wire  sourceB_reset; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_sourceB_ready; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_sourceB_valid; // @[MSHRCtl.scala 148:23]
  wire [2:0] sourceB_io_sourceB_bits_opcode; // @[MSHRCtl.scala 148:23]
  wire [1:0] sourceB_io_sourceB_bits_param; // @[MSHRCtl.scala 148:23]
  wire [35:0] sourceB_io_sourceB_bits_address; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_task_ready; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_task_valid; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_task_bits_tag; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_task_bits_set; // @[MSHRCtl.scala 148:23]
  wire [2:0] sourceB_io_task_bits_opcode; // @[MSHRCtl.scala 148:23]
  wire [1:0] sourceB_io_task_bits_param; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_0_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_0_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_0_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_1_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_1_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_1_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_2_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_2_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_2_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_3_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_3_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_3_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_4_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_4_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_4_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_5_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_5_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_5_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_6_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_6_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_6_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_7_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_7_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_7_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_8_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_8_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_8_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_9_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_9_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_9_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_10_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_10_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_10_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_11_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_11_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_11_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_12_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_12_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_12_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_13_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_13_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_13_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_14_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_14_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_14_tag; // @[MSHRCtl.scala 148:23]
  wire  sourceB_io_grantStatus_15_valid; // @[MSHRCtl.scala 148:23]
  wire [6:0] sourceB_io_grantStatus_15_set; // @[MSHRCtl.scala 148:23]
  wire [21:0] sourceB_io_grantStatus_15_tag; // @[MSHRCtl.scala 148:23]
  wire  source_barb_clock; // @[CoupledL2.scala 144:21]
  wire  source_barb_reset; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_0_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_0_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_0_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_0_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_0_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_1_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_1_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_1_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_1_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_1_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_2_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_2_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_2_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_2_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_2_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_3_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_3_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_3_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_3_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_3_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_4_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_4_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_4_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_4_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_4_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_5_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_5_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_5_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_5_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_5_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_6_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_6_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_6_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_6_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_6_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_7_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_7_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_7_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_7_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_7_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_8_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_8_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_8_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_8_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_8_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_9_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_9_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_9_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_9_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_9_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_10_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_10_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_10_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_10_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_10_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_11_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_11_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_11_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_11_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_11_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_12_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_12_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_12_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_12_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_12_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_13_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_13_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_13_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_13_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_13_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_14_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_14_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_14_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_14_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_14_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_15_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_in_15_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_in_15_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_in_15_bits_set; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_in_15_bits_param; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_out_ready; // @[CoupledL2.scala 144:21]
  wire  source_barb_io_out_valid; // @[CoupledL2.scala 144:21]
  wire [21:0] source_barb_io_out_bits_tag; // @[CoupledL2.scala 144:21]
  wire [6:0] source_barb_io_out_bits_set; // @[CoupledL2.scala 144:21]
  wire [2:0] source_barb_io_out_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [1:0] source_barb_io_out_bits_param; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_clock; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_reset; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_0_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_0_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_0_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_0_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_0_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_0_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_0_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_0_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_0_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_0_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_0_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_0_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_0_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_0_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_1_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_1_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_1_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_1_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_1_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_1_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_1_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_1_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_1_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_1_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_1_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_1_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_1_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_1_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_2_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_2_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_2_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_2_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_2_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_2_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_2_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_2_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_2_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_2_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_2_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_2_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_2_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_2_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_3_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_3_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_3_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_3_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_3_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_3_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_3_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_3_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_3_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_3_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_3_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_3_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_3_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_3_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_4_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_4_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_4_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_4_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_4_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_4_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_4_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_4_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_4_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_4_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_4_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_4_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_4_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_4_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_5_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_5_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_5_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_5_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_5_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_5_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_5_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_5_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_5_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_5_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_5_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_5_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_5_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_5_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_6_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_6_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_6_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_6_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_6_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_6_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_6_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_6_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_6_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_6_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_6_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_6_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_6_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_6_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_7_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_7_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_7_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_7_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_7_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_7_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_7_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_7_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_7_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_7_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_7_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_7_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_7_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_7_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_8_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_8_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_8_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_8_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_8_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_8_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_8_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_8_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_8_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_8_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_8_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_8_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_8_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_8_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_9_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_9_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_9_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_9_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_9_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_9_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_9_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_9_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_9_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_9_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_9_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_9_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_9_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_9_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_10_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_10_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_10_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_10_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_10_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_10_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_10_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_10_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_10_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_10_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_10_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_10_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_10_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_10_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_11_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_11_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_11_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_11_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_11_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_11_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_11_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_11_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_11_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_11_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_11_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_11_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_11_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_11_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_12_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_12_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_12_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_12_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_12_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_12_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_12_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_12_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_12_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_12_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_12_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_12_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_12_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_12_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_13_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_13_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_13_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_13_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_13_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_13_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_13_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_13_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_13_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_13_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_13_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_13_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_13_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_13_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_14_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_14_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_14_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_14_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_14_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_14_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_14_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_14_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_14_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_14_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_14_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_14_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_14_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_14_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_15_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_in_15_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_in_15_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_in_15_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_15_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_15_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_15_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_in_15_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_15_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_in_15_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_in_15_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_in_15_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_in_15_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_in_15_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_ready; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_valid; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_out_bits_channel; // @[CoupledL2.scala 144:21]
  wire [6:0] mshr_task_arb_io_out_bits_set; // @[CoupledL2.scala 144:21]
  wire [21:0] mshr_task_arb_io_out_bits_tag; // @[CoupledL2.scala 144:21]
  wire [5:0] mshr_task_arb_io_out_bits_off; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_out_bits_opcode; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_out_bits_param; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_out_bits_size; // @[CoupledL2.scala 144:21]
  wire [4:0] mshr_task_arb_io_out_bits_sourceId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_mshrTask; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_out_bits_mshrId; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_useProbeData; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_dirty; // @[CoupledL2.scala 144:21]
  wire [2:0] mshr_task_arb_io_out_bits_way; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_meta_dirty; // @[CoupledL2.scala 144:21]
  wire [1:0] mshr_task_arb_io_out_bits_meta_state; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_meta_clients; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_meta_accessed; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_metaWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_tagWen; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_dsWen; // @[CoupledL2.scala 144:21]
  wire [7:0] mshr_task_arb_io_out_bits_wayMask; // @[CoupledL2.scala 144:21]
  wire  mshr_task_arb_io_out_bits_replTask; // @[CoupledL2.scala 144:21]
  wire [3:0] mshr_task_arb_io_out_bits_reqSource; // @[CoupledL2.scala 144:21]
  wire [1:0] _pipeReqCount_T = {io_pipeStatusVec_0_valid,io_pipeStatusVec_1_valid}; // @[Cat.scala 31:58]
  wire [1:0] pipeReqCount = _pipeReqCount_T[0] + _pipeReqCount_T[1]; // @[Bitwise.scala 48:55]
  wire [7:0] mshrCount_lo = {mshrs_8_io_status_valid,mshrs_9_io_status_valid,mshrs_10_io_status_valid,
    mshrs_11_io_status_valid,mshrs_12_io_status_valid,mshrs_13_io_status_valid,mshrs_14_io_status_valid,
    mshrs_15_io_status_valid}; // @[Cat.scala 31:58]
  wire [15:0] _mshrCount_T = {mshrs_0_io_status_valid,mshrs_1_io_status_valid,mshrs_2_io_status_valid,
    mshrs_3_io_status_valid,mshrs_4_io_status_valid,mshrs_5_io_status_valid,mshrs_6_io_status_valid,
    mshrs_7_io_status_valid,mshrCount_lo}; // @[Cat.scala 31:58]
  wire [1:0] _mshrCount_T_17 = _mshrCount_T[0] + _mshrCount_T[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_19 = _mshrCount_T[2] + _mshrCount_T[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _mshrCount_T_21 = _mshrCount_T_17 + _mshrCount_T_19; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_23 = _mshrCount_T[4] + _mshrCount_T[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_25 = _mshrCount_T[6] + _mshrCount_T[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _mshrCount_T_27 = _mshrCount_T_23 + _mshrCount_T_25; // @[Bitwise.scala 48:55]
  wire [3:0] _mshrCount_T_29 = _mshrCount_T_21 + _mshrCount_T_27; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_31 = _mshrCount_T[8] + _mshrCount_T[9]; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_33 = _mshrCount_T[10] + _mshrCount_T[11]; // @[Bitwise.scala 48:55]
  wire [2:0] _mshrCount_T_35 = _mshrCount_T_31 + _mshrCount_T_33; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_37 = _mshrCount_T[12] + _mshrCount_T[13]; // @[Bitwise.scala 48:55]
  wire [1:0] _mshrCount_T_39 = _mshrCount_T[14] + _mshrCount_T[15]; // @[Bitwise.scala 48:55]
  wire [2:0] _mshrCount_T_41 = _mshrCount_T_37 + _mshrCount_T_39; // @[Bitwise.scala 48:55]
  wire [3:0] _mshrCount_T_43 = _mshrCount_T_35 + _mshrCount_T_41; // @[Bitwise.scala 48:55]
  wire [4:0] mshrCount = _mshrCount_T_29 + _mshrCount_T_43; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_16 = {{3'd0}, pipeReqCount}; // @[MSHRCtl.scala 101:31]
  wire [4:0] _mshrFull_T_1 = _GEN_16 + mshrCount; // @[MSHRCtl.scala 101:31]
  wire [7:0] io_toMainPipe_mshr_alloc_ptr_hi = mshrSelector_io_out_bits[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_toMainPipe_mshr_alloc_ptr_lo = mshrSelector_io_out_bits[7:0]; // @[OneHot.scala 31:18]
  wire  _io_toMainPipe_mshr_alloc_ptr_T = |io_toMainPipe_mshr_alloc_ptr_hi; // @[OneHot.scala 32:14]
  wire [7:0] _io_toMainPipe_mshr_alloc_ptr_T_1 = io_toMainPipe_mshr_alloc_ptr_hi | io_toMainPipe_mshr_alloc_ptr_lo; // @[OneHot.scala 32:28]
  wire [3:0] io_toMainPipe_mshr_alloc_ptr_hi_1 = _io_toMainPipe_mshr_alloc_ptr_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_toMainPipe_mshr_alloc_ptr_lo_1 = _io_toMainPipe_mshr_alloc_ptr_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _io_toMainPipe_mshr_alloc_ptr_T_2 = |io_toMainPipe_mshr_alloc_ptr_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _io_toMainPipe_mshr_alloc_ptr_T_3 = io_toMainPipe_mshr_alloc_ptr_hi_1 | io_toMainPipe_mshr_alloc_ptr_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] io_toMainPipe_mshr_alloc_ptr_hi_2 = _io_toMainPipe_mshr_alloc_ptr_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_toMainPipe_mshr_alloc_ptr_lo_2 = _io_toMainPipe_mshr_alloc_ptr_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _io_toMainPipe_mshr_alloc_ptr_T_4 = |io_toMainPipe_mshr_alloc_ptr_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _io_toMainPipe_mshr_alloc_ptr_T_5 = io_toMainPipe_mshr_alloc_ptr_hi_2 | io_toMainPipe_mshr_alloc_ptr_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] _io_toMainPipe_mshr_alloc_ptr_T_9 = {_io_toMainPipe_mshr_alloc_ptr_T,_io_toMainPipe_mshr_alloc_ptr_T_2,
    _io_toMainPipe_mshr_alloc_ptr_T_4,_io_toMainPipe_mshr_alloc_ptr_T_5[1]}; // @[Cat.scala 31:58]
  wire [21:0] resp_sinkC_match_vec_tag = mshrs_0_io_status_bits_needsRepl ? mshrs_0_io_status_bits_metaTag :
    mshrs_0_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_0 = mshrs_0_io_status_valid & mshrs_0_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_0_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_1 = mshrs_1_io_status_bits_needsRepl ? mshrs_1_io_status_bits_metaTag :
    mshrs_1_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_1 = mshrs_1_io_status_valid & mshrs_1_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_1_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_1; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_2 = mshrs_2_io_status_bits_needsRepl ? mshrs_2_io_status_bits_metaTag :
    mshrs_2_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_2 = mshrs_2_io_status_valid & mshrs_2_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_2_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_2; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_3 = mshrs_3_io_status_bits_needsRepl ? mshrs_3_io_status_bits_metaTag :
    mshrs_3_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_3 = mshrs_3_io_status_valid & mshrs_3_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_3_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_3; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_4 = mshrs_4_io_status_bits_needsRepl ? mshrs_4_io_status_bits_metaTag :
    mshrs_4_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_4 = mshrs_4_io_status_valid & mshrs_4_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_4_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_4; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_5 = mshrs_5_io_status_bits_needsRepl ? mshrs_5_io_status_bits_metaTag :
    mshrs_5_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_5 = mshrs_5_io_status_valid & mshrs_5_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_5_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_5; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_6 = mshrs_6_io_status_bits_needsRepl ? mshrs_6_io_status_bits_metaTag :
    mshrs_6_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_6 = mshrs_6_io_status_valid & mshrs_6_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_6_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_6; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_7 = mshrs_7_io_status_bits_needsRepl ? mshrs_7_io_status_bits_metaTag :
    mshrs_7_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_7 = mshrs_7_io_status_valid & mshrs_7_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_7_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_7; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_8 = mshrs_8_io_status_bits_needsRepl ? mshrs_8_io_status_bits_metaTag :
    mshrs_8_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_8 = mshrs_8_io_status_valid & mshrs_8_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_8_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_8; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_9 = mshrs_9_io_status_bits_needsRepl ? mshrs_9_io_status_bits_metaTag :
    mshrs_9_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_9 = mshrs_9_io_status_valid & mshrs_9_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_9_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_9; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_10 = mshrs_10_io_status_bits_needsRepl ? mshrs_10_io_status_bits_metaTag :
    mshrs_10_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_10 = mshrs_10_io_status_valid & mshrs_10_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_10_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_10; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_11 = mshrs_11_io_status_bits_needsRepl ? mshrs_11_io_status_bits_metaTag :
    mshrs_11_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_11 = mshrs_11_io_status_valid & mshrs_11_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_11_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_11; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_12 = mshrs_12_io_status_bits_needsRepl ? mshrs_12_io_status_bits_metaTag :
    mshrs_12_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_12 = mshrs_12_io_status_valid & mshrs_12_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_12_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_12; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_13 = mshrs_13_io_status_bits_needsRepl ? mshrs_13_io_status_bits_metaTag :
    mshrs_13_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_13 = mshrs_13_io_status_valid & mshrs_13_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_13_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_13; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_14 = mshrs_14_io_status_bits_needsRepl ? mshrs_14_io_status_bits_metaTag :
    mshrs_14_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_14 = mshrs_14_io_status_valid & mshrs_14_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_14_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_14; // @[MSHRCtl.scala 111:82]
  wire [21:0] resp_sinkC_match_vec_tag_15 = mshrs_15_io_status_bits_needsRepl ? mshrs_15_io_status_bits_metaTag :
    mshrs_15_io_status_bits_reqTag; // @[MSHRCtl.scala 110:18]
  wire  resp_sinkC_match_vec_15 = mshrs_15_io_status_valid & mshrs_15_io_status_bits_wc_resp & io_resps_sinkC_set ==
    mshrs_15_io_status_bits_set & io_resps_sinkC_tag == resp_sinkC_match_vec_tag_15; // @[MSHRCtl.scala 111:82]
  wire  _io_releaseBufWriteId_T_1 = resp_sinkC_match_vec_0 ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_releaseBufWriteId_T_3 = resp_sinkC_match_vec_2 ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_releaseBufWriteId_T_5 = resp_sinkC_match_vec_0 | resp_sinkC_match_vec_1 ? {{1'd0},
    _io_releaseBufWriteId_T_1} : _io_releaseBufWriteId_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_releaseBufWriteId_T_7 = resp_sinkC_match_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_releaseBufWriteId_T_9 = resp_sinkC_match_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_releaseBufWriteId_T_11 = resp_sinkC_match_vec_4 | resp_sinkC_match_vec_5 ? _io_releaseBufWriteId_T_7 :
    _io_releaseBufWriteId_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_releaseBufWriteId_T_13 = resp_sinkC_match_vec_0 | resp_sinkC_match_vec_1 | (resp_sinkC_match_vec_2 |
    resp_sinkC_match_vec_3) ? {{1'd0}, _io_releaseBufWriteId_T_5} : _io_releaseBufWriteId_T_11; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_15 = resp_sinkC_match_vec_8 ? 4'h8 : 4'h9; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_17 = resp_sinkC_match_vec_10 ? 4'ha : 4'hb; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_19 = resp_sinkC_match_vec_8 | resp_sinkC_match_vec_9 ? _io_releaseBufWriteId_T_15
     : _io_releaseBufWriteId_T_17; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_21 = resp_sinkC_match_vec_12 ? 4'hc : 4'hd; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_23 = resp_sinkC_match_vec_14 ? 4'he : 4'hf; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_25 = resp_sinkC_match_vec_12 | resp_sinkC_match_vec_13 ? _io_releaseBufWriteId_T_21
     : _io_releaseBufWriteId_T_23; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_27 = resp_sinkC_match_vec_8 | resp_sinkC_match_vec_9 | (resp_sinkC_match_vec_10 |
    resp_sinkC_match_vec_11) ? _io_releaseBufWriteId_T_19 : _io_releaseBufWriteId_T_25; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_releaseBufWriteId_T_29 = resp_sinkC_match_vec_0 | resp_sinkC_match_vec_1 | (resp_sinkC_match_vec_2 |
    resp_sinkC_match_vec_3) | (resp_sinkC_match_vec_4 | resp_sinkC_match_vec_5 | (resp_sinkC_match_vec_6 |
    resp_sinkC_match_vec_7)) ? {{1'd0}, _io_releaseBufWriteId_T_13} : _io_releaseBufWriteId_T_27; // @[ParallelMux.scala 90:77]
  wire [7:0] io_nestedwbDataId_valid_lo = {mshrs_8_io_nestedwbData,mshrs_9_io_nestedwbData,mshrs_10_io_nestedwbData,
    mshrs_11_io_nestedwbData,mshrs_12_io_nestedwbData,mshrs_13_io_nestedwbData,mshrs_14_io_nestedwbData,
    mshrs_15_io_nestedwbData}; // @[Cat.scala 31:58]
  wire [15:0] _io_nestedwbDataId_valid_T = {mshrs_0_io_nestedwbData,mshrs_1_io_nestedwbData,mshrs_2_io_nestedwbData,
    mshrs_3_io_nestedwbData,mshrs_4_io_nestedwbData,mshrs_5_io_nestedwbData,mshrs_6_io_nestedwbData,
    mshrs_7_io_nestedwbData,io_nestedwbDataId_valid_lo}; // @[Cat.scala 31:58]
  wire  _io_nestedwbDataId_bits_T_1 = mshrs_0_io_nestedwbData ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_nestedwbDataId_bits_T_3 = mshrs_2_io_nestedwbData ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_nestedwbDataId_bits_T_5 = mshrs_0_io_nestedwbData | mshrs_1_io_nestedwbData ? {{1'd0},
    _io_nestedwbDataId_bits_T_1} : _io_nestedwbDataId_bits_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_nestedwbDataId_bits_T_7 = mshrs_4_io_nestedwbData ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_nestedwbDataId_bits_T_9 = mshrs_6_io_nestedwbData ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_nestedwbDataId_bits_T_11 = mshrs_4_io_nestedwbData | mshrs_5_io_nestedwbData ?
    _io_nestedwbDataId_bits_T_7 : _io_nestedwbDataId_bits_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_nestedwbDataId_bits_T_13 = mshrs_0_io_nestedwbData | mshrs_1_io_nestedwbData | (mshrs_2_io_nestedwbData
     | mshrs_3_io_nestedwbData) ? {{1'd0}, _io_nestedwbDataId_bits_T_5} : _io_nestedwbDataId_bits_T_11; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_15 = mshrs_8_io_nestedwbData ? 4'h8 : 4'h9; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_17 = mshrs_10_io_nestedwbData ? 4'ha : 4'hb; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_19 = mshrs_8_io_nestedwbData | mshrs_9_io_nestedwbData ?
    _io_nestedwbDataId_bits_T_15 : _io_nestedwbDataId_bits_T_17; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_21 = mshrs_12_io_nestedwbData ? 4'hc : 4'hd; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_23 = mshrs_14_io_nestedwbData ? 4'he : 4'hf; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_25 = mshrs_12_io_nestedwbData | mshrs_13_io_nestedwbData ?
    _io_nestedwbDataId_bits_T_21 : _io_nestedwbDataId_bits_T_23; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_27 = mshrs_8_io_nestedwbData | mshrs_9_io_nestedwbData | (
    mshrs_10_io_nestedwbData | mshrs_11_io_nestedwbData) ? _io_nestedwbDataId_bits_T_19 : _io_nestedwbDataId_bits_T_25; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_nestedwbDataId_bits_T_29 = mshrs_0_io_nestedwbData | mshrs_1_io_nestedwbData | (mshrs_2_io_nestedwbData
     | mshrs_3_io_nestedwbData) | (mshrs_4_io_nestedwbData | mshrs_5_io_nestedwbData | (mshrs_6_io_nestedwbData |
    mshrs_7_io_nestedwbData)) ? {{1'd0}, _io_nestedwbDataId_bits_T_13} : _io_nestedwbDataId_bits_T_27; // @[ParallelMux.scala 90:77]
  MSHR mshrs_0 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_0_clock),
    .reset(mshrs_0_reset),
    .io_id(mshrs_0_io_id),
    .io_status_valid(mshrs_0_io_status_valid),
    .io_status_bits_set(mshrs_0_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_0_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_0_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_0_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_0_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_0_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_0_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_0_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_0_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_0_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_0_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_0_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_0_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_0_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_0_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_0_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_0_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_0_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_0_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_0_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_0_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_0_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_0_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_0_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_0_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_0_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_0_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_0_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_0_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_0_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_0_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_0_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_0_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_0_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_0_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_0_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_0_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_0_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_0_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_0_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_0_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_0_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_0_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_0_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_0_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_0_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_0_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_0_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_0_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_0_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_0_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_0_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_0_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_0_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_0_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_0_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_0_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_0_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_0_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_0_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_0_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_0_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_0_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_0_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_0_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_0_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_0_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_0_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_0_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_0_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_0_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_0_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_0_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_0_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_0_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_0_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_0_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_0_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_0_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_0_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_0_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_0_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_0_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_0_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_0_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_0_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_0_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_0_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_0_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_0_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_0_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_0_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_0_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_0_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_0_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_0_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_0_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_0_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_0_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_0_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_0_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_0_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_0_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_0_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_0_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_0_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_0_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_0_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_0_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_0_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_0_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_0_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_0_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_0_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_0_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_0_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_0_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_0_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_0_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_0_io_replResp_bits_retry)
  );
  MSHR mshrs_1 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_1_clock),
    .reset(mshrs_1_reset),
    .io_id(mshrs_1_io_id),
    .io_status_valid(mshrs_1_io_status_valid),
    .io_status_bits_set(mshrs_1_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_1_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_1_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_1_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_1_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_1_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_1_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_1_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_1_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_1_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_1_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_1_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_1_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_1_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_1_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_1_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_1_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_1_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_1_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_1_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_1_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_1_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_1_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_1_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_1_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_1_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_1_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_1_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_1_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_1_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_1_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_1_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_1_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_1_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_1_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_1_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_1_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_1_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_1_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_1_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_1_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_1_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_1_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_1_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_1_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_1_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_1_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_1_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_1_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_1_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_1_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_1_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_1_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_1_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_1_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_1_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_1_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_1_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_1_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_1_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_1_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_1_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_1_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_1_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_1_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_1_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_1_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_1_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_1_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_1_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_1_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_1_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_1_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_1_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_1_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_1_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_1_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_1_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_1_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_1_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_1_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_1_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_1_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_1_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_1_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_1_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_1_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_1_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_1_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_1_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_1_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_1_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_1_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_1_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_1_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_1_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_1_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_1_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_1_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_1_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_1_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_1_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_1_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_1_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_1_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_1_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_1_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_1_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_1_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_1_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_1_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_1_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_1_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_1_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_1_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_1_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_1_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_1_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_1_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_1_io_replResp_bits_retry)
  );
  MSHR mshrs_2 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_2_clock),
    .reset(mshrs_2_reset),
    .io_id(mshrs_2_io_id),
    .io_status_valid(mshrs_2_io_status_valid),
    .io_status_bits_set(mshrs_2_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_2_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_2_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_2_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_2_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_2_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_2_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_2_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_2_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_2_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_2_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_2_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_2_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_2_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_2_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_2_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_2_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_2_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_2_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_2_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_2_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_2_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_2_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_2_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_2_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_2_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_2_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_2_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_2_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_2_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_2_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_2_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_2_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_2_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_2_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_2_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_2_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_2_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_2_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_2_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_2_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_2_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_2_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_2_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_2_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_2_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_2_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_2_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_2_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_2_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_2_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_2_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_2_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_2_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_2_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_2_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_2_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_2_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_2_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_2_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_2_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_2_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_2_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_2_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_2_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_2_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_2_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_2_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_2_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_2_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_2_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_2_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_2_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_2_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_2_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_2_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_2_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_2_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_2_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_2_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_2_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_2_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_2_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_2_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_2_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_2_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_2_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_2_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_2_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_2_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_2_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_2_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_2_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_2_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_2_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_2_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_2_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_2_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_2_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_2_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_2_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_2_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_2_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_2_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_2_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_2_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_2_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_2_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_2_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_2_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_2_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_2_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_2_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_2_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_2_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_2_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_2_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_2_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_2_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_2_io_replResp_bits_retry)
  );
  MSHR mshrs_3 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_3_clock),
    .reset(mshrs_3_reset),
    .io_id(mshrs_3_io_id),
    .io_status_valid(mshrs_3_io_status_valid),
    .io_status_bits_set(mshrs_3_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_3_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_3_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_3_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_3_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_3_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_3_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_3_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_3_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_3_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_3_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_3_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_3_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_3_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_3_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_3_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_3_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_3_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_3_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_3_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_3_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_3_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_3_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_3_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_3_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_3_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_3_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_3_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_3_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_3_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_3_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_3_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_3_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_3_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_3_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_3_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_3_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_3_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_3_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_3_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_3_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_3_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_3_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_3_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_3_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_3_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_3_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_3_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_3_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_3_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_3_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_3_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_3_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_3_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_3_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_3_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_3_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_3_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_3_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_3_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_3_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_3_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_3_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_3_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_3_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_3_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_3_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_3_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_3_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_3_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_3_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_3_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_3_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_3_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_3_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_3_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_3_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_3_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_3_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_3_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_3_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_3_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_3_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_3_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_3_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_3_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_3_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_3_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_3_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_3_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_3_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_3_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_3_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_3_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_3_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_3_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_3_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_3_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_3_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_3_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_3_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_3_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_3_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_3_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_3_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_3_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_3_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_3_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_3_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_3_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_3_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_3_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_3_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_3_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_3_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_3_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_3_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_3_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_3_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_3_io_replResp_bits_retry)
  );
  MSHR mshrs_4 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_4_clock),
    .reset(mshrs_4_reset),
    .io_id(mshrs_4_io_id),
    .io_status_valid(mshrs_4_io_status_valid),
    .io_status_bits_set(mshrs_4_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_4_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_4_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_4_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_4_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_4_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_4_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_4_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_4_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_4_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_4_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_4_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_4_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_4_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_4_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_4_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_4_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_4_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_4_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_4_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_4_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_4_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_4_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_4_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_4_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_4_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_4_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_4_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_4_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_4_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_4_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_4_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_4_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_4_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_4_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_4_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_4_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_4_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_4_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_4_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_4_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_4_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_4_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_4_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_4_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_4_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_4_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_4_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_4_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_4_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_4_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_4_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_4_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_4_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_4_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_4_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_4_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_4_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_4_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_4_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_4_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_4_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_4_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_4_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_4_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_4_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_4_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_4_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_4_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_4_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_4_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_4_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_4_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_4_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_4_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_4_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_4_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_4_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_4_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_4_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_4_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_4_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_4_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_4_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_4_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_4_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_4_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_4_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_4_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_4_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_4_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_4_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_4_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_4_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_4_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_4_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_4_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_4_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_4_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_4_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_4_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_4_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_4_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_4_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_4_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_4_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_4_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_4_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_4_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_4_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_4_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_4_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_4_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_4_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_4_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_4_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_4_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_4_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_4_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_4_io_replResp_bits_retry)
  );
  MSHR mshrs_5 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_5_clock),
    .reset(mshrs_5_reset),
    .io_id(mshrs_5_io_id),
    .io_status_valid(mshrs_5_io_status_valid),
    .io_status_bits_set(mshrs_5_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_5_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_5_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_5_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_5_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_5_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_5_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_5_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_5_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_5_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_5_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_5_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_5_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_5_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_5_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_5_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_5_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_5_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_5_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_5_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_5_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_5_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_5_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_5_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_5_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_5_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_5_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_5_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_5_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_5_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_5_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_5_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_5_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_5_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_5_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_5_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_5_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_5_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_5_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_5_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_5_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_5_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_5_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_5_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_5_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_5_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_5_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_5_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_5_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_5_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_5_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_5_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_5_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_5_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_5_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_5_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_5_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_5_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_5_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_5_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_5_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_5_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_5_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_5_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_5_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_5_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_5_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_5_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_5_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_5_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_5_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_5_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_5_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_5_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_5_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_5_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_5_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_5_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_5_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_5_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_5_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_5_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_5_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_5_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_5_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_5_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_5_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_5_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_5_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_5_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_5_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_5_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_5_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_5_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_5_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_5_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_5_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_5_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_5_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_5_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_5_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_5_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_5_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_5_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_5_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_5_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_5_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_5_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_5_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_5_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_5_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_5_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_5_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_5_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_5_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_5_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_5_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_5_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_5_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_5_io_replResp_bits_retry)
  );
  MSHR mshrs_6 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_6_clock),
    .reset(mshrs_6_reset),
    .io_id(mshrs_6_io_id),
    .io_status_valid(mshrs_6_io_status_valid),
    .io_status_bits_set(mshrs_6_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_6_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_6_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_6_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_6_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_6_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_6_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_6_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_6_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_6_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_6_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_6_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_6_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_6_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_6_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_6_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_6_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_6_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_6_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_6_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_6_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_6_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_6_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_6_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_6_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_6_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_6_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_6_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_6_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_6_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_6_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_6_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_6_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_6_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_6_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_6_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_6_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_6_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_6_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_6_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_6_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_6_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_6_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_6_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_6_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_6_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_6_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_6_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_6_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_6_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_6_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_6_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_6_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_6_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_6_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_6_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_6_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_6_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_6_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_6_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_6_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_6_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_6_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_6_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_6_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_6_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_6_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_6_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_6_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_6_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_6_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_6_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_6_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_6_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_6_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_6_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_6_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_6_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_6_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_6_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_6_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_6_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_6_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_6_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_6_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_6_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_6_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_6_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_6_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_6_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_6_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_6_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_6_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_6_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_6_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_6_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_6_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_6_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_6_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_6_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_6_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_6_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_6_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_6_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_6_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_6_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_6_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_6_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_6_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_6_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_6_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_6_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_6_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_6_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_6_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_6_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_6_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_6_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_6_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_6_io_replResp_bits_retry)
  );
  MSHR mshrs_7 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_7_clock),
    .reset(mshrs_7_reset),
    .io_id(mshrs_7_io_id),
    .io_status_valid(mshrs_7_io_status_valid),
    .io_status_bits_set(mshrs_7_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_7_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_7_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_7_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_7_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_7_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_7_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_7_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_7_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_7_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_7_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_7_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_7_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_7_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_7_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_7_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_7_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_7_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_7_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_7_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_7_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_7_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_7_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_7_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_7_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_7_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_7_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_7_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_7_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_7_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_7_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_7_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_7_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_7_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_7_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_7_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_7_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_7_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_7_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_7_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_7_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_7_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_7_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_7_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_7_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_7_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_7_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_7_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_7_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_7_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_7_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_7_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_7_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_7_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_7_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_7_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_7_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_7_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_7_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_7_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_7_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_7_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_7_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_7_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_7_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_7_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_7_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_7_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_7_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_7_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_7_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_7_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_7_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_7_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_7_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_7_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_7_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_7_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_7_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_7_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_7_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_7_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_7_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_7_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_7_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_7_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_7_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_7_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_7_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_7_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_7_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_7_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_7_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_7_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_7_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_7_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_7_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_7_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_7_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_7_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_7_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_7_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_7_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_7_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_7_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_7_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_7_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_7_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_7_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_7_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_7_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_7_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_7_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_7_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_7_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_7_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_7_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_7_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_7_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_7_io_replResp_bits_retry)
  );
  MSHR mshrs_8 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_8_clock),
    .reset(mshrs_8_reset),
    .io_id(mshrs_8_io_id),
    .io_status_valid(mshrs_8_io_status_valid),
    .io_status_bits_set(mshrs_8_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_8_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_8_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_8_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_8_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_8_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_8_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_8_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_8_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_8_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_8_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_8_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_8_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_8_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_8_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_8_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_8_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_8_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_8_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_8_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_8_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_8_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_8_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_8_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_8_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_8_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_8_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_8_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_8_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_8_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_8_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_8_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_8_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_8_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_8_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_8_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_8_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_8_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_8_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_8_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_8_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_8_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_8_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_8_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_8_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_8_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_8_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_8_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_8_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_8_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_8_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_8_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_8_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_8_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_8_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_8_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_8_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_8_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_8_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_8_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_8_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_8_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_8_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_8_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_8_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_8_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_8_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_8_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_8_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_8_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_8_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_8_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_8_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_8_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_8_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_8_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_8_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_8_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_8_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_8_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_8_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_8_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_8_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_8_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_8_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_8_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_8_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_8_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_8_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_8_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_8_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_8_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_8_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_8_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_8_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_8_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_8_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_8_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_8_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_8_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_8_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_8_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_8_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_8_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_8_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_8_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_8_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_8_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_8_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_8_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_8_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_8_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_8_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_8_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_8_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_8_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_8_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_8_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_8_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_8_io_replResp_bits_retry)
  );
  MSHR mshrs_9 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_9_clock),
    .reset(mshrs_9_reset),
    .io_id(mshrs_9_io_id),
    .io_status_valid(mshrs_9_io_status_valid),
    .io_status_bits_set(mshrs_9_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_9_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_9_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_9_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_9_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_9_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_9_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_9_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_9_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_9_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_9_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_9_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_9_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_9_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_9_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_9_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_9_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_9_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_9_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_9_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_9_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_9_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_9_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_9_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_9_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_9_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_9_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_9_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_9_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_9_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_9_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_9_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_9_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_9_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_9_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_9_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_9_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_9_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_9_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_9_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_9_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_9_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_9_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_9_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_9_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_9_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_9_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_9_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_9_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_9_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_9_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_9_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_9_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_9_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_9_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_9_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_9_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_9_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_9_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_9_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_9_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_9_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_9_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_9_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_9_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_9_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_9_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_9_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_9_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_9_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_9_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_9_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_9_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_9_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_9_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_9_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_9_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_9_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_9_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_9_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_9_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_9_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_9_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_9_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_9_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_9_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_9_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_9_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_9_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_9_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_9_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_9_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_9_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_9_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_9_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_9_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_9_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_9_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_9_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_9_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_9_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_9_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_9_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_9_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_9_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_9_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_9_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_9_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_9_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_9_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_9_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_9_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_9_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_9_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_9_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_9_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_9_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_9_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_9_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_9_io_replResp_bits_retry)
  );
  MSHR mshrs_10 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_10_clock),
    .reset(mshrs_10_reset),
    .io_id(mshrs_10_io_id),
    .io_status_valid(mshrs_10_io_status_valid),
    .io_status_bits_set(mshrs_10_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_10_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_10_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_10_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_10_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_10_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_10_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_10_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_10_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_10_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_10_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_10_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_10_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_10_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_10_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_10_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_10_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_10_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_10_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_10_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_10_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_10_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_10_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_10_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_10_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_10_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_10_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_10_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_10_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_10_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_10_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_10_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_10_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_10_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_10_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_10_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_10_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_10_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_10_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_10_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_10_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_10_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_10_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_10_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_10_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_10_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_10_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_10_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_10_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_10_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_10_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_10_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_10_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_10_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_10_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_10_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_10_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_10_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_10_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_10_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_10_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_10_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_10_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_10_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_10_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_10_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_10_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_10_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_10_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_10_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_10_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_10_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_10_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_10_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_10_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_10_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_10_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_10_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_10_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_10_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_10_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_10_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_10_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_10_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_10_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_10_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_10_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_10_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_10_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_10_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_10_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_10_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_10_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_10_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_10_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_10_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_10_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_10_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_10_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_10_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_10_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_10_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_10_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_10_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_10_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_10_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_10_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_10_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_10_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_10_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_10_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_10_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_10_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_10_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_10_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_10_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_10_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_10_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_10_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_10_io_replResp_bits_retry)
  );
  MSHR mshrs_11 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_11_clock),
    .reset(mshrs_11_reset),
    .io_id(mshrs_11_io_id),
    .io_status_valid(mshrs_11_io_status_valid),
    .io_status_bits_set(mshrs_11_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_11_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_11_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_11_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_11_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_11_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_11_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_11_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_11_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_11_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_11_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_11_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_11_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_11_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_11_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_11_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_11_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_11_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_11_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_11_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_11_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_11_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_11_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_11_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_11_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_11_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_11_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_11_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_11_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_11_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_11_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_11_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_11_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_11_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_11_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_11_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_11_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_11_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_11_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_11_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_11_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_11_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_11_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_11_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_11_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_11_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_11_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_11_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_11_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_11_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_11_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_11_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_11_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_11_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_11_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_11_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_11_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_11_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_11_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_11_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_11_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_11_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_11_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_11_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_11_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_11_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_11_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_11_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_11_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_11_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_11_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_11_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_11_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_11_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_11_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_11_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_11_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_11_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_11_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_11_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_11_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_11_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_11_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_11_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_11_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_11_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_11_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_11_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_11_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_11_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_11_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_11_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_11_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_11_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_11_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_11_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_11_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_11_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_11_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_11_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_11_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_11_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_11_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_11_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_11_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_11_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_11_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_11_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_11_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_11_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_11_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_11_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_11_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_11_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_11_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_11_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_11_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_11_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_11_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_11_io_replResp_bits_retry)
  );
  MSHR mshrs_12 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_12_clock),
    .reset(mshrs_12_reset),
    .io_id(mshrs_12_io_id),
    .io_status_valid(mshrs_12_io_status_valid),
    .io_status_bits_set(mshrs_12_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_12_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_12_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_12_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_12_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_12_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_12_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_12_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_12_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_12_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_12_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_12_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_12_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_12_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_12_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_12_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_12_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_12_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_12_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_12_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_12_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_12_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_12_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_12_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_12_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_12_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_12_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_12_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_12_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_12_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_12_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_12_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_12_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_12_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_12_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_12_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_12_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_12_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_12_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_12_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_12_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_12_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_12_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_12_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_12_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_12_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_12_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_12_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_12_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_12_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_12_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_12_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_12_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_12_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_12_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_12_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_12_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_12_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_12_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_12_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_12_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_12_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_12_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_12_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_12_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_12_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_12_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_12_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_12_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_12_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_12_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_12_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_12_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_12_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_12_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_12_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_12_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_12_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_12_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_12_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_12_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_12_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_12_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_12_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_12_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_12_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_12_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_12_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_12_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_12_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_12_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_12_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_12_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_12_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_12_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_12_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_12_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_12_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_12_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_12_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_12_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_12_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_12_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_12_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_12_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_12_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_12_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_12_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_12_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_12_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_12_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_12_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_12_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_12_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_12_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_12_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_12_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_12_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_12_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_12_io_replResp_bits_retry)
  );
  MSHR mshrs_13 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_13_clock),
    .reset(mshrs_13_reset),
    .io_id(mshrs_13_io_id),
    .io_status_valid(mshrs_13_io_status_valid),
    .io_status_bits_set(mshrs_13_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_13_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_13_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_13_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_13_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_13_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_13_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_13_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_13_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_13_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_13_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_13_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_13_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_13_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_13_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_13_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_13_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_13_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_13_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_13_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_13_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_13_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_13_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_13_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_13_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_13_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_13_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_13_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_13_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_13_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_13_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_13_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_13_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_13_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_13_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_13_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_13_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_13_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_13_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_13_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_13_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_13_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_13_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_13_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_13_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_13_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_13_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_13_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_13_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_13_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_13_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_13_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_13_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_13_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_13_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_13_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_13_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_13_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_13_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_13_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_13_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_13_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_13_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_13_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_13_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_13_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_13_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_13_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_13_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_13_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_13_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_13_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_13_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_13_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_13_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_13_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_13_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_13_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_13_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_13_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_13_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_13_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_13_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_13_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_13_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_13_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_13_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_13_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_13_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_13_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_13_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_13_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_13_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_13_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_13_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_13_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_13_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_13_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_13_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_13_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_13_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_13_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_13_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_13_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_13_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_13_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_13_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_13_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_13_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_13_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_13_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_13_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_13_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_13_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_13_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_13_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_13_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_13_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_13_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_13_io_replResp_bits_retry)
  );
  MSHR mshrs_14 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_14_clock),
    .reset(mshrs_14_reset),
    .io_id(mshrs_14_io_id),
    .io_status_valid(mshrs_14_io_status_valid),
    .io_status_bits_set(mshrs_14_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_14_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_14_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_14_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_14_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_14_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_14_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_14_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_14_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_14_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_14_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_14_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_14_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_14_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_14_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_14_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_14_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_14_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_14_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_14_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_14_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_14_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_14_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_14_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_14_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_14_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_14_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_14_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_14_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_14_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_14_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_14_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_14_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_14_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_14_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_14_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_14_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_14_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_14_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_14_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_14_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_14_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_14_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_14_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_14_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_14_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_14_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_14_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_14_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_14_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_14_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_14_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_14_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_14_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_14_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_14_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_14_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_14_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_14_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_14_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_14_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_14_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_14_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_14_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_14_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_14_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_14_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_14_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_14_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_14_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_14_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_14_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_14_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_14_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_14_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_14_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_14_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_14_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_14_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_14_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_14_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_14_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_14_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_14_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_14_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_14_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_14_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_14_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_14_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_14_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_14_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_14_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_14_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_14_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_14_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_14_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_14_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_14_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_14_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_14_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_14_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_14_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_14_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_14_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_14_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_14_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_14_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_14_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_14_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_14_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_14_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_14_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_14_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_14_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_14_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_14_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_14_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_14_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_14_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_14_io_replResp_bits_retry)
  );
  MSHR mshrs_15 ( // @[MSHRCtl.scala 96:42]
    .clock(mshrs_15_clock),
    .reset(mshrs_15_reset),
    .io_id(mshrs_15_io_id),
    .io_status_valid(mshrs_15_io_status_valid),
    .io_status_bits_set(mshrs_15_io_status_bits_set),
    .io_status_bits_reqTag(mshrs_15_io_status_bits_reqTag),
    .io_status_bits_metaTag(mshrs_15_io_status_bits_metaTag),
    .io_status_bits_needsRepl(mshrs_15_io_status_bits_needsRepl),
    .io_status_bits_wc_resp(mshrs_15_io_status_bits_wc_resp),
    .io_status_bits_is_miss(mshrs_15_io_status_bits_is_miss),
    .io_msInfo_valid(mshrs_15_io_msInfo_valid),
    .io_msInfo_bits_set(mshrs_15_io_msInfo_bits_set),
    .io_msInfo_bits_way(mshrs_15_io_msInfo_bits_way),
    .io_msInfo_bits_reqTag(mshrs_15_io_msInfo_bits_reqTag),
    .io_msInfo_bits_willFree(mshrs_15_io_msInfo_bits_willFree),
    .io_msInfo_bits_needRelease(mshrs_15_io_msInfo_bits_needRelease),
    .io_msInfo_bits_releaseNotSent(mshrs_15_io_msInfo_bits_releaseNotSent),
    .io_msInfo_bits_metaTag(mshrs_15_io_msInfo_bits_metaTag),
    .io_msInfo_bits_dirHit(mshrs_15_io_msInfo_bits_dirHit),
    .io_msInfo_bits_nestB(mshrs_15_io_msInfo_bits_nestB),
    .io_msInfo_bits_mergeB(mshrs_15_io_msInfo_bits_mergeB),
    .io_msInfo_bits_isAcqOrPrefetch(mshrs_15_io_msInfo_bits_isAcqOrPrefetch),
    .io_msInfo_bits_isPrefetch(mshrs_15_io_msInfo_bits_isPrefetch),
    .io_alloc_valid(mshrs_15_io_alloc_valid),
    .io_alloc_bits_dirResult_hit(mshrs_15_io_alloc_bits_dirResult_hit),
    .io_alloc_bits_dirResult_tag(mshrs_15_io_alloc_bits_dirResult_tag),
    .io_alloc_bits_dirResult_set(mshrs_15_io_alloc_bits_dirResult_set),
    .io_alloc_bits_dirResult_way(mshrs_15_io_alloc_bits_dirResult_way),
    .io_alloc_bits_dirResult_meta_dirty(mshrs_15_io_alloc_bits_dirResult_meta_dirty),
    .io_alloc_bits_dirResult_meta_state(mshrs_15_io_alloc_bits_dirResult_meta_state),
    .io_alloc_bits_dirResult_meta_clients(mshrs_15_io_alloc_bits_dirResult_meta_clients),
    .io_alloc_bits_dirResult_meta_accessed(mshrs_15_io_alloc_bits_dirResult_meta_accessed),
    .io_alloc_bits_state_s_acquire(mshrs_15_io_alloc_bits_state_s_acquire),
    .io_alloc_bits_state_s_rprobe(mshrs_15_io_alloc_bits_state_s_rprobe),
    .io_alloc_bits_state_s_pprobe(mshrs_15_io_alloc_bits_state_s_pprobe),
    .io_alloc_bits_state_s_probeack(mshrs_15_io_alloc_bits_state_s_probeack),
    .io_alloc_bits_state_s_refill(mshrs_15_io_alloc_bits_state_s_refill),
    .io_alloc_bits_state_wrprobeackfirst(mshrs_15_io_alloc_bits_state_wrprobeackfirst),
    .io_alloc_bits_state_wrprobeacklast(mshrs_15_io_alloc_bits_state_wrprobeacklast),
    .io_alloc_bits_state_wpprobeackfirst(mshrs_15_io_alloc_bits_state_wpprobeackfirst),
    .io_alloc_bits_state_wpprobeacklast(mshrs_15_io_alloc_bits_state_wpprobeacklast),
    .io_alloc_bits_state_wpprobeack(mshrs_15_io_alloc_bits_state_wpprobeack),
    .io_alloc_bits_state_wgrantfirst(mshrs_15_io_alloc_bits_state_wgrantfirst),
    .io_alloc_bits_state_wgrantlast(mshrs_15_io_alloc_bits_state_wgrantlast),
    .io_alloc_bits_state_wgrant(mshrs_15_io_alloc_bits_state_wgrant),
    .io_alloc_bits_state_wgrantack(mshrs_15_io_alloc_bits_state_wgrantack),
    .io_alloc_bits_state_wreplResp(mshrs_15_io_alloc_bits_state_wreplResp),
    .io_alloc_bits_task_channel(mshrs_15_io_alloc_bits_task_channel),
    .io_alloc_bits_task_set(mshrs_15_io_alloc_bits_task_set),
    .io_alloc_bits_task_tag(mshrs_15_io_alloc_bits_task_tag),
    .io_alloc_bits_task_off(mshrs_15_io_alloc_bits_task_off),
    .io_alloc_bits_task_opcode(mshrs_15_io_alloc_bits_task_opcode),
    .io_alloc_bits_task_param(mshrs_15_io_alloc_bits_task_param),
    .io_alloc_bits_task_size(mshrs_15_io_alloc_bits_task_size),
    .io_alloc_bits_task_sourceId(mshrs_15_io_alloc_bits_task_sourceId),
    .io_alloc_bits_task_needProbeAckData(mshrs_15_io_alloc_bits_task_needProbeAckData),
    .io_alloc_bits_task_reqSource(mshrs_15_io_alloc_bits_task_reqSource),
    .io_tasks_source_a_ready(mshrs_15_io_tasks_source_a_ready),
    .io_tasks_source_a_valid(mshrs_15_io_tasks_source_a_valid),
    .io_tasks_source_a_bits_tag(mshrs_15_io_tasks_source_a_bits_tag),
    .io_tasks_source_a_bits_set(mshrs_15_io_tasks_source_a_bits_set),
    .io_tasks_source_a_bits_off(mshrs_15_io_tasks_source_a_bits_off),
    .io_tasks_source_a_bits_opcode(mshrs_15_io_tasks_source_a_bits_opcode),
    .io_tasks_source_a_bits_param(mshrs_15_io_tasks_source_a_bits_param),
    .io_tasks_source_a_bits_size(mshrs_15_io_tasks_source_a_bits_size),
    .io_tasks_source_a_bits_source(mshrs_15_io_tasks_source_a_bits_source),
    .io_tasks_source_a_bits_reqSource(mshrs_15_io_tasks_source_a_bits_reqSource),
    .io_tasks_source_bready(mshrs_15_io_tasks_source_bready),
    .io_tasks_source_bvalid(mshrs_15_io_tasks_source_bvalid),
    .io_tasks_source_btag(mshrs_15_io_tasks_source_btag),
    .io_tasks_source_bset(mshrs_15_io_tasks_source_bset),
    .io_tasks_source_bparam(mshrs_15_io_tasks_source_bparam),
    .io_tasks_mainpipe_ready(mshrs_15_io_tasks_mainpipe_ready),
    .io_tasks_mainpipe_valid(mshrs_15_io_tasks_mainpipe_valid),
    .io_tasks_mainpipe_bits_channel(mshrs_15_io_tasks_mainpipe_bits_channel),
    .io_tasks_mainpipe_bits_set(mshrs_15_io_tasks_mainpipe_bits_set),
    .io_tasks_mainpipe_bits_tag(mshrs_15_io_tasks_mainpipe_bits_tag),
    .io_tasks_mainpipe_bits_off(mshrs_15_io_tasks_mainpipe_bits_off),
    .io_tasks_mainpipe_bits_opcode(mshrs_15_io_tasks_mainpipe_bits_opcode),
    .io_tasks_mainpipe_bits_param(mshrs_15_io_tasks_mainpipe_bits_param),
    .io_tasks_mainpipe_bits_size(mshrs_15_io_tasks_mainpipe_bits_size),
    .io_tasks_mainpipe_bits_sourceId(mshrs_15_io_tasks_mainpipe_bits_sourceId),
    .io_tasks_mainpipe_bits_mshrId(mshrs_15_io_tasks_mainpipe_bits_mshrId),
    .io_tasks_mainpipe_bits_useProbeData(mshrs_15_io_tasks_mainpipe_bits_useProbeData),
    .io_tasks_mainpipe_bits_dirty(mshrs_15_io_tasks_mainpipe_bits_dirty),
    .io_tasks_mainpipe_bits_way(mshrs_15_io_tasks_mainpipe_bits_way),
    .io_tasks_mainpipe_bits_meta_dirty(mshrs_15_io_tasks_mainpipe_bits_meta_dirty),
    .io_tasks_mainpipe_bits_meta_state(mshrs_15_io_tasks_mainpipe_bits_meta_state),
    .io_tasks_mainpipe_bits_meta_clients(mshrs_15_io_tasks_mainpipe_bits_meta_clients),
    .io_tasks_mainpipe_bits_meta_accessed(mshrs_15_io_tasks_mainpipe_bits_meta_accessed),
    .io_tasks_mainpipe_bits_metaWen(mshrs_15_io_tasks_mainpipe_bits_metaWen),
    .io_tasks_mainpipe_bits_tagWen(mshrs_15_io_tasks_mainpipe_bits_tagWen),
    .io_tasks_mainpipe_bits_dsWen(mshrs_15_io_tasks_mainpipe_bits_dsWen),
    .io_tasks_mainpipe_bits_wayMask(mshrs_15_io_tasks_mainpipe_bits_wayMask),
    .io_tasks_mainpipe_bits_replTask(mshrs_15_io_tasks_mainpipe_bits_replTask),
    .io_tasks_mainpipe_bits_reqSource(mshrs_15_io_tasks_mainpipe_bits_reqSource),
    .io_resps_sink_c_valid(mshrs_15_io_resps_sink_c_valid),
    .io_resps_sink_c_bits_opcode(mshrs_15_io_resps_sink_c_bits_opcode),
    .io_resps_sink_c_bits_param(mshrs_15_io_resps_sink_c_bits_param),
    .io_resps_sink_c_bits_last(mshrs_15_io_resps_sink_c_bits_last),
    .io_resps_sink_d_valid(mshrs_15_io_resps_sink_d_valid),
    .io_resps_sink_d_bits_opcode(mshrs_15_io_resps_sink_d_bits_opcode),
    .io_resps_sink_d_bits_param(mshrs_15_io_resps_sink_d_bits_param),
    .io_resps_sink_d_bits_last(mshrs_15_io_resps_sink_d_bits_last),
    .io_resps_sink_d_bits_dirty(mshrs_15_io_resps_sink_d_bits_dirty),
    .io_resps_sink_e_valid(mshrs_15_io_resps_sink_e_valid),
    .io_nestedwb_set(mshrs_15_io_nestedwb_set),
    .io_nestedwb_tag(mshrs_15_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrs_15_io_nestedwb_c_set_dirty),
    .io_nestedwbData(mshrs_15_io_nestedwbData),
    .io_bMergeTask_valid(mshrs_15_io_bMergeTask_valid),
    .io_bMergeTask_bits_task_set(mshrs_15_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrs_15_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrs_15_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrs_15_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrs_15_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrs_15_io_replResp_valid),
    .io_replResp_bits_tag(mshrs_15_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrs_15_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrs_15_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrs_15_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrs_15_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrs_15_io_replResp_bits_meta_accessed),
    .io_replResp_bits_retry(mshrs_15_io_replResp_bits_retry)
  );
  MSHRSelector mshrSelector ( // @[MSHRCtl.scala 103:28]
    .io_idle_0(mshrSelector_io_idle_0),
    .io_idle_1(mshrSelector_io_idle_1),
    .io_idle_2(mshrSelector_io_idle_2),
    .io_idle_3(mshrSelector_io_idle_3),
    .io_idle_4(mshrSelector_io_idle_4),
    .io_idle_5(mshrSelector_io_idle_5),
    .io_idle_6(mshrSelector_io_idle_6),
    .io_idle_7(mshrSelector_io_idle_7),
    .io_idle_8(mshrSelector_io_idle_8),
    .io_idle_9(mshrSelector_io_idle_9),
    .io_idle_10(mshrSelector_io_idle_10),
    .io_idle_11(mshrSelector_io_idle_11),
    .io_idle_12(mshrSelector_io_idle_12),
    .io_idle_13(mshrSelector_io_idle_13),
    .io_idle_14(mshrSelector_io_idle_14),
    .io_out_bits(mshrSelector_io_out_bits)
  );
  AcquireUnit acquireUnit ( // @[MSHRCtl.scala 143:27]
    .io_sourceA_ready(acquireUnit_io_sourceA_ready),
    .io_sourceA_valid(acquireUnit_io_sourceA_valid),
    .io_sourceA_bits_opcode(acquireUnit_io_sourceA_bits_opcode),
    .io_sourceA_bits_param(acquireUnit_io_sourceA_bits_param),
    .io_sourceA_bits_size(acquireUnit_io_sourceA_bits_size),
    .io_sourceA_bits_source(acquireUnit_io_sourceA_bits_source),
    .io_sourceA_bits_address(acquireUnit_io_sourceA_bits_address),
    .io_sourceA_bits_echo_blockisdirty(acquireUnit_io_sourceA_bits_echo_blockisdirty),
    .io_sourceA_bits_mask(acquireUnit_io_sourceA_bits_mask),
    .io_sourceA_bits_data(acquireUnit_io_sourceA_bits_data),
    .io_sourceA_bits_corrupt(acquireUnit_io_sourceA_bits_corrupt),
    .io_task_ready(acquireUnit_io_task_ready),
    .io_task_valid(acquireUnit_io_task_valid),
    .io_task_bits_tag(acquireUnit_io_task_bits_tag),
    .io_task_bits_set(acquireUnit_io_task_bits_set),
    .io_task_bits_off(acquireUnit_io_task_bits_off),
    .io_task_bits_opcode(acquireUnit_io_task_bits_opcode),
    .io_task_bits_param(acquireUnit_io_task_bits_param),
    .io_task_bits_size(acquireUnit_io_task_bits_size),
    .io_task_bits_source(acquireUnit_io_task_bits_source),
    .io_task_bits_reqSource(acquireUnit_io_task_bits_reqSource)
  );
  FastArbiter_1 source_a_arb ( // @[CoupledL2.scala 144:21]
    .clock(source_a_arb_clock),
    .reset(source_a_arb_reset),
    .io_in_0_ready(source_a_arb_io_in_0_ready),
    .io_in_0_valid(source_a_arb_io_in_0_valid),
    .io_in_0_bits_tag(source_a_arb_io_in_0_bits_tag),
    .io_in_0_bits_set(source_a_arb_io_in_0_bits_set),
    .io_in_0_bits_off(source_a_arb_io_in_0_bits_off),
    .io_in_0_bits_opcode(source_a_arb_io_in_0_bits_opcode),
    .io_in_0_bits_param(source_a_arb_io_in_0_bits_param),
    .io_in_0_bits_size(source_a_arb_io_in_0_bits_size),
    .io_in_0_bits_source(source_a_arb_io_in_0_bits_source),
    .io_in_0_bits_reqSource(source_a_arb_io_in_0_bits_reqSource),
    .io_in_1_ready(source_a_arb_io_in_1_ready),
    .io_in_1_valid(source_a_arb_io_in_1_valid),
    .io_in_1_bits_tag(source_a_arb_io_in_1_bits_tag),
    .io_in_1_bits_set(source_a_arb_io_in_1_bits_set),
    .io_in_1_bits_off(source_a_arb_io_in_1_bits_off),
    .io_in_1_bits_opcode(source_a_arb_io_in_1_bits_opcode),
    .io_in_1_bits_param(source_a_arb_io_in_1_bits_param),
    .io_in_1_bits_size(source_a_arb_io_in_1_bits_size),
    .io_in_1_bits_source(source_a_arb_io_in_1_bits_source),
    .io_in_1_bits_reqSource(source_a_arb_io_in_1_bits_reqSource),
    .io_in_2_ready(source_a_arb_io_in_2_ready),
    .io_in_2_valid(source_a_arb_io_in_2_valid),
    .io_in_2_bits_tag(source_a_arb_io_in_2_bits_tag),
    .io_in_2_bits_set(source_a_arb_io_in_2_bits_set),
    .io_in_2_bits_off(source_a_arb_io_in_2_bits_off),
    .io_in_2_bits_opcode(source_a_arb_io_in_2_bits_opcode),
    .io_in_2_bits_param(source_a_arb_io_in_2_bits_param),
    .io_in_2_bits_size(source_a_arb_io_in_2_bits_size),
    .io_in_2_bits_source(source_a_arb_io_in_2_bits_source),
    .io_in_2_bits_reqSource(source_a_arb_io_in_2_bits_reqSource),
    .io_in_3_ready(source_a_arb_io_in_3_ready),
    .io_in_3_valid(source_a_arb_io_in_3_valid),
    .io_in_3_bits_tag(source_a_arb_io_in_3_bits_tag),
    .io_in_3_bits_set(source_a_arb_io_in_3_bits_set),
    .io_in_3_bits_off(source_a_arb_io_in_3_bits_off),
    .io_in_3_bits_opcode(source_a_arb_io_in_3_bits_opcode),
    .io_in_3_bits_param(source_a_arb_io_in_3_bits_param),
    .io_in_3_bits_size(source_a_arb_io_in_3_bits_size),
    .io_in_3_bits_source(source_a_arb_io_in_3_bits_source),
    .io_in_3_bits_reqSource(source_a_arb_io_in_3_bits_reqSource),
    .io_in_4_ready(source_a_arb_io_in_4_ready),
    .io_in_4_valid(source_a_arb_io_in_4_valid),
    .io_in_4_bits_tag(source_a_arb_io_in_4_bits_tag),
    .io_in_4_bits_set(source_a_arb_io_in_4_bits_set),
    .io_in_4_bits_off(source_a_arb_io_in_4_bits_off),
    .io_in_4_bits_opcode(source_a_arb_io_in_4_bits_opcode),
    .io_in_4_bits_param(source_a_arb_io_in_4_bits_param),
    .io_in_4_bits_size(source_a_arb_io_in_4_bits_size),
    .io_in_4_bits_source(source_a_arb_io_in_4_bits_source),
    .io_in_4_bits_reqSource(source_a_arb_io_in_4_bits_reqSource),
    .io_in_5_ready(source_a_arb_io_in_5_ready),
    .io_in_5_valid(source_a_arb_io_in_5_valid),
    .io_in_5_bits_tag(source_a_arb_io_in_5_bits_tag),
    .io_in_5_bits_set(source_a_arb_io_in_5_bits_set),
    .io_in_5_bits_off(source_a_arb_io_in_5_bits_off),
    .io_in_5_bits_opcode(source_a_arb_io_in_5_bits_opcode),
    .io_in_5_bits_param(source_a_arb_io_in_5_bits_param),
    .io_in_5_bits_size(source_a_arb_io_in_5_bits_size),
    .io_in_5_bits_source(source_a_arb_io_in_5_bits_source),
    .io_in_5_bits_reqSource(source_a_arb_io_in_5_bits_reqSource),
    .io_in_6_ready(source_a_arb_io_in_6_ready),
    .io_in_6_valid(source_a_arb_io_in_6_valid),
    .io_in_6_bits_tag(source_a_arb_io_in_6_bits_tag),
    .io_in_6_bits_set(source_a_arb_io_in_6_bits_set),
    .io_in_6_bits_off(source_a_arb_io_in_6_bits_off),
    .io_in_6_bits_opcode(source_a_arb_io_in_6_bits_opcode),
    .io_in_6_bits_param(source_a_arb_io_in_6_bits_param),
    .io_in_6_bits_size(source_a_arb_io_in_6_bits_size),
    .io_in_6_bits_source(source_a_arb_io_in_6_bits_source),
    .io_in_6_bits_reqSource(source_a_arb_io_in_6_bits_reqSource),
    .io_in_7_ready(source_a_arb_io_in_7_ready),
    .io_in_7_valid(source_a_arb_io_in_7_valid),
    .io_in_7_bits_tag(source_a_arb_io_in_7_bits_tag),
    .io_in_7_bits_set(source_a_arb_io_in_7_bits_set),
    .io_in_7_bits_off(source_a_arb_io_in_7_bits_off),
    .io_in_7_bits_opcode(source_a_arb_io_in_7_bits_opcode),
    .io_in_7_bits_param(source_a_arb_io_in_7_bits_param),
    .io_in_7_bits_size(source_a_arb_io_in_7_bits_size),
    .io_in_7_bits_source(source_a_arb_io_in_7_bits_source),
    .io_in_7_bits_reqSource(source_a_arb_io_in_7_bits_reqSource),
    .io_in_8_ready(source_a_arb_io_in_8_ready),
    .io_in_8_valid(source_a_arb_io_in_8_valid),
    .io_in_8_bits_tag(source_a_arb_io_in_8_bits_tag),
    .io_in_8_bits_set(source_a_arb_io_in_8_bits_set),
    .io_in_8_bits_off(source_a_arb_io_in_8_bits_off),
    .io_in_8_bits_opcode(source_a_arb_io_in_8_bits_opcode),
    .io_in_8_bits_param(source_a_arb_io_in_8_bits_param),
    .io_in_8_bits_size(source_a_arb_io_in_8_bits_size),
    .io_in_8_bits_source(source_a_arb_io_in_8_bits_source),
    .io_in_8_bits_reqSource(source_a_arb_io_in_8_bits_reqSource),
    .io_in_9_ready(source_a_arb_io_in_9_ready),
    .io_in_9_valid(source_a_arb_io_in_9_valid),
    .io_in_9_bits_tag(source_a_arb_io_in_9_bits_tag),
    .io_in_9_bits_set(source_a_arb_io_in_9_bits_set),
    .io_in_9_bits_off(source_a_arb_io_in_9_bits_off),
    .io_in_9_bits_opcode(source_a_arb_io_in_9_bits_opcode),
    .io_in_9_bits_param(source_a_arb_io_in_9_bits_param),
    .io_in_9_bits_size(source_a_arb_io_in_9_bits_size),
    .io_in_9_bits_source(source_a_arb_io_in_9_bits_source),
    .io_in_9_bits_reqSource(source_a_arb_io_in_9_bits_reqSource),
    .io_in_10_ready(source_a_arb_io_in_10_ready),
    .io_in_10_valid(source_a_arb_io_in_10_valid),
    .io_in_10_bits_tag(source_a_arb_io_in_10_bits_tag),
    .io_in_10_bits_set(source_a_arb_io_in_10_bits_set),
    .io_in_10_bits_off(source_a_arb_io_in_10_bits_off),
    .io_in_10_bits_opcode(source_a_arb_io_in_10_bits_opcode),
    .io_in_10_bits_param(source_a_arb_io_in_10_bits_param),
    .io_in_10_bits_size(source_a_arb_io_in_10_bits_size),
    .io_in_10_bits_source(source_a_arb_io_in_10_bits_source),
    .io_in_10_bits_reqSource(source_a_arb_io_in_10_bits_reqSource),
    .io_in_11_ready(source_a_arb_io_in_11_ready),
    .io_in_11_valid(source_a_arb_io_in_11_valid),
    .io_in_11_bits_tag(source_a_arb_io_in_11_bits_tag),
    .io_in_11_bits_set(source_a_arb_io_in_11_bits_set),
    .io_in_11_bits_off(source_a_arb_io_in_11_bits_off),
    .io_in_11_bits_opcode(source_a_arb_io_in_11_bits_opcode),
    .io_in_11_bits_param(source_a_arb_io_in_11_bits_param),
    .io_in_11_bits_size(source_a_arb_io_in_11_bits_size),
    .io_in_11_bits_source(source_a_arb_io_in_11_bits_source),
    .io_in_11_bits_reqSource(source_a_arb_io_in_11_bits_reqSource),
    .io_in_12_ready(source_a_arb_io_in_12_ready),
    .io_in_12_valid(source_a_arb_io_in_12_valid),
    .io_in_12_bits_tag(source_a_arb_io_in_12_bits_tag),
    .io_in_12_bits_set(source_a_arb_io_in_12_bits_set),
    .io_in_12_bits_off(source_a_arb_io_in_12_bits_off),
    .io_in_12_bits_opcode(source_a_arb_io_in_12_bits_opcode),
    .io_in_12_bits_param(source_a_arb_io_in_12_bits_param),
    .io_in_12_bits_size(source_a_arb_io_in_12_bits_size),
    .io_in_12_bits_source(source_a_arb_io_in_12_bits_source),
    .io_in_12_bits_reqSource(source_a_arb_io_in_12_bits_reqSource),
    .io_in_13_ready(source_a_arb_io_in_13_ready),
    .io_in_13_valid(source_a_arb_io_in_13_valid),
    .io_in_13_bits_tag(source_a_arb_io_in_13_bits_tag),
    .io_in_13_bits_set(source_a_arb_io_in_13_bits_set),
    .io_in_13_bits_off(source_a_arb_io_in_13_bits_off),
    .io_in_13_bits_opcode(source_a_arb_io_in_13_bits_opcode),
    .io_in_13_bits_param(source_a_arb_io_in_13_bits_param),
    .io_in_13_bits_size(source_a_arb_io_in_13_bits_size),
    .io_in_13_bits_source(source_a_arb_io_in_13_bits_source),
    .io_in_13_bits_reqSource(source_a_arb_io_in_13_bits_reqSource),
    .io_in_14_ready(source_a_arb_io_in_14_ready),
    .io_in_14_valid(source_a_arb_io_in_14_valid),
    .io_in_14_bits_tag(source_a_arb_io_in_14_bits_tag),
    .io_in_14_bits_set(source_a_arb_io_in_14_bits_set),
    .io_in_14_bits_off(source_a_arb_io_in_14_bits_off),
    .io_in_14_bits_opcode(source_a_arb_io_in_14_bits_opcode),
    .io_in_14_bits_param(source_a_arb_io_in_14_bits_param),
    .io_in_14_bits_size(source_a_arb_io_in_14_bits_size),
    .io_in_14_bits_source(source_a_arb_io_in_14_bits_source),
    .io_in_14_bits_reqSource(source_a_arb_io_in_14_bits_reqSource),
    .io_in_15_ready(source_a_arb_io_in_15_ready),
    .io_in_15_valid(source_a_arb_io_in_15_valid),
    .io_in_15_bits_tag(source_a_arb_io_in_15_bits_tag),
    .io_in_15_bits_set(source_a_arb_io_in_15_bits_set),
    .io_in_15_bits_off(source_a_arb_io_in_15_bits_off),
    .io_in_15_bits_opcode(source_a_arb_io_in_15_bits_opcode),
    .io_in_15_bits_param(source_a_arb_io_in_15_bits_param),
    .io_in_15_bits_size(source_a_arb_io_in_15_bits_size),
    .io_in_15_bits_source(source_a_arb_io_in_15_bits_source),
    .io_in_15_bits_reqSource(source_a_arb_io_in_15_bits_reqSource),
    .io_out_ready(source_a_arb_io_out_ready),
    .io_out_valid(source_a_arb_io_out_valid),
    .io_out_bits_tag(source_a_arb_io_out_bits_tag),
    .io_out_bits_set(source_a_arb_io_out_bits_set),
    .io_out_bits_off(source_a_arb_io_out_bits_off),
    .io_out_bits_opcode(source_a_arb_io_out_bits_opcode),
    .io_out_bits_param(source_a_arb_io_out_bits_param),
    .io_out_bits_size(source_a_arb_io_out_bits_size),
    .io_out_bits_source(source_a_arb_io_out_bits_source),
    .io_out_bits_reqSource(source_a_arb_io_out_bits_reqSource)
  );
  SourceB sourceB ( // @[MSHRCtl.scala 148:23]
    .clock(sourceB_clock),
    .reset(sourceB_reset),
    .io_sourceB_ready(sourceB_io_sourceB_ready),
    .io_sourceB_valid(sourceB_io_sourceB_valid),
    .io_sourceB_bits_opcode(sourceB_io_sourceB_bits_opcode),
    .io_sourceB_bits_param(sourceB_io_sourceB_bits_param),
    .io_sourceB_bits_address(sourceB_io_sourceB_bits_address),
    .io_task_ready(sourceB_io_task_ready),
    .io_task_valid(sourceB_io_task_valid),
    .io_task_bits_tag(sourceB_io_task_bits_tag),
    .io_task_bits_set(sourceB_io_task_bits_set),
    .io_task_bits_opcode(sourceB_io_task_bits_opcode),
    .io_task_bits_param(sourceB_io_task_bits_param),
    .io_grantStatus_0_valid(sourceB_io_grantStatus_0_valid),
    .io_grantStatus_0_set(sourceB_io_grantStatus_0_set),
    .io_grantStatus_0_tag(sourceB_io_grantStatus_0_tag),
    .io_grantStatus_1_valid(sourceB_io_grantStatus_1_valid),
    .io_grantStatus_1_set(sourceB_io_grantStatus_1_set),
    .io_grantStatus_1_tag(sourceB_io_grantStatus_1_tag),
    .io_grantStatus_2_valid(sourceB_io_grantStatus_2_valid),
    .io_grantStatus_2_set(sourceB_io_grantStatus_2_set),
    .io_grantStatus_2_tag(sourceB_io_grantStatus_2_tag),
    .io_grantStatus_3_valid(sourceB_io_grantStatus_3_valid),
    .io_grantStatus_3_set(sourceB_io_grantStatus_3_set),
    .io_grantStatus_3_tag(sourceB_io_grantStatus_3_tag),
    .io_grantStatus_4_valid(sourceB_io_grantStatus_4_valid),
    .io_grantStatus_4_set(sourceB_io_grantStatus_4_set),
    .io_grantStatus_4_tag(sourceB_io_grantStatus_4_tag),
    .io_grantStatus_5_valid(sourceB_io_grantStatus_5_valid),
    .io_grantStatus_5_set(sourceB_io_grantStatus_5_set),
    .io_grantStatus_5_tag(sourceB_io_grantStatus_5_tag),
    .io_grantStatus_6_valid(sourceB_io_grantStatus_6_valid),
    .io_grantStatus_6_set(sourceB_io_grantStatus_6_set),
    .io_grantStatus_6_tag(sourceB_io_grantStatus_6_tag),
    .io_grantStatus_7_valid(sourceB_io_grantStatus_7_valid),
    .io_grantStatus_7_set(sourceB_io_grantStatus_7_set),
    .io_grantStatus_7_tag(sourceB_io_grantStatus_7_tag),
    .io_grantStatus_8_valid(sourceB_io_grantStatus_8_valid),
    .io_grantStatus_8_set(sourceB_io_grantStatus_8_set),
    .io_grantStatus_8_tag(sourceB_io_grantStatus_8_tag),
    .io_grantStatus_9_valid(sourceB_io_grantStatus_9_valid),
    .io_grantStatus_9_set(sourceB_io_grantStatus_9_set),
    .io_grantStatus_9_tag(sourceB_io_grantStatus_9_tag),
    .io_grantStatus_10_valid(sourceB_io_grantStatus_10_valid),
    .io_grantStatus_10_set(sourceB_io_grantStatus_10_set),
    .io_grantStatus_10_tag(sourceB_io_grantStatus_10_tag),
    .io_grantStatus_11_valid(sourceB_io_grantStatus_11_valid),
    .io_grantStatus_11_set(sourceB_io_grantStatus_11_set),
    .io_grantStatus_11_tag(sourceB_io_grantStatus_11_tag),
    .io_grantStatus_12_valid(sourceB_io_grantStatus_12_valid),
    .io_grantStatus_12_set(sourceB_io_grantStatus_12_set),
    .io_grantStatus_12_tag(sourceB_io_grantStatus_12_tag),
    .io_grantStatus_13_valid(sourceB_io_grantStatus_13_valid),
    .io_grantStatus_13_set(sourceB_io_grantStatus_13_set),
    .io_grantStatus_13_tag(sourceB_io_grantStatus_13_tag),
    .io_grantStatus_14_valid(sourceB_io_grantStatus_14_valid),
    .io_grantStatus_14_set(sourceB_io_grantStatus_14_set),
    .io_grantStatus_14_tag(sourceB_io_grantStatus_14_tag),
    .io_grantStatus_15_valid(sourceB_io_grantStatus_15_valid),
    .io_grantStatus_15_set(sourceB_io_grantStatus_15_set),
    .io_grantStatus_15_tag(sourceB_io_grantStatus_15_tag)
  );
  FastArbiter_3 source_barb ( // @[CoupledL2.scala 144:21]
    .clock(source_barb_clock),
    .reset(source_barb_reset),
    .io_in_0_ready(source_barb_io_in_0_ready),
    .io_in_0_valid(source_barb_io_in_0_valid),
    .io_in_0_bits_tag(source_barb_io_in_0_bits_tag),
    .io_in_0_bits_set(source_barb_io_in_0_bits_set),
    .io_in_0_bits_param(source_barb_io_in_0_bits_param),
    .io_in_1_ready(source_barb_io_in_1_ready),
    .io_in_1_valid(source_barb_io_in_1_valid),
    .io_in_1_bits_tag(source_barb_io_in_1_bits_tag),
    .io_in_1_bits_set(source_barb_io_in_1_bits_set),
    .io_in_1_bits_param(source_barb_io_in_1_bits_param),
    .io_in_2_ready(source_barb_io_in_2_ready),
    .io_in_2_valid(source_barb_io_in_2_valid),
    .io_in_2_bits_tag(source_barb_io_in_2_bits_tag),
    .io_in_2_bits_set(source_barb_io_in_2_bits_set),
    .io_in_2_bits_param(source_barb_io_in_2_bits_param),
    .io_in_3_ready(source_barb_io_in_3_ready),
    .io_in_3_valid(source_barb_io_in_3_valid),
    .io_in_3_bits_tag(source_barb_io_in_3_bits_tag),
    .io_in_3_bits_set(source_barb_io_in_3_bits_set),
    .io_in_3_bits_param(source_barb_io_in_3_bits_param),
    .io_in_4_ready(source_barb_io_in_4_ready),
    .io_in_4_valid(source_barb_io_in_4_valid),
    .io_in_4_bits_tag(source_barb_io_in_4_bits_tag),
    .io_in_4_bits_set(source_barb_io_in_4_bits_set),
    .io_in_4_bits_param(source_barb_io_in_4_bits_param),
    .io_in_5_ready(source_barb_io_in_5_ready),
    .io_in_5_valid(source_barb_io_in_5_valid),
    .io_in_5_bits_tag(source_barb_io_in_5_bits_tag),
    .io_in_5_bits_set(source_barb_io_in_5_bits_set),
    .io_in_5_bits_param(source_barb_io_in_5_bits_param),
    .io_in_6_ready(source_barb_io_in_6_ready),
    .io_in_6_valid(source_barb_io_in_6_valid),
    .io_in_6_bits_tag(source_barb_io_in_6_bits_tag),
    .io_in_6_bits_set(source_barb_io_in_6_bits_set),
    .io_in_6_bits_param(source_barb_io_in_6_bits_param),
    .io_in_7_ready(source_barb_io_in_7_ready),
    .io_in_7_valid(source_barb_io_in_7_valid),
    .io_in_7_bits_tag(source_barb_io_in_7_bits_tag),
    .io_in_7_bits_set(source_barb_io_in_7_bits_set),
    .io_in_7_bits_param(source_barb_io_in_7_bits_param),
    .io_in_8_ready(source_barb_io_in_8_ready),
    .io_in_8_valid(source_barb_io_in_8_valid),
    .io_in_8_bits_tag(source_barb_io_in_8_bits_tag),
    .io_in_8_bits_set(source_barb_io_in_8_bits_set),
    .io_in_8_bits_param(source_barb_io_in_8_bits_param),
    .io_in_9_ready(source_barb_io_in_9_ready),
    .io_in_9_valid(source_barb_io_in_9_valid),
    .io_in_9_bits_tag(source_barb_io_in_9_bits_tag),
    .io_in_9_bits_set(source_barb_io_in_9_bits_set),
    .io_in_9_bits_param(source_barb_io_in_9_bits_param),
    .io_in_10_ready(source_barb_io_in_10_ready),
    .io_in_10_valid(source_barb_io_in_10_valid),
    .io_in_10_bits_tag(source_barb_io_in_10_bits_tag),
    .io_in_10_bits_set(source_barb_io_in_10_bits_set),
    .io_in_10_bits_param(source_barb_io_in_10_bits_param),
    .io_in_11_ready(source_barb_io_in_11_ready),
    .io_in_11_valid(source_barb_io_in_11_valid),
    .io_in_11_bits_tag(source_barb_io_in_11_bits_tag),
    .io_in_11_bits_set(source_barb_io_in_11_bits_set),
    .io_in_11_bits_param(source_barb_io_in_11_bits_param),
    .io_in_12_ready(source_barb_io_in_12_ready),
    .io_in_12_valid(source_barb_io_in_12_valid),
    .io_in_12_bits_tag(source_barb_io_in_12_bits_tag),
    .io_in_12_bits_set(source_barb_io_in_12_bits_set),
    .io_in_12_bits_param(source_barb_io_in_12_bits_param),
    .io_in_13_ready(source_barb_io_in_13_ready),
    .io_in_13_valid(source_barb_io_in_13_valid),
    .io_in_13_bits_tag(source_barb_io_in_13_bits_tag),
    .io_in_13_bits_set(source_barb_io_in_13_bits_set),
    .io_in_13_bits_param(source_barb_io_in_13_bits_param),
    .io_in_14_ready(source_barb_io_in_14_ready),
    .io_in_14_valid(source_barb_io_in_14_valid),
    .io_in_14_bits_tag(source_barb_io_in_14_bits_tag),
    .io_in_14_bits_set(source_barb_io_in_14_bits_set),
    .io_in_14_bits_param(source_barb_io_in_14_bits_param),
    .io_in_15_ready(source_barb_io_in_15_ready),
    .io_in_15_valid(source_barb_io_in_15_valid),
    .io_in_15_bits_tag(source_barb_io_in_15_bits_tag),
    .io_in_15_bits_set(source_barb_io_in_15_bits_set),
    .io_in_15_bits_param(source_barb_io_in_15_bits_param),
    .io_out_ready(source_barb_io_out_ready),
    .io_out_valid(source_barb_io_out_valid),
    .io_out_bits_tag(source_barb_io_out_bits_tag),
    .io_out_bits_set(source_barb_io_out_bits_set),
    .io_out_bits_opcode(source_barb_io_out_bits_opcode),
    .io_out_bits_param(source_barb_io_out_bits_param)
  );
  FastArbiter_4 mshr_task_arb ( // @[CoupledL2.scala 144:21]
    .clock(mshr_task_arb_clock),
    .reset(mshr_task_arb_reset),
    .io_in_0_ready(mshr_task_arb_io_in_0_ready),
    .io_in_0_valid(mshr_task_arb_io_in_0_valid),
    .io_in_0_bits_channel(mshr_task_arb_io_in_0_bits_channel),
    .io_in_0_bits_set(mshr_task_arb_io_in_0_bits_set),
    .io_in_0_bits_tag(mshr_task_arb_io_in_0_bits_tag),
    .io_in_0_bits_off(mshr_task_arb_io_in_0_bits_off),
    .io_in_0_bits_opcode(mshr_task_arb_io_in_0_bits_opcode),
    .io_in_0_bits_param(mshr_task_arb_io_in_0_bits_param),
    .io_in_0_bits_size(mshr_task_arb_io_in_0_bits_size),
    .io_in_0_bits_sourceId(mshr_task_arb_io_in_0_bits_sourceId),
    .io_in_0_bits_mshrId(mshr_task_arb_io_in_0_bits_mshrId),
    .io_in_0_bits_useProbeData(mshr_task_arb_io_in_0_bits_useProbeData),
    .io_in_0_bits_dirty(mshr_task_arb_io_in_0_bits_dirty),
    .io_in_0_bits_way(mshr_task_arb_io_in_0_bits_way),
    .io_in_0_bits_meta_dirty(mshr_task_arb_io_in_0_bits_meta_dirty),
    .io_in_0_bits_meta_state(mshr_task_arb_io_in_0_bits_meta_state),
    .io_in_0_bits_meta_clients(mshr_task_arb_io_in_0_bits_meta_clients),
    .io_in_0_bits_meta_accessed(mshr_task_arb_io_in_0_bits_meta_accessed),
    .io_in_0_bits_metaWen(mshr_task_arb_io_in_0_bits_metaWen),
    .io_in_0_bits_tagWen(mshr_task_arb_io_in_0_bits_tagWen),
    .io_in_0_bits_dsWen(mshr_task_arb_io_in_0_bits_dsWen),
    .io_in_0_bits_wayMask(mshr_task_arb_io_in_0_bits_wayMask),
    .io_in_0_bits_replTask(mshr_task_arb_io_in_0_bits_replTask),
    .io_in_0_bits_reqSource(mshr_task_arb_io_in_0_bits_reqSource),
    .io_in_1_ready(mshr_task_arb_io_in_1_ready),
    .io_in_1_valid(mshr_task_arb_io_in_1_valid),
    .io_in_1_bits_channel(mshr_task_arb_io_in_1_bits_channel),
    .io_in_1_bits_set(mshr_task_arb_io_in_1_bits_set),
    .io_in_1_bits_tag(mshr_task_arb_io_in_1_bits_tag),
    .io_in_1_bits_off(mshr_task_arb_io_in_1_bits_off),
    .io_in_1_bits_opcode(mshr_task_arb_io_in_1_bits_opcode),
    .io_in_1_bits_param(mshr_task_arb_io_in_1_bits_param),
    .io_in_1_bits_size(mshr_task_arb_io_in_1_bits_size),
    .io_in_1_bits_sourceId(mshr_task_arb_io_in_1_bits_sourceId),
    .io_in_1_bits_mshrId(mshr_task_arb_io_in_1_bits_mshrId),
    .io_in_1_bits_useProbeData(mshr_task_arb_io_in_1_bits_useProbeData),
    .io_in_1_bits_dirty(mshr_task_arb_io_in_1_bits_dirty),
    .io_in_1_bits_way(mshr_task_arb_io_in_1_bits_way),
    .io_in_1_bits_meta_dirty(mshr_task_arb_io_in_1_bits_meta_dirty),
    .io_in_1_bits_meta_state(mshr_task_arb_io_in_1_bits_meta_state),
    .io_in_1_bits_meta_clients(mshr_task_arb_io_in_1_bits_meta_clients),
    .io_in_1_bits_meta_accessed(mshr_task_arb_io_in_1_bits_meta_accessed),
    .io_in_1_bits_metaWen(mshr_task_arb_io_in_1_bits_metaWen),
    .io_in_1_bits_tagWen(mshr_task_arb_io_in_1_bits_tagWen),
    .io_in_1_bits_dsWen(mshr_task_arb_io_in_1_bits_dsWen),
    .io_in_1_bits_wayMask(mshr_task_arb_io_in_1_bits_wayMask),
    .io_in_1_bits_replTask(mshr_task_arb_io_in_1_bits_replTask),
    .io_in_1_bits_reqSource(mshr_task_arb_io_in_1_bits_reqSource),
    .io_in_2_ready(mshr_task_arb_io_in_2_ready),
    .io_in_2_valid(mshr_task_arb_io_in_2_valid),
    .io_in_2_bits_channel(mshr_task_arb_io_in_2_bits_channel),
    .io_in_2_bits_set(mshr_task_arb_io_in_2_bits_set),
    .io_in_2_bits_tag(mshr_task_arb_io_in_2_bits_tag),
    .io_in_2_bits_off(mshr_task_arb_io_in_2_bits_off),
    .io_in_2_bits_opcode(mshr_task_arb_io_in_2_bits_opcode),
    .io_in_2_bits_param(mshr_task_arb_io_in_2_bits_param),
    .io_in_2_bits_size(mshr_task_arb_io_in_2_bits_size),
    .io_in_2_bits_sourceId(mshr_task_arb_io_in_2_bits_sourceId),
    .io_in_2_bits_mshrId(mshr_task_arb_io_in_2_bits_mshrId),
    .io_in_2_bits_useProbeData(mshr_task_arb_io_in_2_bits_useProbeData),
    .io_in_2_bits_dirty(mshr_task_arb_io_in_2_bits_dirty),
    .io_in_2_bits_way(mshr_task_arb_io_in_2_bits_way),
    .io_in_2_bits_meta_dirty(mshr_task_arb_io_in_2_bits_meta_dirty),
    .io_in_2_bits_meta_state(mshr_task_arb_io_in_2_bits_meta_state),
    .io_in_2_bits_meta_clients(mshr_task_arb_io_in_2_bits_meta_clients),
    .io_in_2_bits_meta_accessed(mshr_task_arb_io_in_2_bits_meta_accessed),
    .io_in_2_bits_metaWen(mshr_task_arb_io_in_2_bits_metaWen),
    .io_in_2_bits_tagWen(mshr_task_arb_io_in_2_bits_tagWen),
    .io_in_2_bits_dsWen(mshr_task_arb_io_in_2_bits_dsWen),
    .io_in_2_bits_wayMask(mshr_task_arb_io_in_2_bits_wayMask),
    .io_in_2_bits_replTask(mshr_task_arb_io_in_2_bits_replTask),
    .io_in_2_bits_reqSource(mshr_task_arb_io_in_2_bits_reqSource),
    .io_in_3_ready(mshr_task_arb_io_in_3_ready),
    .io_in_3_valid(mshr_task_arb_io_in_3_valid),
    .io_in_3_bits_channel(mshr_task_arb_io_in_3_bits_channel),
    .io_in_3_bits_set(mshr_task_arb_io_in_3_bits_set),
    .io_in_3_bits_tag(mshr_task_arb_io_in_3_bits_tag),
    .io_in_3_bits_off(mshr_task_arb_io_in_3_bits_off),
    .io_in_3_bits_opcode(mshr_task_arb_io_in_3_bits_opcode),
    .io_in_3_bits_param(mshr_task_arb_io_in_3_bits_param),
    .io_in_3_bits_size(mshr_task_arb_io_in_3_bits_size),
    .io_in_3_bits_sourceId(mshr_task_arb_io_in_3_bits_sourceId),
    .io_in_3_bits_mshrId(mshr_task_arb_io_in_3_bits_mshrId),
    .io_in_3_bits_useProbeData(mshr_task_arb_io_in_3_bits_useProbeData),
    .io_in_3_bits_dirty(mshr_task_arb_io_in_3_bits_dirty),
    .io_in_3_bits_way(mshr_task_arb_io_in_3_bits_way),
    .io_in_3_bits_meta_dirty(mshr_task_arb_io_in_3_bits_meta_dirty),
    .io_in_3_bits_meta_state(mshr_task_arb_io_in_3_bits_meta_state),
    .io_in_3_bits_meta_clients(mshr_task_arb_io_in_3_bits_meta_clients),
    .io_in_3_bits_meta_accessed(mshr_task_arb_io_in_3_bits_meta_accessed),
    .io_in_3_bits_metaWen(mshr_task_arb_io_in_3_bits_metaWen),
    .io_in_3_bits_tagWen(mshr_task_arb_io_in_3_bits_tagWen),
    .io_in_3_bits_dsWen(mshr_task_arb_io_in_3_bits_dsWen),
    .io_in_3_bits_wayMask(mshr_task_arb_io_in_3_bits_wayMask),
    .io_in_3_bits_replTask(mshr_task_arb_io_in_3_bits_replTask),
    .io_in_3_bits_reqSource(mshr_task_arb_io_in_3_bits_reqSource),
    .io_in_4_ready(mshr_task_arb_io_in_4_ready),
    .io_in_4_valid(mshr_task_arb_io_in_4_valid),
    .io_in_4_bits_channel(mshr_task_arb_io_in_4_bits_channel),
    .io_in_4_bits_set(mshr_task_arb_io_in_4_bits_set),
    .io_in_4_bits_tag(mshr_task_arb_io_in_4_bits_tag),
    .io_in_4_bits_off(mshr_task_arb_io_in_4_bits_off),
    .io_in_4_bits_opcode(mshr_task_arb_io_in_4_bits_opcode),
    .io_in_4_bits_param(mshr_task_arb_io_in_4_bits_param),
    .io_in_4_bits_size(mshr_task_arb_io_in_4_bits_size),
    .io_in_4_bits_sourceId(mshr_task_arb_io_in_4_bits_sourceId),
    .io_in_4_bits_mshrId(mshr_task_arb_io_in_4_bits_mshrId),
    .io_in_4_bits_useProbeData(mshr_task_arb_io_in_4_bits_useProbeData),
    .io_in_4_bits_dirty(mshr_task_arb_io_in_4_bits_dirty),
    .io_in_4_bits_way(mshr_task_arb_io_in_4_bits_way),
    .io_in_4_bits_meta_dirty(mshr_task_arb_io_in_4_bits_meta_dirty),
    .io_in_4_bits_meta_state(mshr_task_arb_io_in_4_bits_meta_state),
    .io_in_4_bits_meta_clients(mshr_task_arb_io_in_4_bits_meta_clients),
    .io_in_4_bits_meta_accessed(mshr_task_arb_io_in_4_bits_meta_accessed),
    .io_in_4_bits_metaWen(mshr_task_arb_io_in_4_bits_metaWen),
    .io_in_4_bits_tagWen(mshr_task_arb_io_in_4_bits_tagWen),
    .io_in_4_bits_dsWen(mshr_task_arb_io_in_4_bits_dsWen),
    .io_in_4_bits_wayMask(mshr_task_arb_io_in_4_bits_wayMask),
    .io_in_4_bits_replTask(mshr_task_arb_io_in_4_bits_replTask),
    .io_in_4_bits_reqSource(mshr_task_arb_io_in_4_bits_reqSource),
    .io_in_5_ready(mshr_task_arb_io_in_5_ready),
    .io_in_5_valid(mshr_task_arb_io_in_5_valid),
    .io_in_5_bits_channel(mshr_task_arb_io_in_5_bits_channel),
    .io_in_5_bits_set(mshr_task_arb_io_in_5_bits_set),
    .io_in_5_bits_tag(mshr_task_arb_io_in_5_bits_tag),
    .io_in_5_bits_off(mshr_task_arb_io_in_5_bits_off),
    .io_in_5_bits_opcode(mshr_task_arb_io_in_5_bits_opcode),
    .io_in_5_bits_param(mshr_task_arb_io_in_5_bits_param),
    .io_in_5_bits_size(mshr_task_arb_io_in_5_bits_size),
    .io_in_5_bits_sourceId(mshr_task_arb_io_in_5_bits_sourceId),
    .io_in_5_bits_mshrId(mshr_task_arb_io_in_5_bits_mshrId),
    .io_in_5_bits_useProbeData(mshr_task_arb_io_in_5_bits_useProbeData),
    .io_in_5_bits_dirty(mshr_task_arb_io_in_5_bits_dirty),
    .io_in_5_bits_way(mshr_task_arb_io_in_5_bits_way),
    .io_in_5_bits_meta_dirty(mshr_task_arb_io_in_5_bits_meta_dirty),
    .io_in_5_bits_meta_state(mshr_task_arb_io_in_5_bits_meta_state),
    .io_in_5_bits_meta_clients(mshr_task_arb_io_in_5_bits_meta_clients),
    .io_in_5_bits_meta_accessed(mshr_task_arb_io_in_5_bits_meta_accessed),
    .io_in_5_bits_metaWen(mshr_task_arb_io_in_5_bits_metaWen),
    .io_in_5_bits_tagWen(mshr_task_arb_io_in_5_bits_tagWen),
    .io_in_5_bits_dsWen(mshr_task_arb_io_in_5_bits_dsWen),
    .io_in_5_bits_wayMask(mshr_task_arb_io_in_5_bits_wayMask),
    .io_in_5_bits_replTask(mshr_task_arb_io_in_5_bits_replTask),
    .io_in_5_bits_reqSource(mshr_task_arb_io_in_5_bits_reqSource),
    .io_in_6_ready(mshr_task_arb_io_in_6_ready),
    .io_in_6_valid(mshr_task_arb_io_in_6_valid),
    .io_in_6_bits_channel(mshr_task_arb_io_in_6_bits_channel),
    .io_in_6_bits_set(mshr_task_arb_io_in_6_bits_set),
    .io_in_6_bits_tag(mshr_task_arb_io_in_6_bits_tag),
    .io_in_6_bits_off(mshr_task_arb_io_in_6_bits_off),
    .io_in_6_bits_opcode(mshr_task_arb_io_in_6_bits_opcode),
    .io_in_6_bits_param(mshr_task_arb_io_in_6_bits_param),
    .io_in_6_bits_size(mshr_task_arb_io_in_6_bits_size),
    .io_in_6_bits_sourceId(mshr_task_arb_io_in_6_bits_sourceId),
    .io_in_6_bits_mshrId(mshr_task_arb_io_in_6_bits_mshrId),
    .io_in_6_bits_useProbeData(mshr_task_arb_io_in_6_bits_useProbeData),
    .io_in_6_bits_dirty(mshr_task_arb_io_in_6_bits_dirty),
    .io_in_6_bits_way(mshr_task_arb_io_in_6_bits_way),
    .io_in_6_bits_meta_dirty(mshr_task_arb_io_in_6_bits_meta_dirty),
    .io_in_6_bits_meta_state(mshr_task_arb_io_in_6_bits_meta_state),
    .io_in_6_bits_meta_clients(mshr_task_arb_io_in_6_bits_meta_clients),
    .io_in_6_bits_meta_accessed(mshr_task_arb_io_in_6_bits_meta_accessed),
    .io_in_6_bits_metaWen(mshr_task_arb_io_in_6_bits_metaWen),
    .io_in_6_bits_tagWen(mshr_task_arb_io_in_6_bits_tagWen),
    .io_in_6_bits_dsWen(mshr_task_arb_io_in_6_bits_dsWen),
    .io_in_6_bits_wayMask(mshr_task_arb_io_in_6_bits_wayMask),
    .io_in_6_bits_replTask(mshr_task_arb_io_in_6_bits_replTask),
    .io_in_6_bits_reqSource(mshr_task_arb_io_in_6_bits_reqSource),
    .io_in_7_ready(mshr_task_arb_io_in_7_ready),
    .io_in_7_valid(mshr_task_arb_io_in_7_valid),
    .io_in_7_bits_channel(mshr_task_arb_io_in_7_bits_channel),
    .io_in_7_bits_set(mshr_task_arb_io_in_7_bits_set),
    .io_in_7_bits_tag(mshr_task_arb_io_in_7_bits_tag),
    .io_in_7_bits_off(mshr_task_arb_io_in_7_bits_off),
    .io_in_7_bits_opcode(mshr_task_arb_io_in_7_bits_opcode),
    .io_in_7_bits_param(mshr_task_arb_io_in_7_bits_param),
    .io_in_7_bits_size(mshr_task_arb_io_in_7_bits_size),
    .io_in_7_bits_sourceId(mshr_task_arb_io_in_7_bits_sourceId),
    .io_in_7_bits_mshrId(mshr_task_arb_io_in_7_bits_mshrId),
    .io_in_7_bits_useProbeData(mshr_task_arb_io_in_7_bits_useProbeData),
    .io_in_7_bits_dirty(mshr_task_arb_io_in_7_bits_dirty),
    .io_in_7_bits_way(mshr_task_arb_io_in_7_bits_way),
    .io_in_7_bits_meta_dirty(mshr_task_arb_io_in_7_bits_meta_dirty),
    .io_in_7_bits_meta_state(mshr_task_arb_io_in_7_bits_meta_state),
    .io_in_7_bits_meta_clients(mshr_task_arb_io_in_7_bits_meta_clients),
    .io_in_7_bits_meta_accessed(mshr_task_arb_io_in_7_bits_meta_accessed),
    .io_in_7_bits_metaWen(mshr_task_arb_io_in_7_bits_metaWen),
    .io_in_7_bits_tagWen(mshr_task_arb_io_in_7_bits_tagWen),
    .io_in_7_bits_dsWen(mshr_task_arb_io_in_7_bits_dsWen),
    .io_in_7_bits_wayMask(mshr_task_arb_io_in_7_bits_wayMask),
    .io_in_7_bits_replTask(mshr_task_arb_io_in_7_bits_replTask),
    .io_in_7_bits_reqSource(mshr_task_arb_io_in_7_bits_reqSource),
    .io_in_8_ready(mshr_task_arb_io_in_8_ready),
    .io_in_8_valid(mshr_task_arb_io_in_8_valid),
    .io_in_8_bits_channel(mshr_task_arb_io_in_8_bits_channel),
    .io_in_8_bits_set(mshr_task_arb_io_in_8_bits_set),
    .io_in_8_bits_tag(mshr_task_arb_io_in_8_bits_tag),
    .io_in_8_bits_off(mshr_task_arb_io_in_8_bits_off),
    .io_in_8_bits_opcode(mshr_task_arb_io_in_8_bits_opcode),
    .io_in_8_bits_param(mshr_task_arb_io_in_8_bits_param),
    .io_in_8_bits_size(mshr_task_arb_io_in_8_bits_size),
    .io_in_8_bits_sourceId(mshr_task_arb_io_in_8_bits_sourceId),
    .io_in_8_bits_mshrId(mshr_task_arb_io_in_8_bits_mshrId),
    .io_in_8_bits_useProbeData(mshr_task_arb_io_in_8_bits_useProbeData),
    .io_in_8_bits_dirty(mshr_task_arb_io_in_8_bits_dirty),
    .io_in_8_bits_way(mshr_task_arb_io_in_8_bits_way),
    .io_in_8_bits_meta_dirty(mshr_task_arb_io_in_8_bits_meta_dirty),
    .io_in_8_bits_meta_state(mshr_task_arb_io_in_8_bits_meta_state),
    .io_in_8_bits_meta_clients(mshr_task_arb_io_in_8_bits_meta_clients),
    .io_in_8_bits_meta_accessed(mshr_task_arb_io_in_8_bits_meta_accessed),
    .io_in_8_bits_metaWen(mshr_task_arb_io_in_8_bits_metaWen),
    .io_in_8_bits_tagWen(mshr_task_arb_io_in_8_bits_tagWen),
    .io_in_8_bits_dsWen(mshr_task_arb_io_in_8_bits_dsWen),
    .io_in_8_bits_wayMask(mshr_task_arb_io_in_8_bits_wayMask),
    .io_in_8_bits_replTask(mshr_task_arb_io_in_8_bits_replTask),
    .io_in_8_bits_reqSource(mshr_task_arb_io_in_8_bits_reqSource),
    .io_in_9_ready(mshr_task_arb_io_in_9_ready),
    .io_in_9_valid(mshr_task_arb_io_in_9_valid),
    .io_in_9_bits_channel(mshr_task_arb_io_in_9_bits_channel),
    .io_in_9_bits_set(mshr_task_arb_io_in_9_bits_set),
    .io_in_9_bits_tag(mshr_task_arb_io_in_9_bits_tag),
    .io_in_9_bits_off(mshr_task_arb_io_in_9_bits_off),
    .io_in_9_bits_opcode(mshr_task_arb_io_in_9_bits_opcode),
    .io_in_9_bits_param(mshr_task_arb_io_in_9_bits_param),
    .io_in_9_bits_size(mshr_task_arb_io_in_9_bits_size),
    .io_in_9_bits_sourceId(mshr_task_arb_io_in_9_bits_sourceId),
    .io_in_9_bits_mshrId(mshr_task_arb_io_in_9_bits_mshrId),
    .io_in_9_bits_useProbeData(mshr_task_arb_io_in_9_bits_useProbeData),
    .io_in_9_bits_dirty(mshr_task_arb_io_in_9_bits_dirty),
    .io_in_9_bits_way(mshr_task_arb_io_in_9_bits_way),
    .io_in_9_bits_meta_dirty(mshr_task_arb_io_in_9_bits_meta_dirty),
    .io_in_9_bits_meta_state(mshr_task_arb_io_in_9_bits_meta_state),
    .io_in_9_bits_meta_clients(mshr_task_arb_io_in_9_bits_meta_clients),
    .io_in_9_bits_meta_accessed(mshr_task_arb_io_in_9_bits_meta_accessed),
    .io_in_9_bits_metaWen(mshr_task_arb_io_in_9_bits_metaWen),
    .io_in_9_bits_tagWen(mshr_task_arb_io_in_9_bits_tagWen),
    .io_in_9_bits_dsWen(mshr_task_arb_io_in_9_bits_dsWen),
    .io_in_9_bits_wayMask(mshr_task_arb_io_in_9_bits_wayMask),
    .io_in_9_bits_replTask(mshr_task_arb_io_in_9_bits_replTask),
    .io_in_9_bits_reqSource(mshr_task_arb_io_in_9_bits_reqSource),
    .io_in_10_ready(mshr_task_arb_io_in_10_ready),
    .io_in_10_valid(mshr_task_arb_io_in_10_valid),
    .io_in_10_bits_channel(mshr_task_arb_io_in_10_bits_channel),
    .io_in_10_bits_set(mshr_task_arb_io_in_10_bits_set),
    .io_in_10_bits_tag(mshr_task_arb_io_in_10_bits_tag),
    .io_in_10_bits_off(mshr_task_arb_io_in_10_bits_off),
    .io_in_10_bits_opcode(mshr_task_arb_io_in_10_bits_opcode),
    .io_in_10_bits_param(mshr_task_arb_io_in_10_bits_param),
    .io_in_10_bits_size(mshr_task_arb_io_in_10_bits_size),
    .io_in_10_bits_sourceId(mshr_task_arb_io_in_10_bits_sourceId),
    .io_in_10_bits_mshrId(mshr_task_arb_io_in_10_bits_mshrId),
    .io_in_10_bits_useProbeData(mshr_task_arb_io_in_10_bits_useProbeData),
    .io_in_10_bits_dirty(mshr_task_arb_io_in_10_bits_dirty),
    .io_in_10_bits_way(mshr_task_arb_io_in_10_bits_way),
    .io_in_10_bits_meta_dirty(mshr_task_arb_io_in_10_bits_meta_dirty),
    .io_in_10_bits_meta_state(mshr_task_arb_io_in_10_bits_meta_state),
    .io_in_10_bits_meta_clients(mshr_task_arb_io_in_10_bits_meta_clients),
    .io_in_10_bits_meta_accessed(mshr_task_arb_io_in_10_bits_meta_accessed),
    .io_in_10_bits_metaWen(mshr_task_arb_io_in_10_bits_metaWen),
    .io_in_10_bits_tagWen(mshr_task_arb_io_in_10_bits_tagWen),
    .io_in_10_bits_dsWen(mshr_task_arb_io_in_10_bits_dsWen),
    .io_in_10_bits_wayMask(mshr_task_arb_io_in_10_bits_wayMask),
    .io_in_10_bits_replTask(mshr_task_arb_io_in_10_bits_replTask),
    .io_in_10_bits_reqSource(mshr_task_arb_io_in_10_bits_reqSource),
    .io_in_11_ready(mshr_task_arb_io_in_11_ready),
    .io_in_11_valid(mshr_task_arb_io_in_11_valid),
    .io_in_11_bits_channel(mshr_task_arb_io_in_11_bits_channel),
    .io_in_11_bits_set(mshr_task_arb_io_in_11_bits_set),
    .io_in_11_bits_tag(mshr_task_arb_io_in_11_bits_tag),
    .io_in_11_bits_off(mshr_task_arb_io_in_11_bits_off),
    .io_in_11_bits_opcode(mshr_task_arb_io_in_11_bits_opcode),
    .io_in_11_bits_param(mshr_task_arb_io_in_11_bits_param),
    .io_in_11_bits_size(mshr_task_arb_io_in_11_bits_size),
    .io_in_11_bits_sourceId(mshr_task_arb_io_in_11_bits_sourceId),
    .io_in_11_bits_mshrId(mshr_task_arb_io_in_11_bits_mshrId),
    .io_in_11_bits_useProbeData(mshr_task_arb_io_in_11_bits_useProbeData),
    .io_in_11_bits_dirty(mshr_task_arb_io_in_11_bits_dirty),
    .io_in_11_bits_way(mshr_task_arb_io_in_11_bits_way),
    .io_in_11_bits_meta_dirty(mshr_task_arb_io_in_11_bits_meta_dirty),
    .io_in_11_bits_meta_state(mshr_task_arb_io_in_11_bits_meta_state),
    .io_in_11_bits_meta_clients(mshr_task_arb_io_in_11_bits_meta_clients),
    .io_in_11_bits_meta_accessed(mshr_task_arb_io_in_11_bits_meta_accessed),
    .io_in_11_bits_metaWen(mshr_task_arb_io_in_11_bits_metaWen),
    .io_in_11_bits_tagWen(mshr_task_arb_io_in_11_bits_tagWen),
    .io_in_11_bits_dsWen(mshr_task_arb_io_in_11_bits_dsWen),
    .io_in_11_bits_wayMask(mshr_task_arb_io_in_11_bits_wayMask),
    .io_in_11_bits_replTask(mshr_task_arb_io_in_11_bits_replTask),
    .io_in_11_bits_reqSource(mshr_task_arb_io_in_11_bits_reqSource),
    .io_in_12_ready(mshr_task_arb_io_in_12_ready),
    .io_in_12_valid(mshr_task_arb_io_in_12_valid),
    .io_in_12_bits_channel(mshr_task_arb_io_in_12_bits_channel),
    .io_in_12_bits_set(mshr_task_arb_io_in_12_bits_set),
    .io_in_12_bits_tag(mshr_task_arb_io_in_12_bits_tag),
    .io_in_12_bits_off(mshr_task_arb_io_in_12_bits_off),
    .io_in_12_bits_opcode(mshr_task_arb_io_in_12_bits_opcode),
    .io_in_12_bits_param(mshr_task_arb_io_in_12_bits_param),
    .io_in_12_bits_size(mshr_task_arb_io_in_12_bits_size),
    .io_in_12_bits_sourceId(mshr_task_arb_io_in_12_bits_sourceId),
    .io_in_12_bits_mshrId(mshr_task_arb_io_in_12_bits_mshrId),
    .io_in_12_bits_useProbeData(mshr_task_arb_io_in_12_bits_useProbeData),
    .io_in_12_bits_dirty(mshr_task_arb_io_in_12_bits_dirty),
    .io_in_12_bits_way(mshr_task_arb_io_in_12_bits_way),
    .io_in_12_bits_meta_dirty(mshr_task_arb_io_in_12_bits_meta_dirty),
    .io_in_12_bits_meta_state(mshr_task_arb_io_in_12_bits_meta_state),
    .io_in_12_bits_meta_clients(mshr_task_arb_io_in_12_bits_meta_clients),
    .io_in_12_bits_meta_accessed(mshr_task_arb_io_in_12_bits_meta_accessed),
    .io_in_12_bits_metaWen(mshr_task_arb_io_in_12_bits_metaWen),
    .io_in_12_bits_tagWen(mshr_task_arb_io_in_12_bits_tagWen),
    .io_in_12_bits_dsWen(mshr_task_arb_io_in_12_bits_dsWen),
    .io_in_12_bits_wayMask(mshr_task_arb_io_in_12_bits_wayMask),
    .io_in_12_bits_replTask(mshr_task_arb_io_in_12_bits_replTask),
    .io_in_12_bits_reqSource(mshr_task_arb_io_in_12_bits_reqSource),
    .io_in_13_ready(mshr_task_arb_io_in_13_ready),
    .io_in_13_valid(mshr_task_arb_io_in_13_valid),
    .io_in_13_bits_channel(mshr_task_arb_io_in_13_bits_channel),
    .io_in_13_bits_set(mshr_task_arb_io_in_13_bits_set),
    .io_in_13_bits_tag(mshr_task_arb_io_in_13_bits_tag),
    .io_in_13_bits_off(mshr_task_arb_io_in_13_bits_off),
    .io_in_13_bits_opcode(mshr_task_arb_io_in_13_bits_opcode),
    .io_in_13_bits_param(mshr_task_arb_io_in_13_bits_param),
    .io_in_13_bits_size(mshr_task_arb_io_in_13_bits_size),
    .io_in_13_bits_sourceId(mshr_task_arb_io_in_13_bits_sourceId),
    .io_in_13_bits_mshrId(mshr_task_arb_io_in_13_bits_mshrId),
    .io_in_13_bits_useProbeData(mshr_task_arb_io_in_13_bits_useProbeData),
    .io_in_13_bits_dirty(mshr_task_arb_io_in_13_bits_dirty),
    .io_in_13_bits_way(mshr_task_arb_io_in_13_bits_way),
    .io_in_13_bits_meta_dirty(mshr_task_arb_io_in_13_bits_meta_dirty),
    .io_in_13_bits_meta_state(mshr_task_arb_io_in_13_bits_meta_state),
    .io_in_13_bits_meta_clients(mshr_task_arb_io_in_13_bits_meta_clients),
    .io_in_13_bits_meta_accessed(mshr_task_arb_io_in_13_bits_meta_accessed),
    .io_in_13_bits_metaWen(mshr_task_arb_io_in_13_bits_metaWen),
    .io_in_13_bits_tagWen(mshr_task_arb_io_in_13_bits_tagWen),
    .io_in_13_bits_dsWen(mshr_task_arb_io_in_13_bits_dsWen),
    .io_in_13_bits_wayMask(mshr_task_arb_io_in_13_bits_wayMask),
    .io_in_13_bits_replTask(mshr_task_arb_io_in_13_bits_replTask),
    .io_in_13_bits_reqSource(mshr_task_arb_io_in_13_bits_reqSource),
    .io_in_14_ready(mshr_task_arb_io_in_14_ready),
    .io_in_14_valid(mshr_task_arb_io_in_14_valid),
    .io_in_14_bits_channel(mshr_task_arb_io_in_14_bits_channel),
    .io_in_14_bits_set(mshr_task_arb_io_in_14_bits_set),
    .io_in_14_bits_tag(mshr_task_arb_io_in_14_bits_tag),
    .io_in_14_bits_off(mshr_task_arb_io_in_14_bits_off),
    .io_in_14_bits_opcode(mshr_task_arb_io_in_14_bits_opcode),
    .io_in_14_bits_param(mshr_task_arb_io_in_14_bits_param),
    .io_in_14_bits_size(mshr_task_arb_io_in_14_bits_size),
    .io_in_14_bits_sourceId(mshr_task_arb_io_in_14_bits_sourceId),
    .io_in_14_bits_mshrId(mshr_task_arb_io_in_14_bits_mshrId),
    .io_in_14_bits_useProbeData(mshr_task_arb_io_in_14_bits_useProbeData),
    .io_in_14_bits_dirty(mshr_task_arb_io_in_14_bits_dirty),
    .io_in_14_bits_way(mshr_task_arb_io_in_14_bits_way),
    .io_in_14_bits_meta_dirty(mshr_task_arb_io_in_14_bits_meta_dirty),
    .io_in_14_bits_meta_state(mshr_task_arb_io_in_14_bits_meta_state),
    .io_in_14_bits_meta_clients(mshr_task_arb_io_in_14_bits_meta_clients),
    .io_in_14_bits_meta_accessed(mshr_task_arb_io_in_14_bits_meta_accessed),
    .io_in_14_bits_metaWen(mshr_task_arb_io_in_14_bits_metaWen),
    .io_in_14_bits_tagWen(mshr_task_arb_io_in_14_bits_tagWen),
    .io_in_14_bits_dsWen(mshr_task_arb_io_in_14_bits_dsWen),
    .io_in_14_bits_wayMask(mshr_task_arb_io_in_14_bits_wayMask),
    .io_in_14_bits_replTask(mshr_task_arb_io_in_14_bits_replTask),
    .io_in_14_bits_reqSource(mshr_task_arb_io_in_14_bits_reqSource),
    .io_in_15_ready(mshr_task_arb_io_in_15_ready),
    .io_in_15_valid(mshr_task_arb_io_in_15_valid),
    .io_in_15_bits_channel(mshr_task_arb_io_in_15_bits_channel),
    .io_in_15_bits_set(mshr_task_arb_io_in_15_bits_set),
    .io_in_15_bits_tag(mshr_task_arb_io_in_15_bits_tag),
    .io_in_15_bits_off(mshr_task_arb_io_in_15_bits_off),
    .io_in_15_bits_opcode(mshr_task_arb_io_in_15_bits_opcode),
    .io_in_15_bits_param(mshr_task_arb_io_in_15_bits_param),
    .io_in_15_bits_size(mshr_task_arb_io_in_15_bits_size),
    .io_in_15_bits_sourceId(mshr_task_arb_io_in_15_bits_sourceId),
    .io_in_15_bits_mshrId(mshr_task_arb_io_in_15_bits_mshrId),
    .io_in_15_bits_useProbeData(mshr_task_arb_io_in_15_bits_useProbeData),
    .io_in_15_bits_dirty(mshr_task_arb_io_in_15_bits_dirty),
    .io_in_15_bits_way(mshr_task_arb_io_in_15_bits_way),
    .io_in_15_bits_meta_dirty(mshr_task_arb_io_in_15_bits_meta_dirty),
    .io_in_15_bits_meta_state(mshr_task_arb_io_in_15_bits_meta_state),
    .io_in_15_bits_meta_clients(mshr_task_arb_io_in_15_bits_meta_clients),
    .io_in_15_bits_meta_accessed(mshr_task_arb_io_in_15_bits_meta_accessed),
    .io_in_15_bits_metaWen(mshr_task_arb_io_in_15_bits_metaWen),
    .io_in_15_bits_tagWen(mshr_task_arb_io_in_15_bits_tagWen),
    .io_in_15_bits_dsWen(mshr_task_arb_io_in_15_bits_dsWen),
    .io_in_15_bits_wayMask(mshr_task_arb_io_in_15_bits_wayMask),
    .io_in_15_bits_replTask(mshr_task_arb_io_in_15_bits_replTask),
    .io_in_15_bits_reqSource(mshr_task_arb_io_in_15_bits_reqSource),
    .io_out_ready(mshr_task_arb_io_out_ready),
    .io_out_valid(mshr_task_arb_io_out_valid),
    .io_out_bits_channel(mshr_task_arb_io_out_bits_channel),
    .io_out_bits_set(mshr_task_arb_io_out_bits_set),
    .io_out_bits_tag(mshr_task_arb_io_out_bits_tag),
    .io_out_bits_off(mshr_task_arb_io_out_bits_off),
    .io_out_bits_opcode(mshr_task_arb_io_out_bits_opcode),
    .io_out_bits_param(mshr_task_arb_io_out_bits_param),
    .io_out_bits_size(mshr_task_arb_io_out_bits_size),
    .io_out_bits_sourceId(mshr_task_arb_io_out_bits_sourceId),
    .io_out_bits_mshrTask(mshr_task_arb_io_out_bits_mshrTask),
    .io_out_bits_mshrId(mshr_task_arb_io_out_bits_mshrId),
    .io_out_bits_useProbeData(mshr_task_arb_io_out_bits_useProbeData),
    .io_out_bits_dirty(mshr_task_arb_io_out_bits_dirty),
    .io_out_bits_way(mshr_task_arb_io_out_bits_way),
    .io_out_bits_meta_dirty(mshr_task_arb_io_out_bits_meta_dirty),
    .io_out_bits_meta_state(mshr_task_arb_io_out_bits_meta_state),
    .io_out_bits_meta_clients(mshr_task_arb_io_out_bits_meta_clients),
    .io_out_bits_meta_accessed(mshr_task_arb_io_out_bits_meta_accessed),
    .io_out_bits_metaWen(mshr_task_arb_io_out_bits_metaWen),
    .io_out_bits_tagWen(mshr_task_arb_io_out_bits_tagWen),
    .io_out_bits_dsWen(mshr_task_arb_io_out_bits_dsWen),
    .io_out_bits_wayMask(mshr_task_arb_io_out_bits_wayMask),
    .io_out_bits_replTask(mshr_task_arb_io_out_bits_replTask),
    .io_out_bits_reqSource(mshr_task_arb_io_out_bits_reqSource)
  );
  assign io_toReqArb_blockA_s1 = _mshrFull_T_1 >= 5'hf; // @[MSHRCtl.scala 102:45]
  assign io_toReqArb_blockB_s1 = _mshrFull_T_1 >= 5'h10; // @[MSHRCtl.scala 101:43]
  assign io_toMainPipe_mshr_alloc_ptr = {{4'd0}, _io_toMainPipe_mshr_alloc_ptr_T_9}; // @[MSHRCtl.scala 106:32]
  assign io_mshrTask_valid = mshr_task_arb_io_out_valid; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_channel = mshr_task_arb_io_out_bits_channel; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_set = mshr_task_arb_io_out_bits_set; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_tag = mshr_task_arb_io_out_bits_tag; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_off = mshr_task_arb_io_out_bits_off; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_opcode = mshr_task_arb_io_out_bits_opcode; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_param = mshr_task_arb_io_out_bits_param; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_size = mshr_task_arb_io_out_bits_size; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_sourceId = mshr_task_arb_io_out_bits_sourceId; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_mshrTask = mshr_task_arb_io_out_bits_mshrTask; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_mshrId = mshr_task_arb_io_out_bits_mshrId; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_useProbeData = mshr_task_arb_io_out_bits_useProbeData; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_dirty = mshr_task_arb_io_out_bits_dirty; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_way = mshr_task_arb_io_out_bits_way; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_meta_dirty = mshr_task_arb_io_out_bits_meta_dirty; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_meta_state = mshr_task_arb_io_out_bits_meta_state; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_meta_clients = mshr_task_arb_io_out_bits_meta_clients; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_meta_accessed = mshr_task_arb_io_out_bits_meta_accessed; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_metaWen = mshr_task_arb_io_out_bits_metaWen; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_tagWen = mshr_task_arb_io_out_bits_tagWen; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_dsWen = mshr_task_arb_io_out_bits_dsWen; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_wayMask = mshr_task_arb_io_out_bits_wayMask; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_replTask = mshr_task_arb_io_out_bits_replTask; // @[CoupledL2.scala 147:9]
  assign io_mshrTask_bits_reqSource = mshr_task_arb_io_out_bits_reqSource; // @[CoupledL2.scala 147:9]
  assign io_sourceA_valid = acquireUnit_io_sourceA_valid; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_opcode = acquireUnit_io_sourceA_bits_opcode; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_param = acquireUnit_io_sourceA_bits_param; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_size = acquireUnit_io_sourceA_bits_size; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_source = acquireUnit_io_sourceA_bits_source; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_address = acquireUnit_io_sourceA_bits_address; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_echo_blockisdirty = acquireUnit_io_sourceA_bits_echo_blockisdirty; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_mask = acquireUnit_io_sourceA_bits_mask; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_data = acquireUnit_io_sourceA_bits_data; // @[MSHRCtl.scala 145:14]
  assign io_sourceA_bits_corrupt = acquireUnit_io_sourceA_bits_corrupt; // @[MSHRCtl.scala 145:14]
  assign io_sourceB_valid = sourceB_io_sourceB_valid; // @[MSHRCtl.scala 151:14]
  assign io_sourceB_bits_opcode = sourceB_io_sourceB_bits_opcode; // @[MSHRCtl.scala 151:14]
  assign io_sourceB_bits_param = sourceB_io_sourceB_bits_param; // @[MSHRCtl.scala 151:14]
  assign io_sourceB_bits_address = sourceB_io_sourceB_bits_address; // @[MSHRCtl.scala 151:14]
  assign io_releaseBufWriteId = {{4'd0}, _io_releaseBufWriteId_T_29}; // @[MSHRCtl.scala 162:24]
  assign io_nestedwbDataId_valid = |_io_nestedwbDataId_valid_T; // @[MSHRCtl.scala 164:64]
  assign io_nestedwbDataId_bits = {{4'd0}, _io_nestedwbDataId_bits_T_29}; // @[MSHRCtl.scala 165:26]
  assign io_msInfo_0_valid = mshrs_0_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_set = mshrs_0_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_way = mshrs_0_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_reqTag = mshrs_0_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_willFree = mshrs_0_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_needRelease = mshrs_0_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_releaseNotSent = mshrs_0_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_metaTag = mshrs_0_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_dirHit = mshrs_0_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_nestB = mshrs_0_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_mergeB = mshrs_0_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_isAcqOrPrefetch = mshrs_0_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_0_bits_isPrefetch = mshrs_0_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_valid = mshrs_1_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_set = mshrs_1_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_way = mshrs_1_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_reqTag = mshrs_1_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_willFree = mshrs_1_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_needRelease = mshrs_1_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_releaseNotSent = mshrs_1_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_metaTag = mshrs_1_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_dirHit = mshrs_1_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_nestB = mshrs_1_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_mergeB = mshrs_1_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_isAcqOrPrefetch = mshrs_1_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_1_bits_isPrefetch = mshrs_1_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_valid = mshrs_2_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_set = mshrs_2_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_way = mshrs_2_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_reqTag = mshrs_2_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_willFree = mshrs_2_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_needRelease = mshrs_2_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_releaseNotSent = mshrs_2_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_metaTag = mshrs_2_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_dirHit = mshrs_2_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_nestB = mshrs_2_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_mergeB = mshrs_2_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_isAcqOrPrefetch = mshrs_2_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_2_bits_isPrefetch = mshrs_2_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_valid = mshrs_3_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_set = mshrs_3_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_way = mshrs_3_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_reqTag = mshrs_3_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_willFree = mshrs_3_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_needRelease = mshrs_3_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_releaseNotSent = mshrs_3_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_metaTag = mshrs_3_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_dirHit = mshrs_3_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_nestB = mshrs_3_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_mergeB = mshrs_3_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_isAcqOrPrefetch = mshrs_3_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_3_bits_isPrefetch = mshrs_3_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_valid = mshrs_4_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_set = mshrs_4_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_way = mshrs_4_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_reqTag = mshrs_4_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_willFree = mshrs_4_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_needRelease = mshrs_4_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_releaseNotSent = mshrs_4_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_metaTag = mshrs_4_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_dirHit = mshrs_4_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_nestB = mshrs_4_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_mergeB = mshrs_4_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_isAcqOrPrefetch = mshrs_4_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_4_bits_isPrefetch = mshrs_4_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_valid = mshrs_5_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_set = mshrs_5_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_way = mshrs_5_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_reqTag = mshrs_5_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_willFree = mshrs_5_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_needRelease = mshrs_5_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_releaseNotSent = mshrs_5_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_metaTag = mshrs_5_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_dirHit = mshrs_5_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_nestB = mshrs_5_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_mergeB = mshrs_5_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_isAcqOrPrefetch = mshrs_5_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_5_bits_isPrefetch = mshrs_5_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_valid = mshrs_6_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_set = mshrs_6_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_way = mshrs_6_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_reqTag = mshrs_6_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_willFree = mshrs_6_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_needRelease = mshrs_6_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_releaseNotSent = mshrs_6_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_metaTag = mshrs_6_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_dirHit = mshrs_6_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_nestB = mshrs_6_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_mergeB = mshrs_6_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_isAcqOrPrefetch = mshrs_6_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_6_bits_isPrefetch = mshrs_6_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_valid = mshrs_7_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_set = mshrs_7_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_way = mshrs_7_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_reqTag = mshrs_7_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_willFree = mshrs_7_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_needRelease = mshrs_7_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_releaseNotSent = mshrs_7_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_metaTag = mshrs_7_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_dirHit = mshrs_7_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_nestB = mshrs_7_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_mergeB = mshrs_7_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_isAcqOrPrefetch = mshrs_7_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_7_bits_isPrefetch = mshrs_7_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_valid = mshrs_8_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_set = mshrs_8_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_way = mshrs_8_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_reqTag = mshrs_8_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_willFree = mshrs_8_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_needRelease = mshrs_8_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_releaseNotSent = mshrs_8_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_metaTag = mshrs_8_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_dirHit = mshrs_8_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_nestB = mshrs_8_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_mergeB = mshrs_8_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_isAcqOrPrefetch = mshrs_8_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_8_bits_isPrefetch = mshrs_8_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_valid = mshrs_9_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_set = mshrs_9_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_way = mshrs_9_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_reqTag = mshrs_9_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_willFree = mshrs_9_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_needRelease = mshrs_9_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_releaseNotSent = mshrs_9_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_metaTag = mshrs_9_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_dirHit = mshrs_9_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_nestB = mshrs_9_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_mergeB = mshrs_9_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_isAcqOrPrefetch = mshrs_9_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_9_bits_isPrefetch = mshrs_9_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_valid = mshrs_10_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_set = mshrs_10_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_way = mshrs_10_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_reqTag = mshrs_10_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_willFree = mshrs_10_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_needRelease = mshrs_10_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_releaseNotSent = mshrs_10_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_metaTag = mshrs_10_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_dirHit = mshrs_10_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_nestB = mshrs_10_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_mergeB = mshrs_10_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_isAcqOrPrefetch = mshrs_10_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_10_bits_isPrefetch = mshrs_10_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_valid = mshrs_11_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_set = mshrs_11_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_way = mshrs_11_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_reqTag = mshrs_11_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_willFree = mshrs_11_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_needRelease = mshrs_11_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_releaseNotSent = mshrs_11_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_metaTag = mshrs_11_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_dirHit = mshrs_11_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_nestB = mshrs_11_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_mergeB = mshrs_11_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_isAcqOrPrefetch = mshrs_11_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_11_bits_isPrefetch = mshrs_11_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_valid = mshrs_12_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_set = mshrs_12_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_way = mshrs_12_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_reqTag = mshrs_12_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_willFree = mshrs_12_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_needRelease = mshrs_12_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_releaseNotSent = mshrs_12_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_metaTag = mshrs_12_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_dirHit = mshrs_12_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_nestB = mshrs_12_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_mergeB = mshrs_12_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_isAcqOrPrefetch = mshrs_12_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_12_bits_isPrefetch = mshrs_12_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_valid = mshrs_13_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_set = mshrs_13_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_way = mshrs_13_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_reqTag = mshrs_13_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_willFree = mshrs_13_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_needRelease = mshrs_13_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_releaseNotSent = mshrs_13_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_metaTag = mshrs_13_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_dirHit = mshrs_13_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_nestB = mshrs_13_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_mergeB = mshrs_13_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_isAcqOrPrefetch = mshrs_13_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_13_bits_isPrefetch = mshrs_13_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_valid = mshrs_14_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_set = mshrs_14_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_way = mshrs_14_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_reqTag = mshrs_14_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_willFree = mshrs_14_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_needRelease = mshrs_14_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_releaseNotSent = mshrs_14_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_metaTag = mshrs_14_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_dirHit = mshrs_14_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_nestB = mshrs_14_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_mergeB = mshrs_14_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_isAcqOrPrefetch = mshrs_14_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_14_bits_isPrefetch = mshrs_14_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_valid = mshrs_15_io_msInfo_valid; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_set = mshrs_15_io_msInfo_bits_set; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_way = mshrs_15_io_msInfo_bits_way; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_reqTag = mshrs_15_io_msInfo_bits_reqTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_willFree = mshrs_15_io_msInfo_bits_willFree; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_needRelease = mshrs_15_io_msInfo_bits_needRelease; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_releaseNotSent = mshrs_15_io_msInfo_bits_releaseNotSent; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_metaTag = mshrs_15_io_msInfo_bits_metaTag; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_dirHit = mshrs_15_io_msInfo_bits_dirHit; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_nestB = mshrs_15_io_msInfo_bits_nestB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_mergeB = mshrs_15_io_msInfo_bits_mergeB; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_isAcqOrPrefetch = mshrs_15_io_msInfo_bits_isAcqOrPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msInfo_15_bits_isPrefetch = mshrs_15_io_msInfo_bits_isPrefetch; // @[MSHRCtl.scala 131:20]
  assign io_msStatus_0_valid = mshrs_0_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_0_bits_set = mshrs_0_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_0_bits_reqTag = mshrs_0_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_0_bits_is_miss = mshrs_0_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_1_valid = mshrs_1_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_1_bits_set = mshrs_1_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_1_bits_reqTag = mshrs_1_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_1_bits_is_miss = mshrs_1_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_2_valid = mshrs_2_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_2_bits_set = mshrs_2_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_2_bits_reqTag = mshrs_2_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_2_bits_is_miss = mshrs_2_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_3_valid = mshrs_3_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_3_bits_set = mshrs_3_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_3_bits_reqTag = mshrs_3_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_3_bits_is_miss = mshrs_3_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_4_valid = mshrs_4_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_4_bits_set = mshrs_4_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_4_bits_reqTag = mshrs_4_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_4_bits_is_miss = mshrs_4_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_5_valid = mshrs_5_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_5_bits_set = mshrs_5_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_5_bits_reqTag = mshrs_5_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_5_bits_is_miss = mshrs_5_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_6_valid = mshrs_6_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_6_bits_set = mshrs_6_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_6_bits_reqTag = mshrs_6_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_6_bits_is_miss = mshrs_6_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_7_valid = mshrs_7_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_7_bits_set = mshrs_7_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_7_bits_reqTag = mshrs_7_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_7_bits_is_miss = mshrs_7_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_8_valid = mshrs_8_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_8_bits_set = mshrs_8_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_8_bits_reqTag = mshrs_8_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_8_bits_is_miss = mshrs_8_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_9_valid = mshrs_9_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_9_bits_set = mshrs_9_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_9_bits_reqTag = mshrs_9_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_9_bits_is_miss = mshrs_9_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_10_valid = mshrs_10_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_10_bits_set = mshrs_10_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_10_bits_reqTag = mshrs_10_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_10_bits_is_miss = mshrs_10_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_11_valid = mshrs_11_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_11_bits_set = mshrs_11_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_11_bits_reqTag = mshrs_11_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_11_bits_is_miss = mshrs_11_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_12_valid = mshrs_12_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_12_bits_set = mshrs_12_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_12_bits_reqTag = mshrs_12_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_12_bits_is_miss = mshrs_12_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_13_valid = mshrs_13_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_13_bits_set = mshrs_13_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_13_bits_reqTag = mshrs_13_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_13_bits_is_miss = mshrs_13_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_14_valid = mshrs_14_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_14_bits_set = mshrs_14_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_14_bits_reqTag = mshrs_14_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_14_bits_is_miss = mshrs_14_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_15_valid = mshrs_15_io_status_valid; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_15_bits_set = mshrs_15_io_status_bits_set; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_15_bits_reqTag = mshrs_15_io_status_bits_reqTag; // @[MSHRCtl.scala 174:26]
  assign io_msStatus_15_bits_is_miss = mshrs_15_io_status_bits_is_miss; // @[MSHRCtl.scala 174:26]
  assign mshrs_0_clock = clock;
  assign mshrs_0_reset = reset;
  assign mshrs_0_io_id = 8'h0; // @[MSHRCtl.scala 116:15]
  assign mshrs_0_io_alloc_valid = mshrSelector_io_out_bits[0] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_0_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_0_io_tasks_source_a_ready = source_a_arb_io_in_0_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_0_io_tasks_source_bready = source_barb_io_in_0_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_0_io_tasks_mainpipe_ready = mshr_task_arb_io_in_0_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_0_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_0; // @[MSHRCtl.scala 120:55]
  assign mshrs_0_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_0_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_0_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_0_io_resps_sink_d_valid = mshrs_0_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h0; // @[MSHRCtl.scala 122:76]
  assign mshrs_0_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_0_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_0_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_0_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_0_io_resps_sink_e_valid = mshrs_0_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h0; // @[MSHRCtl.scala 124:76]
  assign mshrs_0_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_0_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_0_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_0_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h0; // @[MSHRCtl.scala 133:52]
  assign mshrs_0_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_0_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_0_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_0_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_0_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_0_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h0; // @[MSHRCtl.scala 128:48]
  assign mshrs_0_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_0_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_0_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_0_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_0_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_0_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_0_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_clock = clock;
  assign mshrs_1_reset = reset;
  assign mshrs_1_io_id = 8'h1; // @[MSHRCtl.scala 116:15]
  assign mshrs_1_io_alloc_valid = mshrSelector_io_out_bits[1] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_1_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_1_io_tasks_source_a_ready = source_a_arb_io_in_1_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_1_io_tasks_source_bready = source_barb_io_in_1_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_1_io_tasks_mainpipe_ready = mshr_task_arb_io_in_1_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_1_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_1; // @[MSHRCtl.scala 120:55]
  assign mshrs_1_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_1_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_1_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_1_io_resps_sink_d_valid = mshrs_1_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h1; // @[MSHRCtl.scala 122:76]
  assign mshrs_1_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_1_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_1_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_1_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_1_io_resps_sink_e_valid = mshrs_1_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h1; // @[MSHRCtl.scala 124:76]
  assign mshrs_1_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_1_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_1_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_1_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h1; // @[MSHRCtl.scala 133:52]
  assign mshrs_1_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_1_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_1_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_1_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_1_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_1_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h1; // @[MSHRCtl.scala 128:48]
  assign mshrs_1_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_1_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_clock = clock;
  assign mshrs_2_reset = reset;
  assign mshrs_2_io_id = 8'h2; // @[MSHRCtl.scala 116:15]
  assign mshrs_2_io_alloc_valid = mshrSelector_io_out_bits[2] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_2_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_2_io_tasks_source_a_ready = source_a_arb_io_in_2_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_2_io_tasks_source_bready = source_barb_io_in_2_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_2_io_tasks_mainpipe_ready = mshr_task_arb_io_in_2_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_2_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_2; // @[MSHRCtl.scala 120:55]
  assign mshrs_2_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_2_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_2_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_2_io_resps_sink_d_valid = mshrs_2_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h2; // @[MSHRCtl.scala 122:76]
  assign mshrs_2_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_2_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_2_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_2_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_2_io_resps_sink_e_valid = mshrs_2_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h2; // @[MSHRCtl.scala 124:76]
  assign mshrs_2_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_2_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_2_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_2_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h2; // @[MSHRCtl.scala 133:52]
  assign mshrs_2_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_2_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_2_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_2_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_2_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_2_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h2; // @[MSHRCtl.scala 128:48]
  assign mshrs_2_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_2_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_clock = clock;
  assign mshrs_3_reset = reset;
  assign mshrs_3_io_id = 8'h3; // @[MSHRCtl.scala 116:15]
  assign mshrs_3_io_alloc_valid = mshrSelector_io_out_bits[3] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_3_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_3_io_tasks_source_a_ready = source_a_arb_io_in_3_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_3_io_tasks_source_bready = source_barb_io_in_3_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_3_io_tasks_mainpipe_ready = mshr_task_arb_io_in_3_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_3_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_3; // @[MSHRCtl.scala 120:55]
  assign mshrs_3_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_3_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_3_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_3_io_resps_sink_d_valid = mshrs_3_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h3; // @[MSHRCtl.scala 122:76]
  assign mshrs_3_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_3_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_3_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_3_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_3_io_resps_sink_e_valid = mshrs_3_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h3; // @[MSHRCtl.scala 124:76]
  assign mshrs_3_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_3_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_3_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_3_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h3; // @[MSHRCtl.scala 133:52]
  assign mshrs_3_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_3_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_3_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_3_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_3_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_3_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h3; // @[MSHRCtl.scala 128:48]
  assign mshrs_3_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_3_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_clock = clock;
  assign mshrs_4_reset = reset;
  assign mshrs_4_io_id = 8'h4; // @[MSHRCtl.scala 116:15]
  assign mshrs_4_io_alloc_valid = mshrSelector_io_out_bits[4] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_4_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_4_io_tasks_source_a_ready = source_a_arb_io_in_4_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_4_io_tasks_source_bready = source_barb_io_in_4_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_4_io_tasks_mainpipe_ready = mshr_task_arb_io_in_4_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_4_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_4; // @[MSHRCtl.scala 120:55]
  assign mshrs_4_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_4_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_4_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_4_io_resps_sink_d_valid = mshrs_4_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h4; // @[MSHRCtl.scala 122:76]
  assign mshrs_4_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_4_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_4_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_4_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_4_io_resps_sink_e_valid = mshrs_4_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h4; // @[MSHRCtl.scala 124:76]
  assign mshrs_4_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_4_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_4_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_4_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h4; // @[MSHRCtl.scala 133:52]
  assign mshrs_4_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_4_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_4_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_4_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_4_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_4_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h4; // @[MSHRCtl.scala 128:48]
  assign mshrs_4_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_4_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_clock = clock;
  assign mshrs_5_reset = reset;
  assign mshrs_5_io_id = 8'h5; // @[MSHRCtl.scala 116:15]
  assign mshrs_5_io_alloc_valid = mshrSelector_io_out_bits[5] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_5_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_5_io_tasks_source_a_ready = source_a_arb_io_in_5_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_5_io_tasks_source_bready = source_barb_io_in_5_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_5_io_tasks_mainpipe_ready = mshr_task_arb_io_in_5_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_5_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_5; // @[MSHRCtl.scala 120:55]
  assign mshrs_5_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_5_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_5_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_5_io_resps_sink_d_valid = mshrs_5_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h5; // @[MSHRCtl.scala 122:76]
  assign mshrs_5_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_5_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_5_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_5_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_5_io_resps_sink_e_valid = mshrs_5_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h5; // @[MSHRCtl.scala 124:76]
  assign mshrs_5_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_5_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_5_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_5_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h5; // @[MSHRCtl.scala 133:52]
  assign mshrs_5_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_5_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_5_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_5_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_5_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_5_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h5; // @[MSHRCtl.scala 128:48]
  assign mshrs_5_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_5_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_clock = clock;
  assign mshrs_6_reset = reset;
  assign mshrs_6_io_id = 8'h6; // @[MSHRCtl.scala 116:15]
  assign mshrs_6_io_alloc_valid = mshrSelector_io_out_bits[6] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_6_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_6_io_tasks_source_a_ready = source_a_arb_io_in_6_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_6_io_tasks_source_bready = source_barb_io_in_6_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_6_io_tasks_mainpipe_ready = mshr_task_arb_io_in_6_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_6_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_6; // @[MSHRCtl.scala 120:55]
  assign mshrs_6_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_6_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_6_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_6_io_resps_sink_d_valid = mshrs_6_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h6; // @[MSHRCtl.scala 122:76]
  assign mshrs_6_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_6_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_6_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_6_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_6_io_resps_sink_e_valid = mshrs_6_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h6; // @[MSHRCtl.scala 124:76]
  assign mshrs_6_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_6_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_6_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_6_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h6; // @[MSHRCtl.scala 133:52]
  assign mshrs_6_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_6_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_6_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_6_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_6_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_6_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h6; // @[MSHRCtl.scala 128:48]
  assign mshrs_6_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_6_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_clock = clock;
  assign mshrs_7_reset = reset;
  assign mshrs_7_io_id = 8'h7; // @[MSHRCtl.scala 116:15]
  assign mshrs_7_io_alloc_valid = mshrSelector_io_out_bits[7] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_7_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_7_io_tasks_source_a_ready = source_a_arb_io_in_7_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_7_io_tasks_source_bready = source_barb_io_in_7_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_7_io_tasks_mainpipe_ready = mshr_task_arb_io_in_7_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_7_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_7; // @[MSHRCtl.scala 120:55]
  assign mshrs_7_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_7_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_7_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_7_io_resps_sink_d_valid = mshrs_7_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h7; // @[MSHRCtl.scala 122:76]
  assign mshrs_7_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_7_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_7_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_7_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_7_io_resps_sink_e_valid = mshrs_7_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h7; // @[MSHRCtl.scala 124:76]
  assign mshrs_7_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_7_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_7_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_7_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h7; // @[MSHRCtl.scala 133:52]
  assign mshrs_7_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_7_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_7_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_7_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_7_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_7_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h7; // @[MSHRCtl.scala 128:48]
  assign mshrs_7_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_7_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_clock = clock;
  assign mshrs_8_reset = reset;
  assign mshrs_8_io_id = 8'h8; // @[MSHRCtl.scala 116:15]
  assign mshrs_8_io_alloc_valid = mshrSelector_io_out_bits[8] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_8_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_8_io_tasks_source_a_ready = source_a_arb_io_in_8_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_8_io_tasks_source_bready = source_barb_io_in_8_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_8_io_tasks_mainpipe_ready = mshr_task_arb_io_in_8_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_8_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_8; // @[MSHRCtl.scala 120:55]
  assign mshrs_8_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_8_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_8_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_8_io_resps_sink_d_valid = mshrs_8_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h8; // @[MSHRCtl.scala 122:76]
  assign mshrs_8_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_8_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_8_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_8_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_8_io_resps_sink_e_valid = mshrs_8_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h8; // @[MSHRCtl.scala 124:76]
  assign mshrs_8_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_8_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_8_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_8_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h8; // @[MSHRCtl.scala 133:52]
  assign mshrs_8_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_8_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_8_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_8_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_8_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_8_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h8; // @[MSHRCtl.scala 128:48]
  assign mshrs_8_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_8_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_clock = clock;
  assign mshrs_9_reset = reset;
  assign mshrs_9_io_id = 8'h9; // @[MSHRCtl.scala 116:15]
  assign mshrs_9_io_alloc_valid = mshrSelector_io_out_bits[9] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_9_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_9_io_tasks_source_a_ready = source_a_arb_io_in_9_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_9_io_tasks_source_bready = source_barb_io_in_9_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_9_io_tasks_mainpipe_ready = mshr_task_arb_io_in_9_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_9_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_9; // @[MSHRCtl.scala 120:55]
  assign mshrs_9_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_9_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_9_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_9_io_resps_sink_d_valid = mshrs_9_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'h9; // @[MSHRCtl.scala 122:76]
  assign mshrs_9_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_9_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_9_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_9_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_9_io_resps_sink_e_valid = mshrs_9_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'h9; // @[MSHRCtl.scala 124:76]
  assign mshrs_9_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_9_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_9_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_9_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'h9; // @[MSHRCtl.scala 133:52]
  assign mshrs_9_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_9_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_9_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_9_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_9_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_9_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'h9; // @[MSHRCtl.scala 128:48]
  assign mshrs_9_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_9_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_clock = clock;
  assign mshrs_10_reset = reset;
  assign mshrs_10_io_id = 8'ha; // @[MSHRCtl.scala 116:15]
  assign mshrs_10_io_alloc_valid = mshrSelector_io_out_bits[10] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_10_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_10_io_tasks_source_a_ready = source_a_arb_io_in_10_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_10_io_tasks_source_bready = source_barb_io_in_10_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_10_io_tasks_mainpipe_ready = mshr_task_arb_io_in_10_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_10_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_10; // @[MSHRCtl.scala 120:55]
  assign mshrs_10_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_10_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_10_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_10_io_resps_sink_d_valid = mshrs_10_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'ha
    ; // @[MSHRCtl.scala 122:76]
  assign mshrs_10_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_10_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_10_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_10_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_10_io_resps_sink_e_valid = mshrs_10_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'ha
    ; // @[MSHRCtl.scala 124:76]
  assign mshrs_10_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_10_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_10_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_10_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'ha; // @[MSHRCtl.scala 133:52]
  assign mshrs_10_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_10_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_10_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_10_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_10_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_10_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'ha; // @[MSHRCtl.scala 128:48]
  assign mshrs_10_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_10_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_clock = clock;
  assign mshrs_11_reset = reset;
  assign mshrs_11_io_id = 8'hb; // @[MSHRCtl.scala 116:15]
  assign mshrs_11_io_alloc_valid = mshrSelector_io_out_bits[11] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_11_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_11_io_tasks_source_a_ready = source_a_arb_io_in_11_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_11_io_tasks_source_bready = source_barb_io_in_11_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_11_io_tasks_mainpipe_ready = mshr_task_arb_io_in_11_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_11_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_11; // @[MSHRCtl.scala 120:55]
  assign mshrs_11_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_11_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_11_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_11_io_resps_sink_d_valid = mshrs_11_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'hb
    ; // @[MSHRCtl.scala 122:76]
  assign mshrs_11_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_11_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_11_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_11_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_11_io_resps_sink_e_valid = mshrs_11_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'hb
    ; // @[MSHRCtl.scala 124:76]
  assign mshrs_11_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_11_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_11_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_11_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'hb; // @[MSHRCtl.scala 133:52]
  assign mshrs_11_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_11_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_11_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_11_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_11_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_11_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'hb; // @[MSHRCtl.scala 128:48]
  assign mshrs_11_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_11_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_clock = clock;
  assign mshrs_12_reset = reset;
  assign mshrs_12_io_id = 8'hc; // @[MSHRCtl.scala 116:15]
  assign mshrs_12_io_alloc_valid = mshrSelector_io_out_bits[12] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_12_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_12_io_tasks_source_a_ready = source_a_arb_io_in_12_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_12_io_tasks_source_bready = source_barb_io_in_12_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_12_io_tasks_mainpipe_ready = mshr_task_arb_io_in_12_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_12_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_12; // @[MSHRCtl.scala 120:55]
  assign mshrs_12_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_12_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_12_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_12_io_resps_sink_d_valid = mshrs_12_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'hc
    ; // @[MSHRCtl.scala 122:76]
  assign mshrs_12_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_12_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_12_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_12_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_12_io_resps_sink_e_valid = mshrs_12_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'hc
    ; // @[MSHRCtl.scala 124:76]
  assign mshrs_12_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_12_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_12_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_12_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'hc; // @[MSHRCtl.scala 133:52]
  assign mshrs_12_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_12_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_12_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_12_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_12_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_12_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'hc; // @[MSHRCtl.scala 128:48]
  assign mshrs_12_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_12_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_clock = clock;
  assign mshrs_13_reset = reset;
  assign mshrs_13_io_id = 8'hd; // @[MSHRCtl.scala 116:15]
  assign mshrs_13_io_alloc_valid = mshrSelector_io_out_bits[13] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_13_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_13_io_tasks_source_a_ready = source_a_arb_io_in_13_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_13_io_tasks_source_bready = source_barb_io_in_13_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_13_io_tasks_mainpipe_ready = mshr_task_arb_io_in_13_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_13_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_13; // @[MSHRCtl.scala 120:55]
  assign mshrs_13_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_13_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_13_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_13_io_resps_sink_d_valid = mshrs_13_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'hd
    ; // @[MSHRCtl.scala 122:76]
  assign mshrs_13_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_13_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_13_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_13_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_13_io_resps_sink_e_valid = mshrs_13_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'hd
    ; // @[MSHRCtl.scala 124:76]
  assign mshrs_13_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_13_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_13_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_13_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'hd; // @[MSHRCtl.scala 133:52]
  assign mshrs_13_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_13_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_13_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_13_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_13_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_13_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'hd; // @[MSHRCtl.scala 128:48]
  assign mshrs_13_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_13_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_clock = clock;
  assign mshrs_14_reset = reset;
  assign mshrs_14_io_id = 8'he; // @[MSHRCtl.scala 116:15]
  assign mshrs_14_io_alloc_valid = mshrSelector_io_out_bits[14] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_14_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_14_io_tasks_source_a_ready = source_a_arb_io_in_14_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_14_io_tasks_source_bready = source_barb_io_in_14_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_14_io_tasks_mainpipe_ready = mshr_task_arb_io_in_14_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_14_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_14; // @[MSHRCtl.scala 120:55]
  assign mshrs_14_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_14_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_14_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_14_io_resps_sink_d_valid = mshrs_14_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'he
    ; // @[MSHRCtl.scala 122:76]
  assign mshrs_14_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_14_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_14_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_14_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_14_io_resps_sink_e_valid = mshrs_14_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'he
    ; // @[MSHRCtl.scala 124:76]
  assign mshrs_14_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_14_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_14_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_14_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'he; // @[MSHRCtl.scala 133:52]
  assign mshrs_14_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_14_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_14_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_14_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_14_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_14_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'he; // @[MSHRCtl.scala 128:48]
  assign mshrs_14_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_14_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_clock = clock;
  assign mshrs_15_reset = reset;
  assign mshrs_15_io_id = 8'hf; // @[MSHRCtl.scala 116:15]
  assign mshrs_15_io_alloc_valid = mshrSelector_io_out_bits[15] & io_fromMainPipe_mshr_alloc_s3_valid; // @[MSHRCtl.scala 117:45]
  assign mshrs_15_io_alloc_bits_dirResult_hit = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_tag = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_set = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_way = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_meta_dirty = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_meta_state = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_meta_clients = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_dirResult_meta_accessed = io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_s_acquire = io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_s_rprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_s_pprobe = io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_s_probeack = io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_s_refill = io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wrprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wrprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wpprobeackfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wpprobeacklast = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wpprobeack = io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wgrantfirst = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wgrantlast = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wgrant = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wgrantack = io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_state_wreplResp = io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_channel = io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_set = io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_tag = io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_off = io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_opcode = io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_param = io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_size = io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_sourceId = io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_needProbeAckData = io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_alloc_bits_task_reqSource = io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[MSHRCtl.scala 118:23]
  assign mshrs_15_io_tasks_source_a_ready = source_a_arb_io_in_15_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_15_io_tasks_source_bready = source_barb_io_in_15_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_15_io_tasks_mainpipe_ready = mshr_task_arb_io_in_15_ready; // @[CoupledL2.scala 146:45]
  assign mshrs_15_io_resps_sink_c_valid = io_resps_sinkC_valid & resp_sinkC_match_vec_15; // @[MSHRCtl.scala 120:55]
  assign mshrs_15_io_resps_sink_c_bits_opcode = io_resps_sinkC_respInfo_opcode; // @[MSHRCtl.scala 121:30]
  assign mshrs_15_io_resps_sink_c_bits_param = io_resps_sinkC_respInfo_param; // @[MSHRCtl.scala 121:30]
  assign mshrs_15_io_resps_sink_c_bits_last = io_resps_sinkC_respInfo_last; // @[MSHRCtl.scala 121:30]
  assign mshrs_15_io_resps_sink_d_valid = mshrs_15_io_status_valid & io_resps_sinkD_valid & io_resps_sinkD_mshrId == 8'hf
    ; // @[MSHRCtl.scala 122:76]
  assign mshrs_15_io_resps_sink_d_bits_opcode = io_resps_sinkD_respInfo_opcode; // @[MSHRCtl.scala 123:30]
  assign mshrs_15_io_resps_sink_d_bits_param = io_resps_sinkD_respInfo_param; // @[MSHRCtl.scala 123:30]
  assign mshrs_15_io_resps_sink_d_bits_last = io_resps_sinkD_respInfo_last; // @[MSHRCtl.scala 123:30]
  assign mshrs_15_io_resps_sink_d_bits_dirty = io_resps_sinkD_respInfo_dirty; // @[MSHRCtl.scala 123:30]
  assign mshrs_15_io_resps_sink_e_valid = mshrs_15_io_status_valid & io_resps_sinkE_valid & io_resps_sinkE_mshrId == 8'hf
    ; // @[MSHRCtl.scala 124:76]
  assign mshrs_15_io_nestedwb_set = io_nestedwb_set; // @[MSHRCtl.scala 132:21]
  assign mshrs_15_io_nestedwb_tag = io_nestedwb_tag; // @[MSHRCtl.scala 132:21]
  assign mshrs_15_io_nestedwb_c_set_dirty = io_nestedwb_c_set_dirty; // @[MSHRCtl.scala 132:21]
  assign mshrs_15_io_bMergeTask_valid = io_bMergeTask_valid & io_bMergeTask_bits_id == 8'hf; // @[MSHRCtl.scala 133:52]
  assign mshrs_15_io_bMergeTask_bits_task_set = io_bMergeTask_bits_task_set; // @[MSHRCtl.scala 134:28]
  assign mshrs_15_io_bMergeTask_bits_task_tag = io_bMergeTask_bits_task_tag; // @[MSHRCtl.scala 134:28]
  assign mshrs_15_io_bMergeTask_bits_task_off = io_bMergeTask_bits_task_off; // @[MSHRCtl.scala 134:28]
  assign mshrs_15_io_bMergeTask_bits_task_param = io_bMergeTask_bits_task_param; // @[MSHRCtl.scala 134:28]
  assign mshrs_15_io_bMergeTask_bits_task_needProbeAckData = io_bMergeTask_bits_task_needProbeAckData; // @[MSHRCtl.scala 134:28]
  assign mshrs_15_io_replResp_valid = io_replResp_valid & io_replResp_bits_mshrId == 8'hf; // @[MSHRCtl.scala 128:48]
  assign mshrs_15_io_replResp_bits_tag = io_replResp_bits_tag; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_io_replResp_bits_way = io_replResp_bits_way; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_io_replResp_bits_meta_dirty = io_replResp_bits_meta_dirty; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_io_replResp_bits_meta_state = io_replResp_bits_meta_state; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_io_replResp_bits_meta_clients = io_replResp_bits_meta_clients; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_io_replResp_bits_meta_accessed = io_replResp_bits_meta_accessed; // @[MSHRCtl.scala 129:26]
  assign mshrs_15_io_replResp_bits_retry = io_replResp_bits_retry; // @[MSHRCtl.scala 129:26]
  assign mshrSelector_io_idle_0 = ~mshrs_0_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_1 = ~mshrs_1_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_2 = ~mshrs_2_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_3 = ~mshrs_3_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_4 = ~mshrs_4_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_5 = ~mshrs_5_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_6 = ~mshrs_6_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_7 = ~mshrs_7_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_8 = ~mshrs_8_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_9 = ~mshrs_9_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_10 = ~mshrs_10_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_11 = ~mshrs_11_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_12 = ~mshrs_12_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_13 = ~mshrs_13_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign mshrSelector_io_idle_14 = ~mshrs_14_io_status_valid; // @[MSHRCtl.scala 104:42]
  assign acquireUnit_io_sourceA_ready = io_sourceA_ready; // @[MSHRCtl.scala 145:14]
  assign acquireUnit_io_task_valid = source_a_arb_io_out_valid; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_tag = source_a_arb_io_out_bits_tag; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_set = source_a_arb_io_out_bits_set; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_off = source_a_arb_io_out_bits_off; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_opcode = source_a_arb_io_out_bits_opcode; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_param = source_a_arb_io_out_bits_param; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_size = source_a_arb_io_out_bits_size; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_source = source_a_arb_io_out_bits_source; // @[CoupledL2.scala 147:9]
  assign acquireUnit_io_task_bits_reqSource = source_a_arb_io_out_bits_reqSource; // @[CoupledL2.scala 147:9]
  assign source_a_arb_clock = clock;
  assign source_a_arb_reset = reset;
  assign source_a_arb_io_in_0_valid = mshrs_0_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_tag = mshrs_0_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_set = mshrs_0_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_off = mshrs_0_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_opcode = mshrs_0_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_param = mshrs_0_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_size = mshrs_0_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_source = mshrs_0_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_0_bits_reqSource = mshrs_0_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_valid = mshrs_1_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_tag = mshrs_1_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_set = mshrs_1_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_off = mshrs_1_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_opcode = mshrs_1_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_param = mshrs_1_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_size = mshrs_1_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_source = mshrs_1_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_1_bits_reqSource = mshrs_1_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_valid = mshrs_2_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_tag = mshrs_2_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_set = mshrs_2_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_off = mshrs_2_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_opcode = mshrs_2_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_param = mshrs_2_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_size = mshrs_2_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_source = mshrs_2_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_2_bits_reqSource = mshrs_2_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_valid = mshrs_3_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_tag = mshrs_3_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_set = mshrs_3_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_off = mshrs_3_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_opcode = mshrs_3_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_param = mshrs_3_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_size = mshrs_3_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_source = mshrs_3_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_3_bits_reqSource = mshrs_3_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_valid = mshrs_4_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_tag = mshrs_4_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_set = mshrs_4_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_off = mshrs_4_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_opcode = mshrs_4_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_param = mshrs_4_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_size = mshrs_4_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_source = mshrs_4_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_4_bits_reqSource = mshrs_4_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_valid = mshrs_5_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_tag = mshrs_5_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_set = mshrs_5_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_off = mshrs_5_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_opcode = mshrs_5_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_param = mshrs_5_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_size = mshrs_5_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_source = mshrs_5_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_5_bits_reqSource = mshrs_5_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_valid = mshrs_6_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_tag = mshrs_6_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_set = mshrs_6_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_off = mshrs_6_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_opcode = mshrs_6_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_param = mshrs_6_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_size = mshrs_6_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_source = mshrs_6_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_6_bits_reqSource = mshrs_6_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_valid = mshrs_7_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_tag = mshrs_7_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_set = mshrs_7_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_off = mshrs_7_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_opcode = mshrs_7_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_param = mshrs_7_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_size = mshrs_7_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_source = mshrs_7_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_7_bits_reqSource = mshrs_7_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_valid = mshrs_8_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_tag = mshrs_8_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_set = mshrs_8_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_off = mshrs_8_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_opcode = mshrs_8_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_param = mshrs_8_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_size = mshrs_8_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_source = mshrs_8_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_8_bits_reqSource = mshrs_8_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_valid = mshrs_9_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_tag = mshrs_9_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_set = mshrs_9_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_off = mshrs_9_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_opcode = mshrs_9_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_param = mshrs_9_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_size = mshrs_9_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_source = mshrs_9_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_9_bits_reqSource = mshrs_9_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_valid = mshrs_10_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_tag = mshrs_10_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_set = mshrs_10_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_off = mshrs_10_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_opcode = mshrs_10_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_param = mshrs_10_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_size = mshrs_10_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_source = mshrs_10_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_10_bits_reqSource = mshrs_10_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_valid = mshrs_11_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_tag = mshrs_11_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_set = mshrs_11_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_off = mshrs_11_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_opcode = mshrs_11_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_param = mshrs_11_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_size = mshrs_11_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_source = mshrs_11_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_11_bits_reqSource = mshrs_11_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_valid = mshrs_12_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_tag = mshrs_12_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_set = mshrs_12_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_off = mshrs_12_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_opcode = mshrs_12_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_param = mshrs_12_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_size = mshrs_12_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_source = mshrs_12_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_12_bits_reqSource = mshrs_12_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_valid = mshrs_13_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_tag = mshrs_13_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_set = mshrs_13_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_off = mshrs_13_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_opcode = mshrs_13_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_param = mshrs_13_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_size = mshrs_13_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_source = mshrs_13_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_13_bits_reqSource = mshrs_13_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_valid = mshrs_14_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_tag = mshrs_14_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_set = mshrs_14_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_off = mshrs_14_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_opcode = mshrs_14_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_param = mshrs_14_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_size = mshrs_14_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_source = mshrs_14_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_14_bits_reqSource = mshrs_14_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_valid = mshrs_15_io_tasks_source_a_valid; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_tag = mshrs_15_io_tasks_source_a_bits_tag; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_set = mshrs_15_io_tasks_source_a_bits_set; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_off = mshrs_15_io_tasks_source_a_bits_off; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_opcode = mshrs_15_io_tasks_source_a_bits_opcode; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_param = mshrs_15_io_tasks_source_a_bits_param; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_size = mshrs_15_io_tasks_source_a_bits_size; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_source = mshrs_15_io_tasks_source_a_bits_source; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_in_15_bits_reqSource = mshrs_15_io_tasks_source_a_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign source_a_arb_io_out_ready = acquireUnit_io_task_ready; // @[CoupledL2.scala 147:9]
  assign sourceB_clock = clock;
  assign sourceB_reset = reset;
  assign sourceB_io_sourceB_ready = io_sourceB_ready; // @[MSHRCtl.scala 151:14]
  assign sourceB_io_task_valid = source_barb_io_out_valid; // @[CoupledL2.scala 147:9]
  assign sourceB_io_task_bits_tag = source_barb_io_out_bits_tag; // @[CoupledL2.scala 147:9]
  assign sourceB_io_task_bits_set = source_barb_io_out_bits_set; // @[CoupledL2.scala 147:9]
  assign sourceB_io_task_bits_opcode = source_barb_io_out_bits_opcode; // @[CoupledL2.scala 147:9]
  assign sourceB_io_task_bits_param = source_barb_io_out_bits_param; // @[CoupledL2.scala 147:9]
  assign sourceB_io_grantStatus_0_valid = io_grantStatus_0_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_0_set = io_grantStatus_0_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_0_tag = io_grantStatus_0_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_1_valid = io_grantStatus_1_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_1_set = io_grantStatus_1_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_1_tag = io_grantStatus_1_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_2_valid = io_grantStatus_2_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_2_set = io_grantStatus_2_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_2_tag = io_grantStatus_2_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_3_valid = io_grantStatus_3_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_3_set = io_grantStatus_3_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_3_tag = io_grantStatus_3_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_4_valid = io_grantStatus_4_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_4_set = io_grantStatus_4_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_4_tag = io_grantStatus_4_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_5_valid = io_grantStatus_5_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_5_set = io_grantStatus_5_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_5_tag = io_grantStatus_5_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_6_valid = io_grantStatus_6_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_6_set = io_grantStatus_6_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_6_tag = io_grantStatus_6_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_7_valid = io_grantStatus_7_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_7_set = io_grantStatus_7_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_7_tag = io_grantStatus_7_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_8_valid = io_grantStatus_8_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_8_set = io_grantStatus_8_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_8_tag = io_grantStatus_8_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_9_valid = io_grantStatus_9_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_9_set = io_grantStatus_9_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_9_tag = io_grantStatus_9_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_10_valid = io_grantStatus_10_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_10_set = io_grantStatus_10_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_10_tag = io_grantStatus_10_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_11_valid = io_grantStatus_11_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_11_set = io_grantStatus_11_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_11_tag = io_grantStatus_11_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_12_valid = io_grantStatus_12_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_12_set = io_grantStatus_12_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_12_tag = io_grantStatus_12_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_13_valid = io_grantStatus_13_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_13_set = io_grantStatus_13_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_13_tag = io_grantStatus_13_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_14_valid = io_grantStatus_14_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_14_set = io_grantStatus_14_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_14_tag = io_grantStatus_14_tag; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_15_valid = io_grantStatus_15_valid; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_15_set = io_grantStatus_15_set; // @[MSHRCtl.scala 150:26]
  assign sourceB_io_grantStatus_15_tag = io_grantStatus_15_tag; // @[MSHRCtl.scala 150:26]
  assign source_barb_clock = clock;
  assign source_barb_reset = reset;
  assign source_barb_io_in_0_valid = mshrs_0_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_0_bits_tag = mshrs_0_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_0_bits_set = mshrs_0_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_0_bits_param = mshrs_0_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_1_valid = mshrs_1_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_1_bits_tag = mshrs_1_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_1_bits_set = mshrs_1_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_1_bits_param = mshrs_1_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_2_valid = mshrs_2_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_2_bits_tag = mshrs_2_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_2_bits_set = mshrs_2_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_2_bits_param = mshrs_2_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_3_valid = mshrs_3_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_3_bits_tag = mshrs_3_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_3_bits_set = mshrs_3_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_3_bits_param = mshrs_3_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_4_valid = mshrs_4_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_4_bits_tag = mshrs_4_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_4_bits_set = mshrs_4_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_4_bits_param = mshrs_4_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_5_valid = mshrs_5_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_5_bits_tag = mshrs_5_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_5_bits_set = mshrs_5_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_5_bits_param = mshrs_5_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_6_valid = mshrs_6_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_6_bits_tag = mshrs_6_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_6_bits_set = mshrs_6_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_6_bits_param = mshrs_6_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_7_valid = mshrs_7_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_7_bits_tag = mshrs_7_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_7_bits_set = mshrs_7_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_7_bits_param = mshrs_7_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_8_valid = mshrs_8_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_8_bits_tag = mshrs_8_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_8_bits_set = mshrs_8_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_8_bits_param = mshrs_8_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_9_valid = mshrs_9_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_9_bits_tag = mshrs_9_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_9_bits_set = mshrs_9_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_9_bits_param = mshrs_9_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_10_valid = mshrs_10_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_10_bits_tag = mshrs_10_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_10_bits_set = mshrs_10_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_10_bits_param = mshrs_10_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_11_valid = mshrs_11_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_11_bits_tag = mshrs_11_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_11_bits_set = mshrs_11_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_11_bits_param = mshrs_11_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_12_valid = mshrs_12_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_12_bits_tag = mshrs_12_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_12_bits_set = mshrs_12_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_12_bits_param = mshrs_12_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_13_valid = mshrs_13_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_13_bits_tag = mshrs_13_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_13_bits_set = mshrs_13_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_13_bits_param = mshrs_13_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_14_valid = mshrs_14_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_14_bits_tag = mshrs_14_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_14_bits_set = mshrs_14_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_14_bits_param = mshrs_14_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_15_valid = mshrs_15_io_tasks_source_bvalid; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_15_bits_tag = mshrs_15_io_tasks_source_btag; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_15_bits_set = mshrs_15_io_tasks_source_bset; // @[CoupledL2.scala 146:45]
  assign source_barb_io_in_15_bits_param = mshrs_15_io_tasks_source_bparam; // @[CoupledL2.scala 146:45]
  assign source_barb_io_out_ready = sourceB_io_task_ready; // @[CoupledL2.scala 147:9]
  assign mshr_task_arb_clock = clock;
  assign mshr_task_arb_reset = reset;
  assign mshr_task_arb_io_in_0_valid = mshrs_0_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_channel = mshrs_0_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_set = mshrs_0_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_tag = mshrs_0_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_off = mshrs_0_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_opcode = mshrs_0_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_param = mshrs_0_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_size = mshrs_0_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_sourceId = mshrs_0_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_mshrId = mshrs_0_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_useProbeData = mshrs_0_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_dirty = mshrs_0_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_way = mshrs_0_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_meta_dirty = mshrs_0_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_meta_state = mshrs_0_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_meta_clients = mshrs_0_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_meta_accessed = mshrs_0_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_metaWen = mshrs_0_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_tagWen = mshrs_0_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_dsWen = mshrs_0_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_wayMask = mshrs_0_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_replTask = mshrs_0_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_0_bits_reqSource = mshrs_0_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_valid = mshrs_1_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_channel = mshrs_1_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_set = mshrs_1_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_tag = mshrs_1_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_off = mshrs_1_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_opcode = mshrs_1_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_param = mshrs_1_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_size = mshrs_1_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_sourceId = mshrs_1_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_mshrId = mshrs_1_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_useProbeData = mshrs_1_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_dirty = mshrs_1_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_way = mshrs_1_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_meta_dirty = mshrs_1_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_meta_state = mshrs_1_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_meta_clients = mshrs_1_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_meta_accessed = mshrs_1_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_metaWen = mshrs_1_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_tagWen = mshrs_1_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_dsWen = mshrs_1_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_wayMask = mshrs_1_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_replTask = mshrs_1_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_1_bits_reqSource = mshrs_1_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_valid = mshrs_2_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_channel = mshrs_2_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_set = mshrs_2_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_tag = mshrs_2_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_off = mshrs_2_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_opcode = mshrs_2_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_param = mshrs_2_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_size = mshrs_2_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_sourceId = mshrs_2_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_mshrId = mshrs_2_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_useProbeData = mshrs_2_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_dirty = mshrs_2_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_way = mshrs_2_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_meta_dirty = mshrs_2_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_meta_state = mshrs_2_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_meta_clients = mshrs_2_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_meta_accessed = mshrs_2_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_metaWen = mshrs_2_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_tagWen = mshrs_2_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_dsWen = mshrs_2_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_wayMask = mshrs_2_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_replTask = mshrs_2_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_2_bits_reqSource = mshrs_2_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_valid = mshrs_3_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_channel = mshrs_3_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_set = mshrs_3_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_tag = mshrs_3_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_off = mshrs_3_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_opcode = mshrs_3_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_param = mshrs_3_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_size = mshrs_3_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_sourceId = mshrs_3_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_mshrId = mshrs_3_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_useProbeData = mshrs_3_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_dirty = mshrs_3_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_way = mshrs_3_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_meta_dirty = mshrs_3_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_meta_state = mshrs_3_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_meta_clients = mshrs_3_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_meta_accessed = mshrs_3_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_metaWen = mshrs_3_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_tagWen = mshrs_3_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_dsWen = mshrs_3_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_wayMask = mshrs_3_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_replTask = mshrs_3_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_3_bits_reqSource = mshrs_3_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_valid = mshrs_4_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_channel = mshrs_4_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_set = mshrs_4_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_tag = mshrs_4_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_off = mshrs_4_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_opcode = mshrs_4_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_param = mshrs_4_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_size = mshrs_4_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_sourceId = mshrs_4_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_mshrId = mshrs_4_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_useProbeData = mshrs_4_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_dirty = mshrs_4_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_way = mshrs_4_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_meta_dirty = mshrs_4_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_meta_state = mshrs_4_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_meta_clients = mshrs_4_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_meta_accessed = mshrs_4_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_metaWen = mshrs_4_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_tagWen = mshrs_4_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_dsWen = mshrs_4_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_wayMask = mshrs_4_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_replTask = mshrs_4_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_4_bits_reqSource = mshrs_4_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_valid = mshrs_5_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_channel = mshrs_5_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_set = mshrs_5_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_tag = mshrs_5_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_off = mshrs_5_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_opcode = mshrs_5_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_param = mshrs_5_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_size = mshrs_5_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_sourceId = mshrs_5_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_mshrId = mshrs_5_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_useProbeData = mshrs_5_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_dirty = mshrs_5_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_way = mshrs_5_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_meta_dirty = mshrs_5_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_meta_state = mshrs_5_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_meta_clients = mshrs_5_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_meta_accessed = mshrs_5_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_metaWen = mshrs_5_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_tagWen = mshrs_5_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_dsWen = mshrs_5_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_wayMask = mshrs_5_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_replTask = mshrs_5_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_5_bits_reqSource = mshrs_5_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_valid = mshrs_6_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_channel = mshrs_6_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_set = mshrs_6_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_tag = mshrs_6_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_off = mshrs_6_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_opcode = mshrs_6_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_param = mshrs_6_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_size = mshrs_6_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_sourceId = mshrs_6_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_mshrId = mshrs_6_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_useProbeData = mshrs_6_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_dirty = mshrs_6_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_way = mshrs_6_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_meta_dirty = mshrs_6_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_meta_state = mshrs_6_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_meta_clients = mshrs_6_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_meta_accessed = mshrs_6_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_metaWen = mshrs_6_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_tagWen = mshrs_6_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_dsWen = mshrs_6_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_wayMask = mshrs_6_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_replTask = mshrs_6_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_6_bits_reqSource = mshrs_6_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_valid = mshrs_7_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_channel = mshrs_7_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_set = mshrs_7_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_tag = mshrs_7_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_off = mshrs_7_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_opcode = mshrs_7_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_param = mshrs_7_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_size = mshrs_7_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_sourceId = mshrs_7_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_mshrId = mshrs_7_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_useProbeData = mshrs_7_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_dirty = mshrs_7_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_way = mshrs_7_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_meta_dirty = mshrs_7_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_meta_state = mshrs_7_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_meta_clients = mshrs_7_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_meta_accessed = mshrs_7_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_metaWen = mshrs_7_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_tagWen = mshrs_7_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_dsWen = mshrs_7_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_wayMask = mshrs_7_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_replTask = mshrs_7_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_7_bits_reqSource = mshrs_7_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_valid = mshrs_8_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_channel = mshrs_8_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_set = mshrs_8_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_tag = mshrs_8_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_off = mshrs_8_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_opcode = mshrs_8_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_param = mshrs_8_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_size = mshrs_8_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_sourceId = mshrs_8_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_mshrId = mshrs_8_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_useProbeData = mshrs_8_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_dirty = mshrs_8_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_way = mshrs_8_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_meta_dirty = mshrs_8_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_meta_state = mshrs_8_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_meta_clients = mshrs_8_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_meta_accessed = mshrs_8_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_metaWen = mshrs_8_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_tagWen = mshrs_8_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_dsWen = mshrs_8_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_wayMask = mshrs_8_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_replTask = mshrs_8_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_8_bits_reqSource = mshrs_8_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_valid = mshrs_9_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_channel = mshrs_9_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_set = mshrs_9_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_tag = mshrs_9_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_off = mshrs_9_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_opcode = mshrs_9_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_param = mshrs_9_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_size = mshrs_9_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_sourceId = mshrs_9_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_mshrId = mshrs_9_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_useProbeData = mshrs_9_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_dirty = mshrs_9_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_way = mshrs_9_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_meta_dirty = mshrs_9_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_meta_state = mshrs_9_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_meta_clients = mshrs_9_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_meta_accessed = mshrs_9_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_metaWen = mshrs_9_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_tagWen = mshrs_9_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_dsWen = mshrs_9_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_wayMask = mshrs_9_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_replTask = mshrs_9_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_9_bits_reqSource = mshrs_9_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_valid = mshrs_10_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_channel = mshrs_10_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_set = mshrs_10_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_tag = mshrs_10_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_off = mshrs_10_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_opcode = mshrs_10_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_param = mshrs_10_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_size = mshrs_10_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_sourceId = mshrs_10_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_mshrId = mshrs_10_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_useProbeData = mshrs_10_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_dirty = mshrs_10_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_way = mshrs_10_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_meta_dirty = mshrs_10_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_meta_state = mshrs_10_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_meta_clients = mshrs_10_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_meta_accessed = mshrs_10_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_metaWen = mshrs_10_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_tagWen = mshrs_10_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_dsWen = mshrs_10_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_wayMask = mshrs_10_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_replTask = mshrs_10_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_10_bits_reqSource = mshrs_10_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_valid = mshrs_11_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_channel = mshrs_11_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_set = mshrs_11_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_tag = mshrs_11_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_off = mshrs_11_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_opcode = mshrs_11_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_param = mshrs_11_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_size = mshrs_11_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_sourceId = mshrs_11_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_mshrId = mshrs_11_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_useProbeData = mshrs_11_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_dirty = mshrs_11_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_way = mshrs_11_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_meta_dirty = mshrs_11_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_meta_state = mshrs_11_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_meta_clients = mshrs_11_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_meta_accessed = mshrs_11_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_metaWen = mshrs_11_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_tagWen = mshrs_11_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_dsWen = mshrs_11_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_wayMask = mshrs_11_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_replTask = mshrs_11_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_11_bits_reqSource = mshrs_11_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_valid = mshrs_12_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_channel = mshrs_12_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_set = mshrs_12_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_tag = mshrs_12_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_off = mshrs_12_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_opcode = mshrs_12_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_param = mshrs_12_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_size = mshrs_12_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_sourceId = mshrs_12_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_mshrId = mshrs_12_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_useProbeData = mshrs_12_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_dirty = mshrs_12_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_way = mshrs_12_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_meta_dirty = mshrs_12_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_meta_state = mshrs_12_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_meta_clients = mshrs_12_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_meta_accessed = mshrs_12_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_metaWen = mshrs_12_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_tagWen = mshrs_12_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_dsWen = mshrs_12_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_wayMask = mshrs_12_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_replTask = mshrs_12_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_12_bits_reqSource = mshrs_12_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_valid = mshrs_13_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_channel = mshrs_13_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_set = mshrs_13_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_tag = mshrs_13_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_off = mshrs_13_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_opcode = mshrs_13_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_param = mshrs_13_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_size = mshrs_13_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_sourceId = mshrs_13_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_mshrId = mshrs_13_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_useProbeData = mshrs_13_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_dirty = mshrs_13_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_way = mshrs_13_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_meta_dirty = mshrs_13_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_meta_state = mshrs_13_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_meta_clients = mshrs_13_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_meta_accessed = mshrs_13_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_metaWen = mshrs_13_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_tagWen = mshrs_13_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_dsWen = mshrs_13_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_wayMask = mshrs_13_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_replTask = mshrs_13_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_13_bits_reqSource = mshrs_13_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_valid = mshrs_14_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_channel = mshrs_14_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_set = mshrs_14_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_tag = mshrs_14_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_off = mshrs_14_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_opcode = mshrs_14_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_param = mshrs_14_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_size = mshrs_14_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_sourceId = mshrs_14_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_mshrId = mshrs_14_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_useProbeData = mshrs_14_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_dirty = mshrs_14_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_way = mshrs_14_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_meta_dirty = mshrs_14_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_meta_state = mshrs_14_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_meta_clients = mshrs_14_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_meta_accessed = mshrs_14_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_metaWen = mshrs_14_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_tagWen = mshrs_14_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_dsWen = mshrs_14_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_wayMask = mshrs_14_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_replTask = mshrs_14_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_14_bits_reqSource = mshrs_14_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_valid = mshrs_15_io_tasks_mainpipe_valid; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_channel = mshrs_15_io_tasks_mainpipe_bits_channel; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_set = mshrs_15_io_tasks_mainpipe_bits_set; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_tag = mshrs_15_io_tasks_mainpipe_bits_tag; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_off = mshrs_15_io_tasks_mainpipe_bits_off; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_opcode = mshrs_15_io_tasks_mainpipe_bits_opcode; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_param = mshrs_15_io_tasks_mainpipe_bits_param; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_size = mshrs_15_io_tasks_mainpipe_bits_size; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_sourceId = mshrs_15_io_tasks_mainpipe_bits_sourceId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_mshrId = mshrs_15_io_tasks_mainpipe_bits_mshrId; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_useProbeData = mshrs_15_io_tasks_mainpipe_bits_useProbeData; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_dirty = mshrs_15_io_tasks_mainpipe_bits_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_way = mshrs_15_io_tasks_mainpipe_bits_way; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_meta_dirty = mshrs_15_io_tasks_mainpipe_bits_meta_dirty; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_meta_state = mshrs_15_io_tasks_mainpipe_bits_meta_state; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_meta_clients = mshrs_15_io_tasks_mainpipe_bits_meta_clients; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_meta_accessed = mshrs_15_io_tasks_mainpipe_bits_meta_accessed; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_metaWen = mshrs_15_io_tasks_mainpipe_bits_metaWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_tagWen = mshrs_15_io_tasks_mainpipe_bits_tagWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_dsWen = mshrs_15_io_tasks_mainpipe_bits_dsWen; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_wayMask = mshrs_15_io_tasks_mainpipe_bits_wayMask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_replTask = mshrs_15_io_tasks_mainpipe_bits_replTask; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_in_15_bits_reqSource = mshrs_15_io_tasks_mainpipe_bits_reqSource; // @[CoupledL2.scala 146:45]
  assign mshr_task_arb_io_out_ready = io_mshrTask_ready; // @[CoupledL2.scala 147:9]
endmodule

