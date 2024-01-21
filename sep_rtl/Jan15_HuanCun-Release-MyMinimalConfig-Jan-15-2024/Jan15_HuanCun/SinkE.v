module SinkE(
  output       io_e_ready,
  input        io_e_valid,
  input  [3:0] io_e_bits_sink,
  output       io_resp_valid,
  output [3:0] io_resp_bits_sink
);
  assign io_e_ready = 1'h1; // @[SinkE.scala 33:11]
  assign io_resp_valid = io_e_ready & io_e_valid; // @[Decoupled.scala 50:35]
  assign io_resp_bits_sink = io_e_bits_sink; // @[SinkE.scala 35:21]
endmodule

