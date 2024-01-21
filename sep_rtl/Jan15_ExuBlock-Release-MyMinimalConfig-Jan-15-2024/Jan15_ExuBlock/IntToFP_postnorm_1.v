module IntToFP_postnorm_1(
  input  [62:0] io_in_norm_int,
  input  [5:0]  io_in_lzc,
  input         io_in_is_zero,
  input         io_in_sign,
  input  [2:0]  io_rm,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [51:0] rounder_io_in; // @[IntToFP.scala 80:23]
  wire  rounder_io_roundIn; // @[IntToFP.scala 80:23]
  wire  rounder_io_stickyIn; // @[IntToFP.scala 80:23]
  wire  rounder_io_signIn; // @[IntToFP.scala 80:23]
  wire [2:0] rounder_io_rm; // @[IntToFP.scala 80:23]
  wire [51:0] rounder_io_out; // @[IntToFP.scala 80:23]
  wire  rounder_io_inexact; // @[IntToFP.scala 80:23]
  wire  rounder_io_cout; // @[IntToFP.scala 80:23]
  wire [10:0] _GEN_0 = {{5'd0}, io_in_lzc}; // @[IntToFP.scala 75:67]
  wire [10:0] exp_raw = 11'h43e - _GEN_0; // @[IntToFP.scala 75:67]
  wire [10:0] _GEN_1 = {{10'd0}, rounder_io_cout}; // @[IntToFP.scala 88:42]
  wire [10:0] _fp_exp_T_1 = exp_raw + _GEN_1; // @[IntToFP.scala 88:42]
  wire [10:0] fp_exp = io_in_is_zero ? 11'h0 : _fp_exp_T_1; // @[IntToFP.scala 88:19]
  wire [11:0] io_result_hi = {io_in_sign,fp_exp}; // @[Cat.scala 31:58]
  RoundingUnit_1 rounder ( // @[IntToFP.scala 80:23]
    .io_in(rounder_io_in),
    .io_roundIn(rounder_io_roundIn),
    .io_stickyIn(rounder_io_stickyIn),
    .io_signIn(rounder_io_signIn),
    .io_rm(rounder_io_rm),
    .io_out(rounder_io_out),
    .io_inexact(rounder_io_inexact),
    .io_cout(rounder_io_cout)
  );
  assign io_result = {io_result_hi,rounder_io_out}; // @[Cat.scala 31:58]
  assign io_fflags = {4'h0,rounder_io_inexact}; // @[Cat.scala 31:58]
  assign rounder_io_in = io_in_norm_int[62:11]; // @[IntToFP.scala 76:24]
  assign rounder_io_roundIn = io_in_norm_int[10]; // @[IntToFP.scala 77:46]
  assign rounder_io_stickyIn = |io_in_norm_int[9:0]; // @[IntToFP.scala 78:42]
  assign rounder_io_signIn = io_in_sign; // @[IntToFP.scala 84:21]
  assign rounder_io_rm = io_rm; // @[IntToFP.scala 85:17]
endmodule

