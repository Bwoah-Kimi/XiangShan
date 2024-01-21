module FPDownConverter(
  input  [63:0] io_in,
  input  [2:0]  io_rm,
  output [31:0] io_result,
  output [4:0]  io_fflags
);
  wire [22:0] normal_rounder_io_in; // @[FPToFP.scala 80:30]
  wire  normal_rounder_io_roundIn; // @[FPToFP.scala 80:30]
  wire  normal_rounder_io_stickyIn; // @[FPToFP.scala 80:30]
  wire  normal_rounder_io_signIn; // @[FPToFP.scala 80:30]
  wire [2:0] normal_rounder_io_rm; // @[FPToFP.scala 80:30]
  wire [22:0] normal_rounder_io_out; // @[FPToFP.scala 80:30]
  wire  normal_rounder_io_inexact; // @[FPToFP.scala 80:30]
  wire  normal_rounder_io_cout; // @[FPToFP.scala 80:30]
  wire [24:0] shiftRightJam_io_in; // @[ShiftRightJam.scala 27:31]
  wire [10:0] shiftRightJam_io_shamt; // @[ShiftRightJam.scala 27:31]
  wire [24:0] shiftRightJam_io_out; // @[ShiftRightJam.scala 27:31]
  wire  shiftRightJam_io_sticky; // @[ShiftRightJam.scala 27:31]
  wire [22:0] subnormal_rounder_io_in; // @[FPToFP.scala 114:33]
  wire  subnormal_rounder_io_roundIn; // @[FPToFP.scala 114:33]
  wire  subnormal_rounder_io_stickyIn; // @[FPToFP.scala 114:33]
  wire  subnormal_rounder_io_signIn; // @[FPToFP.scala 114:33]
  wire [2:0] subnormal_rounder_io_rm; // @[FPToFP.scala 114:33]
  wire [22:0] subnormal_rounder_io_out; // @[FPToFP.scala 114:33]
  wire  subnormal_rounder_io_inexact; // @[FPToFP.scala 114:33]
  wire  subnormal_rounder_io_cout; // @[FPToFP.scala 114:33]
  wire  fp_in_sign = io_in[63]; // @[package.scala 59:19]
  wire [10:0] fp_in_exp = io_in[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_in_sig = io_in[51:0]; // @[package.scala 61:18]
  wire  decode_expNotZero = |fp_in_exp; // @[package.scala 32:31]
  wire  decode_expIsOnes = &fp_in_exp; // @[package.scala 33:31]
  wire  decode_sigNotZero = |fp_in_sig; // @[package.scala 34:31]
  wire  decode__isNaN = decode_expIsOnes & decode_sigNotZero; // @[package.scala 44:40]
  wire  decode__isSNaN = decode__isNaN & ~fp_in_sig[51]; // @[package.scala 45:37]
  wire [11:0] _down_exp_T = {1'b0,$signed(fp_in_exp)}; // @[FPToFP.scala 71:32]
  wire [11:0] down_exp = $signed(_down_exp_T) - 12'sh380; // @[FPToFP.scala 71:35]
  wire  normal_stickyBit = |fp_in_sig[27:0]; // @[FPToFP.scala 78:58]
  wire [11:0] _normal_exp_rounded_T_2 = $signed(down_exp) + 12'sh1; // @[FPToFP.scala 88:65]
  wire [11:0] normal_exp_rounded = normal_rounder_io_cout ? $signed(_normal_exp_rounded_T_2) : $signed(down_exp); // @[FPToFP.scala 88:31]
  wire  _normal_of_T = $signed(down_exp) > 12'shfd; // @[FPToFP.scala 91:14]
  wire  _normal_of_T_1 = $signed(down_exp) > 12'shfe; // @[FPToFP.scala 92:14]
  wire  normal_of = normal_rounder_io_cout ? _normal_of_T : _normal_of_T_1; // @[FPToFP.scala 89:22]
  wire  _exp_uf_T_1 = $signed(down_exp) < 12'sh1; // @[FPToFP.scala 94:69]
  wire  exp_uf = normal_rounder_io_cout ? $signed(down_exp) < 12'sh0 : $signed(down_exp) < 12'sh1; // @[FPToFP.scala 94:19]
  wire  normal_ix = normal_rounder_io_inexact | normal_of; // @[FPToFP.scala 95:45]
  wire  subnormal_exp_rounded = subnormal_rounder_io_cout; // @[FPToFP.scala 121:34]
  wire  rmin = io_rm == 3'h1 | io_rm == 3'h2 & ~fp_in_sign | io_rm == 3'h3 & fp_in_sign; // @[FPToFP.scala 127:53]
  wire [7:0] normal_of_exp = rmin ? 8'hfe : 8'hff; // @[FPToFP.scala 129:26]
  wire [22:0] normal_of_sig = rmin ? 23'h7fffff : 23'h0; // @[FPToFP.scala 135:26]
  wire  _common_exp_T = ~_exp_uf_T_1; // @[FPToFP.scala 143:7]
  wire  _common_exp_T_1 = ~_exp_uf_T_1 & normal_of; // @[FPToFP.scala 143:25]
  wire  _common_exp_T_4 = _common_exp_T & ~normal_of; // @[FPToFP.scala 144:25]
  wire [7:0] _common_exp_T_6 = _common_exp_T_1 ? normal_of_exp : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _common_exp_T_7 = _common_exp_T_4 ? normal_exp_rounded[7:0] : 8'h0; // @[Mux.scala 27:73]
  wire  _common_exp_T_8 = _exp_uf_T_1 & subnormal_exp_rounded; // @[Mux.scala 27:73]
  wire [7:0] _common_exp_T_9 = _common_exp_T_6 | _common_exp_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_1 = {{7'd0}, _common_exp_T_8}; // @[Mux.scala 27:73]
  wire [7:0] common_exp = _common_exp_T_9 | _GEN_1; // @[Mux.scala 27:73]
  wire [22:0] _common_sig_T_5 = _common_exp_T_1 ? normal_of_sig : 23'h0; // @[Mux.scala 27:73]
  wire [22:0] _common_sig_T_6 = _common_exp_T_4 ? normal_rounder_io_out : 23'h0; // @[Mux.scala 27:73]
  wire [22:0] _common_sig_T_7 = _exp_uf_T_1 ? subnormal_rounder_io_out : 23'h0; // @[Mux.scala 27:73]
  wire [22:0] _common_sig_T_8 = _common_sig_T_5 | _common_sig_T_6; // @[Mux.scala 27:73]
  wire [22:0] common_sig = _common_sig_T_8 | _common_sig_T_7; // @[Mux.scala 27:73]
  wire  _of_T = ~decode_expIsOnes; // @[FPToFP.scala 171:12]
  wire  of = ~decode_expIsOnes & normal_of; // @[FPToFP.scala 171:26]
  wire  uf = _of_T & _exp_uf_T_1 & exp_uf & subnormal_rounder_io_inexact; // @[FPToFP.scala 172:56]
  wire  _ix_T_3 = _exp_uf_T_1 & subnormal_rounder_io_inexact; // @[FPToFP.scala 175:25]
  wire  _ix_T_4 = _common_exp_T & normal_ix | _ix_T_3; // @[FPToFP.scala 174:38]
  wire  ix = _of_T & _ix_T_4; // @[FPToFP.scala 173:26]
  wire  _result_T_1 = ~decode__isNaN & fp_in_sign; // @[FPToFP.scala 179:19]
  wire [7:0] _result_T_4 = decode_expIsOnes ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _result_T_5 = _of_T ? common_exp : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _result_T_6 = _result_T_4 | _result_T_5; // @[Mux.scala 27:73]
  wire [22:0] _result_T_8 = {decode_sigNotZero,22'h0}; // @[Cat.scala 31:58]
  wire [22:0] _result_T_9 = decode_expIsOnes ? _result_T_8 : 23'h0; // @[Mux.scala 27:73]
  wire [22:0] _result_T_10 = _of_T ? common_sig : 23'h0; // @[Mux.scala 27:73]
  wire [22:0] _result_T_11 = _result_T_9 | _result_T_10; // @[Mux.scala 27:73]
  wire [8:0] result_hi = {_result_T_1,_result_T_6}; // @[Cat.scala 31:58]
  wire [1:0] io_fflags_lo = {uf,ix}; // @[Cat.scala 31:58]
  wire [2:0] io_fflags_hi = {decode__isSNaN,1'h0,of}; // @[Cat.scala 31:58]
  RoundingUnit normal_rounder ( // @[FPToFP.scala 80:30]
    .io_in(normal_rounder_io_in),
    .io_roundIn(normal_rounder_io_roundIn),
    .io_stickyIn(normal_rounder_io_stickyIn),
    .io_signIn(normal_rounder_io_signIn),
    .io_rm(normal_rounder_io_rm),
    .io_out(normal_rounder_io_out),
    .io_inexact(normal_rounder_io_inexact),
    .io_cout(normal_rounder_io_cout)
  );
  ShiftRightJam_4 shiftRightJam ( // @[ShiftRightJam.scala 27:31]
    .io_in(shiftRightJam_io_in),
    .io_shamt(shiftRightJam_io_shamt),
    .io_out(shiftRightJam_io_out),
    .io_sticky(shiftRightJam_io_sticky)
  );
  RoundingUnit subnormal_rounder ( // @[FPToFP.scala 114:33]
    .io_in(subnormal_rounder_io_in),
    .io_roundIn(subnormal_rounder_io_roundIn),
    .io_stickyIn(subnormal_rounder_io_stickyIn),
    .io_signIn(subnormal_rounder_io_signIn),
    .io_rm(subnormal_rounder_io_rm),
    .io_out(subnormal_rounder_io_out),
    .io_inexact(subnormal_rounder_io_inexact),
    .io_cout(subnormal_rounder_io_cout)
  );
  assign io_result = {result_hi,_result_T_11}; // @[Cat.scala 31:58]
  assign io_fflags = {io_fflags_hi,io_fflags_lo}; // @[Cat.scala 31:58]
  assign normal_rounder_io_in = fp_in_sig[51:29]; // @[FPToFP.scala 76:34]
  assign normal_rounder_io_roundIn = fp_in_sig[28]; // @[FPToFP.scala 77:62]
  assign normal_rounder_io_stickyIn = |fp_in_sig[27:0]; // @[FPToFP.scala 78:58]
  assign normal_rounder_io_signIn = io_in[63]; // @[package.scala 59:19]
  assign normal_rounder_io_rm = io_rm; // @[FPToFP.scala 85:24]
  assign shiftRightJam_io_in = {decode_expNotZero,fp_in_sig[51:28]}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_shamt = 11'h381 - fp_in_exp; // @[FPToFP.scala 108:47]
  assign subnormal_rounder_io_in = shiftRightJam_io_out[23:1]; // @[FPToFP.scala 115:56]
  assign subnormal_rounder_io_roundIn = shiftRightJam_io_out[0]; // @[FPToFP.scala 116:48]
  assign subnormal_rounder_io_stickyIn = shiftRightJam_io_sticky | normal_stickyBit; // @[FPToFP.scala 113:42]
  assign subnormal_rounder_io_signIn = io_in[63]; // @[package.scala 59:19]
  assign subnormal_rounder_io_rm = io_rm; // @[FPToFP.scala 119:27]
endmodule

