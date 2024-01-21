module Arbiter(
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits_data,
  output        io_out_valid,
  output [31:0] io_out_bits_data
);
  assign io_out_valid = io_in_0_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_data = io_in_0_bits_data; // @[Arbiter.scala 139:15]
endmodule

