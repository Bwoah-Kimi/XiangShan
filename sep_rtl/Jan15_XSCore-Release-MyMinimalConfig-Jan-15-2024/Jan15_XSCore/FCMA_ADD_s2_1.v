module FCMA_ADD_s2_1(
  input  [2:0]   io_in_rm,
  input          io_in_far_path_out_sign,
  input          io_in_near_path_out_sign,
  input  [10:0]  io_in_near_path_out_exp,
  input          io_in_special_case_valid,
  input          io_in_special_case_bits_iv,
  input          io_in_special_case_bits_nan,
  input          io_in_special_case_bits_inf_sign,
  input          io_in_small_add,
  input          io_in_far_path_mul_of,
  input  [105:0] io_in_far_sig_a,
  input  [109:0] io_in_far_sig_b,
  input  [10:0]  io_in_far_exp_a_vec_0,
  input  [10:0]  io_in_far_exp_a_vec_1,
  input  [10:0]  io_in_far_exp_a_vec_2,
  input          io_in_near_path_sig_is_zero,
  input          io_in_near_path_lza_error,
  input          io_in_near_path_int_bit,
  input  [106:0] io_in_near_path_sig_raw,
  input  [6:0]   io_in_near_path_lzc,
  input          io_in_sel_far_path,
  output [63:0]  io_result,
  output [4:0]   io_fflags
);
  wire  far_path_tininess_rounder_io_in_sign; // @[FADD.scala 386:41]
  wire [55:0] far_path_tininess_rounder_io_in_sig; // @[FADD.scala 386:41]
  wire [2:0] far_path_tininess_rounder_io_rm; // @[FADD.scala 386:41]
  wire  far_path_tininess_rounder_io_tininess; // @[FADD.scala 386:41]
  wire [51:0] far_path_rounder_io_in; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_roundIn; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_stickyIn; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_signIn; // @[RoundingUnit.scala 44:25]
  wire [2:0] far_path_rounder_io_rm; // @[RoundingUnit.scala 44:25]
  wire [51:0] far_path_rounder_io_out; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_inexact; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_cout; // @[RoundingUnit.scala 44:25]
  wire  near_path_tininess_rounder_io_in_sign; // @[FADD.scala 445:42]
  wire [55:0] near_path_tininess_rounder_io_in_sig; // @[FADD.scala 445:42]
  wire [2:0] near_path_tininess_rounder_io_rm; // @[FADD.scala 445:42]
  wire  near_path_tininess_rounder_io_tininess; // @[FADD.scala 445:42]
  wire [51:0] near_path_rounder_io_in; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_roundIn; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_stickyIn; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_signIn; // @[RoundingUnit.scala 44:25]
  wire [2:0] near_path_rounder_io_rm; // @[RoundingUnit.scala 44:25]
  wire [51:0] near_path_rounder_io_out; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_inexact; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_cout; // @[RoundingUnit.scala 44:25]
  wire [63:0] _special_path_result_T_3 = {io_in_special_case_bits_inf_sign,11'h7ff,52'h0}; // @[Cat.scala 31:58]
  wire [63:0] special_path_result = io_in_special_case_bits_nan ? 64'h7ff8000000000000 : _special_path_result_T_3; // @[FADD.scala 346:32]
  wire [4:0] special_path_fflags = {io_in_special_case_bits_iv,4'h0}; // @[Cat.scala 31:58]
  wire [109:0] adder_in_sig_a = {1'h0,io_in_far_sig_a,3'h0}; // @[Cat.scala 31:58]
  wire [109:0] adder_result = adder_in_sig_a + io_in_far_sig_b; // @[FADD.scala 363:37]
  wire  cout = adder_result[109]; // @[FADD.scala 365:31]
  wire  keep = adder_result[109:108] == 2'h1; // @[FADD.scala 366:35]
  wire  cancellation = adder_result[109:108] == 2'h0; // @[FADD.scala 367:43]
  wire  _far_path_res_sig_T = keep | io_in_small_add; // @[FADD.scala 370:20]
  wire  _far_path_res_sig_T_2 = cancellation & ~io_in_small_add; // @[FADD.scala 370:47]
  wire [55:0] _far_path_res_sig_T_6 = {adder_result[109:55],|adder_result[54:0]}; // @[FADD.scala 372:36]
  wire [55:0] _far_path_res_sig_T_11 = {adder_result[108:54],|adder_result[53:0]}; // @[FADD.scala 373:44]
  wire [55:0] _far_path_res_sig_T_16 = {adder_result[107:53],|adder_result[52:0]}; // @[FADD.scala 374:44]
  wire [55:0] _far_path_res_sig_T_17 = cout ? _far_path_res_sig_T_6 : 56'h0; // @[Mux.scala 27:73]
  wire [55:0] _far_path_res_sig_T_18 = _far_path_res_sig_T ? _far_path_res_sig_T_11 : 56'h0; // @[Mux.scala 27:73]
  wire [55:0] _far_path_res_sig_T_19 = _far_path_res_sig_T_2 ? _far_path_res_sig_T_16 : 56'h0; // @[Mux.scala 27:73]
  wire [55:0] _far_path_res_sig_T_20 = _far_path_res_sig_T_17 | _far_path_res_sig_T_18; // @[Mux.scala 27:73]
  wire [55:0] far_path_res_sig = _far_path_res_sig_T_20 | _far_path_res_sig_T_19; // @[Mux.scala 27:73]
  wire [10:0] _far_path_res_exp_T = cout ? io_in_far_exp_a_vec_0 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _far_path_res_exp_T_1 = keep ? io_in_far_exp_a_vec_1 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _far_path_res_exp_T_2 = cancellation ? io_in_far_exp_a_vec_2 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _far_path_res_exp_T_3 = _far_path_res_exp_T | _far_path_res_exp_T_1; // @[Mux.scala 27:73]
  wire [10:0] far_path_res_exp = _far_path_res_exp_T_3 | _far_path_res_exp_T_2; // @[Mux.scala 27:73]
  wire  far_path_tininess = io_in_small_add & far_path_tininess_rounder_io_tininess; // @[FADD.scala 389:37]
  wire [10:0] _GEN_0 = {{10'd0}, far_path_rounder_io_cout}; // @[FADD.scala 398:55]
  wire [10:0] far_path_exp_rounded = _GEN_0 + far_path_res_exp; // @[FADD.scala 398:55]
  wire  far_path_may_uf = far_path_tininess & ~io_in_far_path_mul_of; // @[FADD.scala 403:43]
  wire  far_path_of_before_round = far_path_res_exp == 11'h7ff; // @[FADD.scala 406:18]
  wire  _far_path_of_after_round_T = far_path_res_exp == 11'h7fe; // @[FADD.scala 408:18]
  wire  far_path_of_after_round = far_path_rounder_io_cout & _far_path_of_after_round_T; // @[FADD.scala 407:58]
  wire  far_path_of = far_path_of_before_round | far_path_of_after_round | io_in_far_path_mul_of; // @[FADD.scala 411:57]
  wire  far_path_ix = far_path_rounder_io_inexact | far_path_of; // @[FADD.scala 412:49]
  wire  far_path_uf = far_path_may_uf & far_path_ix; // @[FADD.scala 413:37]
  wire [63:0] far_path_result = {io_in_far_path_out_sign,far_path_exp_rounded,far_path_rounder_io_out}; // @[Cat.scala 31:58]
  wire [10:0] _GEN_1 = {{4'd0}, io_in_near_path_lzc}; // @[FADD.scala 428:40]
  wire [10:0] exp_s1 = io_in_near_path_out_exp - _GEN_1; // @[FADD.scala 428:40]
  wire [10:0] _GEN_2 = {{10'd0}, io_in_near_path_lza_error}; // @[FADD.scala 429:23]
  wire [10:0] exp_s2 = exp_s1 - _GEN_2; // @[FADD.scala 429:23]
  wire [10:0] near_path_res_exp = io_in_near_path_int_bit ? exp_s2 : 11'h0; // @[FADD.scala 430:27]
  wire  near_path_is_zero = near_path_res_exp == 11'h0 & io_in_near_path_sig_is_zero; // @[FADD.scala 424:49]
  wire [233:0] _GEN_4 = {{127'd0}, io_in_near_path_sig_raw}; // @[FADD.scala 432:41]
  wire [233:0] _sig_s1_T = _GEN_4 << io_in_near_path_lzc; // @[FADD.scala 432:41]
  wire [106:0] sig_s1 = _sig_s1_T[106:0]; // @[FADD.scala 432:48]
  wire [106:0] _sig_s2_T_1 = {sig_s1[105:0],1'h0}; // @[Cat.scala 31:58]
  wire [106:0] near_path_sig_cor = io_in_near_path_lza_error ? _sig_s2_T_1 : sig_s1; // @[FADD.scala 433:19]
  wire [55:0] near_path_sig = {near_path_sig_cor[106:52],|near_path_sig_cor[51:0]}; // @[FADD.scala 442:57]
  wire [10:0] _GEN_3 = {{10'd0}, near_path_rounder_io_cout}; // @[FADD.scala 457:57]
  wire [10:0] near_path_exp_rounded = _GEN_3 + near_path_res_exp; // @[FADD.scala 457:57]
  wire  near_path_zero_sign = io_in_rm == 3'h2; // @[FADD.scala 459:38]
  wire  _near_path_result_T_3 = io_in_near_path_out_sign & ~near_path_is_zero | near_path_zero_sign & near_path_is_zero; // @[FADD.scala 461:44]
  wire [63:0] near_path_result = {_near_path_result_T_3,near_path_exp_rounded,near_path_rounder_io_out}; // @[Cat.scala 31:58]
  wire  near_path_of = near_path_exp_rounded == 11'h7ff; // @[FADD.scala 466:44]
  wire  near_path_ix = near_path_rounder_io_inexact | near_path_of; // @[FADD.scala 467:51]
  wire  near_path_uf = near_path_tininess_rounder_io_tininess & near_path_ix; // @[FADD.scala 468:41]
  wire  _common_overflow_T_1 = ~io_in_sel_far_path; // @[FADD.scala 472:36]
  wire  common_overflow = io_in_sel_far_path & far_path_of | ~io_in_sel_far_path & near_path_of; // @[FADD.scala 472:33]
  wire  common_overflow_sign = io_in_sel_far_path ? io_in_far_path_out_sign : io_in_near_path_out_sign; // @[FADD.scala 474:8]
  wire  rmin = io_in_rm == 3'h1 | near_path_zero_sign & ~io_in_far_path_out_sign | io_in_rm == 3'h3 &
    io_in_far_path_out_sign; // @[RoundingUnit.scala 54:41]
  wire [10:0] common_overflow_exp = rmin ? 11'h7fe : 11'h7ff; // @[FADD.scala 476:32]
  wire [51:0] common_overflow_sig = rmin ? 52'hfffffffffffff : 52'h0; // @[FADD.scala 482:8]
  wire  common_underflow = io_in_sel_far_path & far_path_uf | _common_overflow_T_1 & near_path_uf; // @[FADD.scala 484:33]
  wire  common_inexact = io_in_sel_far_path & far_path_ix | _common_overflow_T_1 & near_path_ix; // @[FADD.scala 486:33]
  wire [4:0] common_fflags = {2'h0,common_overflow,common_underflow,common_inexact}; // @[Cat.scala 31:58]
  wire [63:0] _io_result_T = {common_overflow_sign,common_overflow_exp,common_overflow_sig}; // @[Cat.scala 31:58]
  wire [63:0] _io_result_T_1 = io_in_sel_far_path ? far_path_result : near_path_result; // @[FADD.scala 501:10]
  wire [63:0] _io_result_T_2 = common_overflow ? _io_result_T : _io_result_T_1; // @[FADD.scala 498:8]
  TininessRounder_1 far_path_tininess_rounder ( // @[FADD.scala 386:41]
    .io_in_sign(far_path_tininess_rounder_io_in_sign),
    .io_in_sig(far_path_tininess_rounder_io_in_sig),
    .io_rm(far_path_tininess_rounder_io_rm),
    .io_tininess(far_path_tininess_rounder_io_tininess)
  );
  RoundingUnit_1 far_path_rounder ( // @[RoundingUnit.scala 44:25]
    .io_in(far_path_rounder_io_in),
    .io_roundIn(far_path_rounder_io_roundIn),
    .io_stickyIn(far_path_rounder_io_stickyIn),
    .io_signIn(far_path_rounder_io_signIn),
    .io_rm(far_path_rounder_io_rm),
    .io_out(far_path_rounder_io_out),
    .io_inexact(far_path_rounder_io_inexact),
    .io_cout(far_path_rounder_io_cout)
  );
  TininessRounder_1 near_path_tininess_rounder ( // @[FADD.scala 445:42]
    .io_in_sign(near_path_tininess_rounder_io_in_sign),
    .io_in_sig(near_path_tininess_rounder_io_in_sig),
    .io_rm(near_path_tininess_rounder_io_rm),
    .io_tininess(near_path_tininess_rounder_io_tininess)
  );
  RoundingUnit_1 near_path_rounder ( // @[RoundingUnit.scala 44:25]
    .io_in(near_path_rounder_io_in),
    .io_roundIn(near_path_rounder_io_roundIn),
    .io_stickyIn(near_path_rounder_io_stickyIn),
    .io_signIn(near_path_rounder_io_signIn),
    .io_rm(near_path_rounder_io_rm),
    .io_out(near_path_rounder_io_out),
    .io_inexact(near_path_rounder_io_inexact),
    .io_cout(near_path_rounder_io_cout)
  );
  assign io_result = io_in_special_case_valid ? special_path_result : _io_result_T_2; // @[FADD.scala 495:19]
  assign io_fflags = io_in_special_case_valid ? special_path_fflags : common_fflags; // @[FADD.scala 504:19]
  assign far_path_tininess_rounder_io_in_sign = io_in_far_path_out_sign; // @[FADD.scala 387:35]
  assign far_path_tininess_rounder_io_in_sig = _far_path_res_sig_T_20 | _far_path_res_sig_T_19; // @[Mux.scala 27:73]
  assign far_path_tininess_rounder_io_rm = io_in_rm; // @[FADD.scala 388:35]
  assign far_path_rounder_io_in = far_path_res_sig[54:3]; // @[RoundingUnit.scala 45:33]
  assign far_path_rounder_io_roundIn = far_path_res_sig[2]; // @[RoundingUnit.scala 46:50]
  assign far_path_rounder_io_stickyIn = |far_path_res_sig[1:0]; // @[RoundingUnit.scala 47:54]
  assign far_path_rounder_io_signIn = io_in_far_path_out_sign; // @[RoundingUnit.scala 49:23]
  assign far_path_rounder_io_rm = io_in_rm; // @[RoundingUnit.scala 48:19]
  assign near_path_tininess_rounder_io_in_sign = io_in_near_path_out_sign; // @[FADD.scala 446:36]
  assign near_path_tininess_rounder_io_in_sig = {near_path_sig_cor[106:52],|near_path_sig_cor[51:0]}; // @[FADD.scala 442:57]
  assign near_path_tininess_rounder_io_rm = io_in_rm; // @[FADD.scala 447:36]
  assign near_path_rounder_io_in = near_path_sig[54:3]; // @[RoundingUnit.scala 45:33]
  assign near_path_rounder_io_roundIn = near_path_sig[2]; // @[RoundingUnit.scala 46:50]
  assign near_path_rounder_io_stickyIn = |near_path_sig[1:0]; // @[RoundingUnit.scala 47:54]
  assign near_path_rounder_io_signIn = io_in_near_path_out_sign; // @[RoundingUnit.scala 49:23]
  assign near_path_rounder_io_rm = io_in_rm; // @[RoundingUnit.scala 48:19]
endmodule

