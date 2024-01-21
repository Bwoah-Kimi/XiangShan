module IntToFP_1(
  input  [63:0] io_int,
  input         io_sign,
  input         io_long,
  input  [2:0]  io_rm,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [63:0] pre_norm_io_in_int; // @[IntToFP.scala 102:24]
  wire  pre_norm_io_in_sign; // @[IntToFP.scala 102:24]
  wire  pre_norm_io_in_long; // @[IntToFP.scala 102:24]
  wire [62:0] pre_norm_io_out_norm_int; // @[IntToFP.scala 102:24]
  wire [5:0] pre_norm_io_out_lzc; // @[IntToFP.scala 102:24]
  wire  pre_norm_io_out_is_zero; // @[IntToFP.scala 102:24]
  wire  pre_norm_io_out_sign; // @[IntToFP.scala 102:24]
  wire [62:0] post_norm_io_in_norm_int; // @[IntToFP.scala 103:25]
  wire [5:0] post_norm_io_in_lzc; // @[IntToFP.scala 103:25]
  wire  post_norm_io_in_is_zero; // @[IntToFP.scala 103:25]
  wire  post_norm_io_in_sign; // @[IntToFP.scala 103:25]
  wire [2:0] post_norm_io_rm; // @[IntToFP.scala 103:25]
  wire [63:0] post_norm_io_result; // @[IntToFP.scala 103:25]
  wire [4:0] post_norm_io_fflags; // @[IntToFP.scala 103:25]
  IntToFP_prenorm pre_norm ( // @[IntToFP.scala 102:24]
    .io_in_int(pre_norm_io_in_int),
    .io_in_sign(pre_norm_io_in_sign),
    .io_in_long(pre_norm_io_in_long),
    .io_out_norm_int(pre_norm_io_out_norm_int),
    .io_out_lzc(pre_norm_io_out_lzc),
    .io_out_is_zero(pre_norm_io_out_is_zero),
    .io_out_sign(pre_norm_io_out_sign)
  );
  IntToFP_postnorm_1 post_norm ( // @[IntToFP.scala 103:25]
    .io_in_norm_int(post_norm_io_in_norm_int),
    .io_in_lzc(post_norm_io_in_lzc),
    .io_in_is_zero(post_norm_io_in_is_zero),
    .io_in_sign(post_norm_io_in_sign),
    .io_rm(post_norm_io_rm),
    .io_result(post_norm_io_result),
    .io_fflags(post_norm_io_fflags)
  );
  assign io_result = post_norm_io_result; // @[IntToFP.scala 109:13]
  assign io_fflags = post_norm_io_fflags; // @[IntToFP.scala 110:13]
  assign pre_norm_io_in_int = io_int; // @[IntToFP.scala 105:18]
  assign pre_norm_io_in_sign = io_sign; // @[IntToFP.scala 105:18]
  assign pre_norm_io_in_long = io_long; // @[IntToFP.scala 105:18]
  assign post_norm_io_in_norm_int = pre_norm_io_out_norm_int; // @[IntToFP.scala 106:19]
  assign post_norm_io_in_lzc = pre_norm_io_out_lzc; // @[IntToFP.scala 106:19]
  assign post_norm_io_in_is_zero = pre_norm_io_out_is_zero; // @[IntToFP.scala 106:19]
  assign post_norm_io_in_sign = pre_norm_io_out_sign; // @[IntToFP.scala 106:19]
  assign post_norm_io_rm = io_rm; // @[IntToFP.scala 107:19]
endmodule

