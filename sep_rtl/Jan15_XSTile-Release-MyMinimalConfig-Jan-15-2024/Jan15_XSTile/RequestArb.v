module RequestArb(
  input          clock,
  input          reset,
  output         io_sinkA_ready,
  input          io_sinkA_valid,
  input  [2:0]   io_sinkA_bits_channel,
  input  [6:0]   io_sinkA_bits_set,
  input  [21:0]  io_sinkA_bits_tag,
  input  [5:0]   io_sinkA_bits_off,
  input  [2:0]   io_sinkA_bits_opcode,
  input  [2:0]   io_sinkA_bits_param,
  input  [2:0]   io_sinkA_bits_size,
  input  [4:0]   io_sinkA_bits_sourceId,
  input  [1:0]   io_sinkA_bits_bufIdx,
  input          io_sinkA_bits_needProbeAckData,
  input          io_sinkA_bits_mshrTask,
  input  [7:0]   io_sinkA_bits_mshrId,
  input          io_sinkA_bits_useProbeData,
  input          io_sinkA_bits_dirty,
  input  [2:0]   io_sinkA_bits_way,
  input          io_sinkA_bits_meta_dirty,
  input  [1:0]   io_sinkA_bits_meta_state,
  input          io_sinkA_bits_meta_clients,
  input          io_sinkA_bits_meta_accessed,
  input          io_sinkA_bits_metaWen,
  input          io_sinkA_bits_tagWen,
  input          io_sinkA_bits_dsWen,
  input  [7:0]   io_sinkA_bits_wayMask,
  input          io_sinkA_bits_replTask,
  input  [3:0]   io_sinkA_bits_reqSource,
  input  [21:0]  io_ATag,
  input  [6:0]   io_ASet,
  output         io_s1Entrance_valid,
  output [6:0]   io_s1Entrance_bits_set,
  output         io_sinkB_ready,
  input          io_sinkB_valid,
  input  [2:0]   io_sinkB_bits_channel,
  input  [6:0]   io_sinkB_bits_set,
  input  [21:0]  io_sinkB_bits_tag,
  input  [5:0]   io_sinkB_bits_off,
  input  [2:0]   io_sinkB_bits_opcode,
  input  [2:0]   io_sinkB_bits_param,
  input  [2:0]   io_sinkB_bits_size,
  input  [4:0]   io_sinkB_bits_sourceId,
  input  [1:0]   io_sinkB_bits_bufIdx,
  input          io_sinkB_bits_needProbeAckData,
  input          io_sinkB_bits_mshrTask,
  input  [7:0]   io_sinkB_bits_mshrId,
  input          io_sinkB_bits_useProbeData,
  input          io_sinkB_bits_dirty,
  input  [2:0]   io_sinkB_bits_way,
  input          io_sinkB_bits_meta_dirty,
  input  [1:0]   io_sinkB_bits_meta_state,
  input          io_sinkB_bits_meta_clients,
  input          io_sinkB_bits_meta_accessed,
  input          io_sinkB_bits_metaWen,
  input          io_sinkB_bits_tagWen,
  input          io_sinkB_bits_dsWen,
  input  [7:0]   io_sinkB_bits_wayMask,
  input          io_sinkB_bits_replTask,
  input  [3:0]   io_sinkB_bits_reqSource,
  output         io_sinkC_ready,
  input          io_sinkC_valid,
  input  [2:0]   io_sinkC_bits_channel,
  input  [6:0]   io_sinkC_bits_set,
  input  [21:0]  io_sinkC_bits_tag,
  input  [5:0]   io_sinkC_bits_off,
  input  [2:0]   io_sinkC_bits_opcode,
  input  [2:0]   io_sinkC_bits_param,
  input  [2:0]   io_sinkC_bits_size,
  input  [4:0]   io_sinkC_bits_sourceId,
  input  [1:0]   io_sinkC_bits_bufIdx,
  input          io_sinkC_bits_needProbeAckData,
  input          io_sinkC_bits_mshrTask,
  input  [7:0]   io_sinkC_bits_mshrId,
  input          io_sinkC_bits_useProbeData,
  input          io_sinkC_bits_dirty,
  input  [2:0]   io_sinkC_bits_way,
  input          io_sinkC_bits_meta_dirty,
  input  [1:0]   io_sinkC_bits_meta_state,
  input          io_sinkC_bits_meta_clients,
  input          io_sinkC_bits_meta_accessed,
  input          io_sinkC_bits_metaWen,
  input          io_sinkC_bits_tagWen,
  input          io_sinkC_bits_dsWen,
  input  [7:0]   io_sinkC_bits_wayMask,
  input          io_sinkC_bits_replTask,
  input  [3:0]   io_sinkC_bits_reqSource,
  output         io_mshrTask_ready,
  input          io_mshrTask_valid,
  input  [2:0]   io_mshrTask_bits_channel,
  input  [6:0]   io_mshrTask_bits_set,
  input  [21:0]  io_mshrTask_bits_tag,
  input  [5:0]   io_mshrTask_bits_off,
  input  [2:0]   io_mshrTask_bits_opcode,
  input  [2:0]   io_mshrTask_bits_param,
  input  [2:0]   io_mshrTask_bits_size,
  input  [4:0]   io_mshrTask_bits_sourceId,
  input  [1:0]   io_mshrTask_bits_bufIdx,
  input          io_mshrTask_bits_needProbeAckData,
  input          io_mshrTask_bits_mshrTask,
  input  [7:0]   io_mshrTask_bits_mshrId,
  input          io_mshrTask_bits_useProbeData,
  input          io_mshrTask_bits_dirty,
  input  [2:0]   io_mshrTask_bits_way,
  input          io_mshrTask_bits_meta_dirty,
  input  [1:0]   io_mshrTask_bits_meta_state,
  input          io_mshrTask_bits_meta_clients,
  input          io_mshrTask_bits_meta_accessed,
  input          io_mshrTask_bits_metaWen,
  input          io_mshrTask_bits_tagWen,
  input          io_mshrTask_bits_dsWen,
  input  [7:0]   io_mshrTask_bits_wayMask,
  input          io_mshrTask_bits_replTask,
  input  [3:0]   io_mshrTask_bits_reqSource,
  input          io_dirRead_s1_ready,
  output         io_dirRead_s1_valid,
  output [21:0]  io_dirRead_s1_bits_tag,
  output [6:0]   io_dirRead_s1_bits_set,
  output [7:0]   io_dirRead_s1_bits_wayMask,
  output [2:0]   io_dirRead_s1_bits_replacerInfo_channel,
  output [2:0]   io_dirRead_s1_bits_replacerInfo_opcode,
  output [3:0]   io_dirRead_s1_bits_replacerInfo_reqSource,
  output         io_dirRead_s1_bits_refill,
  output [7:0]   io_dirRead_s1_bits_mshrId,
  output         io_taskToPipe_s2_valid,
  output [2:0]   io_taskToPipe_s2_bits_channel,
  output [6:0]   io_taskToPipe_s2_bits_set,
  output [21:0]  io_taskToPipe_s2_bits_tag,
  output [5:0]   io_taskToPipe_s2_bits_off,
  output [2:0]   io_taskToPipe_s2_bits_opcode,
  output [2:0]   io_taskToPipe_s2_bits_param,
  output [2:0]   io_taskToPipe_s2_bits_size,
  output [4:0]   io_taskToPipe_s2_bits_sourceId,
  output [1:0]   io_taskToPipe_s2_bits_bufIdx,
  output         io_taskToPipe_s2_bits_needProbeAckData,
  output         io_taskToPipe_s2_bits_mshrTask,
  output [7:0]   io_taskToPipe_s2_bits_mshrId,
  output         io_taskToPipe_s2_bits_useProbeData,
  output         io_taskToPipe_s2_bits_dirty,
  output [2:0]   io_taskToPipe_s2_bits_way,
  output         io_taskToPipe_s2_bits_meta_dirty,
  output [1:0]   io_taskToPipe_s2_bits_meta_state,
  output         io_taskToPipe_s2_bits_meta_clients,
  output         io_taskToPipe_s2_bits_meta_accessed,
  output         io_taskToPipe_s2_bits_metaWen,
  output         io_taskToPipe_s2_bits_tagWen,
  output         io_taskToPipe_s2_bits_dsWen,
  output [7:0]   io_taskToPipe_s2_bits_wayMask,
  output         io_taskToPipe_s2_bits_replTask,
  output [3:0]   io_taskToPipe_s2_bits_reqSource,
  output         io_taskInfo_s1_valid,
  output [2:0]   io_taskInfo_s1_bits_channel,
  output [6:0]   io_taskInfo_s1_bits_set,
  output [21:0]  io_taskInfo_s1_bits_tag,
  output [5:0]   io_taskInfo_s1_bits_off,
  output [2:0]   io_taskInfo_s1_bits_opcode,
  output [2:0]   io_taskInfo_s1_bits_param,
  output [2:0]   io_taskInfo_s1_bits_size,
  output [4:0]   io_taskInfo_s1_bits_sourceId,
  output [1:0]   io_taskInfo_s1_bits_bufIdx,
  output         io_taskInfo_s1_bits_needProbeAckData,
  output         io_taskInfo_s1_bits_mshrTask,
  output [7:0]   io_taskInfo_s1_bits_mshrId,
  output         io_taskInfo_s1_bits_useProbeData,
  output         io_taskInfo_s1_bits_dirty,
  output [2:0]   io_taskInfo_s1_bits_way,
  output         io_taskInfo_s1_bits_meta_dirty,
  output [1:0]   io_taskInfo_s1_bits_meta_state,
  output         io_taskInfo_s1_bits_meta_clients,
  output         io_taskInfo_s1_bits_meta_accessed,
  output         io_taskInfo_s1_bits_metaWen,
  output         io_taskInfo_s1_bits_tagWen,
  output         io_taskInfo_s1_bits_dsWen,
  output [7:0]   io_taskInfo_s1_bits_wayMask,
  output         io_taskInfo_s1_bits_replTask,
  output [3:0]   io_taskInfo_s1_bits_reqSource,
  output         io_refillBufRead_s2_valid,
  output [7:0]   io_refillBufRead_s2_id,
  input          io_refillBufRead_s2_ready,
  input  [511:0] io_refillBufRead_s2_data_data,
  output         io_releaseBufRead_s2_valid,
  output [7:0]   io_releaseBufRead_s2_id,
  input          io_releaseBufRead_s2_ready,
  input  [511:0] io_releaseBufRead_s2_data_data,
  output [21:0]  io_status_s1_tags_0,
  output [21:0]  io_status_s1_tags_1,
  output [21:0]  io_status_s1_tags_2,
  output [21:0]  io_status_s1_tags_3,
  output [6:0]   io_status_s1_sets_0,
  output [6:0]   io_status_s1_sets_1,
  output [6:0]   io_status_s1_sets_2,
  output [6:0]   io_status_s1_sets_3,
  output         io_status_vec_0_valid,
  output [2:0]   io_status_vec_0_bits_channel,
  output         io_status_vec_1_valid,
  output [2:0]   io_status_vec_1_bits_channel,
  input          io_fromMSHRCtl_blockG_s1,
  input          io_fromMSHRCtl_blockA_s1,
  input          io_fromMSHRCtl_blockB_s1,
  input          io_fromMSHRCtl_blockC_s1,
  input          io_fromMainPipe_blockG_s1,
  input          io_fromMainPipe_blockA_s1,
  input          io_fromMainPipe_blockB_s1,
  input          io_fromMainPipe_blockC_s1,
  input          io_fromGrantBuffer_blockSinkReqEntrance_blockG_s1,
  input          io_fromGrantBuffer_blockSinkReqEntrance_blockA_s1,
  input          io_fromGrantBuffer_blockSinkReqEntrance_blockB_s1,
  input          io_fromGrantBuffer_blockSinkReqEntrance_blockC_s1,
  input          io_fromGrantBuffer_blockMSHRReqEntrance
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
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
`endif // RANDOMIZE_REG_INIT
  reg  resetFinish; // @[RequestArb.scala 68:28]
  reg [6:0] resetIdx; // @[RequestArb.scala 69:25]
  wire [6:0] _resetIdx_T_1 = resetIdx - 7'h1; // @[RequestArb.scala 72:26]
  reg  mshr_task_s1_valid; // @[RequestArb.scala 79:29]
  reg [2:0] mshr_task_s1_bits_channel; // @[RequestArb.scala 79:29]
  reg [6:0] mshr_task_s1_bits_set; // @[RequestArb.scala 79:29]
  reg [21:0] mshr_task_s1_bits_tag; // @[RequestArb.scala 79:29]
  reg [5:0] mshr_task_s1_bits_off; // @[RequestArb.scala 79:29]
  reg [2:0] mshr_task_s1_bits_opcode; // @[RequestArb.scala 79:29]
  reg [2:0] mshr_task_s1_bits_param; // @[RequestArb.scala 79:29]
  reg [2:0] mshr_task_s1_bits_size; // @[RequestArb.scala 79:29]
  reg [4:0] mshr_task_s1_bits_sourceId; // @[RequestArb.scala 79:29]
  reg [1:0] mshr_task_s1_bits_bufIdx; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_needProbeAckData; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_mshrTask; // @[RequestArb.scala 79:29]
  reg [7:0] mshr_task_s1_bits_mshrId; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_useProbeData; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_dirty; // @[RequestArb.scala 79:29]
  reg [2:0] mshr_task_s1_bits_way; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_meta_dirty; // @[RequestArb.scala 79:29]
  reg [1:0] mshr_task_s1_bits_meta_state; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_meta_clients; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_meta_accessed; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_metaWen; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_tagWen; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_dsWen; // @[RequestArb.scala 79:29]
  reg [7:0] mshr_task_s1_bits_wayMask; // @[RequestArb.scala 79:29]
  reg  mshr_task_s1_bits_replTask; // @[RequestArb.scala 79:29]
  reg [3:0] mshr_task_s1_bits_reqSource; // @[RequestArb.scala 79:29]
  wire  _s1_needs_replRead_T_6 = mshr_task_s1_bits_opcode == 3'h1; // @[RequestArb.scala 83:30]
  wire  _s1_needs_replRead_T_7 = mshr_task_s1_bits_opcode[2:1] == 2'h2 | _s1_needs_replRead_T_6; // @[RequestArb.scala 82:52]
  wire  _s1_needs_replRead_T_9 = mshr_task_s1_bits_opcode == 3'h2 & mshr_task_s1_bits_dsWen; // @[RequestArb.scala 84:42]
  wire  _s1_needs_replRead_T_10 = _s1_needs_replRead_T_7 | _s1_needs_replRead_T_9; // @[RequestArb.scala 83:48]
  wire  s1_needs_replRead = mshr_task_s1_valid & mshr_task_s1_bits_channel[0] & mshr_task_s1_bits_replTask &
    _s1_needs_replRead_T_10; // @[RequestArb.scala 81:103]
  wire  mshr_task_s0_valid = io_mshrTask_ready & io_mshrTask_valid; // @[Decoupled.scala 50:35]
  wire  mshr_replRead_stall = mshr_task_s1_valid & s1_needs_replRead & (~io_dirRead_s1_ready | io_fromMainPipe_blockG_s1
    ); // @[RequestArb.scala 96:69]
  wire  _T_2 = ~mshr_replRead_stall; // @[RequestArb.scala 99:30]
  wire  block_A = io_fromMSHRCtl_blockA_s1 | io_fromMainPipe_blockA_s1 |
    io_fromGrantBuffer_blockSinkReqEntrance_blockA_s1; // @[RequestArb.scala 107:71]
  wire  block_B = io_fromMSHRCtl_blockB_s1 | io_fromMainPipe_blockB_s1 |
    io_fromGrantBuffer_blockSinkReqEntrance_blockB_s1; // @[RequestArb.scala 108:71]
  wire  block_C = io_fromMSHRCtl_blockC_s1 | io_fromMainPipe_blockC_s1 |
    io_fromGrantBuffer_blockSinkReqEntrance_blockC_s1; // @[RequestArb.scala 109:71]
  wire  _sinkValids_T = ~block_C; // @[RequestArb.scala 112:23]
  wire  _sinkValids_T_1 = io_sinkC_valid & ~block_C; // @[RequestArb.scala 112:20]
  wire  _sinkValids_T_2 = ~block_B; // @[RequestArb.scala 113:23]
  wire  _sinkValids_T_3 = io_sinkB_valid & ~block_B; // @[RequestArb.scala 113:20]
  wire  _sinkValids_T_4 = ~block_A; // @[RequestArb.scala 114:23]
  wire  _sinkValids_T_5 = io_sinkA_valid & ~block_A; // @[RequestArb.scala 114:20]
  wire [2:0] sinkValids = {_sinkValids_T_5,_sinkValids_T_3,_sinkValids_T_1}; // @[RequestArb.scala 115:6]
  wire  _sink_ready_basic_T_1 = ~mshr_task_s1_valid; // @[RequestArb.scala 117:64]
  wire  sink_ready_basic = io_dirRead_s1_ready & resetFinish & ~mshr_task_s1_valid; // @[RequestArb.scala 117:61]
  wire  _io_sinkA_ready_T_6 = ~sinkValids[0]; // @[RequestArb.scala 118:71]
  wire  chnl_task_s1_valid = io_dirRead_s1_ready & |sinkValids & resetFinish; // @[RequestArb.scala 123:63]
  wire [2:0] _chnl_task_s1_bits_T_4_channel = sinkValids[1] ? io_sinkB_bits_channel : io_sinkA_bits_channel; // @[ParallelMux.scala 90:77]
  wire [6:0] _chnl_task_s1_bits_T_4_set = sinkValids[1] ? io_sinkB_bits_set : io_sinkA_bits_set; // @[ParallelMux.scala 90:77]
  wire [21:0] _chnl_task_s1_bits_T_4_tag = sinkValids[1] ? io_sinkB_bits_tag : io_sinkA_bits_tag; // @[ParallelMux.scala 90:77]
  wire [2:0] _chnl_task_s1_bits_T_4_opcode = sinkValids[1] ? io_sinkB_bits_opcode : io_sinkA_bits_opcode; // @[ParallelMux.scala 90:77]
  wire [7:0] _chnl_task_s1_bits_T_4_mshrId = sinkValids[1] ? io_sinkB_bits_mshrId : io_sinkA_bits_mshrId; // @[ParallelMux.scala 90:77]
  wire [3:0] _chnl_task_s1_bits_T_4_reqSource = sinkValids[1] ? io_sinkB_bits_reqSource : io_sinkA_bits_reqSource; // @[ParallelMux.scala 90:77]
  wire [2:0] chnl_task_s1_bits_channel = sinkValids[0] ? io_sinkC_bits_channel : _chnl_task_s1_bits_T_4_channel; // @[ParallelMux.scala 90:77]
  wire [6:0] chnl_task_s1_bits_set = sinkValids[0] ? io_sinkC_bits_set : _chnl_task_s1_bits_T_4_set; // @[ParallelMux.scala 90:77]
  wire [21:0] chnl_task_s1_bits_tag = sinkValids[0] ? io_sinkC_bits_tag : _chnl_task_s1_bits_T_4_tag; // @[ParallelMux.scala 90:77]
  wire [2:0] chnl_task_s1_bits_opcode = sinkValids[0] ? io_sinkC_bits_opcode : _chnl_task_s1_bits_T_4_opcode; // @[ParallelMux.scala 90:77]
  wire [7:0] chnl_task_s1_bits_mshrId = sinkValids[0] ? io_sinkC_bits_mshrId : _chnl_task_s1_bits_T_4_mshrId; // @[ParallelMux.scala 90:77]
  wire [3:0] chnl_task_s1_bits_reqSource = sinkValids[0] ? io_sinkC_bits_reqSource : _chnl_task_s1_bits_T_4_reqSource; // @[ParallelMux.scala 90:77]
  wire  task_s1_valid = mshr_task_s1_valid ? mshr_task_s1_valid : chnl_task_s1_valid; // @[RequestArb.scala 128:20]
  wire  _io_s1Entrance_valid_T = mshr_task_s1_valid & mshr_task_s1_bits_metaWen; // @[RequestArb.scala 145:45]
  wire  _io_s1Entrance_valid_T_1 = io_sinkC_ready & io_sinkC_valid; // @[Decoupled.scala 50:35]
  wire  _io_s1Entrance_valid_T_3 = io_sinkB_ready & io_sinkB_valid; // @[Decoupled.scala 50:35]
  wire [6:0] _io_s1Entrance_bits_set_T_2 = _io_s1Entrance_valid_T_1 ? io_sinkC_bits_set : io_sinkB_bits_set; // @[RequestArb.scala 149:8]
  reg  task_s2_valid; // @[RequestArb.scala 153:24]
  reg [2:0] task_s2_bits_channel; // @[RequestArb.scala 153:24]
  reg [6:0] task_s2_bits_set; // @[RequestArb.scala 153:24]
  reg [21:0] task_s2_bits_tag; // @[RequestArb.scala 153:24]
  reg [5:0] task_s2_bits_off; // @[RequestArb.scala 153:24]
  reg [2:0] task_s2_bits_opcode; // @[RequestArb.scala 153:24]
  reg [2:0] task_s2_bits_param; // @[RequestArb.scala 153:24]
  reg [2:0] task_s2_bits_size; // @[RequestArb.scala 153:24]
  reg [4:0] task_s2_bits_sourceId; // @[RequestArb.scala 153:24]
  reg [1:0] task_s2_bits_bufIdx; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_needProbeAckData; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_mshrTask; // @[RequestArb.scala 153:24]
  reg [7:0] task_s2_bits_mshrId; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_useProbeData; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_dirty; // @[RequestArb.scala 153:24]
  reg [2:0] task_s2_bits_way; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_meta_dirty; // @[RequestArb.scala 153:24]
  reg [1:0] task_s2_bits_meta_state; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_meta_clients; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_meta_accessed; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_metaWen; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_tagWen; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_dsWen; // @[RequestArb.scala 153:24]
  reg [7:0] task_s2_bits_wayMask; // @[RequestArb.scala 153:24]
  reg  task_s2_bits_replTask; // @[RequestArb.scala 153:24]
  reg [3:0] task_s2_bits_reqSource; // @[RequestArb.scala 153:24]
  wire  _task_s2_valid_T_1 = task_s1_valid & _T_2; // @[RequestArb.scala 154:34]
  wire  mshrTask_s2 = task_s2_valid & task_s2_bits_mshrTask; // @[RequestArb.scala 160:35]
  wire  _mshrTask_s2_a_upwards_T_2 = task_s2_bits_opcode == 3'h5; // @[RequestArb.scala 162:26]
  wire  _mshrTask_s2_a_upwards_T_5 = task_s2_bits_opcode == 3'h1; // @[RequestArb.scala 163:27]
  wire  _mshrTask_s2_a_upwards_T_6 = task_s2_bits_opcode == 3'h5 | task_s2_bits_opcode == 3'h4 |
    _mshrTask_s2_a_upwards_T_5; // @[RequestArb.scala 162:73]
  wire  _mshrTask_s2_a_upwards_T_9 = _mshrTask_s2_a_upwards_T_6 | task_s2_bits_opcode == 3'h2 & task_s2_bits_dsWen; // @[RequestArb.scala 163:45]
  wire  mshrTask_s2_a_upwards = task_s2_bits_channel[0] & _mshrTask_s2_a_upwards_T_9; // @[RequestArb.scala 161:50]
  wire  _io_refillBufRead_s2_valid_T_8 = task_s2_bits_opcode[2:1] == 2'h3 & task_s2_bits_replTask; // @[RequestArb.scala 169:49]
  wire  _io_refillBufRead_s2_valid_T_9 = task_s2_bits_channel[1] & task_s2_bits_opcode[2:1] == 2'h2 &
    task_s2_bits_replTask | _io_refillBufRead_s2_valid_T_8; // @[RequestArb.scala 168:97]
  wire  _io_refillBufRead_s2_valid_T_11 = mshrTask_s2_a_upwards & ~task_s2_bits_useProbeData; // @[RequestArb.scala 170:27]
  wire  _io_refillBufRead_s2_valid_T_12 = _io_refillBufRead_s2_valid_T_9 | _io_refillBufRead_s2_valid_T_11; // @[RequestArb.scala 169:74]
  wire  _io_releaseBufRead_s2_valid_T_4 = task_s2_bits_channel[1] & _mshrTask_s2_a_upwards_T_2; // @[RequestArb.scala 177:24]
  wire  _io_releaseBufRead_s2_valid_T_5 = task_s2_bits_opcode == 3'h7 | _io_releaseBufRead_s2_valid_T_4; // @[RequestArb.scala 176:41]
  wire  _io_releaseBufRead_s2_valid_T_6 = mshrTask_s2_a_upwards & task_s2_bits_useProbeData; // @[RequestArb.scala 178:27]
  wire  _io_releaseBufRead_s2_valid_T_7 = _io_releaseBufRead_s2_valid_T_5 | _io_releaseBufRead_s2_valid_T_6; // @[RequestArb.scala 177:64]
  assign io_sinkA_ready = sink_ready_basic & _sinkValids_T_4 & ~sinkValids[1] & ~sinkValids[0]; // @[RequestArb.scala 118:68]
  assign io_s1Entrance_valid = mshr_task_s1_valid & mshr_task_s1_bits_metaWen | _io_s1Entrance_valid_T_1 |
    _io_s1Entrance_valid_T_3; // @[RequestArb.scala 145:91]
  assign io_s1Entrance_bits_set = _io_s1Entrance_valid_T ? mshr_task_s1_bits_set : _io_s1Entrance_bits_set_T_2; // @[RequestArb.scala 146:33]
  assign io_sinkB_ready = sink_ready_basic & _sinkValids_T_2 & _io_sinkA_ready_T_6; // @[RequestArb.scala 119:50]
  assign io_sinkC_ready = sink_ready_basic & _sinkValids_T; // @[RequestArb.scala 120:38]
  assign io_mshrTask_ready = ~io_fromGrantBuffer_blockMSHRReqEntrance & ~s1_needs_replRead; // @[RequestArb.scala 90:65]
  assign io_dirRead_s1_valid = chnl_task_s1_valid & _sink_ready_basic_T_1 | s1_needs_replRead & ~
    io_fromMainPipe_blockG_s1; // @[RequestArb.scala 134:68]
  assign io_dirRead_s1_bits_tag = mshr_task_s1_valid ? mshr_task_s1_bits_tag : chnl_task_s1_bits_tag; // @[RequestArb.scala 128:20]
  assign io_dirRead_s1_bits_set = mshr_task_s1_valid ? mshr_task_s1_bits_set : chnl_task_s1_bits_set; // @[RequestArb.scala 128:20]
  assign io_dirRead_s1_bits_wayMask = 8'hff; // @[Bitwise.scala 74:12]
  assign io_dirRead_s1_bits_replacerInfo_channel = mshr_task_s1_valid ? mshr_task_s1_bits_channel :
    chnl_task_s1_bits_channel; // @[RequestArb.scala 128:20]
  assign io_dirRead_s1_bits_replacerInfo_opcode = mshr_task_s1_valid ? mshr_task_s1_bits_opcode :
    chnl_task_s1_bits_opcode; // @[RequestArb.scala 128:20]
  assign io_dirRead_s1_bits_replacerInfo_reqSource = mshr_task_s1_valid ? mshr_task_s1_bits_reqSource :
    chnl_task_s1_bits_reqSource; // @[RequestArb.scala 128:20]
  assign io_dirRead_s1_bits_refill = mshr_task_s1_valid & mshr_task_s1_bits_channel[0] & mshr_task_s1_bits_replTask &
    _s1_needs_replRead_T_10; // @[RequestArb.scala 81:103]
  assign io_dirRead_s1_bits_mshrId = mshr_task_s1_valid ? mshr_task_s1_bits_mshrId : chnl_task_s1_bits_mshrId; // @[RequestArb.scala 128:20]
  assign io_taskToPipe_s2_valid = task_s2_valid; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_channel = task_s2_bits_channel; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_set = task_s2_bits_set; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_tag = task_s2_bits_tag; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_off = task_s2_bits_off; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_opcode = task_s2_bits_opcode; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_param = task_s2_bits_param; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_size = task_s2_bits_size; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_sourceId = task_s2_bits_sourceId; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_bufIdx = task_s2_bits_bufIdx; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_needProbeAckData = task_s2_bits_needProbeAckData; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_mshrTask = task_s2_bits_mshrTask; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_mshrId = task_s2_bits_mshrId; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_useProbeData = task_s2_bits_useProbeData; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_dirty = task_s2_bits_dirty; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_way = task_s2_bits_way; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_meta_dirty = task_s2_bits_meta_dirty; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_meta_state = task_s2_bits_meta_state; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_meta_clients = task_s2_bits_meta_clients; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_meta_accessed = task_s2_bits_meta_accessed; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_metaWen = task_s2_bits_metaWen; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_tagWen = task_s2_bits_tagWen; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_dsWen = task_s2_bits_dsWen; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_wayMask = task_s2_bits_wayMask; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_replTask = task_s2_bits_replTask; // @[RequestArb.scala 157:20]
  assign io_taskToPipe_s2_bits_reqSource = task_s2_bits_reqSource; // @[RequestArb.scala 157:20]
  assign io_taskInfo_s1_valid = mshr_task_s1_valid; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_channel = mshr_task_s1_bits_channel; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_set = mshr_task_s1_bits_set; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_tag = mshr_task_s1_bits_tag; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_off = mshr_task_s1_bits_off; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_opcode = mshr_task_s1_bits_opcode; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_param = mshr_task_s1_bits_param; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_size = mshr_task_s1_bits_size; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_sourceId = mshr_task_s1_bits_sourceId; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_bufIdx = mshr_task_s1_bits_bufIdx; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_needProbeAckData = mshr_task_s1_bits_needProbeAckData; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_mshrTask = mshr_task_s1_bits_mshrTask; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_mshrId = mshr_task_s1_bits_mshrId; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_useProbeData = mshr_task_s1_bits_useProbeData; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_dirty = mshr_task_s1_bits_dirty; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_way = mshr_task_s1_bits_way; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_meta_dirty = mshr_task_s1_bits_meta_dirty; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_meta_state = mshr_task_s1_bits_meta_state; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_meta_clients = mshr_task_s1_bits_meta_clients; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_meta_accessed = mshr_task_s1_bits_meta_accessed; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_metaWen = mshr_task_s1_bits_metaWen; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_tagWen = mshr_task_s1_bits_tagWen; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_dsWen = mshr_task_s1_bits_dsWen; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_wayMask = mshr_task_s1_bits_wayMask; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_replTask = mshr_task_s1_bits_replTask; // @[RequestArb.scala 130:18]
  assign io_taskInfo_s1_bits_reqSource = mshr_task_s1_bits_reqSource; // @[RequestArb.scala 130:18]
  assign io_refillBufRead_s2_valid = mshrTask_s2 & _io_refillBufRead_s2_valid_T_12; // @[RequestArb.scala 167:44]
  assign io_refillBufRead_s2_id = task_s2_bits_mshrId; // @[RequestArb.scala 171:26]
  assign io_releaseBufRead_s2_valid = mshrTask_s2 & _io_releaseBufRead_s2_valid_T_7; // @[RequestArb.scala 175:45]
  assign io_releaseBufRead_s2_id = task_s2_bits_mshrId; // @[RequestArb.scala 179:27]
  assign io_status_s1_tags_0 = io_sinkC_bits_tag; // @[RequestArb.scala 187:{31,31}]
  assign io_status_s1_tags_1 = io_sinkB_bits_tag; // @[RequestArb.scala 187:{31,31}]
  assign io_status_s1_tags_2 = io_ATag; // @[RequestArb.scala 187:{31,31}]
  assign io_status_s1_tags_3 = mshr_task_s1_bits_tag; // @[RequestArb.scala 187:{31,31}]
  assign io_status_s1_sets_0 = io_sinkC_bits_set; // @[RequestArb.scala 186:{31,31}]
  assign io_status_s1_sets_1 = io_sinkB_bits_set; // @[RequestArb.scala 186:{31,31}]
  assign io_status_s1_sets_2 = io_ASet; // @[RequestArb.scala 186:{31,31}]
  assign io_status_s1_sets_3 = mshr_task_s1_bits_set; // @[RequestArb.scala 186:{31,31}]
  assign io_status_vec_0_valid = mshr_task_s1_valid ? mshr_task_s1_valid : chnl_task_s1_valid; // @[RequestArb.scala 128:20]
  assign io_status_vec_0_bits_channel = mshr_task_s1_valid ? mshr_task_s1_bits_channel : chnl_task_s1_bits_channel; // @[RequestArb.scala 128:20]
  assign io_status_vec_1_valid = task_s2_valid; // @[RequestArb.scala 191:20]
  assign io_status_vec_1_bits_channel = task_s2_bits_channel; // @[RequestArb.scala 192:27]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 74:26]
      resetFinish <= 1'h0; // @[RequestArb.scala 75:17]
    end else begin
      resetFinish <= resetIdx == 7'h0 | resetFinish; // @[RequestArb.scala 68:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 71:22]
      resetIdx <= 7'h7f; // @[RequestArb.scala 72:14]
    end else if (~resetFinish) begin // @[RequestArb.scala 69:25]
      resetIdx <= _resetIdx_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 98:44]
      mshr_task_s1_valid <= 1'h0;
    end else begin
      mshr_task_s1_valid <= mshr_task_s0_valid | mshr_replRead_stall;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_channel <= 3'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_channel <= io_mshrTask_bits_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_set <= 7'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_set <= io_mshrTask_bits_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_tag <= 22'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_tag <= io_mshrTask_bits_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_off <= 6'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_off <= io_mshrTask_bits_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_opcode <= 3'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_opcode <= io_mshrTask_bits_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_param <= 3'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_param <= io_mshrTask_bits_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_size <= 3'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_size <= io_mshrTask_bits_size;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_sourceId <= 5'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_sourceId <= io_mshrTask_bits_sourceId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_bufIdx <= 2'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_bufIdx <= io_mshrTask_bits_bufIdx;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_needProbeAckData <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_needProbeAckData <= io_mshrTask_bits_needProbeAckData;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_mshrTask <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_mshrTask <= io_mshrTask_bits_mshrTask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_mshrId <= 8'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_mshrId <= io_mshrTask_bits_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_useProbeData <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_useProbeData <= io_mshrTask_bits_useProbeData;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_dirty <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_dirty <= io_mshrTask_bits_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_way <= 3'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_way <= io_mshrTask_bits_way;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_meta_dirty <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_meta_dirty <= io_mshrTask_bits_meta_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_meta_state <= 2'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_meta_state <= io_mshrTask_bits_meta_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_meta_clients <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_meta_clients <= io_mshrTask_bits_meta_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_meta_accessed <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_meta_accessed <= io_mshrTask_bits_meta_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_metaWen <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_metaWen <= io_mshrTask_bits_metaWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_tagWen <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_tagWen <= io_mshrTask_bits_tagWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_dsWen <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_dsWen <= io_mshrTask_bits_dsWen;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_wayMask <= 8'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_wayMask <= io_mshrTask_bits_wayMask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_replTask <= 1'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_replTask <= io_mshrTask_bits_replTask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 99:52]
      mshr_task_s1_bits_reqSource <= 4'h0; // @[RequestArb.scala 100:23]
    end else if (mshr_task_s0_valid & ~mshr_replRead_stall) begin // @[RequestArb.scala 79:29]
      mshr_task_s1_bits_reqSource <= io_mshrTask_bits_reqSource;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 154:34]
      task_s2_valid <= 1'h0;
    end else begin
      task_s2_valid <= task_s1_valid & _T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_channel <= 3'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_channel <= mshr_task_s1_bits_channel;
      end else if (sinkValids[0]) begin
        task_s2_bits_channel <= io_sinkC_bits_channel;
      end else if (sinkValids[1]) begin
        task_s2_bits_channel <= io_sinkB_bits_channel;
      end else begin
        task_s2_bits_channel <= io_sinkA_bits_channel;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_set <= 7'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_set <= mshr_task_s1_bits_set;
      end else if (sinkValids[0]) begin
        task_s2_bits_set <= io_sinkC_bits_set;
      end else if (sinkValids[1]) begin
        task_s2_bits_set <= io_sinkB_bits_set;
      end else begin
        task_s2_bits_set <= io_sinkA_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_tag <= 22'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_tag <= mshr_task_s1_bits_tag;
      end else if (sinkValids[0]) begin
        task_s2_bits_tag <= io_sinkC_bits_tag;
      end else if (sinkValids[1]) begin
        task_s2_bits_tag <= io_sinkB_bits_tag;
      end else begin
        task_s2_bits_tag <= io_sinkA_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_off <= 6'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_off <= mshr_task_s1_bits_off;
      end else if (sinkValids[0]) begin
        task_s2_bits_off <= io_sinkC_bits_off;
      end else if (sinkValids[1]) begin
        task_s2_bits_off <= io_sinkB_bits_off;
      end else begin
        task_s2_bits_off <= io_sinkA_bits_off;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_opcode <= 3'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_opcode <= mshr_task_s1_bits_opcode;
      end else if (sinkValids[0]) begin
        task_s2_bits_opcode <= io_sinkC_bits_opcode;
      end else if (sinkValids[1]) begin
        task_s2_bits_opcode <= io_sinkB_bits_opcode;
      end else begin
        task_s2_bits_opcode <= io_sinkA_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_param <= 3'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_param <= mshr_task_s1_bits_param;
      end else if (sinkValids[0]) begin
        task_s2_bits_param <= io_sinkC_bits_param;
      end else if (sinkValids[1]) begin
        task_s2_bits_param <= io_sinkB_bits_param;
      end else begin
        task_s2_bits_param <= io_sinkA_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_size <= 3'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_size <= mshr_task_s1_bits_size;
      end else if (sinkValids[0]) begin
        task_s2_bits_size <= io_sinkC_bits_size;
      end else if (sinkValids[1]) begin
        task_s2_bits_size <= io_sinkB_bits_size;
      end else begin
        task_s2_bits_size <= io_sinkA_bits_size;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_sourceId <= 5'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_sourceId <= mshr_task_s1_bits_sourceId;
      end else if (sinkValids[0]) begin
        task_s2_bits_sourceId <= io_sinkC_bits_sourceId;
      end else if (sinkValids[1]) begin
        task_s2_bits_sourceId <= io_sinkB_bits_sourceId;
      end else begin
        task_s2_bits_sourceId <= io_sinkA_bits_sourceId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_bufIdx <= 2'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_bufIdx <= mshr_task_s1_bits_bufIdx;
      end else if (sinkValids[0]) begin
        task_s2_bits_bufIdx <= io_sinkC_bits_bufIdx;
      end else if (sinkValids[1]) begin
        task_s2_bits_bufIdx <= io_sinkB_bits_bufIdx;
      end else begin
        task_s2_bits_bufIdx <= io_sinkA_bits_bufIdx;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_needProbeAckData <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_needProbeAckData <= mshr_task_s1_bits_needProbeAckData;
      end else if (sinkValids[0]) begin
        task_s2_bits_needProbeAckData <= io_sinkC_bits_needProbeAckData;
      end else if (sinkValids[1]) begin
        task_s2_bits_needProbeAckData <= io_sinkB_bits_needProbeAckData;
      end else begin
        task_s2_bits_needProbeAckData <= io_sinkA_bits_needProbeAckData;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_mshrTask <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_mshrTask <= mshr_task_s1_bits_mshrTask;
      end else if (sinkValids[0]) begin
        task_s2_bits_mshrTask <= io_sinkC_bits_mshrTask;
      end else if (sinkValids[1]) begin
        task_s2_bits_mshrTask <= io_sinkB_bits_mshrTask;
      end else begin
        task_s2_bits_mshrTask <= io_sinkA_bits_mshrTask;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_mshrId <= 8'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_mshrId <= mshr_task_s1_bits_mshrId;
      end else if (sinkValids[0]) begin
        task_s2_bits_mshrId <= io_sinkC_bits_mshrId;
      end else if (sinkValids[1]) begin
        task_s2_bits_mshrId <= io_sinkB_bits_mshrId;
      end else begin
        task_s2_bits_mshrId <= io_sinkA_bits_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_useProbeData <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_useProbeData <= mshr_task_s1_bits_useProbeData;
      end else if (sinkValids[0]) begin
        task_s2_bits_useProbeData <= io_sinkC_bits_useProbeData;
      end else if (sinkValids[1]) begin
        task_s2_bits_useProbeData <= io_sinkB_bits_useProbeData;
      end else begin
        task_s2_bits_useProbeData <= io_sinkA_bits_useProbeData;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_dirty <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_dirty <= mshr_task_s1_bits_dirty;
      end else if (sinkValids[0]) begin
        task_s2_bits_dirty <= io_sinkC_bits_dirty;
      end else if (sinkValids[1]) begin
        task_s2_bits_dirty <= io_sinkB_bits_dirty;
      end else begin
        task_s2_bits_dirty <= io_sinkA_bits_dirty;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_way <= 3'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_way <= mshr_task_s1_bits_way;
      end else if (sinkValids[0]) begin
        task_s2_bits_way <= io_sinkC_bits_way;
      end else if (sinkValids[1]) begin
        task_s2_bits_way <= io_sinkB_bits_way;
      end else begin
        task_s2_bits_way <= io_sinkA_bits_way;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_meta_dirty <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_meta_dirty <= mshr_task_s1_bits_meta_dirty;
      end else if (sinkValids[0]) begin
        task_s2_bits_meta_dirty <= io_sinkC_bits_meta_dirty;
      end else if (sinkValids[1]) begin
        task_s2_bits_meta_dirty <= io_sinkB_bits_meta_dirty;
      end else begin
        task_s2_bits_meta_dirty <= io_sinkA_bits_meta_dirty;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_meta_state <= 2'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_meta_state <= mshr_task_s1_bits_meta_state;
      end else if (sinkValids[0]) begin
        task_s2_bits_meta_state <= io_sinkC_bits_meta_state;
      end else if (sinkValids[1]) begin
        task_s2_bits_meta_state <= io_sinkB_bits_meta_state;
      end else begin
        task_s2_bits_meta_state <= io_sinkA_bits_meta_state;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_meta_clients <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_meta_clients <= mshr_task_s1_bits_meta_clients;
      end else if (sinkValids[0]) begin
        task_s2_bits_meta_clients <= io_sinkC_bits_meta_clients;
      end else if (sinkValids[1]) begin
        task_s2_bits_meta_clients <= io_sinkB_bits_meta_clients;
      end else begin
        task_s2_bits_meta_clients <= io_sinkA_bits_meta_clients;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_meta_accessed <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_meta_accessed <= mshr_task_s1_bits_meta_accessed;
      end else if (sinkValids[0]) begin
        task_s2_bits_meta_accessed <= io_sinkC_bits_meta_accessed;
      end else if (sinkValids[1]) begin
        task_s2_bits_meta_accessed <= io_sinkB_bits_meta_accessed;
      end else begin
        task_s2_bits_meta_accessed <= io_sinkA_bits_meta_accessed;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_metaWen <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_metaWen <= mshr_task_s1_bits_metaWen;
      end else if (sinkValids[0]) begin
        task_s2_bits_metaWen <= io_sinkC_bits_metaWen;
      end else if (sinkValids[1]) begin
        task_s2_bits_metaWen <= io_sinkB_bits_metaWen;
      end else begin
        task_s2_bits_metaWen <= io_sinkA_bits_metaWen;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_tagWen <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_tagWen <= mshr_task_s1_bits_tagWen;
      end else if (sinkValids[0]) begin
        task_s2_bits_tagWen <= io_sinkC_bits_tagWen;
      end else if (sinkValids[1]) begin
        task_s2_bits_tagWen <= io_sinkB_bits_tagWen;
      end else begin
        task_s2_bits_tagWen <= io_sinkA_bits_tagWen;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_dsWen <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_dsWen <= mshr_task_s1_bits_dsWen;
      end else if (sinkValids[0]) begin
        task_s2_bits_dsWen <= io_sinkC_bits_dsWen;
      end else if (sinkValids[1]) begin
        task_s2_bits_dsWen <= io_sinkB_bits_dsWen;
      end else begin
        task_s2_bits_dsWen <= io_sinkA_bits_dsWen;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_wayMask <= 8'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_wayMask <= mshr_task_s1_bits_wayMask;
      end else if (sinkValids[0]) begin
        task_s2_bits_wayMask <= io_sinkC_bits_wayMask;
      end else if (sinkValids[1]) begin
        task_s2_bits_wayMask <= io_sinkB_bits_wayMask;
      end else begin
        task_s2_bits_wayMask <= io_sinkA_bits_wayMask;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_replTask <= 1'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_replTask <= mshr_task_s1_bits_replTask;
      end else if (sinkValids[0]) begin
        task_s2_bits_replTask <= io_sinkC_bits_replTask;
      end else if (sinkValids[1]) begin
        task_s2_bits_replTask <= io_sinkB_bits_replTask;
      end else begin
        task_s2_bits_replTask <= io_sinkA_bits_replTask;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestArb.scala 155:47]
      task_s2_bits_reqSource <= 4'h0; // @[RequestArb.scala 128:20 ParallelMux.scala 90:{77,77}]
    end else if (_task_s2_valid_T_1) begin // @[RequestArb.scala 153:24]
      if (mshr_task_s1_valid) begin
        task_s2_bits_reqSource <= mshr_task_s1_bits_reqSource;
      end else if (sinkValids[0]) begin
        task_s2_bits_reqSource <= io_sinkC_bits_reqSource;
      end else if (sinkValids[1]) begin
        task_s2_bits_reqSource <= io_sinkB_bits_reqSource;
      end else begin
        task_s2_bits_reqSource <= io_sinkA_bits_reqSource;
      end
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
  mshr_task_s1_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mshr_task_s1_bits_channel = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  mshr_task_s1_bits_set = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  mshr_task_s1_bits_tag = _RAND_5[21:0];
  _RAND_6 = {1{`RANDOM}};
  mshr_task_s1_bits_off = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  mshr_task_s1_bits_opcode = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  mshr_task_s1_bits_param = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  mshr_task_s1_bits_size = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  mshr_task_s1_bits_sourceId = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  mshr_task_s1_bits_bufIdx = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  mshr_task_s1_bits_needProbeAckData = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  mshr_task_s1_bits_mshrTask = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  mshr_task_s1_bits_mshrId = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  mshr_task_s1_bits_useProbeData = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mshr_task_s1_bits_dirty = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  mshr_task_s1_bits_way = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  mshr_task_s1_bits_meta_dirty = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  mshr_task_s1_bits_meta_state = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  mshr_task_s1_bits_meta_clients = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  mshr_task_s1_bits_meta_accessed = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  mshr_task_s1_bits_metaWen = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mshr_task_s1_bits_tagWen = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mshr_task_s1_bits_dsWen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mshr_task_s1_bits_wayMask = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  mshr_task_s1_bits_replTask = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mshr_task_s1_bits_reqSource = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  task_s2_valid = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  task_s2_bits_channel = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  task_s2_bits_set = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  task_s2_bits_tag = _RAND_31[21:0];
  _RAND_32 = {1{`RANDOM}};
  task_s2_bits_off = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  task_s2_bits_opcode = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  task_s2_bits_param = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  task_s2_bits_size = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  task_s2_bits_sourceId = _RAND_36[4:0];
  _RAND_37 = {1{`RANDOM}};
  task_s2_bits_bufIdx = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  task_s2_bits_needProbeAckData = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  task_s2_bits_mshrTask = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  task_s2_bits_mshrId = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  task_s2_bits_useProbeData = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  task_s2_bits_dirty = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  task_s2_bits_way = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  task_s2_bits_meta_dirty = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  task_s2_bits_meta_state = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  task_s2_bits_meta_clients = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  task_s2_bits_meta_accessed = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  task_s2_bits_metaWen = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  task_s2_bits_tagWen = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  task_s2_bits_dsWen = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  task_s2_bits_wayMask = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  task_s2_bits_replTask = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  task_s2_bits_reqSource = _RAND_53[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetFinish = 1'h0;
  end
  if (reset) begin
    resetIdx = 7'h7f;
  end
  if (reset) begin
    mshr_task_s1_valid = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_channel = 3'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_set = 7'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_tag = 22'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_off = 6'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_opcode = 3'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_param = 3'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_size = 3'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_sourceId = 5'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_bufIdx = 2'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_needProbeAckData = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_mshrTask = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_mshrId = 8'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_useProbeData = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_dirty = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_way = 3'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_meta_dirty = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_meta_state = 2'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_meta_clients = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_meta_accessed = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_metaWen = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_tagWen = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_dsWen = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_wayMask = 8'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_replTask = 1'h0;
  end
  if (reset) begin
    mshr_task_s1_bits_reqSource = 4'h0;
  end
  if (reset) begin
    task_s2_valid = 1'h0;
  end
  if (reset) begin
    task_s2_bits_channel = 3'h0;
  end
  if (reset) begin
    task_s2_bits_set = 7'h0;
  end
  if (reset) begin
    task_s2_bits_tag = 22'h0;
  end
  if (reset) begin
    task_s2_bits_off = 6'h0;
  end
  if (reset) begin
    task_s2_bits_opcode = 3'h0;
  end
  if (reset) begin
    task_s2_bits_param = 3'h0;
  end
  if (reset) begin
    task_s2_bits_size = 3'h0;
  end
  if (reset) begin
    task_s2_bits_sourceId = 5'h0;
  end
  if (reset) begin
    task_s2_bits_bufIdx = 2'h0;
  end
  if (reset) begin
    task_s2_bits_needProbeAckData = 1'h0;
  end
  if (reset) begin
    task_s2_bits_mshrTask = 1'h0;
  end
  if (reset) begin
    task_s2_bits_mshrId = 8'h0;
  end
  if (reset) begin
    task_s2_bits_useProbeData = 1'h0;
  end
  if (reset) begin
    task_s2_bits_dirty = 1'h0;
  end
  if (reset) begin
    task_s2_bits_way = 3'h0;
  end
  if (reset) begin
    task_s2_bits_meta_dirty = 1'h0;
  end
  if (reset) begin
    task_s2_bits_meta_state = 2'h0;
  end
  if (reset) begin
    task_s2_bits_meta_clients = 1'h0;
  end
  if (reset) begin
    task_s2_bits_meta_accessed = 1'h0;
  end
  if (reset) begin
    task_s2_bits_metaWen = 1'h0;
  end
  if (reset) begin
    task_s2_bits_tagWen = 1'h0;
  end
  if (reset) begin
    task_s2_bits_dsWen = 1'h0;
  end
  if (reset) begin
    task_s2_bits_wayMask = 8'h0;
  end
  if (reset) begin
    task_s2_bits_replTask = 1'h0;
  end
  if (reset) begin
    task_s2_bits_reqSource = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

