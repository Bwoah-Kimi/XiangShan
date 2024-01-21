module SRAMTemplate_145(
  input        clock,
  input        io_rreq_valid,
  input  [5:0] io_rreq_bits_setIdx,
  output [5:0] io_rresp_data_0,
  output [5:0] io_rresp_data_1,
  output [5:0] io_rresp_data_2,
  output [5:0] io_rresp_data_3,
  output [5:0] io_rresp_data_4,
  output [5:0] io_rresp_data_5,
  output [5:0] io_rresp_data_6,
  output [5:0] io_rresp_data_7,
  input        io_wreq_valid,
  input  [5:0] io_wreq_bits_setIdx,
  input  [5:0] io_wreq_bits_data_0,
  input  [5:0] io_wreq_bits_data_1,
  input  [5:0] io_wreq_bits_data_2,
  input  [5:0] io_wreq_bits_data_3,
  input  [5:0] io_wreq_bits_data_4,
  input  [5:0] io_wreq_bits_data_5,
  input  [5:0] io_wreq_bits_data_6,
  input  [5:0] io_wreq_bits_data_7,
  input  [7:0] io_wreq_bits_waymask
);
  wire [5:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_4; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_5; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_6; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_wdata_7; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_4; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_5; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_6; // @[SRAMTemplate.scala 105:26]
  wire [5:0] array_RW0_rdata_7; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_4; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_5; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_6; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_7; // @[SRAMTemplate.scala 105:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 123:38]
  array_15 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wdata_4(array_RW0_wdata_4),
    .RW0_wdata_5(array_RW0_wdata_5),
    .RW0_wdata_6(array_RW0_wdata_6),
    .RW0_wdata_7(array_RW0_wdata_7),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_rdata_4(array_RW0_rdata_4),
    .RW0_rdata_5(array_RW0_rdata_5),
    .RW0_rdata_6(array_RW0_rdata_6),
    .RW0_rdata_7(array_RW0_rdata_7),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3),
    .RW0_wmask_4(array_RW0_wmask_4),
    .RW0_wmask_5(array_RW0_wmask_5),
    .RW0_wmask_6(array_RW0_wmask_6),
    .RW0_wmask_7(array_RW0_wmask_7)
  );
  assign io_rresp_data_0 = array_RW0_rdata_0; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_1 = array_RW0_rdata_1; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_2 = array_RW0_rdata_2; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_3 = array_RW0_rdata_3; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_4 = array_RW0_rdata_4; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_5 = array_RW0_rdata_5; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_6 = array_RW0_rdata_6; // @[SRAMTemplate.scala 154:{45,45}]
  assign io_rresp_data_7 = array_RW0_rdata_7; // @[SRAMTemplate.scala 154:{45,45}]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_1 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_2 = io_wreq_bits_data_2; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_3 = io_wreq_bits_data_3; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_4 = io_wreq_bits_data_4; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_5 = io_wreq_bits_data_5; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_6 = io_wreq_bits_data_6; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_7 = io_wreq_bits_data_7; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_4 = io_wreq_bits_waymask[4]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_5 = io_wreq_bits_waymask[5]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_6 = io_wreq_bits_waymask[6]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_7 = io_wreq_bits_waymask[7]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule

