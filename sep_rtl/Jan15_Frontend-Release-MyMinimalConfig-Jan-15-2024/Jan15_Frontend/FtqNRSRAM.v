module FtqNRSRAM(
  input         clock,
  input         reset,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_1,
  input  [2:0]  io_raddr_2,
  input         io_ren_0,
  input         io_ren_1,
  input         io_ren_2,
  output [7:0]  io_rdata_0_folded_hist_hist_17_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_16_folded_hist,
  output [10:0] io_rdata_0_folded_hist_hist_15_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_13_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_12_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_11_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_10_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_9_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_8_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_7_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_6_folded_hist,
  output [10:0] io_rdata_0_folded_hist_hist_5_folded_hist,
  output [3:0]  io_rdata_0_folded_hist_hist_4_folded_hist,
  output [10:0] io_rdata_0_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_1_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_0_folded_hist,
  output        io_rdata_0_afhob_afhob_5_bits_0,
  output        io_rdata_0_afhob_afhob_5_bits_1,
  output        io_rdata_0_afhob_afhob_5_bits_2,
  output        io_rdata_0_afhob_afhob_5_bits_3,
  output        io_rdata_0_afhob_afhob_4_bits_0,
  output        io_rdata_0_afhob_afhob_4_bits_1,
  output        io_rdata_0_afhob_afhob_4_bits_2,
  output        io_rdata_0_afhob_afhob_3_bits_0,
  output        io_rdata_0_afhob_afhob_3_bits_1,
  output        io_rdata_0_afhob_afhob_3_bits_2,
  output        io_rdata_0_afhob_afhob_3_bits_3,
  output        io_rdata_0_afhob_afhob_2_bits_0,
  output        io_rdata_0_afhob_afhob_2_bits_1,
  output        io_rdata_0_afhob_afhob_2_bits_2,
  output        io_rdata_0_afhob_afhob_2_bits_3,
  output        io_rdata_0_afhob_afhob_1_bits_0,
  output        io_rdata_0_afhob_afhob_1_bits_1,
  output        io_rdata_0_afhob_afhob_1_bits_2,
  output        io_rdata_0_afhob_afhob_1_bits_3,
  output        io_rdata_0_afhob_afhob_0_bits_0,
  output        io_rdata_0_afhob_afhob_0_bits_1,
  output        io_rdata_0_afhob_afhob_0_bits_2,
  output        io_rdata_0_afhob_afhob_0_bits_3,
  output [2:0]  io_rdata_0_lastBrNumOH,
  output        io_rdata_0_histPtr_flag,
  output [7:0]  io_rdata_0_histPtr_value,
  output [4:0]  io_rdata_0_rasSp,
  output [38:0] io_rdata_0_rasTop_retAddr,
  output [7:0]  io_rdata_0_rasTop_ctr,
  output [7:0]  io_rdata_1_folded_hist_hist_17_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_16_folded_hist,
  output [10:0] io_rdata_1_folded_hist_hist_15_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_13_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_12_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_11_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_10_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_9_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_8_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_7_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_6_folded_hist,
  output [10:0] io_rdata_1_folded_hist_hist_5_folded_hist,
  output [3:0]  io_rdata_1_folded_hist_hist_4_folded_hist,
  output [10:0] io_rdata_1_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_1_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_0_folded_hist,
  output        io_rdata_1_afhob_afhob_5_bits_0,
  output        io_rdata_1_afhob_afhob_5_bits_1,
  output        io_rdata_1_afhob_afhob_5_bits_2,
  output        io_rdata_1_afhob_afhob_5_bits_3,
  output        io_rdata_1_afhob_afhob_4_bits_0,
  output        io_rdata_1_afhob_afhob_4_bits_1,
  output        io_rdata_1_afhob_afhob_4_bits_2,
  output        io_rdata_1_afhob_afhob_3_bits_0,
  output        io_rdata_1_afhob_afhob_3_bits_1,
  output        io_rdata_1_afhob_afhob_3_bits_2,
  output        io_rdata_1_afhob_afhob_3_bits_3,
  output        io_rdata_1_afhob_afhob_2_bits_0,
  output        io_rdata_1_afhob_afhob_2_bits_1,
  output        io_rdata_1_afhob_afhob_2_bits_2,
  output        io_rdata_1_afhob_afhob_2_bits_3,
  output        io_rdata_1_afhob_afhob_1_bits_0,
  output        io_rdata_1_afhob_afhob_1_bits_1,
  output        io_rdata_1_afhob_afhob_1_bits_2,
  output        io_rdata_1_afhob_afhob_1_bits_3,
  output        io_rdata_1_afhob_afhob_0_bits_0,
  output        io_rdata_1_afhob_afhob_0_bits_1,
  output        io_rdata_1_afhob_afhob_0_bits_2,
  output        io_rdata_1_afhob_afhob_0_bits_3,
  output [2:0]  io_rdata_1_lastBrNumOH,
  output        io_rdata_1_histPtr_flag,
  output [7:0]  io_rdata_1_histPtr_value,
  output [4:0]  io_rdata_1_rasSp,
  output [38:0] io_rdata_1_rasTop_retAddr,
  output [7:0]  io_rdata_1_rasTop_ctr,
  output [7:0]  io_rdata_2_folded_hist_hist_17_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_16_folded_hist,
  output [10:0] io_rdata_2_folded_hist_hist_15_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_13_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_12_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_10_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_9_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_8_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_7_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_6_folded_hist,
  output [10:0] io_rdata_2_folded_hist_hist_5_folded_hist,
  output [3:0]  io_rdata_2_folded_hist_hist_4_folded_hist,
  output [10:0] io_rdata_2_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_1_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_0_folded_hist,
  input  [2:0]  io_waddr,
  input         io_wen,
  input  [7:0]  io_wdata_folded_hist_hist_17_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_16_folded_hist,
  input  [10:0] io_wdata_folded_hist_hist_15_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_14_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_13_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_12_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_11_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_10_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_9_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_8_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_7_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_6_folded_hist,
  input  [10:0] io_wdata_folded_hist_hist_5_folded_hist,
  input  [3:0]  io_wdata_folded_hist_hist_4_folded_hist,
  input  [10:0] io_wdata_folded_hist_hist_3_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_2_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_1_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_0_folded_hist,
  input         io_wdata_afhob_afhob_5_bits_0,
  input         io_wdata_afhob_afhob_5_bits_1,
  input         io_wdata_afhob_afhob_5_bits_2,
  input         io_wdata_afhob_afhob_5_bits_3,
  input         io_wdata_afhob_afhob_4_bits_0,
  input         io_wdata_afhob_afhob_4_bits_1,
  input         io_wdata_afhob_afhob_4_bits_2,
  input         io_wdata_afhob_afhob_4_bits_3,
  input         io_wdata_afhob_afhob_3_bits_0,
  input         io_wdata_afhob_afhob_3_bits_1,
  input         io_wdata_afhob_afhob_3_bits_2,
  input         io_wdata_afhob_afhob_3_bits_3,
  input         io_wdata_afhob_afhob_2_bits_0,
  input         io_wdata_afhob_afhob_2_bits_1,
  input         io_wdata_afhob_afhob_2_bits_2,
  input         io_wdata_afhob_afhob_2_bits_3,
  input         io_wdata_afhob_afhob_1_bits_0,
  input         io_wdata_afhob_afhob_1_bits_1,
  input         io_wdata_afhob_afhob_1_bits_2,
  input         io_wdata_afhob_afhob_1_bits_3,
  input         io_wdata_afhob_afhob_0_bits_0,
  input         io_wdata_afhob_afhob_0_bits_1,
  input         io_wdata_afhob_afhob_0_bits_2,
  input         io_wdata_afhob_afhob_0_bits_3,
  input  [2:0]  io_wdata_lastBrNumOH,
  input         io_wdata_histPtr_flag,
  input  [7:0]  io_wdata_histPtr_value,
  input  [4:0]  io_wdata_rasSp,
  input  [38:0] io_wdata_rasTop_retAddr,
  input  [7:0]  io_wdata_rasTop_ctr
);
  wire  sram_clock; // @[NewFtq.scala 71:22]
  wire  sram_reset; // @[NewFtq.scala 71:22]
  wire  sram_io_rreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_io_rreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 71:22]
  wire [3:0] sram_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 71:22]
  wire [2:0] sram_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 71:22]
  wire  sram_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 71:22]
  wire [4:0] sram_io_rresp_data_0_rasSp; // @[NewFtq.scala 71:22]
  wire [38:0] sram_io_rresp_data_0_rasTop_retAddr; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_rresp_data_0_rasTop_ctr; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_io_wreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 71:22]
  wire [3:0] sram_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 71:22]
  wire [2:0] sram_io_wreq_bits_data_0_lastBrNumOH; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_bits_data_0_histPtr_flag; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_histPtr_value; // @[NewFtq.scala 71:22]
  wire [4:0] sram_io_wreq_bits_data_0_rasSp; // @[NewFtq.scala 71:22]
  wire [38:0] sram_io_wreq_bits_data_0_rasTop_retAddr; // @[NewFtq.scala 71:22]
  wire [7:0] sram_io_wreq_bits_data_0_rasTop_ctr; // @[NewFtq.scala 71:22]
  wire  sram_1_clock; // @[NewFtq.scala 71:22]
  wire  sram_1_reset; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_1_io_rreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_1_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_1_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 71:22]
  wire [3:0] sram_1_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_1_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 71:22]
  wire [2:0] sram_1_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 71:22]
  wire  sram_1_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 71:22]
  wire [4:0] sram_1_io_rresp_data_0_rasSp; // @[NewFtq.scala 71:22]
  wire [38:0] sram_1_io_rresp_data_0_rasTop_retAddr; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_rresp_data_0_rasTop_ctr; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_1_io_wreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 71:22]
  wire [3:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 71:22]
  wire [2:0] sram_1_io_wreq_bits_data_0_lastBrNumOH; // @[NewFtq.scala 71:22]
  wire  sram_1_io_wreq_bits_data_0_histPtr_flag; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_histPtr_value; // @[NewFtq.scala 71:22]
  wire [4:0] sram_1_io_wreq_bits_data_0_rasSp; // @[NewFtq.scala 71:22]
  wire [38:0] sram_1_io_wreq_bits_data_0_rasTop_retAddr; // @[NewFtq.scala 71:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_rasTop_ctr; // @[NewFtq.scala 71:22]
  wire  sram_2_clock; // @[NewFtq.scala 71:22]
  wire  sram_2_reset; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_2_io_rreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_2_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_2_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 71:22]
  wire [3:0] sram_2_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_2_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 71:22]
  wire [2:0] sram_2_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 71:22]
  wire  sram_2_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 71:22]
  wire [4:0] sram_2_io_rresp_data_0_rasSp; // @[NewFtq.scala 71:22]
  wire [38:0] sram_2_io_rresp_data_0_rasTop_retAddr; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_rresp_data_0_rasTop_ctr; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_2_io_wreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 71:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 71:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 71:22]
  wire [3:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 71:22]
  wire [10:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 71:22]
  wire [2:0] sram_2_io_wreq_bits_data_0_lastBrNumOH; // @[NewFtq.scala 71:22]
  wire  sram_2_io_wreq_bits_data_0_histPtr_flag; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_histPtr_value; // @[NewFtq.scala 71:22]
  wire [4:0] sram_2_io_wreq_bits_data_0_rasSp; // @[NewFtq.scala 71:22]
  wire [38:0] sram_2_io_wreq_bits_data_0_rasTop_retAddr; // @[NewFtq.scala 71:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_rasTop_ctr; // @[NewFtq.scala 71:22]
  SRAMTemplate_68 sram ( // @[NewFtq.scala 71:22]
    .clock(sram_clock),
    .reset(sram_reset),
    .io_rreq_valid(sram_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_io_rreq_bits_setIdx),
    .io_rresp_data_0_folded_hist_hist_17_folded_hist(sram_io_rresp_data_0_folded_hist_hist_17_folded_hist),
    .io_rresp_data_0_folded_hist_hist_16_folded_hist(sram_io_rresp_data_0_folded_hist_hist_16_folded_hist),
    .io_rresp_data_0_folded_hist_hist_15_folded_hist(sram_io_rresp_data_0_folded_hist_hist_15_folded_hist),
    .io_rresp_data_0_folded_hist_hist_14_folded_hist(sram_io_rresp_data_0_folded_hist_hist_14_folded_hist),
    .io_rresp_data_0_folded_hist_hist_13_folded_hist(sram_io_rresp_data_0_folded_hist_hist_13_folded_hist),
    .io_rresp_data_0_folded_hist_hist_12_folded_hist(sram_io_rresp_data_0_folded_hist_hist_12_folded_hist),
    .io_rresp_data_0_folded_hist_hist_11_folded_hist(sram_io_rresp_data_0_folded_hist_hist_11_folded_hist),
    .io_rresp_data_0_folded_hist_hist_10_folded_hist(sram_io_rresp_data_0_folded_hist_hist_10_folded_hist),
    .io_rresp_data_0_folded_hist_hist_9_folded_hist(sram_io_rresp_data_0_folded_hist_hist_9_folded_hist),
    .io_rresp_data_0_folded_hist_hist_8_folded_hist(sram_io_rresp_data_0_folded_hist_hist_8_folded_hist),
    .io_rresp_data_0_folded_hist_hist_7_folded_hist(sram_io_rresp_data_0_folded_hist_hist_7_folded_hist),
    .io_rresp_data_0_folded_hist_hist_6_folded_hist(sram_io_rresp_data_0_folded_hist_hist_6_folded_hist),
    .io_rresp_data_0_folded_hist_hist_5_folded_hist(sram_io_rresp_data_0_folded_hist_hist_5_folded_hist),
    .io_rresp_data_0_folded_hist_hist_4_folded_hist(sram_io_rresp_data_0_folded_hist_hist_4_folded_hist),
    .io_rresp_data_0_folded_hist_hist_3_folded_hist(sram_io_rresp_data_0_folded_hist_hist_3_folded_hist),
    .io_rresp_data_0_folded_hist_hist_2_folded_hist(sram_io_rresp_data_0_folded_hist_hist_2_folded_hist),
    .io_rresp_data_0_folded_hist_hist_1_folded_hist(sram_io_rresp_data_0_folded_hist_hist_1_folded_hist),
    .io_rresp_data_0_folded_hist_hist_0_folded_hist(sram_io_rresp_data_0_folded_hist_hist_0_folded_hist),
    .io_rresp_data_0_afhob_afhob_5_bits_0(sram_io_rresp_data_0_afhob_afhob_5_bits_0),
    .io_rresp_data_0_afhob_afhob_5_bits_1(sram_io_rresp_data_0_afhob_afhob_5_bits_1),
    .io_rresp_data_0_afhob_afhob_5_bits_2(sram_io_rresp_data_0_afhob_afhob_5_bits_2),
    .io_rresp_data_0_afhob_afhob_5_bits_3(sram_io_rresp_data_0_afhob_afhob_5_bits_3),
    .io_rresp_data_0_afhob_afhob_4_bits_0(sram_io_rresp_data_0_afhob_afhob_4_bits_0),
    .io_rresp_data_0_afhob_afhob_4_bits_1(sram_io_rresp_data_0_afhob_afhob_4_bits_1),
    .io_rresp_data_0_afhob_afhob_4_bits_2(sram_io_rresp_data_0_afhob_afhob_4_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_0(sram_io_rresp_data_0_afhob_afhob_3_bits_0),
    .io_rresp_data_0_afhob_afhob_3_bits_1(sram_io_rresp_data_0_afhob_afhob_3_bits_1),
    .io_rresp_data_0_afhob_afhob_3_bits_2(sram_io_rresp_data_0_afhob_afhob_3_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_3(sram_io_rresp_data_0_afhob_afhob_3_bits_3),
    .io_rresp_data_0_afhob_afhob_2_bits_0(sram_io_rresp_data_0_afhob_afhob_2_bits_0),
    .io_rresp_data_0_afhob_afhob_2_bits_1(sram_io_rresp_data_0_afhob_afhob_2_bits_1),
    .io_rresp_data_0_afhob_afhob_2_bits_2(sram_io_rresp_data_0_afhob_afhob_2_bits_2),
    .io_rresp_data_0_afhob_afhob_2_bits_3(sram_io_rresp_data_0_afhob_afhob_2_bits_3),
    .io_rresp_data_0_afhob_afhob_1_bits_0(sram_io_rresp_data_0_afhob_afhob_1_bits_0),
    .io_rresp_data_0_afhob_afhob_1_bits_1(sram_io_rresp_data_0_afhob_afhob_1_bits_1),
    .io_rresp_data_0_afhob_afhob_1_bits_2(sram_io_rresp_data_0_afhob_afhob_1_bits_2),
    .io_rresp_data_0_afhob_afhob_1_bits_3(sram_io_rresp_data_0_afhob_afhob_1_bits_3),
    .io_rresp_data_0_afhob_afhob_0_bits_0(sram_io_rresp_data_0_afhob_afhob_0_bits_0),
    .io_rresp_data_0_afhob_afhob_0_bits_1(sram_io_rresp_data_0_afhob_afhob_0_bits_1),
    .io_rresp_data_0_afhob_afhob_0_bits_2(sram_io_rresp_data_0_afhob_afhob_0_bits_2),
    .io_rresp_data_0_afhob_afhob_0_bits_3(sram_io_rresp_data_0_afhob_afhob_0_bits_3),
    .io_rresp_data_0_lastBrNumOH(sram_io_rresp_data_0_lastBrNumOH),
    .io_rresp_data_0_histPtr_flag(sram_io_rresp_data_0_histPtr_flag),
    .io_rresp_data_0_histPtr_value(sram_io_rresp_data_0_histPtr_value),
    .io_rresp_data_0_rasSp(sram_io_rresp_data_0_rasSp),
    .io_rresp_data_0_rasTop_retAddr(sram_io_rresp_data_0_rasTop_retAddr),
    .io_rresp_data_0_rasTop_ctr(sram_io_rresp_data_0_rasTop_ctr),
    .io_wreq_valid(sram_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_folded_hist_hist_17_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_16_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_15_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_14_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_13_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_12_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_11_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_10_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_9_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_8_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_7_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_6_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_5_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_4_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_3_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_2_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_1_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_0_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_3),
    .io_wreq_bits_data_0_lastBrNumOH(sram_io_wreq_bits_data_0_lastBrNumOH),
    .io_wreq_bits_data_0_histPtr_flag(sram_io_wreq_bits_data_0_histPtr_flag),
    .io_wreq_bits_data_0_histPtr_value(sram_io_wreq_bits_data_0_histPtr_value),
    .io_wreq_bits_data_0_rasSp(sram_io_wreq_bits_data_0_rasSp),
    .io_wreq_bits_data_0_rasTop_retAddr(sram_io_wreq_bits_data_0_rasTop_retAddr),
    .io_wreq_bits_data_0_rasTop_ctr(sram_io_wreq_bits_data_0_rasTop_ctr)
  );
  SRAMTemplate_68 sram_1 ( // @[NewFtq.scala 71:22]
    .clock(sram_1_clock),
    .reset(sram_1_reset),
    .io_rreq_valid(sram_1_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_1_io_rreq_bits_setIdx),
    .io_rresp_data_0_folded_hist_hist_17_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_17_folded_hist),
    .io_rresp_data_0_folded_hist_hist_16_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_16_folded_hist),
    .io_rresp_data_0_folded_hist_hist_15_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_15_folded_hist),
    .io_rresp_data_0_folded_hist_hist_14_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_14_folded_hist),
    .io_rresp_data_0_folded_hist_hist_13_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_13_folded_hist),
    .io_rresp_data_0_folded_hist_hist_12_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_12_folded_hist),
    .io_rresp_data_0_folded_hist_hist_11_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_11_folded_hist),
    .io_rresp_data_0_folded_hist_hist_10_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_10_folded_hist),
    .io_rresp_data_0_folded_hist_hist_9_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_9_folded_hist),
    .io_rresp_data_0_folded_hist_hist_8_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_8_folded_hist),
    .io_rresp_data_0_folded_hist_hist_7_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_7_folded_hist),
    .io_rresp_data_0_folded_hist_hist_6_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_6_folded_hist),
    .io_rresp_data_0_folded_hist_hist_5_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_5_folded_hist),
    .io_rresp_data_0_folded_hist_hist_4_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_4_folded_hist),
    .io_rresp_data_0_folded_hist_hist_3_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_3_folded_hist),
    .io_rresp_data_0_folded_hist_hist_2_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_2_folded_hist),
    .io_rresp_data_0_folded_hist_hist_1_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_1_folded_hist),
    .io_rresp_data_0_folded_hist_hist_0_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_0_folded_hist),
    .io_rresp_data_0_afhob_afhob_5_bits_0(sram_1_io_rresp_data_0_afhob_afhob_5_bits_0),
    .io_rresp_data_0_afhob_afhob_5_bits_1(sram_1_io_rresp_data_0_afhob_afhob_5_bits_1),
    .io_rresp_data_0_afhob_afhob_5_bits_2(sram_1_io_rresp_data_0_afhob_afhob_5_bits_2),
    .io_rresp_data_0_afhob_afhob_5_bits_3(sram_1_io_rresp_data_0_afhob_afhob_5_bits_3),
    .io_rresp_data_0_afhob_afhob_4_bits_0(sram_1_io_rresp_data_0_afhob_afhob_4_bits_0),
    .io_rresp_data_0_afhob_afhob_4_bits_1(sram_1_io_rresp_data_0_afhob_afhob_4_bits_1),
    .io_rresp_data_0_afhob_afhob_4_bits_2(sram_1_io_rresp_data_0_afhob_afhob_4_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_0(sram_1_io_rresp_data_0_afhob_afhob_3_bits_0),
    .io_rresp_data_0_afhob_afhob_3_bits_1(sram_1_io_rresp_data_0_afhob_afhob_3_bits_1),
    .io_rresp_data_0_afhob_afhob_3_bits_2(sram_1_io_rresp_data_0_afhob_afhob_3_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_3(sram_1_io_rresp_data_0_afhob_afhob_3_bits_3),
    .io_rresp_data_0_afhob_afhob_2_bits_0(sram_1_io_rresp_data_0_afhob_afhob_2_bits_0),
    .io_rresp_data_0_afhob_afhob_2_bits_1(sram_1_io_rresp_data_0_afhob_afhob_2_bits_1),
    .io_rresp_data_0_afhob_afhob_2_bits_2(sram_1_io_rresp_data_0_afhob_afhob_2_bits_2),
    .io_rresp_data_0_afhob_afhob_2_bits_3(sram_1_io_rresp_data_0_afhob_afhob_2_bits_3),
    .io_rresp_data_0_afhob_afhob_1_bits_0(sram_1_io_rresp_data_0_afhob_afhob_1_bits_0),
    .io_rresp_data_0_afhob_afhob_1_bits_1(sram_1_io_rresp_data_0_afhob_afhob_1_bits_1),
    .io_rresp_data_0_afhob_afhob_1_bits_2(sram_1_io_rresp_data_0_afhob_afhob_1_bits_2),
    .io_rresp_data_0_afhob_afhob_1_bits_3(sram_1_io_rresp_data_0_afhob_afhob_1_bits_3),
    .io_rresp_data_0_afhob_afhob_0_bits_0(sram_1_io_rresp_data_0_afhob_afhob_0_bits_0),
    .io_rresp_data_0_afhob_afhob_0_bits_1(sram_1_io_rresp_data_0_afhob_afhob_0_bits_1),
    .io_rresp_data_0_afhob_afhob_0_bits_2(sram_1_io_rresp_data_0_afhob_afhob_0_bits_2),
    .io_rresp_data_0_afhob_afhob_0_bits_3(sram_1_io_rresp_data_0_afhob_afhob_0_bits_3),
    .io_rresp_data_0_lastBrNumOH(sram_1_io_rresp_data_0_lastBrNumOH),
    .io_rresp_data_0_histPtr_flag(sram_1_io_rresp_data_0_histPtr_flag),
    .io_rresp_data_0_histPtr_value(sram_1_io_rresp_data_0_histPtr_value),
    .io_rresp_data_0_rasSp(sram_1_io_rresp_data_0_rasSp),
    .io_rresp_data_0_rasTop_retAddr(sram_1_io_rresp_data_0_rasTop_retAddr),
    .io_rresp_data_0_rasTop_ctr(sram_1_io_rresp_data_0_rasTop_ctr),
    .io_wreq_valid(sram_1_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_folded_hist_hist_17_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_16_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_15_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_14_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_13_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_12_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_11_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_10_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_9_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_8_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_7_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_6_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_5_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_4_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_3_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_2_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_1_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_0_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_3),
    .io_wreq_bits_data_0_lastBrNumOH(sram_1_io_wreq_bits_data_0_lastBrNumOH),
    .io_wreq_bits_data_0_histPtr_flag(sram_1_io_wreq_bits_data_0_histPtr_flag),
    .io_wreq_bits_data_0_histPtr_value(sram_1_io_wreq_bits_data_0_histPtr_value),
    .io_wreq_bits_data_0_rasSp(sram_1_io_wreq_bits_data_0_rasSp),
    .io_wreq_bits_data_0_rasTop_retAddr(sram_1_io_wreq_bits_data_0_rasTop_retAddr),
    .io_wreq_bits_data_0_rasTop_ctr(sram_1_io_wreq_bits_data_0_rasTop_ctr)
  );
  SRAMTemplate_68 sram_2 ( // @[NewFtq.scala 71:22]
    .clock(sram_2_clock),
    .reset(sram_2_reset),
    .io_rreq_valid(sram_2_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_2_io_rreq_bits_setIdx),
    .io_rresp_data_0_folded_hist_hist_17_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_17_folded_hist),
    .io_rresp_data_0_folded_hist_hist_16_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_16_folded_hist),
    .io_rresp_data_0_folded_hist_hist_15_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_15_folded_hist),
    .io_rresp_data_0_folded_hist_hist_14_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_14_folded_hist),
    .io_rresp_data_0_folded_hist_hist_13_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_13_folded_hist),
    .io_rresp_data_0_folded_hist_hist_12_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_12_folded_hist),
    .io_rresp_data_0_folded_hist_hist_11_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_11_folded_hist),
    .io_rresp_data_0_folded_hist_hist_10_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_10_folded_hist),
    .io_rresp_data_0_folded_hist_hist_9_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_9_folded_hist),
    .io_rresp_data_0_folded_hist_hist_8_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_8_folded_hist),
    .io_rresp_data_0_folded_hist_hist_7_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_7_folded_hist),
    .io_rresp_data_0_folded_hist_hist_6_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_6_folded_hist),
    .io_rresp_data_0_folded_hist_hist_5_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_5_folded_hist),
    .io_rresp_data_0_folded_hist_hist_4_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_4_folded_hist),
    .io_rresp_data_0_folded_hist_hist_3_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_3_folded_hist),
    .io_rresp_data_0_folded_hist_hist_2_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_2_folded_hist),
    .io_rresp_data_0_folded_hist_hist_1_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_1_folded_hist),
    .io_rresp_data_0_folded_hist_hist_0_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_0_folded_hist),
    .io_rresp_data_0_afhob_afhob_5_bits_0(sram_2_io_rresp_data_0_afhob_afhob_5_bits_0),
    .io_rresp_data_0_afhob_afhob_5_bits_1(sram_2_io_rresp_data_0_afhob_afhob_5_bits_1),
    .io_rresp_data_0_afhob_afhob_5_bits_2(sram_2_io_rresp_data_0_afhob_afhob_5_bits_2),
    .io_rresp_data_0_afhob_afhob_5_bits_3(sram_2_io_rresp_data_0_afhob_afhob_5_bits_3),
    .io_rresp_data_0_afhob_afhob_4_bits_0(sram_2_io_rresp_data_0_afhob_afhob_4_bits_0),
    .io_rresp_data_0_afhob_afhob_4_bits_1(sram_2_io_rresp_data_0_afhob_afhob_4_bits_1),
    .io_rresp_data_0_afhob_afhob_4_bits_2(sram_2_io_rresp_data_0_afhob_afhob_4_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_0(sram_2_io_rresp_data_0_afhob_afhob_3_bits_0),
    .io_rresp_data_0_afhob_afhob_3_bits_1(sram_2_io_rresp_data_0_afhob_afhob_3_bits_1),
    .io_rresp_data_0_afhob_afhob_3_bits_2(sram_2_io_rresp_data_0_afhob_afhob_3_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_3(sram_2_io_rresp_data_0_afhob_afhob_3_bits_3),
    .io_rresp_data_0_afhob_afhob_2_bits_0(sram_2_io_rresp_data_0_afhob_afhob_2_bits_0),
    .io_rresp_data_0_afhob_afhob_2_bits_1(sram_2_io_rresp_data_0_afhob_afhob_2_bits_1),
    .io_rresp_data_0_afhob_afhob_2_bits_2(sram_2_io_rresp_data_0_afhob_afhob_2_bits_2),
    .io_rresp_data_0_afhob_afhob_2_bits_3(sram_2_io_rresp_data_0_afhob_afhob_2_bits_3),
    .io_rresp_data_0_afhob_afhob_1_bits_0(sram_2_io_rresp_data_0_afhob_afhob_1_bits_0),
    .io_rresp_data_0_afhob_afhob_1_bits_1(sram_2_io_rresp_data_0_afhob_afhob_1_bits_1),
    .io_rresp_data_0_afhob_afhob_1_bits_2(sram_2_io_rresp_data_0_afhob_afhob_1_bits_2),
    .io_rresp_data_0_afhob_afhob_1_bits_3(sram_2_io_rresp_data_0_afhob_afhob_1_bits_3),
    .io_rresp_data_0_afhob_afhob_0_bits_0(sram_2_io_rresp_data_0_afhob_afhob_0_bits_0),
    .io_rresp_data_0_afhob_afhob_0_bits_1(sram_2_io_rresp_data_0_afhob_afhob_0_bits_1),
    .io_rresp_data_0_afhob_afhob_0_bits_2(sram_2_io_rresp_data_0_afhob_afhob_0_bits_2),
    .io_rresp_data_0_afhob_afhob_0_bits_3(sram_2_io_rresp_data_0_afhob_afhob_0_bits_3),
    .io_rresp_data_0_lastBrNumOH(sram_2_io_rresp_data_0_lastBrNumOH),
    .io_rresp_data_0_histPtr_flag(sram_2_io_rresp_data_0_histPtr_flag),
    .io_rresp_data_0_histPtr_value(sram_2_io_rresp_data_0_histPtr_value),
    .io_rresp_data_0_rasSp(sram_2_io_rresp_data_0_rasSp),
    .io_rresp_data_0_rasTop_retAddr(sram_2_io_rresp_data_0_rasTop_retAddr),
    .io_rresp_data_0_rasTop_ctr(sram_2_io_rresp_data_0_rasTop_ctr),
    .io_wreq_valid(sram_2_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_folded_hist_hist_17_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_16_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_15_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_14_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_13_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_12_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_11_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_10_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_9_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_8_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_7_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_6_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_5_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_4_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_3_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_2_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_1_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_0_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_3),
    .io_wreq_bits_data_0_lastBrNumOH(sram_2_io_wreq_bits_data_0_lastBrNumOH),
    .io_wreq_bits_data_0_histPtr_flag(sram_2_io_wreq_bits_data_0_histPtr_flag),
    .io_wreq_bits_data_0_histPtr_value(sram_2_io_wreq_bits_data_0_histPtr_value),
    .io_wreq_bits_data_0_rasSp(sram_2_io_wreq_bits_data_0_rasSp),
    .io_wreq_bits_data_0_rasTop_retAddr(sram_2_io_wreq_bits_data_0_rasTop_retAddr),
    .io_wreq_bits_data_0_rasTop_ctr(sram_2_io_wreq_bits_data_0_rasTop_ctr)
  );
  assign io_rdata_0_folded_hist_hist_17_folded_hist = sram_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_16_folded_hist = sram_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_15_folded_hist = sram_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_14_folded_hist = sram_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_13_folded_hist = sram_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_12_folded_hist = sram_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_11_folded_hist = sram_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_10_folded_hist = sram_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_9_folded_hist = sram_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_8_folded_hist = sram_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_7_folded_hist = sram_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_6_folded_hist = sram_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_5_folded_hist = sram_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_4_folded_hist = sram_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_3_folded_hist = sram_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_2_folded_hist = sram_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_1_folded_hist = sram_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_folded_hist_hist_0_folded_hist = sram_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_5_bits_0 = sram_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_5_bits_1 = sram_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_5_bits_2 = sram_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_5_bits_3 = sram_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_4_bits_0 = sram_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_4_bits_1 = sram_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_4_bits_2 = sram_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_3_bits_0 = sram_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_3_bits_1 = sram_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_3_bits_2 = sram_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_3_bits_3 = sram_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_2_bits_0 = sram_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_2_bits_1 = sram_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_2_bits_2 = sram_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_2_bits_3 = sram_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_1_bits_0 = sram_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_1_bits_1 = sram_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_1_bits_2 = sram_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_1_bits_3 = sram_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_0_bits_0 = sram_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_0_bits_1 = sram_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_0_bits_2 = sram_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_0_afhob_afhob_0_bits_3 = sram_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_0_lastBrNumOH = sram_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 74:17]
  assign io_rdata_0_histPtr_flag = sram_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 74:17]
  assign io_rdata_0_histPtr_value = sram_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 74:17]
  assign io_rdata_0_rasSp = sram_io_rresp_data_0_rasSp; // @[NewFtq.scala 74:17]
  assign io_rdata_0_rasTop_retAddr = sram_io_rresp_data_0_rasTop_retAddr; // @[NewFtq.scala 74:17]
  assign io_rdata_0_rasTop_ctr = sram_io_rresp_data_0_rasTop_ctr; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_17_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_16_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_15_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_14_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_13_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_12_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_11_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_10_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_9_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_8_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_7_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_6_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_5_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_4_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_3_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_2_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_1_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_folded_hist_hist_0_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_5_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_5_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_5_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_5_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_4_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_4_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_4_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_3_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_3_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_3_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_3_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_2_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_2_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_2_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_2_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_1_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_1_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_1_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_1_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_0_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_0_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_0_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 74:17]
  assign io_rdata_1_afhob_afhob_0_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 74:17]
  assign io_rdata_1_lastBrNumOH = sram_1_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 74:17]
  assign io_rdata_1_histPtr_flag = sram_1_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 74:17]
  assign io_rdata_1_histPtr_value = sram_1_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 74:17]
  assign io_rdata_1_rasSp = sram_1_io_rresp_data_0_rasSp; // @[NewFtq.scala 74:17]
  assign io_rdata_1_rasTop_retAddr = sram_1_io_rresp_data_0_rasTop_retAddr; // @[NewFtq.scala 74:17]
  assign io_rdata_1_rasTop_ctr = sram_1_io_rresp_data_0_rasTop_ctr; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_17_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_16_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_15_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_14_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_13_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_12_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_10_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_9_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_8_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_7_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_6_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_5_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_4_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_3_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_2_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_1_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 74:17]
  assign io_rdata_2_folded_hist_hist_0_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 74:17]
  assign sram_clock = clock;
  assign sram_reset = reset;
  assign sram_io_rreq_valid = io_ren_0; // @[NewFtq.scala 72:25]
  assign sram_io_rreq_bits_setIdx = io_raddr_0; // @[NewFtq.scala 73:31]
  assign sram_io_wreq_valid = io_wen; // @[NewFtq.scala 75:25]
  assign sram_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 76:31]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist = io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist = io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist = io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist = io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist = io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist = io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist = io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist = io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist = io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist = io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist = io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist = io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist = io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist = io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist = io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist = io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist = io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist = io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_0 = io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_1 = io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_2 = io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_3 = io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_0 = io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_1 = io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_2 = io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_3 = io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_0 = io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_1 = io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_2 = io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_3 = io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_0 = io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_1 = io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_2 = io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_3 = io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_0 = io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_1 = io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_2 = io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_3 = io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_0 = io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_1 = io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_2 = io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_3 = io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_lastBrNumOH = io_wdata_lastBrNumOH; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_histPtr_flag = io_wdata_histPtr_flag; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_histPtr_value = io_wdata_histPtr_value; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_rasSp = io_wdata_rasSp; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_rasTop_retAddr = io_wdata_rasTop_retAddr; // @[NewFtq.scala 77:{39,39}]
  assign sram_io_wreq_bits_data_0_rasTop_ctr = io_wdata_rasTop_ctr; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_clock = clock;
  assign sram_1_reset = reset;
  assign sram_1_io_rreq_valid = io_ren_1; // @[NewFtq.scala 72:25]
  assign sram_1_io_rreq_bits_setIdx = io_raddr_1; // @[NewFtq.scala 73:31]
  assign sram_1_io_wreq_valid = io_wen; // @[NewFtq.scala 75:25]
  assign sram_1_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 76:31]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist = io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist = io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist = io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist = io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist = io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist = io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist = io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist = io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist = io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist = io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist = io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist = io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist = io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist = io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist = io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist = io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist = io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist = io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_0 = io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_1 = io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_2 = io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_3 = io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_0 = io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_1 = io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_2 = io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_3 = io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_0 = io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_1 = io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_2 = io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_3 = io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_0 = io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_1 = io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_2 = io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_3 = io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_0 = io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_1 = io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_2 = io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_3 = io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_0 = io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_1 = io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_2 = io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_3 = io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_lastBrNumOH = io_wdata_lastBrNumOH; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_histPtr_flag = io_wdata_histPtr_flag; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_histPtr_value = io_wdata_histPtr_value; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_rasSp = io_wdata_rasSp; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_rasTop_retAddr = io_wdata_rasTop_retAddr; // @[NewFtq.scala 77:{39,39}]
  assign sram_1_io_wreq_bits_data_0_rasTop_ctr = io_wdata_rasTop_ctr; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_clock = clock;
  assign sram_2_reset = reset;
  assign sram_2_io_rreq_valid = io_ren_2; // @[NewFtq.scala 72:25]
  assign sram_2_io_rreq_bits_setIdx = io_raddr_2; // @[NewFtq.scala 73:31]
  assign sram_2_io_wreq_valid = io_wen; // @[NewFtq.scala 75:25]
  assign sram_2_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 76:31]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist = io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist = io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist = io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist = io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist = io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist = io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist = io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist = io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist = io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist = io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist = io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist = io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist = io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist = io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist = io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist = io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist = io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist = io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_0 = io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_1 = io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_2 = io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_3 = io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_0 = io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_1 = io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_2 = io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_3 = io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_0 = io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_1 = io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_2 = io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_3 = io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_0 = io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_1 = io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_2 = io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_3 = io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_0 = io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_1 = io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_2 = io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_3 = io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_0 = io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_1 = io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_2 = io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_3 = io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_lastBrNumOH = io_wdata_lastBrNumOH; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_histPtr_flag = io_wdata_histPtr_flag; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_histPtr_value = io_wdata_histPtr_value; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_rasSp = io_wdata_rasSp; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_rasTop_retAddr = io_wdata_rasTop_retAddr; // @[NewFtq.scala 77:{39,39}]
  assign sram_2_io_wreq_bits_data_0_rasTop_ctr = io_wdata_rasTop_ctr; // @[NewFtq.scala 77:{39,39}]
endmodule

