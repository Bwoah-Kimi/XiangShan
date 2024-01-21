module FDIV(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  input  [2:0]  io_rm,
  output [31:0] io_result,
  output [4:0]  io_fflags,
  input         io_specialIO_in_valid,
  input         io_specialIO_out_ready,
  output        io_specialIO_in_ready,
  output        io_specialIO_out_valid,
  input         io_specialIO_isSqrt,
  input         io_specialIO_kill
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_REG_INIT
  wire [23:0] aLZC_clz_io_in; // @[CLZ.scala 22:21]
  wire [4:0] aLZC_clz_io_out; // @[CLZ.scala 22:21]
  wire [23:0] dLZC_clz_io_in; // @[CLZ.scala 22:21]
  wire [4:0] dLZC_clz_io_out; // @[CLZ.scala 22:21]
  wire  divModule_clock; // @[FDIV.scala 300:25]
  wire [23:0] divModule_io_a; // @[FDIV.scala 300:25]
  wire [23:0] divModule_io_d; // @[FDIV.scala 300:25]
  wire [1:0] divModule_io_state; // @[FDIV.scala 300:25]
  wire  divModule_io_lastIterDoHalf; // @[FDIV.scala 300:25]
  wire  divModule_io_sigCmp; // @[FDIV.scala 300:25]
  wire [27:0] divModule_io_rem; // @[FDIV.scala 300:25]
  wire [25:0] divModule_io_quot; // @[FDIV.scala 300:25]
  wire [25:0] divModule_io_quotM1; // @[FDIV.scala 300:25]
  wire  sqrtModule_clock; // @[FDIV.scala 307:26]
  wire [24:0] sqrtModule_io_a; // @[FDIV.scala 307:26]
  wire [1:0] sqrtModule_io_state; // @[FDIV.scala 307:26]
  wire [26:0] sqrtModule_io_rem; // @[FDIV.scala 307:26]
  wire [25:0] sqrtModule_io_res; // @[FDIV.scala 307:26]
  wire [25:0] sqrtModule_io_resM1; // @[FDIV.scala 307:26]
  wire [22:0] rounder_io_in; // @[FDIV.scala 320:23]
  wire  rounder_io_roundIn; // @[FDIV.scala 320:23]
  wire  rounder_io_stickyIn; // @[FDIV.scala 320:23]
  wire  rounder_io_signIn; // @[FDIV.scala 320:23]
  wire [2:0] rounder_io_rm; // @[FDIV.scala 320:23]
  wire [22:0] rounder_io_out; // @[FDIV.scala 320:23]
  wire  rounder_io_inexact; // @[FDIV.scala 320:23]
  wire  rounder_io_cout; // @[FDIV.scala 320:23]
  wire  fp_a_sign = io_a[31]; // @[package.scala 59:19]
  wire [7:0] fp_a_exp = io_a[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_a_sig = io_a[22:0]; // @[package.scala 61:18]
  wire  fp_bsign = io_b[31]; // @[package.scala 59:19]
  wire [7:0] fp_bexp = io_b[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_bsig = io_b[22:0]; // @[package.scala 61:18]
  wire  expNotZero = |fp_a_exp; // @[package.scala 32:31]
  wire  expIsOnes = &fp_a_exp; // @[package.scala 33:31]
  wire  sigNotZero = |fp_a_sig; // @[package.scala 34:31]
  wire  decode_a_expIsZero = ~expNotZero; // @[package.scala 37:27]
  wire  decode_a_sigIsZero = ~sigNotZero; // @[package.scala 40:27]
  wire  decode_a_isSubnormal = decode_a_expIsZero & sigNotZero; // @[package.scala 41:46]
  wire  decode_a_isInf = expIsOnes & decode_a_sigIsZero; // @[package.scala 42:40]
  wire  decode_a_isZero = decode_a_expIsZero & decode_a_sigIsZero; // @[package.scala 43:41]
  wire  decode_a_isNaN = expIsOnes & sigNotZero; // @[package.scala 44:40]
  wire  decode_a_isSNaN = decode_a_isNaN & ~fp_a_sig[22]; // @[package.scala 45:37]
  wire  decode_a_isQNaN = decode_a_isNaN & fp_a_sig[22]; // @[package.scala 46:37]
  wire  expNotZero_1 = |fp_bexp; // @[package.scala 32:31]
  wire  expIsOnes_1 = &fp_bexp; // @[package.scala 33:31]
  wire  sigNotZero_1 = |fp_bsig; // @[package.scala 34:31]
  wire  decode_bexpIsZero = ~expNotZero_1; // @[package.scala 37:27]
  wire  decode_bsigIsZero = ~sigNotZero_1; // @[package.scala 40:27]
  wire  decode_bisSubnormal = decode_bexpIsZero & sigNotZero_1; // @[package.scala 41:46]
  wire  decode_bisInf = expIsOnes_1 & decode_bsigIsZero; // @[package.scala 42:40]
  wire  decode_bisZero = decode_bexpIsZero & decode_bsigIsZero; // @[package.scala 43:41]
  wire  decode_bisNaN = expIsOnes_1 & sigNotZero_1; // @[package.scala 44:40]
  wire  decode_bisSNaN = decode_bisNaN & ~fp_bsig[22]; // @[package.scala 45:37]
  wire [7:0] _GEN_42 = {{7'd0}, decode_a_expIsZero}; // @[package.scala 83:27]
  wire [7:0] raw_a_exp = fp_a_exp | _GEN_42; // @[package.scala 83:27]
  wire [23:0] raw_a_sig = {expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_43 = {{7'd0}, decode_bexpIsZero}; // @[package.scala 83:27]
  wire [7:0] raw_bexp = fp_bexp | _GEN_43; // @[package.scala 83:27]
  wire [23:0] raw_bsig = {expNotZero_1,fp_bsig}; // @[Cat.scala 31:58]
  reg [5:0] state; // @[FDIV.scala 172:22]
  reg  outValidReg; // @[FDIV.scala 173:28]
  wire  in_fire = io_specialIO_in_ready & io_specialIO_in_valid; // @[FDIV.scala 175:26]
  reg  aSubReg; // @[Reg.scala 16:16]
  reg  dSubReg; // @[Reg.scala 16:16]
  wire  _hasSubnormal_T = ~io_specialIO_isSqrt; // @[FDIV.scala 198:31]
  wire  hasSubnormal = decode_a_isSubnormal | ~io_specialIO_isSqrt & decode_bisSubnormal; // @[FDIV.scala 198:27]
  reg  sqrtReg; // @[Reg.scala 16:16]
  reg [2:0] rmReg; // @[Reg.scala 16:16]
  reg  resSignReg; // @[Reg.scala 16:16]
  wire [5:0] _T_3 = {{1'd0}, state[5:1]}; // @[FDIV.scala 209:20]
  wire [5:0] _T_5 = {{2'd0}, state[5:2]}; // @[FDIV.scala 211:20]
  reg [8:0] aExp; // @[Reg.scala 16:16]
  wire [8:0] _sqrtFinalExp_T_1 = aExp - 9'h7f; // @[FDIV.scala 263:36]
  wire  sqrtFinalExp_signBit = _sqrtFinalExp_T_1[8]; // @[FDIV.scala 130:20]
  wire [1:0] _sqrtFinalExp_T_4 = sqrtFinalExp_signBit ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  wire [9:0] sqrtFinalExp = {_sqrtFinalExp_T_4,_sqrtFinalExp_T_1[8:1]}; // @[Cat.scala 31:58]
  wire  divFinalExp_signBit = aExp[8]; // @[FDIV.scala 130:20]
  wire [9:0] _divFinalExp_T = {divFinalExp_signBit,aExp}; // @[Cat.scala 31:58]
  reg [8:0] dExp; // @[Reg.scala 16:16]
  wire  divFinalExp_signBit_1 = dExp[8]; // @[FDIV.scala 130:20]
  wire [9:0] _divFinalExp_T_1 = {divFinalExp_signBit_1,dExp}; // @[Cat.scala 31:58]
  wire [9:0] _divFinalExp_T_2 = ~_divFinalExp_T_1; // @[FDIV.scala 261:50]
  wire [9:0] _divFinalExp_T_4 = _divFinalExp_T + _divFinalExp_T_2; // @[FDIV.scala 261:48]
  reg [23:0] aSigReg; // @[Reg.scala 16:16]
  reg [23:0] dSigReg; // @[Reg.scala 16:16]
  wire  sigCmp = aSigReg < dSigReg; // @[FDIV.scala 259:24]
  wire  _divFinalExp_T_5 = ~sigCmp; // @[FDIV.scala 261:81]
  wire [9:0] _GEN_46 = {{9'd0}, _divFinalExp_T_5}; // @[FDIV.scala 261:78]
  wire [9:0] divFinalExp = _divFinalExp_T_4 + _GEN_46; // @[FDIV.scala 261:78]
  wire [9:0] finalExp = sqrtReg ? sqrtFinalExp : divFinalExp; // @[FDIV.scala 264:21]
  wire [9:0] _infRes_T = ~finalExp; // @[FDIV.scala 267:17]
  wire [9:0] _infRes_T_2 = _infRes_T + 10'h80; // @[FDIV.scala 267:27]
  wire  infRes = _infRes_T_2[9]; // @[FDIV.scala 267:105]
  reg  inv; // @[Reg.scala 16:16]
  wire  _overflow_T = ~inv; // @[FDIV.scala 272:28]
  reg  dz; // @[Reg.scala 16:16]
  wire  _overflow_T_2 = ~dz; // @[FDIV.scala 272:36]
  reg  inf_div; // @[Reg.scala 16:16]
  wire  _overflow_T_4 = ~inf_div; // @[FDIV.scala 272:43]
  wire  overflow = infRes & ~inv & ~dz & ~inf_div; // @[FDIV.scala 272:40]
  wire [9:0] _zeroRes_T_1 = finalExp + 10'h97; // @[FDIV.scala 266:27]
  wire  zeroRes = _zeroRes_T_1[9]; // @[FDIV.scala 266:77]
  reg  zero_div; // @[Reg.scala 16:16]
  wire  _underflow_pre_T_4 = ~zero_div; // @[FDIV.scala 273:49]
  reg  div_inf; // @[Reg.scala 16:16]
  wire  _underflow_pre_T_6 = ~div_inf; // @[FDIV.scala 273:62]
  wire  underflow_pre = zeroRes & _overflow_T & _overflow_T_2 & ~zero_div & ~div_inf; // @[FDIV.scala 273:59]
  wire  skipIter = overflow | underflow_pre | inv | dz | zeroRes | zero_div | div_inf | inf_div; // @[FDIV.scala 282:88]
  wire [5:0] _state_T_13 = skipIter ? 6'h10 : 6'h8; // @[FDIV.scala 212:17]
  wire [5:0] _T_7 = {{3'd0}, state[5:3]}; // @[FDIV.scala 214:33]
  reg [3:0] iterNumReg; // @[Reg.scala 16:16]
  wire  finalIter = iterNumReg == 4'h0; // @[FDIV.scala 297:27]
  wire [5:0] _T_10 = {{4'd0}, state[5:4]}; // @[FDIV.scala 217:20]
  wire [5:0] _T_13 = {{5'd0}, state[5]}; // @[FDIV.scala 220:20]
  wire [5:0] _GEN_5 = _T_13[0] ? 6'h1 : state; // @[FDIV.scala 220:32 221:11 223:11]
  wire [5:0] _GEN_6 = _T_10[0] & io_specialIO_out_ready ? 6'h20 : _GEN_5; // @[FDIV.scala 217:45 218:11]
  wire  _GEN_7 = _T_10[0] & io_specialIO_out_ready ? 1'h0 : outValidReg; // @[FDIV.scala 217:45 219:17 173:28]
  wire [5:0] _GEN_8 = finalIter & _T_7[0] ? 6'h10 : _GEN_6; // @[FDIV.scala 214:43 215:11]
  wire  _GEN_9 = finalIter & _T_7[0] | _GEN_7; // @[FDIV.scala 214:43 216:17]
  wire [54:0] _GEN_0 = {{31'd0}, aSigReg}; // @[FDIV.scala 239:23]
  wire [54:0] _aSigNorm_T = _GEN_0 << aLZC_clz_io_out; // @[FDIV.scala 239:23]
  wire [23:0] aSigNorm = _aSigNorm_T[23:0]; // @[FDIV.scala 228:22 239:12]
  wire  _aSigReg_T_7 = state[0] | _T_3[0]; // @[FDIV.scala 229:82]
  wire [54:0] _GEN_1 = {{31'd0}, dSigReg}; // @[FDIV.scala 241:23]
  wire [54:0] _dSigNorm_T = _GEN_1 << dLZC_clz_io_out; // @[FDIV.scala 241:23]
  wire [23:0] dSigNorm = _dSigNorm_T[23:0]; // @[FDIV.scala 230:22 241:12]
  wire [8:0] _GEN_53 = {{4'd0}, aLZC_clz_io_out}; // @[FDIV.scala 242:19]
  wire [8:0] aExpFix = aExp - _GEN_53; // @[FDIV.scala 242:19]
  wire  _aExp_T_8 = state[0] | _T_3[0] & aSubReg; // @[FDIV.scala 235:78]
  wire [8:0] _GEN_55 = {{4'd0}, dLZC_clz_io_out}; // @[FDIV.scala 243:19]
  wire [8:0] dExpFix = dExp - _GEN_55; // @[FDIV.scala 243:19]
  wire  _dExp_T_8 = state[0] | _T_3[0] & dSubReg; // @[FDIV.scala 237:78]
  wire  _inv_T = ~decode_a_isZero; // @[FDIV.scala 249:49]
  wire  _inv_T_5 = decode_a_isInf & decode_bisInf | decode_bisZero & decode_a_isZero; // @[FDIV.scala 249:121]
  reg  inv_flag; // @[Reg.scala 16:16]
  wire  _dz_T_3 = decode_bisZero & _inv_T & _hasSubnormal_T; // @[FDIV.scala 251:58]
  wire  _zero_div_T_2 = decode_a_isZero & (~decode_bisZero | io_specialIO_isSqrt); // @[FDIV.scala 252:44]
  wire  _div_inf_T_3 = _hasSubnormal_T & decode_bisInf & ~decode_a_isInf; // @[FDIV.scala 253:53]
  wire  sqrtShift = ~aExp[0]; // @[FDIV.scala 262:19]
  wire [9:0] _subRes_T_1 = finalExp + 10'h7e; // @[FDIV.scala 268:26]
  wire  subRes = _subRes_T_1[9] & ~zeroRes; // @[FDIV.scala 268:79]
  reg  subResReg; // @[Reg.scala 16:16]
  wire  inexact_pre = _underflow_pre_T_4 & _overflow_T & _overflow_T_2 & _underflow_pre_T_6 & _overflow_T_4; // @[FDIV.scala 274:58]
  wire  _special_fflags_T_3 = dz & _overflow_T & _overflow_T_4; // @[FDIV.scala 276:59]
  wire [4:0] _special_fflags_T_4 = {inv_flag,_special_fflags_T_3,overflow,underflow_pre,inexact_pre}; // @[Cat.scala 31:58]
  reg [4:0] special_fflags; // @[Reg.scala 16:16]
  reg [7:0] special_exp; // @[Reg.scala 16:16]
  reg [22:0] special_sig; // @[Reg.scala 16:16]
  reg  skipIterReg; // @[Reg.scala 16:16]
  wire [9:0] resultSigBits = subRes ? _zeroRes_T_1 : 10'h19; // @[FDIV.scala 288:26]
  reg  needShiftReg; // @[Reg.scala 16:16]
  wire  _oddIterReg_T_1 = ~resultSigBits[1]; // @[FDIV.scala 292:30]
  reg  oddIterReg; // @[Reg.scala 16:16]
  wire [9:0] _iterNumInit_T_1 = resultSigBits - 10'h1; // @[FDIV.scala 294:49]
  wire [8:0] iterNumInit = sqrtReg ? _iterNumInit_T_1[9:1] : {{1'd0}, resultSigBits[9:2]}; // @[FDIV.scala 294:24]
  wire  _iterNumReg_T_4 = _T_5[0] | _T_7[0]; // @[FDIV.scala 295:54]
  wire [3:0] _iterNum_T_3 = iterNumReg - 4'h1; // @[FDIV.scala 296:58]
  wire [8:0] _iterNum_T_4 = _T_5[0] ? iterNumInit : {{5'd0}, _iterNum_T_3}; // @[FDIV.scala 296:17]
  wire [3:0] iterNum = _iterNum_T_4[3:0]; // @[FDIV.scala 293:21 296:11]
  wire [24:0] _sqrtModule_io_a_T_1 = {1'h0,aSigReg}; // @[Cat.scala 31:58]
  wire [24:0] _sqrtModule_io_a_T_2 = {aSigReg,1'h0}; // @[Cat.scala 31:58]
  wire [25:0] quotIter = sqrtReg ? sqrtModule_io_res : divModule_io_quot; // @[FDIV.scala 312:18]
  wire [25:0] quotM1Iter = sqrtReg ? sqrtModule_io_resM1 : divModule_io_quotM1; // @[FDIV.scala 313:20]
  wire  r_signBit = sqrtModule_io_rem[26]; // @[FDIV.scala 130:20]
  wire [1:0] _rT_1 = r_signBit ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  wire [28:0] _rT_2 = {_rT_1,sqrtModule_io_rem}; // @[Cat.scala 31:58]
  wire  r_signBit_1 = divModule_io_rem[27]; // @[FDIV.scala 130:20]
  wire [28:0] _rT_3 = {r_signBit_1,divModule_io_rem}; // @[Cat.scala 31:58]
  wire [28:0] r = sqrtReg ? _rT_2 : _rT_3; // @[FDIV.scala 316:14]
  wire [25:0] qFinal = r[28] ? quotM1Iter : quotIter; // @[FDIV.scala 317:19]
  wire [9:0] _resExp_T_1 = finalExp + 10'h7f; // @[FDIV.scala 327:45]
  wire [9:0] _resExp_T_2 = subResReg ? 10'h0 : _resExp_T_1; // @[FDIV.scala 327:19]
  wire [7:0] resExp = _resExp_T_2[7:0]; // @[FDIV.scala 327:78]
  wire  uf = ~(|resExp) & rounder_io_inexact; // @[FDIV.scala 329:24]
  wire  of = &resExp; // @[FDIV.scala 330:19]
  wire [4:0] normal_fflags = {2'h0,of,uf,rounder_io_inexact}; // @[Cat.scala 31:58]
  wire  _noInf_T_1 = rmReg == 3'h2; // @[FDIV.scala 335:40]
  wire  _noInf_T_2 = ~resSignReg; // @[FDIV.scala 335:51]
  wire  _noInf_T_5 = rmReg == 3'h3; // @[FDIV.scala 335:74]
  wire  noInf = (rmReg == 3'h1 | rmReg == 3'h2 & ~resSignReg | rmReg == 3'h3 & resSignReg) & special_fflags[2]; // @[FDIV.scala 335:98]
  wire  noZero = (_noInf_T_1 & resSignReg | _noInf_T_5 & _noInf_T_2) & special_fflags[1]; // @[FDIV.scala 336:82]
  wire  _combinedExp_T = noInf | noZero; // @[FDIV.scala 340:31]
  wire [7:0] _combinedExp_T_4 = resExp + 8'h1; // @[FDIV.scala 342:85]
  wire [22:0] _combinedSig_T_3 = rounder_io_in; // @[FDIV.scala 345:91]
  wire [22:0] _combinedSig_T_4 = rounder_io_out; // @[FDIV.scala 345:125]
  reg [7:0] combinedExpReg; // @[Reg.scala 16:16]
  reg [22:0] combinedSigReg; // @[Reg.scala 16:16]
  reg [4:0] combinedFFlagsReg; // @[Reg.scala 16:16]
  reg  combinedSignReg; // @[Reg.scala 16:16]
  wire [8:0] io_result_hi = {combinedSignReg,combinedExpReg}; // @[Cat.scala 31:58]
  CLZ_11 aLZC_clz ( // @[CLZ.scala 22:21]
    .io_in(aLZC_clz_io_in),
    .io_out(aLZC_clz_io_out)
  );
  CLZ_11 dLZC_clz ( // @[CLZ.scala 22:21]
    .io_in(dLZC_clz_io_in),
    .io_out(dLZC_clz_io_out)
  );
  DivIterModule divModule ( // @[FDIV.scala 300:25]
    .clock(divModule_clock),
    .io_a(divModule_io_a),
    .io_d(divModule_io_d),
    .io_state(divModule_io_state),
    .io_lastIterDoHalf(divModule_io_lastIterDoHalf),
    .io_sigCmp(divModule_io_sigCmp),
    .io_rem(divModule_io_rem),
    .io_quot(divModule_io_quot),
    .io_quotM1(divModule_io_quotM1)
  );
  SqrtIterModule sqrtModule ( // @[FDIV.scala 307:26]
    .clock(sqrtModule_clock),
    .io_a(sqrtModule_io_a),
    .io_state(sqrtModule_io_state),
    .io_rem(sqrtModule_io_rem),
    .io_res(sqrtModule_io_res),
    .io_resM1(sqrtModule_io_resM1)
  );
  RoundingUnit rounder ( // @[FDIV.scala 320:23]
    .io_in(rounder_io_in),
    .io_roundIn(rounder_io_roundIn),
    .io_stickyIn(rounder_io_stickyIn),
    .io_signIn(rounder_io_signIn),
    .io_rm(rounder_io_rm),
    .io_out(rounder_io_out),
    .io_inexact(rounder_io_inexact),
    .io_cout(rounder_io_cout)
  );
  assign io_result = {io_result_hi,combinedSigReg}; // @[Cat.scala 31:58]
  assign io_fflags = combinedFFlagsReg; // @[FDIV.scala 355:13]
  assign io_specialIO_in_ready = state[0]; // @[FDIV.scala 176:20]
  assign io_specialIO_out_valid = outValidReg; // @[FDIV.scala 177:13]
  assign aLZC_clz_io_in = aSigReg; // @[CLZ.scala 23:15]
  assign dLZC_clz_io_in = dSigReg; // @[CLZ.scala 23:15]
  assign divModule_clock = clock;
  assign divModule_io_a = aSigReg; // @[FDIV.scala 301:18]
  assign divModule_io_d = dSigReg; // @[FDIV.scala 302:18]
  assign divModule_io_state = {_T_7[0],_T_5[0]}; // @[Cat.scala 31:58]
  assign divModule_io_lastIterDoHalf = oddIterReg & finalIter; // @[FDIV.scala 304:45]
  assign divModule_io_sigCmp = aSigReg < dSigReg; // @[FDIV.scala 259:24]
  assign sqrtModule_clock = clock;
  assign sqrtModule_io_a = ~sqrtShift ? _sqrtModule_io_a_T_1 : _sqrtModule_io_a_T_2; // @[FDIV.scala 308:25]
  assign sqrtModule_io_state = {_T_7[0],_T_5[0]}; // @[Cat.scala 31:58]
  assign rounder_io_in = needShiftReg ? qFinal[24:2] : qFinal[23:1]; // @[FDIV.scala 321:23]
  assign rounder_io_roundIn = needShiftReg ? qFinal[1] : qFinal[0]; // @[FDIV.scala 319:18]
  assign rounder_io_stickyIn = |r | needShiftReg & qFinal[0]; // @[FDIV.scala 318:26]
  assign rounder_io_signIn = resSignReg; // @[FDIV.scala 324:21]
  assign rounder_io_rm = rmReg; // @[FDIV.scala 325:17]
  always @(posedge clock) begin
    if (state[0]) begin // @[Reg.scala 17:18]
      aSubReg <= decode_a_isSubnormal; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      dSubReg <= decode_bisSubnormal; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      sqrtReg <= io_specialIO_isSqrt; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      rmReg <= io_rm; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      if (io_specialIO_isSqrt) begin // @[FDIV.scala 201:33]
        resSignReg <= decode_a_isZero & fp_a_sign;
      end else begin
        resSignReg <= fp_a_sign ^ fp_bsign;
      end
    end
    if (_aExp_T_8) begin // @[Reg.scala 17:18]
      if (state[0]) begin // @[FDIV.scala 235:27]
        aExp <= {{1'd0}, raw_a_exp};
      end else begin
        aExp <= aExpFix;
      end
    end
    if (_dExp_T_8) begin // @[Reg.scala 17:18]
      if (state[0]) begin // @[FDIV.scala 237:27]
        dExp <= {{1'd0}, raw_bexp};
      end else begin
        dExp <= dExpFix;
      end
    end
    if (_aSigReg_T_7) begin // @[Reg.scala 17:18]
      if (state[0]) begin // @[FDIV.scala 229:30]
        aSigReg <= raw_a_sig;
      end else begin
        aSigReg <= aSigNorm;
      end
    end
    if (_aSigReg_T_7) begin // @[Reg.scala 17:18]
      if (state[0]) begin // @[FDIV.scala 231:30]
        dSigReg <= raw_bsig;
      end else begin
        dSigReg <= dSigNorm;
      end
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      if (io_specialIO_isSqrt) begin // @[FDIV.scala 249:26]
        inv <= fp_a_sign & ~decode_a_isZero | decode_a_isNaN;
      end else begin
        inv <= decode_a_isInf & decode_bisInf | decode_bisZero & decode_a_isZero | decode_a_isNaN | decode_bisNaN;
      end
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      dz <= _dz_T_3; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      if (io_specialIO_isSqrt) begin // @[FDIV.scala 254:30]
        inf_div <= decode_a_isInf;
      end else begin
        inf_div <= decode_a_isInf & ~decode_bisInf;
      end
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      zero_div <= _zero_div_T_2; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      div_inf <= _div_inf_T_3; // @[Reg.scala 17:22]
    end
    if (_iterNumReg_T_4) begin // @[Reg.scala 17:18]
      iterNumReg <= iterNum; // @[Reg.scala 17:22]
    end
    if (state[0]) begin // @[Reg.scala 17:18]
      if (io_specialIO_isSqrt) begin // @[FDIV.scala 250:31]
        inv_flag <= fp_a_sign & ~decode_a_isQNaN & _inv_T | decode_a_isSNaN;
      end else begin
        inv_flag <= _inv_T_5 | decode_a_isSNaN | decode_bisSNaN;
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      subResReg <= subRes; // @[Reg.scala 17:22]
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      special_fflags <= _special_fflags_T_4; // @[Reg.scala 17:22]
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      if (inv | overflow | dz | inf_div) begin // @[FDIV.scala 278:34]
        special_exp <= 8'hff;
      end else begin
        special_exp <= 8'h0;
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      if (inv) begin // @[FDIV.scala 279:34]
        special_sig <= 23'h400000;
      end else begin
        special_sig <= 23'h0;
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      skipIterReg <= skipIter; // @[Reg.scala 17:22]
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      if (sqrtReg) begin // @[FDIV.scala 290:22]
        needShiftReg <= resultSigBits[0];
      end else begin
        needShiftReg <= ~resultSigBits[0];
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      oddIterReg <= _oddIterReg_T_1; // @[Reg.scala 17:22]
    end
    if (_T_10[0]) begin // @[Reg.scala 17:18]
      if (noInf | noZero) begin // @[FDIV.scala 340:24]
        if (noInf) begin // @[FDIV.scala 338:25]
          combinedExpReg <= 8'hfe;
        end else begin
          combinedExpReg <= 8'h0;
        end
      end else if (skipIterReg) begin // @[FDIV.scala 341:8]
        combinedExpReg <= special_exp;
      end else if (rounder_io_cout & resExp != 8'hfe) begin // @[FDIV.scala 342:10]
        combinedExpReg <= _combinedExp_T_4;
      end else begin
        combinedExpReg <= resExp;
      end
    end
    if (_T_10[0]) begin // @[Reg.scala 17:18]
      if (_combinedExp_T) begin // @[FDIV.scala 343:24]
        if (noInf) begin // @[FDIV.scala 337:25]
          combinedSigReg <= 23'h7fffff;
        end else begin
          combinedSigReg <= 23'h1;
        end
      end else if (skipIterReg) begin // @[FDIV.scala 344:8]
        combinedSigReg <= special_sig;
      end else if (rounder_io_cout & resExp == 8'hfe) begin // @[FDIV.scala 345:10]
        combinedSigReg <= _combinedSig_T_3;
      end else begin
        combinedSigReg <= _combinedSig_T_4;
      end
    end
    if (_T_10[0]) begin // @[Reg.scala 17:18]
      if (skipIterReg) begin // @[FDIV.scala 332:27]
        combinedFFlagsReg <= special_fflags;
      end else begin
        combinedFFlagsReg <= normal_fflags;
      end
    end
    if (_T_10[0]) begin // @[Reg.scala 17:18]
      if (inv) begin // @[FDIV.scala 277:35]
        combinedSignReg <= 1'h0;
      end else begin
        combinedSignReg <= resSignReg;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FDIV.scala 204:27]
      state <= 6'h1; // @[FDIV.scala 205:11]
    end else if (io_specialIO_kill) begin // @[FDIV.scala 207:41]
      state <= 6'h1; // @[FDIV.scala 208:17]
    end else if (state[0] & in_fire) begin // @[FDIV.scala 209:31]
      if (hasSubnormal) begin // @[FDIV.scala 210:11]
        state <= 6'h2;
      end else begin
        state <= 6'h4;
      end
    end else if (_T_3[0]) begin // @[FDIV.scala 211:31]
      state <= 6'h4; // @[FDIV.scala 212:11]
    end else if (_T_5[0]) begin
      state <= _state_T_13;
    end else begin
      state <= _GEN_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FDIV.scala 204:27]
      outValidReg <= 1'h0; // @[FDIV.scala 206:17]
    end else if (io_specialIO_kill) begin // @[FDIV.scala 207:41]
      outValidReg <= 1'h0; // @[FDIV.scala 173:28]
    end else if (!(state[0] & in_fire)) begin // @[FDIV.scala 209:31]
      if (!(_T_3[0])) begin // @[FDIV.scala 211:31]
        if (_T_5[0]) begin
          outValidReg <= skipIter;
        end else begin
          outValidReg <= _GEN_9;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  outValidReg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  aSubReg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  dSubReg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sqrtReg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rmReg = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  resSignReg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  aExp = _RAND_7[8:0];
  _RAND_8 = {1{`RANDOM}};
  dExp = _RAND_8[8:0];
  _RAND_9 = {1{`RANDOM}};
  aSigReg = _RAND_9[23:0];
  _RAND_10 = {1{`RANDOM}};
  dSigReg = _RAND_10[23:0];
  _RAND_11 = {1{`RANDOM}};
  inv = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  dz = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  inf_div = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  zero_div = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  div_inf = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  iterNumReg = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  inv_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  subResReg = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  special_fflags = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  special_exp = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  special_sig = _RAND_21[22:0];
  _RAND_22 = {1{`RANDOM}};
  skipIterReg = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  needShiftReg = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  oddIterReg = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  combinedExpReg = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  combinedSigReg = _RAND_26[22:0];
  _RAND_27 = {1{`RANDOM}};
  combinedFFlagsReg = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  combinedSignReg = _RAND_28[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 6'h1;
  end
  if (reset) begin
    outValidReg = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

