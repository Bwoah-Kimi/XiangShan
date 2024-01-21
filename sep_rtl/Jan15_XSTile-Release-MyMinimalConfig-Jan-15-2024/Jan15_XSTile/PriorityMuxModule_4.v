module PriorityMuxModule_4(
  input         s2_FGH_sel,
  input  [7:0]  s2_FGH_src_hist_17_folded_hist,
  input  [7:0]  s2_FGH_src_hist_16_folded_hist,
  input  [10:0] s2_FGH_src_hist_15_folded_hist,
  input  [6:0]  s2_FGH_src_hist_14_folded_hist,
  input  [6:0]  s2_FGH_src_hist_13_folded_hist,
  input  [6:0]  s2_FGH_src_hist_12_folded_hist,
  input  [7:0]  s2_FGH_src_hist_11_folded_hist,
  input  [8:0]  s2_FGH_src_hist_10_folded_hist,
  input  [6:0]  s2_FGH_src_hist_9_folded_hist,
  input  [7:0]  s2_FGH_src_hist_8_folded_hist,
  input  [8:0]  s2_FGH_src_hist_7_folded_hist,
  input  [8:0]  s2_FGH_src_hist_6_folded_hist,
  input  [10:0] s2_FGH_src_hist_5_folded_hist,
  input  [3:0]  s2_FGH_src_hist_4_folded_hist,
  input  [10:0] s2_FGH_src_hist_3_folded_hist,
  input  [7:0]  s2_FGH_src_hist_2_folded_hist,
  input  [7:0]  s2_FGH_src_hist_1_folded_hist,
  input  [7:0]  s2_FGH_src_hist_0_folded_hist,
  input         s1_FGH_sel,
  input  [7:0]  s1_FGH_src_hist_17_folded_hist,
  input  [7:0]  s1_FGH_src_hist_16_folded_hist,
  input  [10:0] s1_FGH_src_hist_15_folded_hist,
  input  [6:0]  s1_FGH_src_hist_14_folded_hist,
  input  [6:0]  s1_FGH_src_hist_13_folded_hist,
  input  [6:0]  s1_FGH_src_hist_12_folded_hist,
  input  [7:0]  s1_FGH_src_hist_11_folded_hist,
  input  [8:0]  s1_FGH_src_hist_10_folded_hist,
  input  [6:0]  s1_FGH_src_hist_9_folded_hist,
  input  [7:0]  s1_FGH_src_hist_8_folded_hist,
  input  [8:0]  s1_FGH_src_hist_7_folded_hist,
  input  [8:0]  s1_FGH_src_hist_6_folded_hist,
  input  [10:0] s1_FGH_src_hist_5_folded_hist,
  input  [3:0]  s1_FGH_src_hist_4_folded_hist,
  input  [10:0] s1_FGH_src_hist_3_folded_hist,
  input  [7:0]  s1_FGH_src_hist_2_folded_hist,
  input  [7:0]  s1_FGH_src_hist_1_folded_hist,
  input  [7:0]  s1_FGH_src_hist_0_folded_hist,
  input         s3_FGH_sel,
  input  [7:0]  s3_FGH_src_hist_17_folded_hist,
  input  [7:0]  s3_FGH_src_hist_16_folded_hist,
  input  [10:0] s3_FGH_src_hist_15_folded_hist,
  input  [6:0]  s3_FGH_src_hist_14_folded_hist,
  input  [6:0]  s3_FGH_src_hist_13_folded_hist,
  input  [6:0]  s3_FGH_src_hist_12_folded_hist,
  input  [7:0]  s3_FGH_src_hist_11_folded_hist,
  input  [8:0]  s3_FGH_src_hist_10_folded_hist,
  input  [6:0]  s3_FGH_src_hist_9_folded_hist,
  input  [7:0]  s3_FGH_src_hist_8_folded_hist,
  input  [8:0]  s3_FGH_src_hist_7_folded_hist,
  input  [8:0]  s3_FGH_src_hist_6_folded_hist,
  input  [10:0] s3_FGH_src_hist_5_folded_hist,
  input  [3:0]  s3_FGH_src_hist_4_folded_hist,
  input  [10:0] s3_FGH_src_hist_3_folded_hist,
  input  [7:0]  s3_FGH_src_hist_2_folded_hist,
  input  [7:0]  s3_FGH_src_hist_1_folded_hist,
  input  [7:0]  s3_FGH_src_hist_0_folded_hist,
  input         redirect_FGHT_sel,
  input  [7:0]  redirect_FGHT_src_hist_17_folded_hist,
  input  [7:0]  redirect_FGHT_src_hist_16_folded_hist,
  input  [10:0] redirect_FGHT_src_hist_15_folded_hist,
  input  [6:0]  redirect_FGHT_src_hist_14_folded_hist,
  input  [6:0]  redirect_FGHT_src_hist_13_folded_hist,
  input  [6:0]  redirect_FGHT_src_hist_12_folded_hist,
  input  [7:0]  redirect_FGHT_src_hist_11_folded_hist,
  input  [8:0]  redirect_FGHT_src_hist_10_folded_hist,
  input  [6:0]  redirect_FGHT_src_hist_9_folded_hist,
  input  [7:0]  redirect_FGHT_src_hist_8_folded_hist,
  input  [8:0]  redirect_FGHT_src_hist_7_folded_hist,
  input  [8:0]  redirect_FGHT_src_hist_6_folded_hist,
  input  [10:0] redirect_FGHT_src_hist_5_folded_hist,
  input  [3:0]  redirect_FGHT_src_hist_4_folded_hist,
  input  [10:0] redirect_FGHT_src_hist_3_folded_hist,
  input  [7:0]  redirect_FGHT_src_hist_2_folded_hist,
  input  [7:0]  redirect_FGHT_src_hist_1_folded_hist,
  input  [7:0]  redirect_FGHT_src_hist_0_folded_hist,
  input  [7:0]  stallFGH_src_hist_17_folded_hist,
  input  [7:0]  stallFGH_src_hist_16_folded_hist,
  input  [10:0] stallFGH_src_hist_15_folded_hist,
  input  [6:0]  stallFGH_src_hist_14_folded_hist,
  input  [6:0]  stallFGH_src_hist_13_folded_hist,
  input  [6:0]  stallFGH_src_hist_12_folded_hist,
  input  [7:0]  stallFGH_src_hist_11_folded_hist,
  input  [8:0]  stallFGH_src_hist_10_folded_hist,
  input  [6:0]  stallFGH_src_hist_9_folded_hist,
  input  [7:0]  stallFGH_src_hist_8_folded_hist,
  input  [8:0]  stallFGH_src_hist_7_folded_hist,
  input  [8:0]  stallFGH_src_hist_6_folded_hist,
  input  [10:0] stallFGH_src_hist_5_folded_hist,
  input  [3:0]  stallFGH_src_hist_4_folded_hist,
  input  [10:0] stallFGH_src_hist_3_folded_hist,
  input  [7:0]  stallFGH_src_hist_2_folded_hist,
  input  [7:0]  stallFGH_src_hist_1_folded_hist,
  input  [7:0]  stallFGH_src_hist_0_folded_hist,
  output [7:0]  out_res_hist_17_folded_hist,
  output [7:0]  out_res_hist_16_folded_hist,
  output [10:0] out_res_hist_15_folded_hist,
  output [6:0]  out_res_hist_14_folded_hist,
  output [6:0]  out_res_hist_13_folded_hist,
  output [6:0]  out_res_hist_12_folded_hist,
  output [7:0]  out_res_hist_11_folded_hist,
  output [8:0]  out_res_hist_10_folded_hist,
  output [6:0]  out_res_hist_9_folded_hist,
  output [7:0]  out_res_hist_8_folded_hist,
  output [8:0]  out_res_hist_7_folded_hist,
  output [8:0]  out_res_hist_6_folded_hist,
  output [10:0] out_res_hist_5_folded_hist,
  output [3:0]  out_res_hist_4_folded_hist,
  output [10:0] out_res_hist_3_folded_hist,
  output [7:0]  out_res_hist_2_folded_hist,
  output [7:0]  out_res_hist_1_folded_hist,
  output [7:0]  out_res_hist_0_folded_hist
);
  wire [7:0] _out_res_T_hist_17_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_17_folded_hist :
    stallFGH_src_hist_17_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_hist_16_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_16_folded_hist :
    stallFGH_src_hist_16_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_hist_15_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_15_folded_hist :
    stallFGH_src_hist_15_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_hist_14_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_14_folded_hist :
    stallFGH_src_hist_14_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_hist_13_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_13_folded_hist :
    stallFGH_src_hist_13_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_hist_12_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_12_folded_hist :
    stallFGH_src_hist_12_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_hist_11_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_11_folded_hist :
    stallFGH_src_hist_11_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_hist_10_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_10_folded_hist :
    stallFGH_src_hist_10_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_hist_9_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_9_folded_hist :
    stallFGH_src_hist_9_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_hist_8_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_8_folded_hist :
    stallFGH_src_hist_8_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_hist_7_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_7_folded_hist :
    stallFGH_src_hist_7_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_hist_6_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_6_folded_hist :
    stallFGH_src_hist_6_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_hist_5_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_5_folded_hist :
    stallFGH_src_hist_5_folded_hist; // @[Mux.scala 47:70]
  wire [3:0] _out_res_T_hist_4_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_4_folded_hist :
    stallFGH_src_hist_4_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_hist_3_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_3_folded_hist :
    stallFGH_src_hist_3_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_hist_2_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_2_folded_hist :
    stallFGH_src_hist_2_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_hist_1_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_1_folded_hist :
    stallFGH_src_hist_1_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_hist_0_folded_hist = redirect_FGHT_sel ? redirect_FGHT_src_hist_0_folded_hist :
    stallFGH_src_hist_0_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_17_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_17_folded_hist :
    _out_res_T_hist_17_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_16_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_16_folded_hist :
    _out_res_T_hist_16_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_1_hist_15_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_15_folded_hist :
    _out_res_T_hist_15_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_1_hist_14_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_14_folded_hist :
    _out_res_T_hist_14_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_1_hist_13_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_13_folded_hist :
    _out_res_T_hist_13_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_1_hist_12_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_12_folded_hist :
    _out_res_T_hist_12_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_11_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_11_folded_hist :
    _out_res_T_hist_11_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_1_hist_10_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_10_folded_hist :
    _out_res_T_hist_10_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_1_hist_9_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_9_folded_hist :
    _out_res_T_hist_9_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_8_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_8_folded_hist :
    _out_res_T_hist_8_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_1_hist_7_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_7_folded_hist :
    _out_res_T_hist_7_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_1_hist_6_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_6_folded_hist :
    _out_res_T_hist_6_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_1_hist_5_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_5_folded_hist :
    _out_res_T_hist_5_folded_hist; // @[Mux.scala 47:70]
  wire [3:0] _out_res_T_1_hist_4_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_4_folded_hist :
    _out_res_T_hist_4_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_1_hist_3_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_3_folded_hist :
    _out_res_T_hist_3_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_2_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_2_folded_hist :
    _out_res_T_hist_2_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_1_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_1_folded_hist :
    _out_res_T_hist_1_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_hist_0_folded_hist = s3_FGH_sel ? s3_FGH_src_hist_0_folded_hist :
    _out_res_T_hist_0_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_17_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_17_folded_hist :
    _out_res_T_1_hist_17_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_16_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_16_folded_hist :
    _out_res_T_1_hist_16_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_2_hist_15_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_15_folded_hist :
    _out_res_T_1_hist_15_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_2_hist_14_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_14_folded_hist :
    _out_res_T_1_hist_14_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_2_hist_13_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_13_folded_hist :
    _out_res_T_1_hist_13_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_2_hist_12_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_12_folded_hist :
    _out_res_T_1_hist_12_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_11_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_11_folded_hist :
    _out_res_T_1_hist_11_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_2_hist_10_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_10_folded_hist :
    _out_res_T_1_hist_10_folded_hist; // @[Mux.scala 47:70]
  wire [6:0] _out_res_T_2_hist_9_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_9_folded_hist :
    _out_res_T_1_hist_9_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_8_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_8_folded_hist :
    _out_res_T_1_hist_8_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_2_hist_7_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_7_folded_hist :
    _out_res_T_1_hist_7_folded_hist; // @[Mux.scala 47:70]
  wire [8:0] _out_res_T_2_hist_6_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_6_folded_hist :
    _out_res_T_1_hist_6_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_2_hist_5_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_5_folded_hist :
    _out_res_T_1_hist_5_folded_hist; // @[Mux.scala 47:70]
  wire [3:0] _out_res_T_2_hist_4_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_4_folded_hist :
    _out_res_T_1_hist_4_folded_hist; // @[Mux.scala 47:70]
  wire [10:0] _out_res_T_2_hist_3_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_3_folded_hist :
    _out_res_T_1_hist_3_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_2_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_2_folded_hist :
    _out_res_T_1_hist_2_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_1_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_1_folded_hist :
    _out_res_T_1_hist_1_folded_hist; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_hist_0_folded_hist = s1_FGH_sel ? s1_FGH_src_hist_0_folded_hist :
    _out_res_T_1_hist_0_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_17_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_17_folded_hist : _out_res_T_2_hist_17_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_16_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_16_folded_hist : _out_res_T_2_hist_16_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_15_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_15_folded_hist : _out_res_T_2_hist_15_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_14_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_14_folded_hist : _out_res_T_2_hist_14_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_13_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_13_folded_hist : _out_res_T_2_hist_13_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_12_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_12_folded_hist : _out_res_T_2_hist_12_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_11_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_11_folded_hist : _out_res_T_2_hist_11_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_10_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_10_folded_hist : _out_res_T_2_hist_10_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_9_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_9_folded_hist : _out_res_T_2_hist_9_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_8_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_8_folded_hist : _out_res_T_2_hist_8_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_7_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_7_folded_hist : _out_res_T_2_hist_7_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_6_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_6_folded_hist : _out_res_T_2_hist_6_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_5_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_5_folded_hist : _out_res_T_2_hist_5_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_4_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_4_folded_hist : _out_res_T_2_hist_4_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_3_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_3_folded_hist : _out_res_T_2_hist_3_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_2_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_2_folded_hist : _out_res_T_2_hist_2_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_1_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_1_folded_hist : _out_res_T_2_hist_1_folded_hist; // @[Mux.scala 47:70]
  assign out_res_hist_0_folded_hist = s2_FGH_sel ? s2_FGH_src_hist_0_folded_hist : _out_res_T_2_hist_0_folded_hist; // @[Mux.scala 47:70]
endmodule

