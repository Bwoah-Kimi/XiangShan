module RoundingUnit_15(
  input  [52:0] io_in,
  input         io_roundIn,
  input         io_stickyIn,
  input         io_signIn,
  input  [2:0]  io_rm,
  output [52:0] io_out,
  output        io_inexact,
  output        io_cout,
  output        io_rup
);
  wire  g = io_in[0]; // @[RoundingUnit.scala 19:25]
  wire  inexact = io_roundIn | io_stickyIn; // @[RoundingUnit.scala 20:19]
  wire  _rup_T_4 = io_roundIn & io_stickyIn | io_roundIn & ~io_stickyIn & g; // @[RoundingUnit.scala 25:24]
  wire  _rup_T_6 = inexact & ~io_signIn; // @[RoundingUnit.scala 27:23]
  wire  _rup_T_7 = inexact & io_signIn; // @[RoundingUnit.scala 28:23]
  wire  _rup_T_11 = 3'h1 == io_rm ? 1'h0 : 3'h0 == io_rm & _rup_T_4; // @[Mux.scala 81:58]
  wire  _rup_T_13 = 3'h3 == io_rm ? _rup_T_6 : _rup_T_11; // @[Mux.scala 81:58]
  wire  _rup_T_15 = 3'h2 == io_rm ? _rup_T_7 : _rup_T_13; // @[Mux.scala 81:58]
  wire  r_up = 3'h4 == io_rm ? io_roundIn : _rup_T_15; // @[Mux.scala 81:58]
  wire [52:0] out_rup = io_in + 53'h1; // @[RoundingUnit.scala 32:24]
  assign io_out = r_up ? out_rup : io_in; // @[RoundingUnit.scala 33:16]
  assign io_inexact = io_roundIn | io_stickyIn; // @[RoundingUnit.scala 20:19]
  assign io_cout = r_up & &io_in; // @[RoundingUnit.scala 36:19]
  assign io_rup = 3'h4 == io_rm ? io_roundIn : _rup_T_15; // @[Mux.scala 81:58]
endmodule

