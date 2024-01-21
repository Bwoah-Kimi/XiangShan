module PriorityMuxModule_16(
  input        s2_BrNumOH_sel,
  input  [2:0] s2_BrNumOH_src,
  input        s1_BrNumOH_sel,
  input  [2:0] s1_BrNumOH_src,
  input        s3_BrNumOH_sel,
  input  [2:0] s3_BrNumOH_src,
  input        redirect_BrNumOH_sel,
  input  [2:0] redirect_BrNumOH_src,
  input  [2:0] stallBrNumOH_src,
  output [2:0] out_res
);
  wire [2:0] _out_res_T = redirect_BrNumOH_sel ? redirect_BrNumOH_src : stallBrNumOH_src; // @[Mux.scala 47:70]
  wire [2:0] _out_res_T_1 = s3_BrNumOH_sel ? s3_BrNumOH_src : _out_res_T; // @[Mux.scala 47:70]
  wire [2:0] _out_res_T_2 = s1_BrNumOH_sel ? s1_BrNumOH_src : _out_res_T_1; // @[Mux.scala 47:70]
  assign out_res = s2_BrNumOH_sel ? s2_BrNumOH_src : _out_res_T_2; // @[Mux.scala 47:70]
endmodule

