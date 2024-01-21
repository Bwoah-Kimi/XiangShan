module MainPipe_1(
  input          clock,
  input          reset,
  input          io_taskFromArb_s2_valid,
  input  [2:0]   io_taskFromArb_s2_bits_channel,
  input  [6:0]   io_taskFromArb_s2_bits_set,
  input  [21:0]  io_taskFromArb_s2_bits_tag,
  input  [5:0]   io_taskFromArb_s2_bits_off,
  input  [2:0]   io_taskFromArb_s2_bits_opcode,
  input  [2:0]   io_taskFromArb_s2_bits_param,
  input  [2:0]   io_taskFromArb_s2_bits_size,
  input  [4:0]   io_taskFromArb_s2_bits_sourceId,
  input  [1:0]   io_taskFromArb_s2_bits_bufIdx,
  input          io_taskFromArb_s2_bits_needProbeAckData,
  input          io_taskFromArb_s2_bits_mshrTask,
  input  [7:0]   io_taskFromArb_s2_bits_mshrId,
  input          io_taskFromArb_s2_bits_useProbeData,
  input          io_taskFromArb_s2_bits_dirty,
  input  [2:0]   io_taskFromArb_s2_bits_way,
  input          io_taskFromArb_s2_bits_meta_dirty,
  input  [1:0]   io_taskFromArb_s2_bits_meta_state,
  input          io_taskFromArb_s2_bits_meta_clients,
  input          io_taskFromArb_s2_bits_meta_accessed,
  input          io_taskFromArb_s2_bits_metaWen,
  input          io_taskFromArb_s2_bits_tagWen,
  input          io_taskFromArb_s2_bits_dsWen,
  input          io_taskFromArb_s2_bits_replTask,
  input  [3:0]   io_taskFromArb_s2_bits_reqSource,
  input          io_taskInfo_s1_valid,
  input  [2:0]   io_taskInfo_s1_bits_channel,
  input  [2:0]   io_taskInfo_s1_bits_opcode,
  input  [4:0]   io_taskInfo_s1_bits_sourceId,
  input  [21:0]  io_fromReqArb_status_s1_tags_1,
  input  [6:0]   io_fromReqArb_status_s1_sets_0,
  input  [6:0]   io_fromReqArb_status_s1_sets_1,
  input  [6:0]   io_fromReqArb_status_s1_sets_2,
  input  [6:0]   io_fromReqArb_status_s1_sets_3,
  output         io_toReqArb_blockG_s1,
  output         io_toReqArb_blockA_s1,
  output         io_toReqArb_blockB_s1,
  output         io_toReqArb_blockC_s1,
  output         io_toReqBuf_0,
  output         io_toReqBuf_1,
  output         io_status_vec_0_valid,
  output [2:0]   io_status_vec_0_bits_channel,
  output         io_status_vec_1_valid,
  output [2:0]   io_status_vec_1_bits_channel,
  output         io_status_vec_2_valid,
  output [2:0]   io_status_vec_2_bits_channel,
  input          io_dirResp_s3_hit,
  input  [21:0]  io_dirResp_s3_tag,
  input  [6:0]   io_dirResp_s3_set,
  input  [2:0]   io_dirResp_s3_way,
  input          io_dirResp_s3_meta_dirty,
  input  [1:0]   io_dirResp_s3_meta_state,
  input          io_dirResp_s3_meta_clients,
  input          io_dirResp_s3_meta_accessed,
  input          io_replResp_valid,
  input  [2:0]   io_replResp_bits_way,
  input  [1:0]   io_replResp_bits_meta_state,
  input          io_replResp_bits_retry,
  output         io_toMSHRCtl_mshr_alloc_s3_valid,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_hit,
  output [21:0]  io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_tag,
  output [6:0]   io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_set,
  output [2:0]   io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_way,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_dirty,
  output [1:0]   io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_state,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_clients,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_accessed,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_s_acquire,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_s_rprobe,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_s_pprobe,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_s_probeack,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_s_refill,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeackfirst,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeacklast,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeackfirst,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeacklast,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeack,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantfirst,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantlast,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrant,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantack,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_state_wreplResp,
  output [2:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_channel,
  output [6:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_set,
  output [21:0]  io_toMSHRCtl_mshr_alloc_s3_bits_task_tag,
  output [5:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_off,
  output [2:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_opcode,
  output [2:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_param,
  output [2:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_size,
  output [4:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_sourceId,
  output         io_toMSHRCtl_mshr_alloc_s3_bits_task_needProbeAckData,
  output [3:0]   io_toMSHRCtl_mshr_alloc_s3_bits_task_reqSource,
  input  [7:0]   io_fromMSHRCtl_mshr_alloc_ptr,
  output         io_bufRead_valid,
  output [1:0]   io_bufRead_bits_bufIdx,
  input  [255:0] io_bufResp_data_0,
  input  [255:0] io_bufResp_data_1,
  input  [511:0] io_refillBufResp_s3_bits_data,
  input          io_releaseBufResp_s3_valid,
  input  [511:0] io_releaseBufResp_s3_bits_data,
  output         io_toDS_req_s3_valid,
  output [2:0]   io_toDS_req_s3_bits_way,
  output [6:0]   io_toDS_req_s3_bits_set,
  output         io_toDS_req_s3_bits_wen,
  input  [511:0] io_toDS_rdata_s5_data,
  output [511:0] io_toDS_wdata_s3_data,
  input          io_toSourceC_ready,
  output         io_toSourceC_valid,
  output [6:0]   io_toSourceC_bits_task_set,
  output [21:0]  io_toSourceC_bits_task_tag,
  output [5:0]   io_toSourceC_bits_task_off,
  output [2:0]   io_toSourceC_bits_task_opcode,
  output [2:0]   io_toSourceC_bits_task_param,
  output [7:0]   io_toSourceC_bits_task_mshrId,
  output         io_toSourceC_bits_task_dirty,
  output [511:0] io_toSourceC_bits_data_data,
  output         io_toSourceD_valid,
  output [6:0]   io_toSourceD_bits_task_set,
  output [21:0]  io_toSourceD_bits_task_tag,
  output [2:0]   io_toSourceD_bits_task_opcode,
  output [2:0]   io_toSourceD_bits_task_param,
  output [4:0]   io_toSourceD_bits_task_sourceId,
  output [7:0]   io_toSourceD_bits_task_mshrId,
  output [511:0] io_toSourceD_bits_data_data,
  output         io_metaWReq_valid,
  output [6:0]   io_metaWReq_bits_set,
  output [7:0]   io_metaWReq_bits_wayOH,
  output         io_metaWReq_bits_wmeta_dirty,
  output [1:0]   io_metaWReq_bits_wmeta_state,
  output         io_metaWReq_bits_wmeta_clients,
  output         io_metaWReq_bits_wmeta_accessed,
  output         io_tagWReq_valid,
  output [6:0]   io_tagWReq_bits_set,
  output [2:0]   io_tagWReq_bits_way,
  output [21:0]  io_tagWReq_bits_wtag,
  output         io_releaseBufWrite_valid,
  output [511:0] io_releaseBufWrite_data_data,
  output [7:0]   io_releaseBufWrite_id,
  output         io_refillBufWrite_valid,
  output [511:0] io_refillBufWrite_data_data,
  output [7:0]   io_refillBufWrite_id,
  output [6:0]   io_nestedwb_set,
  output [21:0]  io_nestedwb_tag,
  output         io_nestedwb_c_set_dirty,
  output [511:0] io_nestedwbData_data,
  output         io_l1Hint_valid,
  output [31:0]  io_l1Hint_bits_sourceId,
  input          io_grantBufferHint_valid,
  input  [31:0]  io_grantBufferHint_bits_sourceId,
  input  [4:0]   io_globalCounter
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
  reg [511:0] _RAND_26;
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
  reg [511:0] _RAND_38;
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
  reg [511:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
`endif // RANDOMIZE_REG_INIT
  wire  customL1Hint_io_s1_valid; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s1_bits_channel; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s1_bits_opcode; // @[MainPipe.scala 482:28]
  wire [4:0] customL1Hint_io_s1_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s2_valid; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s2_bits_channel; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s2_bits_opcode; // @[MainPipe.scala 482:28]
  wire [4:0] customL1Hint_io_s2_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s2_bits_mshrTask; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s3_task_valid; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s3_task_bits_channel; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s3_task_bits_opcode; // @[MainPipe.scala 482:28]
  wire [4:0] customL1Hint_io_s3_task_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s3_task_bits_mshrTask; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s3_d; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s3_need_mshr; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s4_task_valid; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s4_task_bits_channel; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s4_task_bits_opcode; // @[MainPipe.scala 482:28]
  wire [4:0] customL1Hint_io_s4_task_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s4_task_bits_mshrTask; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s4_d; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s4_need_write_releaseBuf; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s4_need_write_refillBuf; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s5_task_bits_channel; // @[MainPipe.scala 482:28]
  wire [2:0] customL1Hint_io_s5_task_bits_opcode; // @[MainPipe.scala 482:28]
  wire [4:0] customL1Hint_io_s5_task_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s5_task_bits_mshrTask; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_s5_d; // @[MainPipe.scala 482:28]
  wire [4:0] customL1Hint_io_globalCounter; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_grantBufferHint_valid; // @[MainPipe.scala 482:28]
  wire [31:0] customL1Hint_io_grantBufferHint_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  customL1Hint_io_l1Hint_valid; // @[MainPipe.scala 482:28]
  wire [31:0] customL1Hint_io_l1Hint_bits_sourceId; // @[MainPipe.scala 482:28]
  wire  c_arb_io_in_0_valid; // @[MainPipe.scala 615:21]
  wire [6:0] c_arb_io_in_0_bits_task_set; // @[MainPipe.scala 615:21]
  wire [21:0] c_arb_io_in_0_bits_task_tag; // @[MainPipe.scala 615:21]
  wire [5:0] c_arb_io_in_0_bits_task_off; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_in_0_bits_task_opcode; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_in_0_bits_task_param; // @[MainPipe.scala 615:21]
  wire [4:0] c_arb_io_in_0_bits_task_sourceId; // @[MainPipe.scala 615:21]
  wire [7:0] c_arb_io_in_0_bits_task_mshrId; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_0_bits_task_dirty; // @[MainPipe.scala 615:21]
  wire [511:0] c_arb_io_in_0_bits_data_data; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_1_ready; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_1_valid; // @[MainPipe.scala 615:21]
  wire [6:0] c_arb_io_in_1_bits_task_set; // @[MainPipe.scala 615:21]
  wire [21:0] c_arb_io_in_1_bits_task_tag; // @[MainPipe.scala 615:21]
  wire [5:0] c_arb_io_in_1_bits_task_off; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_in_1_bits_task_opcode; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_in_1_bits_task_param; // @[MainPipe.scala 615:21]
  wire [4:0] c_arb_io_in_1_bits_task_sourceId; // @[MainPipe.scala 615:21]
  wire [7:0] c_arb_io_in_1_bits_task_mshrId; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_1_bits_task_dirty; // @[MainPipe.scala 615:21]
  wire [511:0] c_arb_io_in_1_bits_data_data; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_2_ready; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_2_valid; // @[MainPipe.scala 615:21]
  wire [6:0] c_arb_io_in_2_bits_task_set; // @[MainPipe.scala 615:21]
  wire [21:0] c_arb_io_in_2_bits_task_tag; // @[MainPipe.scala 615:21]
  wire [5:0] c_arb_io_in_2_bits_task_off; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_in_2_bits_task_opcode; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_in_2_bits_task_param; // @[MainPipe.scala 615:21]
  wire [4:0] c_arb_io_in_2_bits_task_sourceId; // @[MainPipe.scala 615:21]
  wire [7:0] c_arb_io_in_2_bits_task_mshrId; // @[MainPipe.scala 615:21]
  wire  c_arb_io_in_2_bits_task_dirty; // @[MainPipe.scala 615:21]
  wire [511:0] c_arb_io_in_2_bits_data_data; // @[MainPipe.scala 615:21]
  wire  c_arb_io_out_ready; // @[MainPipe.scala 615:21]
  wire  c_arb_io_out_valid; // @[MainPipe.scala 615:21]
  wire [6:0] c_arb_io_out_bits_task_set; // @[MainPipe.scala 615:21]
  wire [21:0] c_arb_io_out_bits_task_tag; // @[MainPipe.scala 615:21]
  wire [5:0] c_arb_io_out_bits_task_off; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_out_bits_task_opcode; // @[MainPipe.scala 615:21]
  wire [2:0] c_arb_io_out_bits_task_param; // @[MainPipe.scala 615:21]
  wire [4:0] c_arb_io_out_bits_task_sourceId; // @[MainPipe.scala 615:21]
  wire [7:0] c_arb_io_out_bits_task_mshrId; // @[MainPipe.scala 615:21]
  wire  c_arb_io_out_bits_task_dirty; // @[MainPipe.scala 615:21]
  wire [511:0] c_arb_io_out_bits_data_data; // @[MainPipe.scala 615:21]
  wire  d_arb_io_in_0_valid; // @[MainPipe.scala 616:21]
  wire [6:0] d_arb_io_in_0_bits_task_set; // @[MainPipe.scala 616:21]
  wire [21:0] d_arb_io_in_0_bits_task_tag; // @[MainPipe.scala 616:21]
  wire [5:0] d_arb_io_in_0_bits_task_off; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_in_0_bits_task_opcode; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_in_0_bits_task_param; // @[MainPipe.scala 616:21]
  wire [4:0] d_arb_io_in_0_bits_task_sourceId; // @[MainPipe.scala 616:21]
  wire [7:0] d_arb_io_in_0_bits_task_mshrId; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_0_bits_task_dirty; // @[MainPipe.scala 616:21]
  wire [511:0] d_arb_io_in_0_bits_data_data; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_1_ready; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_1_valid; // @[MainPipe.scala 616:21]
  wire [6:0] d_arb_io_in_1_bits_task_set; // @[MainPipe.scala 616:21]
  wire [21:0] d_arb_io_in_1_bits_task_tag; // @[MainPipe.scala 616:21]
  wire [5:0] d_arb_io_in_1_bits_task_off; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_in_1_bits_task_opcode; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_in_1_bits_task_param; // @[MainPipe.scala 616:21]
  wire [4:0] d_arb_io_in_1_bits_task_sourceId; // @[MainPipe.scala 616:21]
  wire [7:0] d_arb_io_in_1_bits_task_mshrId; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_1_bits_task_dirty; // @[MainPipe.scala 616:21]
  wire [511:0] d_arb_io_in_1_bits_data_data; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_2_ready; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_2_valid; // @[MainPipe.scala 616:21]
  wire [6:0] d_arb_io_in_2_bits_task_set; // @[MainPipe.scala 616:21]
  wire [21:0] d_arb_io_in_2_bits_task_tag; // @[MainPipe.scala 616:21]
  wire [5:0] d_arb_io_in_2_bits_task_off; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_in_2_bits_task_opcode; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_in_2_bits_task_param; // @[MainPipe.scala 616:21]
  wire [4:0] d_arb_io_in_2_bits_task_sourceId; // @[MainPipe.scala 616:21]
  wire [7:0] d_arb_io_in_2_bits_task_mshrId; // @[MainPipe.scala 616:21]
  wire  d_arb_io_in_2_bits_task_dirty; // @[MainPipe.scala 616:21]
  wire [511:0] d_arb_io_in_2_bits_data_data; // @[MainPipe.scala 616:21]
  wire  d_arb_io_out_ready; // @[MainPipe.scala 616:21]
  wire  d_arb_io_out_valid; // @[MainPipe.scala 616:21]
  wire [6:0] d_arb_io_out_bits_task_set; // @[MainPipe.scala 616:21]
  wire [21:0] d_arb_io_out_bits_task_tag; // @[MainPipe.scala 616:21]
  wire [5:0] d_arb_io_out_bits_task_off; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_out_bits_task_opcode; // @[MainPipe.scala 616:21]
  wire [2:0] d_arb_io_out_bits_task_param; // @[MainPipe.scala 616:21]
  wire [4:0] d_arb_io_out_bits_task_sourceId; // @[MainPipe.scala 616:21]
  wire [7:0] d_arb_io_out_bits_task_mshrId; // @[MainPipe.scala 616:21]
  wire  d_arb_io_out_bits_task_dirty; // @[MainPipe.scala 616:21]
  wire [511:0] d_arb_io_out_bits_data_data; // @[MainPipe.scala 616:21]
  reg  resetFinish; // @[MainPipe.scala 108:28]
  reg [6:0] resetIdx; // @[MainPipe.scala 109:25]
  wire  _T = ~resetFinish; // @[MainPipe.scala 111:8]
  wire [6:0] _resetIdx_T_1 = resetIdx - 7'h1; // @[MainPipe.scala 112:26]
  wire  hasData_s2 = io_taskFromArb_s2_bits_opcode[0]; // @[MainPipe.scala 124:39]
  reg  task_s3_valid; // @[MainPipe.scala 130:24]
  reg [2:0] task_s3_bits_channel; // @[MainPipe.scala 130:24]
  reg [6:0] task_s3_bits_set; // @[MainPipe.scala 130:24]
  reg [21:0] task_s3_bits_tag; // @[MainPipe.scala 130:24]
  reg [5:0] task_s3_bits_off; // @[MainPipe.scala 130:24]
  reg [2:0] task_s3_bits_opcode; // @[MainPipe.scala 130:24]
  reg [2:0] task_s3_bits_param; // @[MainPipe.scala 130:24]
  reg [2:0] task_s3_bits_size; // @[MainPipe.scala 130:24]
  reg [4:0] task_s3_bits_sourceId; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_needProbeAckData; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_mshrTask; // @[MainPipe.scala 130:24]
  reg [7:0] task_s3_bits_mshrId; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_useProbeData; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_dirty; // @[MainPipe.scala 130:24]
  reg [2:0] task_s3_bits_way; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_meta_dirty; // @[MainPipe.scala 130:24]
  reg [1:0] task_s3_bits_meta_state; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_meta_clients; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_meta_accessed; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_metaWen; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_tagWen; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_dsWen; // @[MainPipe.scala 130:24]
  reg  task_s3_bits_replTask; // @[MainPipe.scala 130:24]
  reg [3:0] task_s3_bits_reqSource; // @[MainPipe.scala 130:24]
  wire  sink_req_s3 = ~task_s3_bits_mshrTask; // @[MainPipe.scala 142:25]
  wire  sinkA_req_s3 = sink_req_s3 & task_s3_bits_channel[0]; // @[MainPipe.scala 143:38]
  wire  sinkB_req_s3 = sink_req_s3 & task_s3_bits_channel[1]; // @[MainPipe.scala 144:38]
  wire  sinkC_req_s3 = sink_req_s3 & task_s3_bits_channel[2]; // @[MainPipe.scala 145:38]
  wire  _req_acquire_s3_T = task_s3_bits_opcode == 3'h6; // @[MainPipe.scala 147:62]
  wire  _req_acquire_s3_T_1 = task_s3_bits_opcode == 3'h7; // @[MainPipe.scala 147:96]
  wire  _req_acquire_s3_T_2 = task_s3_bits_opcode == 3'h6 | task_s3_bits_opcode == 3'h7; // @[MainPipe.scala 147:79]
  wire  req_acquire_s3 = sinkA_req_s3 & (task_s3_bits_opcode == 3'h6 | task_s3_bits_opcode == 3'h7); // @[MainPipe.scala 147:44]
  wire  req_acquireBlock_s3 = sinkA_req_s3 & _req_acquire_s3_T; // @[MainPipe.scala 148:44]
  wire  _req_prefetch_s3_T = task_s3_bits_opcode == 3'h5; // @[MainPipe.scala 149:61]
  wire  req_prefetch_s3 = sinkA_req_s3 & task_s3_bits_opcode == 3'h5; // @[MainPipe.scala 149:44]
  wire  req_get_s3 = sinkA_req_s3 & task_s3_bits_opcode == 3'h4; // @[MainPipe.scala 150:44]
  wire  _mshr_grant_s3_T_2 = task_s3_bits_mshrTask & task_s3_bits_channel[0]; // @[MainPipe.scala 152:43]
  wire  _mshr_grant_s3_T_4 = task_s3_bits_opcode[2:1] == 2'h2; // @[MainPipe.scala 152:82]
  wire  mshr_grant_s3 = task_s3_bits_mshrTask & task_s3_bits_channel[0] & task_s3_bits_opcode[2:1] == 2'h2; // @[MainPipe.scala 152:59]
  wire  mshr_accessackdata_s3 = _mshr_grant_s3_T_2 & task_s3_bits_opcode == 3'h1; // @[MainPipe.scala 154:59]
  wire  mshr_hintack_s3 = _mshr_grant_s3_T_2 & task_s3_bits_opcode == 3'h2; // @[MainPipe.scala 155:59]
  wire  mshr_probeack_s3 = task_s3_bits_mshrTask & task_s3_bits_channel[1] & _mshr_grant_s3_T_4; // @[MainPipe.scala 156:59]
  wire  mshr_release_s3 = task_s3_bits_mshrTask & task_s3_bits_opcode[2:1] == 2'h3; // @[MainPipe.scala 158:43]
  wire  meta_has_clients_s3 = |io_dirResp_s3_meta_clients; // @[MainPipe.scala 160:47]
  wire  _req_needT_s3_T_3 = task_s3_bits_param == 3'h1; // @[Consts.scala 36:42]
  wire  _req_needT_s3_T_4 = _req_prefetch_s3_T & task_s3_bits_param == 3'h1; // @[Consts.scala 36:33]
  wire  _req_needT_s3_T_5 = ~task_s3_bits_opcode[2] | _req_needT_s3_T_4; // @[Consts.scala 35:16]
  wire  _req_needT_s3_T_10 = _req_acquire_s3_T_2 & task_s3_bits_param != 3'h0; // @[Consts.scala 37:80]
  wire  req_needT_s3 = _req_needT_s3_T_5 | _req_needT_s3_T_10; // @[Consts.scala 36:70]
  wire  mshr_refill_s3 = mshr_accessackdata_s3 | mshr_hintack_s3 | mshr_grant_s3; // @[MainPipe.scala 168:66]
  wire  retry = io_replResp_valid & io_replResp_bits_retry; // @[MainPipe.scala 169:33]
  wire  need_repl = io_replResp_valid & io_replResp_bits_meta_state != 2'h0 & task_s3_bits_replTask; // @[MainPipe.scala 170:80]
  wire  acquire_on_miss_s3 = req_acquire_s3 | req_prefetch_s3 | req_get_s3; // @[MainPipe.scala 173:63]
  wire  _acquire_on_hit_s3_T = io_dirResp_s3_meta_state == 2'h1; // @[MainPipe.scala 174:43]
  wire  acquire_on_hit_s3 = io_dirResp_s3_meta_state == 2'h1 & req_needT_s3; // @[MainPipe.scala 174:54]
  wire  _need_acquire_s3_a_T_2 = io_dirResp_s3_hit ? acquire_on_hit_s3 : acquire_on_miss_s3; // @[MainPipe.scala 176:48]
  wire  need_acquire_s3_a = task_s3_bits_channel[0] & _need_acquire_s3_a_T_2; // @[MainPipe.scala 176:42]
  wire  _need_probe_s3_a_T_1 = io_dirResp_s3_meta_state == 2'h2; // @[MainPipe.scala 181:73]
  wire  need_probe_s3_a = req_get_s3 & io_dirResp_s3_hit & io_dirResp_s3_meta_state == 2'h2; // @[MainPipe.scala 181:56]
  wire  need_mshr_s3_a = need_acquire_s3_a | need_probe_s3_a; // @[MainPipe.scala 183:42]
  wire  _need_mshr_s3_bT_6 = ~(_acquire_on_hit_s3_T & _req_needT_s3_T_3); // @[MainPipe.scala 186:5]
  wire  _need_mshr_s3_bT_7 = io_dirResp_s3_hit & task_s3_bits_channel[1] & _need_mshr_s3_bT_6; // @[MainPipe.scala 185:57]
  wire  need_mshr_s3_b = _need_mshr_s3_bT_7 & meta_has_clients_s3; // @[MainPipe.scala 186:57]
  wire  need_mshr_s3 = need_mshr_s3_a | need_mshr_s3_b; // @[MainPipe.scala 190:37]
  wire  _io_toMSHRCtl_mshr_alloc_s3_valid_T_1 = task_s3_valid & sink_req_s3; // @[MainPipe.scala 196:53]
  wire  sink_resp_s3_a_promoteT = io_dirResp_s3_hit & io_dirResp_s3_meta_state[1]; // @[MainPipe.scala 231:50]
  wire  _sink_resp_s3_valid_T_2 = ~need_mshr_s3; // @[MainPipe.scala 233:58]
  wire  sink_resp_s3_valid = _io_toMSHRCtl_mshr_alloc_s3_valid_T_1 & ~need_mshr_s3; // @[MainPipe.scala 233:55]
  wire [7:0] _GEN_110 = {{3'd0}, task_s3_bits_sourceId}; // @[MainPipe.scala 235:53]
  wire [7:0] sink_resp_s3_bits_mshrId = 8'h80 + _GEN_110; // @[MainPipe.scala 235:53]
  wire [2:0] _GEN_29 = 3'h2 == task_s3_bits_opcode ? 3'h1 : 3'h0; // @[MainPipe.scala 238:{30,30}]
  wire [2:0] _GEN_30 = 3'h3 == task_s3_bits_opcode ? 3'h1 : _GEN_29; // @[MainPipe.scala 238:{30,30}]
  wire [2:0] _GEN_31 = 3'h4 == task_s3_bits_opcode ? 3'h1 : _GEN_30; // @[MainPipe.scala 238:{30,30}]
  wire [2:0] _GEN_32 = 3'h5 == task_s3_bits_opcode ? 3'h2 : _GEN_31; // @[MainPipe.scala 238:{30,30}]
  wire [2:0] _GEN_33 = 3'h6 == task_s3_bits_opcode ? 3'h5 : _GEN_32; // @[MainPipe.scala 238:{30,30}]
  wire [2:0] _GEN_34 = 3'h7 == task_s3_bits_opcode ? 3'h4 : _GEN_33; // @[MainPipe.scala 238:{30,30}]
  wire  _sink_resp_s3_bits_param_T = task_s3_bits_param == 3'h0; // @[MainPipe.scala 241:24]
  wire [1:0] _sink_resp_s3_bits_param_T_3 = task_s3_bits_param == 3'h0 & ~sink_resp_s3_a_promoteT ? 2'h1 : 2'h0; // @[MainPipe.scala 241:10]
  wire [1:0] _sink_resp_s3_bits_param_T_4 = req_acquire_s3 ? _sink_resp_s3_bits_param_T_3 : 2'h0; // @[MainPipe.scala 239:36]
  wire  _sink_resp_s3_bits_opcode_T = io_dirResp_s3_meta_state == 2'h3; // @[MainPipe.scala 246:42]
  wire  _sink_resp_s3_bits_opcode_T_1 = io_dirResp_s3_meta_state == 2'h3 & io_dirResp_s3_meta_dirty; // @[MainPipe.scala 246:50]
  wire  _sink_resp_s3_bits_opcode_T_3 = io_dirResp_s3_hit & (io_dirResp_s3_meta_state == 2'h3 & io_dirResp_s3_meta_dirty
     | task_s3_bits_needProbeAckData); // @[MainPipe.scala 246:24]
  wire [2:0] _sink_resp_s3_bits_opcode_T_4 = _sink_resp_s3_bits_opcode_T_3 ? 3'h5 : 3'h4; // @[MainPipe.scala 245:36]
  wire [4:0] _sink_resp_s3_bits_param_T_6 = {task_s3_bits_param,io_dirResp_s3_meta_state}; // @[Cat.scala 31:58]
  wire [2:0] _sink_resp_s3_bits_param_T_12 = 5'h9 == _sink_resp_s3_bits_param_T_6 ? 3'h2 : 3'h4; // @[Mux.scala 81:58]
  wire [2:0] _sink_resp_s3_bits_param_T_14 = 5'hb == _sink_resp_s3_bits_param_T_6 ? 3'h1 : _sink_resp_s3_bits_param_T_12
    ; // @[Mux.scala 81:58]
  wire [2:0] _sink_resp_s3_bits_param_T_16 = 5'h7 == _sink_resp_s3_bits_param_T_6 ? 3'h0 : _sink_resp_s3_bits_param_T_14
    ; // @[Mux.scala 81:58]
  wire [2:0] _sink_resp_s3_bits_param_T_18 = 5'h3 == _sink_resp_s3_bits_param_T_6 ? 3'h3 : _sink_resp_s3_bits_param_T_16
    ; // @[Mux.scala 81:58]
  wire [2:0] _sink_resp_s3_bits_param_T_19 = ~io_dirResp_s3_hit ? 3'h5 : _sink_resp_s3_bits_param_T_18; // @[MainPipe.scala 250:36]
  wire [2:0] _GEN_35 = task_s3_bits_channel[1] ? _sink_resp_s3_bits_opcode_T_4 : 3'h6; // @[MainPipe.scala 244:28 245:30 259:30]
  wire [2:0] _GEN_36 = task_s3_bits_channel[1] ? _sink_resp_s3_bits_param_T_19 : 3'h0; // @[MainPipe.scala 244:28 250:30 260:30]
  wire [2:0] sink_resp_s3_bits_opcode = task_s3_bits_channel[0] ? _GEN_34 : _GEN_35; // @[MainPipe.scala 237:22 238:30]
  wire [2:0] sink_resp_s3_bits_param = task_s3_bits_channel[0] ? {{1'd0}, _sink_resp_s3_bits_param_T_4} : _GEN_36; // @[MainPipe.scala 237:22 239:30]
  wire [2:0] source_req_s3_opcode = sink_resp_s3_valid ? sink_resp_s3_bits_opcode : task_s3_bits_opcode; // @[MainPipe.scala 264:23]
  reg [511:0] c_releaseData_s3; // @[MainPipe.scala 268:33]
  wire  hasData_s3 = source_req_s3_opcode[0]; // @[MainPipe.scala 269:40]
  wire  need_data_a = io_dirResp_s3_hit & (req_get_s3 | req_acquireBlock_s3); // @[MainPipe.scala 271:39]
  wire  _need_data_bT_5 = _need_probe_s3_a_T_1 | _sink_resp_s3_bits_opcode_T_1 | task_s3_bits_needProbeAckData; // @[MainPipe.scala 273:91]
  wire  need_data_b = sinkB_req_s3 & io_dirResp_s3_hit & _need_data_bT_5; // @[MainPipe.scala 272:55]
  wire  _need_data_mshr_repl_T_1 = ~retry; // @[MainPipe.scala 274:60]
  wire  need_data_mshr_repl = mshr_refill_s3 & need_repl & ~retry; // @[MainPipe.scala 274:57]
  wire  ren = need_data_a | need_data_b | need_data_mshr_repl; // @[MainPipe.scala 275:56]
  wire  _wen_c_T_4 = _req_needT_s3_T_3 | _sink_resp_s3_bits_param_T | task_s3_bits_param == 3'h3; // @[Consts.scala 55:66]
  wire  wen_c = sinkC_req_s3 & _wen_c_T_4 & task_s3_bits_opcode[0] & io_dirResp_s3_hit; // @[MainPipe.scala 277:78]
  wire  _wen_mshr_T_4 = mshr_refill_s3 & ~need_repl & _need_data_mshr_repl_T_1; // @[MainPipe.scala 280:34]
  wire  _wen_mshr_T_5 = mshr_probeack_s3 | mshr_release_s3 | _wen_mshr_T_4; // @[MainPipe.scala 279:41]
  wire  wen_mshr = task_s3_bits_dsWen & _wen_mshr_T_5; // @[MainPipe.scala 278:31]
  wire  wen = wen_c | wen_mshr; // @[MainPipe.scala 282:21]
  wire  _io_toDS_req_s3_bits_way_T = mshr_refill_s3 & task_s3_bits_replTask; // @[MainPipe.scala 285:49]
  wire [2:0] _io_toDS_req_s3_bits_way_T_1 = task_s3_bits_mshrTask ? task_s3_bits_way : io_dirResp_s3_way; // @[MainPipe.scala 286:8]
  wire [2:0] _io_toDS_req_s3_bits_way_T_2 = mshr_refill_s3 & task_s3_bits_replTask ? io_replResp_bits_way :
    _io_toDS_req_s3_bits_way_T_1; // @[MainPipe.scala 285:33]
  wire [511:0] _io_toDS_wdata_s3_data_T_1 = task_s3_bits_useProbeData ? io_releaseBufResp_s3_bits_data :
    io_refillBufResp_s3_bits_data; // @[MainPipe.scala 292:8]
  wire  _need_write_releaseBuf_T_1 = need_data_b & need_mshr_s3_b; // @[MainPipe.scala 305:17]
  wire  _need_write_releaseBuf_T_2 = need_probe_s3_a | _need_write_releaseBuf_T_1; // @[MainPipe.scala 304:17]
  wire  need_write_releaseBuf = _need_write_releaseBuf_T_2 | need_data_mshr_repl; // @[MainPipe.scala 305:35]
  wire  _need_write_refillBuf_T_4 = ~req_prefetch_s3; // @[MainPipe.scala 311:110]
  wire  need_write_refillBuf = sinkA_req_s3 & req_needT_s3 & io_dirResp_s3_hit & _acquire_on_hit_s3_T & ~req_prefetch_s3
    ; // @[MainPipe.scala 311:107]
  wire  metaW_valid_s3_a = sinkA_req_s3 & ~need_mshr_s3_a & ~req_get_s3 & _need_write_refillBuf_T_4; // @[MainPipe.scala 314:76]
  wire  _metaW_valid_s3_bT_5 = task_s3_bits_param == 3'h2; // @[MainPipe.scala 315:151]
  wire  metaW_valid_s3_b = sinkB_req_s3 & ~need_mshr_s3_b & io_dirResp_s3_hit & (_sink_resp_s3_bits_opcode_T |
    _acquire_on_hit_s3_T & task_s3_bits_param == 3'h2); // @[MainPipe.scala 315:81]
  wire  metaW_valid_s3_c = sinkC_req_s3 & io_dirResp_s3_hit; // @[MainPipe.scala 316:42]
  wire  _metaW_valid_s3_mshr_T_1 = mshr_refill_s3 & retry; // @[MainPipe.scala 317:79]
  wire  metaW_valid_s3_mshr = task_s3_bits_mshrTask & task_s3_bits_metaWen & ~(mshr_refill_s3 & retry); // @[MainPipe.scala 317:59]
  wire [1:0] metaW_s3_a_x2 = req_needT_s3 | sink_resp_s3_a_promoteT ? 2'h2 : io_dirResp_s3_meta_state; // @[MainPipe.scala 328:16]
  wire [1:0] metaW_s3_bstate = _metaW_valid_s3_bT_5 ? 2'h0 : 2'h1; // @[MainPipe.scala 333:23]
  wire  metaW_s3_bclients = _metaW_valid_s3_bT_5 ? 1'h0 : io_dirResp_s3_meta_clients; // @[MainPipe.scala 333:23]
  wire  metaW_s3_baccessed = _metaW_valid_s3_bT_5 ? 1'h0 : io_dirResp_s3_meta_accessed; // @[MainPipe.scala 333:23]
  wire  metaW_s3_c_x15 = io_dirResp_s3_meta_dirty | wen_c; // @[MainPipe.scala 344:27]
  wire [1:0] metaW_s3_c_x16 = _wen_c_T_4 ? 2'h3 : io_dirResp_s3_meta_state; // @[MainPipe.scala 345:16]
  wire  _metaW_s3_c_x17_T_4 = _req_needT_s3_T_3 | _metaW_valid_s3_bT_5 | task_s3_bits_param == 3'h5; // @[Consts.scala 48:66]
  wire  metaW_s3_c_x17 = ~_metaW_s3_c_x17_T_4; // @[MainPipe.scala 346:32]
  wire  _io_metaWReq_valid_T_1 = metaW_valid_s3_a | metaW_valid_s3_b; // @[MainPipe.scala 355:80]
  wire [7:0] _io_metaWReq_bits_wayOH_T = 8'h1 << _io_toDS_req_s3_bits_way_T_2; // @[OneHot.scala 57:35]
  wire [1:0] _io_metaWReq_bits_wmeta_T_1_state = metaW_valid_s3_a ? metaW_s3_a_x2 : metaW_s3_bstate; // @[ParallelMux.scala 90:77]
  wire  _io_metaWReq_bits_wmeta_T_3_dirty = metaW_valid_s3_c ? metaW_s3_c_x15 : task_s3_bits_meta_dirty; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_metaWReq_bits_wmeta_T_3_state = metaW_valid_s3_c ? metaW_s3_c_x16 : task_s3_bits_meta_state; // @[ParallelMux.scala 90:77]
  wire  _io_metaWReq_bits_wmeta_T_3_clients = metaW_valid_s3_c ? metaW_s3_c_x17 : task_s3_bits_meta_clients; // @[ParallelMux.scala 90:77]
  wire  _io_metaWReq_bits_wmeta_T_3_accessed = metaW_valid_s3_c ? io_dirResp_s3_meta_accessed :
    task_s3_bits_meta_accessed; // @[ParallelMux.scala 90:77]
  wire  _io_metaWReq_bits_wmeta_T_5_dirty = _io_metaWReq_valid_T_1 ? metaW_valid_s3_a & io_dirResp_s3_meta_dirty :
    _io_metaWReq_bits_wmeta_T_3_dirty; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_metaWReq_bits_wmeta_T_5_state = _io_metaWReq_valid_T_1 ? _io_metaWReq_bits_wmeta_T_1_state :
    _io_metaWReq_bits_wmeta_T_3_state; // @[ParallelMux.scala 90:77]
  wire  _io_metaWReq_bits_wmeta_T_5_clients = _io_metaWReq_valid_T_1 ? metaW_valid_s3_a | metaW_s3_bclients :
    _io_metaWReq_bits_wmeta_T_3_clients; // @[ParallelMux.scala 90:77]
  wire  _io_metaWReq_bits_wmeta_T_5_accessed = _io_metaWReq_valid_T_1 ? metaW_valid_s3_a | metaW_s3_baccessed :
    _io_metaWReq_bits_wmeta_T_3_accessed; // @[ParallelMux.scala 90:77]
  wire  c_2_ready = c_arb_io_in_2_ready; // @[MainPipe.scala 118:30 617:15]
  wire  _isC_s3_T = mshr_release_s3 | mshr_probeack_s3; // @[MainPipe.scala 382:21]
  wire  data_unready_s3 = hasData_s3 & sink_req_s3; // @[MainPipe.scala 379:36]
  wire  _isC_s3_T_5 = ~data_unready_s3; // @[MainPipe.scala 383:38]
  wire  _isC_s3_T_6 = task_s3_bits_channel[1] & _sink_resp_s3_valid_T_2 & ~data_unready_s3; // @[MainPipe.scala 383:35]
  wire  isC_s3 = task_s3_bits_mshrTask ? _isC_s3_T : _isC_s3_T_6; // @[MainPipe.scala 380:19]
  wire  c_2_valid = task_s3_valid & isC_s3; // @[MainPipe.scala 390:31]
  wire  _chnl_fire_s3_T = c_2_ready & c_2_valid; // @[Decoupled.scala 50:35]
  wire  d_2_ready = d_arb_io_in_2_ready; // @[MainPipe.scala 119:30 618:15]
  wire  _isD_s3_T_1 = mshr_refill_s3 & _need_data_mshr_repl_T_1; // @[MainPipe.scala 387:20]
  wire  _isD_s3_T_10 = task_s3_bits_channel[2] | task_s3_bits_channel[0] & _sink_resp_s3_valid_T_2 & _isC_s3_T_5; // @[MainPipe.scala 388:18]
  wire  isD_s3 = task_s3_bits_mshrTask ? _isD_s3_T_1 : _isD_s3_T_10; // @[MainPipe.scala 385:19]
  wire  d_2_valid = task_s3_valid & isD_s3; // @[MainPipe.scala 391:31]
  wire  _chnl_fire_s3_T_1 = d_2_ready & d_2_valid; // @[Decoupled.scala 50:35]
  wire  chnl_fire_s3 = _chnl_fire_s3_T | _chnl_fire_s3_T_1; // @[MainPipe.scala 374:32]
  wire  _req_drop_s3_T_4 = sink_req_s3 & need_mshr_s3; // @[MainPipe.scala 376:18]
  wire  _req_drop_s3_T_5 = sink_req_s3 & need_mshr_s3 | chnl_fire_s3; // @[MainPipe.scala 376:34]
  wire  _req_drop_s3_T_6 = ~need_write_releaseBuf & ~need_write_refillBuf & _req_drop_s3_T_5; // @[MainPipe.scala 375:69]
  wire  req_drop_s3 = _req_drop_s3_T_6 | _metaW_valid_s3_mshr_T_1; // @[MainPipe.scala 377:5]
  reg  task_s4_valid; // @[MainPipe.scala 419:24]
  reg [2:0] task_s4_bits_channel; // @[MainPipe.scala 419:24]
  reg [6:0] task_s4_bits_set; // @[MainPipe.scala 419:24]
  reg [21:0] task_s4_bits_tag; // @[MainPipe.scala 419:24]
  reg [5:0] task_s4_bits_off; // @[MainPipe.scala 419:24]
  reg [2:0] task_s4_bits_opcode; // @[MainPipe.scala 419:24]
  reg [2:0] task_s4_bits_param; // @[MainPipe.scala 419:24]
  reg [4:0] task_s4_bits_sourceId; // @[MainPipe.scala 419:24]
  reg  task_s4_bits_mshrTask; // @[MainPipe.scala 419:24]
  reg [7:0] task_s4_bits_mshrId; // @[MainPipe.scala 419:24]
  reg  task_s4_bits_dirty; // @[MainPipe.scala 419:24]
  reg [511:0] data_s4; // @[MainPipe.scala 421:20]
  reg  need_write_releaseBuf_s4; // @[MainPipe.scala 423:41]
  reg  need_write_refillBuf_s4; // @[MainPipe.scala 424:40]
  reg  isC_s4; // @[MainPipe.scala 425:31]
  reg  isD_s4; // @[MainPipe.scala 425:31]
  wire  _task_s4_valid_T_1 = task_s3_valid & ~req_drop_s3; // @[MainPipe.scala 426:34]
  wire  c_1_ready = c_arb_io_in_1_ready; // @[MainPipe.scala 118:30 617:15]
  reg  c_d_valid_s4_REG; // @[MainPipe.scala 452:47]
  wire  c_d_valid_s4 = task_s4_valid & ~c_d_valid_s4_REG; // @[MainPipe.scala 452:36]
  wire  c_1_valid = c_d_valid_s4 & isC_s4; // @[MainPipe.scala 453:30]
  wire  _chnl_fire_s4_T = c_1_ready & c_1_valid; // @[Decoupled.scala 50:35]
  wire  d_1_ready = d_arb_io_in_1_ready; // @[MainPipe.scala 119:30 618:15]
  wire  d_1_valid = c_d_valid_s4 & isD_s4; // @[MainPipe.scala 454:30]
  wire  _chnl_fire_s4_T_1 = d_1_ready & d_1_valid; // @[Decoupled.scala 50:35]
  wire  chnl_fire_s4 = _chnl_fire_s4_T | _chnl_fire_s4_T_1; // @[MainPipe.scala 449:34]
  wire  _req_drop_s4_T = ~need_write_releaseBuf_s4; // @[MainPipe.scala 450:21]
  wire  _req_drop_s4_T_1 = ~need_write_refillBuf_s4; // @[MainPipe.scala 450:50]
  wire  req_drop_s4 = ~need_write_releaseBuf_s4 & ~need_write_refillBuf_s4 & chnl_fire_s4; // @[MainPipe.scala 450:75]
  reg  task_s5_valid; // @[MainPipe.scala 461:24]
  reg [2:0] task_s5_bits_channel; // @[MainPipe.scala 461:24]
  reg [6:0] task_s5_bits_set; // @[MainPipe.scala 461:24]
  reg [21:0] task_s5_bits_tag; // @[MainPipe.scala 461:24]
  reg [5:0] task_s5_bits_off; // @[MainPipe.scala 461:24]
  reg [2:0] task_s5_bits_opcode; // @[MainPipe.scala 461:24]
  reg [2:0] task_s5_bits_param; // @[MainPipe.scala 461:24]
  reg [4:0] task_s5_bits_sourceId; // @[MainPipe.scala 461:24]
  reg  task_s5_bits_mshrTask; // @[MainPipe.scala 461:24]
  reg [7:0] task_s5_bits_mshrId; // @[MainPipe.scala 461:24]
  reg  task_s5_bits_dirty; // @[MainPipe.scala 461:24]
  reg [511:0] data_s5; // @[MainPipe.scala 463:20]
  reg  need_write_releaseBuf_s5; // @[MainPipe.scala 464:41]
  reg  need_write_refillBuf_s5; // @[MainPipe.scala 465:40]
  reg  isC_s5; // @[MainPipe.scala 466:31]
  reg  isD_s5; // @[MainPipe.scala 466:31]
  wire  _task_s5_valid_T_1 = task_s4_valid & ~req_drop_s4; // @[MainPipe.scala 467:34]
  wire  _isC_s5_T_2 = ~task_s4_bits_mshrTask; // @[MainPipe.scala 474:47]
  wire  _isC_s5_T_4 = task_s4_bits_opcode == 3'h5; // @[MainPipe.scala 474:93]
  wire  _isD_s5_T_6 = _isC_s5_T_4 | task_s4_bits_opcode == 3'h1; // @[MainPipe.scala 476:42]
  reg  c_d_valid_s5_REG; // @[MainPipe.scala 516:47]
  reg  c_d_valid_s5_REG_2; // @[Pipeline.scala 57:37]
  wire  c_d_valid_s5 = task_s5_valid & ~c_d_valid_s5_REG & ~c_d_valid_s5_REG_2; // @[MainPipe.scala 516:71]
  reg  c_d_valid_s5_REG_1; // @[Pipeline.scala 57:37]
  wire  _io_toReqBuf_0_T_4 = io_taskFromArb_s2_bits_set == io_fromReqArb_status_s1_sets_2 & ~(
    io_taskFromArb_s2_bits_mshrTask & ~io_taskFromArb_s2_bits_metaWen); // @[MainPipe.scala 537:22]
  wire  _io_toReqBuf_1_T_4 = task_s3_bits_set == io_fromReqArb_status_s1_sets_2 & ~(task_s3_bits_mshrTask & ~
    task_s3_bits_metaWen); // @[MainPipe.scala 537:22]
  wire  _io_toReqArb_blockC_s1_T_4 = io_taskFromArb_s2_bits_set == io_fromReqArb_status_s1_sets_0 & ~(
    io_taskFromArb_s2_bits_mshrTask & ~io_taskFromArb_s2_bits_metaWen); // @[MainPipe.scala 537:22]
  wire  _io_toReqArb_blockB_s1_T = io_taskFromArb_s2_bits_set == io_fromReqArb_status_s1_sets_1; // @[MainPipe.scala 542:11]
  wire  _io_toReqArb_blockB_s1_T_3 = task_s3_bits_set == io_fromReqArb_status_s1_sets_1; // @[MainPipe.scala 542:11]
  wire  _io_toReqArb_blockB_s1_T_5 = task_s3_valid & _io_toReqArb_blockB_s1_T_3; // @[MainPipe.scala 552:19]
  wire  _io_toReqArb_blockB_s1_T_6 = io_taskFromArb_s2_valid & _io_toReqArb_blockB_s1_T | _io_toReqArb_blockB_s1_T_5; // @[MainPipe.scala 551:43]
  wire  _io_toReqArb_blockB_s1_T_9 = task_s4_bits_set == io_fromReqArb_status_s1_sets_1 & task_s4_bits_tag ==
    io_fromReqArb_status_s1_tags_1; // @[MainPipe.scala 542:24]
  wire  _io_toReqArb_blockB_s1_T_10 = task_s4_valid & _io_toReqArb_blockB_s1_T_9; // @[MainPipe.scala 553:19]
  wire  _io_toReqArb_blockB_s1_T_11 = _io_toReqArb_blockB_s1_T_6 | _io_toReqArb_blockB_s1_T_10; // @[MainPipe.scala 552:43]
  wire  _io_toReqArb_blockB_s1_T_14 = task_s5_bits_set == io_fromReqArb_status_s1_sets_1 & task_s5_bits_tag ==
    io_fromReqArb_status_s1_tags_1; // @[MainPipe.scala 542:24]
  wire  _io_toReqArb_blockB_s1_T_15 = task_s5_valid & _io_toReqArb_blockB_s1_T_14; // @[MainPipe.scala 554:19]
  wire  _io_toReqArb_blockG_s1_T_4 = io_taskFromArb_s2_bits_set == io_fromReqArb_status_s1_sets_3 & ~(
    io_taskFromArb_s2_bits_mshrTask & ~io_taskFromArb_s2_bits_metaWen); // @[MainPipe.scala 537:22]
  wire  _io_status_vec_0_valid_T_2 = task_s3_bits_mshrTask ? _isD_s3_T_1 : 1'h1; // @[MainPipe.scala 561:49]
  wire  _GEN_102 = need_acquire_s3_a ? 1'h0 : 1'h1; // @[MainPipe.scala 583:29 584:29 195:37]
  wire  _GEN_103 = need_probe_s3_a ? 1'h0 : 1'h1; // @[MainPipe.scala 591:42 592:28 195:37]
  CustomL1Hint customL1Hint ( // @[MainPipe.scala 482:28]
    .io_s1_valid(customL1Hint_io_s1_valid),
    .io_s1_bits_channel(customL1Hint_io_s1_bits_channel),
    .io_s1_bits_opcode(customL1Hint_io_s1_bits_opcode),
    .io_s1_bits_sourceId(customL1Hint_io_s1_bits_sourceId),
    .io_s2_valid(customL1Hint_io_s2_valid),
    .io_s2_bits_channel(customL1Hint_io_s2_bits_channel),
    .io_s2_bits_opcode(customL1Hint_io_s2_bits_opcode),
    .io_s2_bits_sourceId(customL1Hint_io_s2_bits_sourceId),
    .io_s2_bits_mshrTask(customL1Hint_io_s2_bits_mshrTask),
    .io_s3_task_valid(customL1Hint_io_s3_task_valid),
    .io_s3_task_bits_channel(customL1Hint_io_s3_task_bits_channel),
    .io_s3_task_bits_opcode(customL1Hint_io_s3_task_bits_opcode),
    .io_s3_task_bits_sourceId(customL1Hint_io_s3_task_bits_sourceId),
    .io_s3_task_bits_mshrTask(customL1Hint_io_s3_task_bits_mshrTask),
    .io_s3_d(customL1Hint_io_s3_d),
    .io_s3_need_mshr(customL1Hint_io_s3_need_mshr),
    .io_s4_task_valid(customL1Hint_io_s4_task_valid),
    .io_s4_task_bits_channel(customL1Hint_io_s4_task_bits_channel),
    .io_s4_task_bits_opcode(customL1Hint_io_s4_task_bits_opcode),
    .io_s4_task_bits_sourceId(customL1Hint_io_s4_task_bits_sourceId),
    .io_s4_task_bits_mshrTask(customL1Hint_io_s4_task_bits_mshrTask),
    .io_s4_d(customL1Hint_io_s4_d),
    .io_s4_need_write_releaseBuf(customL1Hint_io_s4_need_write_releaseBuf),
    .io_s4_need_write_refillBuf(customL1Hint_io_s4_need_write_refillBuf),
    .io_s5_task_bits_channel(customL1Hint_io_s5_task_bits_channel),
    .io_s5_task_bits_opcode(customL1Hint_io_s5_task_bits_opcode),
    .io_s5_task_bits_sourceId(customL1Hint_io_s5_task_bits_sourceId),
    .io_s5_task_bits_mshrTask(customL1Hint_io_s5_task_bits_mshrTask),
    .io_s5_d(customL1Hint_io_s5_d),
    .io_globalCounter(customL1Hint_io_globalCounter),
    .io_grantBufferHint_valid(customL1Hint_io_grantBufferHint_valid),
    .io_grantBufferHint_bits_sourceId(customL1Hint_io_grantBufferHint_bits_sourceId),
    .io_l1Hint_valid(customL1Hint_io_l1Hint_valid),
    .io_l1Hint_bits_sourceId(customL1Hint_io_l1Hint_bits_sourceId)
  );
  Arbiter_39 c_arb ( // @[MainPipe.scala 615:21]
    .io_in_0_valid(c_arb_io_in_0_valid),
    .io_in_0_bits_task_set(c_arb_io_in_0_bits_task_set),
    .io_in_0_bits_task_tag(c_arb_io_in_0_bits_task_tag),
    .io_in_0_bits_task_off(c_arb_io_in_0_bits_task_off),
    .io_in_0_bits_task_opcode(c_arb_io_in_0_bits_task_opcode),
    .io_in_0_bits_task_param(c_arb_io_in_0_bits_task_param),
    .io_in_0_bits_task_sourceId(c_arb_io_in_0_bits_task_sourceId),
    .io_in_0_bits_task_mshrId(c_arb_io_in_0_bits_task_mshrId),
    .io_in_0_bits_task_dirty(c_arb_io_in_0_bits_task_dirty),
    .io_in_0_bits_data_data(c_arb_io_in_0_bits_data_data),
    .io_in_1_ready(c_arb_io_in_1_ready),
    .io_in_1_valid(c_arb_io_in_1_valid),
    .io_in_1_bits_task_set(c_arb_io_in_1_bits_task_set),
    .io_in_1_bits_task_tag(c_arb_io_in_1_bits_task_tag),
    .io_in_1_bits_task_off(c_arb_io_in_1_bits_task_off),
    .io_in_1_bits_task_opcode(c_arb_io_in_1_bits_task_opcode),
    .io_in_1_bits_task_param(c_arb_io_in_1_bits_task_param),
    .io_in_1_bits_task_sourceId(c_arb_io_in_1_bits_task_sourceId),
    .io_in_1_bits_task_mshrId(c_arb_io_in_1_bits_task_mshrId),
    .io_in_1_bits_task_dirty(c_arb_io_in_1_bits_task_dirty),
    .io_in_1_bits_data_data(c_arb_io_in_1_bits_data_data),
    .io_in_2_ready(c_arb_io_in_2_ready),
    .io_in_2_valid(c_arb_io_in_2_valid),
    .io_in_2_bits_task_set(c_arb_io_in_2_bits_task_set),
    .io_in_2_bits_task_tag(c_arb_io_in_2_bits_task_tag),
    .io_in_2_bits_task_off(c_arb_io_in_2_bits_task_off),
    .io_in_2_bits_task_opcode(c_arb_io_in_2_bits_task_opcode),
    .io_in_2_bits_task_param(c_arb_io_in_2_bits_task_param),
    .io_in_2_bits_task_sourceId(c_arb_io_in_2_bits_task_sourceId),
    .io_in_2_bits_task_mshrId(c_arb_io_in_2_bits_task_mshrId),
    .io_in_2_bits_task_dirty(c_arb_io_in_2_bits_task_dirty),
    .io_in_2_bits_data_data(c_arb_io_in_2_bits_data_data),
    .io_out_ready(c_arb_io_out_ready),
    .io_out_valid(c_arb_io_out_valid),
    .io_out_bits_task_set(c_arb_io_out_bits_task_set),
    .io_out_bits_task_tag(c_arb_io_out_bits_task_tag),
    .io_out_bits_task_off(c_arb_io_out_bits_task_off),
    .io_out_bits_task_opcode(c_arb_io_out_bits_task_opcode),
    .io_out_bits_task_param(c_arb_io_out_bits_task_param),
    .io_out_bits_task_sourceId(c_arb_io_out_bits_task_sourceId),
    .io_out_bits_task_mshrId(c_arb_io_out_bits_task_mshrId),
    .io_out_bits_task_dirty(c_arb_io_out_bits_task_dirty),
    .io_out_bits_data_data(c_arb_io_out_bits_data_data)
  );
  Arbiter_39 d_arb ( // @[MainPipe.scala 616:21]
    .io_in_0_valid(d_arb_io_in_0_valid),
    .io_in_0_bits_task_set(d_arb_io_in_0_bits_task_set),
    .io_in_0_bits_task_tag(d_arb_io_in_0_bits_task_tag),
    .io_in_0_bits_task_off(d_arb_io_in_0_bits_task_off),
    .io_in_0_bits_task_opcode(d_arb_io_in_0_bits_task_opcode),
    .io_in_0_bits_task_param(d_arb_io_in_0_bits_task_param),
    .io_in_0_bits_task_sourceId(d_arb_io_in_0_bits_task_sourceId),
    .io_in_0_bits_task_mshrId(d_arb_io_in_0_bits_task_mshrId),
    .io_in_0_bits_task_dirty(d_arb_io_in_0_bits_task_dirty),
    .io_in_0_bits_data_data(d_arb_io_in_0_bits_data_data),
    .io_in_1_ready(d_arb_io_in_1_ready),
    .io_in_1_valid(d_arb_io_in_1_valid),
    .io_in_1_bits_task_set(d_arb_io_in_1_bits_task_set),
    .io_in_1_bits_task_tag(d_arb_io_in_1_bits_task_tag),
    .io_in_1_bits_task_off(d_arb_io_in_1_bits_task_off),
    .io_in_1_bits_task_opcode(d_arb_io_in_1_bits_task_opcode),
    .io_in_1_bits_task_param(d_arb_io_in_1_bits_task_param),
    .io_in_1_bits_task_sourceId(d_arb_io_in_1_bits_task_sourceId),
    .io_in_1_bits_task_mshrId(d_arb_io_in_1_bits_task_mshrId),
    .io_in_1_bits_task_dirty(d_arb_io_in_1_bits_task_dirty),
    .io_in_1_bits_data_data(d_arb_io_in_1_bits_data_data),
    .io_in_2_ready(d_arb_io_in_2_ready),
    .io_in_2_valid(d_arb_io_in_2_valid),
    .io_in_2_bits_task_set(d_arb_io_in_2_bits_task_set),
    .io_in_2_bits_task_tag(d_arb_io_in_2_bits_task_tag),
    .io_in_2_bits_task_off(d_arb_io_in_2_bits_task_off),
    .io_in_2_bits_task_opcode(d_arb_io_in_2_bits_task_opcode),
    .io_in_2_bits_task_param(d_arb_io_in_2_bits_task_param),
    .io_in_2_bits_task_sourceId(d_arb_io_in_2_bits_task_sourceId),
    .io_in_2_bits_task_mshrId(d_arb_io_in_2_bits_task_mshrId),
    .io_in_2_bits_task_dirty(d_arb_io_in_2_bits_task_dirty),
    .io_in_2_bits_data_data(d_arb_io_in_2_bits_data_data),
    .io_out_ready(d_arb_io_out_ready),
    .io_out_valid(d_arb_io_out_valid),
    .io_out_bits_task_set(d_arb_io_out_bits_task_set),
    .io_out_bits_task_tag(d_arb_io_out_bits_task_tag),
    .io_out_bits_task_off(d_arb_io_out_bits_task_off),
    .io_out_bits_task_opcode(d_arb_io_out_bits_task_opcode),
    .io_out_bits_task_param(d_arb_io_out_bits_task_param),
    .io_out_bits_task_sourceId(d_arb_io_out_bits_task_sourceId),
    .io_out_bits_task_mshrId(d_arb_io_out_bits_task_mshrId),
    .io_out_bits_task_dirty(d_arb_io_out_bits_task_dirty),
    .io_out_bits_data_data(d_arb_io_out_bits_data_data)
  );
  assign io_toReqArb_blockG_s1 = io_taskFromArb_s2_valid & _io_toReqArb_blockG_s1_T_4; // @[MainPipe.scala 558:42]
  assign io_toReqArb_blockA_s1 = io_toReqBuf_0 | io_toReqBuf_1; // @[MainPipe.scala 556:43]
  assign io_toReqArb_blockB_s1 = _io_toReqArb_blockB_s1_T_11 | _io_toReqArb_blockB_s1_T_15; // @[MainPipe.scala 553:55]
  assign io_toReqArb_blockC_s1 = io_taskFromArb_s2_valid & _io_toReqArb_blockC_s1_T_4; // @[MainPipe.scala 548:42]
  assign io_toReqBuf_0 = io_taskFromArb_s2_valid & _io_toReqBuf_0_T_4; // @[MainPipe.scala 545:35]
  assign io_toReqBuf_1 = task_s3_valid & _io_toReqBuf_1_T_4; // @[MainPipe.scala 546:35]
  assign io_status_vec_0_valid = task_s3_valid & _io_status_vec_0_valid_T_2; // @[MainPipe.scala 561:43]
  assign io_status_vec_0_bits_channel = task_s3_bits_channel; // @[MainPipe.scala 569:33]
  assign io_status_vec_1_valid = task_s4_valid & isD_s4 & _req_drop_s4_T & _req_drop_s4_T_1; // @[MainPipe.scala 570:89]
  assign io_status_vec_1_bits_channel = task_s4_bits_channel; // @[MainPipe.scala 571:33]
  assign io_status_vec_2_valid = c_d_valid_s5 & isD_s5; // @[MainPipe.scala 518:30]
  assign io_status_vec_2_bits_channel = task_s5_bits_channel; // @[MainPipe.scala 573:33]
  assign io_toMSHRCtl_mshr_alloc_s3_valid = task_s3_valid & sink_req_s3 & need_mshr_s3; // @[MainPipe.scala 196:69]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_hit = io_dirResp_s3_hit; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_tag = io_dirResp_s3_tag; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_set = io_dirResp_s3_set; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_way = io_dirResp_s3_way; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_dirty = io_dirResp_s3_meta_dirty; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_state = io_dirResp_s3_meta_state; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_clients = io_dirResp_s3_meta_clients; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_accessed = io_dirResp_s3_meta_accessed; // @[MainPipe.scala 197:45]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_s_acquire = task_s3_bits_channel[0] ? _GEN_102 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_s_rprobe = task_s3_bits_channel[0] ? _GEN_103 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_s_pprobe = task_s3_bits_channel[1] ? 1'h0 : 1'h1; // @[MainPipe.scala 603:22 605:26 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_s_probeack = task_s3_bits_channel[1] ? 1'h0 : 1'h1; // @[MainPipe.scala 603:22 605:26 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_s_refill = task_s3_bits_channel[0] ? 1'h0 : 1'h1; // @[MainPipe.scala 578:22 579:26 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeackfirst = task_s3_bits_channel[0] ? _GEN_103 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeacklast = task_s3_bits_channel[0] ? _GEN_103 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeackfirst = task_s3_bits_channel[1] ? 1'h0 : 1'h1; // @[MainPipe.scala 603:22 605:26 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeacklast = task_s3_bits_channel[1] ? 1'h0 : 1'h1; // @[MainPipe.scala 603:22 605:26 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeack = task_s3_bits_channel[1] ? 1'h0 : 1'h1; // @[MainPipe.scala 603:22 605:26 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantfirst = task_s3_bits_channel[0] ? _GEN_102 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantlast = task_s3_bits_channel[0] ? _GEN_102 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrant = task_s3_bits_channel[0] ? _GEN_102 : 1'h1; // @[MainPipe.scala 578:22 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantack = task_s3_bits_channel[0] ? req_prefetch_s3 | req_get_s3 : 1'h1
    ; // @[MainPipe.scala 578:22 580:28 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_state_wreplResp = task_s3_bits_channel[0] ? io_dirResp_s3_hit : 1'h1; // @[MainPipe.scala 578:22 581:28 195:37]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_channel = task_s3_bits_channel; // @[MainPipe.scala 201:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_set = task_s3_bits_set; // @[MainPipe.scala 202:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_tag = task_s3_bits_tag; // @[MainPipe.scala 203:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_off = task_s3_bits_off; // @[MainPipe.scala 204:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_opcode = task_s3_bits_opcode; // @[MainPipe.scala 207:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_param = task_s3_bits_param; // @[MainPipe.scala 208:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_size = task_s3_bits_size; // @[MainPipe.scala 209:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_sourceId = task_s3_bits_sourceId; // @[MainPipe.scala 210:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_needProbeAckData = task_s3_bits_needProbeAckData; // @[MainPipe.scala 212:28]
  assign io_toMSHRCtl_mshr_alloc_s3_bits_task_reqSource = task_s3_bits_reqSource; // @[MainPipe.scala 227:28]
  assign io_bufRead_valid = io_taskFromArb_s2_valid & io_taskFromArb_s2_bits_channel[2] & hasData_s2; // @[MainPipe.scala 126:59]
  assign io_bufRead_bits_bufIdx = io_taskFromArb_s2_bits_bufIdx; // @[MainPipe.scala 127:26]
  assign io_toDS_req_s3_valid = task_s3_valid & (ren | wen); // @[MainPipe.scala 284:44]
  assign io_toDS_req_s3_bits_way = mshr_refill_s3 & task_s3_bits_replTask ? io_replResp_bits_way :
    _io_toDS_req_s3_bits_way_T_1; // @[MainPipe.scala 285:33]
  assign io_toDS_req_s3_bits_set = task_s3_bits_mshrTask ? task_s3_bits_set : io_dirResp_s3_set; // @[MainPipe.scala 287:33]
  assign io_toDS_req_s3_bits_wen = wen_c | wen_mshr; // @[MainPipe.scala 282:21]
  assign io_toDS_wdata_s3_data = sink_req_s3 ? c_releaseData_s3 : _io_toDS_wdata_s3_data_T_1; // @[MainPipe.scala 289:31]
  assign io_toSourceC_valid = c_arb_io_out_valid; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_set = c_arb_io_out_bits_task_set; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_tag = c_arb_io_out_bits_task_tag; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_off = c_arb_io_out_bits_task_off; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_opcode = c_arb_io_out_bits_task_opcode; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_param = c_arb_io_out_bits_task_param; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_mshrId = c_arb_io_out_bits_task_mshrId; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_task_dirty = c_arb_io_out_bits_task_dirty; // @[MainPipe.scala 620:16]
  assign io_toSourceC_bits_data_data = c_arb_io_out_bits_data_data; // @[MainPipe.scala 620:16]
  assign io_toSourceD_valid = d_arb_io_out_valid; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_task_set = d_arb_io_out_bits_task_set; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_task_tag = d_arb_io_out_bits_task_tag; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_task_opcode = d_arb_io_out_bits_task_opcode; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_task_param = d_arb_io_out_bits_task_param; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_task_sourceId = d_arb_io_out_bits_task_sourceId; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_task_mshrId = d_arb_io_out_bits_task_mshrId; // @[MainPipe.scala 621:16]
  assign io_toSourceD_bits_data_data = d_arb_io_out_bits_data_data; // @[MainPipe.scala 621:16]
  assign io_metaWReq_valid = _T | task_s3_valid & (metaW_valid_s3_a | metaW_valid_s3_b | metaW_valid_s3_c |
    metaW_valid_s3_mshr); // @[MainPipe.scala 355:42]
  assign io_metaWReq_bits_set = resetFinish ? task_s3_bits_set : resetIdx; // @[MainPipe.scala 356:32]
  assign io_metaWReq_bits_wayOH = resetFinish ? _io_metaWReq_bits_wayOH_T : 8'hff; // @[MainPipe.scala 357:32]
  assign io_metaWReq_bits_wmeta_dirty = resetFinish & _io_metaWReq_bits_wmeta_T_5_dirty; // @[MainPipe.scala 358:32]
  assign io_metaWReq_bits_wmeta_state = resetFinish ? _io_metaWReq_bits_wmeta_T_5_state : 2'h0; // @[MainPipe.scala 358:32]
  assign io_metaWReq_bits_wmeta_clients = resetFinish & _io_metaWReq_bits_wmeta_T_5_clients; // @[MainPipe.scala 358:32]
  assign io_metaWReq_bits_wmeta_accessed = resetFinish & _io_metaWReq_bits_wmeta_T_5_accessed; // @[MainPipe.scala 358:32]
  assign io_tagWReq_valid = task_s3_valid & task_s3_bits_tagWen & mshr_refill_s3 & _need_data_mshr_repl_T_1; // @[MainPipe.scala 367:76]
  assign io_tagWReq_bits_set = task_s3_bits_set; // @[MainPipe.scala 368:24]
  assign io_tagWReq_bits_way = _io_toDS_req_s3_bits_way_T ? io_replResp_bits_way : task_s3_bits_way; // @[MainPipe.scala 369:30]
  assign io_tagWReq_bits_wtag = task_s3_bits_tag; // @[MainPipe.scala 370:24]
  assign io_releaseBufWrite_valid = task_s5_valid & need_write_releaseBuf_s5; // @[MainPipe.scala 504:50]
  assign io_releaseBufWrite_data_data = io_toDS_rdata_s5_data; // @[MainPipe.scala 506:33]
  assign io_releaseBufWrite_id = task_s5_bits_mshrId; // @[MainPipe.scala 507:33]
  assign io_refillBufWrite_valid = task_s5_valid & need_write_refillBuf_s5; // @[MainPipe.scala 510:48]
  assign io_refillBufWrite_data_data = io_toDS_rdata_s5_data; // @[MainPipe.scala 512:31]
  assign io_refillBufWrite_id = task_s5_bits_mshrId; // @[MainPipe.scala 513:31]
  assign io_nestedwb_set = task_s3_bits_set; // @[MainPipe.scala 398:19]
  assign io_nestedwb_tag = task_s3_bits_tag; // @[MainPipe.scala 399:19]
  assign io_nestedwb_c_set_dirty = task_s3_valid & task_s3_bits_channel[2] & _req_acquire_s3_T_1; // @[MainPipe.scala 402:66]
  assign io_nestedwbData_data = c_releaseData_s3; // @[MainPipe.scala 404:47]
  assign io_l1Hint_valid = customL1Hint_io_l1Hint_valid; // @[MainPipe.scala 502:26]
  assign io_l1Hint_bits_sourceId = customL1Hint_io_l1Hint_bits_sourceId; // @[MainPipe.scala 502:26]
  assign customL1Hint_io_s1_valid = io_taskInfo_s1_valid; // @[MainPipe.scala 484:22]
  assign customL1Hint_io_s1_bits_channel = io_taskInfo_s1_bits_channel; // @[MainPipe.scala 484:22]
  assign customL1Hint_io_s1_bits_opcode = io_taskInfo_s1_bits_opcode; // @[MainPipe.scala 484:22]
  assign customL1Hint_io_s1_bits_sourceId = io_taskInfo_s1_bits_sourceId; // @[MainPipe.scala 484:22]
  assign customL1Hint_io_s2_valid = io_taskFromArb_s2_valid; // @[MainPipe.scala 485:22]
  assign customL1Hint_io_s2_bits_channel = io_taskFromArb_s2_bits_channel; // @[MainPipe.scala 485:22]
  assign customL1Hint_io_s2_bits_opcode = io_taskFromArb_s2_bits_opcode; // @[MainPipe.scala 485:22]
  assign customL1Hint_io_s2_bits_sourceId = io_taskFromArb_s2_bits_sourceId; // @[MainPipe.scala 485:22]
  assign customL1Hint_io_s2_bits_mshrTask = io_taskFromArb_s2_bits_mshrTask; // @[MainPipe.scala 485:22]
  assign customL1Hint_io_s3_task_valid = task_s3_valid; // @[MainPipe.scala 487:32]
  assign customL1Hint_io_s3_task_bits_channel = task_s3_bits_channel; // @[MainPipe.scala 487:32]
  assign customL1Hint_io_s3_task_bits_opcode = task_s3_bits_opcode; // @[MainPipe.scala 487:32]
  assign customL1Hint_io_s3_task_bits_sourceId = task_s3_bits_sourceId; // @[MainPipe.scala 487:32]
  assign customL1Hint_io_s3_task_bits_mshrTask = task_s3_bits_mshrTask; // @[MainPipe.scala 487:32]
  assign customL1Hint_io_s3_d = task_s3_valid & isD_s3; // @[MainPipe.scala 391:31]
  assign customL1Hint_io_s3_need_mshr = need_mshr_s3_a | need_mshr_s3_b; // @[MainPipe.scala 190:37]
  assign customL1Hint_io_s4_task_valid = task_s4_valid; // @[MainPipe.scala 491:44]
  assign customL1Hint_io_s4_task_bits_channel = task_s4_bits_channel; // @[MainPipe.scala 491:44]
  assign customL1Hint_io_s4_task_bits_opcode = task_s4_bits_opcode; // @[MainPipe.scala 491:44]
  assign customL1Hint_io_s4_task_bits_sourceId = task_s4_bits_sourceId; // @[MainPipe.scala 491:44]
  assign customL1Hint_io_s4_task_bits_mshrTask = task_s4_bits_mshrTask; // @[MainPipe.scala 491:44]
  assign customL1Hint_io_s4_d = c_d_valid_s4 & isD_s4; // @[MainPipe.scala 454:30]
  assign customL1Hint_io_s4_need_write_releaseBuf = need_write_releaseBuf_s4; // @[MainPipe.scala 493:44]
  assign customL1Hint_io_s4_need_write_refillBuf = need_write_refillBuf_s4; // @[MainPipe.scala 494:44]
  assign customL1Hint_io_s5_task_bits_channel = task_s5_bits_channel; // @[MainPipe.scala 496:32]
  assign customL1Hint_io_s5_task_bits_opcode = task_s5_bits_opcode; // @[MainPipe.scala 496:32]
  assign customL1Hint_io_s5_task_bits_sourceId = task_s5_bits_sourceId; // @[MainPipe.scala 496:32]
  assign customL1Hint_io_s5_task_bits_mshrTask = task_s5_bits_mshrTask; // @[MainPipe.scala 496:32]
  assign customL1Hint_io_s5_d = c_d_valid_s5 & isD_s5; // @[MainPipe.scala 518:30]
  assign customL1Hint_io_globalCounter = io_globalCounter; // @[MainPipe.scala 499:35]
  assign customL1Hint_io_grantBufferHint_valid = io_grantBufferHint_valid; // @[MainPipe.scala 500:35]
  assign customL1Hint_io_grantBufferHint_bits_sourceId = io_grantBufferHint_bits_sourceId; // @[MainPipe.scala 500:35]
  assign c_arb_io_in_0_valid = c_d_valid_s5 & isC_s5; // @[MainPipe.scala 517:30]
  assign c_arb_io_in_0_bits_task_set = task_s5_bits_set; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_tag = task_s5_bits_tag; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_off = task_s5_bits_off; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_opcode = task_s5_bits_opcode; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_param = task_s5_bits_param; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_sourceId = task_s5_bits_sourceId; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_mshrId = task_s5_bits_mshrId; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_task_dirty = task_s5_bits_dirty; // @[MainPipe.scala 118:30 519:18]
  assign c_arb_io_in_0_bits_data_data = ~task_s5_bits_mshrTask ? io_toDS_rdata_s5_data : data_s5; // @[MainPipe.scala 479:24]
  assign c_arb_io_in_1_valid = c_d_valid_s4 & isC_s4; // @[MainPipe.scala 453:30]
  assign c_arb_io_in_1_bits_task_set = task_s4_bits_set; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_tag = task_s4_bits_tag; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_off = task_s4_bits_off; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_opcode = task_s4_bits_opcode; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_param = task_s4_bits_param; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_sourceId = task_s4_bits_sourceId; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_mshrId = task_s4_bits_mshrId; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_task_dirty = task_s4_bits_dirty; // @[MainPipe.scala 118:30 455:18]
  assign c_arb_io_in_1_bits_data_data = data_s4; // @[MainPipe.scala 118:30 456:23]
  assign c_arb_io_in_2_valid = task_s3_valid & isC_s3; // @[MainPipe.scala 390:31]
  assign c_arb_io_in_2_bits_task_set = task_s3_bits_set; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_tag = task_s3_bits_tag; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_off = task_s3_bits_off; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_opcode = sink_resp_s3_valid ? sink_resp_s3_bits_opcode : task_s3_bits_opcode; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_param = sink_resp_s3_valid ? sink_resp_s3_bits_param : task_s3_bits_param; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_sourceId = task_s3_bits_sourceId; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_mshrId = sink_resp_s3_valid ? sink_resp_s3_bits_mshrId : task_s3_bits_mshrId; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_task_dirty = task_s3_bits_dirty; // @[MainPipe.scala 264:23]
  assign c_arb_io_in_2_bits_data_data = io_releaseBufResp_s3_valid ? io_releaseBufResp_s3_bits_data :
    io_refillBufResp_s3_bits_data; // @[MainPipe.scala 267:20]
  assign c_arb_io_out_ready = io_toSourceC_ready; // @[MainPipe.scala 620:16]
  assign d_arb_io_in_0_valid = c_d_valid_s5 & isD_s5; // @[MainPipe.scala 518:30]
  assign d_arb_io_in_0_bits_task_set = task_s5_bits_set; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_tag = task_s5_bits_tag; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_off = task_s5_bits_off; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_opcode = task_s5_bits_opcode; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_param = task_s5_bits_param; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_sourceId = task_s5_bits_sourceId; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_mshrId = task_s5_bits_mshrId; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_task_dirty = task_s5_bits_dirty; // @[MainPipe.scala 119:30 521:18]
  assign d_arb_io_in_0_bits_data_data = ~task_s5_bits_mshrTask ? io_toDS_rdata_s5_data : data_s5; // @[MainPipe.scala 479:24]
  assign d_arb_io_in_1_valid = c_d_valid_s4 & isD_s4; // @[MainPipe.scala 454:30]
  assign d_arb_io_in_1_bits_task_set = task_s4_bits_set; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_tag = task_s4_bits_tag; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_off = task_s4_bits_off; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_opcode = task_s4_bits_opcode; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_param = task_s4_bits_param; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_sourceId = task_s4_bits_sourceId; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_mshrId = task_s4_bits_mshrId; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_task_dirty = task_s4_bits_dirty; // @[MainPipe.scala 119:30 457:18]
  assign d_arb_io_in_1_bits_data_data = data_s4; // @[MainPipe.scala 119:30 458:23]
  assign d_arb_io_in_2_valid = task_s3_valid & isD_s3; // @[MainPipe.scala 391:31]
  assign d_arb_io_in_2_bits_task_set = task_s3_bits_set; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_tag = task_s3_bits_tag; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_off = task_s3_bits_off; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_opcode = sink_resp_s3_valid ? sink_resp_s3_bits_opcode : task_s3_bits_opcode; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_param = sink_resp_s3_valid ? sink_resp_s3_bits_param : task_s3_bits_param; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_sourceId = task_s3_bits_sourceId; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_mshrId = sink_resp_s3_valid ? sink_resp_s3_bits_mshrId : task_s3_bits_mshrId; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_task_dirty = task_s3_bits_dirty; // @[MainPipe.scala 264:23]
  assign d_arb_io_in_2_bits_data_data = io_releaseBufResp_s3_valid ? io_releaseBufResp_s3_bits_data :
    io_refillBufResp_s3_bits_data; // @[MainPipe.scala 267:20]
  assign d_arb_io_out_ready = 1'h1; // @[MainPipe.scala 621:16]
  always @(posedge clock) begin
    c_releaseData_s3 <= {io_bufResp_data_1,io_bufResp_data_0}; // @[MainPipe.scala 268:50]
    if (_task_s4_valid_T_1) begin // @[MainPipe.scala 427:40]
      if (io_releaseBufResp_s3_valid) begin // @[MainPipe.scala 267:20]
        data_s4 <= io_releaseBufResp_s3_bits_data;
      end else begin
        data_s4 <= io_refillBufResp_s3_bits_data;
      end
    end
    if (_task_s5_valid_T_1) begin // @[MainPipe.scala 468:40]
      data_s5 <= data_s4; // @[MainPipe.scala 471:13]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 114:26]
      resetFinish <= 1'h0; // @[MainPipe.scala 115:17]
    end else begin
      resetFinish <= resetIdx == 7'h0 | resetFinish; // @[MainPipe.scala 108:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 111:22]
      resetIdx <= 7'h7f; // @[MainPipe.scala 112:14]
    end else if (~resetFinish) begin // @[MainPipe.scala 109:25]
      resetIdx <= _resetIdx_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 130:24]
      task_s3_valid <= 1'h0; // @[MainPipe.scala 130:24]
    end else begin
      task_s3_valid <= io_taskFromArb_s2_valid; // @[MainPipe.scala 131:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_channel <= 3'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_channel <= io_taskFromArb_s2_bits_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_set <= 7'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_set <= io_taskFromArb_s2_bits_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_tag <= 22'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_tag <= io_taskFromArb_s2_bits_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_off <= 6'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_off <= io_taskFromArb_s2_bits_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_opcode <= 3'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_opcode <= io_taskFromArb_s2_bits_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_param <= 3'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_param <= io_taskFromArb_s2_bits_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_size <= 3'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_size <= io_taskFromArb_s2_bits_size;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_sourceId <= 5'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_sourceId <= io_taskFromArb_s2_bits_sourceId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_needProbeAckData <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_needProbeAckData <= io_taskFromArb_s2_bits_needProbeAckData;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_mshrTask <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_mshrTask <= io_taskFromArb_s2_bits_mshrTask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_mshrId <= 8'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_mshrId <= io_taskFromArb_s2_bits_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_useProbeData <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_useProbeData <= io_taskFromArb_s2_bits_useProbeData;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_dirty <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_dirty <= io_taskFromArb_s2_bits_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_way <= 3'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_way <= io_taskFromArb_s2_bits_way;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_meta_dirty <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_meta_dirty <= io_taskFromArb_s2_bits_meta_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_meta_state <= 2'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_meta_state <= io_taskFromArb_s2_bits_meta_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_meta_clients <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_meta_clients <= io_taskFromArb_s2_bits_meta_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_meta_accessed <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_meta_accessed <= io_taskFromArb_s2_bits_meta_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_metaWen <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_metaWen <= io_taskFromArb_s2_bits_metaWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_tagWen <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_tagWen <= io_taskFromArb_s2_bits_tagWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_dsWen <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_dsWen <= io_taskFromArb_s2_bits_dsWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_replTask <= 1'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_replTask <= io_taskFromArb_s2_bits_replTask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 132:23]
      task_s3_bits_reqSource <= 4'h0; // @[MainPipe.scala 133:18]
    end else if (io_taskFromArb_s2_valid) begin // @[MainPipe.scala 130:24]
      task_s3_bits_reqSource <= io_taskFromArb_s2_bits_reqSource;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 426:34]
      task_s4_valid <= 1'h0;
    end else begin
      task_s4_valid <= task_s3_valid & ~req_drop_s3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_channel <= 3'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_channel <= task_s3_bits_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_set <= 7'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_set <= task_s3_bits_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_tag <= 22'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_tag <= task_s3_bits_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_off <= 6'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_off <= task_s3_bits_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_opcode <= 3'h0; // @[MainPipe.scala 237:22 264:23 238:{30,30} 244:28 245:30 259:30]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      if (sink_resp_s3_valid) begin
        if (task_s3_bits_channel[0]) begin
          if (3'h7 == task_s3_bits_opcode) begin
            task_s4_bits_opcode <= 3'h4;
          end else begin
            task_s4_bits_opcode <= _GEN_33;
          end
        end else if (task_s3_bits_channel[1]) begin
          task_s4_bits_opcode <= _sink_resp_s3_bits_opcode_T_4;
        end else begin
          task_s4_bits_opcode <= 3'h6;
        end
      end else begin
        task_s4_bits_opcode <= task_s3_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_param <= 3'h0; // @[MainPipe.scala 237:22 264:23 239:30 244:28 250:30 260:30]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      if (sink_resp_s3_valid) begin
        if (task_s3_bits_channel[0]) begin
          task_s4_bits_param <= {{1'd0}, _sink_resp_s3_bits_param_T_4};
        end else if (task_s3_bits_channel[1]) begin
          task_s4_bits_param <= _sink_resp_s3_bits_param_T_19;
        end else begin
          task_s4_bits_param <= 3'h0;
        end
      end else begin
        task_s4_bits_param <= task_s3_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_sourceId <= 5'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_sourceId <= task_s3_bits_sourceId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_mshrTask <= 1'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_mshrTask <= task_s3_bits_mshrTask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_mshrId <= 8'h0; // @[MainPipe.scala 264:23 429:31]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      if (_req_drop_s3_T_4) begin
        task_s4_bits_mshrId <= io_fromMSHRCtl_mshr_alloc_ptr;
      end else if (sink_resp_s3_valid) begin
        task_s4_bits_mshrId <= sink_resp_s3_bits_mshrId;
      end else begin
        task_s4_bits_mshrId <= task_s3_bits_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      task_s4_bits_dirty <= 1'h0; // @[MainPipe.scala 428:18]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 419:24]
      task_s4_bits_dirty <= task_s3_bits_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      need_write_releaseBuf_s4 <= 1'h0; // @[MainPipe.scala 433:30]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 423:41]
      need_write_releaseBuf_s4 <= need_write_releaseBuf;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      need_write_refillBuf_s4 <= 1'h0; // @[MainPipe.scala 434:29]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 424:40]
      need_write_refillBuf_s4 <= need_write_refillBuf;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      isC_s4 <= 1'h0; // @[MainPipe.scala 380:19]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 425:31]
      if (task_s3_bits_mshrTask) begin
        isC_s4 <= _isC_s3_T;
      end else begin
        isC_s4 <= _isC_s3_T_6;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 427:40]
      isD_s4 <= 1'h0; // @[MainPipe.scala 385:19]
    end else if (_task_s4_valid_T_1) begin // @[MainPipe.scala 425:31]
      if (task_s3_bits_mshrTask) begin
        isD_s4 <= _isD_s3_T_1;
      end else begin
        isD_s4 <= _isD_s3_T_10;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 374:32]
      c_d_valid_s4_REG <= 1'h0;
    end else begin
      c_d_valid_s4_REG <= _chnl_fire_s3_T | _chnl_fire_s3_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 467:34]
      task_s5_valid <= 1'h0;
    end else begin
      task_s5_valid <= task_s4_valid & ~req_drop_s4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_channel <= 3'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_channel <= task_s4_bits_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_set <= 7'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_set <= task_s4_bits_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_tag <= 22'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_tag <= task_s4_bits_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_off <= 6'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_off <= task_s4_bits_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_opcode <= 3'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_opcode <= task_s4_bits_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_param <= 3'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_param <= task_s4_bits_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_sourceId <= 5'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_sourceId <= task_s4_bits_sourceId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_mshrTask <= 1'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_mshrTask <= task_s4_bits_mshrTask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_mshrId <= 8'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_mshrId <= task_s4_bits_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      task_s5_bits_dirty <= 1'h0; // @[MainPipe.scala 469:18]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 461:24]
      task_s5_bits_dirty <= task_s4_bits_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      need_write_releaseBuf_s5 <= 1'h0; // @[MainPipe.scala 472:30]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 464:41]
      need_write_releaseBuf_s5 <= need_write_releaseBuf_s4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      need_write_refillBuf_s5 <= 1'h0; // @[MainPipe.scala 473:29]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 465:40]
      need_write_refillBuf_s5 <= need_write_refillBuf_s4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      isC_s5 <= 1'h0; // @[MainPipe.scala 474:12]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 466:31]
      isC_s5 <= isC_s4 | task_s4_bits_channel[1] & ~task_s4_bits_mshrTask & task_s4_bits_opcode == 3'h5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 468:40]
      isD_s5 <= 1'h0; // @[MainPipe.scala 475:12]
    end else if (_task_s5_valid_T_1) begin // @[MainPipe.scala 466:31]
      isD_s5 <= isD_s4 | task_s4_bits_channel[0] & _isC_s5_T_2 & _isD_s5_T_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 449:34]
      c_d_valid_s5_REG <= 1'h0;
    end else begin
      c_d_valid_s5_REG <= _chnl_fire_s4_T | _chnl_fire_s4_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Pipeline.scala 57:37]
      c_d_valid_s5_REG_2 <= 1'h0; // @[Pipeline.scala 57:37]
    end else begin
      c_d_valid_s5_REG_2 <= c_d_valid_s5_REG_1; // @[Pipeline.scala 57:37]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 374:32]
      c_d_valid_s5_REG_1 <= 1'h0;
    end else begin
      c_d_valid_s5_REG_1 <= _chnl_fire_s3_T | _chnl_fire_s3_T_1;
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
  resetFinish = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetIdx = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  task_s3_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  task_s3_bits_channel = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  task_s3_bits_set = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  task_s3_bits_tag = _RAND_5[21:0];
  _RAND_6 = {1{`RANDOM}};
  task_s3_bits_off = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  task_s3_bits_opcode = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  task_s3_bits_param = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  task_s3_bits_size = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  task_s3_bits_sourceId = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  task_s3_bits_needProbeAckData = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  task_s3_bits_mshrTask = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  task_s3_bits_mshrId = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  task_s3_bits_useProbeData = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  task_s3_bits_dirty = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  task_s3_bits_way = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  task_s3_bits_meta_dirty = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  task_s3_bits_meta_state = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  task_s3_bits_meta_clients = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  task_s3_bits_meta_accessed = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  task_s3_bits_metaWen = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  task_s3_bits_tagWen = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  task_s3_bits_dsWen = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  task_s3_bits_replTask = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  task_s3_bits_reqSource = _RAND_25[3:0];
  _RAND_26 = {16{`RANDOM}};
  c_releaseData_s3 = _RAND_26[511:0];
  _RAND_27 = {1{`RANDOM}};
  task_s4_valid = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  task_s4_bits_channel = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  task_s4_bits_set = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  task_s4_bits_tag = _RAND_30[21:0];
  _RAND_31 = {1{`RANDOM}};
  task_s4_bits_off = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  task_s4_bits_opcode = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  task_s4_bits_param = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  task_s4_bits_sourceId = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  task_s4_bits_mshrTask = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  task_s4_bits_mshrId = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  task_s4_bits_dirty = _RAND_37[0:0];
  _RAND_38 = {16{`RANDOM}};
  data_s4 = _RAND_38[511:0];
  _RAND_39 = {1{`RANDOM}};
  need_write_releaseBuf_s4 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  need_write_refillBuf_s4 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  isC_s4 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  isD_s4 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  c_d_valid_s4_REG = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  task_s5_valid = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  task_s5_bits_channel = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  task_s5_bits_set = _RAND_46[6:0];
  _RAND_47 = {1{`RANDOM}};
  task_s5_bits_tag = _RAND_47[21:0];
  _RAND_48 = {1{`RANDOM}};
  task_s5_bits_off = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  task_s5_bits_opcode = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  task_s5_bits_param = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  task_s5_bits_sourceId = _RAND_51[4:0];
  _RAND_52 = {1{`RANDOM}};
  task_s5_bits_mshrTask = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  task_s5_bits_mshrId = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  task_s5_bits_dirty = _RAND_54[0:0];
  _RAND_55 = {16{`RANDOM}};
  data_s5 = _RAND_55[511:0];
  _RAND_56 = {1{`RANDOM}};
  need_write_releaseBuf_s5 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  need_write_refillBuf_s5 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  isC_s5 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  isD_s5 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  c_d_valid_s5_REG = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  c_d_valid_s5_REG_2 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  c_d_valid_s5_REG_1 = _RAND_62[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetFinish = 1'h0;
  end
  if (reset) begin
    resetIdx = 7'h7f;
  end
  if (reset) begin
    task_s3_valid = 1'h0;
  end
  if (reset) begin
    task_s3_bits_channel = 3'h0;
  end
  if (reset) begin
    task_s3_bits_set = 7'h0;
  end
  if (reset) begin
    task_s3_bits_tag = 22'h0;
  end
  if (reset) begin
    task_s3_bits_off = 6'h0;
  end
  if (reset) begin
    task_s3_bits_opcode = 3'h0;
  end
  if (reset) begin
    task_s3_bits_param = 3'h0;
  end
  if (reset) begin
    task_s3_bits_size = 3'h0;
  end
  if (reset) begin
    task_s3_bits_sourceId = 5'h0;
  end
  if (reset) begin
    task_s3_bits_needProbeAckData = 1'h0;
  end
  if (reset) begin
    task_s3_bits_mshrTask = 1'h0;
  end
  if (reset) begin
    task_s3_bits_mshrId = 8'h0;
  end
  if (reset) begin
    task_s3_bits_useProbeData = 1'h0;
  end
  if (reset) begin
    task_s3_bits_dirty = 1'h0;
  end
  if (reset) begin
    task_s3_bits_way = 3'h0;
  end
  if (reset) begin
    task_s3_bits_meta_dirty = 1'h0;
  end
  if (reset) begin
    task_s3_bits_meta_state = 2'h0;
  end
  if (reset) begin
    task_s3_bits_meta_clients = 1'h0;
  end
  if (reset) begin
    task_s3_bits_meta_accessed = 1'h0;
  end
  if (reset) begin
    task_s3_bits_metaWen = 1'h0;
  end
  if (reset) begin
    task_s3_bits_tagWen = 1'h0;
  end
  if (reset) begin
    task_s3_bits_dsWen = 1'h0;
  end
  if (reset) begin
    task_s3_bits_replTask = 1'h0;
  end
  if (reset) begin
    task_s3_bits_reqSource = 4'h0;
  end
  if (reset) begin
    task_s4_valid = 1'h0;
  end
  if (reset) begin
    task_s4_bits_channel = 3'h0;
  end
  if (reset) begin
    task_s4_bits_set = 7'h0;
  end
  if (reset) begin
    task_s4_bits_tag = 22'h0;
  end
  if (reset) begin
    task_s4_bits_off = 6'h0;
  end
  if (reset) begin
    task_s4_bits_opcode = 3'h0;
  end
  if (reset) begin
    task_s4_bits_param = 3'h0;
  end
  if (reset) begin
    task_s4_bits_sourceId = 5'h0;
  end
  if (reset) begin
    task_s4_bits_mshrTask = 1'h0;
  end
  if (reset) begin
    task_s4_bits_mshrId = 8'h0;
  end
  if (reset) begin
    task_s4_bits_dirty = 1'h0;
  end
  if (reset) begin
    need_write_releaseBuf_s4 = 1'h0;
  end
  if (reset) begin
    need_write_refillBuf_s4 = 1'h0;
  end
  if (reset) begin
    isC_s4 = 1'h0;
  end
  if (reset) begin
    isD_s4 = 1'h0;
  end
  if (reset) begin
    c_d_valid_s4_REG = 1'h0;
  end
  if (reset) begin
    task_s5_valid = 1'h0;
  end
  if (reset) begin
    task_s5_bits_channel = 3'h0;
  end
  if (reset) begin
    task_s5_bits_set = 7'h0;
  end
  if (reset) begin
    task_s5_bits_tag = 22'h0;
  end
  if (reset) begin
    task_s5_bits_off = 6'h0;
  end
  if (reset) begin
    task_s5_bits_opcode = 3'h0;
  end
  if (reset) begin
    task_s5_bits_param = 3'h0;
  end
  if (reset) begin
    task_s5_bits_sourceId = 5'h0;
  end
  if (reset) begin
    task_s5_bits_mshrTask = 1'h0;
  end
  if (reset) begin
    task_s5_bits_mshrId = 8'h0;
  end
  if (reset) begin
    task_s5_bits_dirty = 1'h0;
  end
  if (reset) begin
    need_write_releaseBuf_s5 = 1'h0;
  end
  if (reset) begin
    need_write_refillBuf_s5 = 1'h0;
  end
  if (reset) begin
    isC_s5 = 1'h0;
  end
  if (reset) begin
    isD_s5 = 1'h0;
  end
  if (reset) begin
    c_d_valid_s5_REG = 1'h0;
  end
  if (reset) begin
    c_d_valid_s5_REG_2 = 1'h0;
  end
  if (reset) begin
    c_d_valid_s5_REG_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

