module FPUpConverter(
  input  [31:0] io_in,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [22:0] subnormal_shamt_clz_io_in; // @[CLZ.scala 22:21]
  wire [4:0] subnormal_shamt_clz_io_out; // @[CLZ.scala 22:21]
  wire  fp_in_sign = io_in[31]; // @[package.scala 59:19]
  wire [7:0] fp_in_exp = io_in[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_in_sig = io_in[22:0]; // @[package.scala 61:18]
  wire  decode_in_expNotZero = |fp_in_exp; // @[package.scala 32:31]
  wire  decode_in_expIsOnes = &fp_in_exp; // @[package.scala 33:31]
  wire  decode_in_sigNotZero = |fp_in_sig; // @[package.scala 34:31]
  wire  decode_in__expIsZero = ~decode_in_expNotZero; // @[package.scala 37:27]
  wire  decode_in__isSubnormal = decode_in__expIsZero & decode_in_sigNotZero; // @[package.scala 41:46]
  wire  decode_in__isNaN = decode_in_expIsOnes & decode_in_sigNotZero; // @[package.scala 44:40]
  wire  decode_in__isSNaN = decode_in__isNaN & ~fp_in_sig[22]; // @[package.scala 45:37]
  wire [10:0] _GEN_0 = {{3'd0}, fp_in_exp}; // @[FPToFP.scala 214:47]
  wire [10:0] normal_exp = 11'h380 + _GEN_0; // @[FPToFP.scala 214:47]
  wire [53:0] _GEN_2 = {{31'd0}, fp_in_sig}; // @[FPToFP.scala 218:20]
  wire [53:0] _subnormal_sig_T = _GEN_2 << subnormal_shamt_clz_io_out; // @[FPToFP.scala 218:20]
  wire [10:0] _GEN_1 = {{6'd0}, subnormal_shamt_clz_io_out}; // @[FPToFP.scala 219:50]
  wire [10:0] subnormal_exp = 11'h380 - _GEN_1; // @[FPToFP.scala 219:50]
  wire  _result_T_1 = ~decode_in__isNaN & fp_in_sign; // @[FPToFP.scala 222:22]
  wire  _result_T_4 = ~decode_in_expIsOnes & ~decode_in__expIsZero; // @[FPToFP.scala 228:30]
  wire [10:0] _result_T_6 = decode_in_expIsOnes ? 11'h7ff : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _result_T_8 = decode_in__isSubnormal ? subnormal_exp : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _result_T_9 = _result_T_4 ? normal_exp : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _result_T_11 = _result_T_6 | _result_T_8; // @[Mux.scala 27:73]
  wire [10:0] _result_T_12 = _result_T_11 | _result_T_9; // @[Mux.scala 27:73]
  wire [51:0] _result_T_16 = {decode_in_sigNotZero,51'h0}; // @[Cat.scala 31:58]
  wire [51:0] _result_T_17 = {_subnormal_sig_T[21:0],1'h0,29'h0}; // @[Cat.scala 31:58]
  wire [51:0] _result_T_18 = {fp_in_sig,29'h0}; // @[Cat.scala 31:58]
  wire [51:0] _result_T_19 = decode_in_expIsOnes ? _result_T_16 : 52'h0; // @[Mux.scala 27:73]
  wire [51:0] _result_T_20 = decode_in__expIsZero ? _result_T_17 : 52'h0; // @[Mux.scala 27:73]
  wire [51:0] _result_T_21 = _result_T_4 ? _result_T_18 : 52'h0; // @[Mux.scala 27:73]
  wire [51:0] _result_T_22 = _result_T_19 | _result_T_20; // @[Mux.scala 27:73]
  wire [51:0] _result_T_23 = _result_T_22 | _result_T_21; // @[Mux.scala 27:73]
  wire [11:0] result_hi = {_result_T_1,_result_T_12}; // @[Cat.scala 31:58]
  CLZ_10 subnormal_shamt_clz ( // @[CLZ.scala 22:21]
    .io_in(subnormal_shamt_clz_io_in),
    .io_out(subnormal_shamt_clz_io_out)
  );
  assign io_result = {result_hi,_result_T_23}; // @[Cat.scala 31:58]
  assign io_fflags = {decode_in__isSNaN,4'h0}; // @[Cat.scala 31:58]
  assign subnormal_shamt_clz_io_in = io_in[22:0]; // @[package.scala 61:18]
endmodule

