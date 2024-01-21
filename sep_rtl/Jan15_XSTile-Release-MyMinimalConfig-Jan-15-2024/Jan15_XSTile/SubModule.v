module SubModule(
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  output [64:0] io_sub
);
  wire [63:0] _io_sub_T = ~io_src_1; // @[Alu.scala 42:28]
  wire [64:0] _io_sub_T_1 = io_src_0 + _io_sub_T; // @[Alu.scala 42:24]
  assign io_sub = _io_sub_T_1 + 65'h1; // @[Alu.scala 42:50]
endmodule

