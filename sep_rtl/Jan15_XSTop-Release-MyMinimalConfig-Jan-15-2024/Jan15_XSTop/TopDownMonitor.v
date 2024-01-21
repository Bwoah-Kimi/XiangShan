module TopDownMonitor(
  input         io_msStatus_0_0_valid,
  input  [6:0]  io_msStatus_0_0_bits_set,
  input  [21:0] io_msStatus_0_0_bits_reqTag,
  input         io_msStatus_0_0_bits_is_miss,
  input         io_msStatus_0_1_valid,
  input  [6:0]  io_msStatus_0_1_bits_set,
  input  [21:0] io_msStatus_0_1_bits_reqTag,
  input         io_msStatus_0_1_bits_is_miss,
  input         io_msStatus_0_2_valid,
  input  [6:0]  io_msStatus_0_2_bits_set,
  input  [21:0] io_msStatus_0_2_bits_reqTag,
  input         io_msStatus_0_2_bits_is_miss,
  input         io_msStatus_0_3_valid,
  input  [6:0]  io_msStatus_0_3_bits_set,
  input  [21:0] io_msStatus_0_3_bits_reqTag,
  input         io_msStatus_0_3_bits_is_miss,
  input         io_msStatus_0_4_valid,
  input  [6:0]  io_msStatus_0_4_bits_set,
  input  [21:0] io_msStatus_0_4_bits_reqTag,
  input         io_msStatus_0_4_bits_is_miss,
  input         io_msStatus_0_5_valid,
  input  [6:0]  io_msStatus_0_5_bits_set,
  input  [21:0] io_msStatus_0_5_bits_reqTag,
  input         io_msStatus_0_5_bits_is_miss,
  input         io_msStatus_0_6_valid,
  input  [6:0]  io_msStatus_0_6_bits_set,
  input  [21:0] io_msStatus_0_6_bits_reqTag,
  input         io_msStatus_0_6_bits_is_miss,
  input         io_msStatus_0_7_valid,
  input  [6:0]  io_msStatus_0_7_bits_set,
  input  [21:0] io_msStatus_0_7_bits_reqTag,
  input         io_msStatus_0_7_bits_is_miss,
  input         io_msStatus_0_8_valid,
  input  [6:0]  io_msStatus_0_8_bits_set,
  input  [21:0] io_msStatus_0_8_bits_reqTag,
  input         io_msStatus_0_8_bits_is_miss,
  input         io_msStatus_0_9_valid,
  input  [6:0]  io_msStatus_0_9_bits_set,
  input  [21:0] io_msStatus_0_9_bits_reqTag,
  input         io_msStatus_0_9_bits_is_miss,
  input         io_msStatus_0_10_valid,
  input  [6:0]  io_msStatus_0_10_bits_set,
  input  [21:0] io_msStatus_0_10_bits_reqTag,
  input         io_msStatus_0_10_bits_is_miss,
  input         io_msStatus_0_11_valid,
  input  [6:0]  io_msStatus_0_11_bits_set,
  input  [21:0] io_msStatus_0_11_bits_reqTag,
  input         io_msStatus_0_11_bits_is_miss,
  input         io_msStatus_0_12_valid,
  input  [6:0]  io_msStatus_0_12_bits_set,
  input  [21:0] io_msStatus_0_12_bits_reqTag,
  input         io_msStatus_0_12_bits_is_miss,
  input         io_msStatus_0_13_valid,
  input  [6:0]  io_msStatus_0_13_bits_set,
  input  [21:0] io_msStatus_0_13_bits_reqTag,
  input         io_msStatus_0_13_bits_is_miss,
  input         io_msStatus_0_14_valid,
  input  [6:0]  io_msStatus_0_14_bits_set,
  input  [21:0] io_msStatus_0_14_bits_reqTag,
  input         io_msStatus_0_14_bits_is_miss,
  input         io_msStatus_0_15_valid,
  input  [6:0]  io_msStatus_0_15_bits_set,
  input  [21:0] io_msStatus_0_15_bits_reqTag,
  input         io_msStatus_0_15_bits_is_miss,
  input         io_msStatus_1_0_valid,
  input  [6:0]  io_msStatus_1_0_bits_set,
  input  [21:0] io_msStatus_1_0_bits_reqTag,
  input         io_msStatus_1_0_bits_is_miss,
  input         io_msStatus_1_1_valid,
  input  [6:0]  io_msStatus_1_1_bits_set,
  input  [21:0] io_msStatus_1_1_bits_reqTag,
  input         io_msStatus_1_1_bits_is_miss,
  input         io_msStatus_1_2_valid,
  input  [6:0]  io_msStatus_1_2_bits_set,
  input  [21:0] io_msStatus_1_2_bits_reqTag,
  input         io_msStatus_1_2_bits_is_miss,
  input         io_msStatus_1_3_valid,
  input  [6:0]  io_msStatus_1_3_bits_set,
  input  [21:0] io_msStatus_1_3_bits_reqTag,
  input         io_msStatus_1_3_bits_is_miss,
  input         io_msStatus_1_4_valid,
  input  [6:0]  io_msStatus_1_4_bits_set,
  input  [21:0] io_msStatus_1_4_bits_reqTag,
  input         io_msStatus_1_4_bits_is_miss,
  input         io_msStatus_1_5_valid,
  input  [6:0]  io_msStatus_1_5_bits_set,
  input  [21:0] io_msStatus_1_5_bits_reqTag,
  input         io_msStatus_1_5_bits_is_miss,
  input         io_msStatus_1_6_valid,
  input  [6:0]  io_msStatus_1_6_bits_set,
  input  [21:0] io_msStatus_1_6_bits_reqTag,
  input         io_msStatus_1_6_bits_is_miss,
  input         io_msStatus_1_7_valid,
  input  [6:0]  io_msStatus_1_7_bits_set,
  input  [21:0] io_msStatus_1_7_bits_reqTag,
  input         io_msStatus_1_7_bits_is_miss,
  input         io_msStatus_1_8_valid,
  input  [6:0]  io_msStatus_1_8_bits_set,
  input  [21:0] io_msStatus_1_8_bits_reqTag,
  input         io_msStatus_1_8_bits_is_miss,
  input         io_msStatus_1_9_valid,
  input  [6:0]  io_msStatus_1_9_bits_set,
  input  [21:0] io_msStatus_1_9_bits_reqTag,
  input         io_msStatus_1_9_bits_is_miss,
  input         io_msStatus_1_10_valid,
  input  [6:0]  io_msStatus_1_10_bits_set,
  input  [21:0] io_msStatus_1_10_bits_reqTag,
  input         io_msStatus_1_10_bits_is_miss,
  input         io_msStatus_1_11_valid,
  input  [6:0]  io_msStatus_1_11_bits_set,
  input  [21:0] io_msStatus_1_11_bits_reqTag,
  input         io_msStatus_1_11_bits_is_miss,
  input         io_msStatus_1_12_valid,
  input  [6:0]  io_msStatus_1_12_bits_set,
  input  [21:0] io_msStatus_1_12_bits_reqTag,
  input         io_msStatus_1_12_bits_is_miss,
  input         io_msStatus_1_13_valid,
  input  [6:0]  io_msStatus_1_13_bits_set,
  input  [21:0] io_msStatus_1_13_bits_reqTag,
  input         io_msStatus_1_13_bits_is_miss,
  input         io_msStatus_1_14_valid,
  input  [6:0]  io_msStatus_1_14_bits_set,
  input  [21:0] io_msStatus_1_14_bits_reqTag,
  input         io_msStatus_1_14_bits_is_miss,
  input         io_msStatus_1_15_valid,
  input  [6:0]  io_msStatus_1_15_bits_set,
  input  [21:0] io_msStatus_1_15_bits_reqTag,
  input         io_msStatus_1_15_bits_is_miss,
  input         rob_head_paddr_0_valid,
  input  [35:0] rob_head_paddr_0_bits
);
  wire [29:0] addrMatchVec_msBlockAddr = {io_msStatus_0_0_bits_reqTag,io_msStatus_0_0_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire [35:0] addrMatchVec_pBlockAddr = {{6'd0}, rob_head_paddr_0_bits[35:6]}; // @[TopDownMonitor.scala 49:43]
  wire  addrMatchVec_isMiss = io_msStatus_0_0_valid & io_msStatus_0_0_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_1 = {{6'd0}, addrMatchVec_msBlockAddr}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_0 = rob_head_paddr_0_valid & _GEN_1 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_1 = {io_msStatus_0_1_bits_reqTag,io_msStatus_0_1_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_1 = io_msStatus_0_1_valid & io_msStatus_0_1_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_3 = {{6'd0}, addrMatchVec_msBlockAddr_1}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_1 = rob_head_paddr_0_valid & _GEN_3 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_1; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_2 = {io_msStatus_0_2_bits_reqTag,io_msStatus_0_2_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_2 = io_msStatus_0_2_valid & io_msStatus_0_2_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_5 = {{6'd0}, addrMatchVec_msBlockAddr_2}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_2 = rob_head_paddr_0_valid & _GEN_5 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_2; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_3 = {io_msStatus_0_3_bits_reqTag,io_msStatus_0_3_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_3 = io_msStatus_0_3_valid & io_msStatus_0_3_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_7 = {{6'd0}, addrMatchVec_msBlockAddr_3}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_3 = rob_head_paddr_0_valid & _GEN_7 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_3; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_4 = {io_msStatus_0_4_bits_reqTag,io_msStatus_0_4_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_4 = io_msStatus_0_4_valid & io_msStatus_0_4_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_9 = {{6'd0}, addrMatchVec_msBlockAddr_4}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_4 = rob_head_paddr_0_valid & _GEN_9 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_4; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_5 = {io_msStatus_0_5_bits_reqTag,io_msStatus_0_5_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_5 = io_msStatus_0_5_valid & io_msStatus_0_5_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_11 = {{6'd0}, addrMatchVec_msBlockAddr_5}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_5 = rob_head_paddr_0_valid & _GEN_11 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_5; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_6 = {io_msStatus_0_6_bits_reqTag,io_msStatus_0_6_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_6 = io_msStatus_0_6_valid & io_msStatus_0_6_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_13 = {{6'd0}, addrMatchVec_msBlockAddr_6}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_6 = rob_head_paddr_0_valid & _GEN_13 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_6; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_7 = {io_msStatus_0_7_bits_reqTag,io_msStatus_0_7_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_7 = io_msStatus_0_7_valid & io_msStatus_0_7_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_15 = {{6'd0}, addrMatchVec_msBlockAddr_7}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_7 = rob_head_paddr_0_valid & _GEN_15 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_7; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_8 = {io_msStatus_0_8_bits_reqTag,io_msStatus_0_8_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_8 = io_msStatus_0_8_valid & io_msStatus_0_8_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_17 = {{6'd0}, addrMatchVec_msBlockAddr_8}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_8 = rob_head_paddr_0_valid & _GEN_17 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_8; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_9 = {io_msStatus_0_9_bits_reqTag,io_msStatus_0_9_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_9 = io_msStatus_0_9_valid & io_msStatus_0_9_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_19 = {{6'd0}, addrMatchVec_msBlockAddr_9}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_9 = rob_head_paddr_0_valid & _GEN_19 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_9; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_10 = {io_msStatus_0_10_bits_reqTag,io_msStatus_0_10_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_10 = io_msStatus_0_10_valid & io_msStatus_0_10_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_21 = {{6'd0}, addrMatchVec_msBlockAddr_10}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_10 = rob_head_paddr_0_valid & _GEN_21 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_10; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_11 = {io_msStatus_0_11_bits_reqTag,io_msStatus_0_11_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_11 = io_msStatus_0_11_valid & io_msStatus_0_11_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_23 = {{6'd0}, addrMatchVec_msBlockAddr_11}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_11 = rob_head_paddr_0_valid & _GEN_23 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_11; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_12 = {io_msStatus_0_12_bits_reqTag,io_msStatus_0_12_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_12 = io_msStatus_0_12_valid & io_msStatus_0_12_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_25 = {{6'd0}, addrMatchVec_msBlockAddr_12}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_12 = rob_head_paddr_0_valid & _GEN_25 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_12; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_13 = {io_msStatus_0_13_bits_reqTag,io_msStatus_0_13_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_13 = io_msStatus_0_13_valid & io_msStatus_0_13_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_27 = {{6'd0}, addrMatchVec_msBlockAddr_13}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_13 = rob_head_paddr_0_valid & _GEN_27 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_13; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_14 = {io_msStatus_0_14_bits_reqTag,io_msStatus_0_14_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_14 = io_msStatus_0_14_valid & io_msStatus_0_14_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_29 = {{6'd0}, addrMatchVec_msBlockAddr_14}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_14 = rob_head_paddr_0_valid & _GEN_29 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_14; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_15 = {io_msStatus_0_15_bits_reqTag,io_msStatus_0_15_bits_set,1'h0}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_15 = io_msStatus_0_15_valid & io_msStatus_0_15_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_31 = {{6'd0}, addrMatchVec_msBlockAddr_15}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_0_15 = rob_head_paddr_0_valid & _GEN_31 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_15; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_16 = {io_msStatus_1_0_bits_reqTag,io_msStatus_1_0_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_16 = io_msStatus_1_0_valid & io_msStatus_1_0_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_33 = {{6'd0}, addrMatchVec_msBlockAddr_16}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_0 = rob_head_paddr_0_valid & _GEN_33 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_16; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_17 = {io_msStatus_1_1_bits_reqTag,io_msStatus_1_1_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_17 = io_msStatus_1_1_valid & io_msStatus_1_1_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_35 = {{6'd0}, addrMatchVec_msBlockAddr_17}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_1 = rob_head_paddr_0_valid & _GEN_35 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_17; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_18 = {io_msStatus_1_2_bits_reqTag,io_msStatus_1_2_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_18 = io_msStatus_1_2_valid & io_msStatus_1_2_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_37 = {{6'd0}, addrMatchVec_msBlockAddr_18}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_2 = rob_head_paddr_0_valid & _GEN_37 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_18; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_19 = {io_msStatus_1_3_bits_reqTag,io_msStatus_1_3_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_19 = io_msStatus_1_3_valid & io_msStatus_1_3_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_39 = {{6'd0}, addrMatchVec_msBlockAddr_19}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_3 = rob_head_paddr_0_valid & _GEN_39 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_19; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_20 = {io_msStatus_1_4_bits_reqTag,io_msStatus_1_4_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_20 = io_msStatus_1_4_valid & io_msStatus_1_4_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_41 = {{6'd0}, addrMatchVec_msBlockAddr_20}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_4 = rob_head_paddr_0_valid & _GEN_41 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_20; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_21 = {io_msStatus_1_5_bits_reqTag,io_msStatus_1_5_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_21 = io_msStatus_1_5_valid & io_msStatus_1_5_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_43 = {{6'd0}, addrMatchVec_msBlockAddr_21}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_5 = rob_head_paddr_0_valid & _GEN_43 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_21; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_22 = {io_msStatus_1_6_bits_reqTag,io_msStatus_1_6_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_22 = io_msStatus_1_6_valid & io_msStatus_1_6_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_45 = {{6'd0}, addrMatchVec_msBlockAddr_22}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_6 = rob_head_paddr_0_valid & _GEN_45 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_22; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_23 = {io_msStatus_1_7_bits_reqTag,io_msStatus_1_7_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_23 = io_msStatus_1_7_valid & io_msStatus_1_7_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_47 = {{6'd0}, addrMatchVec_msBlockAddr_23}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_7 = rob_head_paddr_0_valid & _GEN_47 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_23; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_24 = {io_msStatus_1_8_bits_reqTag,io_msStatus_1_8_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_24 = io_msStatus_1_8_valid & io_msStatus_1_8_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_49 = {{6'd0}, addrMatchVec_msBlockAddr_24}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_8 = rob_head_paddr_0_valid & _GEN_49 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_24; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_25 = {io_msStatus_1_9_bits_reqTag,io_msStatus_1_9_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_25 = io_msStatus_1_9_valid & io_msStatus_1_9_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_51 = {{6'd0}, addrMatchVec_msBlockAddr_25}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_9 = rob_head_paddr_0_valid & _GEN_51 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_25; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_26 = {io_msStatus_1_10_bits_reqTag,io_msStatus_1_10_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_26 = io_msStatus_1_10_valid & io_msStatus_1_10_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_53 = {{6'd0}, addrMatchVec_msBlockAddr_26}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_10 = rob_head_paddr_0_valid & _GEN_53 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_26; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_27 = {io_msStatus_1_11_bits_reqTag,io_msStatus_1_11_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_27 = io_msStatus_1_11_valid & io_msStatus_1_11_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_55 = {{6'd0}, addrMatchVec_msBlockAddr_27}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_11 = rob_head_paddr_0_valid & _GEN_55 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_27; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_28 = {io_msStatus_1_12_bits_reqTag,io_msStatus_1_12_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_28 = io_msStatus_1_12_valid & io_msStatus_1_12_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_57 = {{6'd0}, addrMatchVec_msBlockAddr_28}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_12 = rob_head_paddr_0_valid & _GEN_57 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_28; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_29 = {io_msStatus_1_13_bits_reqTag,io_msStatus_1_13_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_29 = io_msStatus_1_13_valid & io_msStatus_1_13_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_59 = {{6'd0}, addrMatchVec_msBlockAddr_29}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_13 = rob_head_paddr_0_valid & _GEN_59 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_29; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_30 = {io_msStatus_1_14_bits_reqTag,io_msStatus_1_14_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_30 = io_msStatus_1_14_valid & io_msStatus_1_14_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_61 = {{6'd0}, addrMatchVec_msBlockAddr_30}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_14 = rob_head_paddr_0_valid & _GEN_61 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_30; // @[TopDownMonitor.scala 52:57]
  wire [29:0] addrMatchVec_msBlockAddr_31 = {io_msStatus_1_15_bits_reqTag,io_msStatus_1_15_bits_set,1'h1}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_31 = io_msStatus_1_15_valid & io_msStatus_1_15_bits_is_miss; // @[TopDownMonitor.scala 50:35]
  wire [35:0] _GEN_63 = {{6'd0}, addrMatchVec_msBlockAddr_31}; // @[TopDownMonitor.scala 52:41]
  wire  addrMatchVec_1_15 = rob_head_paddr_0_valid & _GEN_63 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_31; // @[TopDownMonitor.scala 52:57]
  wire [7:0] addrMatch_lo_lo = {addrMatchVec_1_8,addrMatchVec_1_9,addrMatchVec_1_10,addrMatchVec_1_11,addrMatchVec_1_12,
    addrMatchVec_1_13,addrMatchVec_1_14,addrMatchVec_1_15}; // @[Cat.scala 31:58]
  wire [15:0] addrMatch_lo = {addrMatchVec_1_0,addrMatchVec_1_1,addrMatchVec_1_2,addrMatchVec_1_3,addrMatchVec_1_4,
    addrMatchVec_1_5,addrMatchVec_1_6,addrMatchVec_1_7,addrMatch_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] addrMatch_hi_lo = {addrMatchVec_0_8,addrMatchVec_0_9,addrMatchVec_0_10,addrMatchVec_0_11,addrMatchVec_0_12,
    addrMatchVec_0_13,addrMatchVec_0_14,addrMatchVec_0_15}; // @[Cat.scala 31:58]
  wire [31:0] _addrMatch_T = {addrMatchVec_0_0,addrMatchVec_0_1,addrMatchVec_0_2,addrMatchVec_0_3,addrMatchVec_0_4,
    addrMatchVec_0_5,addrMatchVec_0_6,addrMatchVec_0_7,addrMatch_hi_lo,addrMatch_lo}; // @[Cat.scala 31:58]
  wire  addrMatch = |_addrMatch_T; // @[TopDownMonitor.scala 56:47]
endmodule

