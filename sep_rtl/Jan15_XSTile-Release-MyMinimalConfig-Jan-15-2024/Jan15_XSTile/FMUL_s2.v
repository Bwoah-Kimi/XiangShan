module FMUL_s2(
  input         io_in_special_case_valid,
  input         io_in_special_case_bits_nan,
  input         io_in_special_case_bits_inf,
  input         io_in_special_case_bits_inv,
  input         io_in_special_case_bits_hasZero,
  input         io_in_early_overflow,
  input         io_in_prod_sign,
  input  [8:0]  io_in_shift_amt,
  input  [8:0]  io_in_exp_shifted,
  input         io_in_may_be_subnormal,
  input  [2:0]  io_in_rm,
  input  [47:0] io_prod,
  output        io_out_special_case_valid,
  output        io_out_special_case_bits_nan,
  output        io_out_special_case_bits_inf,
  output        io_out_special_case_bits_inv,
  output        io_out_special_case_bits_hasZero,
  output        io_out_raw_out_sign,
  output [7:0]  io_out_raw_out_exp,
  output [73:0] io_out_raw_out_sig,
  output        io_out_early_overflow,
  output [2:0]  io_out_rm
);
  wire [73:0] sig_shifter_in = {26'h0,io_prod}; // @[Cat.scala 31:58]
  wire [584:0] _GEN_0 = {{511'd0}, sig_shifter_in}; // @[FMUL.scala 152:41]
  wire [584:0] _sig_shifted_raw_T = _GEN_0 << io_in_shift_amt; // @[FMUL.scala 152:41]
  wire [73:0] sig_shifted_raw = _sig_shifted_raw_T[73:0]; // @[FMUL.scala 152:54]
  wire  exp_is_subnormal = io_in_may_be_subnormal & ~sig_shifted_raw[73]; // @[FMUL.scala 153:49]
  wire  no_extra_shift = sig_shifted_raw[73] | exp_is_subnormal; // @[FMUL.scala 154:55]
  wire [8:0] _exp_pre_round_T_1 = io_in_exp_shifted - 9'h1; // @[FMUL.scala 156:95]
  wire [8:0] _exp_pre_round_T_2 = no_extra_shift ? io_in_exp_shifted : _exp_pre_round_T_1; // @[FMUL.scala 156:53]
  wire [8:0] exp_pre_round = exp_is_subnormal ? 9'h0 : _exp_pre_round_T_2; // @[FMUL.scala 156:26]
  wire [73:0] _sig_shifted_T_1 = {sig_shifted_raw[72:0],1'h0}; // @[Cat.scala 31:58]
  assign io_out_special_case_valid = io_in_special_case_valid; // @[FMUL.scala 127:23]
  assign io_out_special_case_bits_nan = io_in_special_case_bits_nan; // @[FMUL.scala 127:23]
  assign io_out_special_case_bits_inf = io_in_special_case_bits_inf; // @[FMUL.scala 127:23]
  assign io_out_special_case_bits_inv = io_in_special_case_bits_inv; // @[FMUL.scala 127:23]
  assign io_out_special_case_bits_hasZero = io_in_special_case_bits_hasZero; // @[FMUL.scala 127:23]
  assign io_out_raw_out_sign = io_in_prod_sign; // @[FMUL.scala 159:23]
  assign io_out_raw_out_exp = exp_pre_round[7:0]; // @[FMUL.scala 160:22]
  assign io_out_raw_out_sig = no_extra_shift ? sig_shifted_raw : _sig_shifted_T_1; // @[FMUL.scala 157:24]
  assign io_out_early_overflow = io_in_early_overflow; // @[FMUL.scala 128:25]
  assign io_out_rm = io_in_rm; // @[FMUL.scala 129:13]
endmodule

