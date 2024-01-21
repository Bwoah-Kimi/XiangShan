module array_15(
  input  [5:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input  [5:0] RW0_wdata_0,
  input  [5:0] RW0_wdata_1,
  input  [5:0] RW0_wdata_2,
  input  [5:0] RW0_wdata_3,
  input  [5:0] RW0_wdata_4,
  input  [5:0] RW0_wdata_5,
  input  [5:0] RW0_wdata_6,
  input  [5:0] RW0_wdata_7,
  output [5:0] RW0_rdata_0,
  output [5:0] RW0_rdata_1,
  output [5:0] RW0_rdata_2,
  output [5:0] RW0_rdata_3,
  output [5:0] RW0_rdata_4,
  output [5:0] RW0_rdata_5,
  output [5:0] RW0_rdata_6,
  output [5:0] RW0_rdata_7,
  input        RW0_wmask_0,
  input        RW0_wmask_1,
  input        RW0_wmask_2,
  input        RW0_wmask_3,
  input        RW0_wmask_4,
  input        RW0_wmask_5,
  input        RW0_wmask_6,
  input        RW0_wmask_7
);
  wire [5:0] array_15_ext_RW0_addr;
  wire  array_15_ext_RW0_en;
  wire  array_15_ext_RW0_clk;
  wire  array_15_ext_RW0_wmode;
  wire [47:0] array_15_ext_RW0_wdata;
  wire [47:0] array_15_ext_RW0_rdata;
  wire [7:0] array_15_ext_RW0_wmask;
  wire [23:0] _GEN_4 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4};
  wire [23:0] _GEN_5 = {RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [3:0] _GEN_10 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4};
  wire [3:0] _GEN_11 = {RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_15_ext array_15_ext (
    .RW0_addr(array_15_ext_RW0_addr),
    .RW0_en(array_15_ext_RW0_en),
    .RW0_clk(array_15_ext_RW0_clk),
    .RW0_wmode(array_15_ext_RW0_wmode),
    .RW0_wdata(array_15_ext_RW0_wdata),
    .RW0_rdata(array_15_ext_RW0_rdata),
    .RW0_wmask(array_15_ext_RW0_wmask)
  );
  assign array_15_ext_RW0_clk = RW0_clk;
  assign array_15_ext_RW0_en = RW0_en;
  assign array_15_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_15_ext_RW0_rdata[5:0];
  assign RW0_rdata_1 = array_15_ext_RW0_rdata[11:6];
  assign RW0_rdata_2 = array_15_ext_RW0_rdata[17:12];
  assign RW0_rdata_3 = array_15_ext_RW0_rdata[23:18];
  assign RW0_rdata_4 = array_15_ext_RW0_rdata[29:24];
  assign RW0_rdata_5 = array_15_ext_RW0_rdata[35:30];
  assign RW0_rdata_6 = array_15_ext_RW0_rdata[41:36];
  assign RW0_rdata_7 = array_15_ext_RW0_rdata[47:42];
  assign array_15_ext_RW0_wmode = RW0_wmode;
  assign array_15_ext_RW0_wdata = {_GEN_4,_GEN_5};
  assign array_15_ext_RW0_wmask = {_GEN_10,_GEN_11};
endmodule

