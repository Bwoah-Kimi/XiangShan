module Queue_157(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_bits_task_channel,
  input  [6:0]  io_enq_bits_bits_task_set,
  input  [21:0] io_enq_bits_bits_task_tag,
  input  [5:0]  io_enq_bits_bits_task_off,
  input  [2:0]  io_enq_bits_bits_task_opcode,
  input  [2:0]  io_enq_bits_bits_task_param,
  input  [2:0]  io_enq_bits_bits_task_size,
  input  [4:0]  io_enq_bits_bits_task_sourceId,
  input  [3:0]  io_enq_bits_bits_task_reqSource,
  input  [1:0]  io_enq_bits_id,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_bits_task_channel,
  output [6:0]  io_deq_bits_bits_task_set,
  output [21:0] io_deq_bits_bits_task_tag,
  output [5:0]  io_deq_bits_bits_task_off,
  output [2:0]  io_deq_bits_bits_task_opcode,
  output [2:0]  io_deq_bits_bits_task_param,
  output [2:0]  io_deq_bits_bits_task_size,
  output [4:0]  io_deq_bits_bits_task_sourceId,
  output [1:0]  io_deq_bits_bits_task_bufIdx,
  output        io_deq_bits_bits_task_needProbeAckData,
  output        io_deq_bits_bits_task_mshrTask,
  output [7:0]  io_deq_bits_bits_task_mshrId,
  output        io_deq_bits_bits_task_useProbeData,
  output        io_deq_bits_bits_task_dirty,
  output [2:0]  io_deq_bits_bits_task_way,
  output        io_deq_bits_bits_task_meta_dirty,
  output [1:0]  io_deq_bits_bits_task_meta_state,
  output        io_deq_bits_bits_task_meta_clients,
  output        io_deq_bits_bits_task_meta_accessed,
  output        io_deq_bits_bits_task_metaWen,
  output        io_deq_bits_bits_task_tagWen,
  output        io_deq_bits_bits_task_dsWen,
  output        io_deq_bits_bits_task_replTask,
  output [3:0]  io_deq_bits_bits_task_reqSource,
  output [1:0]  io_deq_bits_id
);
`ifdef RANDOMIZE_MEM_INIT
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_25;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_bits_task_channel [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_channel_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_channel_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_channel_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_channel_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_channel_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_channel_MPORT_en; // @[Decoupled.scala 259:95]
  reg [6:0] ram_bits_task_set [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [6:0] ram_bits_task_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [6:0] ram_bits_task_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [21:0] ram_bits_task_tag [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [21:0] ram_bits_task_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [21:0] ram_bits_task_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_bits_task_off [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_off_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_off_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_bits_task_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_bits_task_off_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_off_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_off_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_off_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bits_task_opcode [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bits_task_param [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bits_task_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [4:0] ram_bits_task_sourceId [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_sourceId_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_sourceId_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [4:0] ram_bits_task_sourceId_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [4:0] ram_bits_task_sourceId_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_sourceId_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_sourceId_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_sourceId_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_bits_task_bufIdx [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_bufIdx_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_bufIdx_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_bits_task_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_bits_task_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_bufIdx_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_bufIdx_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_bufIdx_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_needProbeAckData [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_needProbeAckData_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_mshrTask [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrTask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_bits_task_mshrId [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrId_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrId_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_bits_task_mshrId_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_bits_task_mshrId_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrId_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrId_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_mshrId_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_useProbeData [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_useProbeData_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_dirty [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bits_task_way [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_way_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_way_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bits_task_way_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_way_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_way_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_way_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_meta_dirty [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_bits_task_meta_state [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_state_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_state_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_bits_task_meta_state_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_bits_task_meta_state_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_state_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_state_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_state_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_meta_clients [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_clients_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_meta_accessed [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_meta_accessed_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_metaWen [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_metaWen_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_tagWen [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_tagWen_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_dsWen [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_dsWen_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_bits_task_replTask [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_replTask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_bits_task_reqSource [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_reqSource_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_reqSource_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_bits_task_reqSource_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_bits_task_reqSource_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_reqSource_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_reqSource_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bits_task_reqSource_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_id [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_id_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_bits_task_channel_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_channel_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_channel_io_deq_bits_MPORT_data =
    ram_bits_task_channel[ram_bits_task_channel_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_channel_MPORT_data = io_enq_bits_bits_task_channel;
  assign ram_bits_task_channel_MPORT_addr = 1'h0;
  assign ram_bits_task_channel_MPORT_mask = 1'h1;
  assign ram_bits_task_channel_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_set_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_set_io_deq_bits_MPORT_data = ram_bits_task_set[ram_bits_task_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_set_MPORT_data = io_enq_bits_bits_task_set;
  assign ram_bits_task_set_MPORT_addr = 1'h0;
  assign ram_bits_task_set_MPORT_mask = 1'h1;
  assign ram_bits_task_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_tag_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_tag_io_deq_bits_MPORT_data = ram_bits_task_tag[ram_bits_task_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_tag_MPORT_data = io_enq_bits_bits_task_tag;
  assign ram_bits_task_tag_MPORT_addr = 1'h0;
  assign ram_bits_task_tag_MPORT_mask = 1'h1;
  assign ram_bits_task_tag_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_off_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_off_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_off_io_deq_bits_MPORT_data = ram_bits_task_off[ram_bits_task_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_off_MPORT_data = io_enq_bits_bits_task_off;
  assign ram_bits_task_off_MPORT_addr = 1'h0;
  assign ram_bits_task_off_MPORT_mask = 1'h1;
  assign ram_bits_task_off_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_opcode_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_opcode_io_deq_bits_MPORT_data = ram_bits_task_opcode[ram_bits_task_opcode_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_bits_task_opcode_MPORT_data = io_enq_bits_bits_task_opcode;
  assign ram_bits_task_opcode_MPORT_addr = 1'h0;
  assign ram_bits_task_opcode_MPORT_mask = 1'h1;
  assign ram_bits_task_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_param_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_param_io_deq_bits_MPORT_data = ram_bits_task_param[ram_bits_task_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_param_MPORT_data = io_enq_bits_bits_task_param;
  assign ram_bits_task_param_MPORT_addr = 1'h0;
  assign ram_bits_task_param_MPORT_mask = 1'h1;
  assign ram_bits_task_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_size_io_deq_bits_MPORT_data = ram_bits_task_size[ram_bits_task_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_size_MPORT_data = io_enq_bits_bits_task_size;
  assign ram_bits_task_size_MPORT_addr = 1'h0;
  assign ram_bits_task_size_MPORT_mask = 1'h1;
  assign ram_bits_task_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_sourceId_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_sourceId_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_sourceId_io_deq_bits_MPORT_data =
    ram_bits_task_sourceId[ram_bits_task_sourceId_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_sourceId_MPORT_data = io_enq_bits_bits_task_sourceId;
  assign ram_bits_task_sourceId_MPORT_addr = 1'h0;
  assign ram_bits_task_sourceId_MPORT_mask = 1'h1;
  assign ram_bits_task_sourceId_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_bufIdx_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_bufIdx_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_bufIdx_io_deq_bits_MPORT_data = ram_bits_task_bufIdx[ram_bits_task_bufIdx_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_bits_task_bufIdx_MPORT_data = 2'h0;
  assign ram_bits_task_bufIdx_MPORT_addr = 1'h0;
  assign ram_bits_task_bufIdx_MPORT_mask = 1'h1;
  assign ram_bits_task_bufIdx_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_needProbeAckData_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_needProbeAckData_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_needProbeAckData_io_deq_bits_MPORT_data =
    ram_bits_task_needProbeAckData[ram_bits_task_needProbeAckData_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_needProbeAckData_MPORT_data = 1'h0;
  assign ram_bits_task_needProbeAckData_MPORT_addr = 1'h0;
  assign ram_bits_task_needProbeAckData_MPORT_mask = 1'h1;
  assign ram_bits_task_needProbeAckData_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_mshrTask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_mshrTask_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_mshrTask_io_deq_bits_MPORT_data =
    ram_bits_task_mshrTask[ram_bits_task_mshrTask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_mshrTask_MPORT_data = 1'h0;
  assign ram_bits_task_mshrTask_MPORT_addr = 1'h0;
  assign ram_bits_task_mshrTask_MPORT_mask = 1'h1;
  assign ram_bits_task_mshrTask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_mshrId_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_mshrId_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_mshrId_io_deq_bits_MPORT_data = ram_bits_task_mshrId[ram_bits_task_mshrId_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_bits_task_mshrId_MPORT_data = 8'h0;
  assign ram_bits_task_mshrId_MPORT_addr = 1'h0;
  assign ram_bits_task_mshrId_MPORT_mask = 1'h1;
  assign ram_bits_task_mshrId_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_useProbeData_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_useProbeData_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_useProbeData_io_deq_bits_MPORT_data =
    ram_bits_task_useProbeData[ram_bits_task_useProbeData_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_useProbeData_MPORT_data = 1'h0;
  assign ram_bits_task_useProbeData_MPORT_addr = 1'h0;
  assign ram_bits_task_useProbeData_MPORT_mask = 1'h1;
  assign ram_bits_task_useProbeData_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_dirty_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_dirty_io_deq_bits_MPORT_data = ram_bits_task_dirty[ram_bits_task_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_dirty_MPORT_data = 1'h0;
  assign ram_bits_task_dirty_MPORT_addr = 1'h0;
  assign ram_bits_task_dirty_MPORT_mask = 1'h1;
  assign ram_bits_task_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_way_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_way_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_way_io_deq_bits_MPORT_data = ram_bits_task_way[ram_bits_task_way_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_way_MPORT_data = 3'h0;
  assign ram_bits_task_way_MPORT_addr = 1'h0;
  assign ram_bits_task_way_MPORT_mask = 1'h1;
  assign ram_bits_task_way_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_meta_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_meta_dirty_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_dirty_io_deq_bits_MPORT_data =
    ram_bits_task_meta_dirty[ram_bits_task_meta_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_meta_dirty_MPORT_data = 1'h0;
  assign ram_bits_task_meta_dirty_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_dirty_MPORT_mask = 1'h1;
  assign ram_bits_task_meta_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_meta_state_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_meta_state_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_state_io_deq_bits_MPORT_data =
    ram_bits_task_meta_state[ram_bits_task_meta_state_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_meta_state_MPORT_data = 2'h0;
  assign ram_bits_task_meta_state_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_state_MPORT_mask = 1'h1;
  assign ram_bits_task_meta_state_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_meta_clients_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_meta_clients_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_clients_io_deq_bits_MPORT_data =
    ram_bits_task_meta_clients[ram_bits_task_meta_clients_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_meta_clients_MPORT_data = 1'h0;
  assign ram_bits_task_meta_clients_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_clients_MPORT_mask = 1'h1;
  assign ram_bits_task_meta_clients_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_meta_accessed_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_meta_accessed_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_accessed_io_deq_bits_MPORT_data =
    ram_bits_task_meta_accessed[ram_bits_task_meta_accessed_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_meta_accessed_MPORT_data = 1'h0;
  assign ram_bits_task_meta_accessed_MPORT_addr = 1'h0;
  assign ram_bits_task_meta_accessed_MPORT_mask = 1'h1;
  assign ram_bits_task_meta_accessed_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_metaWen_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_metaWen_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_metaWen_io_deq_bits_MPORT_data =
    ram_bits_task_metaWen[ram_bits_task_metaWen_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_metaWen_MPORT_data = 1'h0;
  assign ram_bits_task_metaWen_MPORT_addr = 1'h0;
  assign ram_bits_task_metaWen_MPORT_mask = 1'h1;
  assign ram_bits_task_metaWen_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_tagWen_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_tagWen_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_tagWen_io_deq_bits_MPORT_data = ram_bits_task_tagWen[ram_bits_task_tagWen_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_bits_task_tagWen_MPORT_data = 1'h0;
  assign ram_bits_task_tagWen_MPORT_addr = 1'h0;
  assign ram_bits_task_tagWen_MPORT_mask = 1'h1;
  assign ram_bits_task_tagWen_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_dsWen_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_dsWen_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_dsWen_io_deq_bits_MPORT_data = ram_bits_task_dsWen[ram_bits_task_dsWen_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_dsWen_MPORT_data = 1'h0;
  assign ram_bits_task_dsWen_MPORT_addr = 1'h0;
  assign ram_bits_task_dsWen_MPORT_mask = 1'h1;
  assign ram_bits_task_dsWen_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_replTask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_replTask_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_replTask_io_deq_bits_MPORT_data =
    ram_bits_task_replTask[ram_bits_task_replTask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_replTask_MPORT_data = 1'h0;
  assign ram_bits_task_replTask_MPORT_addr = 1'h0;
  assign ram_bits_task_replTask_MPORT_mask = 1'h1;
  assign ram_bits_task_replTask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bits_task_reqSource_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bits_task_reqSource_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bits_task_reqSource_io_deq_bits_MPORT_data =
    ram_bits_task_reqSource[ram_bits_task_reqSource_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bits_task_reqSource_MPORT_data = io_enq_bits_bits_task_reqSource;
  assign ram_bits_task_reqSource_MPORT_addr = 1'h0;
  assign ram_bits_task_reqSource_MPORT_mask = 1'h1;
  assign ram_bits_task_reqSource_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_id_io_deq_bits_MPORT_en = 1'h1;
  assign ram_id_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = 1'h0;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = io_deq_ready | empty; // @[Decoupled.scala 289:16 309:{24,39}]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_bits_task_channel = ram_bits_task_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_set = ram_bits_task_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_tag = ram_bits_task_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_off = ram_bits_task_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_opcode = ram_bits_task_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_param = ram_bits_task_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_size = ram_bits_task_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_sourceId = ram_bits_task_sourceId_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_bufIdx = ram_bits_task_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_needProbeAckData = ram_bits_task_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_mshrTask = ram_bits_task_mshrTask_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_mshrId = ram_bits_task_mshrId_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_useProbeData = ram_bits_task_useProbeData_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_dirty = ram_bits_task_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_way = ram_bits_task_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_meta_dirty = ram_bits_task_meta_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_meta_state = ram_bits_task_meta_state_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_meta_clients = ram_bits_task_meta_clients_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_meta_accessed = ram_bits_task_meta_accessed_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_metaWen = ram_bits_task_metaWen_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_tagWen = ram_bits_task_tagWen_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_dsWen = ram_bits_task_dsWen_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_replTask = ram_bits_task_replTask_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bits_task_reqSource = ram_bits_task_reqSource_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_bits_task_channel_MPORT_en & ram_bits_task_channel_MPORT_mask) begin
      ram_bits_task_channel[ram_bits_task_channel_MPORT_addr] <= ram_bits_task_channel_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_set_MPORT_en & ram_bits_task_set_MPORT_mask) begin
      ram_bits_task_set[ram_bits_task_set_MPORT_addr] <= ram_bits_task_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_tag_MPORT_en & ram_bits_task_tag_MPORT_mask) begin
      ram_bits_task_tag[ram_bits_task_tag_MPORT_addr] <= ram_bits_task_tag_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_off_MPORT_en & ram_bits_task_off_MPORT_mask) begin
      ram_bits_task_off[ram_bits_task_off_MPORT_addr] <= ram_bits_task_off_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_opcode_MPORT_en & ram_bits_task_opcode_MPORT_mask) begin
      ram_bits_task_opcode[ram_bits_task_opcode_MPORT_addr] <= ram_bits_task_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_param_MPORT_en & ram_bits_task_param_MPORT_mask) begin
      ram_bits_task_param[ram_bits_task_param_MPORT_addr] <= ram_bits_task_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_size_MPORT_en & ram_bits_task_size_MPORT_mask) begin
      ram_bits_task_size[ram_bits_task_size_MPORT_addr] <= ram_bits_task_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_sourceId_MPORT_en & ram_bits_task_sourceId_MPORT_mask) begin
      ram_bits_task_sourceId[ram_bits_task_sourceId_MPORT_addr] <= ram_bits_task_sourceId_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_bufIdx_MPORT_en & ram_bits_task_bufIdx_MPORT_mask) begin
      ram_bits_task_bufIdx[ram_bits_task_bufIdx_MPORT_addr] <= ram_bits_task_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_needProbeAckData_MPORT_en & ram_bits_task_needProbeAckData_MPORT_mask) begin
      ram_bits_task_needProbeAckData[ram_bits_task_needProbeAckData_MPORT_addr] <=
        ram_bits_task_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_mshrTask_MPORT_en & ram_bits_task_mshrTask_MPORT_mask) begin
      ram_bits_task_mshrTask[ram_bits_task_mshrTask_MPORT_addr] <= ram_bits_task_mshrTask_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_mshrId_MPORT_en & ram_bits_task_mshrId_MPORT_mask) begin
      ram_bits_task_mshrId[ram_bits_task_mshrId_MPORT_addr] <= ram_bits_task_mshrId_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_useProbeData_MPORT_en & ram_bits_task_useProbeData_MPORT_mask) begin
      ram_bits_task_useProbeData[ram_bits_task_useProbeData_MPORT_addr] <= ram_bits_task_useProbeData_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_dirty_MPORT_en & ram_bits_task_dirty_MPORT_mask) begin
      ram_bits_task_dirty[ram_bits_task_dirty_MPORT_addr] <= ram_bits_task_dirty_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_way_MPORT_en & ram_bits_task_way_MPORT_mask) begin
      ram_bits_task_way[ram_bits_task_way_MPORT_addr] <= ram_bits_task_way_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_meta_dirty_MPORT_en & ram_bits_task_meta_dirty_MPORT_mask) begin
      ram_bits_task_meta_dirty[ram_bits_task_meta_dirty_MPORT_addr] <= ram_bits_task_meta_dirty_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_meta_state_MPORT_en & ram_bits_task_meta_state_MPORT_mask) begin
      ram_bits_task_meta_state[ram_bits_task_meta_state_MPORT_addr] <= ram_bits_task_meta_state_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_meta_clients_MPORT_en & ram_bits_task_meta_clients_MPORT_mask) begin
      ram_bits_task_meta_clients[ram_bits_task_meta_clients_MPORT_addr] <= ram_bits_task_meta_clients_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_meta_accessed_MPORT_en & ram_bits_task_meta_accessed_MPORT_mask) begin
      ram_bits_task_meta_accessed[ram_bits_task_meta_accessed_MPORT_addr] <= ram_bits_task_meta_accessed_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_metaWen_MPORT_en & ram_bits_task_metaWen_MPORT_mask) begin
      ram_bits_task_metaWen[ram_bits_task_metaWen_MPORT_addr] <= ram_bits_task_metaWen_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_tagWen_MPORT_en & ram_bits_task_tagWen_MPORT_mask) begin
      ram_bits_task_tagWen[ram_bits_task_tagWen_MPORT_addr] <= ram_bits_task_tagWen_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_dsWen_MPORT_en & ram_bits_task_dsWen_MPORT_mask) begin
      ram_bits_task_dsWen[ram_bits_task_dsWen_MPORT_addr] <= ram_bits_task_dsWen_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_replTask_MPORT_en & ram_bits_task_replTask_MPORT_mask) begin
      ram_bits_task_replTask[ram_bits_task_replTask_MPORT_addr] <= ram_bits_task_replTask_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bits_task_reqSource_MPORT_en & ram_bits_task_reqSource_MPORT_mask) begin
      ram_bits_task_reqSource[ram_bits_task_reqSource_MPORT_addr] <= ram_bits_task_reqSource_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 259:95]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 279:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 280:16]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 262:27]
      maybe_full <= do_enq;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_channel[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_set[initvar] = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_tag[initvar] = _RAND_2[21:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_off[initvar] = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_opcode[initvar] = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_param[initvar] = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_size[initvar] = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_sourceId[initvar] = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_bufIdx[initvar] = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_needProbeAckData[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_mshrTask[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_mshrId[initvar] = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_useProbeData[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_dirty[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_way[initvar] = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_meta_dirty[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_meta_state[initvar] = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_meta_clients[initvar] = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_meta_accessed[initvar] = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_metaWen[initvar] = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_tagWen[initvar] = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_dsWen[initvar] = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_replTask[initvar] = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bits_task_reqSource[initvar] = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_id[initvar] = _RAND_24[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  maybe_full = _RAND_25[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    maybe_full = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

