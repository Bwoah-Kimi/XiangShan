module LeftShiftModule(
  input  [5:0]  io_shamt,
  input  [5:0]  io_revShamt,
  input  [63:0] io_sllSrc,
  output [63:0] io_sll,
  output [63:0] io_revSll
);
  wire [126:0] _GEN_0 = {{63'd0}, io_sllSrc}; // @[Alu.scala 53:23]
  wire [126:0] _io_sll_T = _GEN_0 << io_shamt; // @[Alu.scala 53:23]
  wire [126:0] _GEN_1 = {{63'd0}, io_sllSrc}; // @[Alu.scala 54:26]
  wire [126:0] _io_revSll_T = _GEN_1 << io_revShamt; // @[Alu.scala 54:26]
  assign io_sll = _io_sll_T[63:0]; // @[Alu.scala 53:10]
  assign io_revSll = _io_revSll_T[63:0]; // @[Alu.scala 54:13]
endmodule

