module FCMP(
  input  [31:0] io_a,
  input  [31:0] io_b,
  input         io_signaling,
  output        io_eq,
  output        io_lt,
  output [4:0]  io_fflags
);
  wire  fp_a_sign = io_a[31]; // @[package.scala 59:19]
  wire [7:0] fp_a_exp = io_a[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_a_sig = io_a[22:0]; // @[package.scala 61:18]
  wire  fp_bsign = io_b[31]; // @[package.scala 59:19]
  wire [7:0] fp_bexp = io_b[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_bsig = io_b[22:0]; // @[package.scala 61:18]
  wire  decode_a_expNotZero = |fp_a_exp; // @[package.scala 32:31]
  wire  decode_a_expIsOnes = &fp_a_exp; // @[package.scala 33:31]
  wire  decode_a_sigNotZero = |fp_a_sig; // @[package.scala 34:31]
  wire  decode_a__expIsZero = ~decode_a_expNotZero; // @[package.scala 37:27]
  wire  decode_a__sigIsZero = ~decode_a_sigNotZero; // @[package.scala 40:27]
  wire  decode_a__isZero = decode_a__expIsZero & decode_a__sigIsZero; // @[package.scala 43:41]
  wire  decode_a__isNaN = decode_a_expIsOnes & decode_a_sigNotZero; // @[package.scala 44:40]
  wire  decode_a__isSNaN = decode_a__isNaN & ~fp_a_sig[22]; // @[package.scala 45:37]
  wire  decode_bexpNotZero = |fp_bexp; // @[package.scala 32:31]
  wire  decode_bexpIsOnes = &fp_bexp; // @[package.scala 33:31]
  wire  decode_bsigNotZero = |fp_bsig; // @[package.scala 34:31]
  wire  decode_b_expIsZero = ~decode_bexpNotZero; // @[package.scala 37:27]
  wire  decode_b_sigIsZero = ~decode_bsigNotZero; // @[package.scala 40:27]
  wire  decode_b_isZero = decode_b_expIsZero & decode_b_sigIsZero; // @[package.scala 43:41]
  wire  decode_b_isNaN = decode_bexpIsOnes & decode_bsigNotZero; // @[package.scala 44:40]
  wire  decode_b_isSNaN = decode_b_isNaN & ~fp_bsig[22]; // @[package.scala 45:37]
  wire  hasNaN = decode_a__isNaN | decode_b_isNaN; // @[FCMP.scala 20:31]
  wire  hasSNaN = decode_a__isSNaN | decode_b_isSNaN; // @[FCMP.scala 21:33]
  wire  bothZero = decode_a__isZero & decode_b_isZero; // @[FCMP.scala 22:34]
  wire  same_sign = fp_a_sign == fp_bsign; // @[FCMP.scala 24:29]
  wire [32:0] _a_minus_bT = {1'h0,io_a}; // @[Cat.scala 31:58]
  wire [32:0] _a_minus_bT_1 = {1'h0,io_b}; // @[Cat.scala 31:58]
  wire [32:0] a_minus_b = _a_minus_bT - _a_minus_bT_1; // @[FCMP.scala 25:36]
  wire  uint_eq = a_minus_b[31:0] == 32'h0; // @[FCMP.scala 26:35]
  wire  uint_less = fp_a_sign ^ a_minus_b[32]; // @[FCMP.scala 27:29]
  wire  invalid = hasSNaN | io_signaling & hasNaN; // @[FCMP.scala 29:25]
  wire  _io_eq_T = ~hasNaN; // @[FCMP.scala 31:12]
  wire  _io_lt_T_2 = uint_less & ~uint_eq; // @[FCMP.scala 39:15]
  wire  _io_lt_T_4 = fp_a_sign & ~bothZero; // @[FCMP.scala 40:15]
  wire  _io_lt_T_5 = same_sign ? _io_lt_T_2 : _io_lt_T_4; // @[FCMP.scala 37:26]
  assign io_eq = ~hasNaN & (uint_eq | bothZero); // @[FCMP.scala 31:20]
  assign io_lt = _io_eq_T & _io_lt_T_5; // @[FCMP.scala 37:20]
  assign io_fflags = {invalid,4'h0}; // @[Cat.scala 31:58]
endmodule

