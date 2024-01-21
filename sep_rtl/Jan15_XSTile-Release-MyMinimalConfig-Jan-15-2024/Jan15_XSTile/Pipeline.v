module Pipeline(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [31:0] io_in_bits_sourceId,
  input         io_out_ready,
  output        io_out_valid,
  output [31:0] io_out_bits_sourceId
);
  wire  stages_0_clock; // @[Pipeline.scala 27:47]
  wire  stages_0_reset; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 27:47]
  wire [31:0] stages_0_io_enq_bits_sourceId; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_ready; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 27:47]
  wire [31:0] stages_0_io_deq_bits_sourceId; // @[Pipeline.scala 27:47]
  Queue_175 stages_0 ( // @[Pipeline.scala 27:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_sourceId(stages_0_io_enq_bits_sourceId),
    .io_deq_ready(stages_0_io_deq_ready),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_sourceId(stages_0_io_deq_bits_sourceId)
  );
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 34:10]
  assign io_out_bits_sourceId = stages_0_io_deq_bits_sourceId; // @[Pipeline.scala 34:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_sourceId = io_in_bits_sourceId; // @[Pipeline.scala 30:14]
  assign stages_0_io_deq_ready = io_out_ready; // @[Pipeline.scala 34:10]
endmodule

