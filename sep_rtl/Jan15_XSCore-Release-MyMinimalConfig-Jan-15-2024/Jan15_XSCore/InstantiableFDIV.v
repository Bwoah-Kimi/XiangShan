module InstantiableFDIV(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  input  [2:0]  io_rm,
  output [31:0] io_result,
  output [4:0]  io_fflags,
  input         io_specialIO_in_valid,
  input         io_specialIO_out_ready,
  output        io_specialIO_in_ready,
  output        io_specialIO_out_valid,
  input         io_specialIO_isSqrt,
  input         io_specialIO_kill
);
  wire  div_clock; // @[FDivSqrt.scala 43:19]
  wire  div_reset; // @[FDivSqrt.scala 43:19]
  wire [31:0] div_io_a; // @[FDivSqrt.scala 43:19]
  wire [31:0] div_io_b; // @[FDivSqrt.scala 43:19]
  wire [2:0] div_io_rm; // @[FDivSqrt.scala 43:19]
  wire [31:0] div_io_result; // @[FDivSqrt.scala 43:19]
  wire [4:0] div_io_fflags; // @[FDivSqrt.scala 43:19]
  wire  div_io_specialIO_in_valid; // @[FDivSqrt.scala 43:19]
  wire  div_io_specialIO_out_ready; // @[FDivSqrt.scala 43:19]
  wire  div_io_specialIO_in_ready; // @[FDivSqrt.scala 43:19]
  wire  div_io_specialIO_out_valid; // @[FDivSqrt.scala 43:19]
  wire  div_io_specialIO_isSqrt; // @[FDivSqrt.scala 43:19]
  wire  div_io_specialIO_kill; // @[FDivSqrt.scala 43:19]
  FDIV div ( // @[FDivSqrt.scala 43:19]
    .clock(div_clock),
    .reset(div_reset),
    .io_a(div_io_a),
    .io_b(div_io_b),
    .io_rm(div_io_rm),
    .io_result(div_io_result),
    .io_fflags(div_io_fflags),
    .io_specialIO_in_valid(div_io_specialIO_in_valid),
    .io_specialIO_out_ready(div_io_specialIO_out_ready),
    .io_specialIO_in_ready(div_io_specialIO_in_ready),
    .io_specialIO_out_valid(div_io_specialIO_out_valid),
    .io_specialIO_isSqrt(div_io_specialIO_isSqrt),
    .io_specialIO_kill(div_io_specialIO_kill)
  );
  assign io_result = div_io_result; // @[FDivSqrt.scala 47:6]
  assign io_fflags = div_io_fflags; // @[FDivSqrt.scala 47:6]
  assign io_specialIO_in_ready = div_io_specialIO_in_ready; // @[FDivSqrt.scala 47:6]
  assign io_specialIO_out_valid = div_io_specialIO_out_valid; // @[FDivSqrt.scala 47:6]
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_a = io_a; // @[FDivSqrt.scala 47:6]
  assign div_io_b = io_b; // @[FDivSqrt.scala 47:6]
  assign div_io_rm = io_rm; // @[FDivSqrt.scala 47:6]
  assign div_io_specialIO_in_valid = io_specialIO_in_valid; // @[FDivSqrt.scala 47:6]
  assign div_io_specialIO_out_ready = io_specialIO_out_ready; // @[FDivSqrt.scala 47:6]
  assign div_io_specialIO_isSqrt = io_specialIO_isSqrt; // @[FDivSqrt.scala 47:6]
  assign div_io_specialIO_kill = io_specialIO_kill; // @[FDivSqrt.scala 47:6]
endmodule

