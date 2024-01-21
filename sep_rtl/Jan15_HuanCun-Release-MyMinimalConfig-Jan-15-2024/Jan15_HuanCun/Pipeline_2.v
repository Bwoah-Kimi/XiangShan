module Pipeline_2(
  input        clock,
  input        reset,
  output       io_in_ready,
  input        io_in_valid,
  input        io_in_bits_counter,
  input        io_in_bits_beat,
  input        io_in_bits_last,
  input        io_in_bits_needPb,
  input        io_in_bits_isReleaseAck,
  input  [9:0] io_in_bits_req_sourceId,
  input  [7:0] io_in_bits_req_set,
  input  [2:0] io_in_bits_req_opcode,
  input  [2:0] io_in_bits_req_param,
  input  [2:0] io_in_bits_req_size,
  input  [2:0] io_in_bits_req_way,
  input        io_in_bits_req_denied,
  input  [3:0] io_in_bits_req_sinkId,
  input        io_in_bits_req_dirty,
  input        io_out_ready,
  output       io_out_valid,
  output       io_out_bits_counter,
  output       io_out_bits_beat,
  output       io_out_bits_last,
  output       io_out_bits_needPb,
  output       io_out_bits_isReleaseAck,
  output [9:0] io_out_bits_req_sourceId,
  output [7:0] io_out_bits_req_set,
  output [2:0] io_out_bits_req_opcode,
  output [2:0] io_out_bits_req_param,
  output [2:0] io_out_bits_req_size,
  output [2:0] io_out_bits_req_way,
  output       io_out_bits_req_denied,
  output [3:0] io_out_bits_req_sinkId,
  output       io_out_bits_req_dirty
);
  wire  stages_0_clock; // @[Pipeline.scala 27:47]
  wire  stages_0_reset; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_counter; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_beat; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_last; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_needPb; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_isReleaseAck; // @[Pipeline.scala 27:47]
  wire [9:0] stages_0_io_enq_bits_req_sourceId; // @[Pipeline.scala 27:47]
  wire [7:0] stages_0_io_enq_bits_req_set; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_enq_bits_req_opcode; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_enq_bits_req_param; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_enq_bits_req_size; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_enq_bits_req_way; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_req_denied; // @[Pipeline.scala 27:47]
  wire [3:0] stages_0_io_enq_bits_req_sinkId; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_bits_req_dirty; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_ready; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_counter; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_beat; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_last; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_needPb; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_isReleaseAck; // @[Pipeline.scala 27:47]
  wire [9:0] stages_0_io_deq_bits_req_sourceId; // @[Pipeline.scala 27:47]
  wire [7:0] stages_0_io_deq_bits_req_set; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_deq_bits_req_opcode; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_deq_bits_req_param; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_deq_bits_req_size; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_deq_bits_req_way; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_req_denied; // @[Pipeline.scala 27:47]
  wire [3:0] stages_0_io_deq_bits_req_sinkId; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_bits_req_dirty; // @[Pipeline.scala 27:47]
  wire  stages_1_clock; // @[Pipeline.scala 27:47]
  wire  stages_1_reset; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_ready; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_valid; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_counter; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_beat; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_last; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_needPb; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_isReleaseAck; // @[Pipeline.scala 27:47]
  wire [9:0] stages_1_io_enq_bits_req_sourceId; // @[Pipeline.scala 27:47]
  wire [7:0] stages_1_io_enq_bits_req_set; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_enq_bits_req_opcode; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_enq_bits_req_param; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_enq_bits_req_size; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_enq_bits_req_way; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_req_denied; // @[Pipeline.scala 27:47]
  wire [3:0] stages_1_io_enq_bits_req_sinkId; // @[Pipeline.scala 27:47]
  wire  stages_1_io_enq_bits_req_dirty; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_ready; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_valid; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_counter; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_beat; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_last; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_needPb; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_isReleaseAck; // @[Pipeline.scala 27:47]
  wire [9:0] stages_1_io_deq_bits_req_sourceId; // @[Pipeline.scala 27:47]
  wire [7:0] stages_1_io_deq_bits_req_set; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_deq_bits_req_opcode; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_deq_bits_req_param; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_deq_bits_req_size; // @[Pipeline.scala 27:47]
  wire [2:0] stages_1_io_deq_bits_req_way; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_req_denied; // @[Pipeline.scala 27:47]
  wire [3:0] stages_1_io_deq_bits_req_sinkId; // @[Pipeline.scala 27:47]
  wire  stages_1_io_deq_bits_req_dirty; // @[Pipeline.scala 27:47]
  Queue_184 stages_0 ( // @[Pipeline.scala 27:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_counter(stages_0_io_enq_bits_counter),
    .io_enq_bits_beat(stages_0_io_enq_bits_beat),
    .io_enq_bits_last(stages_0_io_enq_bits_last),
    .io_enq_bits_needPb(stages_0_io_enq_bits_needPb),
    .io_enq_bits_isReleaseAck(stages_0_io_enq_bits_isReleaseAck),
    .io_enq_bits_req_sourceId(stages_0_io_enq_bits_req_sourceId),
    .io_enq_bits_req_set(stages_0_io_enq_bits_req_set),
    .io_enq_bits_req_opcode(stages_0_io_enq_bits_req_opcode),
    .io_enq_bits_req_param(stages_0_io_enq_bits_req_param),
    .io_enq_bits_req_size(stages_0_io_enq_bits_req_size),
    .io_enq_bits_req_way(stages_0_io_enq_bits_req_way),
    .io_enq_bits_req_denied(stages_0_io_enq_bits_req_denied),
    .io_enq_bits_req_sinkId(stages_0_io_enq_bits_req_sinkId),
    .io_enq_bits_req_dirty(stages_0_io_enq_bits_req_dirty),
    .io_deq_ready(stages_0_io_deq_ready),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_counter(stages_0_io_deq_bits_counter),
    .io_deq_bits_beat(stages_0_io_deq_bits_beat),
    .io_deq_bits_last(stages_0_io_deq_bits_last),
    .io_deq_bits_needPb(stages_0_io_deq_bits_needPb),
    .io_deq_bits_isReleaseAck(stages_0_io_deq_bits_isReleaseAck),
    .io_deq_bits_req_sourceId(stages_0_io_deq_bits_req_sourceId),
    .io_deq_bits_req_set(stages_0_io_deq_bits_req_set),
    .io_deq_bits_req_opcode(stages_0_io_deq_bits_req_opcode),
    .io_deq_bits_req_param(stages_0_io_deq_bits_req_param),
    .io_deq_bits_req_size(stages_0_io_deq_bits_req_size),
    .io_deq_bits_req_way(stages_0_io_deq_bits_req_way),
    .io_deq_bits_req_denied(stages_0_io_deq_bits_req_denied),
    .io_deq_bits_req_sinkId(stages_0_io_deq_bits_req_sinkId),
    .io_deq_bits_req_dirty(stages_0_io_deq_bits_req_dirty)
  );
  Queue_184 stages_1 ( // @[Pipeline.scala 27:47]
    .clock(stages_1_clock),
    .reset(stages_1_reset),
    .io_enq_ready(stages_1_io_enq_ready),
    .io_enq_valid(stages_1_io_enq_valid),
    .io_enq_bits_counter(stages_1_io_enq_bits_counter),
    .io_enq_bits_beat(stages_1_io_enq_bits_beat),
    .io_enq_bits_last(stages_1_io_enq_bits_last),
    .io_enq_bits_needPb(stages_1_io_enq_bits_needPb),
    .io_enq_bits_isReleaseAck(stages_1_io_enq_bits_isReleaseAck),
    .io_enq_bits_req_sourceId(stages_1_io_enq_bits_req_sourceId),
    .io_enq_bits_req_set(stages_1_io_enq_bits_req_set),
    .io_enq_bits_req_opcode(stages_1_io_enq_bits_req_opcode),
    .io_enq_bits_req_param(stages_1_io_enq_bits_req_param),
    .io_enq_bits_req_size(stages_1_io_enq_bits_req_size),
    .io_enq_bits_req_way(stages_1_io_enq_bits_req_way),
    .io_enq_bits_req_denied(stages_1_io_enq_bits_req_denied),
    .io_enq_bits_req_sinkId(stages_1_io_enq_bits_req_sinkId),
    .io_enq_bits_req_dirty(stages_1_io_enq_bits_req_dirty),
    .io_deq_ready(stages_1_io_deq_ready),
    .io_deq_valid(stages_1_io_deq_valid),
    .io_deq_bits_counter(stages_1_io_deq_bits_counter),
    .io_deq_bits_beat(stages_1_io_deq_bits_beat),
    .io_deq_bits_last(stages_1_io_deq_bits_last),
    .io_deq_bits_needPb(stages_1_io_deq_bits_needPb),
    .io_deq_bits_isReleaseAck(stages_1_io_deq_bits_isReleaseAck),
    .io_deq_bits_req_sourceId(stages_1_io_deq_bits_req_sourceId),
    .io_deq_bits_req_set(stages_1_io_deq_bits_req_set),
    .io_deq_bits_req_opcode(stages_1_io_deq_bits_req_opcode),
    .io_deq_bits_req_param(stages_1_io_deq_bits_req_param),
    .io_deq_bits_req_size(stages_1_io_deq_bits_req_size),
    .io_deq_bits_req_way(stages_1_io_deq_bits_req_way),
    .io_deq_bits_req_denied(stages_1_io_deq_bits_req_denied),
    .io_deq_bits_req_sinkId(stages_1_io_deq_bits_req_sinkId),
    .io_deq_bits_req_dirty(stages_1_io_deq_bits_req_dirty)
  );
  assign io_in_ready = stages_0_io_enq_ready; // @[Pipeline.scala 30:14]
  assign io_out_valid = stages_1_io_deq_valid; // @[Pipeline.scala 34:10]
  assign io_out_bits_counter = stages_1_io_deq_bits_counter; // @[Pipeline.scala 34:10]
  assign io_out_bits_beat = stages_1_io_deq_bits_beat; // @[Pipeline.scala 34:10]
  assign io_out_bits_last = stages_1_io_deq_bits_last; // @[Pipeline.scala 34:10]
  assign io_out_bits_needPb = stages_1_io_deq_bits_needPb; // @[Pipeline.scala 34:10]
  assign io_out_bits_isReleaseAck = stages_1_io_deq_bits_isReleaseAck; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_sourceId = stages_1_io_deq_bits_req_sourceId; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_set = stages_1_io_deq_bits_req_set; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_opcode = stages_1_io_deq_bits_req_opcode; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_param = stages_1_io_deq_bits_req_param; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_size = stages_1_io_deq_bits_req_size; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_way = stages_1_io_deq_bits_req_way; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_denied = stages_1_io_deq_bits_req_denied; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_sinkId = stages_1_io_deq_bits_req_sinkId; // @[Pipeline.scala 34:10]
  assign io_out_bits_req_dirty = stages_1_io_deq_bits_req_dirty; // @[Pipeline.scala 34:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_counter = io_in_bits_counter; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_beat = io_in_bits_beat; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_last = io_in_bits_last; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_needPb = io_in_bits_needPb; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_isReleaseAck = io_in_bits_isReleaseAck; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_sourceId = io_in_bits_req_sourceId; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_set = io_in_bits_req_set; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_opcode = io_in_bits_req_opcode; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_param = io_in_bits_req_param; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_size = io_in_bits_req_size; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_way = io_in_bits_req_way; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_denied = io_in_bits_req_denied; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_sinkId = io_in_bits_req_sinkId; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_req_dirty = io_in_bits_req_dirty; // @[Pipeline.scala 30:14]
  assign stages_0_io_deq_ready = stages_1_io_enq_ready; // @[Pipeline.scala 30:14]
  assign stages_1_clock = clock;
  assign stages_1_reset = reset;
  assign stages_1_io_enq_valid = stages_0_io_deq_valid; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_counter = stages_0_io_deq_bits_counter; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_beat = stages_0_io_deq_bits_beat; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_last = stages_0_io_deq_bits_last; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_needPb = stages_0_io_deq_bits_needPb; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_isReleaseAck = stages_0_io_deq_bits_isReleaseAck; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_sourceId = stages_0_io_deq_bits_req_sourceId; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_set = stages_0_io_deq_bits_req_set; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_opcode = stages_0_io_deq_bits_req_opcode; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_param = stages_0_io_deq_bits_req_param; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_size = stages_0_io_deq_bits_req_size; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_way = stages_0_io_deq_bits_req_way; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_denied = stages_0_io_deq_bits_req_denied; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_sinkId = stages_0_io_deq_bits_req_sinkId; // @[Pipeline.scala 30:14]
  assign stages_1_io_enq_bits_req_dirty = stages_0_io_deq_bits_req_dirty; // @[Pipeline.scala 30:14]
  assign stages_1_io_deq_ready = io_out_ready; // @[Pipeline.scala 34:10]
endmodule

