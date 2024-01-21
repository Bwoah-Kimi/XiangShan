module FPToInt_s1_1(
  input  [63:0] io_a,
  input  [2:0]  io_rm,
  input  [1:0]  io_op,
  output        io_to_s2_raw_a_sign,
  output [10:0] io_to_s2_raw_a_exp,
  output [52:0] io_to_s2_raw_a_sig,
  output [2:0]  io_to_s2_rm,
  output [1:0]  io_to_s2_op,
  output        io_to_s2_sel_lpath,
  output        io_to_s2_exp_of,
  output        io_to_s2_iv_sel_max,
  output        io_to_s2_lpath_iv,
  output        io_to_s2_lpath_of,
  output [3:0]  io_to_s2_lpath_shamt,
  output [10:0] io_to_s2_rpath_shamt
);
  wire  is_signed_int = io_op[0]; // @[FPToInt.scala 39:28]
  wire  is_long_int = io_op[1]; // @[FPToInt.scala 40:26]
  wire  fp_a_sign = io_a[63]; // @[package.scala 59:19]
  wire [10:0] fp_a_exp = io_a[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_a_sig = io_a[51:0]; // @[package.scala 61:18]
  wire  decode_a_expNotZero = |fp_a_exp; // @[package.scala 32:31]
  wire  decode_a_expIsOnes = &fp_a_exp; // @[package.scala 33:31]
  wire  decode_a_sigNotZero = |fp_a_sig; // @[package.scala 34:31]
  wire  decode_a__expIsZero = ~decode_a_expNotZero; // @[package.scala 37:27]
  wire  decode_a__isNaN = decode_a_expIsOnes & decode_a_sigNotZero; // @[package.scala 44:40]
  wire [10:0] _GEN_0 = {{10'd0}, decode_a__expIsZero}; // @[package.scala 83:27]
  wire [10:0] raw_a_exp = fp_a_exp | _GEN_0; // @[package.scala 83:27]
  wire [52:0] raw_a_sig = {decode_a_expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  wire [5:0] _max_int_exp_T = is_long_int ? 6'h3f : 6'h1f; // @[FPToInt.scala 47:42]
  wire [9:0] _GEN_1 = {{4'd0}, _max_int_exp_T}; // @[FPToInt.scala 47:36]
  wire [10:0] max_int_exp = 10'h3ff + _GEN_1; // @[FPToInt.scala 47:36]
  wire  _io_to_s2_iv_sel_max_T = ~fp_a_sign; // @[FPToInt.scala 54:44]
  wire [10:0] lpath_shamt = raw_a_exp - 11'h433; // @[FPToInt.scala 61:31]
  wire  lpath_may_of = is_signed_int & raw_a_exp == max_int_exp; // @[FPToInt.scala 63:36]
  wire  lpath_pos_of = lpath_may_of & _io_to_s2_iv_sel_max_T; // @[FPToInt.scala 64:35]
  wire  lpath_neg_of = lpath_may_of & fp_a_sign & |raw_a_sig[51:0]; // @[FPToInt.scala 65:49]
  assign io_to_s2_raw_a_sign = io_a[63]; // @[package.scala 59:19]
  assign io_to_s2_raw_a_exp = fp_a_exp | _GEN_0; // @[package.scala 83:27]
  assign io_to_s2_raw_a_sig = {decode_a_expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  assign io_to_s2_rm = io_rm; // @[FPToInt.scala 51:15]
  assign io_to_s2_op = io_op; // @[FPToInt.scala 52:15]
  assign io_to_s2_sel_lpath = raw_a_exp >= 11'h433; // @[FPToInt.scala 82:29]
  assign io_to_s2_exp_of = raw_a_exp > max_int_exp; // @[FPToInt.scala 48:26]
  assign io_to_s2_iv_sel_max = decode_a__isNaN | ~fp_a_sign; // @[FPToInt.scala 54:41]
  assign io_to_s2_lpath_iv = ~is_signed_int & fp_a_sign; // @[FPToInt.scala 62:33]
  assign io_to_s2_lpath_of = lpath_pos_of | lpath_neg_of; // @[FPToInt.scala 66:31]
  assign io_to_s2_lpath_shamt = lpath_shamt[3:0]; // @[FPToInt.scala 70:24]
  assign io_to_s2_rpath_shamt = 11'h433 - raw_a_exp; // @[FPToInt.scala 75:70]
endmodule

