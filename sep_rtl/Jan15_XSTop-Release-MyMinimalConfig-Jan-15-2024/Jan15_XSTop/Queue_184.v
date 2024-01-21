module Queue_184(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input        io_enq_bits_counter,
  input        io_enq_bits_beat,
  input        io_enq_bits_last,
  input        io_enq_bits_needPb,
  input        io_enq_bits_isReleaseAck,
  input  [9:0] io_enq_bits_req_sourceId,
  input  [7:0] io_enq_bits_req_set,
  input  [2:0] io_enq_bits_req_opcode,
  input  [2:0] io_enq_bits_req_param,
  input  [2:0] io_enq_bits_req_size,
  input  [2:0] io_enq_bits_req_way,
  input        io_enq_bits_req_denied,
  input  [3:0] io_enq_bits_req_sinkId,
  input        io_enq_bits_req_dirty,
  input        io_deq_ready,
  output       io_deq_valid,
  output       io_deq_bits_counter,
  output       io_deq_bits_beat,
  output       io_deq_bits_last,
  output       io_deq_bits_needPb,
  output       io_deq_bits_isReleaseAck,
  output [9:0] io_deq_bits_req_sourceId,
  output [7:0] io_deq_bits_req_set,
  output [2:0] io_deq_bits_req_opcode,
  output [2:0] io_deq_bits_req_param,
  output [2:0] io_deq_bits_req_size,
  output [2:0] io_deq_bits_req_way,
  output       io_deq_bits_req_denied,
  output [3:0] io_deq_bits_req_sinkId,
  output       io_deq_bits_req_dirty
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  reg  ram_counter [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_counter_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_counter_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_counter_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_counter_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_counter_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_counter_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_counter_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_beat [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_beat_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_beat_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_beat_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_beat_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_beat_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_beat_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_beat_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_last [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_needPb [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_needPb_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_needPb_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needPb_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needPb_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needPb_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needPb_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_needPb_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_isReleaseAck [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_isReleaseAck_MPORT_en; // @[Decoupled.scala 259:95]
  reg [9:0] ram_req_sourceId [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_sourceId_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_sourceId_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [9:0] ram_req_sourceId_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [9:0] ram_req_sourceId_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_sourceId_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_sourceId_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_sourceId_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_req_set [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_req_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_req_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_req_opcode [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_req_param [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_req_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_req_way [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_way_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_way_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_req_way_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_way_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_way_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_way_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_req_denied [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_denied_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_req_sinkId [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_sinkId_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_sinkId_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_req_sinkId_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_req_sinkId_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_sinkId_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_sinkId_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_sinkId_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_req_dirty [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_req_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_counter_io_deq_bits_MPORT_en = 1'h1;
  assign ram_counter_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_counter_io_deq_bits_MPORT_data = ram_counter[ram_counter_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_counter_MPORT_data = io_enq_bits_counter;
  assign ram_counter_MPORT_addr = 1'h0;
  assign ram_counter_MPORT_mask = 1'h1;
  assign ram_counter_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_beat_io_deq_bits_MPORT_en = 1'h1;
  assign ram_beat_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_beat_io_deq_bits_MPORT_data = ram_beat[ram_beat_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_beat_MPORT_data = io_enq_bits_beat;
  assign ram_beat_MPORT_addr = 1'h0;
  assign ram_beat_MPORT_mask = 1'h1;
  assign ram_beat_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = 1'h0;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_needPb_io_deq_bits_MPORT_en = 1'h1;
  assign ram_needPb_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_needPb_io_deq_bits_MPORT_data = ram_needPb[ram_needPb_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_needPb_MPORT_data = io_enq_bits_needPb;
  assign ram_needPb_MPORT_addr = 1'h0;
  assign ram_needPb_MPORT_mask = 1'h1;
  assign ram_needPb_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_isReleaseAck_io_deq_bits_MPORT_en = 1'h1;
  assign ram_isReleaseAck_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_isReleaseAck_io_deq_bits_MPORT_data = ram_isReleaseAck[ram_isReleaseAck_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_isReleaseAck_MPORT_data = io_enq_bits_isReleaseAck;
  assign ram_isReleaseAck_MPORT_addr = 1'h0;
  assign ram_isReleaseAck_MPORT_mask = 1'h1;
  assign ram_isReleaseAck_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_sourceId_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_sourceId_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_sourceId_io_deq_bits_MPORT_data = ram_req_sourceId[ram_req_sourceId_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_sourceId_MPORT_data = io_enq_bits_req_sourceId;
  assign ram_req_sourceId_MPORT_addr = 1'h0;
  assign ram_req_sourceId_MPORT_mask = 1'h1;
  assign ram_req_sourceId_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_set_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_set_io_deq_bits_MPORT_data = ram_req_set[ram_req_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_set_MPORT_data = io_enq_bits_req_set;
  assign ram_req_set_MPORT_addr = 1'h0;
  assign ram_req_set_MPORT_mask = 1'h1;
  assign ram_req_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_opcode_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_opcode_io_deq_bits_MPORT_data = ram_req_opcode[ram_req_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_opcode_MPORT_data = io_enq_bits_req_opcode;
  assign ram_req_opcode_MPORT_addr = 1'h0;
  assign ram_req_opcode_MPORT_mask = 1'h1;
  assign ram_req_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_param_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_param_io_deq_bits_MPORT_data = ram_req_param[ram_req_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_param_MPORT_data = io_enq_bits_req_param;
  assign ram_req_param_MPORT_addr = 1'h0;
  assign ram_req_param_MPORT_mask = 1'h1;
  assign ram_req_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_size_io_deq_bits_MPORT_data = ram_req_size[ram_req_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_size_MPORT_data = io_enq_bits_req_size;
  assign ram_req_size_MPORT_addr = 1'h0;
  assign ram_req_size_MPORT_mask = 1'h1;
  assign ram_req_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_way_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_way_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_way_io_deq_bits_MPORT_data = ram_req_way[ram_req_way_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_way_MPORT_data = io_enq_bits_req_way;
  assign ram_req_way_MPORT_addr = 1'h0;
  assign ram_req_way_MPORT_mask = 1'h1;
  assign ram_req_way_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_denied_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_denied_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_denied_io_deq_bits_MPORT_data = ram_req_denied[ram_req_denied_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_denied_MPORT_data = io_enq_bits_req_denied;
  assign ram_req_denied_MPORT_addr = 1'h0;
  assign ram_req_denied_MPORT_mask = 1'h1;
  assign ram_req_denied_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_sinkId_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_sinkId_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_sinkId_io_deq_bits_MPORT_data = ram_req_sinkId[ram_req_sinkId_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_sinkId_MPORT_data = io_enq_bits_req_sinkId;
  assign ram_req_sinkId_MPORT_addr = 1'h0;
  assign ram_req_sinkId_MPORT_mask = 1'h1;
  assign ram_req_sinkId_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_req_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_req_dirty_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_req_dirty_io_deq_bits_MPORT_data = ram_req_dirty[ram_req_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_req_dirty_MPORT_data = io_enq_bits_req_dirty;
  assign ram_req_dirty_MPORT_addr = 1'h0;
  assign ram_req_dirty_MPORT_mask = 1'h1;
  assign ram_req_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = io_deq_ready | empty; // @[Decoupled.scala 289:16 309:{24,39}]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_counter = ram_counter_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_beat = ram_beat_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_needPb = ram_needPb_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_isReleaseAck = ram_isReleaseAck_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_sourceId = ram_req_sourceId_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_set = ram_req_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_opcode = ram_req_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_param = ram_req_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_size = ram_req_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_way = ram_req_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_denied = ram_req_denied_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_sinkId = ram_req_sinkId_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_req_dirty = ram_req_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_counter_MPORT_en & ram_counter_MPORT_mask) begin
      ram_counter[ram_counter_MPORT_addr] <= ram_counter_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_beat_MPORT_en & ram_beat_MPORT_mask) begin
      ram_beat[ram_beat_MPORT_addr] <= ram_beat_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_needPb_MPORT_en & ram_needPb_MPORT_mask) begin
      ram_needPb[ram_needPb_MPORT_addr] <= ram_needPb_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_isReleaseAck_MPORT_en & ram_isReleaseAck_MPORT_mask) begin
      ram_isReleaseAck[ram_isReleaseAck_MPORT_addr] <= ram_isReleaseAck_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_sourceId_MPORT_en & ram_req_sourceId_MPORT_mask) begin
      ram_req_sourceId[ram_req_sourceId_MPORT_addr] <= ram_req_sourceId_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_set_MPORT_en & ram_req_set_MPORT_mask) begin
      ram_req_set[ram_req_set_MPORT_addr] <= ram_req_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_opcode_MPORT_en & ram_req_opcode_MPORT_mask) begin
      ram_req_opcode[ram_req_opcode_MPORT_addr] <= ram_req_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_param_MPORT_en & ram_req_param_MPORT_mask) begin
      ram_req_param[ram_req_param_MPORT_addr] <= ram_req_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_size_MPORT_en & ram_req_size_MPORT_mask) begin
      ram_req_size[ram_req_size_MPORT_addr] <= ram_req_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_way_MPORT_en & ram_req_way_MPORT_mask) begin
      ram_req_way[ram_req_way_MPORT_addr] <= ram_req_way_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_denied_MPORT_en & ram_req_denied_MPORT_mask) begin
      ram_req_denied[ram_req_denied_MPORT_addr] <= ram_req_denied_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_sinkId_MPORT_en & ram_req_sinkId_MPORT_mask) begin
      ram_req_sinkId[ram_req_sinkId_MPORT_addr] <= ram_req_sinkId_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_req_dirty_MPORT_en & ram_req_dirty_MPORT_mask) begin
      ram_req_dirty[ram_req_dirty_MPORT_addr] <= ram_req_dirty_MPORT_data; // @[Decoupled.scala 259:95]
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
    ram_counter[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_beat[initvar] = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_last[initvar] = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_needPb[initvar] = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_isReleaseAck[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_sourceId[initvar] = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_set[initvar] = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_opcode[initvar] = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_param[initvar] = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_size[initvar] = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_way[initvar] = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_denied[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_sinkId[initvar] = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_req_dirty[initvar] = _RAND_13[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  maybe_full = _RAND_14[0:0];
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

