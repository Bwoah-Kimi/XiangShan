module C22(
  input   io_in_0,
  input   io_in_1,
  output  io_out_0,
  output  io_out_1
);
  wire  sum = io_in_0 ^ io_in_1; // @[CSA.scala 33:17]
  wire  cout = io_in_0 & io_in_1; // @[CSA.scala 34:18]
  wire [1:0] temp_0 = {cout,sum}; // @[Cat.scala 31:58]
  assign io_out_0 = temp_0[0]; // @[CSA.scala 37:73]
  assign io_out_1 = temp_0[1]; // @[CSA.scala 37:73]
endmodule

