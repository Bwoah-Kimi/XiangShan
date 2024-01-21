module FPToInt(
  input  [31:0] io_a,
  input  [2:0]  io_rm,
  input  [1:0]  io_op,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [31:0] s1_io_a; // @[FPToInt.scala 187:18]
  wire [2:0] s1_io_rm; // @[FPToInt.scala 187:18]
  wire [1:0] s1_io_op; // @[FPToInt.scala 187:18]
  wire  s1_io_to_s2_raw_a_sign; // @[FPToInt.scala 187:18]
  wire [23:0] s1_io_to_s2_raw_a_sig; // @[FPToInt.scala 187:18]
  wire [2:0] s1_io_to_s2_rm; // @[FPToInt.scala 187:18]
  wire [1:0] s1_io_to_s2_op; // @[FPToInt.scala 187:18]
  wire  s1_io_to_s2_sel_lpath; // @[FPToInt.scala 187:18]
  wire  s1_io_to_s2_exp_of; // @[FPToInt.scala 187:18]
  wire  s1_io_to_s2_iv_sel_max; // @[FPToInt.scala 187:18]
  wire  s1_io_to_s2_lpath_iv; // @[FPToInt.scala 187:18]
  wire  s1_io_to_s2_lpath_of; // @[FPToInt.scala 187:18]
  wire [5:0] s1_io_to_s2_lpath_shamt; // @[FPToInt.scala 187:18]
  wire [7:0] s1_io_to_s2_rpath_shamt; // @[FPToInt.scala 187:18]
  wire  s2_io_s1_raw_a_sign; // @[FPToInt.scala 188:18]
  wire [23:0] s2_io_s1_raw_a_sig; // @[FPToInt.scala 188:18]
  wire [2:0] s2_io_s1_rm; // @[FPToInt.scala 188:18]
  wire [1:0] s2_io_s1_op; // @[FPToInt.scala 188:18]
  wire  s2_io_s1_sel_lpath; // @[FPToInt.scala 188:18]
  wire  s2_io_s1_exp_of; // @[FPToInt.scala 188:18]
  wire  s2_io_s1_iv_sel_max; // @[FPToInt.scala 188:18]
  wire  s2_io_s1_lpath_iv; // @[FPToInt.scala 188:18]
  wire  s2_io_s1_lpath_of; // @[FPToInt.scala 188:18]
  wire [5:0] s2_io_s1_lpath_shamt; // @[FPToInt.scala 188:18]
  wire [7:0] s2_io_s1_rpath_shamt; // @[FPToInt.scala 188:18]
  wire [63:0] s2_io_result; // @[FPToInt.scala 188:18]
  wire [4:0] s2_io_fflags; // @[FPToInt.scala 188:18]
  FPToInt_s1 s1 ( // @[FPToInt.scala 187:18]
    .io_a(s1_io_a),
    .io_rm(s1_io_rm),
    .io_op(s1_io_op),
    .io_to_s2_raw_a_sign(s1_io_to_s2_raw_a_sign),
    .io_to_s2_raw_a_sig(s1_io_to_s2_raw_a_sig),
    .io_to_s2_rm(s1_io_to_s2_rm),
    .io_to_s2_op(s1_io_to_s2_op),
    .io_to_s2_sel_lpath(s1_io_to_s2_sel_lpath),
    .io_to_s2_exp_of(s1_io_to_s2_exp_of),
    .io_to_s2_iv_sel_max(s1_io_to_s2_iv_sel_max),
    .io_to_s2_lpath_iv(s1_io_to_s2_lpath_iv),
    .io_to_s2_lpath_of(s1_io_to_s2_lpath_of),
    .io_to_s2_lpath_shamt(s1_io_to_s2_lpath_shamt),
    .io_to_s2_rpath_shamt(s1_io_to_s2_rpath_shamt)
  );
  FPToInt_s2 s2 ( // @[FPToInt.scala 188:18]
    .io_s1_raw_a_sign(s2_io_s1_raw_a_sign),
    .io_s1_raw_a_sig(s2_io_s1_raw_a_sig),
    .io_s1_rm(s2_io_s1_rm),
    .io_s1_op(s2_io_s1_op),
    .io_s1_sel_lpath(s2_io_s1_sel_lpath),
    .io_s1_exp_of(s2_io_s1_exp_of),
    .io_s1_iv_sel_max(s2_io_s1_iv_sel_max),
    .io_s1_lpath_iv(s2_io_s1_lpath_iv),
    .io_s1_lpath_of(s2_io_s1_lpath_of),
    .io_s1_lpath_shamt(s2_io_s1_lpath_shamt),
    .io_s1_rpath_shamt(s2_io_s1_rpath_shamt),
    .io_result(s2_io_result),
    .io_fflags(s2_io_fflags)
  );
  assign io_result = s2_io_result; // @[FPToInt.scala 194:13]
  assign io_fflags = s2_io_fflags; // @[FPToInt.scala 195:13]
  assign s1_io_a = io_a; // @[FPToInt.scala 190:11]
  assign s1_io_rm = io_rm; // @[FPToInt.scala 191:12]
  assign s1_io_op = io_op; // @[FPToInt.scala 192:12]
  assign s2_io_s1_raw_a_sign = s1_io_to_s2_raw_a_sign; // @[FPToInt.scala 193:12]
  assign s2_io_s1_raw_a_sig = s1_io_to_s2_raw_a_sig; // @[FPToInt.scala 193:12]
  assign s2_io_s1_rm = s1_io_to_s2_rm; // @[FPToInt.scala 193:12]
  assign s2_io_s1_op = s1_io_to_s2_op; // @[FPToInt.scala 193:12]
  assign s2_io_s1_sel_lpath = s1_io_to_s2_sel_lpath; // @[FPToInt.scala 193:12]
  assign s2_io_s1_exp_of = s1_io_to_s2_exp_of; // @[FPToInt.scala 193:12]
  assign s2_io_s1_iv_sel_max = s1_io_to_s2_iv_sel_max; // @[FPToInt.scala 193:12]
  assign s2_io_s1_lpath_iv = s1_io_to_s2_lpath_iv; // @[FPToInt.scala 193:12]
  assign s2_io_s1_lpath_of = s1_io_to_s2_lpath_of; // @[FPToInt.scala 193:12]
  assign s2_io_s1_lpath_shamt = s1_io_to_s2_lpath_shamt; // @[FPToInt.scala 193:12]
  assign s2_io_s1_rpath_shamt = s1_io_to_s2_rpath_shamt; // @[FPToInt.scala 193:12]
endmodule

