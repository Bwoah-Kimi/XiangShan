module PriorityMuxModule_12(
  input   s2_AFHOB_sel,
  input   s2_AFHOB_src_afhob_5_bits_0,
  input   s2_AFHOB_src_afhob_5_bits_1,
  input   s2_AFHOB_src_afhob_5_bits_2,
  input   s2_AFHOB_src_afhob_5_bits_3,
  input   s2_AFHOB_src_afhob_4_bits_0,
  input   s2_AFHOB_src_afhob_4_bits_1,
  input   s2_AFHOB_src_afhob_4_bits_2,
  input   s2_AFHOB_src_afhob_4_bits_3,
  input   s2_AFHOB_src_afhob_3_bits_0,
  input   s2_AFHOB_src_afhob_3_bits_1,
  input   s2_AFHOB_src_afhob_3_bits_2,
  input   s2_AFHOB_src_afhob_3_bits_3,
  input   s2_AFHOB_src_afhob_2_bits_0,
  input   s2_AFHOB_src_afhob_2_bits_1,
  input   s2_AFHOB_src_afhob_2_bits_2,
  input   s2_AFHOB_src_afhob_2_bits_3,
  input   s2_AFHOB_src_afhob_1_bits_0,
  input   s2_AFHOB_src_afhob_1_bits_1,
  input   s2_AFHOB_src_afhob_1_bits_2,
  input   s2_AFHOB_src_afhob_1_bits_3,
  input   s2_AFHOB_src_afhob_0_bits_0,
  input   s2_AFHOB_src_afhob_0_bits_1,
  input   s2_AFHOB_src_afhob_0_bits_2,
  input   s2_AFHOB_src_afhob_0_bits_3,
  input   s1_AFHOB_sel,
  input   s1_AFHOB_src_afhob_5_bits_0,
  input   s1_AFHOB_src_afhob_5_bits_1,
  input   s1_AFHOB_src_afhob_5_bits_2,
  input   s1_AFHOB_src_afhob_5_bits_3,
  input   s1_AFHOB_src_afhob_4_bits_0,
  input   s1_AFHOB_src_afhob_4_bits_1,
  input   s1_AFHOB_src_afhob_4_bits_2,
  input   s1_AFHOB_src_afhob_4_bits_3,
  input   s1_AFHOB_src_afhob_3_bits_0,
  input   s1_AFHOB_src_afhob_3_bits_1,
  input   s1_AFHOB_src_afhob_3_bits_2,
  input   s1_AFHOB_src_afhob_3_bits_3,
  input   s1_AFHOB_src_afhob_2_bits_0,
  input   s1_AFHOB_src_afhob_2_bits_1,
  input   s1_AFHOB_src_afhob_2_bits_2,
  input   s1_AFHOB_src_afhob_2_bits_3,
  input   s1_AFHOB_src_afhob_1_bits_0,
  input   s1_AFHOB_src_afhob_1_bits_1,
  input   s1_AFHOB_src_afhob_1_bits_2,
  input   s1_AFHOB_src_afhob_1_bits_3,
  input   s1_AFHOB_src_afhob_0_bits_0,
  input   s1_AFHOB_src_afhob_0_bits_1,
  input   s1_AFHOB_src_afhob_0_bits_2,
  input   s1_AFHOB_src_afhob_0_bits_3,
  input   s3_AFHOB_sel,
  input   s3_AFHOB_src_afhob_5_bits_0,
  input   s3_AFHOB_src_afhob_5_bits_1,
  input   s3_AFHOB_src_afhob_5_bits_2,
  input   s3_AFHOB_src_afhob_5_bits_3,
  input   s3_AFHOB_src_afhob_4_bits_0,
  input   s3_AFHOB_src_afhob_4_bits_1,
  input   s3_AFHOB_src_afhob_4_bits_2,
  input   s3_AFHOB_src_afhob_4_bits_3,
  input   s3_AFHOB_src_afhob_3_bits_0,
  input   s3_AFHOB_src_afhob_3_bits_1,
  input   s3_AFHOB_src_afhob_3_bits_2,
  input   s3_AFHOB_src_afhob_3_bits_3,
  input   s3_AFHOB_src_afhob_2_bits_0,
  input   s3_AFHOB_src_afhob_2_bits_1,
  input   s3_AFHOB_src_afhob_2_bits_2,
  input   s3_AFHOB_src_afhob_2_bits_3,
  input   s3_AFHOB_src_afhob_1_bits_0,
  input   s3_AFHOB_src_afhob_1_bits_1,
  input   s3_AFHOB_src_afhob_1_bits_2,
  input   s3_AFHOB_src_afhob_1_bits_3,
  input   s3_AFHOB_src_afhob_0_bits_0,
  input   s3_AFHOB_src_afhob_0_bits_1,
  input   s3_AFHOB_src_afhob_0_bits_2,
  input   s3_AFHOB_src_afhob_0_bits_3,
  input   redirect_AFHOB_sel,
  input   redirect_AFHOB_src_afhob_5_bits_0,
  input   redirect_AFHOB_src_afhob_5_bits_1,
  input   redirect_AFHOB_src_afhob_5_bits_2,
  input   redirect_AFHOB_src_afhob_5_bits_3,
  input   redirect_AFHOB_src_afhob_4_bits_0,
  input   redirect_AFHOB_src_afhob_4_bits_1,
  input   redirect_AFHOB_src_afhob_4_bits_2,
  input   redirect_AFHOB_src_afhob_4_bits_3,
  input   redirect_AFHOB_src_afhob_3_bits_0,
  input   redirect_AFHOB_src_afhob_3_bits_1,
  input   redirect_AFHOB_src_afhob_3_bits_2,
  input   redirect_AFHOB_src_afhob_3_bits_3,
  input   redirect_AFHOB_src_afhob_2_bits_0,
  input   redirect_AFHOB_src_afhob_2_bits_1,
  input   redirect_AFHOB_src_afhob_2_bits_2,
  input   redirect_AFHOB_src_afhob_2_bits_3,
  input   redirect_AFHOB_src_afhob_1_bits_0,
  input   redirect_AFHOB_src_afhob_1_bits_1,
  input   redirect_AFHOB_src_afhob_1_bits_2,
  input   redirect_AFHOB_src_afhob_1_bits_3,
  input   redirect_AFHOB_src_afhob_0_bits_0,
  input   redirect_AFHOB_src_afhob_0_bits_1,
  input   redirect_AFHOB_src_afhob_0_bits_2,
  input   redirect_AFHOB_src_afhob_0_bits_3,
  input   stallAFHOB_src_afhob_5_bits_0,
  input   stallAFHOB_src_afhob_5_bits_1,
  input   stallAFHOB_src_afhob_5_bits_2,
  input   stallAFHOB_src_afhob_5_bits_3,
  input   stallAFHOB_src_afhob_4_bits_0,
  input   stallAFHOB_src_afhob_4_bits_1,
  input   stallAFHOB_src_afhob_4_bits_2,
  input   stallAFHOB_src_afhob_4_bits_3,
  input   stallAFHOB_src_afhob_3_bits_0,
  input   stallAFHOB_src_afhob_3_bits_1,
  input   stallAFHOB_src_afhob_3_bits_2,
  input   stallAFHOB_src_afhob_3_bits_3,
  input   stallAFHOB_src_afhob_2_bits_0,
  input   stallAFHOB_src_afhob_2_bits_1,
  input   stallAFHOB_src_afhob_2_bits_2,
  input   stallAFHOB_src_afhob_2_bits_3,
  input   stallAFHOB_src_afhob_1_bits_0,
  input   stallAFHOB_src_afhob_1_bits_1,
  input   stallAFHOB_src_afhob_1_bits_2,
  input   stallAFHOB_src_afhob_1_bits_3,
  input   stallAFHOB_src_afhob_0_bits_0,
  input   stallAFHOB_src_afhob_0_bits_1,
  input   stallAFHOB_src_afhob_0_bits_2,
  input   stallAFHOB_src_afhob_0_bits_3,
  output  out_res_afhob_5_bits_0,
  output  out_res_afhob_5_bits_1,
  output  out_res_afhob_5_bits_2,
  output  out_res_afhob_5_bits_3,
  output  out_res_afhob_4_bits_0,
  output  out_res_afhob_4_bits_1,
  output  out_res_afhob_4_bits_2,
  output  out_res_afhob_4_bits_3,
  output  out_res_afhob_3_bits_0,
  output  out_res_afhob_3_bits_1,
  output  out_res_afhob_3_bits_2,
  output  out_res_afhob_3_bits_3,
  output  out_res_afhob_2_bits_0,
  output  out_res_afhob_2_bits_1,
  output  out_res_afhob_2_bits_2,
  output  out_res_afhob_2_bits_3,
  output  out_res_afhob_1_bits_0,
  output  out_res_afhob_1_bits_1,
  output  out_res_afhob_1_bits_2,
  output  out_res_afhob_1_bits_3,
  output  out_res_afhob_0_bits_0,
  output  out_res_afhob_0_bits_1,
  output  out_res_afhob_0_bits_2,
  output  out_res_afhob_0_bits_3
);
  wire  _out_res_T_afhob_5_bits_0 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_5_bits_0 :
    stallAFHOB_src_afhob_5_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_5_bits_1 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_5_bits_1 :
    stallAFHOB_src_afhob_5_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_5_bits_2 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_5_bits_2 :
    stallAFHOB_src_afhob_5_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_5_bits_3 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_5_bits_3 :
    stallAFHOB_src_afhob_5_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_4_bits_0 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_4_bits_0 :
    stallAFHOB_src_afhob_4_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_4_bits_1 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_4_bits_1 :
    stallAFHOB_src_afhob_4_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_4_bits_2 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_4_bits_2 :
    stallAFHOB_src_afhob_4_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_4_bits_3 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_4_bits_3 :
    stallAFHOB_src_afhob_4_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_3_bits_0 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_3_bits_0 :
    stallAFHOB_src_afhob_3_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_3_bits_1 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_3_bits_1 :
    stallAFHOB_src_afhob_3_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_3_bits_2 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_3_bits_2 :
    stallAFHOB_src_afhob_3_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_3_bits_3 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_3_bits_3 :
    stallAFHOB_src_afhob_3_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_2_bits_0 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_2_bits_0 :
    stallAFHOB_src_afhob_2_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_2_bits_1 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_2_bits_1 :
    stallAFHOB_src_afhob_2_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_2_bits_2 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_2_bits_2 :
    stallAFHOB_src_afhob_2_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_2_bits_3 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_2_bits_3 :
    stallAFHOB_src_afhob_2_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_1_bits_0 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_1_bits_0 :
    stallAFHOB_src_afhob_1_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_1_bits_1 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_1_bits_1 :
    stallAFHOB_src_afhob_1_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_1_bits_2 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_1_bits_2 :
    stallAFHOB_src_afhob_1_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_1_bits_3 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_1_bits_3 :
    stallAFHOB_src_afhob_1_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_0_bits_0 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_0_bits_0 :
    stallAFHOB_src_afhob_0_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_0_bits_1 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_0_bits_1 :
    stallAFHOB_src_afhob_0_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_0_bits_2 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_0_bits_2 :
    stallAFHOB_src_afhob_0_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_afhob_0_bits_3 = redirect_AFHOB_sel ? redirect_AFHOB_src_afhob_0_bits_3 :
    stallAFHOB_src_afhob_0_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_5_bits_0 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_5_bits_0 : _out_res_T_afhob_5_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_5_bits_1 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_5_bits_1 : _out_res_T_afhob_5_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_5_bits_2 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_5_bits_2 : _out_res_T_afhob_5_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_5_bits_3 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_5_bits_3 : _out_res_T_afhob_5_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_4_bits_0 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_4_bits_0 : _out_res_T_afhob_4_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_4_bits_1 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_4_bits_1 : _out_res_T_afhob_4_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_4_bits_2 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_4_bits_2 : _out_res_T_afhob_4_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_4_bits_3 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_4_bits_3 : _out_res_T_afhob_4_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_3_bits_0 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_3_bits_0 : _out_res_T_afhob_3_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_3_bits_1 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_3_bits_1 : _out_res_T_afhob_3_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_3_bits_2 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_3_bits_2 : _out_res_T_afhob_3_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_3_bits_3 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_3_bits_3 : _out_res_T_afhob_3_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_2_bits_0 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_2_bits_0 : _out_res_T_afhob_2_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_2_bits_1 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_2_bits_1 : _out_res_T_afhob_2_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_2_bits_2 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_2_bits_2 : _out_res_T_afhob_2_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_2_bits_3 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_2_bits_3 : _out_res_T_afhob_2_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_1_bits_0 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_1_bits_0 : _out_res_T_afhob_1_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_1_bits_1 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_1_bits_1 : _out_res_T_afhob_1_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_1_bits_2 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_1_bits_2 : _out_res_T_afhob_1_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_1_bits_3 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_1_bits_3 : _out_res_T_afhob_1_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_0_bits_0 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_0_bits_0 : _out_res_T_afhob_0_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_0_bits_1 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_0_bits_1 : _out_res_T_afhob_0_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_0_bits_2 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_0_bits_2 : _out_res_T_afhob_0_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_1_afhob_0_bits_3 = s3_AFHOB_sel ? s3_AFHOB_src_afhob_0_bits_3 : _out_res_T_afhob_0_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_5_bits_0 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_5_bits_0 : _out_res_T_1_afhob_5_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_5_bits_1 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_5_bits_1 : _out_res_T_1_afhob_5_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_5_bits_2 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_5_bits_2 : _out_res_T_1_afhob_5_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_5_bits_3 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_5_bits_3 : _out_res_T_1_afhob_5_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_4_bits_0 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_4_bits_0 : _out_res_T_1_afhob_4_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_4_bits_1 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_4_bits_1 : _out_res_T_1_afhob_4_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_4_bits_2 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_4_bits_2 : _out_res_T_1_afhob_4_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_4_bits_3 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_4_bits_3 : _out_res_T_1_afhob_4_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_3_bits_0 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_3_bits_0 : _out_res_T_1_afhob_3_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_3_bits_1 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_3_bits_1 : _out_res_T_1_afhob_3_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_3_bits_2 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_3_bits_2 : _out_res_T_1_afhob_3_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_3_bits_3 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_3_bits_3 : _out_res_T_1_afhob_3_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_2_bits_0 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_2_bits_0 : _out_res_T_1_afhob_2_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_2_bits_1 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_2_bits_1 : _out_res_T_1_afhob_2_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_2_bits_2 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_2_bits_2 : _out_res_T_1_afhob_2_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_2_bits_3 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_2_bits_3 : _out_res_T_1_afhob_2_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_1_bits_0 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_1_bits_0 : _out_res_T_1_afhob_1_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_1_bits_1 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_1_bits_1 : _out_res_T_1_afhob_1_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_1_bits_2 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_1_bits_2 : _out_res_T_1_afhob_1_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_1_bits_3 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_1_bits_3 : _out_res_T_1_afhob_1_bits_3; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_0_bits_0 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_0_bits_0 : _out_res_T_1_afhob_0_bits_0; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_0_bits_1 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_0_bits_1 : _out_res_T_1_afhob_0_bits_1; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_0_bits_2 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_0_bits_2 : _out_res_T_1_afhob_0_bits_2; // @[Mux.scala 47:70]
  wire  _out_res_T_2_afhob_0_bits_3 = s1_AFHOB_sel ? s1_AFHOB_src_afhob_0_bits_3 : _out_res_T_1_afhob_0_bits_3; // @[Mux.scala 47:70]
  assign out_res_afhob_5_bits_0 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_5_bits_0 : _out_res_T_2_afhob_5_bits_0; // @[Mux.scala 47:70]
  assign out_res_afhob_5_bits_1 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_5_bits_1 : _out_res_T_2_afhob_5_bits_1; // @[Mux.scala 47:70]
  assign out_res_afhob_5_bits_2 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_5_bits_2 : _out_res_T_2_afhob_5_bits_2; // @[Mux.scala 47:70]
  assign out_res_afhob_5_bits_3 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_5_bits_3 : _out_res_T_2_afhob_5_bits_3; // @[Mux.scala 47:70]
  assign out_res_afhob_4_bits_0 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_4_bits_0 : _out_res_T_2_afhob_4_bits_0; // @[Mux.scala 47:70]
  assign out_res_afhob_4_bits_1 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_4_bits_1 : _out_res_T_2_afhob_4_bits_1; // @[Mux.scala 47:70]
  assign out_res_afhob_4_bits_2 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_4_bits_2 : _out_res_T_2_afhob_4_bits_2; // @[Mux.scala 47:70]
  assign out_res_afhob_4_bits_3 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_4_bits_3 : _out_res_T_2_afhob_4_bits_3; // @[Mux.scala 47:70]
  assign out_res_afhob_3_bits_0 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_3_bits_0 : _out_res_T_2_afhob_3_bits_0; // @[Mux.scala 47:70]
  assign out_res_afhob_3_bits_1 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_3_bits_1 : _out_res_T_2_afhob_3_bits_1; // @[Mux.scala 47:70]
  assign out_res_afhob_3_bits_2 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_3_bits_2 : _out_res_T_2_afhob_3_bits_2; // @[Mux.scala 47:70]
  assign out_res_afhob_3_bits_3 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_3_bits_3 : _out_res_T_2_afhob_3_bits_3; // @[Mux.scala 47:70]
  assign out_res_afhob_2_bits_0 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_2_bits_0 : _out_res_T_2_afhob_2_bits_0; // @[Mux.scala 47:70]
  assign out_res_afhob_2_bits_1 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_2_bits_1 : _out_res_T_2_afhob_2_bits_1; // @[Mux.scala 47:70]
  assign out_res_afhob_2_bits_2 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_2_bits_2 : _out_res_T_2_afhob_2_bits_2; // @[Mux.scala 47:70]
  assign out_res_afhob_2_bits_3 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_2_bits_3 : _out_res_T_2_afhob_2_bits_3; // @[Mux.scala 47:70]
  assign out_res_afhob_1_bits_0 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_1_bits_0 : _out_res_T_2_afhob_1_bits_0; // @[Mux.scala 47:70]
  assign out_res_afhob_1_bits_1 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_1_bits_1 : _out_res_T_2_afhob_1_bits_1; // @[Mux.scala 47:70]
  assign out_res_afhob_1_bits_2 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_1_bits_2 : _out_res_T_2_afhob_1_bits_2; // @[Mux.scala 47:70]
  assign out_res_afhob_1_bits_3 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_1_bits_3 : _out_res_T_2_afhob_1_bits_3; // @[Mux.scala 47:70]
  assign out_res_afhob_0_bits_0 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_0_bits_0 : _out_res_T_2_afhob_0_bits_0; // @[Mux.scala 47:70]
  assign out_res_afhob_0_bits_1 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_0_bits_1 : _out_res_T_2_afhob_0_bits_1; // @[Mux.scala 47:70]
  assign out_res_afhob_0_bits_2 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_0_bits_2 : _out_res_T_2_afhob_0_bits_2; // @[Mux.scala 47:70]
  assign out_res_afhob_0_bits_3 = s2_AFHOB_sel ? s2_AFHOB_src_afhob_0_bits_3 : _out_res_T_2_afhob_0_bits_3; // @[Mux.scala 47:70]
endmodule

