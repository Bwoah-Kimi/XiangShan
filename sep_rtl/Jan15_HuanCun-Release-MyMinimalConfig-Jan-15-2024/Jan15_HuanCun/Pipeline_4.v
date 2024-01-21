module Pipeline_4(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [7:0]  io_in_bits_set,
  input  [2:0]  io_in_bits_way,
  input  [21:0] io_in_bits_tag,
  output        io_out_valid,
  output [7:0]  io_out_bits_set,
  output [2:0]  io_out_bits_way,
  output [21:0] io_out_bits_tag
);
  wire  stages_0_clock; // @[Pipeline.scala 27:47]
  wire  stages_0_reset; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 27:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 27:47]
  wire [7:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_enq_bits_way; // @[Pipeline.scala 27:47]
  wire [21:0] stages_0_io_enq_bits_tag; // @[Pipeline.scala 27:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 27:47]
  wire [7:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 27:47]
  wire [2:0] stages_0_io_deq_bits_way; // @[Pipeline.scala 27:47]
  wire [21:0] stages_0_io_deq_bits_tag; // @[Pipeline.scala 27:47]
  Queue_196 stages_0 ( // @[Pipeline.scala 27:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_enq_bits_way(stages_0_io_enq_bits_way),
    .io_enq_bits_tag(stages_0_io_enq_bits_tag),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_set(stages_0_io_deq_bits_set),
    .io_deq_bits_way(stages_0_io_deq_bits_way),
    .io_deq_bits_tag(stages_0_io_deq_bits_tag)
  );
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 34:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 34:10]
  assign io_out_bits_way = stages_0_io_deq_bits_way; // @[Pipeline.scala 34:10]
  assign io_out_bits_tag = stages_0_io_deq_bits_tag; // @[Pipeline.scala 34:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_way = io_in_bits_way; // @[Pipeline.scala 30:14]
  assign stages_0_io_enq_bits_tag = io_in_bits_tag; // @[Pipeline.scala 30:14]
endmodule

