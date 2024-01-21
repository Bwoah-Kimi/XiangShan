module Queue_193(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_channel,
  input  [2:0]  io_enq_bits_opcode,
  input  [2:0]  io_enq_bits_param,
  input  [2:0]  io_enq_bits_size,
  input  [9:0]  io_enq_bits_source,
  input  [7:0]  io_enq_bits_set,
  input  [21:0] io_enq_bits_tag,
  input  [5:0]  io_enq_bits_off,
  input  [31:0] io_enq_bits_mask,
  input  [2:0]  io_enq_bits_bufIdx,
  input         io_enq_bits_preferCache,
  input         io_enq_bits_dirty,
  input         io_enq_bits_fromProbeHelper,
  input         io_enq_bits_fromCmoHelper,
  input         io_enq_bits_needProbeAckData,
  input  [3:0]  io_enq_bits_reqSource,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_channel,
  output [2:0]  io_deq_bits_opcode,
  output [2:0]  io_deq_bits_param,
  output [2:0]  io_deq_bits_size,
  output [9:0]  io_deq_bits_source,
  output [7:0]  io_deq_bits_set,
  output [21:0] io_deq_bits_tag,
  output [5:0]  io_deq_bits_off,
  output [31:0] io_deq_bits_mask,
  output [2:0]  io_deq_bits_bufIdx,
  output        io_deq_bits_preferCache,
  output        io_deq_bits_dirty,
  output        io_deq_bits_fromProbeHelper,
  output        io_deq_bits_fromCmoHelper,
  output        io_deq_bits_needProbeAckData,
  output [3:0]  io_deq_bits_reqSource
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_channel [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_channel_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_channel_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_opcode [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_param [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [9:0] ram_source [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [9:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [9:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_set [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [21:0] ram_tag [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [21:0] ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [21:0] ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_off [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_off_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_off_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_en; // @[Decoupled.scala 259:95]
  reg [31:0] ram_mask [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bufIdx [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_preferCache [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_dirty [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromProbeHelper [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromCmoHelper [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_needProbeAckData [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_reqSource [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_reqSource_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_reqSource_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_channel_io_deq_bits_MPORT_en = 1'h1;
  assign ram_channel_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_channel_io_deq_bits_MPORT_data = ram_channel[ram_channel_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_channel_MPORT_data = io_enq_bits_channel;
  assign ram_channel_MPORT_addr = 1'h0;
  assign ram_channel_MPORT_mask = 1'h1;
  assign ram_channel_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_opcode_MPORT_data = io_enq_bits_opcode;
  assign ram_opcode_MPORT_addr = 1'h0;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_param_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_param_io_deq_bits_MPORT_data = ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_param_MPORT_data = io_enq_bits_param;
  assign ram_param_MPORT_addr = 1'h0;
  assign ram_param_MPORT_mask = 1'h1;
  assign ram_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = 1'h0;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = 1'h0;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_set_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_set_io_deq_bits_MPORT_data = ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_set_MPORT_data = io_enq_bits_set;
  assign ram_set_MPORT_addr = 1'h0;
  assign ram_set_MPORT_mask = 1'h1;
  assign ram_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tag_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_tag_io_deq_bits_MPORT_data = ram_tag[ram_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_tag_MPORT_data = io_enq_bits_tag;
  assign ram_tag_MPORT_addr = 1'h0;
  assign ram_tag_MPORT_mask = 1'h1;
  assign ram_tag_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_off_io_deq_bits_MPORT_en = 1'h1;
  assign ram_off_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_off_io_deq_bits_MPORT_data = ram_off[ram_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_off_MPORT_data = io_enq_bits_off;
  assign ram_off_MPORT_addr = 1'h0;
  assign ram_off_MPORT_mask = 1'h1;
  assign ram_off_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_mask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_mask_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_mask_MPORT_data = io_enq_bits_mask;
  assign ram_mask_MPORT_addr = 1'h0;
  assign ram_mask_MPORT_mask = 1'h1;
  assign ram_mask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bufIdx_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bufIdx_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bufIdx_io_deq_bits_MPORT_data = ram_bufIdx[ram_bufIdx_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bufIdx_MPORT_data = io_enq_bits_bufIdx;
  assign ram_bufIdx_MPORT_addr = 1'h0;
  assign ram_bufIdx_MPORT_mask = 1'h1;
  assign ram_bufIdx_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_preferCache_io_deq_bits_MPORT_en = 1'h1;
  assign ram_preferCache_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_preferCache_io_deq_bits_MPORT_data = ram_preferCache[ram_preferCache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_preferCache_MPORT_data = io_enq_bits_preferCache;
  assign ram_preferCache_MPORT_addr = 1'h0;
  assign ram_preferCache_MPORT_mask = 1'h1;
  assign ram_preferCache_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dirty_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_dirty_io_deq_bits_MPORT_data = ram_dirty[ram_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_dirty_MPORT_data = io_enq_bits_dirty;
  assign ram_dirty_MPORT_addr = 1'h0;
  assign ram_dirty_MPORT_mask = 1'h1;
  assign ram_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_data = ram_fromProbeHelper[ram_fromProbeHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_fromProbeHelper_MPORT_data = io_enq_bits_fromProbeHelper;
  assign ram_fromProbeHelper_MPORT_addr = 1'h0;
  assign ram_fromProbeHelper_MPORT_mask = 1'h1;
  assign ram_fromProbeHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_data = ram_fromCmoHelper[ram_fromCmoHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_fromCmoHelper_MPORT_data = io_enq_bits_fromCmoHelper;
  assign ram_fromCmoHelper_MPORT_addr = 1'h0;
  assign ram_fromCmoHelper_MPORT_mask = 1'h1;
  assign ram_fromCmoHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_needProbeAckData_io_deq_bits_MPORT_en = 1'h1;
  assign ram_needProbeAckData_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_needProbeAckData_io_deq_bits_MPORT_data = ram_needProbeAckData[ram_needProbeAckData_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_needProbeAckData_MPORT_data = io_enq_bits_needProbeAckData;
  assign ram_needProbeAckData_MPORT_addr = 1'h0;
  assign ram_needProbeAckData_MPORT_mask = 1'h1;
  assign ram_needProbeAckData_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_reqSource_io_deq_bits_MPORT_en = 1'h1;
  assign ram_reqSource_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_reqSource_io_deq_bits_MPORT_data = ram_reqSource[ram_reqSource_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_reqSource_MPORT_data = io_enq_bits_reqSource;
  assign ram_reqSource_MPORT_addr = 1'h0;
  assign ram_reqSource_MPORT_mask = 1'h1;
  assign ram_reqSource_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = io_deq_ready | empty; // @[Decoupled.scala 289:16 309:{24,39}]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_channel = ram_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_opcode = ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_param = ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_size = ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_source = ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_set = ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_tag = ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_off = ram_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_mask = ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bufIdx = ram_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_preferCache = ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_dirty = ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_fromProbeHelper = ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_fromCmoHelper = ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_needProbeAckData = ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_reqSource = ram_reqSource_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_channel_MPORT_en & ram_channel_MPORT_mask) begin
      ram_channel[ram_channel_MPORT_addr] <= ram_channel_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_opcode_MPORT_en & ram_opcode_MPORT_mask) begin
      ram_opcode[ram_opcode_MPORT_addr] <= ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_param_MPORT_en & ram_param_MPORT_mask) begin
      ram_param[ram_param_MPORT_addr] <= ram_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_source_MPORT_en & ram_source_MPORT_mask) begin
      ram_source[ram_source_MPORT_addr] <= ram_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_set_MPORT_en & ram_set_MPORT_mask) begin
      ram_set[ram_set_MPORT_addr] <= ram_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_tag_MPORT_en & ram_tag_MPORT_mask) begin
      ram_tag[ram_tag_MPORT_addr] <= ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_off_MPORT_en & ram_off_MPORT_mask) begin
      ram_off[ram_off_MPORT_addr] <= ram_off_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_mask_MPORT_en & ram_mask_MPORT_mask) begin
      ram_mask[ram_mask_MPORT_addr] <= ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bufIdx_MPORT_en & ram_bufIdx_MPORT_mask) begin
      ram_bufIdx[ram_bufIdx_MPORT_addr] <= ram_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_preferCache_MPORT_en & ram_preferCache_MPORT_mask) begin
      ram_preferCache[ram_preferCache_MPORT_addr] <= ram_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_dirty_MPORT_en & ram_dirty_MPORT_mask) begin
      ram_dirty[ram_dirty_MPORT_addr] <= ram_dirty_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_fromProbeHelper_MPORT_en & ram_fromProbeHelper_MPORT_mask) begin
      ram_fromProbeHelper[ram_fromProbeHelper_MPORT_addr] <= ram_fromProbeHelper_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_fromCmoHelper_MPORT_en & ram_fromCmoHelper_MPORT_mask) begin
      ram_fromCmoHelper[ram_fromCmoHelper_MPORT_addr] <= ram_fromCmoHelper_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_needProbeAckData_MPORT_en & ram_needProbeAckData_MPORT_mask) begin
      ram_needProbeAckData[ram_needProbeAckData_MPORT_addr] <= ram_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_reqSource_MPORT_en & ram_reqSource_MPORT_mask) begin
      ram_reqSource[ram_reqSource_MPORT_addr] <= ram_reqSource_MPORT_data; // @[Decoupled.scala 259:95]
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
    ram_channel[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_param[initvar] = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_source[initvar] = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_set[initvar] = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_tag[initvar] = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_off[initvar] = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_mask[initvar] = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bufIdx[initvar] = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_preferCache[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_dirty[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_fromProbeHelper[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_fromCmoHelper[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_needProbeAckData[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_reqSource[initvar] = _RAND_15[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  maybe_full = _RAND_16[0:0];
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

