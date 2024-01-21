module PriorityMuxModule_8(
  input        s2_GHPtr_sel,
  input        s2_GHPtr_src_flag,
  input  [7:0] s2_GHPtr_src_value,
  input        s1_GHPtr_sel,
  input        s1_GHPtr_src_flag,
  input  [7:0] s1_GHPtr_src_value,
  input        s3_GHPtr_sel,
  input        s3_GHPtr_src_flag,
  input  [7:0] s3_GHPtr_src_value,
  input        redirect_GHPtr_sel,
  input        redirect_GHPtr_src_flag,
  input  [7:0] redirect_GHPtr_src_value,
  input        stallGHPtr_src_flag,
  input  [7:0] stallGHPtr_src_value,
  output       out_res_flag,
  output [7:0] out_res_value
);
  wire  _out_res_T_flag = redirect_GHPtr_sel ? redirect_GHPtr_src_flag : stallGHPtr_src_flag; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_value = redirect_GHPtr_sel ? redirect_GHPtr_src_value : stallGHPtr_src_value; // @[Mux.scala 47:70]
  wire  _out_res_T_1_flag = s3_GHPtr_sel ? s3_GHPtr_src_flag : _out_res_T_flag; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_1_value = s3_GHPtr_sel ? s3_GHPtr_src_value : _out_res_T_value; // @[Mux.scala 47:70]
  wire  _out_res_T_2_flag = s1_GHPtr_sel ? s1_GHPtr_src_flag : _out_res_T_1_flag; // @[Mux.scala 47:70]
  wire [7:0] _out_res_T_2_value = s1_GHPtr_sel ? s1_GHPtr_src_value : _out_res_T_1_value; // @[Mux.scala 47:70]
  assign out_res_flag = s2_GHPtr_sel ? s2_GHPtr_src_flag : _out_res_T_2_flag; // @[Mux.scala 47:70]
  assign out_res_value = s2_GHPtr_sel ? s2_GHPtr_src_value : _out_res_T_2_value; // @[Mux.scala 47:70]
endmodule

