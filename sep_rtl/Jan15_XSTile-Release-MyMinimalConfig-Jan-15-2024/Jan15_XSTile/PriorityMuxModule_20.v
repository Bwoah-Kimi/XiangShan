module PriorityMuxModule_20(
  input   s2_new_bit_0_sel,
  input   s2_new_bit_0_src,
  input   s1_new_bit_0_sel,
  input   s1_new_bit_0_src,
  input   s3_new_bit_0_sel,
  input   s3_new_bit_0_src,
  input   redirect_new_bit_0_src,
  output  out_res
);
  wire  _out_res_T = s3_new_bit_0_sel ? s3_new_bit_0_src : redirect_new_bit_0_src; // @[Mux.scala 47:70]
  wire  _out_res_T_1 = s1_new_bit_0_sel ? s1_new_bit_0_src : _out_res_T; // @[Mux.scala 47:70]
  assign out_res = s2_new_bit_0_sel ? s2_new_bit_0_src : _out_res_T_1; // @[Mux.scala 47:70]
endmodule

