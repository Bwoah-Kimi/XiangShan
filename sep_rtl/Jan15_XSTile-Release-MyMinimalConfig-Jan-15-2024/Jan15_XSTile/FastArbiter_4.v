module FastArbiter_4(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [2:0]  io_in_0_bits_channel,
  input  [6:0]  io_in_0_bits_set,
  input  [21:0] io_in_0_bits_tag,
  input  [5:0]  io_in_0_bits_off,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [2:0]  io_in_0_bits_size,
  input  [4:0]  io_in_0_bits_sourceId,
  input  [7:0]  io_in_0_bits_mshrId,
  input         io_in_0_bits_useProbeData,
  input         io_in_0_bits_dirty,
  input  [2:0]  io_in_0_bits_way,
  input         io_in_0_bits_meta_dirty,
  input  [1:0]  io_in_0_bits_meta_state,
  input         io_in_0_bits_meta_clients,
  input         io_in_0_bits_meta_accessed,
  input         io_in_0_bits_metaWen,
  input         io_in_0_bits_tagWen,
  input         io_in_0_bits_dsWen,
  input  [7:0]  io_in_0_bits_wayMask,
  input         io_in_0_bits_replTask,
  input  [3:0]  io_in_0_bits_reqSource,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [2:0]  io_in_1_bits_channel,
  input  [6:0]  io_in_1_bits_set,
  input  [21:0] io_in_1_bits_tag,
  input  [5:0]  io_in_1_bits_off,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [2:0]  io_in_1_bits_size,
  input  [4:0]  io_in_1_bits_sourceId,
  input  [7:0]  io_in_1_bits_mshrId,
  input         io_in_1_bits_useProbeData,
  input         io_in_1_bits_dirty,
  input  [2:0]  io_in_1_bits_way,
  input         io_in_1_bits_meta_dirty,
  input  [1:0]  io_in_1_bits_meta_state,
  input         io_in_1_bits_meta_clients,
  input         io_in_1_bits_meta_accessed,
  input         io_in_1_bits_metaWen,
  input         io_in_1_bits_tagWen,
  input         io_in_1_bits_dsWen,
  input  [7:0]  io_in_1_bits_wayMask,
  input         io_in_1_bits_replTask,
  input  [3:0]  io_in_1_bits_reqSource,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [2:0]  io_in_2_bits_channel,
  input  [6:0]  io_in_2_bits_set,
  input  [21:0] io_in_2_bits_tag,
  input  [5:0]  io_in_2_bits_off,
  input  [2:0]  io_in_2_bits_opcode,
  input  [2:0]  io_in_2_bits_param,
  input  [2:0]  io_in_2_bits_size,
  input  [4:0]  io_in_2_bits_sourceId,
  input  [7:0]  io_in_2_bits_mshrId,
  input         io_in_2_bits_useProbeData,
  input         io_in_2_bits_dirty,
  input  [2:0]  io_in_2_bits_way,
  input         io_in_2_bits_meta_dirty,
  input  [1:0]  io_in_2_bits_meta_state,
  input         io_in_2_bits_meta_clients,
  input         io_in_2_bits_meta_accessed,
  input         io_in_2_bits_metaWen,
  input         io_in_2_bits_tagWen,
  input         io_in_2_bits_dsWen,
  input  [7:0]  io_in_2_bits_wayMask,
  input         io_in_2_bits_replTask,
  input  [3:0]  io_in_2_bits_reqSource,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [2:0]  io_in_3_bits_channel,
  input  [6:0]  io_in_3_bits_set,
  input  [21:0] io_in_3_bits_tag,
  input  [5:0]  io_in_3_bits_off,
  input  [2:0]  io_in_3_bits_opcode,
  input  [2:0]  io_in_3_bits_param,
  input  [2:0]  io_in_3_bits_size,
  input  [4:0]  io_in_3_bits_sourceId,
  input  [7:0]  io_in_3_bits_mshrId,
  input         io_in_3_bits_useProbeData,
  input         io_in_3_bits_dirty,
  input  [2:0]  io_in_3_bits_way,
  input         io_in_3_bits_meta_dirty,
  input  [1:0]  io_in_3_bits_meta_state,
  input         io_in_3_bits_meta_clients,
  input         io_in_3_bits_meta_accessed,
  input         io_in_3_bits_metaWen,
  input         io_in_3_bits_tagWen,
  input         io_in_3_bits_dsWen,
  input  [7:0]  io_in_3_bits_wayMask,
  input         io_in_3_bits_replTask,
  input  [3:0]  io_in_3_bits_reqSource,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [2:0]  io_in_4_bits_channel,
  input  [6:0]  io_in_4_bits_set,
  input  [21:0] io_in_4_bits_tag,
  input  [5:0]  io_in_4_bits_off,
  input  [2:0]  io_in_4_bits_opcode,
  input  [2:0]  io_in_4_bits_param,
  input  [2:0]  io_in_4_bits_size,
  input  [4:0]  io_in_4_bits_sourceId,
  input  [7:0]  io_in_4_bits_mshrId,
  input         io_in_4_bits_useProbeData,
  input         io_in_4_bits_dirty,
  input  [2:0]  io_in_4_bits_way,
  input         io_in_4_bits_meta_dirty,
  input  [1:0]  io_in_4_bits_meta_state,
  input         io_in_4_bits_meta_clients,
  input         io_in_4_bits_meta_accessed,
  input         io_in_4_bits_metaWen,
  input         io_in_4_bits_tagWen,
  input         io_in_4_bits_dsWen,
  input  [7:0]  io_in_4_bits_wayMask,
  input         io_in_4_bits_replTask,
  input  [3:0]  io_in_4_bits_reqSource,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [2:0]  io_in_5_bits_channel,
  input  [6:0]  io_in_5_bits_set,
  input  [21:0] io_in_5_bits_tag,
  input  [5:0]  io_in_5_bits_off,
  input  [2:0]  io_in_5_bits_opcode,
  input  [2:0]  io_in_5_bits_param,
  input  [2:0]  io_in_5_bits_size,
  input  [4:0]  io_in_5_bits_sourceId,
  input  [7:0]  io_in_5_bits_mshrId,
  input         io_in_5_bits_useProbeData,
  input         io_in_5_bits_dirty,
  input  [2:0]  io_in_5_bits_way,
  input         io_in_5_bits_meta_dirty,
  input  [1:0]  io_in_5_bits_meta_state,
  input         io_in_5_bits_meta_clients,
  input         io_in_5_bits_meta_accessed,
  input         io_in_5_bits_metaWen,
  input         io_in_5_bits_tagWen,
  input         io_in_5_bits_dsWen,
  input  [7:0]  io_in_5_bits_wayMask,
  input         io_in_5_bits_replTask,
  input  [3:0]  io_in_5_bits_reqSource,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [2:0]  io_in_6_bits_channel,
  input  [6:0]  io_in_6_bits_set,
  input  [21:0] io_in_6_bits_tag,
  input  [5:0]  io_in_6_bits_off,
  input  [2:0]  io_in_6_bits_opcode,
  input  [2:0]  io_in_6_bits_param,
  input  [2:0]  io_in_6_bits_size,
  input  [4:0]  io_in_6_bits_sourceId,
  input  [7:0]  io_in_6_bits_mshrId,
  input         io_in_6_bits_useProbeData,
  input         io_in_6_bits_dirty,
  input  [2:0]  io_in_6_bits_way,
  input         io_in_6_bits_meta_dirty,
  input  [1:0]  io_in_6_bits_meta_state,
  input         io_in_6_bits_meta_clients,
  input         io_in_6_bits_meta_accessed,
  input         io_in_6_bits_metaWen,
  input         io_in_6_bits_tagWen,
  input         io_in_6_bits_dsWen,
  input  [7:0]  io_in_6_bits_wayMask,
  input         io_in_6_bits_replTask,
  input  [3:0]  io_in_6_bits_reqSource,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [2:0]  io_in_7_bits_channel,
  input  [6:0]  io_in_7_bits_set,
  input  [21:0] io_in_7_bits_tag,
  input  [5:0]  io_in_7_bits_off,
  input  [2:0]  io_in_7_bits_opcode,
  input  [2:0]  io_in_7_bits_param,
  input  [2:0]  io_in_7_bits_size,
  input  [4:0]  io_in_7_bits_sourceId,
  input  [7:0]  io_in_7_bits_mshrId,
  input         io_in_7_bits_useProbeData,
  input         io_in_7_bits_dirty,
  input  [2:0]  io_in_7_bits_way,
  input         io_in_7_bits_meta_dirty,
  input  [1:0]  io_in_7_bits_meta_state,
  input         io_in_7_bits_meta_clients,
  input         io_in_7_bits_meta_accessed,
  input         io_in_7_bits_metaWen,
  input         io_in_7_bits_tagWen,
  input         io_in_7_bits_dsWen,
  input  [7:0]  io_in_7_bits_wayMask,
  input         io_in_7_bits_replTask,
  input  [3:0]  io_in_7_bits_reqSource,
  output        io_in_8_ready,
  input         io_in_8_valid,
  input  [2:0]  io_in_8_bits_channel,
  input  [6:0]  io_in_8_bits_set,
  input  [21:0] io_in_8_bits_tag,
  input  [5:0]  io_in_8_bits_off,
  input  [2:0]  io_in_8_bits_opcode,
  input  [2:0]  io_in_8_bits_param,
  input  [2:0]  io_in_8_bits_size,
  input  [4:0]  io_in_8_bits_sourceId,
  input  [7:0]  io_in_8_bits_mshrId,
  input         io_in_8_bits_useProbeData,
  input         io_in_8_bits_dirty,
  input  [2:0]  io_in_8_bits_way,
  input         io_in_8_bits_meta_dirty,
  input  [1:0]  io_in_8_bits_meta_state,
  input         io_in_8_bits_meta_clients,
  input         io_in_8_bits_meta_accessed,
  input         io_in_8_bits_metaWen,
  input         io_in_8_bits_tagWen,
  input         io_in_8_bits_dsWen,
  input  [7:0]  io_in_8_bits_wayMask,
  input         io_in_8_bits_replTask,
  input  [3:0]  io_in_8_bits_reqSource,
  output        io_in_9_ready,
  input         io_in_9_valid,
  input  [2:0]  io_in_9_bits_channel,
  input  [6:0]  io_in_9_bits_set,
  input  [21:0] io_in_9_bits_tag,
  input  [5:0]  io_in_9_bits_off,
  input  [2:0]  io_in_9_bits_opcode,
  input  [2:0]  io_in_9_bits_param,
  input  [2:0]  io_in_9_bits_size,
  input  [4:0]  io_in_9_bits_sourceId,
  input  [7:0]  io_in_9_bits_mshrId,
  input         io_in_9_bits_useProbeData,
  input         io_in_9_bits_dirty,
  input  [2:0]  io_in_9_bits_way,
  input         io_in_9_bits_meta_dirty,
  input  [1:0]  io_in_9_bits_meta_state,
  input         io_in_9_bits_meta_clients,
  input         io_in_9_bits_meta_accessed,
  input         io_in_9_bits_metaWen,
  input         io_in_9_bits_tagWen,
  input         io_in_9_bits_dsWen,
  input  [7:0]  io_in_9_bits_wayMask,
  input         io_in_9_bits_replTask,
  input  [3:0]  io_in_9_bits_reqSource,
  output        io_in_10_ready,
  input         io_in_10_valid,
  input  [2:0]  io_in_10_bits_channel,
  input  [6:0]  io_in_10_bits_set,
  input  [21:0] io_in_10_bits_tag,
  input  [5:0]  io_in_10_bits_off,
  input  [2:0]  io_in_10_bits_opcode,
  input  [2:0]  io_in_10_bits_param,
  input  [2:0]  io_in_10_bits_size,
  input  [4:0]  io_in_10_bits_sourceId,
  input  [7:0]  io_in_10_bits_mshrId,
  input         io_in_10_bits_useProbeData,
  input         io_in_10_bits_dirty,
  input  [2:0]  io_in_10_bits_way,
  input         io_in_10_bits_meta_dirty,
  input  [1:0]  io_in_10_bits_meta_state,
  input         io_in_10_bits_meta_clients,
  input         io_in_10_bits_meta_accessed,
  input         io_in_10_bits_metaWen,
  input         io_in_10_bits_tagWen,
  input         io_in_10_bits_dsWen,
  input  [7:0]  io_in_10_bits_wayMask,
  input         io_in_10_bits_replTask,
  input  [3:0]  io_in_10_bits_reqSource,
  output        io_in_11_ready,
  input         io_in_11_valid,
  input  [2:0]  io_in_11_bits_channel,
  input  [6:0]  io_in_11_bits_set,
  input  [21:0] io_in_11_bits_tag,
  input  [5:0]  io_in_11_bits_off,
  input  [2:0]  io_in_11_bits_opcode,
  input  [2:0]  io_in_11_bits_param,
  input  [2:0]  io_in_11_bits_size,
  input  [4:0]  io_in_11_bits_sourceId,
  input  [7:0]  io_in_11_bits_mshrId,
  input         io_in_11_bits_useProbeData,
  input         io_in_11_bits_dirty,
  input  [2:0]  io_in_11_bits_way,
  input         io_in_11_bits_meta_dirty,
  input  [1:0]  io_in_11_bits_meta_state,
  input         io_in_11_bits_meta_clients,
  input         io_in_11_bits_meta_accessed,
  input         io_in_11_bits_metaWen,
  input         io_in_11_bits_tagWen,
  input         io_in_11_bits_dsWen,
  input  [7:0]  io_in_11_bits_wayMask,
  input         io_in_11_bits_replTask,
  input  [3:0]  io_in_11_bits_reqSource,
  output        io_in_12_ready,
  input         io_in_12_valid,
  input  [2:0]  io_in_12_bits_channel,
  input  [6:0]  io_in_12_bits_set,
  input  [21:0] io_in_12_bits_tag,
  input  [5:0]  io_in_12_bits_off,
  input  [2:0]  io_in_12_bits_opcode,
  input  [2:0]  io_in_12_bits_param,
  input  [2:0]  io_in_12_bits_size,
  input  [4:0]  io_in_12_bits_sourceId,
  input  [7:0]  io_in_12_bits_mshrId,
  input         io_in_12_bits_useProbeData,
  input         io_in_12_bits_dirty,
  input  [2:0]  io_in_12_bits_way,
  input         io_in_12_bits_meta_dirty,
  input  [1:0]  io_in_12_bits_meta_state,
  input         io_in_12_bits_meta_clients,
  input         io_in_12_bits_meta_accessed,
  input         io_in_12_bits_metaWen,
  input         io_in_12_bits_tagWen,
  input         io_in_12_bits_dsWen,
  input  [7:0]  io_in_12_bits_wayMask,
  input         io_in_12_bits_replTask,
  input  [3:0]  io_in_12_bits_reqSource,
  output        io_in_13_ready,
  input         io_in_13_valid,
  input  [2:0]  io_in_13_bits_channel,
  input  [6:0]  io_in_13_bits_set,
  input  [21:0] io_in_13_bits_tag,
  input  [5:0]  io_in_13_bits_off,
  input  [2:0]  io_in_13_bits_opcode,
  input  [2:0]  io_in_13_bits_param,
  input  [2:0]  io_in_13_bits_size,
  input  [4:0]  io_in_13_bits_sourceId,
  input  [7:0]  io_in_13_bits_mshrId,
  input         io_in_13_bits_useProbeData,
  input         io_in_13_bits_dirty,
  input  [2:0]  io_in_13_bits_way,
  input         io_in_13_bits_meta_dirty,
  input  [1:0]  io_in_13_bits_meta_state,
  input         io_in_13_bits_meta_clients,
  input         io_in_13_bits_meta_accessed,
  input         io_in_13_bits_metaWen,
  input         io_in_13_bits_tagWen,
  input         io_in_13_bits_dsWen,
  input  [7:0]  io_in_13_bits_wayMask,
  input         io_in_13_bits_replTask,
  input  [3:0]  io_in_13_bits_reqSource,
  output        io_in_14_ready,
  input         io_in_14_valid,
  input  [2:0]  io_in_14_bits_channel,
  input  [6:0]  io_in_14_bits_set,
  input  [21:0] io_in_14_bits_tag,
  input  [5:0]  io_in_14_bits_off,
  input  [2:0]  io_in_14_bits_opcode,
  input  [2:0]  io_in_14_bits_param,
  input  [2:0]  io_in_14_bits_size,
  input  [4:0]  io_in_14_bits_sourceId,
  input  [7:0]  io_in_14_bits_mshrId,
  input         io_in_14_bits_useProbeData,
  input         io_in_14_bits_dirty,
  input  [2:0]  io_in_14_bits_way,
  input         io_in_14_bits_meta_dirty,
  input  [1:0]  io_in_14_bits_meta_state,
  input         io_in_14_bits_meta_clients,
  input         io_in_14_bits_meta_accessed,
  input         io_in_14_bits_metaWen,
  input         io_in_14_bits_tagWen,
  input         io_in_14_bits_dsWen,
  input  [7:0]  io_in_14_bits_wayMask,
  input         io_in_14_bits_replTask,
  input  [3:0]  io_in_14_bits_reqSource,
  output        io_in_15_ready,
  input         io_in_15_valid,
  input  [2:0]  io_in_15_bits_channel,
  input  [6:0]  io_in_15_bits_set,
  input  [21:0] io_in_15_bits_tag,
  input  [5:0]  io_in_15_bits_off,
  input  [2:0]  io_in_15_bits_opcode,
  input  [2:0]  io_in_15_bits_param,
  input  [2:0]  io_in_15_bits_size,
  input  [4:0]  io_in_15_bits_sourceId,
  input  [7:0]  io_in_15_bits_mshrId,
  input         io_in_15_bits_useProbeData,
  input         io_in_15_bits_dirty,
  input  [2:0]  io_in_15_bits_way,
  input         io_in_15_bits_meta_dirty,
  input  [1:0]  io_in_15_bits_meta_state,
  input         io_in_15_bits_meta_clients,
  input         io_in_15_bits_meta_accessed,
  input         io_in_15_bits_metaWen,
  input         io_in_15_bits_tagWen,
  input         io_in_15_bits_dsWen,
  input  [7:0]  io_in_15_bits_wayMask,
  input         io_in_15_bits_replTask,
  input  [3:0]  io_in_15_bits_reqSource,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [6:0]  io_out_bits_set,
  output [21:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [4:0]  io_out_bits_sourceId,
  output        io_out_bits_mshrTask,
  output [7:0]  io_out_bits_mshrId,
  output        io_out_bits_useProbeData,
  output        io_out_bits_dirty,
  output [2:0]  io_out_bits_way,
  output        io_out_bits_meta_dirty,
  output [1:0]  io_out_bits_meta_state,
  output        io_out_bits_meta_clients,
  output        io_out_bits_meta_accessed,
  output        io_out_bits_metaWen,
  output        io_out_bits_tagWen,
  output        io_out_bits_dsWen,
  output [7:0]  io_out_bits_wayMask,
  output        io_out_bits_replTask,
  output [3:0]  io_out_bits_reqSource
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] valids_lo = {io_in_7_valid,io_in_6_valid,io_in_5_valid,io_in_4_valid,io_in_3_valid,io_in_2_valid,
    io_in_1_valid,io_in_0_valid}; // @[FastArbiter.scala 36:50]
  wire [15:0] valids = {io_in_15_valid,io_in_14_valid,io_in_13_valid,io_in_12_valid,io_in_11_valid,io_in_10_valid,
    io_in_9_valid,io_in_8_valid,valids_lo}; // @[FastArbiter.scala 36:50]
  reg [15:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [15:0] pendingMask; // @[Reg.scala 28:20]
  wire [15:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 51:47]
  wire [1:0] rrSelOH_hi_hi_hi_6 = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [3:0] rrSelOH_hi_hi_10 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3]}; // @[Cat.scala 31:58]
  wire [7:0] rrSelOH_hi_12 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7]}; // @[Cat.scala 31:58]
  wire [6:0] rrSelOH_lo_11 = {_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12],_rrSelOH_T[13],
    _rrSelOH_T[14]}; // @[Cat.scala 31:58]
  wire [14:0] _rrSelOH_T_72 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],rrSelOH_lo_11}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_75 = _rrSelOH_T[15] & ~(|_rrSelOH_T_72); // @[FastArbiter.scala 28:24]
  wire [6:0] rrSelOH_hi_11 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6]}; // @[Cat.scala 31:58]
  wire [6:0] rrSelOH_lo_10 = {_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12],
    _rrSelOH_T[13]}; // @[Cat.scala 31:58]
  wire [13:0] _rrSelOH_T_68 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],rrSelOH_lo_10}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_71 = _rrSelOH_T[14] & ~(|_rrSelOH_T_68); // @[FastArbiter.scala 28:24]
  wire [5:0] rrSelOH_lo_9 = {_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12]}; // @[Cat.scala 31:58]
  wire [12:0] _rrSelOH_T_64 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],rrSelOH_lo_9}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_67 = _rrSelOH_T[13] & ~(|_rrSelOH_T_64); // @[FastArbiter.scala 28:24]
  wire [2:0] rrSelOH_hi_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_hi_9 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_lo_8 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11]}; // @[Cat.scala 31:58]
  wire [11:0] _rrSelOH_T_60 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_8}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_63 = _rrSelOH_T[12] & ~(|_rrSelOH_T_60); // @[FastArbiter.scala 28:24]
  wire [4:0] rrSelOH_lo_7 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10]}; // @[Cat.scala 31:58]
  wire [10:0] _rrSelOH_T_56 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_7}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_59 = _rrSelOH_T[11] & ~(|_rrSelOH_T_56); // @[FastArbiter.scala 28:24]
  wire [4:0] rrSelOH_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4]}; // @[Cat.scala 31:58]
  wire [9:0] _rrSelOH_T_52 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_55 = _rrSelOH_T[10] & ~(|_rrSelOH_T_52); // @[FastArbiter.scala 28:24]
  wire [8:0] _rrSelOH_T_48 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_51 = _rrSelOH_T[9] & ~(|_rrSelOH_T_48); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_47 = _rrSelOH_T[8] & ~(|rrSelOH_hi_12); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_43 = _rrSelOH_T[7] & ~(|rrSelOH_hi_11); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_39 = _rrSelOH_T[6] & ~(|rrSelOH_hi_9); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_35 = _rrSelOH_T[5] & ~(|rrSelOH_hi_7); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_31 = _rrSelOH_T[4] & ~(|rrSelOH_hi_hi_10); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_27 = _rrSelOH_T[3] & ~(|rrSelOH_hi_hi_7); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_23 = _rrSelOH_T[2] & ~(|rrSelOH_hi_hi_hi_6); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_19 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 28:24]
  wire [7:0] rrSelOH_lo_12 = {_rrSelOH_T_43,_rrSelOH_T_39,_rrSelOH_T_35,_rrSelOH_T_31,_rrSelOH_T_27,_rrSelOH_T_23,
    _rrSelOH_T_19,_rrSelOH_T[0]}; // @[FastArbiter.scala 51:80]
  wire [15:0] rrSelOH = {_rrSelOH_T_75,_rrSelOH_T_71,_rrSelOH_T_67,_rrSelOH_T_63,_rrSelOH_T_59,_rrSelOH_T_55,
    _rrSelOH_T_51,_rrSelOH_T_47,rrSelOH_lo_12}; // @[FastArbiter.scala 51:80]
  wire [15:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 53:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 53:39]
  wire [1:0] firstOneOH_hi_hi_hi_6 = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [3:0] firstOneOH_hi_hi_10 = {valids[0],valids[1],valids[2],valids[3]}; // @[Cat.scala 31:58]
  wire [7:0] firstOneOH_hi_12 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7]}; // @[Cat.scala 31:58]
  wire [6:0] firstOneOH_lo_11 = {valids[8],valids[9],valids[10],valids[11],valids[12],valids[13],valids[14]}; // @[Cat.scala 31:58]
  wire [14:0] _firstOneOH_T_71 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],
    firstOneOH_lo_11}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_74 = valids[15] & ~(|_firstOneOH_T_71); // @[FastArbiter.scala 28:24]
  wire [6:0] firstOneOH_hi_11 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6]}; // @[Cat.scala 31:58]
  wire [6:0] firstOneOH_lo_10 = {valids[7],valids[8],valids[9],valids[10],valids[11],valids[12],valids[13]}; // @[Cat.scala 31:58]
  wire [13:0] _firstOneOH_T_67 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],firstOneOH_lo_10
    }; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_70 = valids[14] & ~(|_firstOneOH_T_67); // @[FastArbiter.scala 28:24]
  wire [5:0] firstOneOH_lo_9 = {valids[7],valids[8],valids[9],valids[10],valids[11],valids[12]}; // @[Cat.scala 31:58]
  wire [12:0] _firstOneOH_T_63 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],firstOneOH_lo_9}
    ; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_66 = valids[13] & ~(|_firstOneOH_T_63); // @[FastArbiter.scala 28:24]
  wire [2:0] firstOneOH_hi_hi_7 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_hi_9 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_lo_8 = {valids[6],valids[7],valids[8],valids[9],valids[10],valids[11]}; // @[Cat.scala 31:58]
  wire [11:0] _firstOneOH_T_59 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_8}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_62 = valids[12] & ~(|_firstOneOH_T_59); // @[FastArbiter.scala 28:24]
  wire [4:0] firstOneOH_lo_7 = {valids[6],valids[7],valids[8],valids[9],valids[10]}; // @[Cat.scala 31:58]
  wire [10:0] _firstOneOH_T_55 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_7}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_58 = valids[11] & ~(|_firstOneOH_T_55); // @[FastArbiter.scala 28:24]
  wire [4:0] firstOneOH_hi_7 = {valids[0],valids[1],valids[2],valids[3],valids[4]}; // @[Cat.scala 31:58]
  wire [9:0] _firstOneOH_T_51 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8],valids[9]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_54 = valids[10] & ~(|_firstOneOH_T_51); // @[FastArbiter.scala 28:24]
  wire [8:0] _firstOneOH_T_47 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_50 = valids[9] & ~(|_firstOneOH_T_47); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_46 = valids[8] & ~(|firstOneOH_hi_12); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_42 = valids[7] & ~(|firstOneOH_hi_11); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_38 = valids[6] & ~(|firstOneOH_hi_9); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_34 = valids[5] & ~(|firstOneOH_hi_7); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_30 = valids[4] & ~(|firstOneOH_hi_hi_10); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_26 = valids[3] & ~(|firstOneOH_hi_hi_7); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_22 = valids[2] & ~(|firstOneOH_hi_hi_hi_6); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_18 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 28:24]
  wire [7:0] firstOneOH_lo_12 = {_firstOneOH_T_42,_firstOneOH_T_38,_firstOneOH_T_34,_firstOneOH_T_30,_firstOneOH_T_26,
    _firstOneOH_T_22,_firstOneOH_T_18,valids[0]}; // @[FastArbiter.scala 52:62]
  wire [15:0] firstOneOH = {_firstOneOH_T_74,_firstOneOH_T_70,_firstOneOH_T_66,_firstOneOH_T_62,_firstOneOH_T_58,
    _firstOneOH_T_54,_firstOneOH_T_50,_firstOneOH_T_46,firstOneOH_lo_12}; // @[FastArbiter.scala 52:62]
  wire [15:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 54:18]
  wire [15:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 39:15]
  wire [15:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 39:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_7 = |chosenOH[3:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_9 = |chosenOH[4:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_11 = |chosenOH[5:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_13 = |chosenOH[6:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_15 = |chosenOH[7:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_17 = |chosenOH[8:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_19 = |chosenOH[9:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_21 = |chosenOH[10:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_23 = |chosenOH[11:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_25 = |chosenOH[12:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_27 = |chosenOH[13:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_29 = |chosenOH[14:0]; // @[FastArbiter.scala 49:51]
  wire [7:0] rrGrantMask_lo = {_rrGrantMask_T_13,_rrGrantMask_T_11,_rrGrantMask_T_9,_rrGrantMask_T_7,_rrGrantMask_T_5,
    _rrGrantMask_T_3,_rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 50:12]
  wire [15:0] _rrGrantMask_T_30 = {_rrGrantMask_T_29,_rrGrantMask_T_27,_rrGrantMask_T_25,_rrGrantMask_T_23,
    _rrGrantMask_T_21,_rrGrantMask_T_19,_rrGrantMask_T_17,_rrGrantMask_T_15,rrGrantMask_lo}; // @[FastArbiter.scala 50:12]
  wire [3:0] _io_out_bits_T_16 = chosenOH[0] ? io_in_0_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_17 = chosenOH[1] ? io_in_1_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_18 = chosenOH[2] ? io_in_2_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_19 = chosenOH[3] ? io_in_3_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_20 = chosenOH[4] ? io_in_4_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_21 = chosenOH[5] ? io_in_5_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_22 = chosenOH[6] ? io_in_6_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_23 = chosenOH[7] ? io_in_7_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_24 = chosenOH[8] ? io_in_8_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_25 = chosenOH[9] ? io_in_9_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_26 = chosenOH[10] ? io_in_10_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_27 = chosenOH[11] ? io_in_11_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_28 = chosenOH[12] ? io_in_12_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_29 = chosenOH[13] ? io_in_13_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_30 = chosenOH[14] ? io_in_14_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_31 = chosenOH[15] ? io_in_15_bits_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_32 = _io_out_bits_T_16 | _io_out_bits_T_17; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_33 = _io_out_bits_T_32 | _io_out_bits_T_18; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_34 = _io_out_bits_T_33 | _io_out_bits_T_19; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_35 = _io_out_bits_T_34 | _io_out_bits_T_20; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_36 = _io_out_bits_T_35 | _io_out_bits_T_21; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_37 = _io_out_bits_T_36 | _io_out_bits_T_22; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_38 = _io_out_bits_T_37 | _io_out_bits_T_23; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_39 = _io_out_bits_T_38 | _io_out_bits_T_24; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_40 = _io_out_bits_T_39 | _io_out_bits_T_25; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_41 = _io_out_bits_T_40 | _io_out_bits_T_26; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_42 = _io_out_bits_T_41 | _io_out_bits_T_27; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_43 = _io_out_bits_T_42 | _io_out_bits_T_28; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_44 = _io_out_bits_T_43 | _io_out_bits_T_29; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_45 = _io_out_bits_T_44 | _io_out_bits_T_30; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_62 = chosenOH[15] & io_in_15_bits_replTask; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_78 = chosenOH[0] ? io_in_0_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_79 = chosenOH[1] ? io_in_1_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_80 = chosenOH[2] ? io_in_2_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_81 = chosenOH[3] ? io_in_3_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_82 = chosenOH[4] ? io_in_4_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_83 = chosenOH[5] ? io_in_5_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_84 = chosenOH[6] ? io_in_6_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_85 = chosenOH[7] ? io_in_7_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_86 = chosenOH[8] ? io_in_8_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_87 = chosenOH[9] ? io_in_9_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_88 = chosenOH[10] ? io_in_10_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_89 = chosenOH[11] ? io_in_11_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_90 = chosenOH[12] ? io_in_12_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_91 = chosenOH[13] ? io_in_13_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_92 = chosenOH[14] ? io_in_14_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_93 = chosenOH[15] ? io_in_15_bits_wayMask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_94 = _io_out_bits_T_78 | _io_out_bits_T_79; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_95 = _io_out_bits_T_94 | _io_out_bits_T_80; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_96 = _io_out_bits_T_95 | _io_out_bits_T_81; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_97 = _io_out_bits_T_96 | _io_out_bits_T_82; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_98 = _io_out_bits_T_97 | _io_out_bits_T_83; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_99 = _io_out_bits_T_98 | _io_out_bits_T_84; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_100 = _io_out_bits_T_99 | _io_out_bits_T_85; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_101 = _io_out_bits_T_100 | _io_out_bits_T_86; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_102 = _io_out_bits_T_101 | _io_out_bits_T_87; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_103 = _io_out_bits_T_102 | _io_out_bits_T_88; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_104 = _io_out_bits_T_103 | _io_out_bits_T_89; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_105 = _io_out_bits_T_104 | _io_out_bits_T_90; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_106 = _io_out_bits_T_105 | _io_out_bits_T_91; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_107 = _io_out_bits_T_106 | _io_out_bits_T_92; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_124 = chosenOH[15] & io_in_15_bits_dsWen; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_155 = chosenOH[15] & io_in_15_bits_tagWen; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_186 = chosenOH[15] & io_in_15_bits_metaWen; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_217 = chosenOH[15] & io_in_15_bits_meta_accessed; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_248 = chosenOH[15] & io_in_15_bits_meta_clients; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_264 = chosenOH[0] ? io_in_0_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_265 = chosenOH[1] ? io_in_1_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_266 = chosenOH[2] ? io_in_2_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_267 = chosenOH[3] ? io_in_3_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_268 = chosenOH[4] ? io_in_4_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_269 = chosenOH[5] ? io_in_5_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_270 = chosenOH[6] ? io_in_6_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_271 = chosenOH[7] ? io_in_7_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_272 = chosenOH[8] ? io_in_8_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_273 = chosenOH[9] ? io_in_9_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_274 = chosenOH[10] ? io_in_10_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_275 = chosenOH[11] ? io_in_11_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_276 = chosenOH[12] ? io_in_12_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_277 = chosenOH[13] ? io_in_13_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_278 = chosenOH[14] ? io_in_14_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_279 = chosenOH[15] ? io_in_15_bits_meta_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_280 = _io_out_bits_T_264 | _io_out_bits_T_265; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_281 = _io_out_bits_T_280 | _io_out_bits_T_266; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_282 = _io_out_bits_T_281 | _io_out_bits_T_267; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_283 = _io_out_bits_T_282 | _io_out_bits_T_268; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_284 = _io_out_bits_T_283 | _io_out_bits_T_269; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_285 = _io_out_bits_T_284 | _io_out_bits_T_270; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_286 = _io_out_bits_T_285 | _io_out_bits_T_271; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_287 = _io_out_bits_T_286 | _io_out_bits_T_272; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_288 = _io_out_bits_T_287 | _io_out_bits_T_273; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_289 = _io_out_bits_T_288 | _io_out_bits_T_274; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_290 = _io_out_bits_T_289 | _io_out_bits_T_275; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_291 = _io_out_bits_T_290 | _io_out_bits_T_276; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_292 = _io_out_bits_T_291 | _io_out_bits_T_277; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_293 = _io_out_bits_T_292 | _io_out_bits_T_278; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_310 = chosenOH[15] & io_in_15_bits_meta_dirty; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_326 = chosenOH[0] ? io_in_0_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_327 = chosenOH[1] ? io_in_1_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_328 = chosenOH[2] ? io_in_2_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_329 = chosenOH[3] ? io_in_3_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_330 = chosenOH[4] ? io_in_4_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_331 = chosenOH[5] ? io_in_5_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_332 = chosenOH[6] ? io_in_6_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_333 = chosenOH[7] ? io_in_7_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_334 = chosenOH[8] ? io_in_8_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_335 = chosenOH[9] ? io_in_9_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_336 = chosenOH[10] ? io_in_10_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_337 = chosenOH[11] ? io_in_11_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_338 = chosenOH[12] ? io_in_12_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_339 = chosenOH[13] ? io_in_13_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_340 = chosenOH[14] ? io_in_14_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_341 = chosenOH[15] ? io_in_15_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_342 = _io_out_bits_T_326 | _io_out_bits_T_327; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_343 = _io_out_bits_T_342 | _io_out_bits_T_328; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_344 = _io_out_bits_T_343 | _io_out_bits_T_329; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_345 = _io_out_bits_T_344 | _io_out_bits_T_330; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_346 = _io_out_bits_T_345 | _io_out_bits_T_331; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_347 = _io_out_bits_T_346 | _io_out_bits_T_332; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_348 = _io_out_bits_T_347 | _io_out_bits_T_333; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_349 = _io_out_bits_T_348 | _io_out_bits_T_334; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_350 = _io_out_bits_T_349 | _io_out_bits_T_335; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_351 = _io_out_bits_T_350 | _io_out_bits_T_336; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_352 = _io_out_bits_T_351 | _io_out_bits_T_337; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_353 = _io_out_bits_T_352 | _io_out_bits_T_338; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_354 = _io_out_bits_T_353 | _io_out_bits_T_339; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_355 = _io_out_bits_T_354 | _io_out_bits_T_340; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_372 = chosenOH[15] & io_in_15_bits_dirty; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_403 = chosenOH[15] & io_in_15_bits_useProbeData; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_419 = chosenOH[0] ? io_in_0_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_420 = chosenOH[1] ? io_in_1_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_421 = chosenOH[2] ? io_in_2_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_422 = chosenOH[3] ? io_in_3_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_423 = chosenOH[4] ? io_in_4_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_424 = chosenOH[5] ? io_in_5_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_425 = chosenOH[6] ? io_in_6_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_426 = chosenOH[7] ? io_in_7_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_427 = chosenOH[8] ? io_in_8_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_428 = chosenOH[9] ? io_in_9_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_429 = chosenOH[10] ? io_in_10_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_430 = chosenOH[11] ? io_in_11_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_431 = chosenOH[12] ? io_in_12_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_432 = chosenOH[13] ? io_in_13_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_433 = chosenOH[14] ? io_in_14_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_434 = chosenOH[15] ? io_in_15_bits_mshrId : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_435 = _io_out_bits_T_419 | _io_out_bits_T_420; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_436 = _io_out_bits_T_435 | _io_out_bits_T_421; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_437 = _io_out_bits_T_436 | _io_out_bits_T_422; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_438 = _io_out_bits_T_437 | _io_out_bits_T_423; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_439 = _io_out_bits_T_438 | _io_out_bits_T_424; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_440 = _io_out_bits_T_439 | _io_out_bits_T_425; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_441 = _io_out_bits_T_440 | _io_out_bits_T_426; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_442 = _io_out_bits_T_441 | _io_out_bits_T_427; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_443 = _io_out_bits_T_442 | _io_out_bits_T_428; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_444 = _io_out_bits_T_443 | _io_out_bits_T_429; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_445 = _io_out_bits_T_444 | _io_out_bits_T_430; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_446 = _io_out_bits_T_445 | _io_out_bits_T_431; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_447 = _io_out_bits_T_446 | _io_out_bits_T_432; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_448 = _io_out_bits_T_447 | _io_out_bits_T_433; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_543 = chosenOH[0] ? io_in_0_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_544 = chosenOH[1] ? io_in_1_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_545 = chosenOH[2] ? io_in_2_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_546 = chosenOH[3] ? io_in_3_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_547 = chosenOH[4] ? io_in_4_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_548 = chosenOH[5] ? io_in_5_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_549 = chosenOH[6] ? io_in_6_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_550 = chosenOH[7] ? io_in_7_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_551 = chosenOH[8] ? io_in_8_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_552 = chosenOH[9] ? io_in_9_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_553 = chosenOH[10] ? io_in_10_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_554 = chosenOH[11] ? io_in_11_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_555 = chosenOH[12] ? io_in_12_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_556 = chosenOH[13] ? io_in_13_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_557 = chosenOH[14] ? io_in_14_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_558 = chosenOH[15] ? io_in_15_bits_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_559 = _io_out_bits_T_543 | _io_out_bits_T_544; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_560 = _io_out_bits_T_559 | _io_out_bits_T_545; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_561 = _io_out_bits_T_560 | _io_out_bits_T_546; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_562 = _io_out_bits_T_561 | _io_out_bits_T_547; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_563 = _io_out_bits_T_562 | _io_out_bits_T_548; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_564 = _io_out_bits_T_563 | _io_out_bits_T_549; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_565 = _io_out_bits_T_564 | _io_out_bits_T_550; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_566 = _io_out_bits_T_565 | _io_out_bits_T_551; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_567 = _io_out_bits_T_566 | _io_out_bits_T_552; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_568 = _io_out_bits_T_567 | _io_out_bits_T_553; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_569 = _io_out_bits_T_568 | _io_out_bits_T_554; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_570 = _io_out_bits_T_569 | _io_out_bits_T_555; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_571 = _io_out_bits_T_570 | _io_out_bits_T_556; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_572 = _io_out_bits_T_571 | _io_out_bits_T_557; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_574 = chosenOH[0] ? io_in_0_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_575 = chosenOH[1] ? io_in_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_576 = chosenOH[2] ? io_in_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_577 = chosenOH[3] ? io_in_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_578 = chosenOH[4] ? io_in_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_579 = chosenOH[5] ? io_in_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_580 = chosenOH[6] ? io_in_6_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_581 = chosenOH[7] ? io_in_7_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_582 = chosenOH[8] ? io_in_8_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_583 = chosenOH[9] ? io_in_9_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_584 = chosenOH[10] ? io_in_10_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_585 = chosenOH[11] ? io_in_11_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_586 = chosenOH[12] ? io_in_12_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_587 = chosenOH[13] ? io_in_13_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_588 = chosenOH[14] ? io_in_14_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_589 = chosenOH[15] ? io_in_15_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_590 = _io_out_bits_T_574 | _io_out_bits_T_575; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_591 = _io_out_bits_T_590 | _io_out_bits_T_576; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_592 = _io_out_bits_T_591 | _io_out_bits_T_577; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_593 = _io_out_bits_T_592 | _io_out_bits_T_578; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_594 = _io_out_bits_T_593 | _io_out_bits_T_579; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_595 = _io_out_bits_T_594 | _io_out_bits_T_580; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_596 = _io_out_bits_T_595 | _io_out_bits_T_581; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_597 = _io_out_bits_T_596 | _io_out_bits_T_582; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_598 = _io_out_bits_T_597 | _io_out_bits_T_583; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_599 = _io_out_bits_T_598 | _io_out_bits_T_584; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_600 = _io_out_bits_T_599 | _io_out_bits_T_585; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_601 = _io_out_bits_T_600 | _io_out_bits_T_586; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_602 = _io_out_bits_T_601 | _io_out_bits_T_587; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_603 = _io_out_bits_T_602 | _io_out_bits_T_588; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_605 = chosenOH[0] ? io_in_0_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_606 = chosenOH[1] ? io_in_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_607 = chosenOH[2] ? io_in_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_608 = chosenOH[3] ? io_in_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_609 = chosenOH[4] ? io_in_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_610 = chosenOH[5] ? io_in_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_611 = chosenOH[6] ? io_in_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_612 = chosenOH[7] ? io_in_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_613 = chosenOH[8] ? io_in_8_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_614 = chosenOH[9] ? io_in_9_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_615 = chosenOH[10] ? io_in_10_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_616 = chosenOH[11] ? io_in_11_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_617 = chosenOH[12] ? io_in_12_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_618 = chosenOH[13] ? io_in_13_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_619 = chosenOH[14] ? io_in_14_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_620 = chosenOH[15] ? io_in_15_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_621 = _io_out_bits_T_605 | _io_out_bits_T_606; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_622 = _io_out_bits_T_621 | _io_out_bits_T_607; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_623 = _io_out_bits_T_622 | _io_out_bits_T_608; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_624 = _io_out_bits_T_623 | _io_out_bits_T_609; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_625 = _io_out_bits_T_624 | _io_out_bits_T_610; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_626 = _io_out_bits_T_625 | _io_out_bits_T_611; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_627 = _io_out_bits_T_626 | _io_out_bits_T_612; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_628 = _io_out_bits_T_627 | _io_out_bits_T_613; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_629 = _io_out_bits_T_628 | _io_out_bits_T_614; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_630 = _io_out_bits_T_629 | _io_out_bits_T_615; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_631 = _io_out_bits_T_630 | _io_out_bits_T_616; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_632 = _io_out_bits_T_631 | _io_out_bits_T_617; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_633 = _io_out_bits_T_632 | _io_out_bits_T_618; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_634 = _io_out_bits_T_633 | _io_out_bits_T_619; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_636 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_637 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_638 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_639 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_640 = chosenOH[4] ? io_in_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_641 = chosenOH[5] ? io_in_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_642 = chosenOH[6] ? io_in_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_643 = chosenOH[7] ? io_in_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_644 = chosenOH[8] ? io_in_8_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_645 = chosenOH[9] ? io_in_9_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_646 = chosenOH[10] ? io_in_10_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_647 = chosenOH[11] ? io_in_11_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_648 = chosenOH[12] ? io_in_12_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_649 = chosenOH[13] ? io_in_13_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_650 = chosenOH[14] ? io_in_14_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_651 = chosenOH[15] ? io_in_15_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_652 = _io_out_bits_T_636 | _io_out_bits_T_637; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_653 = _io_out_bits_T_652 | _io_out_bits_T_638; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_654 = _io_out_bits_T_653 | _io_out_bits_T_639; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_655 = _io_out_bits_T_654 | _io_out_bits_T_640; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_656 = _io_out_bits_T_655 | _io_out_bits_T_641; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_657 = _io_out_bits_T_656 | _io_out_bits_T_642; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_658 = _io_out_bits_T_657 | _io_out_bits_T_643; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_659 = _io_out_bits_T_658 | _io_out_bits_T_644; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_660 = _io_out_bits_T_659 | _io_out_bits_T_645; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_661 = _io_out_bits_T_660 | _io_out_bits_T_646; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_662 = _io_out_bits_T_661 | _io_out_bits_T_647; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_663 = _io_out_bits_T_662 | _io_out_bits_T_648; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_664 = _io_out_bits_T_663 | _io_out_bits_T_649; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_665 = _io_out_bits_T_664 | _io_out_bits_T_650; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_667 = chosenOH[0] ? io_in_0_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_668 = chosenOH[1] ? io_in_1_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_669 = chosenOH[2] ? io_in_2_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_670 = chosenOH[3] ? io_in_3_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_671 = chosenOH[4] ? io_in_4_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_672 = chosenOH[5] ? io_in_5_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_673 = chosenOH[6] ? io_in_6_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_674 = chosenOH[7] ? io_in_7_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_675 = chosenOH[8] ? io_in_8_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_676 = chosenOH[9] ? io_in_9_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_677 = chosenOH[10] ? io_in_10_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_678 = chosenOH[11] ? io_in_11_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_679 = chosenOH[12] ? io_in_12_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_680 = chosenOH[13] ? io_in_13_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_681 = chosenOH[14] ? io_in_14_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_682 = chosenOH[15] ? io_in_15_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_683 = _io_out_bits_T_667 | _io_out_bits_T_668; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_684 = _io_out_bits_T_683 | _io_out_bits_T_669; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_685 = _io_out_bits_T_684 | _io_out_bits_T_670; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_686 = _io_out_bits_T_685 | _io_out_bits_T_671; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_687 = _io_out_bits_T_686 | _io_out_bits_T_672; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_688 = _io_out_bits_T_687 | _io_out_bits_T_673; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_689 = _io_out_bits_T_688 | _io_out_bits_T_674; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_690 = _io_out_bits_T_689 | _io_out_bits_T_675; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_691 = _io_out_bits_T_690 | _io_out_bits_T_676; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_692 = _io_out_bits_T_691 | _io_out_bits_T_677; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_693 = _io_out_bits_T_692 | _io_out_bits_T_678; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_694 = _io_out_bits_T_693 | _io_out_bits_T_679; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_695 = _io_out_bits_T_694 | _io_out_bits_T_680; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_696 = _io_out_bits_T_695 | _io_out_bits_T_681; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_698 = chosenOH[0] ? io_in_0_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_699 = chosenOH[1] ? io_in_1_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_700 = chosenOH[2] ? io_in_2_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_701 = chosenOH[3] ? io_in_3_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_702 = chosenOH[4] ? io_in_4_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_703 = chosenOH[5] ? io_in_5_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_704 = chosenOH[6] ? io_in_6_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_705 = chosenOH[7] ? io_in_7_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_706 = chosenOH[8] ? io_in_8_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_707 = chosenOH[9] ? io_in_9_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_708 = chosenOH[10] ? io_in_10_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_709 = chosenOH[11] ? io_in_11_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_710 = chosenOH[12] ? io_in_12_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_711 = chosenOH[13] ? io_in_13_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_712 = chosenOH[14] ? io_in_14_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_713 = chosenOH[15] ? io_in_15_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_714 = _io_out_bits_T_698 | _io_out_bits_T_699; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_715 = _io_out_bits_T_714 | _io_out_bits_T_700; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_716 = _io_out_bits_T_715 | _io_out_bits_T_701; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_717 = _io_out_bits_T_716 | _io_out_bits_T_702; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_718 = _io_out_bits_T_717 | _io_out_bits_T_703; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_719 = _io_out_bits_T_718 | _io_out_bits_T_704; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_720 = _io_out_bits_T_719 | _io_out_bits_T_705; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_721 = _io_out_bits_T_720 | _io_out_bits_T_706; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_722 = _io_out_bits_T_721 | _io_out_bits_T_707; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_723 = _io_out_bits_T_722 | _io_out_bits_T_708; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_724 = _io_out_bits_T_723 | _io_out_bits_T_709; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_725 = _io_out_bits_T_724 | _io_out_bits_T_710; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_726 = _io_out_bits_T_725 | _io_out_bits_T_711; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_727 = _io_out_bits_T_726 | _io_out_bits_T_712; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_729 = chosenOH[0] ? io_in_0_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_730 = chosenOH[1] ? io_in_1_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_731 = chosenOH[2] ? io_in_2_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_732 = chosenOH[3] ? io_in_3_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_733 = chosenOH[4] ? io_in_4_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_734 = chosenOH[5] ? io_in_5_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_735 = chosenOH[6] ? io_in_6_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_736 = chosenOH[7] ? io_in_7_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_737 = chosenOH[8] ? io_in_8_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_738 = chosenOH[9] ? io_in_9_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_739 = chosenOH[10] ? io_in_10_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_740 = chosenOH[11] ? io_in_11_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_741 = chosenOH[12] ? io_in_12_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_742 = chosenOH[13] ? io_in_13_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_743 = chosenOH[14] ? io_in_14_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_744 = chosenOH[15] ? io_in_15_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_745 = _io_out_bits_T_729 | _io_out_bits_T_730; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_746 = _io_out_bits_T_745 | _io_out_bits_T_731; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_747 = _io_out_bits_T_746 | _io_out_bits_T_732; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_748 = _io_out_bits_T_747 | _io_out_bits_T_733; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_749 = _io_out_bits_T_748 | _io_out_bits_T_734; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_750 = _io_out_bits_T_749 | _io_out_bits_T_735; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_751 = _io_out_bits_T_750 | _io_out_bits_T_736; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_752 = _io_out_bits_T_751 | _io_out_bits_T_737; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_753 = _io_out_bits_T_752 | _io_out_bits_T_738; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_754 = _io_out_bits_T_753 | _io_out_bits_T_739; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_755 = _io_out_bits_T_754 | _io_out_bits_T_740; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_756 = _io_out_bits_T_755 | _io_out_bits_T_741; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_757 = _io_out_bits_T_756 | _io_out_bits_T_742; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_758 = _io_out_bits_T_757 | _io_out_bits_T_743; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_760 = chosenOH[0] ? io_in_0_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_761 = chosenOH[1] ? io_in_1_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_762 = chosenOH[2] ? io_in_2_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_763 = chosenOH[3] ? io_in_3_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_764 = chosenOH[4] ? io_in_4_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_765 = chosenOH[5] ? io_in_5_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_766 = chosenOH[6] ? io_in_6_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_767 = chosenOH[7] ? io_in_7_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_768 = chosenOH[8] ? io_in_8_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_769 = chosenOH[9] ? io_in_9_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_770 = chosenOH[10] ? io_in_10_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_771 = chosenOH[11] ? io_in_11_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_772 = chosenOH[12] ? io_in_12_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_773 = chosenOH[13] ? io_in_13_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_774 = chosenOH[14] ? io_in_14_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_775 = chosenOH[15] ? io_in_15_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_776 = _io_out_bits_T_760 | _io_out_bits_T_761; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_777 = _io_out_bits_T_776 | _io_out_bits_T_762; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_778 = _io_out_bits_T_777 | _io_out_bits_T_763; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_779 = _io_out_bits_T_778 | _io_out_bits_T_764; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_780 = _io_out_bits_T_779 | _io_out_bits_T_765; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_781 = _io_out_bits_T_780 | _io_out_bits_T_766; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_782 = _io_out_bits_T_781 | _io_out_bits_T_767; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_783 = _io_out_bits_T_782 | _io_out_bits_T_768; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_784 = _io_out_bits_T_783 | _io_out_bits_T_769; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_785 = _io_out_bits_T_784 | _io_out_bits_T_770; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_786 = _io_out_bits_T_785 | _io_out_bits_T_771; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_787 = _io_out_bits_T_786 | _io_out_bits_T_772; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_788 = _io_out_bits_T_787 | _io_out_bits_T_773; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_789 = _io_out_bits_T_788 | _io_out_bits_T_774; // @[Mux.scala 27:73]
  assign io_in_0_ready = chosenOH[0] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_1_ready = chosenOH[1] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_2_ready = chosenOH[2] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_3_ready = chosenOH[3] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_4_ready = chosenOH[4] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_5_ready = chosenOH[5] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_6_ready = chosenOH[6] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_7_ready = chosenOH[7] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_8_ready = chosenOH[8] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_9_ready = chosenOH[9] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_10_ready = chosenOH[10] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_11_ready = chosenOH[11] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_12_ready = chosenOH[12] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_13_ready = chosenOH[13] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_14_ready = chosenOH[14] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_15_ready = chosenOH[15] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 56:29]
  assign io_out_bits_channel = _io_out_bits_T_789 | _io_out_bits_T_775; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_758 | _io_out_bits_T_744; // @[Mux.scala 27:73]
  assign io_out_bits_tag = _io_out_bits_T_727 | _io_out_bits_T_713; // @[Mux.scala 27:73]
  assign io_out_bits_off = _io_out_bits_T_696 | _io_out_bits_T_682; // @[Mux.scala 27:73]
  assign io_out_bits_opcode = _io_out_bits_T_665 | _io_out_bits_T_651; // @[Mux.scala 27:73]
  assign io_out_bits_param = _io_out_bits_T_634 | _io_out_bits_T_620; // @[Mux.scala 27:73]
  assign io_out_bits_size = _io_out_bits_T_603 | _io_out_bits_T_589; // @[Mux.scala 27:73]
  assign io_out_bits_sourceId = _io_out_bits_T_572 | _io_out_bits_T_558; // @[Mux.scala 27:73]
  assign io_out_bits_mshrTask = chosenOH[0] | chosenOH[1] | chosenOH[2] | chosenOH[3] | chosenOH[4] | chosenOH[5] |
    chosenOH[6] | chosenOH[7] | chosenOH[8] | chosenOH[9] | chosenOH[10] | chosenOH[11] | chosenOH[12] | chosenOH[13] |
    chosenOH[14] | chosenOH[15]; // @[Mux.scala 27:73]
  assign io_out_bits_mshrId = _io_out_bits_T_448 | _io_out_bits_T_434; // @[Mux.scala 27:73]
  assign io_out_bits_useProbeData = chosenOH[0] & io_in_0_bits_useProbeData | chosenOH[1] & io_in_1_bits_useProbeData |
    chosenOH[2] & io_in_2_bits_useProbeData | chosenOH[3] & io_in_3_bits_useProbeData | chosenOH[4] &
    io_in_4_bits_useProbeData | chosenOH[5] & io_in_5_bits_useProbeData | chosenOH[6] & io_in_6_bits_useProbeData |
    chosenOH[7] & io_in_7_bits_useProbeData | chosenOH[8] & io_in_8_bits_useProbeData | chosenOH[9] &
    io_in_9_bits_useProbeData | chosenOH[10] & io_in_10_bits_useProbeData | chosenOH[11] & io_in_11_bits_useProbeData |
    chosenOH[12] & io_in_12_bits_useProbeData | chosenOH[13] & io_in_13_bits_useProbeData | chosenOH[14] &
    io_in_14_bits_useProbeData | _io_out_bits_T_403; // @[Mux.scala 27:73]
  assign io_out_bits_dirty = chosenOH[0] & io_in_0_bits_dirty | chosenOH[1] & io_in_1_bits_dirty | chosenOH[2] &
    io_in_2_bits_dirty | chosenOH[3] & io_in_3_bits_dirty | chosenOH[4] & io_in_4_bits_dirty | chosenOH[5] &
    io_in_5_bits_dirty | chosenOH[6] & io_in_6_bits_dirty | chosenOH[7] & io_in_7_bits_dirty | chosenOH[8] &
    io_in_8_bits_dirty | chosenOH[9] & io_in_9_bits_dirty | chosenOH[10] & io_in_10_bits_dirty | chosenOH[11] &
    io_in_11_bits_dirty | chosenOH[12] & io_in_12_bits_dirty | chosenOH[13] & io_in_13_bits_dirty | chosenOH[14] &
    io_in_14_bits_dirty | _io_out_bits_T_372; // @[Mux.scala 27:73]
  assign io_out_bits_way = _io_out_bits_T_355 | _io_out_bits_T_341; // @[Mux.scala 27:73]
  assign io_out_bits_meta_dirty = chosenOH[0] & io_in_0_bits_meta_dirty | chosenOH[1] & io_in_1_bits_meta_dirty |
    chosenOH[2] & io_in_2_bits_meta_dirty | chosenOH[3] & io_in_3_bits_meta_dirty | chosenOH[4] &
    io_in_4_bits_meta_dirty | chosenOH[5] & io_in_5_bits_meta_dirty | chosenOH[6] & io_in_6_bits_meta_dirty | chosenOH[7
    ] & io_in_7_bits_meta_dirty | chosenOH[8] & io_in_8_bits_meta_dirty | chosenOH[9] & io_in_9_bits_meta_dirty |
    chosenOH[10] & io_in_10_bits_meta_dirty | chosenOH[11] & io_in_11_bits_meta_dirty | chosenOH[12] &
    io_in_12_bits_meta_dirty | chosenOH[13] & io_in_13_bits_meta_dirty | chosenOH[14] & io_in_14_bits_meta_dirty |
    _io_out_bits_T_310; // @[Mux.scala 27:73]
  assign io_out_bits_meta_state = _io_out_bits_T_293 | _io_out_bits_T_279; // @[Mux.scala 27:73]
  assign io_out_bits_meta_clients = chosenOH[0] & io_in_0_bits_meta_clients | chosenOH[1] & io_in_1_bits_meta_clients |
    chosenOH[2] & io_in_2_bits_meta_clients | chosenOH[3] & io_in_3_bits_meta_clients | chosenOH[4] &
    io_in_4_bits_meta_clients | chosenOH[5] & io_in_5_bits_meta_clients | chosenOH[6] & io_in_6_bits_meta_clients |
    chosenOH[7] & io_in_7_bits_meta_clients | chosenOH[8] & io_in_8_bits_meta_clients | chosenOH[9] &
    io_in_9_bits_meta_clients | chosenOH[10] & io_in_10_bits_meta_clients | chosenOH[11] & io_in_11_bits_meta_clients |
    chosenOH[12] & io_in_12_bits_meta_clients | chosenOH[13] & io_in_13_bits_meta_clients | chosenOH[14] &
    io_in_14_bits_meta_clients | _io_out_bits_T_248; // @[Mux.scala 27:73]
  assign io_out_bits_meta_accessed = chosenOH[0] & io_in_0_bits_meta_accessed | chosenOH[1] & io_in_1_bits_meta_accessed
     | chosenOH[2] & io_in_2_bits_meta_accessed | chosenOH[3] & io_in_3_bits_meta_accessed | chosenOH[4] &
    io_in_4_bits_meta_accessed | chosenOH[5] & io_in_5_bits_meta_accessed | chosenOH[6] & io_in_6_bits_meta_accessed |
    chosenOH[7] & io_in_7_bits_meta_accessed | chosenOH[8] & io_in_8_bits_meta_accessed | chosenOH[9] &
    io_in_9_bits_meta_accessed | chosenOH[10] & io_in_10_bits_meta_accessed | chosenOH[11] & io_in_11_bits_meta_accessed
     | chosenOH[12] & io_in_12_bits_meta_accessed | chosenOH[13] & io_in_13_bits_meta_accessed | chosenOH[14] &
    io_in_14_bits_meta_accessed | _io_out_bits_T_217; // @[Mux.scala 27:73]
  assign io_out_bits_metaWen = chosenOH[0] & io_in_0_bits_metaWen | chosenOH[1] & io_in_1_bits_metaWen | chosenOH[2] &
    io_in_2_bits_metaWen | chosenOH[3] & io_in_3_bits_metaWen | chosenOH[4] & io_in_4_bits_metaWen | chosenOH[5] &
    io_in_5_bits_metaWen | chosenOH[6] & io_in_6_bits_metaWen | chosenOH[7] & io_in_7_bits_metaWen | chosenOH[8] &
    io_in_8_bits_metaWen | chosenOH[9] & io_in_9_bits_metaWen | chosenOH[10] & io_in_10_bits_metaWen | chosenOH[11] &
    io_in_11_bits_metaWen | chosenOH[12] & io_in_12_bits_metaWen | chosenOH[13] & io_in_13_bits_metaWen | chosenOH[14]
     & io_in_14_bits_metaWen | _io_out_bits_T_186; // @[Mux.scala 27:73]
  assign io_out_bits_tagWen = chosenOH[0] & io_in_0_bits_tagWen | chosenOH[1] & io_in_1_bits_tagWen | chosenOH[2] &
    io_in_2_bits_tagWen | chosenOH[3] & io_in_3_bits_tagWen | chosenOH[4] & io_in_4_bits_tagWen | chosenOH[5] &
    io_in_5_bits_tagWen | chosenOH[6] & io_in_6_bits_tagWen | chosenOH[7] & io_in_7_bits_tagWen | chosenOH[8] &
    io_in_8_bits_tagWen | chosenOH[9] & io_in_9_bits_tagWen | chosenOH[10] & io_in_10_bits_tagWen | chosenOH[11] &
    io_in_11_bits_tagWen | chosenOH[12] & io_in_12_bits_tagWen | chosenOH[13] & io_in_13_bits_tagWen | chosenOH[14] &
    io_in_14_bits_tagWen | _io_out_bits_T_155; // @[Mux.scala 27:73]
  assign io_out_bits_dsWen = chosenOH[0] & io_in_0_bits_dsWen | chosenOH[1] & io_in_1_bits_dsWen | chosenOH[2] &
    io_in_2_bits_dsWen | chosenOH[3] & io_in_3_bits_dsWen | chosenOH[4] & io_in_4_bits_dsWen | chosenOH[5] &
    io_in_5_bits_dsWen | chosenOH[6] & io_in_6_bits_dsWen | chosenOH[7] & io_in_7_bits_dsWen | chosenOH[8] &
    io_in_8_bits_dsWen | chosenOH[9] & io_in_9_bits_dsWen | chosenOH[10] & io_in_10_bits_dsWen | chosenOH[11] &
    io_in_11_bits_dsWen | chosenOH[12] & io_in_12_bits_dsWen | chosenOH[13] & io_in_13_bits_dsWen | chosenOH[14] &
    io_in_14_bits_dsWen | _io_out_bits_T_124; // @[Mux.scala 27:73]
  assign io_out_bits_wayMask = _io_out_bits_T_107 | _io_out_bits_T_93; // @[Mux.scala 27:73]
  assign io_out_bits_replTask = chosenOH[0] & io_in_0_bits_replTask | chosenOH[1] & io_in_1_bits_replTask | chosenOH[2]
     & io_in_2_bits_replTask | chosenOH[3] & io_in_3_bits_replTask | chosenOH[4] & io_in_4_bits_replTask | chosenOH[5]
     & io_in_5_bits_replTask | chosenOH[6] & io_in_6_bits_replTask | chosenOH[7] & io_in_7_bits_replTask | chosenOH[8]
     & io_in_8_bits_replTask | chosenOH[9] & io_in_9_bits_replTask | chosenOH[10] & io_in_10_bits_replTask | chosenOH[11
    ] & io_in_11_bits_replTask | chosenOH[12] & io_in_12_bits_replTask | chosenOH[13] & io_in_13_bits_replTask |
    chosenOH[14] & io_in_14_bits_replTask | _io_out_bits_T_62; // @[Mux.scala 27:73]
  assign io_out_bits_reqSource = _io_out_bits_T_45 | _io_out_bits_T_31; // @[Mux.scala 27:73]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      rrGrantMask <= 16'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      rrGrantMask <= _rrGrantMask_T_30;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      pendingMask <= 16'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      pendingMask <= _pendingMask_T_1;
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
  rrGrantMask = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[15:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rrGrantMask = 16'h0;
  end
  if (reset) begin
    pendingMask = 16'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

