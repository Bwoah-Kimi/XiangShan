module LeftShiftWordModule(
  input  [4:0]  io_shamt,
  input  [4:0]  io_revShamt,
  input  [31:0] io_sllSrc,
  output [31:0] io_sllw,
  output [31:0] io_revSllw
);
  wire [62:0] _GEN_0 = {{31'd0}, io_sllSrc}; // @[Alu.scala 65:24]
  wire [62:0] _io_sllw_T = _GEN_0 << io_shamt; // @[Alu.scala 65:24]
  wire [62:0] _GEN_1 = {{31'd0}, io_sllSrc}; // @[Alu.scala 66:27]
  wire [62:0] _io_revSllw_T = _GEN_1 << io_revShamt; // @[Alu.scala 66:27]
  assign io_sllw = _io_sllw_T[31:0]; // @[Alu.scala 65:11]
  assign io_revSllw = _io_revSllw_T[31:0]; // @[Alu.scala 66:14]
endmodule

