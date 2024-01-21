module RightShifter(
  input  [5:0]  io_shiftNum,
  input  [63:0] io_in,
  input         io_msb,
  output [63:0] io_out
);
  wire [63:0] _s0_T_2 = {io_msb,io_in[63:1]}; // @[Cat.scala 31:58]
  wire [63:0] s0 = io_shiftNum[0] ? _s0_T_2 : io_in; // @[SRT4Divider.scala 312:15]
  wire [63:0] _s1_T_3 = {io_msb,io_msb,s0[63:2]}; // @[Cat.scala 31:58]
  wire [63:0] s1 = io_shiftNum[1] ? _s1_T_3 : s0; // @[SRT4Divider.scala 313:15]
  wire [63:0] _s2_T_3 = {io_msb,io_msb,io_msb,io_msb,s1[63:4]}; // @[Cat.scala 31:58]
  wire [63:0] s2 = io_shiftNum[2] ? _s2_T_3 : s1; // @[SRT4Divider.scala 314:15]
  wire [7:0] _s3_T_1 = {io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb}; // @[SRT4Divider.scala 315:56]
  wire [63:0] _s3_T_3 = {io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,s2[63:8]}; // @[Cat.scala 31:58]
  wire [63:0] s3 = io_shiftNum[3] ? _s3_T_3 : s2; // @[SRT4Divider.scala 315:15]
  wire [15:0] _s4_T_1 = {io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,_s3_T_1}; // @[SRT4Divider.scala 316:57]
  wire [63:0] _s4_T_3 = {io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,_s3_T_1,s3[63:16]}; // @[Cat.scala 31:58]
  wire [63:0] s4 = io_shiftNum[4] ? _s4_T_3 : s3; // @[SRT4Divider.scala 316:15]
  wire [31:0] _s5_T_1 = {io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,io_msb,_s3_T_1,_s4_T_1}; // @[SRT4Divider.scala 319:56]
  wire [63:0] _s5_T_3 = {_s5_T_1,s4[63:32]}; // @[Cat.scala 31:58]
  assign io_out = io_shiftNum[5] ? _s5_T_3 : s4; // @[SRT4Divider.scala 319:14]
endmodule

