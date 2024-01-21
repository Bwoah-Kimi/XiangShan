module Folded1WDataModuleTemplate_2(
  input        clock,
  input        reset,
  input  [8:0] io_raddr_0,
  output       io_rdata_0,
  input        io_wen,
  input  [8:0] io_waddr,
  input        io_wdata,
  input        io_resetEn
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  reg  data_0 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_0_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_0_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_1 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_1_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_1_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_1_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_2 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_2_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_2_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_2_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_3 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_3_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_3_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_3_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_4 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_4_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_4_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_4_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_4_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_5 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_5_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_5_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_5_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_5_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_6 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_6_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_6_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_6_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_6_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_7 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_7_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_7_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_7_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_7_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_8 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_8_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_8_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_8_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_8_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_9 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_9_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_9_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_9_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_9_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_10 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_10_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_10_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_10_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_10_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_11 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_11_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_11_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_11_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_11_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_12 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_12_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_12_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_12_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_12_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_13 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_13_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_13_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_13_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_13_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_14 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_14_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_14_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_14_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_14_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  data_15 [0:31]; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_15_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_MPORT_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_15_MPORT_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_MPORT_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_MPORT_en; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
  wire [4:0] data_15_MPORT_1_addr; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_MPORT_1_mask; // @[DataModuleTemplate.scala 211:17]
  wire  data_15_MPORT_1_en; // @[DataModuleTemplate.scala 211:17]
  reg  doing_reset; // @[DataModuleTemplate.scala 213:28]
  wire  _GEN_0 = io_resetEn | doing_reset; // @[DataModuleTemplate.scala 213:28 215:{36,50}]
  reg [4:0] resetRow; // @[DataModuleTemplate.scala 217:25]
  wire [4:0] _GEN_140 = {{4'd0}, doing_reset}; // @[DataModuleTemplate.scala 218:24]
  reg [8:0] raddr_0; // @[DataModuleTemplate.scala 221:34]
  wire [3:0] idx = raddr_0[3:0]; // @[DataModuleTemplate.scala 225:23]
  wire  _GEN_3 = 4'h1 == idx ? data_1_io_rdata_0_MPORT_data : data_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_4 = 4'h2 == idx ? data_2_io_rdata_0_MPORT_data : _GEN_3; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_5 = 4'h3 == idx ? data_3_io_rdata_0_MPORT_data : _GEN_4; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_6 = 4'h4 == idx ? data_4_io_rdata_0_MPORT_data : _GEN_5; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_7 = 4'h5 == idx ? data_5_io_rdata_0_MPORT_data : _GEN_6; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_8 = 4'h6 == idx ? data_6_io_rdata_0_MPORT_data : _GEN_7; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_9 = 4'h7 == idx ? data_7_io_rdata_0_MPORT_data : _GEN_8; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_10 = 4'h8 == idx ? data_8_io_rdata_0_MPORT_data : _GEN_9; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_11 = 4'h9 == idx ? data_9_io_rdata_0_MPORT_data : _GEN_10; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_12 = 4'ha == idx ? data_10_io_rdata_0_MPORT_data : _GEN_11; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_13 = 4'hb == idx ? data_11_io_rdata_0_MPORT_data : _GEN_12; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_14 = 4'hc == idx ? data_12_io_rdata_0_MPORT_data : _GEN_13; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_15 = 4'hd == idx ? data_13_io_rdata_0_MPORT_data : _GEN_14; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_16 = 4'he == idx ? data_14_io_rdata_0_MPORT_data : _GEN_15; // @[DataModuleTemplate.scala 226:{23,23}]
  wire  _GEN_17 = 4'hf == idx ? data_15_io_rdata_0_MPORT_data : _GEN_16; // @[DataModuleTemplate.scala 226:{23,23}]
  wire [15:0] wmask = 16'h1 << io_waddr[3:0]; // @[OneHot.scala 57:35]
  assign data_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_0_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_0_io_rdata_0_MPORT_data = data_0[data_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_0_MPORT_data = 1'h0;
  assign data_0_MPORT_addr = resetRow;
  assign data_0_MPORT_mask = 1'h1;
  assign data_0_MPORT_en = doing_reset;
  assign data_0_MPORT_1_data = io_wdata;
  assign data_0_MPORT_1_addr = io_waddr[8:4];
  assign data_0_MPORT_1_mask = wmask[0];
  assign data_0_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_1_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_1_io_rdata_0_MPORT_data = data_1[data_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_1_MPORT_data = 1'h0;
  assign data_1_MPORT_addr = resetRow;
  assign data_1_MPORT_mask = 1'h1;
  assign data_1_MPORT_en = doing_reset;
  assign data_1_MPORT_1_data = io_wdata;
  assign data_1_MPORT_1_addr = io_waddr[8:4];
  assign data_1_MPORT_1_mask = wmask[1];
  assign data_1_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_2_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_2_io_rdata_0_MPORT_data = data_2[data_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_2_MPORT_data = 1'h0;
  assign data_2_MPORT_addr = resetRow;
  assign data_2_MPORT_mask = 1'h1;
  assign data_2_MPORT_en = doing_reset;
  assign data_2_MPORT_1_data = io_wdata;
  assign data_2_MPORT_1_addr = io_waddr[8:4];
  assign data_2_MPORT_1_mask = wmask[2];
  assign data_2_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_3_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_3_io_rdata_0_MPORT_data = data_3[data_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_3_MPORT_data = 1'h0;
  assign data_3_MPORT_addr = resetRow;
  assign data_3_MPORT_mask = 1'h1;
  assign data_3_MPORT_en = doing_reset;
  assign data_3_MPORT_1_data = io_wdata;
  assign data_3_MPORT_1_addr = io_waddr[8:4];
  assign data_3_MPORT_1_mask = wmask[3];
  assign data_3_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_4_io_rdata_0_MPORT_en = 1'h1;
  assign data_4_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_4_io_rdata_0_MPORT_data = data_4[data_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_4_MPORT_data = 1'h0;
  assign data_4_MPORT_addr = resetRow;
  assign data_4_MPORT_mask = 1'h1;
  assign data_4_MPORT_en = doing_reset;
  assign data_4_MPORT_1_data = io_wdata;
  assign data_4_MPORT_1_addr = io_waddr[8:4];
  assign data_4_MPORT_1_mask = wmask[4];
  assign data_4_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_5_io_rdata_0_MPORT_en = 1'h1;
  assign data_5_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_5_io_rdata_0_MPORT_data = data_5[data_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_5_MPORT_data = 1'h0;
  assign data_5_MPORT_addr = resetRow;
  assign data_5_MPORT_mask = 1'h1;
  assign data_5_MPORT_en = doing_reset;
  assign data_5_MPORT_1_data = io_wdata;
  assign data_5_MPORT_1_addr = io_waddr[8:4];
  assign data_5_MPORT_1_mask = wmask[5];
  assign data_5_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_6_io_rdata_0_MPORT_en = 1'h1;
  assign data_6_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_6_io_rdata_0_MPORT_data = data_6[data_6_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_6_MPORT_data = 1'h0;
  assign data_6_MPORT_addr = resetRow;
  assign data_6_MPORT_mask = 1'h1;
  assign data_6_MPORT_en = doing_reset;
  assign data_6_MPORT_1_data = io_wdata;
  assign data_6_MPORT_1_addr = io_waddr[8:4];
  assign data_6_MPORT_1_mask = wmask[6];
  assign data_6_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_7_io_rdata_0_MPORT_en = 1'h1;
  assign data_7_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_7_io_rdata_0_MPORT_data = data_7[data_7_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_7_MPORT_data = 1'h0;
  assign data_7_MPORT_addr = resetRow;
  assign data_7_MPORT_mask = 1'h1;
  assign data_7_MPORT_en = doing_reset;
  assign data_7_MPORT_1_data = io_wdata;
  assign data_7_MPORT_1_addr = io_waddr[8:4];
  assign data_7_MPORT_1_mask = wmask[7];
  assign data_7_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_8_io_rdata_0_MPORT_en = 1'h1;
  assign data_8_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_8_io_rdata_0_MPORT_data = data_8[data_8_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_8_MPORT_data = 1'h0;
  assign data_8_MPORT_addr = resetRow;
  assign data_8_MPORT_mask = 1'h1;
  assign data_8_MPORT_en = doing_reset;
  assign data_8_MPORT_1_data = io_wdata;
  assign data_8_MPORT_1_addr = io_waddr[8:4];
  assign data_8_MPORT_1_mask = wmask[8];
  assign data_8_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_9_io_rdata_0_MPORT_en = 1'h1;
  assign data_9_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_9_io_rdata_0_MPORT_data = data_9[data_9_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_9_MPORT_data = 1'h0;
  assign data_9_MPORT_addr = resetRow;
  assign data_9_MPORT_mask = 1'h1;
  assign data_9_MPORT_en = doing_reset;
  assign data_9_MPORT_1_data = io_wdata;
  assign data_9_MPORT_1_addr = io_waddr[8:4];
  assign data_9_MPORT_1_mask = wmask[9];
  assign data_9_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_10_io_rdata_0_MPORT_en = 1'h1;
  assign data_10_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_10_io_rdata_0_MPORT_data = data_10[data_10_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_10_MPORT_data = 1'h0;
  assign data_10_MPORT_addr = resetRow;
  assign data_10_MPORT_mask = 1'h1;
  assign data_10_MPORT_en = doing_reset;
  assign data_10_MPORT_1_data = io_wdata;
  assign data_10_MPORT_1_addr = io_waddr[8:4];
  assign data_10_MPORT_1_mask = wmask[10];
  assign data_10_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_11_io_rdata_0_MPORT_en = 1'h1;
  assign data_11_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_11_io_rdata_0_MPORT_data = data_11[data_11_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_11_MPORT_data = 1'h0;
  assign data_11_MPORT_addr = resetRow;
  assign data_11_MPORT_mask = 1'h1;
  assign data_11_MPORT_en = doing_reset;
  assign data_11_MPORT_1_data = io_wdata;
  assign data_11_MPORT_1_addr = io_waddr[8:4];
  assign data_11_MPORT_1_mask = wmask[11];
  assign data_11_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_12_io_rdata_0_MPORT_en = 1'h1;
  assign data_12_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_12_io_rdata_0_MPORT_data = data_12[data_12_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_12_MPORT_data = 1'h0;
  assign data_12_MPORT_addr = resetRow;
  assign data_12_MPORT_mask = 1'h1;
  assign data_12_MPORT_en = doing_reset;
  assign data_12_MPORT_1_data = io_wdata;
  assign data_12_MPORT_1_addr = io_waddr[8:4];
  assign data_12_MPORT_1_mask = wmask[12];
  assign data_12_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_13_io_rdata_0_MPORT_en = 1'h1;
  assign data_13_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_13_io_rdata_0_MPORT_data = data_13[data_13_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_13_MPORT_data = 1'h0;
  assign data_13_MPORT_addr = resetRow;
  assign data_13_MPORT_mask = 1'h1;
  assign data_13_MPORT_en = doing_reset;
  assign data_13_MPORT_1_data = io_wdata;
  assign data_13_MPORT_1_addr = io_waddr[8:4];
  assign data_13_MPORT_1_mask = wmask[13];
  assign data_13_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_14_io_rdata_0_MPORT_en = 1'h1;
  assign data_14_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_14_io_rdata_0_MPORT_data = data_14[data_14_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_14_MPORT_data = 1'h0;
  assign data_14_MPORT_addr = resetRow;
  assign data_14_MPORT_mask = 1'h1;
  assign data_14_MPORT_en = doing_reset;
  assign data_14_MPORT_1_data = io_wdata;
  assign data_14_MPORT_1_addr = io_waddr[8:4];
  assign data_14_MPORT_1_mask = wmask[14];
  assign data_14_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign data_15_io_rdata_0_MPORT_en = 1'h1;
  assign data_15_io_rdata_0_MPORT_addr = raddr_0[8:4];
  assign data_15_io_rdata_0_MPORT_data = data_15[data_15_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 211:17]
  assign data_15_MPORT_data = 1'h0;
  assign data_15_MPORT_addr = resetRow;
  assign data_15_MPORT_mask = 1'h1;
  assign data_15_MPORT_en = doing_reset;
  assign data_15_MPORT_1_data = io_wdata;
  assign data_15_MPORT_1_addr = io_waddr[8:4];
  assign data_15_MPORT_1_mask = wmask[15];
  assign data_15_MPORT_1_en = doing_reset ? 1'h0 : io_wen;
  assign io_rdata_0 = doing_reset ? 1'h0 : _GEN_17; // @[DataModuleTemplate.scala 226:23]
  always @(posedge clock) begin
    if (data_0_MPORT_en & data_0_MPORT_mask) begin
      data_0[data_0_MPORT_addr] <= data_0_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_0_MPORT_1_en & data_0_MPORT_1_mask) begin
      data_0[data_0_MPORT_1_addr] <= data_0_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_1_MPORT_en & data_1_MPORT_mask) begin
      data_1[data_1_MPORT_addr] <= data_1_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_1_MPORT_1_en & data_1_MPORT_1_mask) begin
      data_1[data_1_MPORT_1_addr] <= data_1_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_2_MPORT_en & data_2_MPORT_mask) begin
      data_2[data_2_MPORT_addr] <= data_2_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_2_MPORT_1_en & data_2_MPORT_1_mask) begin
      data_2[data_2_MPORT_1_addr] <= data_2_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_3_MPORT_en & data_3_MPORT_mask) begin
      data_3[data_3_MPORT_addr] <= data_3_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_3_MPORT_1_en & data_3_MPORT_1_mask) begin
      data_3[data_3_MPORT_1_addr] <= data_3_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_4_MPORT_en & data_4_MPORT_mask) begin
      data_4[data_4_MPORT_addr] <= data_4_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_4_MPORT_1_en & data_4_MPORT_1_mask) begin
      data_4[data_4_MPORT_1_addr] <= data_4_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_5_MPORT_en & data_5_MPORT_mask) begin
      data_5[data_5_MPORT_addr] <= data_5_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_5_MPORT_1_en & data_5_MPORT_1_mask) begin
      data_5[data_5_MPORT_1_addr] <= data_5_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_6_MPORT_en & data_6_MPORT_mask) begin
      data_6[data_6_MPORT_addr] <= data_6_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_6_MPORT_1_en & data_6_MPORT_1_mask) begin
      data_6[data_6_MPORT_1_addr] <= data_6_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_7_MPORT_en & data_7_MPORT_mask) begin
      data_7[data_7_MPORT_addr] <= data_7_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_7_MPORT_1_en & data_7_MPORT_1_mask) begin
      data_7[data_7_MPORT_1_addr] <= data_7_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_8_MPORT_en & data_8_MPORT_mask) begin
      data_8[data_8_MPORT_addr] <= data_8_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_8_MPORT_1_en & data_8_MPORT_1_mask) begin
      data_8[data_8_MPORT_1_addr] <= data_8_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_9_MPORT_en & data_9_MPORT_mask) begin
      data_9[data_9_MPORT_addr] <= data_9_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_9_MPORT_1_en & data_9_MPORT_1_mask) begin
      data_9[data_9_MPORT_1_addr] <= data_9_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_10_MPORT_en & data_10_MPORT_mask) begin
      data_10[data_10_MPORT_addr] <= data_10_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_10_MPORT_1_en & data_10_MPORT_1_mask) begin
      data_10[data_10_MPORT_1_addr] <= data_10_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_11_MPORT_en & data_11_MPORT_mask) begin
      data_11[data_11_MPORT_addr] <= data_11_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_11_MPORT_1_en & data_11_MPORT_1_mask) begin
      data_11[data_11_MPORT_1_addr] <= data_11_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_12_MPORT_en & data_12_MPORT_mask) begin
      data_12[data_12_MPORT_addr] <= data_12_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_12_MPORT_1_en & data_12_MPORT_1_mask) begin
      data_12[data_12_MPORT_1_addr] <= data_12_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_13_MPORT_en & data_13_MPORT_mask) begin
      data_13[data_13_MPORT_addr] <= data_13_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_13_MPORT_1_en & data_13_MPORT_1_mask) begin
      data_13[data_13_MPORT_1_addr] <= data_13_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_14_MPORT_en & data_14_MPORT_mask) begin
      data_14[data_14_MPORT_addr] <= data_14_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_14_MPORT_1_en & data_14_MPORT_1_mask) begin
      data_14[data_14_MPORT_1_addr] <= data_14_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_15_MPORT_en & data_15_MPORT_mask) begin
      data_15[data_15_MPORT_addr] <= data_15_MPORT_data; // @[DataModuleTemplate.scala 211:17]
    end
    if (data_15_MPORT_1_en & data_15_MPORT_1_mask) begin
      data_15[data_15_MPORT_1_addr] <= data_15_MPORT_1_data; // @[DataModuleTemplate.scala 211:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 221:34]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DataModuleTemplate.scala 219:35]
      doing_reset <= 1'h1; // @[DataModuleTemplate.scala 219:49]
    end else if (resetRow == 5'h1f) begin
      doing_reset <= 1'h0;
    end else begin
      doing_reset <= _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DataModuleTemplate.scala 218:24]
      resetRow <= 5'h0;
    end else begin
      resetRow <= resetRow + _GEN_140;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_0[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_1[initvar] = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_2[initvar] = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_3[initvar] = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_4[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_5[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_6[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_7[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_8[initvar] = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_9[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_10[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_11[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_12[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_13[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_14[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    data_15[initvar] = _RAND_15[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  doing_reset = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  resetRow = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  raddr_0 = _RAND_18[8:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    doing_reset = 1'h1;
  end
  if (reset) begin
    resetRow = 5'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

