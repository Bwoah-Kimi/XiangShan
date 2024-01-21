module TininessRounder_1(
  input         io_in_sign,
  input  [55:0] io_in_sig,
  input  [2:0]  io_rm,
  output        io_tininess
);
  wire [51:0] rounder_io_in; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_roundIn; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_stickyIn; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_signIn; // @[RoundingUnit.scala 44:25]
  wire [2:0] rounder_io_rm; // @[RoundingUnit.scala 44:25]
  wire [51:0] rounder_io_out; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_inexact; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_cout; // @[RoundingUnit.scala 44:25]
  wire  _tininess_T_5 = io_in_sig[55:54] == 2'h1 & ~rounder_io_cout; // @[RoundingUnit.scala 74:41]
  RoundingUnit_1 rounder ( // @[RoundingUnit.scala 44:25]
    .io_in(rounder_io_in),
    .io_roundIn(rounder_io_roundIn),
    .io_stickyIn(rounder_io_stickyIn),
    .io_signIn(rounder_io_signIn),
    .io_rm(rounder_io_rm),
    .io_out(rounder_io_out),
    .io_inexact(rounder_io_inexact),
    .io_cout(rounder_io_cout)
  );
  assign io_tininess = io_in_sig[55:54] == 2'h0 | _tininess_T_5; // @[RoundingUnit.scala 73:53]
  assign rounder_io_in = io_in_sig[53:2]; // @[RoundingUnit.scala 45:33]
  assign rounder_io_roundIn = io_in_sig[1]; // @[RoundingUnit.scala 46:50]
  assign rounder_io_stickyIn = |io_in_sig[0]; // @[RoundingUnit.scala 47:54]
  assign rounder_io_signIn = io_in_sign; // @[RoundingUnit.scala 49:23]
  assign rounder_io_rm = io_rm; // @[RoundingUnit.scala 48:19]
endmodule

