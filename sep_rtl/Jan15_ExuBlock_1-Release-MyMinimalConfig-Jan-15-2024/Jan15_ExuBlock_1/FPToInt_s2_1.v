module FPToInt_s2_1(
  input         io_s1_raw_a_sign,
  input  [10:0] io_s1_raw_a_exp,
  input  [52:0] io_s1_raw_a_sig,
  input  [2:0]  io_s1_rm,
  input  [1:0]  io_s1_op,
  input         io_s1_sel_lpath,
  input         io_s1_exp_of,
  input         io_s1_iv_sel_max,
  input         io_s1_lpath_iv,
  input         io_s1_lpath_of,
  input  [3:0]  io_s1_lpath_shamt,
  input  [10:0] io_s1_rpath_shamt,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [53:0] shiftRightJam_io_in; // @[ShiftRightJam.scala 27:31]
  wire [10:0] shiftRightJam_io_shamt; // @[ShiftRightJam.scala 27:31]
  wire [53:0] shiftRightJam_io_out; // @[ShiftRightJam.scala 27:31]
  wire  shiftRightJam_io_sticky; // @[ShiftRightJam.scala 27:31]
  wire [52:0] rpath_rounder_io_in; // @[FPToInt.scala 115:29]
  wire  rpath_rounder_io_roundIn; // @[FPToInt.scala 115:29]
  wire  rpath_rounder_io_stickyIn; // @[FPToInt.scala 115:29]
  wire  rpath_rounder_io_signIn; // @[FPToInt.scala 115:29]
  wire [2:0] rpath_rounder_io_rm; // @[FPToInt.scala 115:29]
  wire [52:0] rpath_rounder_io_out; // @[FPToInt.scala 115:29]
  wire  rpath_rounder_io_inexact; // @[FPToInt.scala 115:29]
  wire  rpath_rounder_io_cout; // @[FPToInt.scala 115:29]
  wire  rpath_rounder_io_rup; // @[FPToInt.scala 115:29]
  wire  is_signed_int = io_s1_op[0]; // @[FPToInt.scala 96:31]
  wire  is_long_int = io_s1_op[1]; // @[FPToInt.scala 97:29]
  wire [67:0] _GEN_0 = {{15'd0}, io_s1_raw_a_sig}; // @[FPToInt.scala 106:16]
  wire [67:0] _lpath_sig_shifted_T_1 = _GEN_0 << io_s1_lpath_shamt; // @[FPToInt.scala 106:16]
  wire [63:0] lpath_sig_shifted = _lpath_sig_shifted_T_1[63:0]; // @[FPToInt.scala 106:67]
  wire [63:0] rpath_sig = {10'h0,rpath_rounder_io_cout,rpath_rounder_io_out}; // @[Cat.scala 31:58]
  wire  _rpath_iv_T = ~is_signed_int; // @[FPToInt.scala 127:18]
  wire  rpath_iv = ~is_signed_int & io_s1_raw_a_sign & |rpath_sig; // @[FPToInt.scala 127:47]
  wire  rpath_of_rpath_exp_inc = rpath_rounder_io_rup & &rpath_rounder_io_in[30:0]; // @[FPToInt.scala 130:29]
  wire  rpath_of_rpath_exp_eq_31 = io_s1_raw_a_exp == 11'h41e; // @[FPToInt.scala 131:37]
  wire  rpath_of_rpath_exp_eq_30 = io_s1_raw_a_exp == 11'h41d; // @[FPToInt.scala 132:37]
  wire  _rpath_of_rpath_pos_of_T_2 = rpath_of_rpath_exp_eq_31 | rpath_of_rpath_exp_eq_30 & rpath_of_rpath_exp_inc; // @[FPToInt.scala 135:23]
  wire  _rpath_of_rpath_pos_of_T_3 = rpath_of_rpath_exp_eq_31 & rpath_of_rpath_exp_inc; // @[FPToInt.scala 136:23]
  wire  _rpath_of_rpath_pos_of_T_4 = is_signed_int ? _rpath_of_rpath_pos_of_T_2 : _rpath_of_rpath_pos_of_T_3; // @[FPToInt.scala 133:42]
  wire  rpath_of_rpath_pos_of = ~io_s1_raw_a_sign & _rpath_of_rpath_pos_of_T_4; // @[FPToInt.scala 133:36]
  wire  _rpath_of_rpath_neg_of_T_3 = |rpath_rounder_io_in[30:0] | rpath_rounder_io_rup; // @[FPToInt.scala 139:41]
  wire  rpath_of_rpath_neg_of = io_s1_raw_a_sign & rpath_of_rpath_exp_eq_31 & _rpath_of_rpath_neg_of_T_3; // @[FPToInt.scala 138:54]
  wire  rpath_of = ~is_long_int & (rpath_of_rpath_pos_of | rpath_of_rpath_neg_of); // @[FPToInt.scala 141:18]
  wire  _of_T_2 = ~io_s1_sel_lpath; // @[FPToInt.scala 149:50]
  wire  of = io_s1_exp_of | io_s1_sel_lpath & io_s1_lpath_of | ~io_s1_sel_lpath & rpath_of; // @[FPToInt.scala 149:46]
  wire  iv = of | io_s1_sel_lpath & io_s1_lpath_iv | _of_T_2 & rpath_iv; // @[FPToInt.scala 150:42]
  wire  ix = ~iv & _of_T_2 & rpath_rounder_io_inexact; // @[FPToInt.scala 151:30]
  wire [63:0] int_abs = io_s1_sel_lpath ? lpath_sig_shifted : rpath_sig; // @[FPToInt.scala 153:20]
  wire [63:0] _int_T_2 = 64'h0 - int_abs; // @[FPToInt.scala 154:46]
  wire [63:0] _int_T_3 = io_s1_raw_a_sign & is_signed_int ? _int_T_2 : int_abs; // @[FPToInt.scala 154:16]
  wire [31:0] _int_T_5 = is_long_int ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _int_T_7 = {_int_T_5,32'hffffffff}; // @[Cat.scala 31:58]
  wire [63:0] int_ = _int_T_3 & _int_T_7; // @[FPToInt.scala 154:65]
  wire [63:0] max_int64 = {_rpath_iv_T,63'h7fffffffffffffff}; // @[Cat.scala 31:58]
  wire [63:0] min_int64 = {is_signed_int,63'h0}; // @[Cat.scala 31:58]
  wire [63:0] max_int32 = {32'h0,max_int64[63:32]}; // @[Cat.scala 31:58]
  wire [63:0] min_int32 = {32'h0,min_int64[63:32]}; // @[Cat.scala 31:58]
  wire [63:0] _io_result_T = is_long_int ? max_int64 : max_int32; // @[FPToInt.scala 168:10]
  wire [63:0] _io_result_T_1 = is_long_int ? min_int64 : min_int32; // @[FPToInt.scala 169:10]
  wire [63:0] _io_result_T_2 = io_s1_iv_sel_max ? _io_result_T : _io_result_T_1; // @[FPToInt.scala 166:8]
  wire [1:0] io_fflags_lo = {1'h0,ix}; // @[Cat.scala 31:58]
  wire [2:0] io_fflags_hi = {iv,1'h0,1'h0}; // @[Cat.scala 31:58]
  ShiftRightJam_3 shiftRightJam ( // @[ShiftRightJam.scala 27:31]
    .io_in(shiftRightJam_io_in),
    .io_shamt(shiftRightJam_io_shamt),
    .io_out(shiftRightJam_io_out),
    .io_sticky(shiftRightJam_io_sticky)
  );
  RoundingUnit_15 rpath_rounder ( // @[FPToInt.scala 115:29]
    .io_in(rpath_rounder_io_in),
    .io_roundIn(rpath_rounder_io_roundIn),
    .io_stickyIn(rpath_rounder_io_stickyIn),
    .io_signIn(rpath_rounder_io_signIn),
    .io_rm(rpath_rounder_io_rm),
    .io_out(rpath_rounder_io_out),
    .io_inexact(rpath_rounder_io_inexact),
    .io_cout(rpath_rounder_io_cout),
    .io_rup(rpath_rounder_io_rup)
  );
  assign io_result = iv ? _io_result_T_2 : int_; // @[FPToInt.scala 164:19]
  assign io_fflags = {io_fflags_hi,io_fflags_lo}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_in = {io_s1_raw_a_sig,1'h0}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_shamt = io_s1_rpath_shamt; // @[ShiftRightJam.scala 29:28]
  assign rpath_rounder_io_in = shiftRightJam_io_out[53:1]; // @[FPToInt.scala 116:48]
  assign rpath_rounder_io_roundIn = shiftRightJam_io_out[0]; // @[FPToInt.scala 117:48]
  assign rpath_rounder_io_stickyIn = shiftRightJam_io_sticky; // @[FPToInt.scala 118:29]
  assign rpath_rounder_io_signIn = io_s1_raw_a_sign; // @[FPToInt.scala 119:27]
  assign rpath_rounder_io_rm = io_s1_rm; // @[FPToInt.scala 120:23]
endmodule

