module Slice(
  input          clock,
  input          reset,
  output         io_in_a_ready,
  input          io_in_a_valid,
  input  [2:0]   io_in_a_bits_opcode,
  input  [2:0]   io_in_a_bits_param,
  input  [2:0]   io_in_a_bits_size,
  input  [4:0]   io_in_a_bits_source,
  input  [35:0]  io_in_a_bits_address,
  input  [1:0]   io_in_a_bits_user_alias,
  input  [32:0]  io_in_a_bits_user_vaddr,
  input  [3:0]   io_in_a_bits_user_reqSource,
  input          io_in_a_bits_user_needHint,
  input  [31:0]  io_in_a_bits_mask,
  input  [255:0] io_in_a_bits_data,
  input          io_in_a_bits_corrupt,
  input          io_in_bready,
  output         io_in_bvalid,
  output [2:0]   io_in_bopcode,
  output [1:0]   io_in_bparam,
  output [2:0]   io_in_bsize,
  output [4:0]   io_in_bsource,
  output [35:0]  io_in_baddress,
  output [31:0]  io_in_bmask,
  output [255:0] io_in_bdata,
  output         io_in_bcorrupt,
  output         io_in_c_ready,
  input          io_in_c_valid,
  input  [2:0]   io_in_c_bits_opcode,
  input  [2:0]   io_in_c_bits_param,
  input  [2:0]   io_in_c_bits_size,
  input  [4:0]   io_in_c_bits_source,
  input  [35:0]  io_in_c_bits_address,
  input  [1:0]   io_in_c_bits_user_alias,
  input  [32:0]  io_in_c_bits_user_vaddr,
  input  [3:0]   io_in_c_bits_user_reqSource,
  input          io_in_c_bits_user_needHint,
  input  [255:0] io_in_c_bits_data,
  input          io_in_c_bits_corrupt,
  input          io_in_d_ready,
  output         io_in_d_valid,
  output [2:0]   io_in_d_bits_opcode,
  output [1:0]   io_in_d_bits_param,
  output [2:0]   io_in_d_bits_size,
  output [4:0]   io_in_d_bits_source,
  output [7:0]   io_in_d_bits_sink,
  output         io_in_d_bits_denied,
  output [255:0] io_in_d_bits_data,
  output         io_in_d_bits_corrupt,
  output         io_in_e_ready,
  input          io_in_e_valid,
  input  [7:0]   io_in_e_bits_sink,
  input          io_out_a_ready,
  output         io_out_a_valid,
  output [2:0]   io_out_a_bits_opcode,
  output [2:0]   io_out_a_bits_param,
  output [2:0]   io_out_a_bits_size,
  output [7:0]   io_out_a_bits_source,
  output [35:0]  io_out_a_bits_address,
  output         io_out_a_bits_echo_blockisdirty,
  output [31:0]  io_out_a_bits_mask,
  output [255:0] io_out_a_bits_data,
  output         io_out_a_bits_corrupt,
  output         io_out_bready,
  input          io_out_bvalid,
  input  [2:0]   io_out_bopcode,
  input  [1:0]   io_out_bparam,
  input  [2:0]   io_out_bsize,
  input  [7:0]   io_out_bsource,
  input  [35:0]  io_out_baddress,
  input  [31:0]  io_out_bmask,
  input  [255:0] io_out_bdata,
  input          io_out_bcorrupt,
  input          io_out_c_ready,
  output         io_out_c_valid,
  output [2:0]   io_out_c_bits_opcode,
  output [2:0]   io_out_c_bits_param,
  output [2:0]   io_out_c_bits_size,
  output [7:0]   io_out_c_bits_source,
  output [35:0]  io_out_c_bits_address,
  output         io_out_c_bits_echo_blockisdirty,
  output [255:0] io_out_c_bits_data,
  output         io_out_c_bits_corrupt,
  output         io_out_d_ready,
  input          io_out_d_valid,
  input  [2:0]   io_out_d_bits_opcode,
  input  [1:0]   io_out_d_bits_param,
  input  [2:0]   io_out_d_bits_size,
  input  [7:0]   io_out_d_bits_source,
  input  [3:0]   io_out_d_bits_sink,
  input          io_out_d_bits_denied,
  input          io_out_d_bits_echo_blockisdirty,
  input  [255:0] io_out_d_bits_data,
  input          io_out_d_bits_corrupt,
  input          io_out_e_ready,
  output         io_out_e_valid,
  output [3:0]   io_out_e_bits_sink,
  output         io_l1Hint_valid,
  output [31:0]  io_l1Hint_bits_sourceId,
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
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  reqArb_clock; // @[Slice.scala 43:22]
  wire  reqArb_reset; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_ready; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkA_bits_channel; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_sinkA_bits_set; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_sinkA_bits_tag; // @[Slice.scala 43:22]
  wire [5:0] reqArb_io_sinkA_bits_off; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkA_bits_opcode; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkA_bits_param; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkA_bits_size; // @[Slice.scala 43:22]
  wire [4:0] reqArb_io_sinkA_bits_sourceId; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_sinkA_bits_bufIdx; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_needProbeAckData; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_mshrTask; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_sinkA_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_useProbeData; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_dirty; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkA_bits_way; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_meta_dirty; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_sinkA_bits_meta_state; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_meta_clients; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_meta_accessed; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_metaWen; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_tagWen; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_dsWen; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_sinkA_bits_wayMask; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkA_bits_replTask; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_sinkA_bits_reqSource; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_ATag; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_ASet; // @[Slice.scala 43:22]
  wire  reqArb_io_s1Entrance_valid; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_s1Entrance_bits_set; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_ready; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkB_bits_channel; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_sinkB_bits_set; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_sinkB_bits_tag; // @[Slice.scala 43:22]
  wire [5:0] reqArb_io_sinkB_bits_off; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkB_bits_opcode; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkB_bits_param; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkB_bits_size; // @[Slice.scala 43:22]
  wire [4:0] reqArb_io_sinkB_bits_sourceId; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_sinkB_bits_bufIdx; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_needProbeAckData; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_mshrTask; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_sinkB_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_useProbeData; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_dirty; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkB_bits_way; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_meta_dirty; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_sinkB_bits_meta_state; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_meta_clients; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_meta_accessed; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_metaWen; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_tagWen; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_dsWen; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_sinkB_bits_wayMask; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkB_bits_replTask; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_sinkB_bits_reqSource; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_ready; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkC_bits_channel; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_sinkC_bits_set; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_sinkC_bits_tag; // @[Slice.scala 43:22]
  wire [5:0] reqArb_io_sinkC_bits_off; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkC_bits_opcode; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkC_bits_param; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkC_bits_size; // @[Slice.scala 43:22]
  wire [4:0] reqArb_io_sinkC_bits_sourceId; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_sinkC_bits_bufIdx; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_needProbeAckData; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_mshrTask; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_sinkC_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_useProbeData; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_dirty; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_sinkC_bits_way; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_meta_dirty; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_sinkC_bits_meta_state; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_meta_clients; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_meta_accessed; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_metaWen; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_tagWen; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_dsWen; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_sinkC_bits_wayMask; // @[Slice.scala 43:22]
  wire  reqArb_io_sinkC_bits_replTask; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_sinkC_bits_reqSource; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_ready; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_mshrTask_bits_channel; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_mshrTask_bits_set; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_mshrTask_bits_tag; // @[Slice.scala 43:22]
  wire [5:0] reqArb_io_mshrTask_bits_off; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_mshrTask_bits_opcode; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_mshrTask_bits_param; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_mshrTask_bits_size; // @[Slice.scala 43:22]
  wire [4:0] reqArb_io_mshrTask_bits_sourceId; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_mshrTask_bits_bufIdx; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_needProbeAckData; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_mshrTask; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_mshrTask_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_useProbeData; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_dirty; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_mshrTask_bits_way; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_meta_dirty; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_mshrTask_bits_meta_state; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_meta_clients; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_meta_accessed; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_metaWen; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_tagWen; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_dsWen; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_mshrTask_bits_wayMask; // @[Slice.scala 43:22]
  wire  reqArb_io_mshrTask_bits_replTask; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_mshrTask_bits_reqSource; // @[Slice.scala 43:22]
  wire  reqArb_io_dirRead_s1_ready; // @[Slice.scala 43:22]
  wire  reqArb_io_dirRead_s1_valid; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_dirRead_s1_bits_tag; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_dirRead_s1_bits_set; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_dirRead_s1_bits_wayMask; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_dirRead_s1_bits_replacerInfo_channel; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_dirRead_s1_bits_replacerInfo_opcode; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_dirRead_s1_bits_replacerInfo_reqSource; // @[Slice.scala 43:22]
  wire  reqArb_io_dirRead_s1_bits_refill; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_dirRead_s1_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskToPipe_s2_bits_channel; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_taskToPipe_s2_bits_set; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_taskToPipe_s2_bits_tag; // @[Slice.scala 43:22]
  wire [5:0] reqArb_io_taskToPipe_s2_bits_off; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskToPipe_s2_bits_opcode; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskToPipe_s2_bits_param; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskToPipe_s2_bits_size; // @[Slice.scala 43:22]
  wire [4:0] reqArb_io_taskToPipe_s2_bits_sourceId; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_taskToPipe_s2_bits_bufIdx; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_needProbeAckData; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_mshrTask; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_taskToPipe_s2_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_useProbeData; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_dirty; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskToPipe_s2_bits_way; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_meta_dirty; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_taskToPipe_s2_bits_meta_state; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_meta_clients; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_meta_accessed; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_metaWen; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_tagWen; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_dsWen; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_taskToPipe_s2_bits_wayMask; // @[Slice.scala 43:22]
  wire  reqArb_io_taskToPipe_s2_bits_replTask; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_taskToPipe_s2_bits_reqSource; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskInfo_s1_bits_channel; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_taskInfo_s1_bits_set; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_taskInfo_s1_bits_tag; // @[Slice.scala 43:22]
  wire [5:0] reqArb_io_taskInfo_s1_bits_off; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskInfo_s1_bits_opcode; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskInfo_s1_bits_param; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskInfo_s1_bits_size; // @[Slice.scala 43:22]
  wire [4:0] reqArb_io_taskInfo_s1_bits_sourceId; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_taskInfo_s1_bits_bufIdx; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_needProbeAckData; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_mshrTask; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_taskInfo_s1_bits_mshrId; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_useProbeData; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_dirty; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_taskInfo_s1_bits_way; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_meta_dirty; // @[Slice.scala 43:22]
  wire [1:0] reqArb_io_taskInfo_s1_bits_meta_state; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_meta_clients; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_meta_accessed; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_metaWen; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_tagWen; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_dsWen; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_taskInfo_s1_bits_wayMask; // @[Slice.scala 43:22]
  wire  reqArb_io_taskInfo_s1_bits_replTask; // @[Slice.scala 43:22]
  wire [3:0] reqArb_io_taskInfo_s1_bits_reqSource; // @[Slice.scala 43:22]
  wire  reqArb_io_refillBufRead_s2_valid; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_refillBufRead_s2_id; // @[Slice.scala 43:22]
  wire  reqArb_io_refillBufRead_s2_ready; // @[Slice.scala 43:22]
  wire [511:0] reqArb_io_refillBufRead_s2_data_data; // @[Slice.scala 43:22]
  wire  reqArb_io_releaseBufRead_s2_valid; // @[Slice.scala 43:22]
  wire [7:0] reqArb_io_releaseBufRead_s2_id; // @[Slice.scala 43:22]
  wire  reqArb_io_releaseBufRead_s2_ready; // @[Slice.scala 43:22]
  wire [511:0] reqArb_io_releaseBufRead_s2_data_data; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_status_s1_tags_0; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_status_s1_tags_1; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_status_s1_tags_2; // @[Slice.scala 43:22]
  wire [21:0] reqArb_io_status_s1_tags_3; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_status_s1_sets_0; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_status_s1_sets_1; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_status_s1_sets_2; // @[Slice.scala 43:22]
  wire [6:0] reqArb_io_status_s1_sets_3; // @[Slice.scala 43:22]
  wire  reqArb_io_status_vec_0_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_status_vec_0_bits_channel; // @[Slice.scala 43:22]
  wire  reqArb_io_status_vec_1_valid; // @[Slice.scala 43:22]
  wire [2:0] reqArb_io_status_vec_1_bits_channel; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMSHRCtl_blockG_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMSHRCtl_blockA_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMSHRCtl_blockB_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMSHRCtl_blockC_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMainPipe_blockG_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMainPipe_blockA_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMainPipe_blockB_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromMainPipe_blockC_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockG_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockA_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockB_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockC_s1; // @[Slice.scala 43:22]
  wire  reqArb_io_fromGrantBuffer_blockMSHRReqEntrance; // @[Slice.scala 43:22]
  wire  a_reqBuf_clock; // @[Slice.scala 44:24]
  wire  a_reqBuf_reset; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_in_ready; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_in_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_in_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_in_bits_tag; // @[Slice.scala 44:24]
  wire [5:0] a_reqBuf_io_in_bits_off; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_in_bits_opcode; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_in_bits_param; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_in_bits_size; // @[Slice.scala 44:24]
  wire [4:0] a_reqBuf_io_in_bits_sourceId; // @[Slice.scala 44:24]
  wire [3:0] a_reqBuf_io_in_bits_reqSource; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_ready; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_valid; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_out_bits_channel; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_out_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_out_bits_tag; // @[Slice.scala 44:24]
  wire [5:0] a_reqBuf_io_out_bits_off; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_out_bits_opcode; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_out_bits_param; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_out_bits_size; // @[Slice.scala 44:24]
  wire [4:0] a_reqBuf_io_out_bits_sourceId; // @[Slice.scala 44:24]
  wire [1:0] a_reqBuf_io_out_bits_bufIdx; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_needProbeAckData; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_mshrTask; // @[Slice.scala 44:24]
  wire [7:0] a_reqBuf_io_out_bits_mshrId; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_useProbeData; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_dirty; // @[Slice.scala 44:24]
  wire [2:0] a_reqBuf_io_out_bits_way; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_meta_dirty; // @[Slice.scala 44:24]
  wire [1:0] a_reqBuf_io_out_bits_meta_state; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_meta_clients; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_meta_accessed; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_metaWen; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_tagWen; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_dsWen; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_out_bits_replTask; // @[Slice.scala 44:24]
  wire [3:0] a_reqBuf_io_out_bits_reqSource; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_0_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_0_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_0_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_0_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_0_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_0_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_0_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_1_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_1_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_1_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_1_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_1_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_1_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_1_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_2_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_2_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_2_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_2_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_2_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_2_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_2_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_3_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_3_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_3_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_3_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_3_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_3_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_3_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_4_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_4_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_4_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_4_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_4_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_4_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_4_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_5_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_5_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_5_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_5_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_5_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_5_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_5_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_6_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_6_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_6_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_6_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_6_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_6_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_6_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_7_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_7_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_7_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_7_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_7_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_7_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_7_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_8_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_8_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_8_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_8_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_8_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_8_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_8_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_9_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_9_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_9_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_9_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_9_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_9_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_9_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_10_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_10_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_10_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_10_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_10_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_10_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_10_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_11_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_11_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_11_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_11_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_11_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_11_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_11_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_12_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_12_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_12_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_12_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_12_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_12_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_12_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_13_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_13_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_13_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_13_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_13_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_13_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_13_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_14_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_14_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_14_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_14_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_14_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_14_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_14_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_15_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_mshrInfo_15_bits_set; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_15_bits_reqTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_15_bits_willFree; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_15_bits_needRelease; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_mshrInfo_15_bits_metaTag; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mshrInfo_15_bits_isAcqOrPrefetch; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mainPipeBlock_0; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_mainPipeBlock_1; // @[Slice.scala 44:24]
  wire [21:0] a_reqBuf_io_ATag; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_ASet; // @[Slice.scala 44:24]
  wire  a_reqBuf_io_s1Entrance_valid; // @[Slice.scala 44:24]
  wire [6:0] a_reqBuf_io_s1Entrance_bits_set; // @[Slice.scala 44:24]
  wire  mainPipe_clock; // @[Slice.scala 45:24]
  wire  mainPipe_reset; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskFromArb_s2_bits_channel; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_taskFromArb_s2_bits_set; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_taskFromArb_s2_bits_tag; // @[Slice.scala 45:24]
  wire [5:0] mainPipe_io_taskFromArb_s2_bits_off; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskFromArb_s2_bits_opcode; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskFromArb_s2_bits_param; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskFromArb_s2_bits_size; // @[Slice.scala 45:24]
  wire [4:0] mainPipe_io_taskFromArb_s2_bits_sourceId; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_taskFromArb_s2_bits_bufIdx; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_needProbeAckData; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_mshrTask; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_taskFromArb_s2_bits_mshrId; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_useProbeData; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_dirty; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskFromArb_s2_bits_way; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_meta_dirty; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_taskFromArb_s2_bits_meta_state; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_meta_clients; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_meta_accessed; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_metaWen; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_tagWen; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_dsWen; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskFromArb_s2_bits_replTask; // @[Slice.scala 45:24]
  wire [3:0] mainPipe_io_taskFromArb_s2_bits_reqSource; // @[Slice.scala 45:24]
  wire  mainPipe_io_taskInfo_s1_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskInfo_s1_bits_channel; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_taskInfo_s1_bits_opcode; // @[Slice.scala 45:24]
  wire [4:0] mainPipe_io_taskInfo_s1_bits_sourceId; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_fromReqArb_status_s1_tags_1; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_fromReqArb_status_s1_sets_0; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_fromReqArb_status_s1_sets_1; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_fromReqArb_status_s1_sets_2; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_fromReqArb_status_s1_sets_3; // @[Slice.scala 45:24]
  wire  mainPipe_io_toReqArb_blockG_s1; // @[Slice.scala 45:24]
  wire  mainPipe_io_toReqArb_blockA_s1; // @[Slice.scala 45:24]
  wire  mainPipe_io_toReqArb_blockB_s1; // @[Slice.scala 45:24]
  wire  mainPipe_io_toReqArb_blockC_s1; // @[Slice.scala 45:24]
  wire  mainPipe_io_toReqBuf_0; // @[Slice.scala 45:24]
  wire  mainPipe_io_toReqBuf_1; // @[Slice.scala 45:24]
  wire  mainPipe_io_status_vec_0_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_status_vec_0_bits_channel; // @[Slice.scala 45:24]
  wire  mainPipe_io_status_vec_1_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_status_vec_1_bits_channel; // @[Slice.scala 45:24]
  wire  mainPipe_io_status_vec_2_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_status_vec_2_bits_channel; // @[Slice.scala 45:24]
  wire  mainPipe_io_dirResp_s3_hit; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_dirResp_s3_tag; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_dirResp_s3_set; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_dirResp_s3_way; // @[Slice.scala 45:24]
  wire  mainPipe_io_dirResp_s3_meta_dirty; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_dirResp_s3_meta_state; // @[Slice.scala 45:24]
  wire  mainPipe_io_dirResp_s3_meta_clients; // @[Slice.scala 45:24]
  wire  mainPipe_io_dirResp_s3_meta_accessed; // @[Slice.scala 45:24]
  wire  mainPipe_io_replResp_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_replResp_bits_way; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_replResp_bits_meta_state; // @[Slice.scala 45:24]
  wire  mainPipe_io_replResp_bits_retry; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_valid; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_hit; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_tag; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_set; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_way; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_state; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_clients; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_acquire; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_rprobe; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_pprobe; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_probeack; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_refill; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeacklast; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeacklast; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeack; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantfirst; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantlast; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrant; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantack; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wreplResp; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_channel; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_set; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_tag; // @[Slice.scala 45:24]
  wire [5:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_off; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_opcode; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_param; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_size; // @[Slice.scala 45:24]
  wire [4:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_sourceId; // @[Slice.scala 45:24]
  wire  mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_needProbeAckData; // @[Slice.scala 45:24]
  wire [3:0] mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_reqSource; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_fromMSHRCtl_mshr_alloc_ptr; // @[Slice.scala 45:24]
  wire  mainPipe_io_bufRead_valid; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_bufRead_bits_bufIdx; // @[Slice.scala 45:24]
  wire [255:0] mainPipe_io_bufResp_data_0; // @[Slice.scala 45:24]
  wire [255:0] mainPipe_io_bufResp_data_1; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_refillBufResp_s3_bits_data; // @[Slice.scala 45:24]
  wire  mainPipe_io_releaseBufResp_s3_valid; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_releaseBufResp_s3_bits_data; // @[Slice.scala 45:24]
  wire  mainPipe_io_toDS_req_s3_valid; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toDS_req_s3_bits_way; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_toDS_req_s3_bits_set; // @[Slice.scala 45:24]
  wire  mainPipe_io_toDS_req_s3_bits_wen; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_toDS_rdata_s5_data; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_toDS_wdata_s3_data; // @[Slice.scala 45:24]
  wire  mainPipe_io_toSourceC_ready; // @[Slice.scala 45:24]
  wire  mainPipe_io_toSourceC_valid; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_toSourceC_bits_task_set; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_toSourceC_bits_task_tag; // @[Slice.scala 45:24]
  wire [5:0] mainPipe_io_toSourceC_bits_task_off; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toSourceC_bits_task_opcode; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toSourceC_bits_task_param; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_toSourceC_bits_task_mshrId; // @[Slice.scala 45:24]
  wire  mainPipe_io_toSourceC_bits_task_dirty; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_toSourceC_bits_data_data; // @[Slice.scala 45:24]
  wire  mainPipe_io_toSourceD_valid; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_toSourceD_bits_task_set; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_toSourceD_bits_task_tag; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toSourceD_bits_task_opcode; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_toSourceD_bits_task_param; // @[Slice.scala 45:24]
  wire [4:0] mainPipe_io_toSourceD_bits_task_sourceId; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_toSourceD_bits_task_mshrId; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_toSourceD_bits_data_data; // @[Slice.scala 45:24]
  wire  mainPipe_io_metaWReq_valid; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_metaWReq_bits_set; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_metaWReq_bits_wayOH; // @[Slice.scala 45:24]
  wire  mainPipe_io_metaWReq_bits_wmeta_dirty; // @[Slice.scala 45:24]
  wire [1:0] mainPipe_io_metaWReq_bits_wmeta_state; // @[Slice.scala 45:24]
  wire  mainPipe_io_metaWReq_bits_wmeta_clients; // @[Slice.scala 45:24]
  wire  mainPipe_io_metaWReq_bits_wmeta_accessed; // @[Slice.scala 45:24]
  wire  mainPipe_io_tagWReq_valid; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_tagWReq_bits_set; // @[Slice.scala 45:24]
  wire [2:0] mainPipe_io_tagWReq_bits_way; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_tagWReq_bits_wtag; // @[Slice.scala 45:24]
  wire  mainPipe_io_releaseBufWrite_valid; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_releaseBufWrite_data_data; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_releaseBufWrite_id; // @[Slice.scala 45:24]
  wire  mainPipe_io_refillBufWrite_valid; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_refillBufWrite_data_data; // @[Slice.scala 45:24]
  wire [7:0] mainPipe_io_refillBufWrite_id; // @[Slice.scala 45:24]
  wire [6:0] mainPipe_io_nestedwb_set; // @[Slice.scala 45:24]
  wire [21:0] mainPipe_io_nestedwb_tag; // @[Slice.scala 45:24]
  wire  mainPipe_io_nestedwb_c_set_dirty; // @[Slice.scala 45:24]
  wire [511:0] mainPipe_io_nestedwbData_data; // @[Slice.scala 45:24]
  wire  mainPipe_io_l1Hint_valid; // @[Slice.scala 45:24]
  wire [31:0] mainPipe_io_l1Hint_bits_sourceId; // @[Slice.scala 45:24]
  wire  mainPipe_io_grantBufferHint_valid; // @[Slice.scala 45:24]
  wire [31:0] mainPipe_io_grantBufferHint_bits_sourceId; // @[Slice.scala 45:24]
  wire [4:0] mainPipe_io_globalCounter; // @[Slice.scala 45:24]
  wire  mshrCtl_clock; // @[Slice.scala 46:23]
  wire  mshrCtl_reset; // @[Slice.scala 46:23]
  wire  mshrCtl_io_toReqArb_blockA_s1; // @[Slice.scala 46:23]
  wire  mshrCtl_io_toReqArb_blockB_s1; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_valid; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[Slice.scala 46:23]
  wire [1:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_channel; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_tag; // @[Slice.scala 46:23]
  wire [5:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_off; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_opcode; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_param; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_size; // @[Slice.scala 46:23]
  wire [4:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId; // @[Slice.scala 46:23]
  wire  mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData; // @[Slice.scala 46:23]
  wire [3:0] mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_toMainPipe_mshr_alloc_ptr; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_ready; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_valid; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_mshrTask_bits_channel; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_mshrTask_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_mshrTask_bits_tag; // @[Slice.scala 46:23]
  wire [5:0] mshrCtl_io_mshrTask_bits_off; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_mshrTask_bits_opcode; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_mshrTask_bits_param; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_mshrTask_bits_size; // @[Slice.scala 46:23]
  wire [4:0] mshrCtl_io_mshrTask_bits_sourceId; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_mshrTask; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_mshrTask_bits_mshrId; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_useProbeData; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_dirty; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_mshrTask_bits_way; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_meta_dirty; // @[Slice.scala 46:23]
  wire [1:0] mshrCtl_io_mshrTask_bits_meta_state; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_meta_clients; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_meta_accessed; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_metaWen; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_tagWen; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_dsWen; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_mshrTask_bits_wayMask; // @[Slice.scala 46:23]
  wire  mshrCtl_io_mshrTask_bits_replTask; // @[Slice.scala 46:23]
  wire [3:0] mshrCtl_io_mshrTask_bits_reqSource; // @[Slice.scala 46:23]
  wire  mshrCtl_io_sourceA_ready; // @[Slice.scala 46:23]
  wire  mshrCtl_io_sourceA_valid; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_sourceA_bits_opcode; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_sourceA_bits_param; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_sourceA_bits_size; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_sourceA_bits_source; // @[Slice.scala 46:23]
  wire [35:0] mshrCtl_io_sourceA_bits_address; // @[Slice.scala 46:23]
  wire  mshrCtl_io_sourceA_bits_echo_blockisdirty; // @[Slice.scala 46:23]
  wire [31:0] mshrCtl_io_sourceA_bits_mask; // @[Slice.scala 46:23]
  wire [255:0] mshrCtl_io_sourceA_bits_data; // @[Slice.scala 46:23]
  wire  mshrCtl_io_sourceA_bits_corrupt; // @[Slice.scala 46:23]
  wire  mshrCtl_io_sourceB_ready; // @[Slice.scala 46:23]
  wire  mshrCtl_io_sourceB_valid; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_sourceB_bits_opcode; // @[Slice.scala 46:23]
  wire [1:0] mshrCtl_io_sourceB_bits_param; // @[Slice.scala 46:23]
  wire [35:0] mshrCtl_io_sourceB_bits_address; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_0_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_0_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_0_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_1_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_1_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_1_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_2_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_2_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_2_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_3_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_3_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_3_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_4_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_4_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_4_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_5_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_5_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_5_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_6_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_6_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_6_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_7_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_7_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_7_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_8_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_8_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_8_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_9_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_9_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_9_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_10_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_10_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_10_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_11_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_11_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_11_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_12_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_12_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_12_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_13_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_13_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_13_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_14_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_14_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_14_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_grantStatus_15_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_grantStatus_15_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_grantStatus_15_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_resps_sinkC_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_resps_sinkC_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_resps_sinkC_tag; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_resps_sinkC_respInfo_opcode; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_resps_sinkC_respInfo_param; // @[Slice.scala 46:23]
  wire  mshrCtl_io_resps_sinkC_respInfo_last; // @[Slice.scala 46:23]
  wire  mshrCtl_io_resps_sinkD_valid; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_resps_sinkD_mshrId; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_resps_sinkD_respInfo_opcode; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_resps_sinkD_respInfo_param; // @[Slice.scala 46:23]
  wire  mshrCtl_io_resps_sinkD_respInfo_last; // @[Slice.scala 46:23]
  wire  mshrCtl_io_resps_sinkD_respInfo_dirty; // @[Slice.scala 46:23]
  wire  mshrCtl_io_resps_sinkE_valid; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_resps_sinkE_mshrId; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_releaseBufWriteId; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_nestedwb_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_nestedwb_tag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_nestedwb_c_set_dirty; // @[Slice.scala 46:23]
  wire  mshrCtl_io_nestedwbDataId_valid; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_nestedwbDataId_bits; // @[Slice.scala 46:23]
  wire  mshrCtl_io_pipeStatusVec_0_valid; // @[Slice.scala 46:23]
  wire  mshrCtl_io_pipeStatusVec_1_valid; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_0_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_0_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_0_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_0_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_0_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_1_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_1_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_1_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_1_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_1_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_2_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_2_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_2_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_2_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_2_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_3_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_3_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_3_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_3_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_3_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_4_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_4_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_4_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_4_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_4_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_5_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_5_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_5_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_5_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_5_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_6_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_6_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_6_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_6_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_6_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_7_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_7_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_7_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_7_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_7_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_8_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_8_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_8_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_8_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_8_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_9_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_9_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_9_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_9_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_9_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_10_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_10_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_10_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_10_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_10_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_11_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_11_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_11_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_11_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_11_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_12_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_12_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_12_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_12_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_12_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_13_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_13_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_13_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_13_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_13_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_14_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_14_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_14_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_14_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_14_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msInfo_15_bits_set; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_msInfo_15_bits_way; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_15_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_willFree; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_needRelease; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msInfo_15_bits_metaTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_dirHit; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_nestB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_mergeB; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_isAcqOrPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msInfo_15_bits_isPrefetch; // @[Slice.scala 46:23]
  wire  mshrCtl_io_bMergeTask_valid; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_bMergeTask_bits_id; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_bMergeTask_bits_task_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_bMergeTask_bits_task_tag; // @[Slice.scala 46:23]
  wire [5:0] mshrCtl_io_bMergeTask_bits_task_off; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_bMergeTask_bits_task_param; // @[Slice.scala 46:23]
  wire  mshrCtl_io_bMergeTask_bits_task_needProbeAckData; // @[Slice.scala 46:23]
  wire  mshrCtl_io_replResp_valid; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_replResp_bits_tag; // @[Slice.scala 46:23]
  wire [2:0] mshrCtl_io_replResp_bits_way; // @[Slice.scala 46:23]
  wire  mshrCtl_io_replResp_bits_meta_dirty; // @[Slice.scala 46:23]
  wire [1:0] mshrCtl_io_replResp_bits_meta_state; // @[Slice.scala 46:23]
  wire  mshrCtl_io_replResp_bits_meta_clients; // @[Slice.scala 46:23]
  wire  mshrCtl_io_replResp_bits_meta_accessed; // @[Slice.scala 46:23]
  wire [7:0] mshrCtl_io_replResp_bits_mshrId; // @[Slice.scala 46:23]
  wire  mshrCtl_io_replResp_bits_retry; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_0_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_0_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_0_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_0_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_1_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_1_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_1_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_1_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_2_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_2_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_2_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_2_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_3_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_3_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_3_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_3_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_4_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_4_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_4_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_4_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_5_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_5_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_5_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_5_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_6_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_6_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_6_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_6_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_7_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_7_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_7_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_7_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_8_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_8_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_8_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_8_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_9_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_9_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_9_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_9_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_10_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_10_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_10_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_10_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_11_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_11_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_11_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_11_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_12_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_12_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_12_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_12_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_13_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_13_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_13_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_13_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_14_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_14_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_14_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_14_bits_is_miss; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_15_valid; // @[Slice.scala 46:23]
  wire [6:0] mshrCtl_io_msStatus_15_bits_set; // @[Slice.scala 46:23]
  wire [21:0] mshrCtl_io_msStatus_15_bits_reqTag; // @[Slice.scala 46:23]
  wire  mshrCtl_io_msStatus_15_bits_is_miss; // @[Slice.scala 46:23]
  wire  directory_clock; // @[Slice.scala 47:25]
  wire  directory_reset; // @[Slice.scala 47:25]
  wire  directory_io_read_ready; // @[Slice.scala 47:25]
  wire  directory_io_read_valid; // @[Slice.scala 47:25]
  wire [21:0] directory_io_read_bits_tag; // @[Slice.scala 47:25]
  wire [6:0] directory_io_read_bits_set; // @[Slice.scala 47:25]
  wire [7:0] directory_io_read_bits_wayMask; // @[Slice.scala 47:25]
  wire [2:0] directory_io_read_bits_replacerInfo_channel; // @[Slice.scala 47:25]
  wire [2:0] directory_io_read_bits_replacerInfo_opcode; // @[Slice.scala 47:25]
  wire [3:0] directory_io_read_bits_replacerInfo_reqSource; // @[Slice.scala 47:25]
  wire  directory_io_read_bits_refill; // @[Slice.scala 47:25]
  wire [7:0] directory_io_read_bits_mshrId; // @[Slice.scala 47:25]
  wire  directory_io_resp_hit; // @[Slice.scala 47:25]
  wire [21:0] directory_io_resp_tag; // @[Slice.scala 47:25]
  wire [6:0] directory_io_resp_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_resp_way; // @[Slice.scala 47:25]
  wire  directory_io_resp_meta_dirty; // @[Slice.scala 47:25]
  wire [1:0] directory_io_resp_meta_state; // @[Slice.scala 47:25]
  wire  directory_io_resp_meta_clients; // @[Slice.scala 47:25]
  wire  directory_io_resp_meta_accessed; // @[Slice.scala 47:25]
  wire  directory_io_resp_error; // @[Slice.scala 47:25]
  wire [2:0] directory_io_resp_replacerInfo_channel; // @[Slice.scala 47:25]
  wire [2:0] directory_io_resp_replacerInfo_opcode; // @[Slice.scala 47:25]
  wire [3:0] directory_io_resp_replacerInfo_reqSource; // @[Slice.scala 47:25]
  wire  directory_io_metaWReq_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_metaWReq_bits_set; // @[Slice.scala 47:25]
  wire [7:0] directory_io_metaWReq_bits_wayOH; // @[Slice.scala 47:25]
  wire  directory_io_metaWReq_bits_wmeta_dirty; // @[Slice.scala 47:25]
  wire [1:0] directory_io_metaWReq_bits_wmeta_state; // @[Slice.scala 47:25]
  wire  directory_io_metaWReq_bits_wmeta_clients; // @[Slice.scala 47:25]
  wire  directory_io_metaWReq_bits_wmeta_accessed; // @[Slice.scala 47:25]
  wire  directory_io_tagWReq_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_tagWReq_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_tagWReq_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_tagWReq_bits_wtag; // @[Slice.scala 47:25]
  wire  directory_io_replResp_valid; // @[Slice.scala 47:25]
  wire [21:0] directory_io_replResp_bits_tag; // @[Slice.scala 47:25]
  wire [6:0] directory_io_replResp_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_replResp_bits_way; // @[Slice.scala 47:25]
  wire  directory_io_replResp_bits_meta_dirty; // @[Slice.scala 47:25]
  wire [1:0] directory_io_replResp_bits_meta_state; // @[Slice.scala 47:25]
  wire  directory_io_replResp_bits_meta_clients; // @[Slice.scala 47:25]
  wire  directory_io_replResp_bits_meta_accessed; // @[Slice.scala 47:25]
  wire [7:0] directory_io_replResp_bits_mshrId; // @[Slice.scala 47:25]
  wire  directory_io_replResp_bits_retry; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_0_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_0_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_0_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_0_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_0_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_1_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_1_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_1_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_1_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_1_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_2_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_2_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_2_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_2_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_2_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_3_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_3_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_3_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_3_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_3_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_4_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_4_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_4_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_4_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_4_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_5_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_5_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_5_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_5_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_5_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_6_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_6_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_6_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_6_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_6_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_7_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_7_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_7_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_7_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_7_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_8_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_8_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_8_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_8_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_8_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_9_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_9_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_9_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_9_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_9_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_10_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_10_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_10_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_10_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_10_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_11_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_11_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_11_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_11_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_11_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_12_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_12_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_12_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_12_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_12_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_13_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_13_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_13_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_13_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_13_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_14_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_14_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_14_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_14_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_14_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_valid; // @[Slice.scala 47:25]
  wire [6:0] directory_io_msInfo_15_bits_set; // @[Slice.scala 47:25]
  wire [2:0] directory_io_msInfo_15_bits_way; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_15_bits_reqTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_willFree; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_needRelease; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 47:25]
  wire [21:0] directory_io_msInfo_15_bits_metaTag; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_dirHit; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_nestB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_mergeB; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_isAcqOrPrefetch; // @[Slice.scala 47:25]
  wire  directory_io_msInfo_15_bits_isPrefetch; // @[Slice.scala 47:25]
  wire  dataStorage_clock; // @[Slice.scala 48:27]
  wire  dataStorage_io_req_valid; // @[Slice.scala 48:27]
  wire [2:0] dataStorage_io_req_bits_way; // @[Slice.scala 48:27]
  wire [6:0] dataStorage_io_req_bits_set; // @[Slice.scala 48:27]
  wire  dataStorage_io_req_bits_wen; // @[Slice.scala 48:27]
  wire [511:0] dataStorage_io_rdata_data; // @[Slice.scala 48:27]
  wire [511:0] dataStorage_io_wdata_data; // @[Slice.scala 48:27]
  wire  refillUnit_clock; // @[Slice.scala 49:26]
  wire  refillUnit_reset; // @[Slice.scala 49:26]
  wire  refillUnit_io_sinkD_ready; // @[Slice.scala 49:26]
  wire  refillUnit_io_sinkD_valid; // @[Slice.scala 49:26]
  wire [2:0] refillUnit_io_sinkD_bits_opcode; // @[Slice.scala 49:26]
  wire [1:0] refillUnit_io_sinkD_bits_param; // @[Slice.scala 49:26]
  wire [2:0] refillUnit_io_sinkD_bits_size; // @[Slice.scala 49:26]
  wire [7:0] refillUnit_io_sinkD_bits_source; // @[Slice.scala 49:26]
  wire [3:0] refillUnit_io_sinkD_bits_sink; // @[Slice.scala 49:26]
  wire  refillUnit_io_sinkD_bits_echo_blockisdirty; // @[Slice.scala 49:26]
  wire [255:0] refillUnit_io_sinkD_bits_data; // @[Slice.scala 49:26]
  wire  refillUnit_io_sourceE_ready; // @[Slice.scala 49:26]
  wire  refillUnit_io_sourceE_valid; // @[Slice.scala 49:26]
  wire [3:0] refillUnit_io_sourceE_bits_sink; // @[Slice.scala 49:26]
  wire  refillUnit_io_refillBufWrite_valid; // @[Slice.scala 49:26]
  wire [1:0] refillUnit_io_refillBufWrite_beat_sel; // @[Slice.scala 49:26]
  wire [511:0] refillUnit_io_refillBufWrite_data_data; // @[Slice.scala 49:26]
  wire [7:0] refillUnit_io_refillBufWrite_id; // @[Slice.scala 49:26]
  wire  refillUnit_io_resp_valid; // @[Slice.scala 49:26]
  wire [7:0] refillUnit_io_resp_mshrId; // @[Slice.scala 49:26]
  wire [2:0] refillUnit_io_resp_respInfo_opcode; // @[Slice.scala 49:26]
  wire [2:0] refillUnit_io_resp_respInfo_param; // @[Slice.scala 49:26]
  wire  refillUnit_io_resp_respInfo_last; // @[Slice.scala 49:26]
  wire  refillUnit_io_resp_respInfo_dirty; // @[Slice.scala 49:26]
  wire  refillUnit_io_resp_respInfo_isHit; // @[Slice.scala 49:26]
  wire  sinkA_io_a_ready; // @[Slice.scala 50:21]
  wire  sinkA_io_a_valid; // @[Slice.scala 50:21]
  wire [2:0] sinkA_io_a_bits_opcode; // @[Slice.scala 50:21]
  wire [2:0] sinkA_io_a_bits_param; // @[Slice.scala 50:21]
  wire [2:0] sinkA_io_a_bits_size; // @[Slice.scala 50:21]
  wire [4:0] sinkA_io_a_bits_source; // @[Slice.scala 50:21]
  wire [35:0] sinkA_io_a_bits_address; // @[Slice.scala 50:21]
  wire [3:0] sinkA_io_a_bits_user_reqSource; // @[Slice.scala 50:21]
  wire  sinkA_io_task_ready; // @[Slice.scala 50:21]
  wire  sinkA_io_task_valid; // @[Slice.scala 50:21]
  wire [6:0] sinkA_io_task_bits_set; // @[Slice.scala 50:21]
  wire [21:0] sinkA_io_task_bits_tag; // @[Slice.scala 50:21]
  wire [5:0] sinkA_io_task_bits_off; // @[Slice.scala 50:21]
  wire [2:0] sinkA_io_task_bits_opcode; // @[Slice.scala 50:21]
  wire [2:0] sinkA_io_task_bits_param; // @[Slice.scala 50:21]
  wire [2:0] sinkA_io_task_bits_size; // @[Slice.scala 50:21]
  wire [4:0] sinkA_io_task_bits_sourceId; // @[Slice.scala 50:21]
  wire [3:0] sinkA_io_task_bits_reqSource; // @[Slice.scala 50:21]
  wire  sinkB_io_bready; // @[Slice.scala 51:21]
  wire  sinkB_io_bvalid; // @[Slice.scala 51:21]
  wire [2:0] sinkB_io_bopcode; // @[Slice.scala 51:21]
  wire [1:0] sinkB_io_bparam; // @[Slice.scala 51:21]
  wire [2:0] sinkB_io_bsize; // @[Slice.scala 51:21]
  wire [35:0] sinkB_io_baddress; // @[Slice.scala 51:21]
  wire [255:0] sinkB_io_bdata; // @[Slice.scala 51:21]
  wire  sinkB_io_task_ready; // @[Slice.scala 51:21]
  wire  sinkB_io_task_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_task_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_task_bits_tag; // @[Slice.scala 51:21]
  wire [5:0] sinkB_io_task_bits_off; // @[Slice.scala 51:21]
  wire [2:0] sinkB_io_task_bits_opcode; // @[Slice.scala 51:21]
  wire [2:0] sinkB_io_task_bits_param; // @[Slice.scala 51:21]
  wire [2:0] sinkB_io_task_bits_size; // @[Slice.scala 51:21]
  wire  sinkB_io_task_bits_needProbeAckData; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_0_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_0_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_0_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_0_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_0_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_0_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_0_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_1_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_1_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_1_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_1_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_1_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_1_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_1_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_2_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_2_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_2_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_2_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_2_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_2_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_2_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_3_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_3_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_3_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_3_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_3_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_3_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_3_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_4_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_4_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_4_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_4_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_4_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_4_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_4_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_5_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_5_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_5_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_5_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_5_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_5_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_5_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_6_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_6_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_6_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_6_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_6_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_6_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_6_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_7_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_7_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_7_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_7_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_7_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_7_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_7_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_8_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_8_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_8_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_8_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_8_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_8_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_8_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_9_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_9_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_9_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_9_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_9_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_9_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_9_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_10_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_10_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_10_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_10_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_10_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_10_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_10_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_11_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_11_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_11_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_11_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_11_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_11_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_11_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_12_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_12_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_12_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_12_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_12_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_12_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_12_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_13_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_13_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_13_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_13_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_13_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_13_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_13_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_14_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_14_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_14_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_14_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_14_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_14_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_14_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_15_valid; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_msInfo_15_bits_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_15_bits_reqTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_15_bits_willFree; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_msInfo_15_bits_metaTag; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_15_bits_nestB; // @[Slice.scala 51:21]
  wire  sinkB_io_msInfo_15_bits_mergeB; // @[Slice.scala 51:21]
  wire  sinkB_io_bMergeTask_valid; // @[Slice.scala 51:21]
  wire [7:0] sinkB_io_bMergeTask_bits_id; // @[Slice.scala 51:21]
  wire [6:0] sinkB_io_bMergeTask_bits_task_set; // @[Slice.scala 51:21]
  wire [21:0] sinkB_io_bMergeTask_bits_task_tag; // @[Slice.scala 51:21]
  wire [5:0] sinkB_io_bMergeTask_bits_task_off; // @[Slice.scala 51:21]
  wire [2:0] sinkB_io_bMergeTask_bits_task_param; // @[Slice.scala 51:21]
  wire  sinkB_io_bMergeTask_bits_task_needProbeAckData; // @[Slice.scala 51:21]
  wire  sinkC_clock; // @[Slice.scala 52:21]
  wire  sinkC_reset; // @[Slice.scala 52:21]
  wire  sinkC_io_c_ready; // @[Slice.scala 52:21]
  wire  sinkC_io_c_valid; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_c_bits_opcode; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_c_bits_param; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_c_bits_size; // @[Slice.scala 52:21]
  wire [4:0] sinkC_io_c_bits_source; // @[Slice.scala 52:21]
  wire [35:0] sinkC_io_c_bits_address; // @[Slice.scala 52:21]
  wire [255:0] sinkC_io_c_bits_data; // @[Slice.scala 52:21]
  wire  sinkC_io_task_ready; // @[Slice.scala 52:21]
  wire  sinkC_io_task_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_task_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_task_bits_tag; // @[Slice.scala 52:21]
  wire [5:0] sinkC_io_task_bits_off; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_task_bits_opcode; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_task_bits_param; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_task_bits_size; // @[Slice.scala 52:21]
  wire [4:0] sinkC_io_task_bits_sourceId; // @[Slice.scala 52:21]
  wire [1:0] sinkC_io_task_bits_bufIdx; // @[Slice.scala 52:21]
  wire  sinkC_io_resp_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_resp_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_resp_tag; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_resp_respInfo_opcode; // @[Slice.scala 52:21]
  wire [2:0] sinkC_io_resp_respInfo_param; // @[Slice.scala 52:21]
  wire  sinkC_io_resp_respInfo_last; // @[Slice.scala 52:21]
  wire  sinkC_io_releaseBufWrite_valid; // @[Slice.scala 52:21]
  wire [1:0] sinkC_io_releaseBufWrite_beat_sel; // @[Slice.scala 52:21]
  wire [511:0] sinkC_io_releaseBufWrite_data_data; // @[Slice.scala 52:21]
  wire  sinkC_io_bufRead_valid; // @[Slice.scala 52:21]
  wire [1:0] sinkC_io_bufRead_bits_bufIdx; // @[Slice.scala 52:21]
  wire [255:0] sinkC_io_bufResp_data_0; // @[Slice.scala 52:21]
  wire [255:0] sinkC_io_bufResp_data_1; // @[Slice.scala 52:21]
  wire  sinkC_io_refillBufWrite_valid; // @[Slice.scala 52:21]
  wire [511:0] sinkC_io_refillBufWrite_data_data; // @[Slice.scala 52:21]
  wire [7:0] sinkC_io_refillBufWrite_id; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_0_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_0_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_0_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_1_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_1_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_1_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_2_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_2_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_2_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_3_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_3_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_3_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_4_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_4_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_4_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_5_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_5_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_5_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_6_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_6_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_6_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_7_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_7_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_7_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_8_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_8_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_8_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_9_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_9_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_9_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_10_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_10_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_10_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_11_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_11_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_11_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_12_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_12_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_12_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_13_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_13_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_13_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_14_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_14_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_14_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_15_valid; // @[Slice.scala 52:21]
  wire [6:0] sinkC_io_msInfo_15_bits_set; // @[Slice.scala 52:21]
  wire [21:0] sinkC_io_msInfo_15_bits_reqTag; // @[Slice.scala 52:21]
  wire  sinkC_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 52:21]
  wire  sourceC_clock; // @[Slice.scala 53:23]
  wire  sourceC_reset; // @[Slice.scala 53:23]
  wire  sourceC_io_in_ready; // @[Slice.scala 53:23]
  wire  sourceC_io_in_valid; // @[Slice.scala 53:23]
  wire [6:0] sourceC_io_in_bits_task_set; // @[Slice.scala 53:23]
  wire [21:0] sourceC_io_in_bits_task_tag; // @[Slice.scala 53:23]
  wire [5:0] sourceC_io_in_bits_task_off; // @[Slice.scala 53:23]
  wire [2:0] sourceC_io_in_bits_task_opcode; // @[Slice.scala 53:23]
  wire [2:0] sourceC_io_in_bits_task_param; // @[Slice.scala 53:23]
  wire [7:0] sourceC_io_in_bits_task_mshrId; // @[Slice.scala 53:23]
  wire  sourceC_io_in_bits_task_dirty; // @[Slice.scala 53:23]
  wire [511:0] sourceC_io_in_bits_data_data; // @[Slice.scala 53:23]
  wire  sourceC_io_out_ready; // @[Slice.scala 53:23]
  wire  sourceC_io_out_valid; // @[Slice.scala 53:23]
  wire [2:0] sourceC_io_out_bits_opcode; // @[Slice.scala 53:23]
  wire [2:0] sourceC_io_out_bits_param; // @[Slice.scala 53:23]
  wire [7:0] sourceC_io_out_bits_source; // @[Slice.scala 53:23]
  wire [35:0] sourceC_io_out_bits_address; // @[Slice.scala 53:23]
  wire  sourceC_io_out_bits_echo_blockisdirty; // @[Slice.scala 53:23]
  wire [255:0] sourceC_io_out_bits_data; // @[Slice.scala 53:23]
  wire  grantBuf_clock; // @[Slice.scala 54:24]
  wire  grantBuf_reset; // @[Slice.scala 54:24]
  wire  grantBuf_io_d_task_ready; // @[Slice.scala 54:24]
  wire  grantBuf_io_d_task_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_d_task_bits_task_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_d_task_bits_task_tag; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_d_task_bits_task_opcode; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_d_task_bits_task_param; // @[Slice.scala 54:24]
  wire [4:0] grantBuf_io_d_task_bits_task_sourceId; // @[Slice.scala 54:24]
  wire [7:0] grantBuf_io_d_task_bits_task_mshrId; // @[Slice.scala 54:24]
  wire [511:0] grantBuf_io_d_task_bits_data_data; // @[Slice.scala 54:24]
  wire  grantBuf_io_d_ready; // @[Slice.scala 54:24]
  wire  grantBuf_io_d_valid; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_d_bits_opcode; // @[Slice.scala 54:24]
  wire [1:0] grantBuf_io_d_bits_param; // @[Slice.scala 54:24]
  wire [4:0] grantBuf_io_d_bits_source; // @[Slice.scala 54:24]
  wire [7:0] grantBuf_io_d_bits_sink; // @[Slice.scala 54:24]
  wire [255:0] grantBuf_io_d_bits_data; // @[Slice.scala 54:24]
  wire  grantBuf_io_e_ready; // @[Slice.scala 54:24]
  wire  grantBuf_io_e_valid; // @[Slice.scala 54:24]
  wire [7:0] grantBuf_io_e_bits_sink; // @[Slice.scala 54:24]
  wire  grantBuf_io_e_resp_valid; // @[Slice.scala 54:24]
  wire [7:0] grantBuf_io_e_resp_mshrId; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_fromReqArb_status_s1_tags_1; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_fromReqArb_status_s1_sets_1; // @[Slice.scala 54:24]
  wire  grantBuf_io_pipeStatusVec_0_valid; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_pipeStatusVec_0_bits_channel; // @[Slice.scala 54:24]
  wire  grantBuf_io_pipeStatusVec_1_valid; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_pipeStatusVec_1_bits_channel; // @[Slice.scala 54:24]
  wire  grantBuf_io_pipeStatusVec_2_valid; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_pipeStatusVec_2_bits_channel; // @[Slice.scala 54:24]
  wire  grantBuf_io_pipeStatusVec_3_valid; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_pipeStatusVec_3_bits_channel; // @[Slice.scala 54:24]
  wire  grantBuf_io_pipeStatusVec_4_valid; // @[Slice.scala 54:24]
  wire [2:0] grantBuf_io_pipeStatusVec_4_bits_channel; // @[Slice.scala 54:24]
  wire  grantBuf_io_toReqArb_blockSinkReqEntrance_blockA_s1; // @[Slice.scala 54:24]
  wire  grantBuf_io_toReqArb_blockSinkReqEntrance_blockB_s1; // @[Slice.scala 54:24]
  wire  grantBuf_io_toReqArb_blockSinkReqEntrance_blockC_s1; // @[Slice.scala 54:24]
  wire  grantBuf_io_toReqArb_blockMSHRReqEntrance; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_0_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_0_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_0_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_1_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_1_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_1_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_2_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_2_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_2_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_3_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_3_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_3_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_4_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_4_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_4_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_5_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_5_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_5_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_6_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_6_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_6_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_7_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_7_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_7_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_8_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_8_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_8_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_9_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_9_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_9_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_10_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_10_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_10_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_11_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_11_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_11_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_12_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_12_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_12_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_13_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_13_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_13_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_14_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_14_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_14_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_grantStatus_15_valid; // @[Slice.scala 54:24]
  wire [6:0] grantBuf_io_grantStatus_15_set; // @[Slice.scala 54:24]
  wire [21:0] grantBuf_io_grantStatus_15_tag; // @[Slice.scala 54:24]
  wire  grantBuf_io_l1Hint_valid; // @[Slice.scala 54:24]
  wire [31:0] grantBuf_io_l1Hint_bits_sourceId; // @[Slice.scala 54:24]
  wire [4:0] grantBuf_io_globalCounter; // @[Slice.scala 54:24]
  wire  refillBuf_clock; // @[Slice.scala 55:25]
  wire  refillBuf_reset; // @[Slice.scala 55:25]
  wire  refillBuf_io_rvalid; // @[Slice.scala 55:25]
  wire [7:0] refillBuf_io_rid; // @[Slice.scala 55:25]
  wire [511:0] refillBuf_io_rdata_data; // @[Slice.scala 55:25]
  wire  refillBuf_io_w0_valid; // @[Slice.scala 55:25]
  wire [1:0] refillBuf_io_w0_beat_sel; // @[Slice.scala 55:25]
  wire [511:0] refillBuf_io_w0_data_data; // @[Slice.scala 55:25]
  wire [7:0] refillBuf_io_w0_id; // @[Slice.scala 55:25]
  wire  refillBuf_io_w1_valid; // @[Slice.scala 55:25]
  wire [1:0] refillBuf_io_w1_beat_sel; // @[Slice.scala 55:25]
  wire [511:0] refillBuf_io_w1_data_data; // @[Slice.scala 55:25]
  wire [7:0] refillBuf_io_w1_id; // @[Slice.scala 55:25]
  wire  refillBuf_io_w2_valid; // @[Slice.scala 55:25]
  wire [511:0] refillBuf_io_w2_data_data; // @[Slice.scala 55:25]
  wire [7:0] refillBuf_io_w2_id; // @[Slice.scala 55:25]
  wire  releaseBuf_clock; // @[Slice.scala 56:26]
  wire  releaseBuf_reset; // @[Slice.scala 56:26]
  wire  releaseBuf_io_rvalid; // @[Slice.scala 56:26]
  wire [7:0] releaseBuf_io_rid; // @[Slice.scala 56:26]
  wire [511:0] releaseBuf_io_rdata_data; // @[Slice.scala 56:26]
  wire  releaseBuf_io_w0_valid; // @[Slice.scala 56:26]
  wire [1:0] releaseBuf_io_w0_beat_sel; // @[Slice.scala 56:26]
  wire [511:0] releaseBuf_io_w0_data_data; // @[Slice.scala 56:26]
  wire [7:0] releaseBuf_io_w0_id; // @[Slice.scala 56:26]
  wire  releaseBuf_io_w1_valid; // @[Slice.scala 56:26]
  wire [1:0] releaseBuf_io_w1_beat_sel; // @[Slice.scala 56:26]
  wire [511:0] releaseBuf_io_w1_data_data; // @[Slice.scala 56:26]
  wire [7:0] releaseBuf_io_w1_id; // @[Slice.scala 56:26]
  wire  releaseBuf_io_w2_valid; // @[Slice.scala 56:26]
  wire [511:0] releaseBuf_io_w2_data_data; // @[Slice.scala 56:26]
  wire [7:0] releaseBuf_io_w2_id; // @[Slice.scala 56:26]
  wire  io_out_a_q_clock; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_reset; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] io_out_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] io_out_a_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] io_out_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] io_out_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] io_out_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [31:0] io_out_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] io_out_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] io_out_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] io_out_a_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] io_out_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] io_out_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] io_out_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [31:0] io_out_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] io_out_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  io_out_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  sinkB_io_bq_clock; // @[Decoupled.scala 361:21]
  wire  sinkB_io_bq_reset; // @[Decoupled.scala 361:21]
  wire  sinkB_io_bq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  sinkB_io_bq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] sinkB_io_bq_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] sinkB_io_bq_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] sinkB_io_bq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [35:0] sinkB_io_bq_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] sinkB_io_bq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  sinkB_io_bq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  sinkB_io_bq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] sinkB_io_bq_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] sinkB_io_bq_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] sinkB_io_bq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [35:0] sinkB_io_bq_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] sinkB_io_bq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_clock; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_reset; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] refillUnit_io_sinkD_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] refillUnit_io_sinkD_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] refillUnit_io_sinkD_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] refillUnit_io_sinkD_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] refillUnit_io_sinkD_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] refillUnit_io_sinkD_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] refillUnit_io_sinkD_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] refillUnit_io_sinkD_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] refillUnit_io_sinkD_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] refillUnit_io_sinkD_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] refillUnit_io_sinkD_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  refillUnit_io_sinkD_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] refillUnit_io_sinkD_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  io_out_e_q_clock; // @[Decoupled.scala 361:21]
  wire  io_out_e_q_reset; // @[Decoupled.scala 361:21]
  wire  io_out_e_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  io_out_e_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] io_out_e_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  io_out_e_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  io_out_e_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] io_out_e_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  reg  mainPipe_io_releaseBufResp_s3_valid_REG; // @[Slice.scala 108:49]
  RequestArb reqArb ( // @[Slice.scala 43:22]
    .clock(reqArb_clock),
    .reset(reqArb_reset),
    .io_sinkA_ready(reqArb_io_sinkA_ready),
    .io_sinkA_valid(reqArb_io_sinkA_valid),
    .io_sinkA_bits_channel(reqArb_io_sinkA_bits_channel),
    .io_sinkA_bits_set(reqArb_io_sinkA_bits_set),
    .io_sinkA_bits_tag(reqArb_io_sinkA_bits_tag),
    .io_sinkA_bits_off(reqArb_io_sinkA_bits_off),
    .io_sinkA_bits_opcode(reqArb_io_sinkA_bits_opcode),
    .io_sinkA_bits_param(reqArb_io_sinkA_bits_param),
    .io_sinkA_bits_size(reqArb_io_sinkA_bits_size),
    .io_sinkA_bits_sourceId(reqArb_io_sinkA_bits_sourceId),
    .io_sinkA_bits_bufIdx(reqArb_io_sinkA_bits_bufIdx),
    .io_sinkA_bits_needProbeAckData(reqArb_io_sinkA_bits_needProbeAckData),
    .io_sinkA_bits_mshrTask(reqArb_io_sinkA_bits_mshrTask),
    .io_sinkA_bits_mshrId(reqArb_io_sinkA_bits_mshrId),
    .io_sinkA_bits_useProbeData(reqArb_io_sinkA_bits_useProbeData),
    .io_sinkA_bits_dirty(reqArb_io_sinkA_bits_dirty),
    .io_sinkA_bits_way(reqArb_io_sinkA_bits_way),
    .io_sinkA_bits_meta_dirty(reqArb_io_sinkA_bits_meta_dirty),
    .io_sinkA_bits_meta_state(reqArb_io_sinkA_bits_meta_state),
    .io_sinkA_bits_meta_clients(reqArb_io_sinkA_bits_meta_clients),
    .io_sinkA_bits_meta_accessed(reqArb_io_sinkA_bits_meta_accessed),
    .io_sinkA_bits_metaWen(reqArb_io_sinkA_bits_metaWen),
    .io_sinkA_bits_tagWen(reqArb_io_sinkA_bits_tagWen),
    .io_sinkA_bits_dsWen(reqArb_io_sinkA_bits_dsWen),
    .io_sinkA_bits_wayMask(reqArb_io_sinkA_bits_wayMask),
    .io_sinkA_bits_replTask(reqArb_io_sinkA_bits_replTask),
    .io_sinkA_bits_reqSource(reqArb_io_sinkA_bits_reqSource),
    .io_ATag(reqArb_io_ATag),
    .io_ASet(reqArb_io_ASet),
    .io_s1Entrance_valid(reqArb_io_s1Entrance_valid),
    .io_s1Entrance_bits_set(reqArb_io_s1Entrance_bits_set),
    .io_sinkB_ready(reqArb_io_sinkB_ready),
    .io_sinkB_valid(reqArb_io_sinkB_valid),
    .io_sinkB_bits_channel(reqArb_io_sinkB_bits_channel),
    .io_sinkB_bits_set(reqArb_io_sinkB_bits_set),
    .io_sinkB_bits_tag(reqArb_io_sinkB_bits_tag),
    .io_sinkB_bits_off(reqArb_io_sinkB_bits_off),
    .io_sinkB_bits_opcode(reqArb_io_sinkB_bits_opcode),
    .io_sinkB_bits_param(reqArb_io_sinkB_bits_param),
    .io_sinkB_bits_size(reqArb_io_sinkB_bits_size),
    .io_sinkB_bits_sourceId(reqArb_io_sinkB_bits_sourceId),
    .io_sinkB_bits_bufIdx(reqArb_io_sinkB_bits_bufIdx),
    .io_sinkB_bits_needProbeAckData(reqArb_io_sinkB_bits_needProbeAckData),
    .io_sinkB_bits_mshrTask(reqArb_io_sinkB_bits_mshrTask),
    .io_sinkB_bits_mshrId(reqArb_io_sinkB_bits_mshrId),
    .io_sinkB_bits_useProbeData(reqArb_io_sinkB_bits_useProbeData),
    .io_sinkB_bits_dirty(reqArb_io_sinkB_bits_dirty),
    .io_sinkB_bits_way(reqArb_io_sinkB_bits_way),
    .io_sinkB_bits_meta_dirty(reqArb_io_sinkB_bits_meta_dirty),
    .io_sinkB_bits_meta_state(reqArb_io_sinkB_bits_meta_state),
    .io_sinkB_bits_meta_clients(reqArb_io_sinkB_bits_meta_clients),
    .io_sinkB_bits_meta_accessed(reqArb_io_sinkB_bits_meta_accessed),
    .io_sinkB_bits_metaWen(reqArb_io_sinkB_bits_metaWen),
    .io_sinkB_bits_tagWen(reqArb_io_sinkB_bits_tagWen),
    .io_sinkB_bits_dsWen(reqArb_io_sinkB_bits_dsWen),
    .io_sinkB_bits_wayMask(reqArb_io_sinkB_bits_wayMask),
    .io_sinkB_bits_replTask(reqArb_io_sinkB_bits_replTask),
    .io_sinkB_bits_reqSource(reqArb_io_sinkB_bits_reqSource),
    .io_sinkC_ready(reqArb_io_sinkC_ready),
    .io_sinkC_valid(reqArb_io_sinkC_valid),
    .io_sinkC_bits_channel(reqArb_io_sinkC_bits_channel),
    .io_sinkC_bits_set(reqArb_io_sinkC_bits_set),
    .io_sinkC_bits_tag(reqArb_io_sinkC_bits_tag),
    .io_sinkC_bits_off(reqArb_io_sinkC_bits_off),
    .io_sinkC_bits_opcode(reqArb_io_sinkC_bits_opcode),
    .io_sinkC_bits_param(reqArb_io_sinkC_bits_param),
    .io_sinkC_bits_size(reqArb_io_sinkC_bits_size),
    .io_sinkC_bits_sourceId(reqArb_io_sinkC_bits_sourceId),
    .io_sinkC_bits_bufIdx(reqArb_io_sinkC_bits_bufIdx),
    .io_sinkC_bits_needProbeAckData(reqArb_io_sinkC_bits_needProbeAckData),
    .io_sinkC_bits_mshrTask(reqArb_io_sinkC_bits_mshrTask),
    .io_sinkC_bits_mshrId(reqArb_io_sinkC_bits_mshrId),
    .io_sinkC_bits_useProbeData(reqArb_io_sinkC_bits_useProbeData),
    .io_sinkC_bits_dirty(reqArb_io_sinkC_bits_dirty),
    .io_sinkC_bits_way(reqArb_io_sinkC_bits_way),
    .io_sinkC_bits_meta_dirty(reqArb_io_sinkC_bits_meta_dirty),
    .io_sinkC_bits_meta_state(reqArb_io_sinkC_bits_meta_state),
    .io_sinkC_bits_meta_clients(reqArb_io_sinkC_bits_meta_clients),
    .io_sinkC_bits_meta_accessed(reqArb_io_sinkC_bits_meta_accessed),
    .io_sinkC_bits_metaWen(reqArb_io_sinkC_bits_metaWen),
    .io_sinkC_bits_tagWen(reqArb_io_sinkC_bits_tagWen),
    .io_sinkC_bits_dsWen(reqArb_io_sinkC_bits_dsWen),
    .io_sinkC_bits_wayMask(reqArb_io_sinkC_bits_wayMask),
    .io_sinkC_bits_replTask(reqArb_io_sinkC_bits_replTask),
    .io_sinkC_bits_reqSource(reqArb_io_sinkC_bits_reqSource),
    .io_mshrTask_ready(reqArb_io_mshrTask_ready),
    .io_mshrTask_valid(reqArb_io_mshrTask_valid),
    .io_mshrTask_bits_channel(reqArb_io_mshrTask_bits_channel),
    .io_mshrTask_bits_set(reqArb_io_mshrTask_bits_set),
    .io_mshrTask_bits_tag(reqArb_io_mshrTask_bits_tag),
    .io_mshrTask_bits_off(reqArb_io_mshrTask_bits_off),
    .io_mshrTask_bits_opcode(reqArb_io_mshrTask_bits_opcode),
    .io_mshrTask_bits_param(reqArb_io_mshrTask_bits_param),
    .io_mshrTask_bits_size(reqArb_io_mshrTask_bits_size),
    .io_mshrTask_bits_sourceId(reqArb_io_mshrTask_bits_sourceId),
    .io_mshrTask_bits_bufIdx(reqArb_io_mshrTask_bits_bufIdx),
    .io_mshrTask_bits_needProbeAckData(reqArb_io_mshrTask_bits_needProbeAckData),
    .io_mshrTask_bits_mshrTask(reqArb_io_mshrTask_bits_mshrTask),
    .io_mshrTask_bits_mshrId(reqArb_io_mshrTask_bits_mshrId),
    .io_mshrTask_bits_useProbeData(reqArb_io_mshrTask_bits_useProbeData),
    .io_mshrTask_bits_dirty(reqArb_io_mshrTask_bits_dirty),
    .io_mshrTask_bits_way(reqArb_io_mshrTask_bits_way),
    .io_mshrTask_bits_meta_dirty(reqArb_io_mshrTask_bits_meta_dirty),
    .io_mshrTask_bits_meta_state(reqArb_io_mshrTask_bits_meta_state),
    .io_mshrTask_bits_meta_clients(reqArb_io_mshrTask_bits_meta_clients),
    .io_mshrTask_bits_meta_accessed(reqArb_io_mshrTask_bits_meta_accessed),
    .io_mshrTask_bits_metaWen(reqArb_io_mshrTask_bits_metaWen),
    .io_mshrTask_bits_tagWen(reqArb_io_mshrTask_bits_tagWen),
    .io_mshrTask_bits_dsWen(reqArb_io_mshrTask_bits_dsWen),
    .io_mshrTask_bits_wayMask(reqArb_io_mshrTask_bits_wayMask),
    .io_mshrTask_bits_replTask(reqArb_io_mshrTask_bits_replTask),
    .io_mshrTask_bits_reqSource(reqArb_io_mshrTask_bits_reqSource),
    .io_dirRead_s1_ready(reqArb_io_dirRead_s1_ready),
    .io_dirRead_s1_valid(reqArb_io_dirRead_s1_valid),
    .io_dirRead_s1_bits_tag(reqArb_io_dirRead_s1_bits_tag),
    .io_dirRead_s1_bits_set(reqArb_io_dirRead_s1_bits_set),
    .io_dirRead_s1_bits_wayMask(reqArb_io_dirRead_s1_bits_wayMask),
    .io_dirRead_s1_bits_replacerInfo_channel(reqArb_io_dirRead_s1_bits_replacerInfo_channel),
    .io_dirRead_s1_bits_replacerInfo_opcode(reqArb_io_dirRead_s1_bits_replacerInfo_opcode),
    .io_dirRead_s1_bits_replacerInfo_reqSource(reqArb_io_dirRead_s1_bits_replacerInfo_reqSource),
    .io_dirRead_s1_bits_refill(reqArb_io_dirRead_s1_bits_refill),
    .io_dirRead_s1_bits_mshrId(reqArb_io_dirRead_s1_bits_mshrId),
    .io_taskToPipe_s2_valid(reqArb_io_taskToPipe_s2_valid),
    .io_taskToPipe_s2_bits_channel(reqArb_io_taskToPipe_s2_bits_channel),
    .io_taskToPipe_s2_bits_set(reqArb_io_taskToPipe_s2_bits_set),
    .io_taskToPipe_s2_bits_tag(reqArb_io_taskToPipe_s2_bits_tag),
    .io_taskToPipe_s2_bits_off(reqArb_io_taskToPipe_s2_bits_off),
    .io_taskToPipe_s2_bits_opcode(reqArb_io_taskToPipe_s2_bits_opcode),
    .io_taskToPipe_s2_bits_param(reqArb_io_taskToPipe_s2_bits_param),
    .io_taskToPipe_s2_bits_size(reqArb_io_taskToPipe_s2_bits_size),
    .io_taskToPipe_s2_bits_sourceId(reqArb_io_taskToPipe_s2_bits_sourceId),
    .io_taskToPipe_s2_bits_bufIdx(reqArb_io_taskToPipe_s2_bits_bufIdx),
    .io_taskToPipe_s2_bits_needProbeAckData(reqArb_io_taskToPipe_s2_bits_needProbeAckData),
    .io_taskToPipe_s2_bits_mshrTask(reqArb_io_taskToPipe_s2_bits_mshrTask),
    .io_taskToPipe_s2_bits_mshrId(reqArb_io_taskToPipe_s2_bits_mshrId),
    .io_taskToPipe_s2_bits_useProbeData(reqArb_io_taskToPipe_s2_bits_useProbeData),
    .io_taskToPipe_s2_bits_dirty(reqArb_io_taskToPipe_s2_bits_dirty),
    .io_taskToPipe_s2_bits_way(reqArb_io_taskToPipe_s2_bits_way),
    .io_taskToPipe_s2_bits_meta_dirty(reqArb_io_taskToPipe_s2_bits_meta_dirty),
    .io_taskToPipe_s2_bits_meta_state(reqArb_io_taskToPipe_s2_bits_meta_state),
    .io_taskToPipe_s2_bits_meta_clients(reqArb_io_taskToPipe_s2_bits_meta_clients),
    .io_taskToPipe_s2_bits_meta_accessed(reqArb_io_taskToPipe_s2_bits_meta_accessed),
    .io_taskToPipe_s2_bits_metaWen(reqArb_io_taskToPipe_s2_bits_metaWen),
    .io_taskToPipe_s2_bits_tagWen(reqArb_io_taskToPipe_s2_bits_tagWen),
    .io_taskToPipe_s2_bits_dsWen(reqArb_io_taskToPipe_s2_bits_dsWen),
    .io_taskToPipe_s2_bits_wayMask(reqArb_io_taskToPipe_s2_bits_wayMask),
    .io_taskToPipe_s2_bits_replTask(reqArb_io_taskToPipe_s2_bits_replTask),
    .io_taskToPipe_s2_bits_reqSource(reqArb_io_taskToPipe_s2_bits_reqSource),
    .io_taskInfo_s1_valid(reqArb_io_taskInfo_s1_valid),
    .io_taskInfo_s1_bits_channel(reqArb_io_taskInfo_s1_bits_channel),
    .io_taskInfo_s1_bits_set(reqArb_io_taskInfo_s1_bits_set),
    .io_taskInfo_s1_bits_tag(reqArb_io_taskInfo_s1_bits_tag),
    .io_taskInfo_s1_bits_off(reqArb_io_taskInfo_s1_bits_off),
    .io_taskInfo_s1_bits_opcode(reqArb_io_taskInfo_s1_bits_opcode),
    .io_taskInfo_s1_bits_param(reqArb_io_taskInfo_s1_bits_param),
    .io_taskInfo_s1_bits_size(reqArb_io_taskInfo_s1_bits_size),
    .io_taskInfo_s1_bits_sourceId(reqArb_io_taskInfo_s1_bits_sourceId),
    .io_taskInfo_s1_bits_bufIdx(reqArb_io_taskInfo_s1_bits_bufIdx),
    .io_taskInfo_s1_bits_needProbeAckData(reqArb_io_taskInfo_s1_bits_needProbeAckData),
    .io_taskInfo_s1_bits_mshrTask(reqArb_io_taskInfo_s1_bits_mshrTask),
    .io_taskInfo_s1_bits_mshrId(reqArb_io_taskInfo_s1_bits_mshrId),
    .io_taskInfo_s1_bits_useProbeData(reqArb_io_taskInfo_s1_bits_useProbeData),
    .io_taskInfo_s1_bits_dirty(reqArb_io_taskInfo_s1_bits_dirty),
    .io_taskInfo_s1_bits_way(reqArb_io_taskInfo_s1_bits_way),
    .io_taskInfo_s1_bits_meta_dirty(reqArb_io_taskInfo_s1_bits_meta_dirty),
    .io_taskInfo_s1_bits_meta_state(reqArb_io_taskInfo_s1_bits_meta_state),
    .io_taskInfo_s1_bits_meta_clients(reqArb_io_taskInfo_s1_bits_meta_clients),
    .io_taskInfo_s1_bits_meta_accessed(reqArb_io_taskInfo_s1_bits_meta_accessed),
    .io_taskInfo_s1_bits_metaWen(reqArb_io_taskInfo_s1_bits_metaWen),
    .io_taskInfo_s1_bits_tagWen(reqArb_io_taskInfo_s1_bits_tagWen),
    .io_taskInfo_s1_bits_dsWen(reqArb_io_taskInfo_s1_bits_dsWen),
    .io_taskInfo_s1_bits_wayMask(reqArb_io_taskInfo_s1_bits_wayMask),
    .io_taskInfo_s1_bits_replTask(reqArb_io_taskInfo_s1_bits_replTask),
    .io_taskInfo_s1_bits_reqSource(reqArb_io_taskInfo_s1_bits_reqSource),
    .io_refillBufRead_s2_valid(reqArb_io_refillBufRead_s2_valid),
    .io_refillBufRead_s2_id(reqArb_io_refillBufRead_s2_id),
    .io_refillBufRead_s2_ready(reqArb_io_refillBufRead_s2_ready),
    .io_refillBufRead_s2_data_data(reqArb_io_refillBufRead_s2_data_data),
    .io_releaseBufRead_s2_valid(reqArb_io_releaseBufRead_s2_valid),
    .io_releaseBufRead_s2_id(reqArb_io_releaseBufRead_s2_id),
    .io_releaseBufRead_s2_ready(reqArb_io_releaseBufRead_s2_ready),
    .io_releaseBufRead_s2_data_data(reqArb_io_releaseBufRead_s2_data_data),
    .io_status_s1_tags_0(reqArb_io_status_s1_tags_0),
    .io_status_s1_tags_1(reqArb_io_status_s1_tags_1),
    .io_status_s1_tags_2(reqArb_io_status_s1_tags_2),
    .io_status_s1_tags_3(reqArb_io_status_s1_tags_3),
    .io_status_s1_sets_0(reqArb_io_status_s1_sets_0),
    .io_status_s1_sets_1(reqArb_io_status_s1_sets_1),
    .io_status_s1_sets_2(reqArb_io_status_s1_sets_2),
    .io_status_s1_sets_3(reqArb_io_status_s1_sets_3),
    .io_status_vec_0_valid(reqArb_io_status_vec_0_valid),
    .io_status_vec_0_bits_channel(reqArb_io_status_vec_0_bits_channel),
    .io_status_vec_1_valid(reqArb_io_status_vec_1_valid),
    .io_status_vec_1_bits_channel(reqArb_io_status_vec_1_bits_channel),
    .io_fromMSHRCtl_blockG_s1(reqArb_io_fromMSHRCtl_blockG_s1),
    .io_fromMSHRCtl_blockA_s1(reqArb_io_fromMSHRCtl_blockA_s1),
    .io_fromMSHRCtl_blockB_s1(reqArb_io_fromMSHRCtl_blockB_s1),
    .io_fromMSHRCtl_blockC_s1(reqArb_io_fromMSHRCtl_blockC_s1),
    .io_fromMainPipe_blockG_s1(reqArb_io_fromMainPipe_blockG_s1),
    .io_fromMainPipe_blockA_s1(reqArb_io_fromMainPipe_blockA_s1),
    .io_fromMainPipe_blockB_s1(reqArb_io_fromMainPipe_blockB_s1),
    .io_fromMainPipe_blockC_s1(reqArb_io_fromMainPipe_blockC_s1),
    .io_fromGrantBuffer_blockSinkReqEntrance_blockG_s1(reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockG_s1),
    .io_fromGrantBuffer_blockSinkReqEntrance_blockA_s1(reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockA_s1),
    .io_fromGrantBuffer_blockSinkReqEntrance_blockB_s1(reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockB_s1),
    .io_fromGrantBuffer_blockSinkReqEntrance_blockC_s1(reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockC_s1),
    .io_fromGrantBuffer_blockMSHRReqEntrance(reqArb_io_fromGrantBuffer_blockMSHRReqEntrance)
  );
  RequestBuffer a_reqBuf ( // @[Slice.scala 44:24]
    .clock(a_reqBuf_clock),
    .reset(a_reqBuf_reset),
    .io_in_ready(a_reqBuf_io_in_ready),
    .io_in_valid(a_reqBuf_io_in_valid),
    .io_in_bits_set(a_reqBuf_io_in_bits_set),
    .io_in_bits_tag(a_reqBuf_io_in_bits_tag),
    .io_in_bits_off(a_reqBuf_io_in_bits_off),
    .io_in_bits_opcode(a_reqBuf_io_in_bits_opcode),
    .io_in_bits_param(a_reqBuf_io_in_bits_param),
    .io_in_bits_size(a_reqBuf_io_in_bits_size),
    .io_in_bits_sourceId(a_reqBuf_io_in_bits_sourceId),
    .io_in_bits_reqSource(a_reqBuf_io_in_bits_reqSource),
    .io_out_ready(a_reqBuf_io_out_ready),
    .io_out_valid(a_reqBuf_io_out_valid),
    .io_out_bits_channel(a_reqBuf_io_out_bits_channel),
    .io_out_bits_set(a_reqBuf_io_out_bits_set),
    .io_out_bits_tag(a_reqBuf_io_out_bits_tag),
    .io_out_bits_off(a_reqBuf_io_out_bits_off),
    .io_out_bits_opcode(a_reqBuf_io_out_bits_opcode),
    .io_out_bits_param(a_reqBuf_io_out_bits_param),
    .io_out_bits_size(a_reqBuf_io_out_bits_size),
    .io_out_bits_sourceId(a_reqBuf_io_out_bits_sourceId),
    .io_out_bits_bufIdx(a_reqBuf_io_out_bits_bufIdx),
    .io_out_bits_needProbeAckData(a_reqBuf_io_out_bits_needProbeAckData),
    .io_out_bits_mshrTask(a_reqBuf_io_out_bits_mshrTask),
    .io_out_bits_mshrId(a_reqBuf_io_out_bits_mshrId),
    .io_out_bits_useProbeData(a_reqBuf_io_out_bits_useProbeData),
    .io_out_bits_dirty(a_reqBuf_io_out_bits_dirty),
    .io_out_bits_way(a_reqBuf_io_out_bits_way),
    .io_out_bits_meta_dirty(a_reqBuf_io_out_bits_meta_dirty),
    .io_out_bits_meta_state(a_reqBuf_io_out_bits_meta_state),
    .io_out_bits_meta_clients(a_reqBuf_io_out_bits_meta_clients),
    .io_out_bits_meta_accessed(a_reqBuf_io_out_bits_meta_accessed),
    .io_out_bits_metaWen(a_reqBuf_io_out_bits_metaWen),
    .io_out_bits_tagWen(a_reqBuf_io_out_bits_tagWen),
    .io_out_bits_dsWen(a_reqBuf_io_out_bits_dsWen),
    .io_out_bits_replTask(a_reqBuf_io_out_bits_replTask),
    .io_out_bits_reqSource(a_reqBuf_io_out_bits_reqSource),
    .io_mshrInfo_0_valid(a_reqBuf_io_mshrInfo_0_valid),
    .io_mshrInfo_0_bits_set(a_reqBuf_io_mshrInfo_0_bits_set),
    .io_mshrInfo_0_bits_reqTag(a_reqBuf_io_mshrInfo_0_bits_reqTag),
    .io_mshrInfo_0_bits_willFree(a_reqBuf_io_mshrInfo_0_bits_willFree),
    .io_mshrInfo_0_bits_needRelease(a_reqBuf_io_mshrInfo_0_bits_needRelease),
    .io_mshrInfo_0_bits_metaTag(a_reqBuf_io_mshrInfo_0_bits_metaTag),
    .io_mshrInfo_0_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_0_bits_isAcqOrPrefetch),
    .io_mshrInfo_1_valid(a_reqBuf_io_mshrInfo_1_valid),
    .io_mshrInfo_1_bits_set(a_reqBuf_io_mshrInfo_1_bits_set),
    .io_mshrInfo_1_bits_reqTag(a_reqBuf_io_mshrInfo_1_bits_reqTag),
    .io_mshrInfo_1_bits_willFree(a_reqBuf_io_mshrInfo_1_bits_willFree),
    .io_mshrInfo_1_bits_needRelease(a_reqBuf_io_mshrInfo_1_bits_needRelease),
    .io_mshrInfo_1_bits_metaTag(a_reqBuf_io_mshrInfo_1_bits_metaTag),
    .io_mshrInfo_1_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_1_bits_isAcqOrPrefetch),
    .io_mshrInfo_2_valid(a_reqBuf_io_mshrInfo_2_valid),
    .io_mshrInfo_2_bits_set(a_reqBuf_io_mshrInfo_2_bits_set),
    .io_mshrInfo_2_bits_reqTag(a_reqBuf_io_mshrInfo_2_bits_reqTag),
    .io_mshrInfo_2_bits_willFree(a_reqBuf_io_mshrInfo_2_bits_willFree),
    .io_mshrInfo_2_bits_needRelease(a_reqBuf_io_mshrInfo_2_bits_needRelease),
    .io_mshrInfo_2_bits_metaTag(a_reqBuf_io_mshrInfo_2_bits_metaTag),
    .io_mshrInfo_2_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_2_bits_isAcqOrPrefetch),
    .io_mshrInfo_3_valid(a_reqBuf_io_mshrInfo_3_valid),
    .io_mshrInfo_3_bits_set(a_reqBuf_io_mshrInfo_3_bits_set),
    .io_mshrInfo_3_bits_reqTag(a_reqBuf_io_mshrInfo_3_bits_reqTag),
    .io_mshrInfo_3_bits_willFree(a_reqBuf_io_mshrInfo_3_bits_willFree),
    .io_mshrInfo_3_bits_needRelease(a_reqBuf_io_mshrInfo_3_bits_needRelease),
    .io_mshrInfo_3_bits_metaTag(a_reqBuf_io_mshrInfo_3_bits_metaTag),
    .io_mshrInfo_3_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_3_bits_isAcqOrPrefetch),
    .io_mshrInfo_4_valid(a_reqBuf_io_mshrInfo_4_valid),
    .io_mshrInfo_4_bits_set(a_reqBuf_io_mshrInfo_4_bits_set),
    .io_mshrInfo_4_bits_reqTag(a_reqBuf_io_mshrInfo_4_bits_reqTag),
    .io_mshrInfo_4_bits_willFree(a_reqBuf_io_mshrInfo_4_bits_willFree),
    .io_mshrInfo_4_bits_needRelease(a_reqBuf_io_mshrInfo_4_bits_needRelease),
    .io_mshrInfo_4_bits_metaTag(a_reqBuf_io_mshrInfo_4_bits_metaTag),
    .io_mshrInfo_4_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_4_bits_isAcqOrPrefetch),
    .io_mshrInfo_5_valid(a_reqBuf_io_mshrInfo_5_valid),
    .io_mshrInfo_5_bits_set(a_reqBuf_io_mshrInfo_5_bits_set),
    .io_mshrInfo_5_bits_reqTag(a_reqBuf_io_mshrInfo_5_bits_reqTag),
    .io_mshrInfo_5_bits_willFree(a_reqBuf_io_mshrInfo_5_bits_willFree),
    .io_mshrInfo_5_bits_needRelease(a_reqBuf_io_mshrInfo_5_bits_needRelease),
    .io_mshrInfo_5_bits_metaTag(a_reqBuf_io_mshrInfo_5_bits_metaTag),
    .io_mshrInfo_5_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_5_bits_isAcqOrPrefetch),
    .io_mshrInfo_6_valid(a_reqBuf_io_mshrInfo_6_valid),
    .io_mshrInfo_6_bits_set(a_reqBuf_io_mshrInfo_6_bits_set),
    .io_mshrInfo_6_bits_reqTag(a_reqBuf_io_mshrInfo_6_bits_reqTag),
    .io_mshrInfo_6_bits_willFree(a_reqBuf_io_mshrInfo_6_bits_willFree),
    .io_mshrInfo_6_bits_needRelease(a_reqBuf_io_mshrInfo_6_bits_needRelease),
    .io_mshrInfo_6_bits_metaTag(a_reqBuf_io_mshrInfo_6_bits_metaTag),
    .io_mshrInfo_6_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_6_bits_isAcqOrPrefetch),
    .io_mshrInfo_7_valid(a_reqBuf_io_mshrInfo_7_valid),
    .io_mshrInfo_7_bits_set(a_reqBuf_io_mshrInfo_7_bits_set),
    .io_mshrInfo_7_bits_reqTag(a_reqBuf_io_mshrInfo_7_bits_reqTag),
    .io_mshrInfo_7_bits_willFree(a_reqBuf_io_mshrInfo_7_bits_willFree),
    .io_mshrInfo_7_bits_needRelease(a_reqBuf_io_mshrInfo_7_bits_needRelease),
    .io_mshrInfo_7_bits_metaTag(a_reqBuf_io_mshrInfo_7_bits_metaTag),
    .io_mshrInfo_7_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_7_bits_isAcqOrPrefetch),
    .io_mshrInfo_8_valid(a_reqBuf_io_mshrInfo_8_valid),
    .io_mshrInfo_8_bits_set(a_reqBuf_io_mshrInfo_8_bits_set),
    .io_mshrInfo_8_bits_reqTag(a_reqBuf_io_mshrInfo_8_bits_reqTag),
    .io_mshrInfo_8_bits_willFree(a_reqBuf_io_mshrInfo_8_bits_willFree),
    .io_mshrInfo_8_bits_needRelease(a_reqBuf_io_mshrInfo_8_bits_needRelease),
    .io_mshrInfo_8_bits_metaTag(a_reqBuf_io_mshrInfo_8_bits_metaTag),
    .io_mshrInfo_8_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_8_bits_isAcqOrPrefetch),
    .io_mshrInfo_9_valid(a_reqBuf_io_mshrInfo_9_valid),
    .io_mshrInfo_9_bits_set(a_reqBuf_io_mshrInfo_9_bits_set),
    .io_mshrInfo_9_bits_reqTag(a_reqBuf_io_mshrInfo_9_bits_reqTag),
    .io_mshrInfo_9_bits_willFree(a_reqBuf_io_mshrInfo_9_bits_willFree),
    .io_mshrInfo_9_bits_needRelease(a_reqBuf_io_mshrInfo_9_bits_needRelease),
    .io_mshrInfo_9_bits_metaTag(a_reqBuf_io_mshrInfo_9_bits_metaTag),
    .io_mshrInfo_9_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_9_bits_isAcqOrPrefetch),
    .io_mshrInfo_10_valid(a_reqBuf_io_mshrInfo_10_valid),
    .io_mshrInfo_10_bits_set(a_reqBuf_io_mshrInfo_10_bits_set),
    .io_mshrInfo_10_bits_reqTag(a_reqBuf_io_mshrInfo_10_bits_reqTag),
    .io_mshrInfo_10_bits_willFree(a_reqBuf_io_mshrInfo_10_bits_willFree),
    .io_mshrInfo_10_bits_needRelease(a_reqBuf_io_mshrInfo_10_bits_needRelease),
    .io_mshrInfo_10_bits_metaTag(a_reqBuf_io_mshrInfo_10_bits_metaTag),
    .io_mshrInfo_10_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_10_bits_isAcqOrPrefetch),
    .io_mshrInfo_11_valid(a_reqBuf_io_mshrInfo_11_valid),
    .io_mshrInfo_11_bits_set(a_reqBuf_io_mshrInfo_11_bits_set),
    .io_mshrInfo_11_bits_reqTag(a_reqBuf_io_mshrInfo_11_bits_reqTag),
    .io_mshrInfo_11_bits_willFree(a_reqBuf_io_mshrInfo_11_bits_willFree),
    .io_mshrInfo_11_bits_needRelease(a_reqBuf_io_mshrInfo_11_bits_needRelease),
    .io_mshrInfo_11_bits_metaTag(a_reqBuf_io_mshrInfo_11_bits_metaTag),
    .io_mshrInfo_11_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_11_bits_isAcqOrPrefetch),
    .io_mshrInfo_12_valid(a_reqBuf_io_mshrInfo_12_valid),
    .io_mshrInfo_12_bits_set(a_reqBuf_io_mshrInfo_12_bits_set),
    .io_mshrInfo_12_bits_reqTag(a_reqBuf_io_mshrInfo_12_bits_reqTag),
    .io_mshrInfo_12_bits_willFree(a_reqBuf_io_mshrInfo_12_bits_willFree),
    .io_mshrInfo_12_bits_needRelease(a_reqBuf_io_mshrInfo_12_bits_needRelease),
    .io_mshrInfo_12_bits_metaTag(a_reqBuf_io_mshrInfo_12_bits_metaTag),
    .io_mshrInfo_12_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_12_bits_isAcqOrPrefetch),
    .io_mshrInfo_13_valid(a_reqBuf_io_mshrInfo_13_valid),
    .io_mshrInfo_13_bits_set(a_reqBuf_io_mshrInfo_13_bits_set),
    .io_mshrInfo_13_bits_reqTag(a_reqBuf_io_mshrInfo_13_bits_reqTag),
    .io_mshrInfo_13_bits_willFree(a_reqBuf_io_mshrInfo_13_bits_willFree),
    .io_mshrInfo_13_bits_needRelease(a_reqBuf_io_mshrInfo_13_bits_needRelease),
    .io_mshrInfo_13_bits_metaTag(a_reqBuf_io_mshrInfo_13_bits_metaTag),
    .io_mshrInfo_13_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_13_bits_isAcqOrPrefetch),
    .io_mshrInfo_14_valid(a_reqBuf_io_mshrInfo_14_valid),
    .io_mshrInfo_14_bits_set(a_reqBuf_io_mshrInfo_14_bits_set),
    .io_mshrInfo_14_bits_reqTag(a_reqBuf_io_mshrInfo_14_bits_reqTag),
    .io_mshrInfo_14_bits_willFree(a_reqBuf_io_mshrInfo_14_bits_willFree),
    .io_mshrInfo_14_bits_needRelease(a_reqBuf_io_mshrInfo_14_bits_needRelease),
    .io_mshrInfo_14_bits_metaTag(a_reqBuf_io_mshrInfo_14_bits_metaTag),
    .io_mshrInfo_14_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_14_bits_isAcqOrPrefetch),
    .io_mshrInfo_15_valid(a_reqBuf_io_mshrInfo_15_valid),
    .io_mshrInfo_15_bits_set(a_reqBuf_io_mshrInfo_15_bits_set),
    .io_mshrInfo_15_bits_reqTag(a_reqBuf_io_mshrInfo_15_bits_reqTag),
    .io_mshrInfo_15_bits_willFree(a_reqBuf_io_mshrInfo_15_bits_willFree),
    .io_mshrInfo_15_bits_needRelease(a_reqBuf_io_mshrInfo_15_bits_needRelease),
    .io_mshrInfo_15_bits_metaTag(a_reqBuf_io_mshrInfo_15_bits_metaTag),
    .io_mshrInfo_15_bits_isAcqOrPrefetch(a_reqBuf_io_mshrInfo_15_bits_isAcqOrPrefetch),
    .io_mainPipeBlock_0(a_reqBuf_io_mainPipeBlock_0),
    .io_mainPipeBlock_1(a_reqBuf_io_mainPipeBlock_1),
    .io_ATag(a_reqBuf_io_ATag),
    .io_ASet(a_reqBuf_io_ASet),
    .io_s1Entrance_valid(a_reqBuf_io_s1Entrance_valid),
    .io_s1Entrance_bits_set(a_reqBuf_io_s1Entrance_bits_set)
  );
  MainPipe_1 mainPipe ( // @[Slice.scala 45:24]
    .clock(mainPipe_clock),
    .reset(mainPipe_reset),
    .io_taskFromArb_s2_valid(mainPipe_io_taskFromArb_s2_valid),
    .io_taskFromArb_s2_bits_channel(mainPipe_io_taskFromArb_s2_bits_channel),
    .io_taskFromArb_s2_bits_set(mainPipe_io_taskFromArb_s2_bits_set),
    .io_taskFromArb_s2_bits_tag(mainPipe_io_taskFromArb_s2_bits_tag),
    .io_taskFromArb_s2_bits_off(mainPipe_io_taskFromArb_s2_bits_off),
    .io_taskFromArb_s2_bits_opcode(mainPipe_io_taskFromArb_s2_bits_opcode),
    .io_taskFromArb_s2_bits_param(mainPipe_io_taskFromArb_s2_bits_param),
    .io_taskFromArb_s2_bits_size(mainPipe_io_taskFromArb_s2_bits_size),
    .io_taskFromArb_s2_bits_sourceId(mainPipe_io_taskFromArb_s2_bits_sourceId),
    .io_taskFromArb_s2_bits_bufIdx(mainPipe_io_taskFromArb_s2_bits_bufIdx),
    .io_taskFromArb_s2_bits_needProbeAckData(mainPipe_io_taskFromArb_s2_bits_needProbeAckData),
    .io_taskFromArb_s2_bits_mshrTask(mainPipe_io_taskFromArb_s2_bits_mshrTask),
    .io_taskFromArb_s2_bits_mshrId(mainPipe_io_taskFromArb_s2_bits_mshrId),
    .io_taskFromArb_s2_bits_useProbeData(mainPipe_io_taskFromArb_s2_bits_useProbeData),
    .io_taskFromArb_s2_bits_dirty(mainPipe_io_taskFromArb_s2_bits_dirty),
    .io_taskFromArb_s2_bits_way(mainPipe_io_taskFromArb_s2_bits_way),
    .io_taskFromArb_s2_bits_meta_dirty(mainPipe_io_taskFromArb_s2_bits_meta_dirty),
    .io_taskFromArb_s2_bits_meta_state(mainPipe_io_taskFromArb_s2_bits_meta_state),
    .io_taskFromArb_s2_bits_meta_clients(mainPipe_io_taskFromArb_s2_bits_meta_clients),
    .io_taskFromArb_s2_bits_meta_accessed(mainPipe_io_taskFromArb_s2_bits_meta_accessed),
    .io_taskFromArb_s2_bits_metaWen(mainPipe_io_taskFromArb_s2_bits_metaWen),
    .io_taskFromArb_s2_bits_tagWen(mainPipe_io_taskFromArb_s2_bits_tagWen),
    .io_taskFromArb_s2_bits_dsWen(mainPipe_io_taskFromArb_s2_bits_dsWen),
    .io_taskFromArb_s2_bits_replTask(mainPipe_io_taskFromArb_s2_bits_replTask),
    .io_taskFromArb_s2_bits_reqSource(mainPipe_io_taskFromArb_s2_bits_reqSource),
    .io_taskInfo_s1_valid(mainPipe_io_taskInfo_s1_valid),
    .io_taskInfo_s1_bits_channel(mainPipe_io_taskInfo_s1_bits_channel),
    .io_taskInfo_s1_bits_opcode(mainPipe_io_taskInfo_s1_bits_opcode),
    .io_taskInfo_s1_bits_sourceId(mainPipe_io_taskInfo_s1_bits_sourceId),
    .io_fromReqArb_status_s1_tags_1(mainPipe_io_fromReqArb_status_s1_tags_1),
    .io_fromReqArb_status_s1_sets_0(mainPipe_io_fromReqArb_status_s1_sets_0),
    .io_fromReqArb_status_s1_sets_1(mainPipe_io_fromReqArb_status_s1_sets_1),
    .io_fromReqArb_status_s1_sets_2(mainPipe_io_fromReqArb_status_s1_sets_2),
    .io_fromReqArb_status_s1_sets_3(mainPipe_io_fromReqArb_status_s1_sets_3),
    .io_toReqArb_blockG_s1(mainPipe_io_toReqArb_blockG_s1),
    .io_toReqArb_blockA_s1(mainPipe_io_toReqArb_blockA_s1),
    .io_toReqArb_blockB_s1(mainPipe_io_toReqArb_blockB_s1),
    .io_toReqArb_blockC_s1(mainPipe_io_toReqArb_blockC_s1),
    .io_toReqBuf_0(mainPipe_io_toReqBuf_0),
    .io_toReqBuf_1(mainPipe_io_toReqBuf_1),
    .io_status_vec_0_valid(mainPipe_io_status_vec_0_valid),
    .io_status_vec_0_bits_channel(mainPipe_io_status_vec_0_bits_channel),
    .io_status_vec_1_valid(mainPipe_io_status_vec_1_valid),
    .io_status_vec_1_bits_channel(mainPipe_io_status_vec_1_bits_channel),
    .io_status_vec_2_valid(mainPipe_io_status_vec_2_valid),
    .io_status_vec_2_bits_channel(mainPipe_io_status_vec_2_bits_channel),
    .io_dirResp_s3_hit(mainPipe_io_dirResp_s3_hit),
    .io_dirResp_s3_tag(mainPipe_io_dirResp_s3_tag),
    .io_dirResp_s3_set(mainPipe_io_dirResp_s3_set),
    .io_dirResp_s3_way(mainPipe_io_dirResp_s3_way),
    .io_dirResp_s3_meta_dirty(mainPipe_io_dirResp_s3_meta_dirty),
    .io_dirResp_s3_meta_state(mainPipe_io_dirResp_s3_meta_state),
    .io_dirResp_s3_meta_clients(mainPipe_io_dirResp_s3_meta_clients),
    .io_dirResp_s3_meta_accessed(mainPipe_io_dirResp_s3_meta_accessed),
    .io_replResp_valid(mainPipe_io_replResp_valid),
    .io_replResp_bits_way(mainPipe_io_replResp_bits_way),
    .io_replResp_bits_meta_state(mainPipe_io_replResp_bits_meta_state),
    .io_replResp_bits_retry(mainPipe_io_replResp_bits_retry),
    .io_toMSHRCtl_mshr_alloc_s3_valid(mainPipe_io_toMSHRCtl_mshr_alloc_s3_valid),
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_hit(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_hit),
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_tag(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_tag),
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_set(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_set),
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_way(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_way),
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_dirty(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_dirty)
      ,
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_state(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_state)
      ,
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_clients(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_clients),
    .io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_accessed(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_accessed),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_s_acquire(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_acquire),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_s_rprobe(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_rprobe),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_s_pprobe(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_pprobe),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_s_probeack(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_probeack),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_s_refill(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_refill),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeackfirst(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeackfirst),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeacklast(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeacklast),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeackfirst(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeackfirst),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeacklast(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeacklast),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeack(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeack),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantfirst(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantfirst),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantlast(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantlast),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrant(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrant),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantack(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantack),
    .io_toMSHRCtl_mshr_alloc_s3_bits_state_wreplResp(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wreplResp),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_channel(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_channel),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_set(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_set),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_tag(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_tag),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_off(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_off),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_opcode(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_opcode),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_param(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_param),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_size(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_size),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_sourceId(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_sourceId),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_needProbeAckData(
      mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_needProbeAckData),
    .io_toMSHRCtl_mshr_alloc_s3_bits_task_reqSource(mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_reqSource),
    .io_fromMSHRCtl_mshr_alloc_ptr(mainPipe_io_fromMSHRCtl_mshr_alloc_ptr),
    .io_bufRead_valid(mainPipe_io_bufRead_valid),
    .io_bufRead_bits_bufIdx(mainPipe_io_bufRead_bits_bufIdx),
    .io_bufResp_data_0(mainPipe_io_bufResp_data_0),
    .io_bufResp_data_1(mainPipe_io_bufResp_data_1),
    .io_refillBufResp_s3_bits_data(mainPipe_io_refillBufResp_s3_bits_data),
    .io_releaseBufResp_s3_valid(mainPipe_io_releaseBufResp_s3_valid),
    .io_releaseBufResp_s3_bits_data(mainPipe_io_releaseBufResp_s3_bits_data),
    .io_toDS_req_s3_valid(mainPipe_io_toDS_req_s3_valid),
    .io_toDS_req_s3_bits_way(mainPipe_io_toDS_req_s3_bits_way),
    .io_toDS_req_s3_bits_set(mainPipe_io_toDS_req_s3_bits_set),
    .io_toDS_req_s3_bits_wen(mainPipe_io_toDS_req_s3_bits_wen),
    .io_toDS_rdata_s5_data(mainPipe_io_toDS_rdata_s5_data),
    .io_toDS_wdata_s3_data(mainPipe_io_toDS_wdata_s3_data),
    .io_toSourceC_ready(mainPipe_io_toSourceC_ready),
    .io_toSourceC_valid(mainPipe_io_toSourceC_valid),
    .io_toSourceC_bits_task_set(mainPipe_io_toSourceC_bits_task_set),
    .io_toSourceC_bits_task_tag(mainPipe_io_toSourceC_bits_task_tag),
    .io_toSourceC_bits_task_off(mainPipe_io_toSourceC_bits_task_off),
    .io_toSourceC_bits_task_opcode(mainPipe_io_toSourceC_bits_task_opcode),
    .io_toSourceC_bits_task_param(mainPipe_io_toSourceC_bits_task_param),
    .io_toSourceC_bits_task_mshrId(mainPipe_io_toSourceC_bits_task_mshrId),
    .io_toSourceC_bits_task_dirty(mainPipe_io_toSourceC_bits_task_dirty),
    .io_toSourceC_bits_data_data(mainPipe_io_toSourceC_bits_data_data),
    .io_toSourceD_valid(mainPipe_io_toSourceD_valid),
    .io_toSourceD_bits_task_set(mainPipe_io_toSourceD_bits_task_set),
    .io_toSourceD_bits_task_tag(mainPipe_io_toSourceD_bits_task_tag),
    .io_toSourceD_bits_task_opcode(mainPipe_io_toSourceD_bits_task_opcode),
    .io_toSourceD_bits_task_param(mainPipe_io_toSourceD_bits_task_param),
    .io_toSourceD_bits_task_sourceId(mainPipe_io_toSourceD_bits_task_sourceId),
    .io_toSourceD_bits_task_mshrId(mainPipe_io_toSourceD_bits_task_mshrId),
    .io_toSourceD_bits_data_data(mainPipe_io_toSourceD_bits_data_data),
    .io_metaWReq_valid(mainPipe_io_metaWReq_valid),
    .io_metaWReq_bits_set(mainPipe_io_metaWReq_bits_set),
    .io_metaWReq_bits_wayOH(mainPipe_io_metaWReq_bits_wayOH),
    .io_metaWReq_bits_wmeta_dirty(mainPipe_io_metaWReq_bits_wmeta_dirty),
    .io_metaWReq_bits_wmeta_state(mainPipe_io_metaWReq_bits_wmeta_state),
    .io_metaWReq_bits_wmeta_clients(mainPipe_io_metaWReq_bits_wmeta_clients),
    .io_metaWReq_bits_wmeta_accessed(mainPipe_io_metaWReq_bits_wmeta_accessed),
    .io_tagWReq_valid(mainPipe_io_tagWReq_valid),
    .io_tagWReq_bits_set(mainPipe_io_tagWReq_bits_set),
    .io_tagWReq_bits_way(mainPipe_io_tagWReq_bits_way),
    .io_tagWReq_bits_wtag(mainPipe_io_tagWReq_bits_wtag),
    .io_releaseBufWrite_valid(mainPipe_io_releaseBufWrite_valid),
    .io_releaseBufWrite_data_data(mainPipe_io_releaseBufWrite_data_data),
    .io_releaseBufWrite_id(mainPipe_io_releaseBufWrite_id),
    .io_refillBufWrite_valid(mainPipe_io_refillBufWrite_valid),
    .io_refillBufWrite_data_data(mainPipe_io_refillBufWrite_data_data),
    .io_refillBufWrite_id(mainPipe_io_refillBufWrite_id),
    .io_nestedwb_set(mainPipe_io_nestedwb_set),
    .io_nestedwb_tag(mainPipe_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mainPipe_io_nestedwb_c_set_dirty),
    .io_nestedwbData_data(mainPipe_io_nestedwbData_data),
    .io_l1Hint_valid(mainPipe_io_l1Hint_valid),
    .io_l1Hint_bits_sourceId(mainPipe_io_l1Hint_bits_sourceId),
    .io_grantBufferHint_valid(mainPipe_io_grantBufferHint_valid),
    .io_grantBufferHint_bits_sourceId(mainPipe_io_grantBufferHint_bits_sourceId),
    .io_globalCounter(mainPipe_io_globalCounter)
  );
  MSHRCtl mshrCtl ( // @[Slice.scala 46:23]
    .clock(mshrCtl_clock),
    .reset(mshrCtl_reset),
    .io_toReqArb_blockA_s1(mshrCtl_io_toReqArb_blockA_s1),
    .io_toReqArb_blockB_s1(mshrCtl_io_toReqArb_blockB_s1),
    .io_fromMainPipe_mshr_alloc_s3_valid(mshrCtl_io_fromMainPipe_mshr_alloc_s3_valid),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients),
    .io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst
      ),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack),
    .io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_channel(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_channel),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_set(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_set),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_tag(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_tag),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_off(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_off),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_opcode(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_opcode),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_param(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_param),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_size(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_size),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData(
      mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData),
    .io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource(mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource),
    .io_toMainPipe_mshr_alloc_ptr(mshrCtl_io_toMainPipe_mshr_alloc_ptr),
    .io_mshrTask_ready(mshrCtl_io_mshrTask_ready),
    .io_mshrTask_valid(mshrCtl_io_mshrTask_valid),
    .io_mshrTask_bits_channel(mshrCtl_io_mshrTask_bits_channel),
    .io_mshrTask_bits_set(mshrCtl_io_mshrTask_bits_set),
    .io_mshrTask_bits_tag(mshrCtl_io_mshrTask_bits_tag),
    .io_mshrTask_bits_off(mshrCtl_io_mshrTask_bits_off),
    .io_mshrTask_bits_opcode(mshrCtl_io_mshrTask_bits_opcode),
    .io_mshrTask_bits_param(mshrCtl_io_mshrTask_bits_param),
    .io_mshrTask_bits_size(mshrCtl_io_mshrTask_bits_size),
    .io_mshrTask_bits_sourceId(mshrCtl_io_mshrTask_bits_sourceId),
    .io_mshrTask_bits_mshrTask(mshrCtl_io_mshrTask_bits_mshrTask),
    .io_mshrTask_bits_mshrId(mshrCtl_io_mshrTask_bits_mshrId),
    .io_mshrTask_bits_useProbeData(mshrCtl_io_mshrTask_bits_useProbeData),
    .io_mshrTask_bits_dirty(mshrCtl_io_mshrTask_bits_dirty),
    .io_mshrTask_bits_way(mshrCtl_io_mshrTask_bits_way),
    .io_mshrTask_bits_meta_dirty(mshrCtl_io_mshrTask_bits_meta_dirty),
    .io_mshrTask_bits_meta_state(mshrCtl_io_mshrTask_bits_meta_state),
    .io_mshrTask_bits_meta_clients(mshrCtl_io_mshrTask_bits_meta_clients),
    .io_mshrTask_bits_meta_accessed(mshrCtl_io_mshrTask_bits_meta_accessed),
    .io_mshrTask_bits_metaWen(mshrCtl_io_mshrTask_bits_metaWen),
    .io_mshrTask_bits_tagWen(mshrCtl_io_mshrTask_bits_tagWen),
    .io_mshrTask_bits_dsWen(mshrCtl_io_mshrTask_bits_dsWen),
    .io_mshrTask_bits_wayMask(mshrCtl_io_mshrTask_bits_wayMask),
    .io_mshrTask_bits_replTask(mshrCtl_io_mshrTask_bits_replTask),
    .io_mshrTask_bits_reqSource(mshrCtl_io_mshrTask_bits_reqSource),
    .io_sourceA_ready(mshrCtl_io_sourceA_ready),
    .io_sourceA_valid(mshrCtl_io_sourceA_valid),
    .io_sourceA_bits_opcode(mshrCtl_io_sourceA_bits_opcode),
    .io_sourceA_bits_param(mshrCtl_io_sourceA_bits_param),
    .io_sourceA_bits_size(mshrCtl_io_sourceA_bits_size),
    .io_sourceA_bits_source(mshrCtl_io_sourceA_bits_source),
    .io_sourceA_bits_address(mshrCtl_io_sourceA_bits_address),
    .io_sourceA_bits_echo_blockisdirty(mshrCtl_io_sourceA_bits_echo_blockisdirty),
    .io_sourceA_bits_mask(mshrCtl_io_sourceA_bits_mask),
    .io_sourceA_bits_data(mshrCtl_io_sourceA_bits_data),
    .io_sourceA_bits_corrupt(mshrCtl_io_sourceA_bits_corrupt),
    .io_sourceB_ready(mshrCtl_io_sourceB_ready),
    .io_sourceB_valid(mshrCtl_io_sourceB_valid),
    .io_sourceB_bits_opcode(mshrCtl_io_sourceB_bits_opcode),
    .io_sourceB_bits_param(mshrCtl_io_sourceB_bits_param),
    .io_sourceB_bits_address(mshrCtl_io_sourceB_bits_address),
    .io_grantStatus_0_valid(mshrCtl_io_grantStatus_0_valid),
    .io_grantStatus_0_set(mshrCtl_io_grantStatus_0_set),
    .io_grantStatus_0_tag(mshrCtl_io_grantStatus_0_tag),
    .io_grantStatus_1_valid(mshrCtl_io_grantStatus_1_valid),
    .io_grantStatus_1_set(mshrCtl_io_grantStatus_1_set),
    .io_grantStatus_1_tag(mshrCtl_io_grantStatus_1_tag),
    .io_grantStatus_2_valid(mshrCtl_io_grantStatus_2_valid),
    .io_grantStatus_2_set(mshrCtl_io_grantStatus_2_set),
    .io_grantStatus_2_tag(mshrCtl_io_grantStatus_2_tag),
    .io_grantStatus_3_valid(mshrCtl_io_grantStatus_3_valid),
    .io_grantStatus_3_set(mshrCtl_io_grantStatus_3_set),
    .io_grantStatus_3_tag(mshrCtl_io_grantStatus_3_tag),
    .io_grantStatus_4_valid(mshrCtl_io_grantStatus_4_valid),
    .io_grantStatus_4_set(mshrCtl_io_grantStatus_4_set),
    .io_grantStatus_4_tag(mshrCtl_io_grantStatus_4_tag),
    .io_grantStatus_5_valid(mshrCtl_io_grantStatus_5_valid),
    .io_grantStatus_5_set(mshrCtl_io_grantStatus_5_set),
    .io_grantStatus_5_tag(mshrCtl_io_grantStatus_5_tag),
    .io_grantStatus_6_valid(mshrCtl_io_grantStatus_6_valid),
    .io_grantStatus_6_set(mshrCtl_io_grantStatus_6_set),
    .io_grantStatus_6_tag(mshrCtl_io_grantStatus_6_tag),
    .io_grantStatus_7_valid(mshrCtl_io_grantStatus_7_valid),
    .io_grantStatus_7_set(mshrCtl_io_grantStatus_7_set),
    .io_grantStatus_7_tag(mshrCtl_io_grantStatus_7_tag),
    .io_grantStatus_8_valid(mshrCtl_io_grantStatus_8_valid),
    .io_grantStatus_8_set(mshrCtl_io_grantStatus_8_set),
    .io_grantStatus_8_tag(mshrCtl_io_grantStatus_8_tag),
    .io_grantStatus_9_valid(mshrCtl_io_grantStatus_9_valid),
    .io_grantStatus_9_set(mshrCtl_io_grantStatus_9_set),
    .io_grantStatus_9_tag(mshrCtl_io_grantStatus_9_tag),
    .io_grantStatus_10_valid(mshrCtl_io_grantStatus_10_valid),
    .io_grantStatus_10_set(mshrCtl_io_grantStatus_10_set),
    .io_grantStatus_10_tag(mshrCtl_io_grantStatus_10_tag),
    .io_grantStatus_11_valid(mshrCtl_io_grantStatus_11_valid),
    .io_grantStatus_11_set(mshrCtl_io_grantStatus_11_set),
    .io_grantStatus_11_tag(mshrCtl_io_grantStatus_11_tag),
    .io_grantStatus_12_valid(mshrCtl_io_grantStatus_12_valid),
    .io_grantStatus_12_set(mshrCtl_io_grantStatus_12_set),
    .io_grantStatus_12_tag(mshrCtl_io_grantStatus_12_tag),
    .io_grantStatus_13_valid(mshrCtl_io_grantStatus_13_valid),
    .io_grantStatus_13_set(mshrCtl_io_grantStatus_13_set),
    .io_grantStatus_13_tag(mshrCtl_io_grantStatus_13_tag),
    .io_grantStatus_14_valid(mshrCtl_io_grantStatus_14_valid),
    .io_grantStatus_14_set(mshrCtl_io_grantStatus_14_set),
    .io_grantStatus_14_tag(mshrCtl_io_grantStatus_14_tag),
    .io_grantStatus_15_valid(mshrCtl_io_grantStatus_15_valid),
    .io_grantStatus_15_set(mshrCtl_io_grantStatus_15_set),
    .io_grantStatus_15_tag(mshrCtl_io_grantStatus_15_tag),
    .io_resps_sinkC_valid(mshrCtl_io_resps_sinkC_valid),
    .io_resps_sinkC_set(mshrCtl_io_resps_sinkC_set),
    .io_resps_sinkC_tag(mshrCtl_io_resps_sinkC_tag),
    .io_resps_sinkC_respInfo_opcode(mshrCtl_io_resps_sinkC_respInfo_opcode),
    .io_resps_sinkC_respInfo_param(mshrCtl_io_resps_sinkC_respInfo_param),
    .io_resps_sinkC_respInfo_last(mshrCtl_io_resps_sinkC_respInfo_last),
    .io_resps_sinkD_valid(mshrCtl_io_resps_sinkD_valid),
    .io_resps_sinkD_mshrId(mshrCtl_io_resps_sinkD_mshrId),
    .io_resps_sinkD_respInfo_opcode(mshrCtl_io_resps_sinkD_respInfo_opcode),
    .io_resps_sinkD_respInfo_param(mshrCtl_io_resps_sinkD_respInfo_param),
    .io_resps_sinkD_respInfo_last(mshrCtl_io_resps_sinkD_respInfo_last),
    .io_resps_sinkD_respInfo_dirty(mshrCtl_io_resps_sinkD_respInfo_dirty),
    .io_resps_sinkE_valid(mshrCtl_io_resps_sinkE_valid),
    .io_resps_sinkE_mshrId(mshrCtl_io_resps_sinkE_mshrId),
    .io_releaseBufWriteId(mshrCtl_io_releaseBufWriteId),
    .io_nestedwb_set(mshrCtl_io_nestedwb_set),
    .io_nestedwb_tag(mshrCtl_io_nestedwb_tag),
    .io_nestedwb_c_set_dirty(mshrCtl_io_nestedwb_c_set_dirty),
    .io_nestedwbDataId_valid(mshrCtl_io_nestedwbDataId_valid),
    .io_nestedwbDataId_bits(mshrCtl_io_nestedwbDataId_bits),
    .io_pipeStatusVec_0_valid(mshrCtl_io_pipeStatusVec_0_valid),
    .io_pipeStatusVec_1_valid(mshrCtl_io_pipeStatusVec_1_valid),
    .io_msInfo_0_valid(mshrCtl_io_msInfo_0_valid),
    .io_msInfo_0_bits_set(mshrCtl_io_msInfo_0_bits_set),
    .io_msInfo_0_bits_way(mshrCtl_io_msInfo_0_bits_way),
    .io_msInfo_0_bits_reqTag(mshrCtl_io_msInfo_0_bits_reqTag),
    .io_msInfo_0_bits_willFree(mshrCtl_io_msInfo_0_bits_willFree),
    .io_msInfo_0_bits_needRelease(mshrCtl_io_msInfo_0_bits_needRelease),
    .io_msInfo_0_bits_releaseNotSent(mshrCtl_io_msInfo_0_bits_releaseNotSent),
    .io_msInfo_0_bits_metaTag(mshrCtl_io_msInfo_0_bits_metaTag),
    .io_msInfo_0_bits_dirHit(mshrCtl_io_msInfo_0_bits_dirHit),
    .io_msInfo_0_bits_nestB(mshrCtl_io_msInfo_0_bits_nestB),
    .io_msInfo_0_bits_mergeB(mshrCtl_io_msInfo_0_bits_mergeB),
    .io_msInfo_0_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_0_bits_isAcqOrPrefetch),
    .io_msInfo_0_bits_isPrefetch(mshrCtl_io_msInfo_0_bits_isPrefetch),
    .io_msInfo_1_valid(mshrCtl_io_msInfo_1_valid),
    .io_msInfo_1_bits_set(mshrCtl_io_msInfo_1_bits_set),
    .io_msInfo_1_bits_way(mshrCtl_io_msInfo_1_bits_way),
    .io_msInfo_1_bits_reqTag(mshrCtl_io_msInfo_1_bits_reqTag),
    .io_msInfo_1_bits_willFree(mshrCtl_io_msInfo_1_bits_willFree),
    .io_msInfo_1_bits_needRelease(mshrCtl_io_msInfo_1_bits_needRelease),
    .io_msInfo_1_bits_releaseNotSent(mshrCtl_io_msInfo_1_bits_releaseNotSent),
    .io_msInfo_1_bits_metaTag(mshrCtl_io_msInfo_1_bits_metaTag),
    .io_msInfo_1_bits_dirHit(mshrCtl_io_msInfo_1_bits_dirHit),
    .io_msInfo_1_bits_nestB(mshrCtl_io_msInfo_1_bits_nestB),
    .io_msInfo_1_bits_mergeB(mshrCtl_io_msInfo_1_bits_mergeB),
    .io_msInfo_1_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_1_bits_isAcqOrPrefetch),
    .io_msInfo_1_bits_isPrefetch(mshrCtl_io_msInfo_1_bits_isPrefetch),
    .io_msInfo_2_valid(mshrCtl_io_msInfo_2_valid),
    .io_msInfo_2_bits_set(mshrCtl_io_msInfo_2_bits_set),
    .io_msInfo_2_bits_way(mshrCtl_io_msInfo_2_bits_way),
    .io_msInfo_2_bits_reqTag(mshrCtl_io_msInfo_2_bits_reqTag),
    .io_msInfo_2_bits_willFree(mshrCtl_io_msInfo_2_bits_willFree),
    .io_msInfo_2_bits_needRelease(mshrCtl_io_msInfo_2_bits_needRelease),
    .io_msInfo_2_bits_releaseNotSent(mshrCtl_io_msInfo_2_bits_releaseNotSent),
    .io_msInfo_2_bits_metaTag(mshrCtl_io_msInfo_2_bits_metaTag),
    .io_msInfo_2_bits_dirHit(mshrCtl_io_msInfo_2_bits_dirHit),
    .io_msInfo_2_bits_nestB(mshrCtl_io_msInfo_2_bits_nestB),
    .io_msInfo_2_bits_mergeB(mshrCtl_io_msInfo_2_bits_mergeB),
    .io_msInfo_2_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_2_bits_isAcqOrPrefetch),
    .io_msInfo_2_bits_isPrefetch(mshrCtl_io_msInfo_2_bits_isPrefetch),
    .io_msInfo_3_valid(mshrCtl_io_msInfo_3_valid),
    .io_msInfo_3_bits_set(mshrCtl_io_msInfo_3_bits_set),
    .io_msInfo_3_bits_way(mshrCtl_io_msInfo_3_bits_way),
    .io_msInfo_3_bits_reqTag(mshrCtl_io_msInfo_3_bits_reqTag),
    .io_msInfo_3_bits_willFree(mshrCtl_io_msInfo_3_bits_willFree),
    .io_msInfo_3_bits_needRelease(mshrCtl_io_msInfo_3_bits_needRelease),
    .io_msInfo_3_bits_releaseNotSent(mshrCtl_io_msInfo_3_bits_releaseNotSent),
    .io_msInfo_3_bits_metaTag(mshrCtl_io_msInfo_3_bits_metaTag),
    .io_msInfo_3_bits_dirHit(mshrCtl_io_msInfo_3_bits_dirHit),
    .io_msInfo_3_bits_nestB(mshrCtl_io_msInfo_3_bits_nestB),
    .io_msInfo_3_bits_mergeB(mshrCtl_io_msInfo_3_bits_mergeB),
    .io_msInfo_3_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_3_bits_isAcqOrPrefetch),
    .io_msInfo_3_bits_isPrefetch(mshrCtl_io_msInfo_3_bits_isPrefetch),
    .io_msInfo_4_valid(mshrCtl_io_msInfo_4_valid),
    .io_msInfo_4_bits_set(mshrCtl_io_msInfo_4_bits_set),
    .io_msInfo_4_bits_way(mshrCtl_io_msInfo_4_bits_way),
    .io_msInfo_4_bits_reqTag(mshrCtl_io_msInfo_4_bits_reqTag),
    .io_msInfo_4_bits_willFree(mshrCtl_io_msInfo_4_bits_willFree),
    .io_msInfo_4_bits_needRelease(mshrCtl_io_msInfo_4_bits_needRelease),
    .io_msInfo_4_bits_releaseNotSent(mshrCtl_io_msInfo_4_bits_releaseNotSent),
    .io_msInfo_4_bits_metaTag(mshrCtl_io_msInfo_4_bits_metaTag),
    .io_msInfo_4_bits_dirHit(mshrCtl_io_msInfo_4_bits_dirHit),
    .io_msInfo_4_bits_nestB(mshrCtl_io_msInfo_4_bits_nestB),
    .io_msInfo_4_bits_mergeB(mshrCtl_io_msInfo_4_bits_mergeB),
    .io_msInfo_4_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_4_bits_isAcqOrPrefetch),
    .io_msInfo_4_bits_isPrefetch(mshrCtl_io_msInfo_4_bits_isPrefetch),
    .io_msInfo_5_valid(mshrCtl_io_msInfo_5_valid),
    .io_msInfo_5_bits_set(mshrCtl_io_msInfo_5_bits_set),
    .io_msInfo_5_bits_way(mshrCtl_io_msInfo_5_bits_way),
    .io_msInfo_5_bits_reqTag(mshrCtl_io_msInfo_5_bits_reqTag),
    .io_msInfo_5_bits_willFree(mshrCtl_io_msInfo_5_bits_willFree),
    .io_msInfo_5_bits_needRelease(mshrCtl_io_msInfo_5_bits_needRelease),
    .io_msInfo_5_bits_releaseNotSent(mshrCtl_io_msInfo_5_bits_releaseNotSent),
    .io_msInfo_5_bits_metaTag(mshrCtl_io_msInfo_5_bits_metaTag),
    .io_msInfo_5_bits_dirHit(mshrCtl_io_msInfo_5_bits_dirHit),
    .io_msInfo_5_bits_nestB(mshrCtl_io_msInfo_5_bits_nestB),
    .io_msInfo_5_bits_mergeB(mshrCtl_io_msInfo_5_bits_mergeB),
    .io_msInfo_5_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_5_bits_isAcqOrPrefetch),
    .io_msInfo_5_bits_isPrefetch(mshrCtl_io_msInfo_5_bits_isPrefetch),
    .io_msInfo_6_valid(mshrCtl_io_msInfo_6_valid),
    .io_msInfo_6_bits_set(mshrCtl_io_msInfo_6_bits_set),
    .io_msInfo_6_bits_way(mshrCtl_io_msInfo_6_bits_way),
    .io_msInfo_6_bits_reqTag(mshrCtl_io_msInfo_6_bits_reqTag),
    .io_msInfo_6_bits_willFree(mshrCtl_io_msInfo_6_bits_willFree),
    .io_msInfo_6_bits_needRelease(mshrCtl_io_msInfo_6_bits_needRelease),
    .io_msInfo_6_bits_releaseNotSent(mshrCtl_io_msInfo_6_bits_releaseNotSent),
    .io_msInfo_6_bits_metaTag(mshrCtl_io_msInfo_6_bits_metaTag),
    .io_msInfo_6_bits_dirHit(mshrCtl_io_msInfo_6_bits_dirHit),
    .io_msInfo_6_bits_nestB(mshrCtl_io_msInfo_6_bits_nestB),
    .io_msInfo_6_bits_mergeB(mshrCtl_io_msInfo_6_bits_mergeB),
    .io_msInfo_6_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_6_bits_isAcqOrPrefetch),
    .io_msInfo_6_bits_isPrefetch(mshrCtl_io_msInfo_6_bits_isPrefetch),
    .io_msInfo_7_valid(mshrCtl_io_msInfo_7_valid),
    .io_msInfo_7_bits_set(mshrCtl_io_msInfo_7_bits_set),
    .io_msInfo_7_bits_way(mshrCtl_io_msInfo_7_bits_way),
    .io_msInfo_7_bits_reqTag(mshrCtl_io_msInfo_7_bits_reqTag),
    .io_msInfo_7_bits_willFree(mshrCtl_io_msInfo_7_bits_willFree),
    .io_msInfo_7_bits_needRelease(mshrCtl_io_msInfo_7_bits_needRelease),
    .io_msInfo_7_bits_releaseNotSent(mshrCtl_io_msInfo_7_bits_releaseNotSent),
    .io_msInfo_7_bits_metaTag(mshrCtl_io_msInfo_7_bits_metaTag),
    .io_msInfo_7_bits_dirHit(mshrCtl_io_msInfo_7_bits_dirHit),
    .io_msInfo_7_bits_nestB(mshrCtl_io_msInfo_7_bits_nestB),
    .io_msInfo_7_bits_mergeB(mshrCtl_io_msInfo_7_bits_mergeB),
    .io_msInfo_7_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_7_bits_isAcqOrPrefetch),
    .io_msInfo_7_bits_isPrefetch(mshrCtl_io_msInfo_7_bits_isPrefetch),
    .io_msInfo_8_valid(mshrCtl_io_msInfo_8_valid),
    .io_msInfo_8_bits_set(mshrCtl_io_msInfo_8_bits_set),
    .io_msInfo_8_bits_way(mshrCtl_io_msInfo_8_bits_way),
    .io_msInfo_8_bits_reqTag(mshrCtl_io_msInfo_8_bits_reqTag),
    .io_msInfo_8_bits_willFree(mshrCtl_io_msInfo_8_bits_willFree),
    .io_msInfo_8_bits_needRelease(mshrCtl_io_msInfo_8_bits_needRelease),
    .io_msInfo_8_bits_releaseNotSent(mshrCtl_io_msInfo_8_bits_releaseNotSent),
    .io_msInfo_8_bits_metaTag(mshrCtl_io_msInfo_8_bits_metaTag),
    .io_msInfo_8_bits_dirHit(mshrCtl_io_msInfo_8_bits_dirHit),
    .io_msInfo_8_bits_nestB(mshrCtl_io_msInfo_8_bits_nestB),
    .io_msInfo_8_bits_mergeB(mshrCtl_io_msInfo_8_bits_mergeB),
    .io_msInfo_8_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_8_bits_isAcqOrPrefetch),
    .io_msInfo_8_bits_isPrefetch(mshrCtl_io_msInfo_8_bits_isPrefetch),
    .io_msInfo_9_valid(mshrCtl_io_msInfo_9_valid),
    .io_msInfo_9_bits_set(mshrCtl_io_msInfo_9_bits_set),
    .io_msInfo_9_bits_way(mshrCtl_io_msInfo_9_bits_way),
    .io_msInfo_9_bits_reqTag(mshrCtl_io_msInfo_9_bits_reqTag),
    .io_msInfo_9_bits_willFree(mshrCtl_io_msInfo_9_bits_willFree),
    .io_msInfo_9_bits_needRelease(mshrCtl_io_msInfo_9_bits_needRelease),
    .io_msInfo_9_bits_releaseNotSent(mshrCtl_io_msInfo_9_bits_releaseNotSent),
    .io_msInfo_9_bits_metaTag(mshrCtl_io_msInfo_9_bits_metaTag),
    .io_msInfo_9_bits_dirHit(mshrCtl_io_msInfo_9_bits_dirHit),
    .io_msInfo_9_bits_nestB(mshrCtl_io_msInfo_9_bits_nestB),
    .io_msInfo_9_bits_mergeB(mshrCtl_io_msInfo_9_bits_mergeB),
    .io_msInfo_9_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_9_bits_isAcqOrPrefetch),
    .io_msInfo_9_bits_isPrefetch(mshrCtl_io_msInfo_9_bits_isPrefetch),
    .io_msInfo_10_valid(mshrCtl_io_msInfo_10_valid),
    .io_msInfo_10_bits_set(mshrCtl_io_msInfo_10_bits_set),
    .io_msInfo_10_bits_way(mshrCtl_io_msInfo_10_bits_way),
    .io_msInfo_10_bits_reqTag(mshrCtl_io_msInfo_10_bits_reqTag),
    .io_msInfo_10_bits_willFree(mshrCtl_io_msInfo_10_bits_willFree),
    .io_msInfo_10_bits_needRelease(mshrCtl_io_msInfo_10_bits_needRelease),
    .io_msInfo_10_bits_releaseNotSent(mshrCtl_io_msInfo_10_bits_releaseNotSent),
    .io_msInfo_10_bits_metaTag(mshrCtl_io_msInfo_10_bits_metaTag),
    .io_msInfo_10_bits_dirHit(mshrCtl_io_msInfo_10_bits_dirHit),
    .io_msInfo_10_bits_nestB(mshrCtl_io_msInfo_10_bits_nestB),
    .io_msInfo_10_bits_mergeB(mshrCtl_io_msInfo_10_bits_mergeB),
    .io_msInfo_10_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_10_bits_isAcqOrPrefetch),
    .io_msInfo_10_bits_isPrefetch(mshrCtl_io_msInfo_10_bits_isPrefetch),
    .io_msInfo_11_valid(mshrCtl_io_msInfo_11_valid),
    .io_msInfo_11_bits_set(mshrCtl_io_msInfo_11_bits_set),
    .io_msInfo_11_bits_way(mshrCtl_io_msInfo_11_bits_way),
    .io_msInfo_11_bits_reqTag(mshrCtl_io_msInfo_11_bits_reqTag),
    .io_msInfo_11_bits_willFree(mshrCtl_io_msInfo_11_bits_willFree),
    .io_msInfo_11_bits_needRelease(mshrCtl_io_msInfo_11_bits_needRelease),
    .io_msInfo_11_bits_releaseNotSent(mshrCtl_io_msInfo_11_bits_releaseNotSent),
    .io_msInfo_11_bits_metaTag(mshrCtl_io_msInfo_11_bits_metaTag),
    .io_msInfo_11_bits_dirHit(mshrCtl_io_msInfo_11_bits_dirHit),
    .io_msInfo_11_bits_nestB(mshrCtl_io_msInfo_11_bits_nestB),
    .io_msInfo_11_bits_mergeB(mshrCtl_io_msInfo_11_bits_mergeB),
    .io_msInfo_11_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_11_bits_isAcqOrPrefetch),
    .io_msInfo_11_bits_isPrefetch(mshrCtl_io_msInfo_11_bits_isPrefetch),
    .io_msInfo_12_valid(mshrCtl_io_msInfo_12_valid),
    .io_msInfo_12_bits_set(mshrCtl_io_msInfo_12_bits_set),
    .io_msInfo_12_bits_way(mshrCtl_io_msInfo_12_bits_way),
    .io_msInfo_12_bits_reqTag(mshrCtl_io_msInfo_12_bits_reqTag),
    .io_msInfo_12_bits_willFree(mshrCtl_io_msInfo_12_bits_willFree),
    .io_msInfo_12_bits_needRelease(mshrCtl_io_msInfo_12_bits_needRelease),
    .io_msInfo_12_bits_releaseNotSent(mshrCtl_io_msInfo_12_bits_releaseNotSent),
    .io_msInfo_12_bits_metaTag(mshrCtl_io_msInfo_12_bits_metaTag),
    .io_msInfo_12_bits_dirHit(mshrCtl_io_msInfo_12_bits_dirHit),
    .io_msInfo_12_bits_nestB(mshrCtl_io_msInfo_12_bits_nestB),
    .io_msInfo_12_bits_mergeB(mshrCtl_io_msInfo_12_bits_mergeB),
    .io_msInfo_12_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_12_bits_isAcqOrPrefetch),
    .io_msInfo_12_bits_isPrefetch(mshrCtl_io_msInfo_12_bits_isPrefetch),
    .io_msInfo_13_valid(mshrCtl_io_msInfo_13_valid),
    .io_msInfo_13_bits_set(mshrCtl_io_msInfo_13_bits_set),
    .io_msInfo_13_bits_way(mshrCtl_io_msInfo_13_bits_way),
    .io_msInfo_13_bits_reqTag(mshrCtl_io_msInfo_13_bits_reqTag),
    .io_msInfo_13_bits_willFree(mshrCtl_io_msInfo_13_bits_willFree),
    .io_msInfo_13_bits_needRelease(mshrCtl_io_msInfo_13_bits_needRelease),
    .io_msInfo_13_bits_releaseNotSent(mshrCtl_io_msInfo_13_bits_releaseNotSent),
    .io_msInfo_13_bits_metaTag(mshrCtl_io_msInfo_13_bits_metaTag),
    .io_msInfo_13_bits_dirHit(mshrCtl_io_msInfo_13_bits_dirHit),
    .io_msInfo_13_bits_nestB(mshrCtl_io_msInfo_13_bits_nestB),
    .io_msInfo_13_bits_mergeB(mshrCtl_io_msInfo_13_bits_mergeB),
    .io_msInfo_13_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_13_bits_isAcqOrPrefetch),
    .io_msInfo_13_bits_isPrefetch(mshrCtl_io_msInfo_13_bits_isPrefetch),
    .io_msInfo_14_valid(mshrCtl_io_msInfo_14_valid),
    .io_msInfo_14_bits_set(mshrCtl_io_msInfo_14_bits_set),
    .io_msInfo_14_bits_way(mshrCtl_io_msInfo_14_bits_way),
    .io_msInfo_14_bits_reqTag(mshrCtl_io_msInfo_14_bits_reqTag),
    .io_msInfo_14_bits_willFree(mshrCtl_io_msInfo_14_bits_willFree),
    .io_msInfo_14_bits_needRelease(mshrCtl_io_msInfo_14_bits_needRelease),
    .io_msInfo_14_bits_releaseNotSent(mshrCtl_io_msInfo_14_bits_releaseNotSent),
    .io_msInfo_14_bits_metaTag(mshrCtl_io_msInfo_14_bits_metaTag),
    .io_msInfo_14_bits_dirHit(mshrCtl_io_msInfo_14_bits_dirHit),
    .io_msInfo_14_bits_nestB(mshrCtl_io_msInfo_14_bits_nestB),
    .io_msInfo_14_bits_mergeB(mshrCtl_io_msInfo_14_bits_mergeB),
    .io_msInfo_14_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_14_bits_isAcqOrPrefetch),
    .io_msInfo_14_bits_isPrefetch(mshrCtl_io_msInfo_14_bits_isPrefetch),
    .io_msInfo_15_valid(mshrCtl_io_msInfo_15_valid),
    .io_msInfo_15_bits_set(mshrCtl_io_msInfo_15_bits_set),
    .io_msInfo_15_bits_way(mshrCtl_io_msInfo_15_bits_way),
    .io_msInfo_15_bits_reqTag(mshrCtl_io_msInfo_15_bits_reqTag),
    .io_msInfo_15_bits_willFree(mshrCtl_io_msInfo_15_bits_willFree),
    .io_msInfo_15_bits_needRelease(mshrCtl_io_msInfo_15_bits_needRelease),
    .io_msInfo_15_bits_releaseNotSent(mshrCtl_io_msInfo_15_bits_releaseNotSent),
    .io_msInfo_15_bits_metaTag(mshrCtl_io_msInfo_15_bits_metaTag),
    .io_msInfo_15_bits_dirHit(mshrCtl_io_msInfo_15_bits_dirHit),
    .io_msInfo_15_bits_nestB(mshrCtl_io_msInfo_15_bits_nestB),
    .io_msInfo_15_bits_mergeB(mshrCtl_io_msInfo_15_bits_mergeB),
    .io_msInfo_15_bits_isAcqOrPrefetch(mshrCtl_io_msInfo_15_bits_isAcqOrPrefetch),
    .io_msInfo_15_bits_isPrefetch(mshrCtl_io_msInfo_15_bits_isPrefetch),
    .io_bMergeTask_valid(mshrCtl_io_bMergeTask_valid),
    .io_bMergeTask_bits_id(mshrCtl_io_bMergeTask_bits_id),
    .io_bMergeTask_bits_task_set(mshrCtl_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(mshrCtl_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(mshrCtl_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(mshrCtl_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(mshrCtl_io_bMergeTask_bits_task_needProbeAckData),
    .io_replResp_valid(mshrCtl_io_replResp_valid),
    .io_replResp_bits_tag(mshrCtl_io_replResp_bits_tag),
    .io_replResp_bits_way(mshrCtl_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(mshrCtl_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(mshrCtl_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(mshrCtl_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(mshrCtl_io_replResp_bits_meta_accessed),
    .io_replResp_bits_mshrId(mshrCtl_io_replResp_bits_mshrId),
    .io_replResp_bits_retry(mshrCtl_io_replResp_bits_retry),
    .io_msStatus_0_valid(mshrCtl_io_msStatus_0_valid),
    .io_msStatus_0_bits_set(mshrCtl_io_msStatus_0_bits_set),
    .io_msStatus_0_bits_reqTag(mshrCtl_io_msStatus_0_bits_reqTag),
    .io_msStatus_0_bits_is_miss(mshrCtl_io_msStatus_0_bits_is_miss),
    .io_msStatus_1_valid(mshrCtl_io_msStatus_1_valid),
    .io_msStatus_1_bits_set(mshrCtl_io_msStatus_1_bits_set),
    .io_msStatus_1_bits_reqTag(mshrCtl_io_msStatus_1_bits_reqTag),
    .io_msStatus_1_bits_is_miss(mshrCtl_io_msStatus_1_bits_is_miss),
    .io_msStatus_2_valid(mshrCtl_io_msStatus_2_valid),
    .io_msStatus_2_bits_set(mshrCtl_io_msStatus_2_bits_set),
    .io_msStatus_2_bits_reqTag(mshrCtl_io_msStatus_2_bits_reqTag),
    .io_msStatus_2_bits_is_miss(mshrCtl_io_msStatus_2_bits_is_miss),
    .io_msStatus_3_valid(mshrCtl_io_msStatus_3_valid),
    .io_msStatus_3_bits_set(mshrCtl_io_msStatus_3_bits_set),
    .io_msStatus_3_bits_reqTag(mshrCtl_io_msStatus_3_bits_reqTag),
    .io_msStatus_3_bits_is_miss(mshrCtl_io_msStatus_3_bits_is_miss),
    .io_msStatus_4_valid(mshrCtl_io_msStatus_4_valid),
    .io_msStatus_4_bits_set(mshrCtl_io_msStatus_4_bits_set),
    .io_msStatus_4_bits_reqTag(mshrCtl_io_msStatus_4_bits_reqTag),
    .io_msStatus_4_bits_is_miss(mshrCtl_io_msStatus_4_bits_is_miss),
    .io_msStatus_5_valid(mshrCtl_io_msStatus_5_valid),
    .io_msStatus_5_bits_set(mshrCtl_io_msStatus_5_bits_set),
    .io_msStatus_5_bits_reqTag(mshrCtl_io_msStatus_5_bits_reqTag),
    .io_msStatus_5_bits_is_miss(mshrCtl_io_msStatus_5_bits_is_miss),
    .io_msStatus_6_valid(mshrCtl_io_msStatus_6_valid),
    .io_msStatus_6_bits_set(mshrCtl_io_msStatus_6_bits_set),
    .io_msStatus_6_bits_reqTag(mshrCtl_io_msStatus_6_bits_reqTag),
    .io_msStatus_6_bits_is_miss(mshrCtl_io_msStatus_6_bits_is_miss),
    .io_msStatus_7_valid(mshrCtl_io_msStatus_7_valid),
    .io_msStatus_7_bits_set(mshrCtl_io_msStatus_7_bits_set),
    .io_msStatus_7_bits_reqTag(mshrCtl_io_msStatus_7_bits_reqTag),
    .io_msStatus_7_bits_is_miss(mshrCtl_io_msStatus_7_bits_is_miss),
    .io_msStatus_8_valid(mshrCtl_io_msStatus_8_valid),
    .io_msStatus_8_bits_set(mshrCtl_io_msStatus_8_bits_set),
    .io_msStatus_8_bits_reqTag(mshrCtl_io_msStatus_8_bits_reqTag),
    .io_msStatus_8_bits_is_miss(mshrCtl_io_msStatus_8_bits_is_miss),
    .io_msStatus_9_valid(mshrCtl_io_msStatus_9_valid),
    .io_msStatus_9_bits_set(mshrCtl_io_msStatus_9_bits_set),
    .io_msStatus_9_bits_reqTag(mshrCtl_io_msStatus_9_bits_reqTag),
    .io_msStatus_9_bits_is_miss(mshrCtl_io_msStatus_9_bits_is_miss),
    .io_msStatus_10_valid(mshrCtl_io_msStatus_10_valid),
    .io_msStatus_10_bits_set(mshrCtl_io_msStatus_10_bits_set),
    .io_msStatus_10_bits_reqTag(mshrCtl_io_msStatus_10_bits_reqTag),
    .io_msStatus_10_bits_is_miss(mshrCtl_io_msStatus_10_bits_is_miss),
    .io_msStatus_11_valid(mshrCtl_io_msStatus_11_valid),
    .io_msStatus_11_bits_set(mshrCtl_io_msStatus_11_bits_set),
    .io_msStatus_11_bits_reqTag(mshrCtl_io_msStatus_11_bits_reqTag),
    .io_msStatus_11_bits_is_miss(mshrCtl_io_msStatus_11_bits_is_miss),
    .io_msStatus_12_valid(mshrCtl_io_msStatus_12_valid),
    .io_msStatus_12_bits_set(mshrCtl_io_msStatus_12_bits_set),
    .io_msStatus_12_bits_reqTag(mshrCtl_io_msStatus_12_bits_reqTag),
    .io_msStatus_12_bits_is_miss(mshrCtl_io_msStatus_12_bits_is_miss),
    .io_msStatus_13_valid(mshrCtl_io_msStatus_13_valid),
    .io_msStatus_13_bits_set(mshrCtl_io_msStatus_13_bits_set),
    .io_msStatus_13_bits_reqTag(mshrCtl_io_msStatus_13_bits_reqTag),
    .io_msStatus_13_bits_is_miss(mshrCtl_io_msStatus_13_bits_is_miss),
    .io_msStatus_14_valid(mshrCtl_io_msStatus_14_valid),
    .io_msStatus_14_bits_set(mshrCtl_io_msStatus_14_bits_set),
    .io_msStatus_14_bits_reqTag(mshrCtl_io_msStatus_14_bits_reqTag),
    .io_msStatus_14_bits_is_miss(mshrCtl_io_msStatus_14_bits_is_miss),
    .io_msStatus_15_valid(mshrCtl_io_msStatus_15_valid),
    .io_msStatus_15_bits_set(mshrCtl_io_msStatus_15_bits_set),
    .io_msStatus_15_bits_reqTag(mshrCtl_io_msStatus_15_bits_reqTag),
    .io_msStatus_15_bits_is_miss(mshrCtl_io_msStatus_15_bits_is_miss)
  );
  Directory directory ( // @[Slice.scala 47:25]
    .clock(directory_clock),
    .reset(directory_reset),
    .io_read_ready(directory_io_read_ready),
    .io_read_valid(directory_io_read_valid),
    .io_read_bits_tag(directory_io_read_bits_tag),
    .io_read_bits_set(directory_io_read_bits_set),
    .io_read_bits_wayMask(directory_io_read_bits_wayMask),
    .io_read_bits_replacerInfo_channel(directory_io_read_bits_replacerInfo_channel),
    .io_read_bits_replacerInfo_opcode(directory_io_read_bits_replacerInfo_opcode),
    .io_read_bits_replacerInfo_reqSource(directory_io_read_bits_replacerInfo_reqSource),
    .io_read_bits_refill(directory_io_read_bits_refill),
    .io_read_bits_mshrId(directory_io_read_bits_mshrId),
    .io_resp_hit(directory_io_resp_hit),
    .io_resp_tag(directory_io_resp_tag),
    .io_resp_set(directory_io_resp_set),
    .io_resp_way(directory_io_resp_way),
    .io_resp_meta_dirty(directory_io_resp_meta_dirty),
    .io_resp_meta_state(directory_io_resp_meta_state),
    .io_resp_meta_clients(directory_io_resp_meta_clients),
    .io_resp_meta_accessed(directory_io_resp_meta_accessed),
    .io_resp_error(directory_io_resp_error),
    .io_resp_replacerInfo_channel(directory_io_resp_replacerInfo_channel),
    .io_resp_replacerInfo_opcode(directory_io_resp_replacerInfo_opcode),
    .io_resp_replacerInfo_reqSource(directory_io_resp_replacerInfo_reqSource),
    .io_metaWReq_valid(directory_io_metaWReq_valid),
    .io_metaWReq_bits_set(directory_io_metaWReq_bits_set),
    .io_metaWReq_bits_wayOH(directory_io_metaWReq_bits_wayOH),
    .io_metaWReq_bits_wmeta_dirty(directory_io_metaWReq_bits_wmeta_dirty),
    .io_metaWReq_bits_wmeta_state(directory_io_metaWReq_bits_wmeta_state),
    .io_metaWReq_bits_wmeta_clients(directory_io_metaWReq_bits_wmeta_clients),
    .io_metaWReq_bits_wmeta_accessed(directory_io_metaWReq_bits_wmeta_accessed),
    .io_tagWReq_valid(directory_io_tagWReq_valid),
    .io_tagWReq_bits_set(directory_io_tagWReq_bits_set),
    .io_tagWReq_bits_way(directory_io_tagWReq_bits_way),
    .io_tagWReq_bits_wtag(directory_io_tagWReq_bits_wtag),
    .io_replResp_valid(directory_io_replResp_valid),
    .io_replResp_bits_tag(directory_io_replResp_bits_tag),
    .io_replResp_bits_set(directory_io_replResp_bits_set),
    .io_replResp_bits_way(directory_io_replResp_bits_way),
    .io_replResp_bits_meta_dirty(directory_io_replResp_bits_meta_dirty),
    .io_replResp_bits_meta_state(directory_io_replResp_bits_meta_state),
    .io_replResp_bits_meta_clients(directory_io_replResp_bits_meta_clients),
    .io_replResp_bits_meta_accessed(directory_io_replResp_bits_meta_accessed),
    .io_replResp_bits_mshrId(directory_io_replResp_bits_mshrId),
    .io_replResp_bits_retry(directory_io_replResp_bits_retry),
    .io_msInfo_0_valid(directory_io_msInfo_0_valid),
    .io_msInfo_0_bits_set(directory_io_msInfo_0_bits_set),
    .io_msInfo_0_bits_way(directory_io_msInfo_0_bits_way),
    .io_msInfo_0_bits_reqTag(directory_io_msInfo_0_bits_reqTag),
    .io_msInfo_0_bits_willFree(directory_io_msInfo_0_bits_willFree),
    .io_msInfo_0_bits_needRelease(directory_io_msInfo_0_bits_needRelease),
    .io_msInfo_0_bits_releaseNotSent(directory_io_msInfo_0_bits_releaseNotSent),
    .io_msInfo_0_bits_metaTag(directory_io_msInfo_0_bits_metaTag),
    .io_msInfo_0_bits_dirHit(directory_io_msInfo_0_bits_dirHit),
    .io_msInfo_0_bits_nestB(directory_io_msInfo_0_bits_nestB),
    .io_msInfo_0_bits_mergeB(directory_io_msInfo_0_bits_mergeB),
    .io_msInfo_0_bits_isAcqOrPrefetch(directory_io_msInfo_0_bits_isAcqOrPrefetch),
    .io_msInfo_0_bits_isPrefetch(directory_io_msInfo_0_bits_isPrefetch),
    .io_msInfo_1_valid(directory_io_msInfo_1_valid),
    .io_msInfo_1_bits_set(directory_io_msInfo_1_bits_set),
    .io_msInfo_1_bits_way(directory_io_msInfo_1_bits_way),
    .io_msInfo_1_bits_reqTag(directory_io_msInfo_1_bits_reqTag),
    .io_msInfo_1_bits_willFree(directory_io_msInfo_1_bits_willFree),
    .io_msInfo_1_bits_needRelease(directory_io_msInfo_1_bits_needRelease),
    .io_msInfo_1_bits_releaseNotSent(directory_io_msInfo_1_bits_releaseNotSent),
    .io_msInfo_1_bits_metaTag(directory_io_msInfo_1_bits_metaTag),
    .io_msInfo_1_bits_dirHit(directory_io_msInfo_1_bits_dirHit),
    .io_msInfo_1_bits_nestB(directory_io_msInfo_1_bits_nestB),
    .io_msInfo_1_bits_mergeB(directory_io_msInfo_1_bits_mergeB),
    .io_msInfo_1_bits_isAcqOrPrefetch(directory_io_msInfo_1_bits_isAcqOrPrefetch),
    .io_msInfo_1_bits_isPrefetch(directory_io_msInfo_1_bits_isPrefetch),
    .io_msInfo_2_valid(directory_io_msInfo_2_valid),
    .io_msInfo_2_bits_set(directory_io_msInfo_2_bits_set),
    .io_msInfo_2_bits_way(directory_io_msInfo_2_bits_way),
    .io_msInfo_2_bits_reqTag(directory_io_msInfo_2_bits_reqTag),
    .io_msInfo_2_bits_willFree(directory_io_msInfo_2_bits_willFree),
    .io_msInfo_2_bits_needRelease(directory_io_msInfo_2_bits_needRelease),
    .io_msInfo_2_bits_releaseNotSent(directory_io_msInfo_2_bits_releaseNotSent),
    .io_msInfo_2_bits_metaTag(directory_io_msInfo_2_bits_metaTag),
    .io_msInfo_2_bits_dirHit(directory_io_msInfo_2_bits_dirHit),
    .io_msInfo_2_bits_nestB(directory_io_msInfo_2_bits_nestB),
    .io_msInfo_2_bits_mergeB(directory_io_msInfo_2_bits_mergeB),
    .io_msInfo_2_bits_isAcqOrPrefetch(directory_io_msInfo_2_bits_isAcqOrPrefetch),
    .io_msInfo_2_bits_isPrefetch(directory_io_msInfo_2_bits_isPrefetch),
    .io_msInfo_3_valid(directory_io_msInfo_3_valid),
    .io_msInfo_3_bits_set(directory_io_msInfo_3_bits_set),
    .io_msInfo_3_bits_way(directory_io_msInfo_3_bits_way),
    .io_msInfo_3_bits_reqTag(directory_io_msInfo_3_bits_reqTag),
    .io_msInfo_3_bits_willFree(directory_io_msInfo_3_bits_willFree),
    .io_msInfo_3_bits_needRelease(directory_io_msInfo_3_bits_needRelease),
    .io_msInfo_3_bits_releaseNotSent(directory_io_msInfo_3_bits_releaseNotSent),
    .io_msInfo_3_bits_metaTag(directory_io_msInfo_3_bits_metaTag),
    .io_msInfo_3_bits_dirHit(directory_io_msInfo_3_bits_dirHit),
    .io_msInfo_3_bits_nestB(directory_io_msInfo_3_bits_nestB),
    .io_msInfo_3_bits_mergeB(directory_io_msInfo_3_bits_mergeB),
    .io_msInfo_3_bits_isAcqOrPrefetch(directory_io_msInfo_3_bits_isAcqOrPrefetch),
    .io_msInfo_3_bits_isPrefetch(directory_io_msInfo_3_bits_isPrefetch),
    .io_msInfo_4_valid(directory_io_msInfo_4_valid),
    .io_msInfo_4_bits_set(directory_io_msInfo_4_bits_set),
    .io_msInfo_4_bits_way(directory_io_msInfo_4_bits_way),
    .io_msInfo_4_bits_reqTag(directory_io_msInfo_4_bits_reqTag),
    .io_msInfo_4_bits_willFree(directory_io_msInfo_4_bits_willFree),
    .io_msInfo_4_bits_needRelease(directory_io_msInfo_4_bits_needRelease),
    .io_msInfo_4_bits_releaseNotSent(directory_io_msInfo_4_bits_releaseNotSent),
    .io_msInfo_4_bits_metaTag(directory_io_msInfo_4_bits_metaTag),
    .io_msInfo_4_bits_dirHit(directory_io_msInfo_4_bits_dirHit),
    .io_msInfo_4_bits_nestB(directory_io_msInfo_4_bits_nestB),
    .io_msInfo_4_bits_mergeB(directory_io_msInfo_4_bits_mergeB),
    .io_msInfo_4_bits_isAcqOrPrefetch(directory_io_msInfo_4_bits_isAcqOrPrefetch),
    .io_msInfo_4_bits_isPrefetch(directory_io_msInfo_4_bits_isPrefetch),
    .io_msInfo_5_valid(directory_io_msInfo_5_valid),
    .io_msInfo_5_bits_set(directory_io_msInfo_5_bits_set),
    .io_msInfo_5_bits_way(directory_io_msInfo_5_bits_way),
    .io_msInfo_5_bits_reqTag(directory_io_msInfo_5_bits_reqTag),
    .io_msInfo_5_bits_willFree(directory_io_msInfo_5_bits_willFree),
    .io_msInfo_5_bits_needRelease(directory_io_msInfo_5_bits_needRelease),
    .io_msInfo_5_bits_releaseNotSent(directory_io_msInfo_5_bits_releaseNotSent),
    .io_msInfo_5_bits_metaTag(directory_io_msInfo_5_bits_metaTag),
    .io_msInfo_5_bits_dirHit(directory_io_msInfo_5_bits_dirHit),
    .io_msInfo_5_bits_nestB(directory_io_msInfo_5_bits_nestB),
    .io_msInfo_5_bits_mergeB(directory_io_msInfo_5_bits_mergeB),
    .io_msInfo_5_bits_isAcqOrPrefetch(directory_io_msInfo_5_bits_isAcqOrPrefetch),
    .io_msInfo_5_bits_isPrefetch(directory_io_msInfo_5_bits_isPrefetch),
    .io_msInfo_6_valid(directory_io_msInfo_6_valid),
    .io_msInfo_6_bits_set(directory_io_msInfo_6_bits_set),
    .io_msInfo_6_bits_way(directory_io_msInfo_6_bits_way),
    .io_msInfo_6_bits_reqTag(directory_io_msInfo_6_bits_reqTag),
    .io_msInfo_6_bits_willFree(directory_io_msInfo_6_bits_willFree),
    .io_msInfo_6_bits_needRelease(directory_io_msInfo_6_bits_needRelease),
    .io_msInfo_6_bits_releaseNotSent(directory_io_msInfo_6_bits_releaseNotSent),
    .io_msInfo_6_bits_metaTag(directory_io_msInfo_6_bits_metaTag),
    .io_msInfo_6_bits_dirHit(directory_io_msInfo_6_bits_dirHit),
    .io_msInfo_6_bits_nestB(directory_io_msInfo_6_bits_nestB),
    .io_msInfo_6_bits_mergeB(directory_io_msInfo_6_bits_mergeB),
    .io_msInfo_6_bits_isAcqOrPrefetch(directory_io_msInfo_6_bits_isAcqOrPrefetch),
    .io_msInfo_6_bits_isPrefetch(directory_io_msInfo_6_bits_isPrefetch),
    .io_msInfo_7_valid(directory_io_msInfo_7_valid),
    .io_msInfo_7_bits_set(directory_io_msInfo_7_bits_set),
    .io_msInfo_7_bits_way(directory_io_msInfo_7_bits_way),
    .io_msInfo_7_bits_reqTag(directory_io_msInfo_7_bits_reqTag),
    .io_msInfo_7_bits_willFree(directory_io_msInfo_7_bits_willFree),
    .io_msInfo_7_bits_needRelease(directory_io_msInfo_7_bits_needRelease),
    .io_msInfo_7_bits_releaseNotSent(directory_io_msInfo_7_bits_releaseNotSent),
    .io_msInfo_7_bits_metaTag(directory_io_msInfo_7_bits_metaTag),
    .io_msInfo_7_bits_dirHit(directory_io_msInfo_7_bits_dirHit),
    .io_msInfo_7_bits_nestB(directory_io_msInfo_7_bits_nestB),
    .io_msInfo_7_bits_mergeB(directory_io_msInfo_7_bits_mergeB),
    .io_msInfo_7_bits_isAcqOrPrefetch(directory_io_msInfo_7_bits_isAcqOrPrefetch),
    .io_msInfo_7_bits_isPrefetch(directory_io_msInfo_7_bits_isPrefetch),
    .io_msInfo_8_valid(directory_io_msInfo_8_valid),
    .io_msInfo_8_bits_set(directory_io_msInfo_8_bits_set),
    .io_msInfo_8_bits_way(directory_io_msInfo_8_bits_way),
    .io_msInfo_8_bits_reqTag(directory_io_msInfo_8_bits_reqTag),
    .io_msInfo_8_bits_willFree(directory_io_msInfo_8_bits_willFree),
    .io_msInfo_8_bits_needRelease(directory_io_msInfo_8_bits_needRelease),
    .io_msInfo_8_bits_releaseNotSent(directory_io_msInfo_8_bits_releaseNotSent),
    .io_msInfo_8_bits_metaTag(directory_io_msInfo_8_bits_metaTag),
    .io_msInfo_8_bits_dirHit(directory_io_msInfo_8_bits_dirHit),
    .io_msInfo_8_bits_nestB(directory_io_msInfo_8_bits_nestB),
    .io_msInfo_8_bits_mergeB(directory_io_msInfo_8_bits_mergeB),
    .io_msInfo_8_bits_isAcqOrPrefetch(directory_io_msInfo_8_bits_isAcqOrPrefetch),
    .io_msInfo_8_bits_isPrefetch(directory_io_msInfo_8_bits_isPrefetch),
    .io_msInfo_9_valid(directory_io_msInfo_9_valid),
    .io_msInfo_9_bits_set(directory_io_msInfo_9_bits_set),
    .io_msInfo_9_bits_way(directory_io_msInfo_9_bits_way),
    .io_msInfo_9_bits_reqTag(directory_io_msInfo_9_bits_reqTag),
    .io_msInfo_9_bits_willFree(directory_io_msInfo_9_bits_willFree),
    .io_msInfo_9_bits_needRelease(directory_io_msInfo_9_bits_needRelease),
    .io_msInfo_9_bits_releaseNotSent(directory_io_msInfo_9_bits_releaseNotSent),
    .io_msInfo_9_bits_metaTag(directory_io_msInfo_9_bits_metaTag),
    .io_msInfo_9_bits_dirHit(directory_io_msInfo_9_bits_dirHit),
    .io_msInfo_9_bits_nestB(directory_io_msInfo_9_bits_nestB),
    .io_msInfo_9_bits_mergeB(directory_io_msInfo_9_bits_mergeB),
    .io_msInfo_9_bits_isAcqOrPrefetch(directory_io_msInfo_9_bits_isAcqOrPrefetch),
    .io_msInfo_9_bits_isPrefetch(directory_io_msInfo_9_bits_isPrefetch),
    .io_msInfo_10_valid(directory_io_msInfo_10_valid),
    .io_msInfo_10_bits_set(directory_io_msInfo_10_bits_set),
    .io_msInfo_10_bits_way(directory_io_msInfo_10_bits_way),
    .io_msInfo_10_bits_reqTag(directory_io_msInfo_10_bits_reqTag),
    .io_msInfo_10_bits_willFree(directory_io_msInfo_10_bits_willFree),
    .io_msInfo_10_bits_needRelease(directory_io_msInfo_10_bits_needRelease),
    .io_msInfo_10_bits_releaseNotSent(directory_io_msInfo_10_bits_releaseNotSent),
    .io_msInfo_10_bits_metaTag(directory_io_msInfo_10_bits_metaTag),
    .io_msInfo_10_bits_dirHit(directory_io_msInfo_10_bits_dirHit),
    .io_msInfo_10_bits_nestB(directory_io_msInfo_10_bits_nestB),
    .io_msInfo_10_bits_mergeB(directory_io_msInfo_10_bits_mergeB),
    .io_msInfo_10_bits_isAcqOrPrefetch(directory_io_msInfo_10_bits_isAcqOrPrefetch),
    .io_msInfo_10_bits_isPrefetch(directory_io_msInfo_10_bits_isPrefetch),
    .io_msInfo_11_valid(directory_io_msInfo_11_valid),
    .io_msInfo_11_bits_set(directory_io_msInfo_11_bits_set),
    .io_msInfo_11_bits_way(directory_io_msInfo_11_bits_way),
    .io_msInfo_11_bits_reqTag(directory_io_msInfo_11_bits_reqTag),
    .io_msInfo_11_bits_willFree(directory_io_msInfo_11_bits_willFree),
    .io_msInfo_11_bits_needRelease(directory_io_msInfo_11_bits_needRelease),
    .io_msInfo_11_bits_releaseNotSent(directory_io_msInfo_11_bits_releaseNotSent),
    .io_msInfo_11_bits_metaTag(directory_io_msInfo_11_bits_metaTag),
    .io_msInfo_11_bits_dirHit(directory_io_msInfo_11_bits_dirHit),
    .io_msInfo_11_bits_nestB(directory_io_msInfo_11_bits_nestB),
    .io_msInfo_11_bits_mergeB(directory_io_msInfo_11_bits_mergeB),
    .io_msInfo_11_bits_isAcqOrPrefetch(directory_io_msInfo_11_bits_isAcqOrPrefetch),
    .io_msInfo_11_bits_isPrefetch(directory_io_msInfo_11_bits_isPrefetch),
    .io_msInfo_12_valid(directory_io_msInfo_12_valid),
    .io_msInfo_12_bits_set(directory_io_msInfo_12_bits_set),
    .io_msInfo_12_bits_way(directory_io_msInfo_12_bits_way),
    .io_msInfo_12_bits_reqTag(directory_io_msInfo_12_bits_reqTag),
    .io_msInfo_12_bits_willFree(directory_io_msInfo_12_bits_willFree),
    .io_msInfo_12_bits_needRelease(directory_io_msInfo_12_bits_needRelease),
    .io_msInfo_12_bits_releaseNotSent(directory_io_msInfo_12_bits_releaseNotSent),
    .io_msInfo_12_bits_metaTag(directory_io_msInfo_12_bits_metaTag),
    .io_msInfo_12_bits_dirHit(directory_io_msInfo_12_bits_dirHit),
    .io_msInfo_12_bits_nestB(directory_io_msInfo_12_bits_nestB),
    .io_msInfo_12_bits_mergeB(directory_io_msInfo_12_bits_mergeB),
    .io_msInfo_12_bits_isAcqOrPrefetch(directory_io_msInfo_12_bits_isAcqOrPrefetch),
    .io_msInfo_12_bits_isPrefetch(directory_io_msInfo_12_bits_isPrefetch),
    .io_msInfo_13_valid(directory_io_msInfo_13_valid),
    .io_msInfo_13_bits_set(directory_io_msInfo_13_bits_set),
    .io_msInfo_13_bits_way(directory_io_msInfo_13_bits_way),
    .io_msInfo_13_bits_reqTag(directory_io_msInfo_13_bits_reqTag),
    .io_msInfo_13_bits_willFree(directory_io_msInfo_13_bits_willFree),
    .io_msInfo_13_bits_needRelease(directory_io_msInfo_13_bits_needRelease),
    .io_msInfo_13_bits_releaseNotSent(directory_io_msInfo_13_bits_releaseNotSent),
    .io_msInfo_13_bits_metaTag(directory_io_msInfo_13_bits_metaTag),
    .io_msInfo_13_bits_dirHit(directory_io_msInfo_13_bits_dirHit),
    .io_msInfo_13_bits_nestB(directory_io_msInfo_13_bits_nestB),
    .io_msInfo_13_bits_mergeB(directory_io_msInfo_13_bits_mergeB),
    .io_msInfo_13_bits_isAcqOrPrefetch(directory_io_msInfo_13_bits_isAcqOrPrefetch),
    .io_msInfo_13_bits_isPrefetch(directory_io_msInfo_13_bits_isPrefetch),
    .io_msInfo_14_valid(directory_io_msInfo_14_valid),
    .io_msInfo_14_bits_set(directory_io_msInfo_14_bits_set),
    .io_msInfo_14_bits_way(directory_io_msInfo_14_bits_way),
    .io_msInfo_14_bits_reqTag(directory_io_msInfo_14_bits_reqTag),
    .io_msInfo_14_bits_willFree(directory_io_msInfo_14_bits_willFree),
    .io_msInfo_14_bits_needRelease(directory_io_msInfo_14_bits_needRelease),
    .io_msInfo_14_bits_releaseNotSent(directory_io_msInfo_14_bits_releaseNotSent),
    .io_msInfo_14_bits_metaTag(directory_io_msInfo_14_bits_metaTag),
    .io_msInfo_14_bits_dirHit(directory_io_msInfo_14_bits_dirHit),
    .io_msInfo_14_bits_nestB(directory_io_msInfo_14_bits_nestB),
    .io_msInfo_14_bits_mergeB(directory_io_msInfo_14_bits_mergeB),
    .io_msInfo_14_bits_isAcqOrPrefetch(directory_io_msInfo_14_bits_isAcqOrPrefetch),
    .io_msInfo_14_bits_isPrefetch(directory_io_msInfo_14_bits_isPrefetch),
    .io_msInfo_15_valid(directory_io_msInfo_15_valid),
    .io_msInfo_15_bits_set(directory_io_msInfo_15_bits_set),
    .io_msInfo_15_bits_way(directory_io_msInfo_15_bits_way),
    .io_msInfo_15_bits_reqTag(directory_io_msInfo_15_bits_reqTag),
    .io_msInfo_15_bits_willFree(directory_io_msInfo_15_bits_willFree),
    .io_msInfo_15_bits_needRelease(directory_io_msInfo_15_bits_needRelease),
    .io_msInfo_15_bits_releaseNotSent(directory_io_msInfo_15_bits_releaseNotSent),
    .io_msInfo_15_bits_metaTag(directory_io_msInfo_15_bits_metaTag),
    .io_msInfo_15_bits_dirHit(directory_io_msInfo_15_bits_dirHit),
    .io_msInfo_15_bits_nestB(directory_io_msInfo_15_bits_nestB),
    .io_msInfo_15_bits_mergeB(directory_io_msInfo_15_bits_mergeB),
    .io_msInfo_15_bits_isAcqOrPrefetch(directory_io_msInfo_15_bits_isAcqOrPrefetch),
    .io_msInfo_15_bits_isPrefetch(directory_io_msInfo_15_bits_isPrefetch)
  );
  DataStorage dataStorage ( // @[Slice.scala 48:27]
    .clock(dataStorage_clock),
    .io_req_valid(dataStorage_io_req_valid),
    .io_req_bits_way(dataStorage_io_req_bits_way),
    .io_req_bits_set(dataStorage_io_req_bits_set),
    .io_req_bits_wen(dataStorage_io_req_bits_wen),
    .io_rdata_data(dataStorage_io_rdata_data),
    .io_wdata_data(dataStorage_io_wdata_data)
  );
  RefillUnit refillUnit ( // @[Slice.scala 49:26]
    .clock(refillUnit_clock),
    .reset(refillUnit_reset),
    .io_sinkD_ready(refillUnit_io_sinkD_ready),
    .io_sinkD_valid(refillUnit_io_sinkD_valid),
    .io_sinkD_bits_opcode(refillUnit_io_sinkD_bits_opcode),
    .io_sinkD_bits_param(refillUnit_io_sinkD_bits_param),
    .io_sinkD_bits_size(refillUnit_io_sinkD_bits_size),
    .io_sinkD_bits_source(refillUnit_io_sinkD_bits_source),
    .io_sinkD_bits_sink(refillUnit_io_sinkD_bits_sink),
    .io_sinkD_bits_echo_blockisdirty(refillUnit_io_sinkD_bits_echo_blockisdirty),
    .io_sinkD_bits_data(refillUnit_io_sinkD_bits_data),
    .io_sourceE_ready(refillUnit_io_sourceE_ready),
    .io_sourceE_valid(refillUnit_io_sourceE_valid),
    .io_sourceE_bits_sink(refillUnit_io_sourceE_bits_sink),
    .io_refillBufWrite_valid(refillUnit_io_refillBufWrite_valid),
    .io_refillBufWrite_beat_sel(refillUnit_io_refillBufWrite_beat_sel),
    .io_refillBufWrite_data_data(refillUnit_io_refillBufWrite_data_data),
    .io_refillBufWrite_id(refillUnit_io_refillBufWrite_id),
    .io_resp_valid(refillUnit_io_resp_valid),
    .io_resp_mshrId(refillUnit_io_resp_mshrId),
    .io_resp_respInfo_opcode(refillUnit_io_resp_respInfo_opcode),
    .io_resp_respInfo_param(refillUnit_io_resp_respInfo_param),
    .io_resp_respInfo_last(refillUnit_io_resp_respInfo_last),
    .io_resp_respInfo_dirty(refillUnit_io_resp_respInfo_dirty),
    .io_resp_respInfo_isHit(refillUnit_io_resp_respInfo_isHit)
  );
  SinkA sinkA ( // @[Slice.scala 50:21]
    .io_a_ready(sinkA_io_a_ready),
    .io_a_valid(sinkA_io_a_valid),
    .io_a_bits_opcode(sinkA_io_a_bits_opcode),
    .io_a_bits_param(sinkA_io_a_bits_param),
    .io_a_bits_size(sinkA_io_a_bits_size),
    .io_a_bits_source(sinkA_io_a_bits_source),
    .io_a_bits_address(sinkA_io_a_bits_address),
    .io_a_bits_user_reqSource(sinkA_io_a_bits_user_reqSource),
    .io_task_ready(sinkA_io_task_ready),
    .io_task_valid(sinkA_io_task_valid),
    .io_task_bits_set(sinkA_io_task_bits_set),
    .io_task_bits_tag(sinkA_io_task_bits_tag),
    .io_task_bits_off(sinkA_io_task_bits_off),
    .io_task_bits_opcode(sinkA_io_task_bits_opcode),
    .io_task_bits_param(sinkA_io_task_bits_param),
    .io_task_bits_size(sinkA_io_task_bits_size),
    .io_task_bits_sourceId(sinkA_io_task_bits_sourceId),
    .io_task_bits_reqSource(sinkA_io_task_bits_reqSource)
  );
  SinkB sinkB ( // @[Slice.scala 51:21]
    .io_bready(sinkB_io_bready),
    .io_bvalid(sinkB_io_bvalid),
    .io_bopcode(sinkB_io_bopcode),
    .io_bparam(sinkB_io_bparam),
    .io_bsize(sinkB_io_bsize),
    .io_baddress(sinkB_io_baddress),
    .io_bdata(sinkB_io_bdata),
    .io_task_ready(sinkB_io_task_ready),
    .io_task_valid(sinkB_io_task_valid),
    .io_task_bits_set(sinkB_io_task_bits_set),
    .io_task_bits_tag(sinkB_io_task_bits_tag),
    .io_task_bits_off(sinkB_io_task_bits_off),
    .io_task_bits_opcode(sinkB_io_task_bits_opcode),
    .io_task_bits_param(sinkB_io_task_bits_param),
    .io_task_bits_size(sinkB_io_task_bits_size),
    .io_task_bits_needProbeAckData(sinkB_io_task_bits_needProbeAckData),
    .io_msInfo_0_valid(sinkB_io_msInfo_0_valid),
    .io_msInfo_0_bits_set(sinkB_io_msInfo_0_bits_set),
    .io_msInfo_0_bits_reqTag(sinkB_io_msInfo_0_bits_reqTag),
    .io_msInfo_0_bits_willFree(sinkB_io_msInfo_0_bits_willFree),
    .io_msInfo_0_bits_releaseNotSent(sinkB_io_msInfo_0_bits_releaseNotSent),
    .io_msInfo_0_bits_metaTag(sinkB_io_msInfo_0_bits_metaTag),
    .io_msInfo_0_bits_nestB(sinkB_io_msInfo_0_bits_nestB),
    .io_msInfo_0_bits_mergeB(sinkB_io_msInfo_0_bits_mergeB),
    .io_msInfo_1_valid(sinkB_io_msInfo_1_valid),
    .io_msInfo_1_bits_set(sinkB_io_msInfo_1_bits_set),
    .io_msInfo_1_bits_reqTag(sinkB_io_msInfo_1_bits_reqTag),
    .io_msInfo_1_bits_willFree(sinkB_io_msInfo_1_bits_willFree),
    .io_msInfo_1_bits_releaseNotSent(sinkB_io_msInfo_1_bits_releaseNotSent),
    .io_msInfo_1_bits_metaTag(sinkB_io_msInfo_1_bits_metaTag),
    .io_msInfo_1_bits_nestB(sinkB_io_msInfo_1_bits_nestB),
    .io_msInfo_1_bits_mergeB(sinkB_io_msInfo_1_bits_mergeB),
    .io_msInfo_2_valid(sinkB_io_msInfo_2_valid),
    .io_msInfo_2_bits_set(sinkB_io_msInfo_2_bits_set),
    .io_msInfo_2_bits_reqTag(sinkB_io_msInfo_2_bits_reqTag),
    .io_msInfo_2_bits_willFree(sinkB_io_msInfo_2_bits_willFree),
    .io_msInfo_2_bits_releaseNotSent(sinkB_io_msInfo_2_bits_releaseNotSent),
    .io_msInfo_2_bits_metaTag(sinkB_io_msInfo_2_bits_metaTag),
    .io_msInfo_2_bits_nestB(sinkB_io_msInfo_2_bits_nestB),
    .io_msInfo_2_bits_mergeB(sinkB_io_msInfo_2_bits_mergeB),
    .io_msInfo_3_valid(sinkB_io_msInfo_3_valid),
    .io_msInfo_3_bits_set(sinkB_io_msInfo_3_bits_set),
    .io_msInfo_3_bits_reqTag(sinkB_io_msInfo_3_bits_reqTag),
    .io_msInfo_3_bits_willFree(sinkB_io_msInfo_3_bits_willFree),
    .io_msInfo_3_bits_releaseNotSent(sinkB_io_msInfo_3_bits_releaseNotSent),
    .io_msInfo_3_bits_metaTag(sinkB_io_msInfo_3_bits_metaTag),
    .io_msInfo_3_bits_nestB(sinkB_io_msInfo_3_bits_nestB),
    .io_msInfo_3_bits_mergeB(sinkB_io_msInfo_3_bits_mergeB),
    .io_msInfo_4_valid(sinkB_io_msInfo_4_valid),
    .io_msInfo_4_bits_set(sinkB_io_msInfo_4_bits_set),
    .io_msInfo_4_bits_reqTag(sinkB_io_msInfo_4_bits_reqTag),
    .io_msInfo_4_bits_willFree(sinkB_io_msInfo_4_bits_willFree),
    .io_msInfo_4_bits_releaseNotSent(sinkB_io_msInfo_4_bits_releaseNotSent),
    .io_msInfo_4_bits_metaTag(sinkB_io_msInfo_4_bits_metaTag),
    .io_msInfo_4_bits_nestB(sinkB_io_msInfo_4_bits_nestB),
    .io_msInfo_4_bits_mergeB(sinkB_io_msInfo_4_bits_mergeB),
    .io_msInfo_5_valid(sinkB_io_msInfo_5_valid),
    .io_msInfo_5_bits_set(sinkB_io_msInfo_5_bits_set),
    .io_msInfo_5_bits_reqTag(sinkB_io_msInfo_5_bits_reqTag),
    .io_msInfo_5_bits_willFree(sinkB_io_msInfo_5_bits_willFree),
    .io_msInfo_5_bits_releaseNotSent(sinkB_io_msInfo_5_bits_releaseNotSent),
    .io_msInfo_5_bits_metaTag(sinkB_io_msInfo_5_bits_metaTag),
    .io_msInfo_5_bits_nestB(sinkB_io_msInfo_5_bits_nestB),
    .io_msInfo_5_bits_mergeB(sinkB_io_msInfo_5_bits_mergeB),
    .io_msInfo_6_valid(sinkB_io_msInfo_6_valid),
    .io_msInfo_6_bits_set(sinkB_io_msInfo_6_bits_set),
    .io_msInfo_6_bits_reqTag(sinkB_io_msInfo_6_bits_reqTag),
    .io_msInfo_6_bits_willFree(sinkB_io_msInfo_6_bits_willFree),
    .io_msInfo_6_bits_releaseNotSent(sinkB_io_msInfo_6_bits_releaseNotSent),
    .io_msInfo_6_bits_metaTag(sinkB_io_msInfo_6_bits_metaTag),
    .io_msInfo_6_bits_nestB(sinkB_io_msInfo_6_bits_nestB),
    .io_msInfo_6_bits_mergeB(sinkB_io_msInfo_6_bits_mergeB),
    .io_msInfo_7_valid(sinkB_io_msInfo_7_valid),
    .io_msInfo_7_bits_set(sinkB_io_msInfo_7_bits_set),
    .io_msInfo_7_bits_reqTag(sinkB_io_msInfo_7_bits_reqTag),
    .io_msInfo_7_bits_willFree(sinkB_io_msInfo_7_bits_willFree),
    .io_msInfo_7_bits_releaseNotSent(sinkB_io_msInfo_7_bits_releaseNotSent),
    .io_msInfo_7_bits_metaTag(sinkB_io_msInfo_7_bits_metaTag),
    .io_msInfo_7_bits_nestB(sinkB_io_msInfo_7_bits_nestB),
    .io_msInfo_7_bits_mergeB(sinkB_io_msInfo_7_bits_mergeB),
    .io_msInfo_8_valid(sinkB_io_msInfo_8_valid),
    .io_msInfo_8_bits_set(sinkB_io_msInfo_8_bits_set),
    .io_msInfo_8_bits_reqTag(sinkB_io_msInfo_8_bits_reqTag),
    .io_msInfo_8_bits_willFree(sinkB_io_msInfo_8_bits_willFree),
    .io_msInfo_8_bits_releaseNotSent(sinkB_io_msInfo_8_bits_releaseNotSent),
    .io_msInfo_8_bits_metaTag(sinkB_io_msInfo_8_bits_metaTag),
    .io_msInfo_8_bits_nestB(sinkB_io_msInfo_8_bits_nestB),
    .io_msInfo_8_bits_mergeB(sinkB_io_msInfo_8_bits_mergeB),
    .io_msInfo_9_valid(sinkB_io_msInfo_9_valid),
    .io_msInfo_9_bits_set(sinkB_io_msInfo_9_bits_set),
    .io_msInfo_9_bits_reqTag(sinkB_io_msInfo_9_bits_reqTag),
    .io_msInfo_9_bits_willFree(sinkB_io_msInfo_9_bits_willFree),
    .io_msInfo_9_bits_releaseNotSent(sinkB_io_msInfo_9_bits_releaseNotSent),
    .io_msInfo_9_bits_metaTag(sinkB_io_msInfo_9_bits_metaTag),
    .io_msInfo_9_bits_nestB(sinkB_io_msInfo_9_bits_nestB),
    .io_msInfo_9_bits_mergeB(sinkB_io_msInfo_9_bits_mergeB),
    .io_msInfo_10_valid(sinkB_io_msInfo_10_valid),
    .io_msInfo_10_bits_set(sinkB_io_msInfo_10_bits_set),
    .io_msInfo_10_bits_reqTag(sinkB_io_msInfo_10_bits_reqTag),
    .io_msInfo_10_bits_willFree(sinkB_io_msInfo_10_bits_willFree),
    .io_msInfo_10_bits_releaseNotSent(sinkB_io_msInfo_10_bits_releaseNotSent),
    .io_msInfo_10_bits_metaTag(sinkB_io_msInfo_10_bits_metaTag),
    .io_msInfo_10_bits_nestB(sinkB_io_msInfo_10_bits_nestB),
    .io_msInfo_10_bits_mergeB(sinkB_io_msInfo_10_bits_mergeB),
    .io_msInfo_11_valid(sinkB_io_msInfo_11_valid),
    .io_msInfo_11_bits_set(sinkB_io_msInfo_11_bits_set),
    .io_msInfo_11_bits_reqTag(sinkB_io_msInfo_11_bits_reqTag),
    .io_msInfo_11_bits_willFree(sinkB_io_msInfo_11_bits_willFree),
    .io_msInfo_11_bits_releaseNotSent(sinkB_io_msInfo_11_bits_releaseNotSent),
    .io_msInfo_11_bits_metaTag(sinkB_io_msInfo_11_bits_metaTag),
    .io_msInfo_11_bits_nestB(sinkB_io_msInfo_11_bits_nestB),
    .io_msInfo_11_bits_mergeB(sinkB_io_msInfo_11_bits_mergeB),
    .io_msInfo_12_valid(sinkB_io_msInfo_12_valid),
    .io_msInfo_12_bits_set(sinkB_io_msInfo_12_bits_set),
    .io_msInfo_12_bits_reqTag(sinkB_io_msInfo_12_bits_reqTag),
    .io_msInfo_12_bits_willFree(sinkB_io_msInfo_12_bits_willFree),
    .io_msInfo_12_bits_releaseNotSent(sinkB_io_msInfo_12_bits_releaseNotSent),
    .io_msInfo_12_bits_metaTag(sinkB_io_msInfo_12_bits_metaTag),
    .io_msInfo_12_bits_nestB(sinkB_io_msInfo_12_bits_nestB),
    .io_msInfo_12_bits_mergeB(sinkB_io_msInfo_12_bits_mergeB),
    .io_msInfo_13_valid(sinkB_io_msInfo_13_valid),
    .io_msInfo_13_bits_set(sinkB_io_msInfo_13_bits_set),
    .io_msInfo_13_bits_reqTag(sinkB_io_msInfo_13_bits_reqTag),
    .io_msInfo_13_bits_willFree(sinkB_io_msInfo_13_bits_willFree),
    .io_msInfo_13_bits_releaseNotSent(sinkB_io_msInfo_13_bits_releaseNotSent),
    .io_msInfo_13_bits_metaTag(sinkB_io_msInfo_13_bits_metaTag),
    .io_msInfo_13_bits_nestB(sinkB_io_msInfo_13_bits_nestB),
    .io_msInfo_13_bits_mergeB(sinkB_io_msInfo_13_bits_mergeB),
    .io_msInfo_14_valid(sinkB_io_msInfo_14_valid),
    .io_msInfo_14_bits_set(sinkB_io_msInfo_14_bits_set),
    .io_msInfo_14_bits_reqTag(sinkB_io_msInfo_14_bits_reqTag),
    .io_msInfo_14_bits_willFree(sinkB_io_msInfo_14_bits_willFree),
    .io_msInfo_14_bits_releaseNotSent(sinkB_io_msInfo_14_bits_releaseNotSent),
    .io_msInfo_14_bits_metaTag(sinkB_io_msInfo_14_bits_metaTag),
    .io_msInfo_14_bits_nestB(sinkB_io_msInfo_14_bits_nestB),
    .io_msInfo_14_bits_mergeB(sinkB_io_msInfo_14_bits_mergeB),
    .io_msInfo_15_valid(sinkB_io_msInfo_15_valid),
    .io_msInfo_15_bits_set(sinkB_io_msInfo_15_bits_set),
    .io_msInfo_15_bits_reqTag(sinkB_io_msInfo_15_bits_reqTag),
    .io_msInfo_15_bits_willFree(sinkB_io_msInfo_15_bits_willFree),
    .io_msInfo_15_bits_releaseNotSent(sinkB_io_msInfo_15_bits_releaseNotSent),
    .io_msInfo_15_bits_metaTag(sinkB_io_msInfo_15_bits_metaTag),
    .io_msInfo_15_bits_nestB(sinkB_io_msInfo_15_bits_nestB),
    .io_msInfo_15_bits_mergeB(sinkB_io_msInfo_15_bits_mergeB),
    .io_bMergeTask_valid(sinkB_io_bMergeTask_valid),
    .io_bMergeTask_bits_id(sinkB_io_bMergeTask_bits_id),
    .io_bMergeTask_bits_task_set(sinkB_io_bMergeTask_bits_task_set),
    .io_bMergeTask_bits_task_tag(sinkB_io_bMergeTask_bits_task_tag),
    .io_bMergeTask_bits_task_off(sinkB_io_bMergeTask_bits_task_off),
    .io_bMergeTask_bits_task_param(sinkB_io_bMergeTask_bits_task_param),
    .io_bMergeTask_bits_task_needProbeAckData(sinkB_io_bMergeTask_bits_task_needProbeAckData)
  );
  SinkC sinkC ( // @[Slice.scala 52:21]
    .clock(sinkC_clock),
    .reset(sinkC_reset),
    .io_c_ready(sinkC_io_c_ready),
    .io_c_valid(sinkC_io_c_valid),
    .io_c_bits_opcode(sinkC_io_c_bits_opcode),
    .io_c_bits_param(sinkC_io_c_bits_param),
    .io_c_bits_size(sinkC_io_c_bits_size),
    .io_c_bits_source(sinkC_io_c_bits_source),
    .io_c_bits_address(sinkC_io_c_bits_address),
    .io_c_bits_data(sinkC_io_c_bits_data),
    .io_task_ready(sinkC_io_task_ready),
    .io_task_valid(sinkC_io_task_valid),
    .io_task_bits_set(sinkC_io_task_bits_set),
    .io_task_bits_tag(sinkC_io_task_bits_tag),
    .io_task_bits_off(sinkC_io_task_bits_off),
    .io_task_bits_opcode(sinkC_io_task_bits_opcode),
    .io_task_bits_param(sinkC_io_task_bits_param),
    .io_task_bits_size(sinkC_io_task_bits_size),
    .io_task_bits_sourceId(sinkC_io_task_bits_sourceId),
    .io_task_bits_bufIdx(sinkC_io_task_bits_bufIdx),
    .io_resp_valid(sinkC_io_resp_valid),
    .io_resp_set(sinkC_io_resp_set),
    .io_resp_tag(sinkC_io_resp_tag),
    .io_resp_respInfo_opcode(sinkC_io_resp_respInfo_opcode),
    .io_resp_respInfo_param(sinkC_io_resp_respInfo_param),
    .io_resp_respInfo_last(sinkC_io_resp_respInfo_last),
    .io_releaseBufWrite_valid(sinkC_io_releaseBufWrite_valid),
    .io_releaseBufWrite_beat_sel(sinkC_io_releaseBufWrite_beat_sel),
    .io_releaseBufWrite_data_data(sinkC_io_releaseBufWrite_data_data),
    .io_bufRead_valid(sinkC_io_bufRead_valid),
    .io_bufRead_bits_bufIdx(sinkC_io_bufRead_bits_bufIdx),
    .io_bufResp_data_0(sinkC_io_bufResp_data_0),
    .io_bufResp_data_1(sinkC_io_bufResp_data_1),
    .io_refillBufWrite_valid(sinkC_io_refillBufWrite_valid),
    .io_refillBufWrite_data_data(sinkC_io_refillBufWrite_data_data),
    .io_refillBufWrite_id(sinkC_io_refillBufWrite_id),
    .io_msInfo_0_valid(sinkC_io_msInfo_0_valid),
    .io_msInfo_0_bits_set(sinkC_io_msInfo_0_bits_set),
    .io_msInfo_0_bits_reqTag(sinkC_io_msInfo_0_bits_reqTag),
    .io_msInfo_0_bits_releaseNotSent(sinkC_io_msInfo_0_bits_releaseNotSent),
    .io_msInfo_1_valid(sinkC_io_msInfo_1_valid),
    .io_msInfo_1_bits_set(sinkC_io_msInfo_1_bits_set),
    .io_msInfo_1_bits_reqTag(sinkC_io_msInfo_1_bits_reqTag),
    .io_msInfo_1_bits_releaseNotSent(sinkC_io_msInfo_1_bits_releaseNotSent),
    .io_msInfo_2_valid(sinkC_io_msInfo_2_valid),
    .io_msInfo_2_bits_set(sinkC_io_msInfo_2_bits_set),
    .io_msInfo_2_bits_reqTag(sinkC_io_msInfo_2_bits_reqTag),
    .io_msInfo_2_bits_releaseNotSent(sinkC_io_msInfo_2_bits_releaseNotSent),
    .io_msInfo_3_valid(sinkC_io_msInfo_3_valid),
    .io_msInfo_3_bits_set(sinkC_io_msInfo_3_bits_set),
    .io_msInfo_3_bits_reqTag(sinkC_io_msInfo_3_bits_reqTag),
    .io_msInfo_3_bits_releaseNotSent(sinkC_io_msInfo_3_bits_releaseNotSent),
    .io_msInfo_4_valid(sinkC_io_msInfo_4_valid),
    .io_msInfo_4_bits_set(sinkC_io_msInfo_4_bits_set),
    .io_msInfo_4_bits_reqTag(sinkC_io_msInfo_4_bits_reqTag),
    .io_msInfo_4_bits_releaseNotSent(sinkC_io_msInfo_4_bits_releaseNotSent),
    .io_msInfo_5_valid(sinkC_io_msInfo_5_valid),
    .io_msInfo_5_bits_set(sinkC_io_msInfo_5_bits_set),
    .io_msInfo_5_bits_reqTag(sinkC_io_msInfo_5_bits_reqTag),
    .io_msInfo_5_bits_releaseNotSent(sinkC_io_msInfo_5_bits_releaseNotSent),
    .io_msInfo_6_valid(sinkC_io_msInfo_6_valid),
    .io_msInfo_6_bits_set(sinkC_io_msInfo_6_bits_set),
    .io_msInfo_6_bits_reqTag(sinkC_io_msInfo_6_bits_reqTag),
    .io_msInfo_6_bits_releaseNotSent(sinkC_io_msInfo_6_bits_releaseNotSent),
    .io_msInfo_7_valid(sinkC_io_msInfo_7_valid),
    .io_msInfo_7_bits_set(sinkC_io_msInfo_7_bits_set),
    .io_msInfo_7_bits_reqTag(sinkC_io_msInfo_7_bits_reqTag),
    .io_msInfo_7_bits_releaseNotSent(sinkC_io_msInfo_7_bits_releaseNotSent),
    .io_msInfo_8_valid(sinkC_io_msInfo_8_valid),
    .io_msInfo_8_bits_set(sinkC_io_msInfo_8_bits_set),
    .io_msInfo_8_bits_reqTag(sinkC_io_msInfo_8_bits_reqTag),
    .io_msInfo_8_bits_releaseNotSent(sinkC_io_msInfo_8_bits_releaseNotSent),
    .io_msInfo_9_valid(sinkC_io_msInfo_9_valid),
    .io_msInfo_9_bits_set(sinkC_io_msInfo_9_bits_set),
    .io_msInfo_9_bits_reqTag(sinkC_io_msInfo_9_bits_reqTag),
    .io_msInfo_9_bits_releaseNotSent(sinkC_io_msInfo_9_bits_releaseNotSent),
    .io_msInfo_10_valid(sinkC_io_msInfo_10_valid),
    .io_msInfo_10_bits_set(sinkC_io_msInfo_10_bits_set),
    .io_msInfo_10_bits_reqTag(sinkC_io_msInfo_10_bits_reqTag),
    .io_msInfo_10_bits_releaseNotSent(sinkC_io_msInfo_10_bits_releaseNotSent),
    .io_msInfo_11_valid(sinkC_io_msInfo_11_valid),
    .io_msInfo_11_bits_set(sinkC_io_msInfo_11_bits_set),
    .io_msInfo_11_bits_reqTag(sinkC_io_msInfo_11_bits_reqTag),
    .io_msInfo_11_bits_releaseNotSent(sinkC_io_msInfo_11_bits_releaseNotSent),
    .io_msInfo_12_valid(sinkC_io_msInfo_12_valid),
    .io_msInfo_12_bits_set(sinkC_io_msInfo_12_bits_set),
    .io_msInfo_12_bits_reqTag(sinkC_io_msInfo_12_bits_reqTag),
    .io_msInfo_12_bits_releaseNotSent(sinkC_io_msInfo_12_bits_releaseNotSent),
    .io_msInfo_13_valid(sinkC_io_msInfo_13_valid),
    .io_msInfo_13_bits_set(sinkC_io_msInfo_13_bits_set),
    .io_msInfo_13_bits_reqTag(sinkC_io_msInfo_13_bits_reqTag),
    .io_msInfo_13_bits_releaseNotSent(sinkC_io_msInfo_13_bits_releaseNotSent),
    .io_msInfo_14_valid(sinkC_io_msInfo_14_valid),
    .io_msInfo_14_bits_set(sinkC_io_msInfo_14_bits_set),
    .io_msInfo_14_bits_reqTag(sinkC_io_msInfo_14_bits_reqTag),
    .io_msInfo_14_bits_releaseNotSent(sinkC_io_msInfo_14_bits_releaseNotSent),
    .io_msInfo_15_valid(sinkC_io_msInfo_15_valid),
    .io_msInfo_15_bits_set(sinkC_io_msInfo_15_bits_set),
    .io_msInfo_15_bits_reqTag(sinkC_io_msInfo_15_bits_reqTag),
    .io_msInfo_15_bits_releaseNotSent(sinkC_io_msInfo_15_bits_releaseNotSent)
  );
  SourceC sourceC ( // @[Slice.scala 53:23]
    .clock(sourceC_clock),
    .reset(sourceC_reset),
    .io_in_ready(sourceC_io_in_ready),
    .io_in_valid(sourceC_io_in_valid),
    .io_in_bits_task_set(sourceC_io_in_bits_task_set),
    .io_in_bits_task_tag(sourceC_io_in_bits_task_tag),
    .io_in_bits_task_off(sourceC_io_in_bits_task_off),
    .io_in_bits_task_opcode(sourceC_io_in_bits_task_opcode),
    .io_in_bits_task_param(sourceC_io_in_bits_task_param),
    .io_in_bits_task_mshrId(sourceC_io_in_bits_task_mshrId),
    .io_in_bits_task_dirty(sourceC_io_in_bits_task_dirty),
    .io_in_bits_data_data(sourceC_io_in_bits_data_data),
    .io_out_ready(sourceC_io_out_ready),
    .io_out_valid(sourceC_io_out_valid),
    .io_out_bits_opcode(sourceC_io_out_bits_opcode),
    .io_out_bits_param(sourceC_io_out_bits_param),
    .io_out_bits_source(sourceC_io_out_bits_source),
    .io_out_bits_address(sourceC_io_out_bits_address),
    .io_out_bits_echo_blockisdirty(sourceC_io_out_bits_echo_blockisdirty),
    .io_out_bits_data(sourceC_io_out_bits_data)
  );
  GrantBuffer grantBuf ( // @[Slice.scala 54:24]
    .clock(grantBuf_clock),
    .reset(grantBuf_reset),
    .io_d_task_ready(grantBuf_io_d_task_ready),
    .io_d_task_valid(grantBuf_io_d_task_valid),
    .io_d_task_bits_task_set(grantBuf_io_d_task_bits_task_set),
    .io_d_task_bits_task_tag(grantBuf_io_d_task_bits_task_tag),
    .io_d_task_bits_task_opcode(grantBuf_io_d_task_bits_task_opcode),
    .io_d_task_bits_task_param(grantBuf_io_d_task_bits_task_param),
    .io_d_task_bits_task_sourceId(grantBuf_io_d_task_bits_task_sourceId),
    .io_d_task_bits_task_mshrId(grantBuf_io_d_task_bits_task_mshrId),
    .io_d_task_bits_data_data(grantBuf_io_d_task_bits_data_data),
    .io_d_ready(grantBuf_io_d_ready),
    .io_d_valid(grantBuf_io_d_valid),
    .io_d_bits_opcode(grantBuf_io_d_bits_opcode),
    .io_d_bits_param(grantBuf_io_d_bits_param),
    .io_d_bits_source(grantBuf_io_d_bits_source),
    .io_d_bits_sink(grantBuf_io_d_bits_sink),
    .io_d_bits_data(grantBuf_io_d_bits_data),
    .io_e_ready(grantBuf_io_e_ready),
    .io_e_valid(grantBuf_io_e_valid),
    .io_e_bits_sink(grantBuf_io_e_bits_sink),
    .io_e_resp_valid(grantBuf_io_e_resp_valid),
    .io_e_resp_mshrId(grantBuf_io_e_resp_mshrId),
    .io_fromReqArb_status_s1_tags_1(grantBuf_io_fromReqArb_status_s1_tags_1),
    .io_fromReqArb_status_s1_sets_1(grantBuf_io_fromReqArb_status_s1_sets_1),
    .io_pipeStatusVec_0_valid(grantBuf_io_pipeStatusVec_0_valid),
    .io_pipeStatusVec_0_bits_channel(grantBuf_io_pipeStatusVec_0_bits_channel),
    .io_pipeStatusVec_1_valid(grantBuf_io_pipeStatusVec_1_valid),
    .io_pipeStatusVec_1_bits_channel(grantBuf_io_pipeStatusVec_1_bits_channel),
    .io_pipeStatusVec_2_valid(grantBuf_io_pipeStatusVec_2_valid),
    .io_pipeStatusVec_2_bits_channel(grantBuf_io_pipeStatusVec_2_bits_channel),
    .io_pipeStatusVec_3_valid(grantBuf_io_pipeStatusVec_3_valid),
    .io_pipeStatusVec_3_bits_channel(grantBuf_io_pipeStatusVec_3_bits_channel),
    .io_pipeStatusVec_4_valid(grantBuf_io_pipeStatusVec_4_valid),
    .io_pipeStatusVec_4_bits_channel(grantBuf_io_pipeStatusVec_4_bits_channel),
    .io_toReqArb_blockSinkReqEntrance_blockA_s1(grantBuf_io_toReqArb_blockSinkReqEntrance_blockA_s1),
    .io_toReqArb_blockSinkReqEntrance_blockB_s1(grantBuf_io_toReqArb_blockSinkReqEntrance_blockB_s1),
    .io_toReqArb_blockSinkReqEntrance_blockC_s1(grantBuf_io_toReqArb_blockSinkReqEntrance_blockC_s1),
    .io_toReqArb_blockMSHRReqEntrance(grantBuf_io_toReqArb_blockMSHRReqEntrance),
    .io_grantStatus_0_valid(grantBuf_io_grantStatus_0_valid),
    .io_grantStatus_0_set(grantBuf_io_grantStatus_0_set),
    .io_grantStatus_0_tag(grantBuf_io_grantStatus_0_tag),
    .io_grantStatus_1_valid(grantBuf_io_grantStatus_1_valid),
    .io_grantStatus_1_set(grantBuf_io_grantStatus_1_set),
    .io_grantStatus_1_tag(grantBuf_io_grantStatus_1_tag),
    .io_grantStatus_2_valid(grantBuf_io_grantStatus_2_valid),
    .io_grantStatus_2_set(grantBuf_io_grantStatus_2_set),
    .io_grantStatus_2_tag(grantBuf_io_grantStatus_2_tag),
    .io_grantStatus_3_valid(grantBuf_io_grantStatus_3_valid),
    .io_grantStatus_3_set(grantBuf_io_grantStatus_3_set),
    .io_grantStatus_3_tag(grantBuf_io_grantStatus_3_tag),
    .io_grantStatus_4_valid(grantBuf_io_grantStatus_4_valid),
    .io_grantStatus_4_set(grantBuf_io_grantStatus_4_set),
    .io_grantStatus_4_tag(grantBuf_io_grantStatus_4_tag),
    .io_grantStatus_5_valid(grantBuf_io_grantStatus_5_valid),
    .io_grantStatus_5_set(grantBuf_io_grantStatus_5_set),
    .io_grantStatus_5_tag(grantBuf_io_grantStatus_5_tag),
    .io_grantStatus_6_valid(grantBuf_io_grantStatus_6_valid),
    .io_grantStatus_6_set(grantBuf_io_grantStatus_6_set),
    .io_grantStatus_6_tag(grantBuf_io_grantStatus_6_tag),
    .io_grantStatus_7_valid(grantBuf_io_grantStatus_7_valid),
    .io_grantStatus_7_set(grantBuf_io_grantStatus_7_set),
    .io_grantStatus_7_tag(grantBuf_io_grantStatus_7_tag),
    .io_grantStatus_8_valid(grantBuf_io_grantStatus_8_valid),
    .io_grantStatus_8_set(grantBuf_io_grantStatus_8_set),
    .io_grantStatus_8_tag(grantBuf_io_grantStatus_8_tag),
    .io_grantStatus_9_valid(grantBuf_io_grantStatus_9_valid),
    .io_grantStatus_9_set(grantBuf_io_grantStatus_9_set),
    .io_grantStatus_9_tag(grantBuf_io_grantStatus_9_tag),
    .io_grantStatus_10_valid(grantBuf_io_grantStatus_10_valid),
    .io_grantStatus_10_set(grantBuf_io_grantStatus_10_set),
    .io_grantStatus_10_tag(grantBuf_io_grantStatus_10_tag),
    .io_grantStatus_11_valid(grantBuf_io_grantStatus_11_valid),
    .io_grantStatus_11_set(grantBuf_io_grantStatus_11_set),
    .io_grantStatus_11_tag(grantBuf_io_grantStatus_11_tag),
    .io_grantStatus_12_valid(grantBuf_io_grantStatus_12_valid),
    .io_grantStatus_12_set(grantBuf_io_grantStatus_12_set),
    .io_grantStatus_12_tag(grantBuf_io_grantStatus_12_tag),
    .io_grantStatus_13_valid(grantBuf_io_grantStatus_13_valid),
    .io_grantStatus_13_set(grantBuf_io_grantStatus_13_set),
    .io_grantStatus_13_tag(grantBuf_io_grantStatus_13_tag),
    .io_grantStatus_14_valid(grantBuf_io_grantStatus_14_valid),
    .io_grantStatus_14_set(grantBuf_io_grantStatus_14_set),
    .io_grantStatus_14_tag(grantBuf_io_grantStatus_14_tag),
    .io_grantStatus_15_valid(grantBuf_io_grantStatus_15_valid),
    .io_grantStatus_15_set(grantBuf_io_grantStatus_15_set),
    .io_grantStatus_15_tag(grantBuf_io_grantStatus_15_tag),
    .io_l1Hint_valid(grantBuf_io_l1Hint_valid),
    .io_l1Hint_bits_sourceId(grantBuf_io_l1Hint_bits_sourceId),
    .io_globalCounter(grantBuf_io_globalCounter)
  );
  MSHRBuffer refillBuf ( // @[Slice.scala 55:25]
    .clock(refillBuf_clock),
    .reset(refillBuf_reset),
    .io_rvalid(refillBuf_io_rvalid),
    .io_rid(refillBuf_io_rid),
    .io_rdata_data(refillBuf_io_rdata_data),
    .io_w0_valid(refillBuf_io_w0_valid),
    .io_w0_beat_sel(refillBuf_io_w0_beat_sel),
    .io_w0_data_data(refillBuf_io_w0_data_data),
    .io_w0_id(refillBuf_io_w0_id),
    .io_w1_valid(refillBuf_io_w1_valid),
    .io_w1_beat_sel(refillBuf_io_w1_beat_sel),
    .io_w1_data_data(refillBuf_io_w1_data_data),
    .io_w1_id(refillBuf_io_w1_id),
    .io_w2_valid(refillBuf_io_w2_valid),
    .io_w2_data_data(refillBuf_io_w2_data_data),
    .io_w2_id(refillBuf_io_w2_id)
  );
  MSHRBuffer releaseBuf ( // @[Slice.scala 56:26]
    .clock(releaseBuf_clock),
    .reset(releaseBuf_reset),
    .io_rvalid(releaseBuf_io_rvalid),
    .io_rid(releaseBuf_io_rid),
    .io_rdata_data(releaseBuf_io_rdata_data),
    .io_w0_valid(releaseBuf_io_w0_valid),
    .io_w0_beat_sel(releaseBuf_io_w0_beat_sel),
    .io_w0_data_data(releaseBuf_io_w0_data_data),
    .io_w0_id(releaseBuf_io_w0_id),
    .io_w1_valid(releaseBuf_io_w1_valid),
    .io_w1_beat_sel(releaseBuf_io_w1_beat_sel),
    .io_w1_data_data(releaseBuf_io_w1_data_data),
    .io_w1_id(releaseBuf_io_w1_id),
    .io_w2_valid(releaseBuf_io_w2_valid),
    .io_w2_data_data(releaseBuf_io_w2_data_data),
    .io_w2_id(releaseBuf_io_w2_id)
  );
  Queue_162 io_out_a_q ( // @[Decoupled.scala 361:21]
    .clock(io_out_a_q_clock),
    .reset(io_out_a_q_reset),
    .io_enq_ready(io_out_a_q_io_enq_ready),
    .io_enq_valid(io_out_a_q_io_enq_valid),
    .io_enq_bits_opcode(io_out_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(io_out_a_q_io_enq_bits_param),
    .io_enq_bits_size(io_out_a_q_io_enq_bits_size),
    .io_enq_bits_source(io_out_a_q_io_enq_bits_source),
    .io_enq_bits_address(io_out_a_q_io_enq_bits_address),
    .io_enq_bits_echo_blockisdirty(io_out_a_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_mask(io_out_a_q_io_enq_bits_mask),
    .io_enq_bits_data(io_out_a_q_io_enq_bits_data),
    .io_enq_bits_corrupt(io_out_a_q_io_enq_bits_corrupt),
    .io_deq_ready(io_out_a_q_io_deq_ready),
    .io_deq_valid(io_out_a_q_io_deq_valid),
    .io_deq_bits_opcode(io_out_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(io_out_a_q_io_deq_bits_param),
    .io_deq_bits_size(io_out_a_q_io_deq_bits_size),
    .io_deq_bits_source(io_out_a_q_io_deq_bits_source),
    .io_deq_bits_address(io_out_a_q_io_deq_bits_address),
    .io_deq_bits_echo_blockisdirty(io_out_a_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_mask(io_out_a_q_io_deq_bits_mask),
    .io_deq_bits_data(io_out_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(io_out_a_q_io_deq_bits_corrupt)
  );
  Queue_163 sinkB_io_bq ( // @[Decoupled.scala 361:21]
    .clock(sinkB_io_bq_clock),
    .reset(sinkB_io_bq_reset),
    .io_enq_ready(sinkB_io_bq_io_enq_ready),
    .io_enq_valid(sinkB_io_bq_io_enq_valid),
    .io_enq_bits_opcode(sinkB_io_bq_io_enq_bits_opcode),
    .io_enq_bits_param(sinkB_io_bq_io_enq_bits_param),
    .io_enq_bits_size(sinkB_io_bq_io_enq_bits_size),
    .io_enq_bits_address(sinkB_io_bq_io_enq_bits_address),
    .io_enq_bits_data(sinkB_io_bq_io_enq_bits_data),
    .io_deq_ready(sinkB_io_bq_io_deq_ready),
    .io_deq_valid(sinkB_io_bq_io_deq_valid),
    .io_deq_bits_opcode(sinkB_io_bq_io_deq_bits_opcode),
    .io_deq_bits_param(sinkB_io_bq_io_deq_bits_param),
    .io_deq_bits_size(sinkB_io_bq_io_deq_bits_size),
    .io_deq_bits_address(sinkB_io_bq_io_deq_bits_address),
    .io_deq_bits_data(sinkB_io_bq_io_deq_bits_data)
  );
  Queue_164 refillUnit_io_sinkD_q ( // @[Decoupled.scala 361:21]
    .clock(refillUnit_io_sinkD_q_clock),
    .reset(refillUnit_io_sinkD_q_reset),
    .io_enq_ready(refillUnit_io_sinkD_q_io_enq_ready),
    .io_enq_valid(refillUnit_io_sinkD_q_io_enq_valid),
    .io_enq_bits_opcode(refillUnit_io_sinkD_q_io_enq_bits_opcode),
    .io_enq_bits_param(refillUnit_io_sinkD_q_io_enq_bits_param),
    .io_enq_bits_size(refillUnit_io_sinkD_q_io_enq_bits_size),
    .io_enq_bits_source(refillUnit_io_sinkD_q_io_enq_bits_source),
    .io_enq_bits_sink(refillUnit_io_sinkD_q_io_enq_bits_sink),
    .io_enq_bits_echo_blockisdirty(refillUnit_io_sinkD_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(refillUnit_io_sinkD_q_io_enq_bits_data),
    .io_deq_valid(refillUnit_io_sinkD_q_io_deq_valid),
    .io_deq_bits_opcode(refillUnit_io_sinkD_q_io_deq_bits_opcode),
    .io_deq_bits_param(refillUnit_io_sinkD_q_io_deq_bits_param),
    .io_deq_bits_size(refillUnit_io_sinkD_q_io_deq_bits_size),
    .io_deq_bits_source(refillUnit_io_sinkD_q_io_deq_bits_source),
    .io_deq_bits_sink(refillUnit_io_sinkD_q_io_deq_bits_sink),
    .io_deq_bits_echo_blockisdirty(refillUnit_io_sinkD_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(refillUnit_io_sinkD_q_io_deq_bits_data)
  );
  Queue_123 io_out_e_q ( // @[Decoupled.scala 361:21]
    .clock(io_out_e_q_clock),
    .reset(io_out_e_q_reset),
    .io_enq_ready(io_out_e_q_io_enq_ready),
    .io_enq_valid(io_out_e_q_io_enq_valid),
    .io_enq_bits_sink(io_out_e_q_io_enq_bits_sink),
    .io_deq_ready(io_out_e_q_io_deq_ready),
    .io_deq_valid(io_out_e_q_io_deq_valid),
    .io_deq_bits_sink(io_out_e_q_io_deq_bits_sink)
  );
  assign io_in_a_ready = sinkA_io_a_ready; // @[Slice.scala 154:14]
  assign io_in_bvalid = mshrCtl_io_sourceB_valid; // @[Slice.scala 155:11]
  assign io_in_bopcode = mshrCtl_io_sourceB_bits_opcode; // @[Slice.scala 155:11]
  assign io_in_bparam = mshrCtl_io_sourceB_bits_param; // @[Slice.scala 155:11]
  assign io_in_bsize = 3'h6; // @[Slice.scala 155:11]
  assign io_in_bsource = 5'h0; // @[Slice.scala 155:11]
  assign io_in_baddress = mshrCtl_io_sourceB_bits_address; // @[Slice.scala 155:11]
  assign io_in_bmask = 32'hffffffff; // @[Slice.scala 155:11]
  assign io_in_bdata = 256'h0; // @[Slice.scala 155:11]
  assign io_in_bcorrupt = 1'h0; // @[Slice.scala 155:11]
  assign io_in_c_ready = sinkC_io_c_ready; // @[Slice.scala 156:14]
  assign io_in_d_valid = grantBuf_io_d_valid; // @[Slice.scala 157:11]
  assign io_in_d_bits_opcode = grantBuf_io_d_bits_opcode; // @[Slice.scala 157:11]
  assign io_in_d_bits_param = grantBuf_io_d_bits_param; // @[Slice.scala 157:11]
  assign io_in_d_bits_size = 3'h6; // @[Slice.scala 157:11]
  assign io_in_d_bits_source = grantBuf_io_d_bits_source; // @[Slice.scala 157:11]
  assign io_in_d_bits_sink = grantBuf_io_d_bits_sink; // @[Slice.scala 157:11]
  assign io_in_d_bits_denied = 1'h0; // @[Slice.scala 157:11]
  assign io_in_d_bits_data = grantBuf_io_d_bits_data; // @[Slice.scala 157:11]
  assign io_in_d_bits_corrupt = 1'h0; // @[Slice.scala 157:11]
  assign io_in_e_ready = 1'h1; // @[Slice.scala 158:17]
  assign io_out_a_valid = io_out_a_q_io_deq_valid; // @[Slice.scala 161:12]
  assign io_out_a_bits_opcode = io_out_a_q_io_deq_bits_opcode; // @[Slice.scala 161:12]
  assign io_out_a_bits_param = io_out_a_q_io_deq_bits_param; // @[Slice.scala 161:12]
  assign io_out_a_bits_size = io_out_a_q_io_deq_bits_size; // @[Slice.scala 161:12]
  assign io_out_a_bits_source = io_out_a_q_io_deq_bits_source; // @[Slice.scala 161:12]
  assign io_out_a_bits_address = io_out_a_q_io_deq_bits_address; // @[Slice.scala 161:12]
  assign io_out_a_bits_echo_blockisdirty = io_out_a_q_io_deq_bits_echo_blockisdirty; // @[Slice.scala 161:12]
  assign io_out_a_bits_mask = io_out_a_q_io_deq_bits_mask; // @[Slice.scala 161:12]
  assign io_out_a_bits_data = io_out_a_q_io_deq_bits_data; // @[Slice.scala 161:12]
  assign io_out_a_bits_corrupt = io_out_a_q_io_deq_bits_corrupt; // @[Slice.scala 161:12]
  assign io_out_bready = sinkB_io_bq_io_enq_ready; // @[Decoupled.scala 365:17]
  assign io_out_c_valid = sourceC_io_out_valid; // @[Slice.scala 163:12]
  assign io_out_c_bits_opcode = sourceC_io_out_bits_opcode; // @[Slice.scala 163:12]
  assign io_out_c_bits_param = sourceC_io_out_bits_param; // @[Slice.scala 163:12]
  assign io_out_c_bits_size = 3'h6; // @[Slice.scala 163:12]
  assign io_out_c_bits_source = sourceC_io_out_bits_source; // @[Slice.scala 163:12]
  assign io_out_c_bits_address = sourceC_io_out_bits_address; // @[Slice.scala 163:12]
  assign io_out_c_bits_echo_blockisdirty = sourceC_io_out_bits_echo_blockisdirty; // @[Slice.scala 163:12]
  assign io_out_c_bits_data = sourceC_io_out_bits_data; // @[Slice.scala 163:12]
  assign io_out_c_bits_corrupt = 1'h0; // @[Slice.scala 163:12]
  assign io_out_d_ready = refillUnit_io_sinkD_q_io_enq_ready; // @[Decoupled.scala 365:17]
  assign io_out_e_valid = io_out_e_q_io_deq_valid; // @[Slice.scala 165:12]
  assign io_out_e_bits_sink = io_out_e_q_io_deq_bits_sink; // @[Slice.scala 165:12]
  assign io_l1Hint_valid = mainPipe_io_l1Hint_valid; // @[Slice.scala 131:19]
  assign io_l1Hint_bits_sourceId = mainPipe_io_l1Hint_bits_sourceId; // @[Slice.scala 132:18]
  assign io_msStatus_0_valid = mshrCtl_io_msStatus_0_valid; // @[Slice.scala 172:30]
  assign io_msStatus_0_bits_set = mshrCtl_io_msStatus_0_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_0_bits_reqTag = mshrCtl_io_msStatus_0_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_0_bits_is_miss = mshrCtl_io_msStatus_0_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_1_valid = mshrCtl_io_msStatus_1_valid; // @[Slice.scala 172:30]
  assign io_msStatus_1_bits_set = mshrCtl_io_msStatus_1_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_1_bits_reqTag = mshrCtl_io_msStatus_1_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_1_bits_is_miss = mshrCtl_io_msStatus_1_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_2_valid = mshrCtl_io_msStatus_2_valid; // @[Slice.scala 172:30]
  assign io_msStatus_2_bits_set = mshrCtl_io_msStatus_2_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_2_bits_reqTag = mshrCtl_io_msStatus_2_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_2_bits_is_miss = mshrCtl_io_msStatus_2_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_3_valid = mshrCtl_io_msStatus_3_valid; // @[Slice.scala 172:30]
  assign io_msStatus_3_bits_set = mshrCtl_io_msStatus_3_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_3_bits_reqTag = mshrCtl_io_msStatus_3_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_3_bits_is_miss = mshrCtl_io_msStatus_3_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_4_valid = mshrCtl_io_msStatus_4_valid; // @[Slice.scala 172:30]
  assign io_msStatus_4_bits_set = mshrCtl_io_msStatus_4_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_4_bits_reqTag = mshrCtl_io_msStatus_4_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_4_bits_is_miss = mshrCtl_io_msStatus_4_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_5_valid = mshrCtl_io_msStatus_5_valid; // @[Slice.scala 172:30]
  assign io_msStatus_5_bits_set = mshrCtl_io_msStatus_5_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_5_bits_reqTag = mshrCtl_io_msStatus_5_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_5_bits_is_miss = mshrCtl_io_msStatus_5_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_6_valid = mshrCtl_io_msStatus_6_valid; // @[Slice.scala 172:30]
  assign io_msStatus_6_bits_set = mshrCtl_io_msStatus_6_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_6_bits_reqTag = mshrCtl_io_msStatus_6_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_6_bits_is_miss = mshrCtl_io_msStatus_6_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_7_valid = mshrCtl_io_msStatus_7_valid; // @[Slice.scala 172:30]
  assign io_msStatus_7_bits_set = mshrCtl_io_msStatus_7_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_7_bits_reqTag = mshrCtl_io_msStatus_7_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_7_bits_is_miss = mshrCtl_io_msStatus_7_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_8_valid = mshrCtl_io_msStatus_8_valid; // @[Slice.scala 172:30]
  assign io_msStatus_8_bits_set = mshrCtl_io_msStatus_8_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_8_bits_reqTag = mshrCtl_io_msStatus_8_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_8_bits_is_miss = mshrCtl_io_msStatus_8_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_9_valid = mshrCtl_io_msStatus_9_valid; // @[Slice.scala 172:30]
  assign io_msStatus_9_bits_set = mshrCtl_io_msStatus_9_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_9_bits_reqTag = mshrCtl_io_msStatus_9_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_9_bits_is_miss = mshrCtl_io_msStatus_9_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_10_valid = mshrCtl_io_msStatus_10_valid; // @[Slice.scala 172:30]
  assign io_msStatus_10_bits_set = mshrCtl_io_msStatus_10_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_10_bits_reqTag = mshrCtl_io_msStatus_10_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_10_bits_is_miss = mshrCtl_io_msStatus_10_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_11_valid = mshrCtl_io_msStatus_11_valid; // @[Slice.scala 172:30]
  assign io_msStatus_11_bits_set = mshrCtl_io_msStatus_11_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_11_bits_reqTag = mshrCtl_io_msStatus_11_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_11_bits_is_miss = mshrCtl_io_msStatus_11_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_12_valid = mshrCtl_io_msStatus_12_valid; // @[Slice.scala 172:30]
  assign io_msStatus_12_bits_set = mshrCtl_io_msStatus_12_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_12_bits_reqTag = mshrCtl_io_msStatus_12_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_12_bits_is_miss = mshrCtl_io_msStatus_12_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_13_valid = mshrCtl_io_msStatus_13_valid; // @[Slice.scala 172:30]
  assign io_msStatus_13_bits_set = mshrCtl_io_msStatus_13_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_13_bits_reqTag = mshrCtl_io_msStatus_13_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_13_bits_is_miss = mshrCtl_io_msStatus_13_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_14_valid = mshrCtl_io_msStatus_14_valid; // @[Slice.scala 172:30]
  assign io_msStatus_14_bits_set = mshrCtl_io_msStatus_14_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_14_bits_reqTag = mshrCtl_io_msStatus_14_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_14_bits_is_miss = mshrCtl_io_msStatus_14_bits_is_miss; // @[Slice.scala 172:30]
  assign io_msStatus_15_valid = mshrCtl_io_msStatus_15_valid; // @[Slice.scala 172:30]
  assign io_msStatus_15_bits_set = mshrCtl_io_msStatus_15_bits_set; // @[Slice.scala 172:30]
  assign io_msStatus_15_bits_reqTag = mshrCtl_io_msStatus_15_bits_reqTag; // @[Slice.scala 172:30]
  assign io_msStatus_15_bits_is_miss = mshrCtl_io_msStatus_15_bits_is_miss; // @[Slice.scala 172:30]
  assign reqArb_clock = clock;
  assign reqArb_reset = reset;
  assign reqArb_io_sinkA_valid = a_reqBuf_io_out_valid; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_channel = a_reqBuf_io_out_bits_channel; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_set = a_reqBuf_io_out_bits_set; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_tag = a_reqBuf_io_out_bits_tag; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_off = a_reqBuf_io_out_bits_off; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_opcode = a_reqBuf_io_out_bits_opcode; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_param = a_reqBuf_io_out_bits_param; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_size = a_reqBuf_io_out_bits_size; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_sourceId = a_reqBuf_io_out_bits_sourceId; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_bufIdx = a_reqBuf_io_out_bits_bufIdx; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_needProbeAckData = a_reqBuf_io_out_bits_needProbeAckData; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_mshrTask = a_reqBuf_io_out_bits_mshrTask; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_mshrId = a_reqBuf_io_out_bits_mshrId; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_useProbeData = a_reqBuf_io_out_bits_useProbeData; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_dirty = a_reqBuf_io_out_bits_dirty; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_way = a_reqBuf_io_out_bits_way; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_meta_dirty = a_reqBuf_io_out_bits_meta_dirty; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_meta_state = a_reqBuf_io_out_bits_meta_state; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_meta_clients = a_reqBuf_io_out_bits_meta_clients; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_meta_accessed = a_reqBuf_io_out_bits_meta_accessed; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_metaWen = a_reqBuf_io_out_bits_metaWen; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_tagWen = a_reqBuf_io_out_bits_tagWen; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_dsWen = a_reqBuf_io_out_bits_dsWen; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_wayMask = 8'hff; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_replTask = a_reqBuf_io_out_bits_replTask; // @[Slice.scala 68:19]
  assign reqArb_io_sinkA_bits_reqSource = a_reqBuf_io_out_bits_reqSource; // @[Slice.scala 68:19]
  assign reqArb_io_ATag = a_reqBuf_io_ATag; // @[Slice.scala 69:18]
  assign reqArb_io_ASet = a_reqBuf_io_ASet; // @[Slice.scala 70:18]
  assign reqArb_io_sinkB_valid = sinkB_io_task_valid; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_channel = 3'h2; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_set = sinkB_io_task_bits_set; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_tag = sinkB_io_task_bits_tag; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_off = sinkB_io_task_bits_off; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_opcode = sinkB_io_task_bits_opcode; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_param = sinkB_io_task_bits_param; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_size = sinkB_io_task_bits_size; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_sourceId = 5'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_bufIdx = 2'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_needProbeAckData = sinkB_io_task_bits_needProbeAckData; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_mshrTask = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_mshrId = 8'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_useProbeData = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_dirty = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_way = 3'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_meta_dirty = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_meta_state = 2'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_meta_clients = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_meta_accessed = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_metaWen = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_tagWen = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_dsWen = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_wayMask = 8'hff; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_replTask = 1'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkB_bits_reqSource = 4'h0; // @[Slice.scala 72:19]
  assign reqArb_io_sinkC_valid = sinkC_io_task_valid; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_channel = 3'h4; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_set = sinkC_io_task_bits_set; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_tag = sinkC_io_task_bits_tag; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_off = sinkC_io_task_bits_off; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_opcode = sinkC_io_task_bits_opcode; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_param = sinkC_io_task_bits_param; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_size = sinkC_io_task_bits_size; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_sourceId = sinkC_io_task_bits_sourceId; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_bufIdx = sinkC_io_task_bits_bufIdx; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_needProbeAckData = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_mshrTask = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_mshrId = 8'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_useProbeData = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_dirty = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_way = 3'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_meta_dirty = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_meta_state = 2'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_meta_clients = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_meta_accessed = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_metaWen = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_tagWen = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_dsWen = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_wayMask = 8'hff; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_replTask = 1'h0; // @[Slice.scala 73:19]
  assign reqArb_io_sinkC_bits_reqSource = 4'h0; // @[Slice.scala 73:19]
  assign reqArb_io_mshrTask_valid = mshrCtl_io_mshrTask_valid; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_channel = mshrCtl_io_mshrTask_bits_channel; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_set = mshrCtl_io_mshrTask_bits_set; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_tag = mshrCtl_io_mshrTask_bits_tag; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_off = mshrCtl_io_mshrTask_bits_off; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_opcode = mshrCtl_io_mshrTask_bits_opcode; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_param = mshrCtl_io_mshrTask_bits_param; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_size = mshrCtl_io_mshrTask_bits_size; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_sourceId = mshrCtl_io_mshrTask_bits_sourceId; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_bufIdx = 2'h0; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_needProbeAckData = 1'h0; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_mshrTask = mshrCtl_io_mshrTask_bits_mshrTask; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_mshrId = mshrCtl_io_mshrTask_bits_mshrId; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_useProbeData = mshrCtl_io_mshrTask_bits_useProbeData; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_dirty = mshrCtl_io_mshrTask_bits_dirty; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_way = mshrCtl_io_mshrTask_bits_way; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_meta_dirty = mshrCtl_io_mshrTask_bits_meta_dirty; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_meta_state = mshrCtl_io_mshrTask_bits_meta_state; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_meta_clients = mshrCtl_io_mshrTask_bits_meta_clients; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_meta_accessed = mshrCtl_io_mshrTask_bits_meta_accessed; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_metaWen = mshrCtl_io_mshrTask_bits_metaWen; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_tagWen = mshrCtl_io_mshrTask_bits_tagWen; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_dsWen = mshrCtl_io_mshrTask_bits_dsWen; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_wayMask = mshrCtl_io_mshrTask_bits_wayMask; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_replTask = mshrCtl_io_mshrTask_bits_replTask; // @[Slice.scala 76:22]
  assign reqArb_io_mshrTask_bits_reqSource = mshrCtl_io_mshrTask_bits_reqSource; // @[Slice.scala 76:22]
  assign reqArb_io_dirRead_s1_ready = directory_io_read_ready; // @[Slice.scala 74:24]
  assign reqArb_io_refillBufRead_s2_ready = 1'h1; // @[Slice.scala 77:30]
  assign reqArb_io_refillBufRead_s2_data_data = refillBuf_io_rdata_data; // @[Slice.scala 77:30]
  assign reqArb_io_releaseBufRead_s2_ready = 1'h1; // @[Slice.scala 78:31]
  assign reqArb_io_releaseBufRead_s2_data_data = releaseBuf_io_rdata_data; // @[Slice.scala 78:31]
  assign reqArb_io_fromMSHRCtl_blockG_s1 = 1'h0; // @[Slice.scala 79:25]
  assign reqArb_io_fromMSHRCtl_blockA_s1 = mshrCtl_io_toReqArb_blockA_s1; // @[Slice.scala 79:25]
  assign reqArb_io_fromMSHRCtl_blockB_s1 = mshrCtl_io_toReqArb_blockB_s1; // @[Slice.scala 79:25]
  assign reqArb_io_fromMSHRCtl_blockC_s1 = 1'h0; // @[Slice.scala 79:25]
  assign reqArb_io_fromMainPipe_blockG_s1 = mainPipe_io_toReqArb_blockG_s1; // @[Slice.scala 80:26]
  assign reqArb_io_fromMainPipe_blockA_s1 = mainPipe_io_toReqArb_blockA_s1; // @[Slice.scala 80:26]
  assign reqArb_io_fromMainPipe_blockB_s1 = mainPipe_io_toReqArb_blockB_s1; // @[Slice.scala 80:26]
  assign reqArb_io_fromMainPipe_blockC_s1 = mainPipe_io_toReqArb_blockC_s1; // @[Slice.scala 80:26]
  assign reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockG_s1 = 1'h0; // @[Slice.scala 81:29]
  assign reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockA_s1 = grantBuf_io_toReqArb_blockSinkReqEntrance_blockA_s1; // @[Slice.scala 81:29]
  assign reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockB_s1 = grantBuf_io_toReqArb_blockSinkReqEntrance_blockB_s1; // @[Slice.scala 81:29]
  assign reqArb_io_fromGrantBuffer_blockSinkReqEntrance_blockC_s1 = grantBuf_io_toReqArb_blockSinkReqEntrance_blockC_s1; // @[Slice.scala 81:29]
  assign reqArb_io_fromGrantBuffer_blockMSHRReqEntrance = grantBuf_io_toReqArb_blockMSHRReqEntrance; // @[Slice.scala 81:29]
  assign a_reqBuf_clock = clock;
  assign a_reqBuf_reset = reset;
  assign a_reqBuf_io_in_valid = sinkA_io_task_valid; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_set = sinkA_io_task_bits_set; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_tag = sinkA_io_task_bits_tag; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_off = sinkA_io_task_bits_off; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_opcode = sinkA_io_task_bits_opcode; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_param = sinkA_io_task_bits_param; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_size = sinkA_io_task_bits_size; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_sourceId = sinkA_io_task_bits_sourceId; // @[Slice.scala 61:18]
  assign a_reqBuf_io_in_bits_reqSource = sinkA_io_task_bits_reqSource; // @[Slice.scala 61:18]
  assign a_reqBuf_io_out_ready = reqArb_io_sinkA_ready; // @[Slice.scala 68:19]
  assign a_reqBuf_io_mshrInfo_0_valid = mshrCtl_io_msInfo_0_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_0_bits_set = mshrCtl_io_msInfo_0_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_0_bits_reqTag = mshrCtl_io_msInfo_0_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_0_bits_willFree = mshrCtl_io_msInfo_0_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_0_bits_needRelease = mshrCtl_io_msInfo_0_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_0_bits_metaTag = mshrCtl_io_msInfo_0_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_0_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_0_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_valid = mshrCtl_io_msInfo_1_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_bits_set = mshrCtl_io_msInfo_1_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_bits_reqTag = mshrCtl_io_msInfo_1_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_bits_willFree = mshrCtl_io_msInfo_1_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_bits_needRelease = mshrCtl_io_msInfo_1_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_bits_metaTag = mshrCtl_io_msInfo_1_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_1_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_1_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_valid = mshrCtl_io_msInfo_2_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_bits_set = mshrCtl_io_msInfo_2_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_bits_reqTag = mshrCtl_io_msInfo_2_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_bits_willFree = mshrCtl_io_msInfo_2_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_bits_needRelease = mshrCtl_io_msInfo_2_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_bits_metaTag = mshrCtl_io_msInfo_2_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_2_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_2_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_valid = mshrCtl_io_msInfo_3_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_bits_set = mshrCtl_io_msInfo_3_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_bits_reqTag = mshrCtl_io_msInfo_3_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_bits_willFree = mshrCtl_io_msInfo_3_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_bits_needRelease = mshrCtl_io_msInfo_3_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_bits_metaTag = mshrCtl_io_msInfo_3_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_3_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_3_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_valid = mshrCtl_io_msInfo_4_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_bits_set = mshrCtl_io_msInfo_4_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_bits_reqTag = mshrCtl_io_msInfo_4_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_bits_willFree = mshrCtl_io_msInfo_4_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_bits_needRelease = mshrCtl_io_msInfo_4_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_bits_metaTag = mshrCtl_io_msInfo_4_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_4_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_4_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_valid = mshrCtl_io_msInfo_5_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_bits_set = mshrCtl_io_msInfo_5_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_bits_reqTag = mshrCtl_io_msInfo_5_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_bits_willFree = mshrCtl_io_msInfo_5_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_bits_needRelease = mshrCtl_io_msInfo_5_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_bits_metaTag = mshrCtl_io_msInfo_5_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_5_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_5_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_valid = mshrCtl_io_msInfo_6_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_bits_set = mshrCtl_io_msInfo_6_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_bits_reqTag = mshrCtl_io_msInfo_6_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_bits_willFree = mshrCtl_io_msInfo_6_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_bits_needRelease = mshrCtl_io_msInfo_6_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_bits_metaTag = mshrCtl_io_msInfo_6_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_6_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_6_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_valid = mshrCtl_io_msInfo_7_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_bits_set = mshrCtl_io_msInfo_7_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_bits_reqTag = mshrCtl_io_msInfo_7_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_bits_willFree = mshrCtl_io_msInfo_7_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_bits_needRelease = mshrCtl_io_msInfo_7_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_bits_metaTag = mshrCtl_io_msInfo_7_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_7_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_7_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_valid = mshrCtl_io_msInfo_8_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_bits_set = mshrCtl_io_msInfo_8_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_bits_reqTag = mshrCtl_io_msInfo_8_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_bits_willFree = mshrCtl_io_msInfo_8_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_bits_needRelease = mshrCtl_io_msInfo_8_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_bits_metaTag = mshrCtl_io_msInfo_8_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_8_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_8_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_valid = mshrCtl_io_msInfo_9_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_bits_set = mshrCtl_io_msInfo_9_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_bits_reqTag = mshrCtl_io_msInfo_9_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_bits_willFree = mshrCtl_io_msInfo_9_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_bits_needRelease = mshrCtl_io_msInfo_9_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_bits_metaTag = mshrCtl_io_msInfo_9_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_9_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_9_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_valid = mshrCtl_io_msInfo_10_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_bits_set = mshrCtl_io_msInfo_10_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_bits_reqTag = mshrCtl_io_msInfo_10_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_bits_willFree = mshrCtl_io_msInfo_10_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_bits_needRelease = mshrCtl_io_msInfo_10_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_bits_metaTag = mshrCtl_io_msInfo_10_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_10_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_10_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_valid = mshrCtl_io_msInfo_11_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_bits_set = mshrCtl_io_msInfo_11_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_bits_reqTag = mshrCtl_io_msInfo_11_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_bits_willFree = mshrCtl_io_msInfo_11_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_bits_needRelease = mshrCtl_io_msInfo_11_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_bits_metaTag = mshrCtl_io_msInfo_11_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_11_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_11_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_valid = mshrCtl_io_msInfo_12_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_bits_set = mshrCtl_io_msInfo_12_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_bits_reqTag = mshrCtl_io_msInfo_12_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_bits_willFree = mshrCtl_io_msInfo_12_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_bits_needRelease = mshrCtl_io_msInfo_12_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_bits_metaTag = mshrCtl_io_msInfo_12_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_12_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_12_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_valid = mshrCtl_io_msInfo_13_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_bits_set = mshrCtl_io_msInfo_13_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_bits_reqTag = mshrCtl_io_msInfo_13_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_bits_willFree = mshrCtl_io_msInfo_13_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_bits_needRelease = mshrCtl_io_msInfo_13_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_bits_metaTag = mshrCtl_io_msInfo_13_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_13_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_13_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_valid = mshrCtl_io_msInfo_14_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_bits_set = mshrCtl_io_msInfo_14_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_bits_reqTag = mshrCtl_io_msInfo_14_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_bits_willFree = mshrCtl_io_msInfo_14_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_bits_needRelease = mshrCtl_io_msInfo_14_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_bits_metaTag = mshrCtl_io_msInfo_14_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_14_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_14_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_valid = mshrCtl_io_msInfo_15_valid; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_bits_set = mshrCtl_io_msInfo_15_bits_set; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_bits_reqTag = mshrCtl_io_msInfo_15_bits_reqTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_bits_willFree = mshrCtl_io_msInfo_15_bits_willFree; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_bits_needRelease = mshrCtl_io_msInfo_15_bits_needRelease; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_bits_metaTag = mshrCtl_io_msInfo_15_bits_metaTag; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mshrInfo_15_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_15_bits_isAcqOrPrefetch; // @[Slice.scala 62:24]
  assign a_reqBuf_io_mainPipeBlock_0 = mainPipe_io_toReqBuf_0; // @[Slice.scala 63:29]
  assign a_reqBuf_io_mainPipeBlock_1 = mainPipe_io_toReqBuf_1; // @[Slice.scala 63:29]
  assign a_reqBuf_io_s1Entrance_valid = reqArb_io_s1Entrance_valid; // @[Slice.scala 64:26]
  assign a_reqBuf_io_s1Entrance_bits_set = reqArb_io_s1Entrance_bits_set; // @[Slice.scala 64:26]
  assign mainPipe_clock = clock;
  assign mainPipe_reset = reset;
  assign mainPipe_io_taskFromArb_s2_valid = reqArb_io_taskToPipe_s2_valid; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_channel = reqArb_io_taskToPipe_s2_bits_channel; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_set = reqArb_io_taskToPipe_s2_bits_set; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_tag = reqArb_io_taskToPipe_s2_bits_tag; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_off = reqArb_io_taskToPipe_s2_bits_off; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_opcode = reqArb_io_taskToPipe_s2_bits_opcode; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_param = reqArb_io_taskToPipe_s2_bits_param; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_size = reqArb_io_taskToPipe_s2_bits_size; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_sourceId = reqArb_io_taskToPipe_s2_bits_sourceId; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_bufIdx = reqArb_io_taskToPipe_s2_bits_bufIdx; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_needProbeAckData = reqArb_io_taskToPipe_s2_bits_needProbeAckData; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_mshrTask = reqArb_io_taskToPipe_s2_bits_mshrTask; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_mshrId = reqArb_io_taskToPipe_s2_bits_mshrId; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_useProbeData = reqArb_io_taskToPipe_s2_bits_useProbeData; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_dirty = reqArb_io_taskToPipe_s2_bits_dirty; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_way = reqArb_io_taskToPipe_s2_bits_way; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_meta_dirty = reqArb_io_taskToPipe_s2_bits_meta_dirty; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_meta_state = reqArb_io_taskToPipe_s2_bits_meta_state; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_meta_clients = reqArb_io_taskToPipe_s2_bits_meta_clients; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_meta_accessed = reqArb_io_taskToPipe_s2_bits_meta_accessed; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_metaWen = reqArb_io_taskToPipe_s2_bits_metaWen; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_tagWen = reqArb_io_taskToPipe_s2_bits_tagWen; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_dsWen = reqArb_io_taskToPipe_s2_bits_dsWen; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_replTask = reqArb_io_taskToPipe_s2_bits_replTask; // @[Slice.scala 75:27]
  assign mainPipe_io_taskFromArb_s2_bits_reqSource = reqArb_io_taskToPipe_s2_bits_reqSource; // @[Slice.scala 75:27]
  assign mainPipe_io_taskInfo_s1_valid = reqArb_io_taskInfo_s1_valid; // @[Slice.scala 113:27]
  assign mainPipe_io_taskInfo_s1_bits_channel = reqArb_io_taskInfo_s1_bits_channel; // @[Slice.scala 113:27]
  assign mainPipe_io_taskInfo_s1_bits_opcode = reqArb_io_taskInfo_s1_bits_opcode; // @[Slice.scala 113:27]
  assign mainPipe_io_taskInfo_s1_bits_sourceId = reqArb_io_taskInfo_s1_bits_sourceId; // @[Slice.scala 113:27]
  assign mainPipe_io_fromReqArb_status_s1_tags_1 = reqArb_io_status_s1_tags_1; // @[Slice.scala 110:36]
  assign mainPipe_io_fromReqArb_status_s1_sets_0 = reqArb_io_status_s1_sets_0; // @[Slice.scala 110:36]
  assign mainPipe_io_fromReqArb_status_s1_sets_1 = reqArb_io_status_s1_sets_1; // @[Slice.scala 110:36]
  assign mainPipe_io_fromReqArb_status_s1_sets_2 = reqArb_io_status_s1_sets_2; // @[Slice.scala 110:36]
  assign mainPipe_io_fromReqArb_status_s1_sets_3 = reqArb_io_status_s1_sets_3; // @[Slice.scala 110:36]
  assign mainPipe_io_dirResp_s3_hit = directory_io_resp_hit; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_tag = directory_io_resp_tag; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_set = directory_io_resp_set; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_way = directory_io_resp_way; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_meta_dirty = directory_io_resp_meta_dirty; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_meta_state = directory_io_resp_meta_state; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_meta_clients = directory_io_resp_meta_clients; // @[Slice.scala 93:21]
  assign mainPipe_io_dirResp_s3_meta_accessed = directory_io_resp_meta_accessed; // @[Slice.scala 93:21]
  assign mainPipe_io_replResp_valid = directory_io_replResp_valid; // @[Slice.scala 91:24]
  assign mainPipe_io_replResp_bits_way = directory_io_replResp_bits_way; // @[Slice.scala 91:24]
  assign mainPipe_io_replResp_bits_meta_state = directory_io_replResp_bits_meta_state; // @[Slice.scala 91:24]
  assign mainPipe_io_replResp_bits_retry = directory_io_replResp_bits_retry; // @[Slice.scala 91:24]
  assign mainPipe_io_fromMSHRCtl_mshr_alloc_ptr = mshrCtl_io_toMainPipe_mshr_alloc_ptr; // @[Slice.scala 102:27]
  assign mainPipe_io_bufResp_data_0 = sinkC_io_bufResp_data_0; // @[Slice.scala 104:23]
  assign mainPipe_io_bufResp_data_1 = sinkC_io_bufResp_data_1; // @[Slice.scala 104:23]
  assign mainPipe_io_refillBufResp_s3_bits_data = refillBuf_io_rdata_data; // @[Slice.scala 107:37]
  assign mainPipe_io_releaseBufResp_s3_valid = mainPipe_io_releaseBufResp_s3_valid_REG; // @[Slice.scala 108:39]
  assign mainPipe_io_releaseBufResp_s3_bits_data = releaseBuf_io_rdata_data; // @[Slice.scala 109:38]
  assign mainPipe_io_toDS_rdata_s5_data = dataStorage_io_rdata_data; // @[Slice.scala 105:29]
  assign mainPipe_io_toSourceC_ready = sourceC_io_in_ready; // @[Slice.scala 129:17]
  assign mainPipe_io_grantBufferHint_valid = grantBuf_io_l1Hint_valid; // @[Slice.scala 111:31]
  assign mainPipe_io_grantBufferHint_bits_sourceId = grantBuf_io_l1Hint_bits_sourceId; // @[Slice.scala 111:31]
  assign mainPipe_io_globalCounter = grantBuf_io_globalCounter; // @[Slice.scala 112:29]
  assign mshrCtl_clock = clock;
  assign mshrCtl_reset = reset;
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_valid = mainPipe_io_toMSHRCtl_mshr_alloc_s3_valid; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_hit =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_hit; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_tag =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_tag; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_set =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_set; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_way =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_way; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_dirty =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_dirty; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_state =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_state; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_clients =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_clients; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_dirResult_meta_accessed =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_dirResult_meta_accessed; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_acquire =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_acquire; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_rprobe =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_rprobe; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_pprobe =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_pprobe; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_probeack =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_probeack; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_s_refill =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_s_refill; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeackfirst =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeackfirst; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wrprobeacklast =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wrprobeacklast; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeackfirst =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeackfirst; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeacklast =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeacklast; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wpprobeack =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wpprobeack; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantfirst =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantfirst; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantlast =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantlast; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrant =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrant; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wgrantack =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wgrantack; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_state_wreplResp =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_state_wreplResp; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_channel = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_channel
    ; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_set = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_set; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_tag = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_tag; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_off = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_off; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_opcode = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_opcode; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_param = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_param; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_size = mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_size; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_sourceId =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_sourceId; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_needProbeAckData =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_needProbeAckData; // @[Slice.scala 101:25]
  assign mshrCtl_io_fromMainPipe_mshr_alloc_s3_bits_task_reqSource =
    mainPipe_io_toMSHRCtl_mshr_alloc_s3_bits_task_reqSource; // @[Slice.scala 101:25]
  assign mshrCtl_io_mshrTask_ready = reqArb_io_mshrTask_ready; // @[Slice.scala 76:22]
  assign mshrCtl_io_sourceA_ready = io_out_a_q_io_enq_ready; // @[Decoupled.scala 365:17]
  assign mshrCtl_io_sourceB_ready = io_in_bready; // @[Slice.scala 155:11]
  assign mshrCtl_io_grantStatus_0_valid = grantBuf_io_grantStatus_0_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_0_set = grantBuf_io_grantStatus_0_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_0_tag = grantBuf_io_grantStatus_0_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_1_valid = grantBuf_io_grantStatus_1_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_1_set = grantBuf_io_grantStatus_1_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_1_tag = grantBuf_io_grantStatus_1_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_2_valid = grantBuf_io_grantStatus_2_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_2_set = grantBuf_io_grantStatus_2_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_2_tag = grantBuf_io_grantStatus_2_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_3_valid = grantBuf_io_grantStatus_3_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_3_set = grantBuf_io_grantStatus_3_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_3_tag = grantBuf_io_grantStatus_3_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_4_valid = grantBuf_io_grantStatus_4_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_4_set = grantBuf_io_grantStatus_4_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_4_tag = grantBuf_io_grantStatus_4_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_5_valid = grantBuf_io_grantStatus_5_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_5_set = grantBuf_io_grantStatus_5_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_5_tag = grantBuf_io_grantStatus_5_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_6_valid = grantBuf_io_grantStatus_6_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_6_set = grantBuf_io_grantStatus_6_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_6_tag = grantBuf_io_grantStatus_6_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_7_valid = grantBuf_io_grantStatus_7_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_7_set = grantBuf_io_grantStatus_7_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_7_tag = grantBuf_io_grantStatus_7_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_8_valid = grantBuf_io_grantStatus_8_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_8_set = grantBuf_io_grantStatus_8_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_8_tag = grantBuf_io_grantStatus_8_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_9_valid = grantBuf_io_grantStatus_9_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_9_set = grantBuf_io_grantStatus_9_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_9_tag = grantBuf_io_grantStatus_9_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_10_valid = grantBuf_io_grantStatus_10_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_10_set = grantBuf_io_grantStatus_10_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_10_tag = grantBuf_io_grantStatus_10_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_11_valid = grantBuf_io_grantStatus_11_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_11_set = grantBuf_io_grantStatus_11_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_11_tag = grantBuf_io_grantStatus_11_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_12_valid = grantBuf_io_grantStatus_12_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_12_set = grantBuf_io_grantStatus_12_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_12_tag = grantBuf_io_grantStatus_12_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_13_valid = grantBuf_io_grantStatus_13_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_13_set = grantBuf_io_grantStatus_13_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_13_tag = grantBuf_io_grantStatus_13_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_14_valid = grantBuf_io_grantStatus_14_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_14_set = grantBuf_io_grantStatus_14_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_14_tag = grantBuf_io_grantStatus_14_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_15_valid = grantBuf_io_grantStatus_15_valid; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_15_set = grantBuf_io_grantStatus_15_set; // @[Slice.scala 133:26]
  assign mshrCtl_io_grantStatus_15_tag = grantBuf_io_grantStatus_15_tag; // @[Slice.scala 133:26]
  assign mshrCtl_io_resps_sinkC_valid = sinkC_io_resp_valid; // @[Slice.scala 84:26]
  assign mshrCtl_io_resps_sinkC_set = sinkC_io_resp_set; // @[Slice.scala 84:26]
  assign mshrCtl_io_resps_sinkC_tag = sinkC_io_resp_tag; // @[Slice.scala 84:26]
  assign mshrCtl_io_resps_sinkC_respInfo_opcode = sinkC_io_resp_respInfo_opcode; // @[Slice.scala 84:26]
  assign mshrCtl_io_resps_sinkC_respInfo_param = sinkC_io_resp_respInfo_param; // @[Slice.scala 84:26]
  assign mshrCtl_io_resps_sinkC_respInfo_last = sinkC_io_resp_respInfo_last; // @[Slice.scala 84:26]
  assign mshrCtl_io_resps_sinkD_valid = refillUnit_io_resp_valid; // @[Slice.scala 85:26]
  assign mshrCtl_io_resps_sinkD_mshrId = refillUnit_io_resp_mshrId; // @[Slice.scala 85:26]
  assign mshrCtl_io_resps_sinkD_respInfo_opcode = refillUnit_io_resp_respInfo_opcode; // @[Slice.scala 85:26]
  assign mshrCtl_io_resps_sinkD_respInfo_param = refillUnit_io_resp_respInfo_param; // @[Slice.scala 85:26]
  assign mshrCtl_io_resps_sinkD_respInfo_last = refillUnit_io_resp_respInfo_last; // @[Slice.scala 85:26]
  assign mshrCtl_io_resps_sinkD_respInfo_dirty = refillUnit_io_resp_respInfo_dirty; // @[Slice.scala 85:26]
  assign mshrCtl_io_resps_sinkE_valid = grantBuf_io_e_resp_valid; // @[Slice.scala 86:26]
  assign mshrCtl_io_resps_sinkE_mshrId = grantBuf_io_e_resp_mshrId; // @[Slice.scala 86:26]
  assign mshrCtl_io_nestedwb_set = mainPipe_io_nestedwb_set; // @[Slice.scala 88:23]
  assign mshrCtl_io_nestedwb_tag = mainPipe_io_nestedwb_tag; // @[Slice.scala 88:23]
  assign mshrCtl_io_nestedwb_c_set_dirty = mainPipe_io_nestedwb_c_set_dirty; // @[Slice.scala 88:23]
  assign mshrCtl_io_pipeStatusVec_0_valid = reqArb_io_status_vec_1_valid; // @[Slice.scala 138:31]
  assign mshrCtl_io_pipeStatusVec_1_valid = mainPipe_io_status_vec_0_valid; // @[Slice.scala 139:31]
  assign mshrCtl_io_bMergeTask_valid = sinkB_io_bMergeTask_valid; // @[Slice.scala 89:25]
  assign mshrCtl_io_bMergeTask_bits_id = sinkB_io_bMergeTask_bits_id; // @[Slice.scala 89:25]
  assign mshrCtl_io_bMergeTask_bits_task_set = sinkB_io_bMergeTask_bits_task_set; // @[Slice.scala 89:25]
  assign mshrCtl_io_bMergeTask_bits_task_tag = sinkB_io_bMergeTask_bits_task_tag; // @[Slice.scala 89:25]
  assign mshrCtl_io_bMergeTask_bits_task_off = sinkB_io_bMergeTask_bits_task_off; // @[Slice.scala 89:25]
  assign mshrCtl_io_bMergeTask_bits_task_param = sinkB_io_bMergeTask_bits_task_param; // @[Slice.scala 89:25]
  assign mshrCtl_io_bMergeTask_bits_task_needProbeAckData = sinkB_io_bMergeTask_bits_task_needProbeAckData; // @[Slice.scala 89:25]
  assign mshrCtl_io_replResp_valid = directory_io_replResp_valid; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_tag = directory_io_replResp_bits_tag; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_way = directory_io_replResp_bits_way; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_meta_dirty = directory_io_replResp_bits_meta_dirty; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_meta_state = directory_io_replResp_bits_meta_state; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_meta_clients = directory_io_replResp_bits_meta_clients; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_meta_accessed = directory_io_replResp_bits_meta_accessed; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_mshrId = directory_io_replResp_bits_mshrId; // @[Slice.scala 90:23]
  assign mshrCtl_io_replResp_bits_retry = directory_io_replResp_bits_retry; // @[Slice.scala 90:23]
  assign directory_clock = clock;
  assign directory_reset = reset;
  assign directory_io_read_valid = reqArb_io_dirRead_s1_valid; // @[Slice.scala 74:24]
  assign directory_io_read_bits_tag = reqArb_io_dirRead_s1_bits_tag; // @[Slice.scala 74:24]
  assign directory_io_read_bits_set = reqArb_io_dirRead_s1_bits_set; // @[Slice.scala 74:24]
  assign directory_io_read_bits_wayMask = reqArb_io_dirRead_s1_bits_wayMask; // @[Slice.scala 74:24]
  assign directory_io_read_bits_replacerInfo_channel = reqArb_io_dirRead_s1_bits_replacerInfo_channel; // @[Slice.scala 74:24]
  assign directory_io_read_bits_replacerInfo_opcode = reqArb_io_dirRead_s1_bits_replacerInfo_opcode; // @[Slice.scala 74:24]
  assign directory_io_read_bits_replacerInfo_reqSource = reqArb_io_dirRead_s1_bits_replacerInfo_reqSource; // @[Slice.scala 74:24]
  assign directory_io_read_bits_refill = reqArb_io_dirRead_s1_bits_refill; // @[Slice.scala 74:24]
  assign directory_io_read_bits_mshrId = reqArb_io_dirRead_s1_bits_mshrId; // @[Slice.scala 74:24]
  assign directory_io_metaWReq_valid = mainPipe_io_metaWReq_valid; // @[Slice.scala 94:25]
  assign directory_io_metaWReq_bits_set = mainPipe_io_metaWReq_bits_set; // @[Slice.scala 94:25]
  assign directory_io_metaWReq_bits_wayOH = mainPipe_io_metaWReq_bits_wayOH; // @[Slice.scala 94:25]
  assign directory_io_metaWReq_bits_wmeta_dirty = mainPipe_io_metaWReq_bits_wmeta_dirty; // @[Slice.scala 94:25]
  assign directory_io_metaWReq_bits_wmeta_state = mainPipe_io_metaWReq_bits_wmeta_state; // @[Slice.scala 94:25]
  assign directory_io_metaWReq_bits_wmeta_clients = mainPipe_io_metaWReq_bits_wmeta_clients; // @[Slice.scala 94:25]
  assign directory_io_metaWReq_bits_wmeta_accessed = mainPipe_io_metaWReq_bits_wmeta_accessed; // @[Slice.scala 94:25]
  assign directory_io_tagWReq_valid = mainPipe_io_tagWReq_valid; // @[Slice.scala 95:24]
  assign directory_io_tagWReq_bits_set = mainPipe_io_tagWReq_bits_set; // @[Slice.scala 95:24]
  assign directory_io_tagWReq_bits_way = mainPipe_io_tagWReq_bits_way; // @[Slice.scala 95:24]
  assign directory_io_tagWReq_bits_wtag = mainPipe_io_tagWReq_bits_wtag; // @[Slice.scala 95:24]
  assign directory_io_msInfo_0_valid = mshrCtl_io_msInfo_0_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_set = mshrCtl_io_msInfo_0_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_way = mshrCtl_io_msInfo_0_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_reqTag = mshrCtl_io_msInfo_0_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_willFree = mshrCtl_io_msInfo_0_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_needRelease = mshrCtl_io_msInfo_0_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_releaseNotSent = mshrCtl_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_metaTag = mshrCtl_io_msInfo_0_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_dirHit = mshrCtl_io_msInfo_0_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_nestB = mshrCtl_io_msInfo_0_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_mergeB = mshrCtl_io_msInfo_0_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_0_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_0_bits_isPrefetch = mshrCtl_io_msInfo_0_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_valid = mshrCtl_io_msInfo_1_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_set = mshrCtl_io_msInfo_1_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_way = mshrCtl_io_msInfo_1_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_reqTag = mshrCtl_io_msInfo_1_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_willFree = mshrCtl_io_msInfo_1_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_needRelease = mshrCtl_io_msInfo_1_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_releaseNotSent = mshrCtl_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_metaTag = mshrCtl_io_msInfo_1_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_dirHit = mshrCtl_io_msInfo_1_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_nestB = mshrCtl_io_msInfo_1_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_mergeB = mshrCtl_io_msInfo_1_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_1_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_1_bits_isPrefetch = mshrCtl_io_msInfo_1_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_valid = mshrCtl_io_msInfo_2_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_set = mshrCtl_io_msInfo_2_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_way = mshrCtl_io_msInfo_2_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_reqTag = mshrCtl_io_msInfo_2_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_willFree = mshrCtl_io_msInfo_2_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_needRelease = mshrCtl_io_msInfo_2_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_releaseNotSent = mshrCtl_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_metaTag = mshrCtl_io_msInfo_2_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_dirHit = mshrCtl_io_msInfo_2_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_nestB = mshrCtl_io_msInfo_2_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_mergeB = mshrCtl_io_msInfo_2_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_2_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_2_bits_isPrefetch = mshrCtl_io_msInfo_2_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_valid = mshrCtl_io_msInfo_3_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_set = mshrCtl_io_msInfo_3_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_way = mshrCtl_io_msInfo_3_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_reqTag = mshrCtl_io_msInfo_3_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_willFree = mshrCtl_io_msInfo_3_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_needRelease = mshrCtl_io_msInfo_3_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_releaseNotSent = mshrCtl_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_metaTag = mshrCtl_io_msInfo_3_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_dirHit = mshrCtl_io_msInfo_3_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_nestB = mshrCtl_io_msInfo_3_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_mergeB = mshrCtl_io_msInfo_3_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_3_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_3_bits_isPrefetch = mshrCtl_io_msInfo_3_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_valid = mshrCtl_io_msInfo_4_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_set = mshrCtl_io_msInfo_4_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_way = mshrCtl_io_msInfo_4_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_reqTag = mshrCtl_io_msInfo_4_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_willFree = mshrCtl_io_msInfo_4_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_needRelease = mshrCtl_io_msInfo_4_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_releaseNotSent = mshrCtl_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_metaTag = mshrCtl_io_msInfo_4_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_dirHit = mshrCtl_io_msInfo_4_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_nestB = mshrCtl_io_msInfo_4_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_mergeB = mshrCtl_io_msInfo_4_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_4_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_4_bits_isPrefetch = mshrCtl_io_msInfo_4_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_valid = mshrCtl_io_msInfo_5_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_set = mshrCtl_io_msInfo_5_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_way = mshrCtl_io_msInfo_5_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_reqTag = mshrCtl_io_msInfo_5_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_willFree = mshrCtl_io_msInfo_5_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_needRelease = mshrCtl_io_msInfo_5_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_releaseNotSent = mshrCtl_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_metaTag = mshrCtl_io_msInfo_5_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_dirHit = mshrCtl_io_msInfo_5_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_nestB = mshrCtl_io_msInfo_5_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_mergeB = mshrCtl_io_msInfo_5_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_5_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_5_bits_isPrefetch = mshrCtl_io_msInfo_5_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_valid = mshrCtl_io_msInfo_6_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_set = mshrCtl_io_msInfo_6_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_way = mshrCtl_io_msInfo_6_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_reqTag = mshrCtl_io_msInfo_6_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_willFree = mshrCtl_io_msInfo_6_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_needRelease = mshrCtl_io_msInfo_6_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_releaseNotSent = mshrCtl_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_metaTag = mshrCtl_io_msInfo_6_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_dirHit = mshrCtl_io_msInfo_6_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_nestB = mshrCtl_io_msInfo_6_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_mergeB = mshrCtl_io_msInfo_6_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_6_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_6_bits_isPrefetch = mshrCtl_io_msInfo_6_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_valid = mshrCtl_io_msInfo_7_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_set = mshrCtl_io_msInfo_7_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_way = mshrCtl_io_msInfo_7_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_reqTag = mshrCtl_io_msInfo_7_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_willFree = mshrCtl_io_msInfo_7_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_needRelease = mshrCtl_io_msInfo_7_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_releaseNotSent = mshrCtl_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_metaTag = mshrCtl_io_msInfo_7_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_dirHit = mshrCtl_io_msInfo_7_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_nestB = mshrCtl_io_msInfo_7_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_mergeB = mshrCtl_io_msInfo_7_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_7_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_7_bits_isPrefetch = mshrCtl_io_msInfo_7_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_valid = mshrCtl_io_msInfo_8_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_set = mshrCtl_io_msInfo_8_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_way = mshrCtl_io_msInfo_8_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_reqTag = mshrCtl_io_msInfo_8_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_willFree = mshrCtl_io_msInfo_8_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_needRelease = mshrCtl_io_msInfo_8_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_releaseNotSent = mshrCtl_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_metaTag = mshrCtl_io_msInfo_8_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_dirHit = mshrCtl_io_msInfo_8_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_nestB = mshrCtl_io_msInfo_8_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_mergeB = mshrCtl_io_msInfo_8_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_8_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_8_bits_isPrefetch = mshrCtl_io_msInfo_8_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_valid = mshrCtl_io_msInfo_9_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_set = mshrCtl_io_msInfo_9_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_way = mshrCtl_io_msInfo_9_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_reqTag = mshrCtl_io_msInfo_9_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_willFree = mshrCtl_io_msInfo_9_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_needRelease = mshrCtl_io_msInfo_9_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_releaseNotSent = mshrCtl_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_metaTag = mshrCtl_io_msInfo_9_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_dirHit = mshrCtl_io_msInfo_9_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_nestB = mshrCtl_io_msInfo_9_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_mergeB = mshrCtl_io_msInfo_9_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_9_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_9_bits_isPrefetch = mshrCtl_io_msInfo_9_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_valid = mshrCtl_io_msInfo_10_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_set = mshrCtl_io_msInfo_10_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_way = mshrCtl_io_msInfo_10_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_reqTag = mshrCtl_io_msInfo_10_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_willFree = mshrCtl_io_msInfo_10_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_needRelease = mshrCtl_io_msInfo_10_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_releaseNotSent = mshrCtl_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_metaTag = mshrCtl_io_msInfo_10_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_dirHit = mshrCtl_io_msInfo_10_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_nestB = mshrCtl_io_msInfo_10_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_mergeB = mshrCtl_io_msInfo_10_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_10_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_10_bits_isPrefetch = mshrCtl_io_msInfo_10_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_valid = mshrCtl_io_msInfo_11_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_set = mshrCtl_io_msInfo_11_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_way = mshrCtl_io_msInfo_11_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_reqTag = mshrCtl_io_msInfo_11_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_willFree = mshrCtl_io_msInfo_11_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_needRelease = mshrCtl_io_msInfo_11_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_releaseNotSent = mshrCtl_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_metaTag = mshrCtl_io_msInfo_11_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_dirHit = mshrCtl_io_msInfo_11_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_nestB = mshrCtl_io_msInfo_11_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_mergeB = mshrCtl_io_msInfo_11_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_11_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_11_bits_isPrefetch = mshrCtl_io_msInfo_11_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_valid = mshrCtl_io_msInfo_12_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_set = mshrCtl_io_msInfo_12_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_way = mshrCtl_io_msInfo_12_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_reqTag = mshrCtl_io_msInfo_12_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_willFree = mshrCtl_io_msInfo_12_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_needRelease = mshrCtl_io_msInfo_12_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_releaseNotSent = mshrCtl_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_metaTag = mshrCtl_io_msInfo_12_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_dirHit = mshrCtl_io_msInfo_12_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_nestB = mshrCtl_io_msInfo_12_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_mergeB = mshrCtl_io_msInfo_12_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_12_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_12_bits_isPrefetch = mshrCtl_io_msInfo_12_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_valid = mshrCtl_io_msInfo_13_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_set = mshrCtl_io_msInfo_13_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_way = mshrCtl_io_msInfo_13_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_reqTag = mshrCtl_io_msInfo_13_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_willFree = mshrCtl_io_msInfo_13_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_needRelease = mshrCtl_io_msInfo_13_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_releaseNotSent = mshrCtl_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_metaTag = mshrCtl_io_msInfo_13_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_dirHit = mshrCtl_io_msInfo_13_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_nestB = mshrCtl_io_msInfo_13_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_mergeB = mshrCtl_io_msInfo_13_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_13_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_13_bits_isPrefetch = mshrCtl_io_msInfo_13_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_valid = mshrCtl_io_msInfo_14_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_set = mshrCtl_io_msInfo_14_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_way = mshrCtl_io_msInfo_14_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_reqTag = mshrCtl_io_msInfo_14_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_willFree = mshrCtl_io_msInfo_14_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_needRelease = mshrCtl_io_msInfo_14_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_releaseNotSent = mshrCtl_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_metaTag = mshrCtl_io_msInfo_14_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_dirHit = mshrCtl_io_msInfo_14_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_nestB = mshrCtl_io_msInfo_14_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_mergeB = mshrCtl_io_msInfo_14_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_14_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_14_bits_isPrefetch = mshrCtl_io_msInfo_14_bits_isPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_valid = mshrCtl_io_msInfo_15_valid; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_set = mshrCtl_io_msInfo_15_bits_set; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_way = mshrCtl_io_msInfo_15_bits_way; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_reqTag = mshrCtl_io_msInfo_15_bits_reqTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_willFree = mshrCtl_io_msInfo_15_bits_willFree; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_needRelease = mshrCtl_io_msInfo_15_bits_needRelease; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_releaseNotSent = mshrCtl_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_metaTag = mshrCtl_io_msInfo_15_bits_metaTag; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_dirHit = mshrCtl_io_msInfo_15_bits_dirHit; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_nestB = mshrCtl_io_msInfo_15_bits_nestB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_mergeB = mshrCtl_io_msInfo_15_bits_mergeB; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_isAcqOrPrefetch = mshrCtl_io_msInfo_15_bits_isAcqOrPrefetch; // @[Slice.scala 96:23]
  assign directory_io_msInfo_15_bits_isPrefetch = mshrCtl_io_msInfo_15_bits_isPrefetch; // @[Slice.scala 96:23]
  assign dataStorage_clock = clock;
  assign dataStorage_io_req_valid = mainPipe_io_toDS_req_s3_valid; // @[Slice.scala 98:22]
  assign dataStorage_io_req_bits_way = mainPipe_io_toDS_req_s3_bits_way; // @[Slice.scala 98:22]
  assign dataStorage_io_req_bits_set = mainPipe_io_toDS_req_s3_bits_set; // @[Slice.scala 98:22]
  assign dataStorage_io_req_bits_wen = mainPipe_io_toDS_req_s3_bits_wen; // @[Slice.scala 98:22]
  assign dataStorage_io_wdata_data = mainPipe_io_toDS_wdata_s3_data; // @[Slice.scala 99:24]
  assign refillUnit_clock = clock;
  assign refillUnit_reset = reset;
  assign refillUnit_io_sinkD_valid = refillUnit_io_sinkD_q_io_deq_valid; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_opcode = refillUnit_io_sinkD_q_io_deq_bits_opcode; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_param = refillUnit_io_sinkD_q_io_deq_bits_param; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_size = refillUnit_io_sinkD_q_io_deq_bits_size; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_source = refillUnit_io_sinkD_q_io_deq_bits_source; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_sink = refillUnit_io_sinkD_q_io_deq_bits_sink; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_echo_blockisdirty = refillUnit_io_sinkD_q_io_deq_bits_echo_blockisdirty; // @[Slice.scala 164:23]
  assign refillUnit_io_sinkD_bits_data = refillUnit_io_sinkD_q_io_deq_bits_data; // @[Slice.scala 164:23]
  assign refillUnit_io_sourceE_ready = io_out_e_q_io_enq_ready; // @[Decoupled.scala 365:17]
  assign sinkA_io_a_valid = io_in_a_valid; // @[Slice.scala 154:14]
  assign sinkA_io_a_bits_opcode = io_in_a_bits_opcode; // @[Slice.scala 154:14]
  assign sinkA_io_a_bits_param = io_in_a_bits_param; // @[Slice.scala 154:14]
  assign sinkA_io_a_bits_size = io_in_a_bits_size; // @[Slice.scala 154:14]
  assign sinkA_io_a_bits_source = io_in_a_bits_source; // @[Slice.scala 154:14]
  assign sinkA_io_a_bits_address = io_in_a_bits_address; // @[Slice.scala 154:14]
  assign sinkA_io_a_bits_user_reqSource = io_in_a_bits_user_reqSource; // @[Slice.scala 154:14]
  assign sinkA_io_task_ready = a_reqBuf_io_in_ready; // @[Slice.scala 61:18]
  assign sinkB_io_bvalid = sinkB_io_bq_io_deq_valid; // @[Slice.scala 162:14]
  assign sinkB_io_bopcode = sinkB_io_bq_io_deq_bits_opcode; // @[Slice.scala 162:14]
  assign sinkB_io_bparam = sinkB_io_bq_io_deq_bits_param; // @[Slice.scala 162:14]
  assign sinkB_io_bsize = sinkB_io_bq_io_deq_bits_size; // @[Slice.scala 162:14]
  assign sinkB_io_baddress = sinkB_io_bq_io_deq_bits_address; // @[Slice.scala 162:14]
  assign sinkB_io_bdata = sinkB_io_bq_io_deq_bits_data; // @[Slice.scala 162:14]
  assign sinkB_io_task_ready = reqArb_io_sinkB_ready; // @[Slice.scala 72:19]
  assign sinkB_io_msInfo_0_valid = mshrCtl_io_msInfo_0_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_set = mshrCtl_io_msInfo_0_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_reqTag = mshrCtl_io_msInfo_0_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_willFree = mshrCtl_io_msInfo_0_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_releaseNotSent = mshrCtl_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_metaTag = mshrCtl_io_msInfo_0_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_nestB = mshrCtl_io_msInfo_0_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_0_bits_mergeB = mshrCtl_io_msInfo_0_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_valid = mshrCtl_io_msInfo_1_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_set = mshrCtl_io_msInfo_1_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_reqTag = mshrCtl_io_msInfo_1_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_willFree = mshrCtl_io_msInfo_1_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_releaseNotSent = mshrCtl_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_metaTag = mshrCtl_io_msInfo_1_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_nestB = mshrCtl_io_msInfo_1_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_1_bits_mergeB = mshrCtl_io_msInfo_1_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_valid = mshrCtl_io_msInfo_2_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_set = mshrCtl_io_msInfo_2_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_reqTag = mshrCtl_io_msInfo_2_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_willFree = mshrCtl_io_msInfo_2_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_releaseNotSent = mshrCtl_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_metaTag = mshrCtl_io_msInfo_2_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_nestB = mshrCtl_io_msInfo_2_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_2_bits_mergeB = mshrCtl_io_msInfo_2_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_valid = mshrCtl_io_msInfo_3_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_set = mshrCtl_io_msInfo_3_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_reqTag = mshrCtl_io_msInfo_3_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_willFree = mshrCtl_io_msInfo_3_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_releaseNotSent = mshrCtl_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_metaTag = mshrCtl_io_msInfo_3_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_nestB = mshrCtl_io_msInfo_3_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_3_bits_mergeB = mshrCtl_io_msInfo_3_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_valid = mshrCtl_io_msInfo_4_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_set = mshrCtl_io_msInfo_4_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_reqTag = mshrCtl_io_msInfo_4_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_willFree = mshrCtl_io_msInfo_4_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_releaseNotSent = mshrCtl_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_metaTag = mshrCtl_io_msInfo_4_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_nestB = mshrCtl_io_msInfo_4_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_4_bits_mergeB = mshrCtl_io_msInfo_4_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_valid = mshrCtl_io_msInfo_5_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_set = mshrCtl_io_msInfo_5_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_reqTag = mshrCtl_io_msInfo_5_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_willFree = mshrCtl_io_msInfo_5_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_releaseNotSent = mshrCtl_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_metaTag = mshrCtl_io_msInfo_5_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_nestB = mshrCtl_io_msInfo_5_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_5_bits_mergeB = mshrCtl_io_msInfo_5_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_valid = mshrCtl_io_msInfo_6_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_set = mshrCtl_io_msInfo_6_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_reqTag = mshrCtl_io_msInfo_6_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_willFree = mshrCtl_io_msInfo_6_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_releaseNotSent = mshrCtl_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_metaTag = mshrCtl_io_msInfo_6_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_nestB = mshrCtl_io_msInfo_6_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_6_bits_mergeB = mshrCtl_io_msInfo_6_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_valid = mshrCtl_io_msInfo_7_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_set = mshrCtl_io_msInfo_7_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_reqTag = mshrCtl_io_msInfo_7_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_willFree = mshrCtl_io_msInfo_7_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_releaseNotSent = mshrCtl_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_metaTag = mshrCtl_io_msInfo_7_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_nestB = mshrCtl_io_msInfo_7_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_7_bits_mergeB = mshrCtl_io_msInfo_7_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_valid = mshrCtl_io_msInfo_8_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_set = mshrCtl_io_msInfo_8_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_reqTag = mshrCtl_io_msInfo_8_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_willFree = mshrCtl_io_msInfo_8_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_releaseNotSent = mshrCtl_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_metaTag = mshrCtl_io_msInfo_8_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_nestB = mshrCtl_io_msInfo_8_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_8_bits_mergeB = mshrCtl_io_msInfo_8_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_valid = mshrCtl_io_msInfo_9_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_set = mshrCtl_io_msInfo_9_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_reqTag = mshrCtl_io_msInfo_9_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_willFree = mshrCtl_io_msInfo_9_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_releaseNotSent = mshrCtl_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_metaTag = mshrCtl_io_msInfo_9_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_nestB = mshrCtl_io_msInfo_9_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_9_bits_mergeB = mshrCtl_io_msInfo_9_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_valid = mshrCtl_io_msInfo_10_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_set = mshrCtl_io_msInfo_10_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_reqTag = mshrCtl_io_msInfo_10_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_willFree = mshrCtl_io_msInfo_10_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_releaseNotSent = mshrCtl_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_metaTag = mshrCtl_io_msInfo_10_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_nestB = mshrCtl_io_msInfo_10_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_10_bits_mergeB = mshrCtl_io_msInfo_10_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_valid = mshrCtl_io_msInfo_11_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_set = mshrCtl_io_msInfo_11_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_reqTag = mshrCtl_io_msInfo_11_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_willFree = mshrCtl_io_msInfo_11_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_releaseNotSent = mshrCtl_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_metaTag = mshrCtl_io_msInfo_11_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_nestB = mshrCtl_io_msInfo_11_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_11_bits_mergeB = mshrCtl_io_msInfo_11_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_valid = mshrCtl_io_msInfo_12_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_set = mshrCtl_io_msInfo_12_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_reqTag = mshrCtl_io_msInfo_12_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_willFree = mshrCtl_io_msInfo_12_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_releaseNotSent = mshrCtl_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_metaTag = mshrCtl_io_msInfo_12_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_nestB = mshrCtl_io_msInfo_12_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_12_bits_mergeB = mshrCtl_io_msInfo_12_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_valid = mshrCtl_io_msInfo_13_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_set = mshrCtl_io_msInfo_13_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_reqTag = mshrCtl_io_msInfo_13_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_willFree = mshrCtl_io_msInfo_13_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_releaseNotSent = mshrCtl_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_metaTag = mshrCtl_io_msInfo_13_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_nestB = mshrCtl_io_msInfo_13_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_13_bits_mergeB = mshrCtl_io_msInfo_13_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_valid = mshrCtl_io_msInfo_14_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_set = mshrCtl_io_msInfo_14_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_reqTag = mshrCtl_io_msInfo_14_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_willFree = mshrCtl_io_msInfo_14_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_releaseNotSent = mshrCtl_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_metaTag = mshrCtl_io_msInfo_14_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_nestB = mshrCtl_io_msInfo_14_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_14_bits_mergeB = mshrCtl_io_msInfo_14_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_valid = mshrCtl_io_msInfo_15_valid; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_set = mshrCtl_io_msInfo_15_bits_set; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_reqTag = mshrCtl_io_msInfo_15_bits_reqTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_willFree = mshrCtl_io_msInfo_15_bits_willFree; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_releaseNotSent = mshrCtl_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_metaTag = mshrCtl_io_msInfo_15_bits_metaTag; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_nestB = mshrCtl_io_msInfo_15_bits_nestB; // @[Slice.scala 65:19]
  assign sinkB_io_msInfo_15_bits_mergeB = mshrCtl_io_msInfo_15_bits_mergeB; // @[Slice.scala 65:19]
  assign sinkC_clock = clock;
  assign sinkC_reset = reset;
  assign sinkC_io_c_valid = io_in_c_valid; // @[Slice.scala 156:14]
  assign sinkC_io_c_bits_opcode = io_in_c_bits_opcode; // @[Slice.scala 156:14]
  assign sinkC_io_c_bits_param = io_in_c_bits_param; // @[Slice.scala 156:14]
  assign sinkC_io_c_bits_size = io_in_c_bits_size; // @[Slice.scala 156:14]
  assign sinkC_io_c_bits_source = io_in_c_bits_source; // @[Slice.scala 156:14]
  assign sinkC_io_c_bits_address = io_in_c_bits_address; // @[Slice.scala 156:14]
  assign sinkC_io_c_bits_data = io_in_c_bits_data; // @[Slice.scala 156:14]
  assign sinkC_io_task_ready = reqArb_io_sinkC_ready; // @[Slice.scala 73:19]
  assign sinkC_io_bufRead_valid = mainPipe_io_bufRead_valid; // @[Slice.scala 103:23]
  assign sinkC_io_bufRead_bits_bufIdx = mainPipe_io_bufRead_bits_bufIdx; // @[Slice.scala 103:23]
  assign sinkC_io_msInfo_0_valid = mshrCtl_io_msInfo_0_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_0_bits_set = mshrCtl_io_msInfo_0_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_0_bits_reqTag = mshrCtl_io_msInfo_0_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_0_bits_releaseNotSent = mshrCtl_io_msInfo_0_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_1_valid = mshrCtl_io_msInfo_1_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_1_bits_set = mshrCtl_io_msInfo_1_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_1_bits_reqTag = mshrCtl_io_msInfo_1_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_1_bits_releaseNotSent = mshrCtl_io_msInfo_1_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_2_valid = mshrCtl_io_msInfo_2_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_2_bits_set = mshrCtl_io_msInfo_2_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_2_bits_reqTag = mshrCtl_io_msInfo_2_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_2_bits_releaseNotSent = mshrCtl_io_msInfo_2_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_3_valid = mshrCtl_io_msInfo_3_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_3_bits_set = mshrCtl_io_msInfo_3_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_3_bits_reqTag = mshrCtl_io_msInfo_3_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_3_bits_releaseNotSent = mshrCtl_io_msInfo_3_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_4_valid = mshrCtl_io_msInfo_4_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_4_bits_set = mshrCtl_io_msInfo_4_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_4_bits_reqTag = mshrCtl_io_msInfo_4_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_4_bits_releaseNotSent = mshrCtl_io_msInfo_4_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_5_valid = mshrCtl_io_msInfo_5_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_5_bits_set = mshrCtl_io_msInfo_5_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_5_bits_reqTag = mshrCtl_io_msInfo_5_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_5_bits_releaseNotSent = mshrCtl_io_msInfo_5_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_6_valid = mshrCtl_io_msInfo_6_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_6_bits_set = mshrCtl_io_msInfo_6_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_6_bits_reqTag = mshrCtl_io_msInfo_6_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_6_bits_releaseNotSent = mshrCtl_io_msInfo_6_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_7_valid = mshrCtl_io_msInfo_7_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_7_bits_set = mshrCtl_io_msInfo_7_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_7_bits_reqTag = mshrCtl_io_msInfo_7_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_7_bits_releaseNotSent = mshrCtl_io_msInfo_7_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_8_valid = mshrCtl_io_msInfo_8_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_8_bits_set = mshrCtl_io_msInfo_8_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_8_bits_reqTag = mshrCtl_io_msInfo_8_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_8_bits_releaseNotSent = mshrCtl_io_msInfo_8_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_9_valid = mshrCtl_io_msInfo_9_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_9_bits_set = mshrCtl_io_msInfo_9_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_9_bits_reqTag = mshrCtl_io_msInfo_9_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_9_bits_releaseNotSent = mshrCtl_io_msInfo_9_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_10_valid = mshrCtl_io_msInfo_10_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_10_bits_set = mshrCtl_io_msInfo_10_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_10_bits_reqTag = mshrCtl_io_msInfo_10_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_10_bits_releaseNotSent = mshrCtl_io_msInfo_10_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_11_valid = mshrCtl_io_msInfo_11_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_11_bits_set = mshrCtl_io_msInfo_11_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_11_bits_reqTag = mshrCtl_io_msInfo_11_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_11_bits_releaseNotSent = mshrCtl_io_msInfo_11_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_12_valid = mshrCtl_io_msInfo_12_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_12_bits_set = mshrCtl_io_msInfo_12_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_12_bits_reqTag = mshrCtl_io_msInfo_12_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_12_bits_releaseNotSent = mshrCtl_io_msInfo_12_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_13_valid = mshrCtl_io_msInfo_13_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_13_bits_set = mshrCtl_io_msInfo_13_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_13_bits_reqTag = mshrCtl_io_msInfo_13_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_13_bits_releaseNotSent = mshrCtl_io_msInfo_13_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_14_valid = mshrCtl_io_msInfo_14_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_14_bits_set = mshrCtl_io_msInfo_14_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_14_bits_reqTag = mshrCtl_io_msInfo_14_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_14_bits_releaseNotSent = mshrCtl_io_msInfo_14_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_15_valid = mshrCtl_io_msInfo_15_valid; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_15_bits_set = mshrCtl_io_msInfo_15_bits_set; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_15_bits_reqTag = mshrCtl_io_msInfo_15_bits_reqTag; // @[Slice.scala 66:19]
  assign sinkC_io_msInfo_15_bits_releaseNotSent = mshrCtl_io_msInfo_15_bits_releaseNotSent; // @[Slice.scala 66:19]
  assign sourceC_clock = clock;
  assign sourceC_reset = reset;
  assign sourceC_io_in_valid = mainPipe_io_toSourceC_valid; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_set = mainPipe_io_toSourceC_bits_task_set; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_tag = mainPipe_io_toSourceC_bits_task_tag; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_off = mainPipe_io_toSourceC_bits_task_off; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_opcode = mainPipe_io_toSourceC_bits_task_opcode; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_param = mainPipe_io_toSourceC_bits_task_param; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_mshrId = mainPipe_io_toSourceC_bits_task_mshrId; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_task_dirty = mainPipe_io_toSourceC_bits_task_dirty; // @[Slice.scala 129:17]
  assign sourceC_io_in_bits_data_data = mainPipe_io_toSourceC_bits_data_data; // @[Slice.scala 129:17]
  assign sourceC_io_out_ready = io_out_c_ready; // @[Slice.scala 163:12]
  assign grantBuf_clock = clock;
  assign grantBuf_reset = reset;
  assign grantBuf_io_d_task_valid = mainPipe_io_toSourceD_valid; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_task_set = mainPipe_io_toSourceD_bits_task_set; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_task_tag = mainPipe_io_toSourceD_bits_task_tag; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_task_opcode = mainPipe_io_toSourceD_bits_task_opcode; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_task_param = mainPipe_io_toSourceD_bits_task_param; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_task_sourceId = mainPipe_io_toSourceD_bits_task_sourceId; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_task_mshrId = mainPipe_io_toSourceD_bits_task_mshrId; // @[Slice.scala 135:22]
  assign grantBuf_io_d_task_bits_data_data = mainPipe_io_toSourceD_bits_data_data; // @[Slice.scala 135:22]
  assign grantBuf_io_d_ready = io_in_d_ready; // @[Slice.scala 157:11]
  assign grantBuf_io_e_valid = io_in_e_valid; // @[Slice.scala 158:17]
  assign grantBuf_io_e_bits_sink = io_in_e_bits_sink; // @[Slice.scala 158:17]
  assign grantBuf_io_fromReqArb_status_s1_tags_1 = reqArb_io_status_s1_tags_1; // @[Slice.scala 136:36]
  assign grantBuf_io_fromReqArb_status_s1_sets_1 = reqArb_io_status_s1_sets_1; // @[Slice.scala 136:36]
  assign grantBuf_io_pipeStatusVec_0_valid = reqArb_io_status_vec_0_valid; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_0_bits_channel = reqArb_io_status_vec_0_bits_channel; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_1_valid = reqArb_io_status_vec_1_valid; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_1_bits_channel = reqArb_io_status_vec_1_bits_channel; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_2_valid = mainPipe_io_status_vec_0_valid; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_2_bits_channel = mainPipe_io_status_vec_0_bits_channel; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_3_valid = mainPipe_io_status_vec_1_valid; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_3_bits_channel = mainPipe_io_status_vec_1_bits_channel; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_4_valid = mainPipe_io_status_vec_2_valid; // @[Slice.scala 137:29]
  assign grantBuf_io_pipeStatusVec_4_bits_channel = mainPipe_io_status_vec_2_bits_channel; // @[Slice.scala 137:29]
  assign refillBuf_clock = clock;
  assign refillBuf_reset = reset;
  assign refillBuf_io_rvalid = reqArb_io_refillBufRead_s2_valid; // @[Slice.scala 77:30]
  assign refillBuf_io_rid = reqArb_io_refillBufRead_s2_id; // @[Slice.scala 77:30]
  assign refillBuf_io_w0_valid = refillUnit_io_refillBufWrite_valid; // @[Slice.scala 125:21]
  assign refillBuf_io_w0_beat_sel = refillUnit_io_refillBufWrite_beat_sel; // @[Slice.scala 125:21]
  assign refillBuf_io_w0_data_data = refillUnit_io_refillBufWrite_data_data; // @[Slice.scala 125:21]
  assign refillBuf_io_w0_id = refillUnit_io_refillBufWrite_id; // @[Slice.scala 125:21]
  assign refillBuf_io_w1_valid = sinkC_io_refillBufWrite_valid; // @[Slice.scala 126:21]
  assign refillBuf_io_w1_beat_sel = 2'h3; // @[Slice.scala 126:21]
  assign refillBuf_io_w1_data_data = sinkC_io_refillBufWrite_data_data; // @[Slice.scala 126:21]
  assign refillBuf_io_w1_id = sinkC_io_refillBufWrite_id; // @[Slice.scala 126:21]
  assign refillBuf_io_w2_valid = mainPipe_io_refillBufWrite_valid; // @[Slice.scala 127:21]
  assign refillBuf_io_w2_data_data = mainPipe_io_refillBufWrite_data_data; // @[Slice.scala 127:21]
  assign refillBuf_io_w2_id = mainPipe_io_refillBufWrite_id; // @[Slice.scala 127:21]
  assign releaseBuf_clock = clock;
  assign releaseBuf_reset = reset;
  assign releaseBuf_io_rvalid = reqArb_io_releaseBufRead_s2_valid; // @[Slice.scala 78:31]
  assign releaseBuf_io_rid = reqArb_io_releaseBufRead_s2_id; // @[Slice.scala 78:31]
  assign releaseBuf_io_w0_valid = mshrCtl_io_nestedwbDataId_valid; // @[Slice.scala 117:28]
  assign releaseBuf_io_w0_beat_sel = 2'h3; // @[Bitwise.scala 74:12]
  assign releaseBuf_io_w0_data_data = mainPipe_io_nestedwbData_data; // @[Slice.scala 119:27]
  assign releaseBuf_io_w0_id = mshrCtl_io_nestedwbDataId_bits; // @[Slice.scala 120:25]
  assign releaseBuf_io_w1_valid = sinkC_io_releaseBufWrite_valid; // @[Slice.scala 121:22]
  assign releaseBuf_io_w1_beat_sel = sinkC_io_releaseBufWrite_beat_sel; // @[Slice.scala 121:22]
  assign releaseBuf_io_w1_data_data = sinkC_io_releaseBufWrite_data_data; // @[Slice.scala 121:22]
  assign releaseBuf_io_w1_id = mshrCtl_io_releaseBufWriteId; // @[Slice.scala 122:25]
  assign releaseBuf_io_w2_valid = mainPipe_io_releaseBufWrite_valid; // @[Slice.scala 123:22]
  assign releaseBuf_io_w2_data_data = mainPipe_io_releaseBufWrite_data_data; // @[Slice.scala 123:22]
  assign releaseBuf_io_w2_id = mainPipe_io_releaseBufWrite_id; // @[Slice.scala 123:22]
  assign io_out_a_q_clock = clock;
  assign io_out_a_q_reset = reset;
  assign io_out_a_q_io_enq_valid = mshrCtl_io_sourceA_valid; // @[Decoupled.scala 363:22]
  assign io_out_a_q_io_enq_bits_opcode = mshrCtl_io_sourceA_bits_opcode; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_param = mshrCtl_io_sourceA_bits_param; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_size = mshrCtl_io_sourceA_bits_size; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_source = mshrCtl_io_sourceA_bits_source; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_address = mshrCtl_io_sourceA_bits_address; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_echo_blockisdirty = mshrCtl_io_sourceA_bits_echo_blockisdirty; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_mask = mshrCtl_io_sourceA_bits_mask; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_data = mshrCtl_io_sourceA_bits_data; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_enq_bits_corrupt = mshrCtl_io_sourceA_bits_corrupt; // @[Decoupled.scala 364:21]
  assign io_out_a_q_io_deq_ready = io_out_a_ready; // @[Slice.scala 161:12]
  assign sinkB_io_bq_clock = clock;
  assign sinkB_io_bq_reset = reset;
  assign sinkB_io_bq_io_enq_valid = io_out_bvalid; // @[Decoupled.scala 363:22]
  assign sinkB_io_bq_io_enq_bits_opcode = io_out_bopcode; // @[Decoupled.scala 364:21]
  assign sinkB_io_bq_io_enq_bits_param = io_out_bparam; // @[Decoupled.scala 364:21]
  assign sinkB_io_bq_io_enq_bits_size = io_out_bsize; // @[Decoupled.scala 364:21]
  assign sinkB_io_bq_io_enq_bits_address = io_out_baddress; // @[Decoupled.scala 364:21]
  assign sinkB_io_bq_io_enq_bits_data = io_out_bdata; // @[Decoupled.scala 364:21]
  assign sinkB_io_bq_io_deq_ready = sinkB_io_bready; // @[Slice.scala 162:14]
  assign refillUnit_io_sinkD_q_clock = clock;
  assign refillUnit_io_sinkD_q_reset = reset;
  assign refillUnit_io_sinkD_q_io_enq_valid = io_out_d_valid; // @[Decoupled.scala 363:22]
  assign refillUnit_io_sinkD_q_io_enq_bits_opcode = io_out_d_bits_opcode; // @[Decoupled.scala 364:21]
  assign refillUnit_io_sinkD_q_io_enq_bits_param = io_out_d_bits_param; // @[Decoupled.scala 364:21]
  assign refillUnit_io_sinkD_q_io_enq_bits_size = io_out_d_bits_size; // @[Decoupled.scala 364:21]
  assign refillUnit_io_sinkD_q_io_enq_bits_source = io_out_d_bits_source; // @[Decoupled.scala 364:21]
  assign refillUnit_io_sinkD_q_io_enq_bits_sink = io_out_d_bits_sink; // @[Decoupled.scala 364:21]
  assign refillUnit_io_sinkD_q_io_enq_bits_echo_blockisdirty = io_out_d_bits_echo_blockisdirty; // @[Decoupled.scala 364:21]
  assign refillUnit_io_sinkD_q_io_enq_bits_data = io_out_d_bits_data; // @[Decoupled.scala 364:21]
  assign io_out_e_q_clock = clock;
  assign io_out_e_q_reset = reset;
  assign io_out_e_q_io_enq_valid = refillUnit_io_sourceE_valid; // @[Decoupled.scala 363:22]
  assign io_out_e_q_io_enq_bits_sink = refillUnit_io_sourceE_bits_sink; // @[Decoupled.scala 364:21]
  assign io_out_e_q_io_deq_ready = io_out_e_ready; // @[Slice.scala 165:12]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Slice.scala 108:72]
      mainPipe_io_releaseBufResp_s3_valid_REG <= 1'h0;
    end else begin
      mainPipe_io_releaseBufResp_s3_valid_REG <= releaseBuf_io_rvalid;
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
  mainPipe_io_releaseBufResp_s3_valid_REG = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    mainPipe_io_releaseBufResp_s3_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

