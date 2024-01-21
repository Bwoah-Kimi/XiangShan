module FPToFP(
  input  [31:0] io_in,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [31:0] converter_io_in; // @[FPToFP.scala 42:11]
  wire [63:0] converter_io_result; // @[FPToFP.scala 42:11]
  wire [4:0] converter_io_fflags; // @[FPToFP.scala 42:11]
  FPUpConverter converter ( // @[FPToFP.scala 42:11]
    .io_in(converter_io_in),
    .io_result(converter_io_result),
    .io_fflags(converter_io_fflags)
  );
  assign io_result = converter_io_result; // @[FPToFP.scala 52:6]
  assign io_fflags = converter_io_fflags; // @[FPToFP.scala 52:6]
  assign converter_io_in = io_in; // @[FPToFP.scala 52:6]
endmodule

