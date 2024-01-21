module Arbiter_43(
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits_sourceId,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [31:0] io_in_1_bits_sourceId,
  input         io_out_ready,
  output        io_out_valid,
  output [31:0] io_out_bits_sourceId,
  output        io_chosen
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_sourceId = io_in_0_valid ? io_in_0_bits_sourceId : io_in_1_bits_sourceId; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_chosen = io_in_0_valid ? 1'h0 : 1'h1; // @[Arbiter.scala 138:13 141:26 142:17]
endmodule

