module FarPath(
  input         io_in_a_sign,
  input  [7:0]  io_in_a_exp,
  input  [47:0] io_in_a_sig,
  input  [47:0] io_in_bsig,
  input  [7:0]  io_in_expDiff,
  input         io_in_effSub,
  output        io_out_result_sign,
  output [47:0] io_out_sig_a,
  output [51:0] io_out_sig_b,
  output [7:0]  io_out_exp_a_vec_0,
  output [7:0]  io_out_exp_a_vec_1,
  output [7:0]  io_out_exp_a_vec_2
);
  wire [49:0] shiftRightJam_io_in; // @[ShiftRightJam.scala 27:31]
  wire [7:0] shiftRightJam_io_shamt; // @[ShiftRightJam.scala 27:31]
  wire [49:0] shiftRightJam_io_out; // @[ShiftRightJam.scala 27:31]
  wire  shiftRightJam_io_sticky; // @[ShiftRightJam.scala 27:31]
  wire [51:0] adder_in_sig_braw = {1'h0,shiftRightJam_io_out,shiftRightJam_io_sticky}; // @[Cat.scala 31:58]
  wire [51:0] _adder_in_sig_bT = ~adder_in_sig_braw; // @[FADD.scala 35:37]
  wire [51:0] _adder_in_sig_bT_1 = io_in_effSub ? _adder_in_sig_bT : adder_in_sig_braw; // @[FADD.scala 35:27]
  wire [51:0] _GEN_0 = {{51'd0}, io_in_effSub}; // @[FADD.scala 35:88]
  ShiftRightJam shiftRightJam ( // @[ShiftRightJam.scala 27:31]
    .io_in(shiftRightJam_io_in),
    .io_shamt(shiftRightJam_io_shamt),
    .io_out(shiftRightJam_io_out),
    .io_sticky(shiftRightJam_io_sticky)
  );
  assign io_out_result_sign = io_in_a_sign; // @[FADD.scala 68:20 69:15]
  assign io_out_sig_a = io_in_a_sig; // @[FADD.scala 73:16]
  assign io_out_sig_b = _adder_in_sig_bT_1 + _GEN_0; // @[FADD.scala 35:88]
  assign io_out_exp_a_vec_0 = io_in_a_exp + 8'h1; // @[FADD.scala 45:28]
  assign io_out_exp_a_vec_1 = io_in_a_exp; // @[FADD.scala 77:23]
  assign io_out_exp_a_vec_2 = io_in_a_exp - 8'h1; // @[FADD.scala 46:29]
  assign shiftRightJam_io_in = {io_in_bsig,2'h0}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_shamt = io_in_expDiff; // @[ShiftRightJam.scala 29:28]
endmodule

