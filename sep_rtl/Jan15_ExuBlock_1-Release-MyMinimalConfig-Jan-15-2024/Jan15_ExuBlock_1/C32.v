module C32(
  input   io_in_0,
  input   io_in_1,
  input   io_in_2,
  output  io_out_0,
  output  io_out_1
);
  wire  a_xor_b = io_in_0 ^ io_in_1; // @[CSA.scala 44:21]
  wire  a_and_b = io_in_0 & io_in_1; // @[CSA.scala 45:21]
  wire  sum = a_xor_b ^ io_in_2; // @[CSA.scala 46:23]
  wire  cout = a_and_b | a_xor_b & io_in_2; // @[CSA.scala 47:24]
  wire [1:0] temp_0 = {cout,sum}; // @[Cat.scala 31:58]
  assign io_out_0 = temp_0[0]; // @[CSA.scala 50:73]
  assign io_out_1 = temp_0[1]; // @[CSA.scala 50:73]
endmodule

