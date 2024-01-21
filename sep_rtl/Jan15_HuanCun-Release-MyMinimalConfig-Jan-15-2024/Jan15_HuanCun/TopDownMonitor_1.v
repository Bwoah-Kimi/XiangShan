module TopDownMonitor_1(
  input         io_msStatus_0_0_valid,
  input  [7:0]  io_msStatus_0_0_bits_set,
  input  [21:0] io_msStatus_0_0_bits_tag,
  input         io_msStatus_0_0_bits_is_miss,
  input         io_msStatus_0_1_valid,
  input  [7:0]  io_msStatus_0_1_bits_set,
  input  [21:0] io_msStatus_0_1_bits_tag,
  input         io_msStatus_0_1_bits_is_miss,
  input         io_msStatus_0_2_valid,
  input  [7:0]  io_msStatus_0_2_bits_set,
  input  [21:0] io_msStatus_0_2_bits_tag,
  input         io_msStatus_0_2_bits_is_miss,
  input         io_msStatus_0_3_valid,
  input  [7:0]  io_msStatus_0_3_bits_set,
  input  [21:0] io_msStatus_0_3_bits_tag,
  input         io_msStatus_0_3_bits_is_miss,
  input         io_msStatus_0_4_valid,
  input  [7:0]  io_msStatus_0_4_bits_set,
  input  [21:0] io_msStatus_0_4_bits_tag,
  input         io_msStatus_0_4_bits_is_miss,
  input         io_msStatus_0_5_valid,
  input  [7:0]  io_msStatus_0_5_bits_set,
  input  [21:0] io_msStatus_0_5_bits_tag,
  input         io_msStatus_0_5_bits_is_miss,
  input         io_msStatus_0_6_valid,
  input  [7:0]  io_msStatus_0_6_bits_set,
  input  [21:0] io_msStatus_0_6_bits_tag,
  input         io_msStatus_0_6_bits_is_miss,
  input         io_msStatus_0_7_valid,
  input  [7:0]  io_msStatus_0_7_bits_set,
  input  [21:0] io_msStatus_0_7_bits_tag,
  input         io_msStatus_0_7_bits_is_miss,
  input         io_msStatus_0_8_valid,
  input  [7:0]  io_msStatus_0_8_bits_set,
  input  [21:0] io_msStatus_0_8_bits_tag,
  input         io_msStatus_0_8_bits_is_miss,
  input         io_msStatus_0_9_valid,
  input  [7:0]  io_msStatus_0_9_bits_set,
  input  [21:0] io_msStatus_0_9_bits_tag,
  input         io_msStatus_0_9_bits_is_miss,
  input         io_msStatus_0_10_valid,
  input  [7:0]  io_msStatus_0_10_bits_set,
  input  [21:0] io_msStatus_0_10_bits_tag,
  input         io_msStatus_0_10_bits_is_miss,
  input         io_msStatus_0_11_valid,
  input  [7:0]  io_msStatus_0_11_bits_set,
  input  [21:0] io_msStatus_0_11_bits_tag,
  input         io_msStatus_0_11_bits_is_miss,
  input         io_msStatus_0_12_valid,
  input  [7:0]  io_msStatus_0_12_bits_set,
  input  [21:0] io_msStatus_0_12_bits_tag,
  input         io_msStatus_0_12_bits_is_miss,
  input         io_msStatus_0_13_valid,
  input  [7:0]  io_msStatus_0_13_bits_set,
  input  [21:0] io_msStatus_0_13_bits_tag,
  input         io_msStatus_0_13_bits_is_miss,
  input         io_msStatus_0_14_valid,
  input  [7:0]  io_msStatus_0_14_bits_set,
  input  [21:0] io_msStatus_0_14_bits_tag,
  input         io_msStatus_0_14_bits_is_miss,
  input         io_msStatus_0_15_valid,
  input  [7:0]  io_msStatus_0_15_bits_set,
  input  [21:0] io_msStatus_0_15_bits_tag,
  input         io_msStatus_0_15_bits_is_miss,
  input         rob_head_paddr_0_valid,
  input  [35:0] rob_head_paddr_0_bits
);
  wire [29:0] addrMatchVec_msBlockAddr = {io_msStatus_0_0_bits_tag,io_msStatus_0_0_bits_set}; // @[Cat.scala 31:58]
  wire [35:0] addrMatchVec_pBlockAddr = {{6'd0}, rob_head_paddr_0_bits[35:6]}; // @[TopDownMonitor.scala 32:43]
  wire  addrMatchVec_isMiss = io_msStatus_0_0_valid & io_msStatus_0_0_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_129 = {{6'd0}, addrMatchVec_msBlockAddr}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_0 = rob_head_paddr_0_valid & _GEN_129 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_1 = {io_msStatus_0_1_bits_tag,io_msStatus_0_1_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_1 = io_msStatus_0_1_valid & io_msStatus_0_1_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_131 = {{6'd0}, addrMatchVec_msBlockAddr_1}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_1 = rob_head_paddr_0_valid & _GEN_131 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_1; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_2 = {io_msStatus_0_2_bits_tag,io_msStatus_0_2_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_2 = io_msStatus_0_2_valid & io_msStatus_0_2_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_133 = {{6'd0}, addrMatchVec_msBlockAddr_2}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_2 = rob_head_paddr_0_valid & _GEN_133 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_2; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_3 = {io_msStatus_0_3_bits_tag,io_msStatus_0_3_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_3 = io_msStatus_0_3_valid & io_msStatus_0_3_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_135 = {{6'd0}, addrMatchVec_msBlockAddr_3}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_3 = rob_head_paddr_0_valid & _GEN_135 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_3; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_4 = {io_msStatus_0_4_bits_tag,io_msStatus_0_4_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_4 = io_msStatus_0_4_valid & io_msStatus_0_4_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_137 = {{6'd0}, addrMatchVec_msBlockAddr_4}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_4 = rob_head_paddr_0_valid & _GEN_137 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_4; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_5 = {io_msStatus_0_5_bits_tag,io_msStatus_0_5_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_5 = io_msStatus_0_5_valid & io_msStatus_0_5_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_139 = {{6'd0}, addrMatchVec_msBlockAddr_5}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_5 = rob_head_paddr_0_valid & _GEN_139 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_5; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_6 = {io_msStatus_0_6_bits_tag,io_msStatus_0_6_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_6 = io_msStatus_0_6_valid & io_msStatus_0_6_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_141 = {{6'd0}, addrMatchVec_msBlockAddr_6}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_6 = rob_head_paddr_0_valid & _GEN_141 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_6; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_7 = {io_msStatus_0_7_bits_tag,io_msStatus_0_7_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_7 = io_msStatus_0_7_valid & io_msStatus_0_7_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_143 = {{6'd0}, addrMatchVec_msBlockAddr_7}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_7 = rob_head_paddr_0_valid & _GEN_143 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_7; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_8 = {io_msStatus_0_8_bits_tag,io_msStatus_0_8_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_8 = io_msStatus_0_8_valid & io_msStatus_0_8_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_145 = {{6'd0}, addrMatchVec_msBlockAddr_8}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_8 = rob_head_paddr_0_valid & _GEN_145 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_8; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_9 = {io_msStatus_0_9_bits_tag,io_msStatus_0_9_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_9 = io_msStatus_0_9_valid & io_msStatus_0_9_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_147 = {{6'd0}, addrMatchVec_msBlockAddr_9}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_9 = rob_head_paddr_0_valid & _GEN_147 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_9; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_10 = {io_msStatus_0_10_bits_tag,io_msStatus_0_10_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_10 = io_msStatus_0_10_valid & io_msStatus_0_10_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_149 = {{6'd0}, addrMatchVec_msBlockAddr_10}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_10 = rob_head_paddr_0_valid & _GEN_149 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_10; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_11 = {io_msStatus_0_11_bits_tag,io_msStatus_0_11_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_11 = io_msStatus_0_11_valid & io_msStatus_0_11_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_151 = {{6'd0}, addrMatchVec_msBlockAddr_11}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_11 = rob_head_paddr_0_valid & _GEN_151 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_11; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_12 = {io_msStatus_0_12_bits_tag,io_msStatus_0_12_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_12 = io_msStatus_0_12_valid & io_msStatus_0_12_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_153 = {{6'd0}, addrMatchVec_msBlockAddr_12}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_12 = rob_head_paddr_0_valid & _GEN_153 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_12; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_13 = {io_msStatus_0_13_bits_tag,io_msStatus_0_13_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_13 = io_msStatus_0_13_valid & io_msStatus_0_13_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_155 = {{6'd0}, addrMatchVec_msBlockAddr_13}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_13 = rob_head_paddr_0_valid & _GEN_155 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_13; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_14 = {io_msStatus_0_14_bits_tag,io_msStatus_0_14_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_14 = io_msStatus_0_14_valid & io_msStatus_0_14_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_157 = {{6'd0}, addrMatchVec_msBlockAddr_14}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_14 = rob_head_paddr_0_valid & _GEN_157 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_14; // @[TopDownMonitor.scala 35:55]
  wire [29:0] addrMatchVec_msBlockAddr_15 = {io_msStatus_0_15_bits_tag,io_msStatus_0_15_bits_set}; // @[Cat.scala 31:58]
  wire  addrMatchVec_isMiss_15 = io_msStatus_0_15_valid & io_msStatus_0_15_bits_is_miss; // @[TopDownMonitor.scala 34:37]
  wire [35:0] _GEN_159 = {{6'd0}, addrMatchVec_msBlockAddr_15}; // @[TopDownMonitor.scala 35:40]
  wire  addrMatchVec_0_15 = rob_head_paddr_0_valid & _GEN_159 == addrMatchVec_pBlockAddr & addrMatchVec_isMiss_15; // @[TopDownMonitor.scala 35:55]
  wire [7:0] addrMatch_lo = {addrMatchVec_0_8,addrMatchVec_0_9,addrMatchVec_0_10,addrMatchVec_0_11,addrMatchVec_0_12,
    addrMatchVec_0_13,addrMatchVec_0_14,addrMatchVec_0_15}; // @[Cat.scala 31:58]
  wire [15:0] _addrMatch_T = {addrMatchVec_0_0,addrMatchVec_0_1,addrMatchVec_0_2,addrMatchVec_0_3,addrMatchVec_0_4,
    addrMatchVec_0_5,addrMatchVec_0_6,addrMatchVec_0_7,addrMatch_lo}; // @[Cat.scala 31:58]
  wire  addrMatch = |_addrMatch_T; // @[TopDownMonitor.scala 39:47]
endmodule

