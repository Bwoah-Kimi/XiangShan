module FPToFP_1(
  input  [63:0] io_in,
  input  [2:0]  io_rm,
  output [31:0] io_result,
  output [4:0]  io_fflags
);
  wire [63:0] converter_io_in; // @[FPToFP.scala 33:11]
  wire [2:0] converter_io_rm; // @[FPToFP.scala 33:11]
  wire [31:0] converter_io_result; // @[FPToFP.scala 33:11]
  wire [4:0] converter_io_fflags; // @[FPToFP.scala 33:11]
  FPDownConverter converter ( // @[FPToFP.scala 33:11]
    .io_in(converter_io_in),
    .io_rm(converter_io_rm),
    .io_result(converter_io_result),
    .io_fflags(converter_io_fflags)
  );
  assign io_result = converter_io_result; // @[FPToFP.scala 52:6]
  assign io_fflags = converter_io_fflags; // @[FPToFP.scala 52:6]
  assign converter_io_in = io_in; // @[FPToFP.scala 52:6]
  assign converter_io_rm = io_rm; // @[FPToFP.scala 52:6]
endmodule

