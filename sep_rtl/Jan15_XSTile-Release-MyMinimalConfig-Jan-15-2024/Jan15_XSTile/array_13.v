module array_13(
  input  [5:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input  [7:0] RW0_wdata_0,
  input  [7:0] RW0_wdata_1,
  input  [7:0] RW0_wdata_2,
  input  [7:0] RW0_wdata_3,
  input  [7:0] RW0_wdata_4,
  input  [7:0] RW0_wdata_5,
  input  [7:0] RW0_wdata_6,
  input  [7:0] RW0_wdata_7,
  output [7:0] RW0_rdata_0,
  output [7:0] RW0_rdata_1,
  output [7:0] RW0_rdata_2,
  output [7:0] RW0_rdata_3,
  output [7:0] RW0_rdata_4,
  output [7:0] RW0_rdata_5,
  output [7:0] RW0_rdata_6,
  output [7:0] RW0_rdata_7,
  input        RW0_wmask_0,
  input        RW0_wmask_1,
  input        RW0_wmask_2,
  input        RW0_wmask_3,
  input        RW0_wmask_4,
  input        RW0_wmask_5,
  input        RW0_wmask_6,
  input        RW0_wmask_7
);
  wire [5:0] array_13_ext_RW0_addr;
  wire  array_13_ext_RW0_en;
  wire  array_13_ext_RW0_clk;
  wire  array_13_ext_RW0_wmode;
  wire [63:0] array_13_ext_RW0_wdata;
  wire [63:0] array_13_ext_RW0_rdata;
  wire [7:0] array_13_ext_RW0_wmask;
  wire [31:0] _GEN_4 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4};
  wire [31:0] _GEN_5 = {RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [3:0] _GEN_10 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4};
  wire [3:0] _GEN_11 = {RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_13_ext array_13_ext (
    .RW0_addr(array_13_ext_RW0_addr),
    .RW0_en(array_13_ext_RW0_en),
    .RW0_clk(array_13_ext_RW0_clk),
    .RW0_wmode(array_13_ext_RW0_wmode),
    .RW0_wdata(array_13_ext_RW0_wdata),
    .RW0_rdata(array_13_ext_RW0_rdata),
    .RW0_wmask(array_13_ext_RW0_wmask)
  );
  assign array_13_ext_RW0_clk = RW0_clk;
  assign array_13_ext_RW0_en = RW0_en;
  assign array_13_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_13_ext_RW0_rdata[7:0];
  assign RW0_rdata_1 = array_13_ext_RW0_rdata[15:8];
  assign RW0_rdata_2 = array_13_ext_RW0_rdata[23:16];
  assign RW0_rdata_3 = array_13_ext_RW0_rdata[31:24];
  assign RW0_rdata_4 = array_13_ext_RW0_rdata[39:32];
  assign RW0_rdata_5 = array_13_ext_RW0_rdata[47:40];
  assign RW0_rdata_6 = array_13_ext_RW0_rdata[55:48];
  assign RW0_rdata_7 = array_13_ext_RW0_rdata[63:56];
  assign array_13_ext_RW0_wmode = RW0_wmode;
  assign array_13_ext_RW0_wdata = {_GEN_4,_GEN_5};
  assign array_13_ext_RW0_wmask = {_GEN_10,_GEN_11};
endmodule

