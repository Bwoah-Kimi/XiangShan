module PriorityMuxModule(
  input         s2_target_sel,
  input  [38:0] s2_target_src,
  input         s1_target_sel,
  input  [38:0] s1_target_src,
  input         s3_target_sel,
  input  [38:0] s3_target_src,
  input         redirect_target_sel,
  input  [38:0] redirect_target_src,
  input  [38:0] stallPC_src,
  output [38:0] out_res
);
  wire [38:0] _out_res_T = redirect_target_sel ? redirect_target_src : stallPC_src; // @[Mux.scala 47:70]
  wire [38:0] _out_res_T_1 = s3_target_sel ? s3_target_src : _out_res_T; // @[Mux.scala 47:70]
  wire [38:0] _out_res_T_2 = s1_target_sel ? s1_target_src : _out_res_T_1; // @[Mux.scala 47:70]
  assign out_res = s2_target_sel ? s2_target_src : _out_res_T_2; // @[Mux.scala 47:70]
endmodule

