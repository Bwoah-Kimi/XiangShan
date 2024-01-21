module Queue_194(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [9:0]  io_enq_bits_source,
  input  [7:0]  io_enq_bits_set,
  input  [21:0] io_enq_bits_tag,
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
  output [3:0]  io_deq_bits_reqSource,
  output [2:0]  io_count
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_30;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_channel [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_channel_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_opcode [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_param [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_size [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [9:0] ram_source [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [9:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [9:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_set [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [21:0] ram_tag [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [21:0] ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [21:0] ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_off [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_off_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_off_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_off_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_en; // @[Decoupled.scala 259:95]
  reg [31:0] ram_mask [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_mask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_mask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bufIdx [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_preferCache [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_preferCache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_preferCache_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_dirty [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromProbeHelper [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_fromProbeHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_fromProbeHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromCmoHelper [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_fromCmoHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_fromCmoHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_needProbeAckData [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_needProbeAckData_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_needProbeAckData_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_reqSource [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_reqSource_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_reqSource_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_reqSource_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_reqSource_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_reqSource_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [2:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  wrap = enq_ptr_value == 3'h4; // @[Counter.scala 74:24]
  wire [2:0] _value_T_1 = enq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  wire  wrap_1 = deq_ptr_value == 3'h4; // @[Counter.scala 74:24]
  wire [2:0] _value_T_3 = deq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  wire [2:0] ptr_diff = enq_ptr_value - deq_ptr_value; // @[Decoupled.scala 312:32]
  wire [2:0] _io_count_T = maybe_full ? 3'h5 : 3'h0; // @[Decoupled.scala 319:10]
  wire [2:0] _io_count_T_3 = 3'h5 + ptr_diff; // @[Decoupled.scala 320:57]
  wire [2:0] _io_count_T_4 = deq_ptr_value > enq_ptr_value ? _io_count_T_3 : ptr_diff; // @[Decoupled.scala 320:10]
  assign ram_channel_io_deq_bits_MPORT_en = 1'h1;
  assign ram_channel_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_channel_io_deq_bits_MPORT_data = ram_channel[ram_channel_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_channel_io_deq_bits_MPORT_data = ram_channel_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_1[2:0] :
    ram_channel[ram_channel_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_channel_MPORT_data = 3'h2;
  assign ram_channel_MPORT_addr = enq_ptr_value;
  assign ram_channel_MPORT_mask = 1'h1;
  assign ram_channel_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_3[2:0] :
    ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_opcode_MPORT_data = 3'h6;
  assign ram_opcode_MPORT_addr = enq_ptr_value;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_param_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_param_io_deq_bits_MPORT_data = ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_param_io_deq_bits_MPORT_data = ram_param_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_5[2:0] :
    ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_param_MPORT_data = 3'h2;
  assign ram_param_MPORT_addr = enq_ptr_value;
  assign ram_param_MPORT_mask = 1'h1;
  assign ram_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_size_io_deq_bits_MPORT_data = ram_size_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_7[2:0] :
    ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_size_MPORT_data = 3'h6;
  assign ram_size_MPORT_addr = enq_ptr_value;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_source_io_deq_bits_MPORT_data = ram_source_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_9[9:0] :
    ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = enq_ptr_value;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_set_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_set_io_deq_bits_MPORT_data = ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_set_io_deq_bits_MPORT_data = ram_set_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_11[7:0] :
    ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_set_MPORT_data = io_enq_bits_set;
  assign ram_set_MPORT_addr = enq_ptr_value;
  assign ram_set_MPORT_mask = 1'h1;
  assign ram_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tag_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_tag_io_deq_bits_MPORT_data = ram_tag[ram_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_tag_io_deq_bits_MPORT_data = ram_tag_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_13[21:0] :
    ram_tag[ram_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_tag_MPORT_data = io_enq_bits_tag;
  assign ram_tag_MPORT_addr = enq_ptr_value;
  assign ram_tag_MPORT_mask = 1'h1;
  assign ram_tag_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_off_io_deq_bits_MPORT_en = 1'h1;
  assign ram_off_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_off_io_deq_bits_MPORT_data = ram_off[ram_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_off_io_deq_bits_MPORT_data = ram_off_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_15[5:0] :
    ram_off[ram_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_off_MPORT_data = 6'h0;
  assign ram_off_MPORT_addr = enq_ptr_value;
  assign ram_off_MPORT_mask = 1'h1;
  assign ram_off_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_mask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_mask_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_17[31:0] :
    ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_mask_MPORT_data = 32'h0;
  assign ram_mask_MPORT_addr = enq_ptr_value;
  assign ram_mask_MPORT_mask = 1'h1;
  assign ram_mask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bufIdx_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bufIdx_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_bufIdx_io_deq_bits_MPORT_data = ram_bufIdx[ram_bufIdx_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_bufIdx_io_deq_bits_MPORT_data = ram_bufIdx_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_19[2:0] :
    ram_bufIdx[ram_bufIdx_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_bufIdx_MPORT_data = 3'h0;
  assign ram_bufIdx_MPORT_addr = enq_ptr_value;
  assign ram_bufIdx_MPORT_mask = 1'h1;
  assign ram_bufIdx_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_preferCache_io_deq_bits_MPORT_en = 1'h1;
  assign ram_preferCache_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_preferCache_io_deq_bits_MPORT_data = ram_preferCache[ram_preferCache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_preferCache_io_deq_bits_MPORT_data = ram_preferCache_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_21[0:0] :
    ram_preferCache[ram_preferCache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_preferCache_MPORT_data = 1'h1;
  assign ram_preferCache_MPORT_addr = enq_ptr_value;
  assign ram_preferCache_MPORT_mask = 1'h1;
  assign ram_preferCache_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dirty_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_dirty_io_deq_bits_MPORT_data = ram_dirty[ram_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_dirty_io_deq_bits_MPORT_data = ram_dirty_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_23[0:0] :
    ram_dirty[ram_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_dirty_MPORT_data = 1'h0;
  assign ram_dirty_MPORT_addr = enq_ptr_value;
  assign ram_dirty_MPORT_mask = 1'h1;
  assign ram_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_fromProbeHelper_io_deq_bits_MPORT_data = ram_fromProbeHelper[ram_fromProbeHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_fromProbeHelper_io_deq_bits_MPORT_data = ram_fromProbeHelper_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_25[0:0]
     : ram_fromProbeHelper[ram_fromProbeHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_fromProbeHelper_MPORT_data = 1'h1;
  assign ram_fromProbeHelper_MPORT_addr = enq_ptr_value;
  assign ram_fromProbeHelper_MPORT_mask = 1'h1;
  assign ram_fromProbeHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_fromCmoHelper_io_deq_bits_MPORT_data = ram_fromCmoHelper[ram_fromCmoHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_fromCmoHelper_io_deq_bits_MPORT_data = ram_fromCmoHelper_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_27[0:0] :
    ram_fromCmoHelper[ram_fromCmoHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_fromCmoHelper_MPORT_data = 1'h0;
  assign ram_fromCmoHelper_MPORT_addr = enq_ptr_value;
  assign ram_fromCmoHelper_MPORT_mask = 1'h1;
  assign ram_fromCmoHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_needProbeAckData_io_deq_bits_MPORT_en = 1'h1;
  assign ram_needProbeAckData_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_needProbeAckData_io_deq_bits_MPORT_data = ram_needProbeAckData[ram_needProbeAckData_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  `else
  assign ram_needProbeAckData_io_deq_bits_MPORT_data = ram_needProbeAckData_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_29[0
    :0] : ram_needProbeAckData[ram_needProbeAckData_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_needProbeAckData_MPORT_data = 1'h0;
  assign ram_needProbeAckData_MPORT_addr = enq_ptr_value;
  assign ram_needProbeAckData_MPORT_mask = 1'h1;
  assign ram_needProbeAckData_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_reqSource_io_deq_bits_MPORT_en = 1'h1;
  assign ram_reqSource_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_reqSource_io_deq_bits_MPORT_data = ram_reqSource[ram_reqSource_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_reqSource_io_deq_bits_MPORT_data = ram_reqSource_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_31[3:0] :
    ram_reqSource[ram_reqSource_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_reqSource_MPORT_data = 4'h0;
  assign ram_reqSource_MPORT_addr = enq_ptr_value;
  assign ram_reqSource_MPORT_mask = 1'h1;
  assign ram_reqSource_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
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
  assign io_count = ptr_match ? _io_count_T : _io_count_T_4; // @[Decoupled.scala 317:20]
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
    if (reset) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= 3'h0; // @[Counter.scala 78:15 88:{20,28}]
    end else if (do_enq) begin // @[Counter.scala 62:40]
      if (wrap) begin
        enq_ptr_value <= 3'h0;
      end else begin
        enq_ptr_value <= _value_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= 3'h0; // @[Counter.scala 78:15 88:{20,28}]
    end else if (do_deq) begin // @[Counter.scala 62:40]
      if (wrap_1) begin
        deq_ptr_value <= 3'h0;
      end else begin
        deq_ptr_value <= _value_T_3;
      end
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  _RAND_7 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  _RAND_15 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  _RAND_19 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  _RAND_23 = {1{`RANDOM}};
  _RAND_25 = {1{`RANDOM}};
  _RAND_27 = {1{`RANDOM}};
  _RAND_29 = {1{`RANDOM}};
  _RAND_31 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_channel[initvar] = _RAND_0[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_2[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_param[initvar] = _RAND_4[2:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_size[initvar] = _RAND_6[2:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_source[initvar] = _RAND_8[9:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_set[initvar] = _RAND_10[7:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_tag[initvar] = _RAND_12[21:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_off[initvar] = _RAND_14[5:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_mask[initvar] = _RAND_16[31:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_bufIdx[initvar] = _RAND_18[2:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_preferCache[initvar] = _RAND_20[0:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_dirty[initvar] = _RAND_22[0:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_fromProbeHelper[initvar] = _RAND_24[0:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_fromCmoHelper[initvar] = _RAND_26[0:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_needProbeAckData[initvar] = _RAND_28[0:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram_reqSource[initvar] = _RAND_30[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  enq_ptr_value = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  deq_ptr_value = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  maybe_full = _RAND_34[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    enq_ptr_value = 3'h0;
  end
  if (reset) begin
    deq_ptr_value = 3'h0;
  end
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

