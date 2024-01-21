module array_17(
  input  [1:0]   RW0_addr,
  input          RW0_en,
  input          RW0_clk,
  input          RW0_wmode,
  input  [333:0] RW0_wdata_0,
  input  [333:0] RW0_wdata_1,
  input  [333:0] RW0_wdata_2,
  input  [333:0] RW0_wdata_3,
  input  [333:0] RW0_wdata_4,
  input  [333:0] RW0_wdata_5,
  input  [333:0] RW0_wdata_6,
  input  [333:0] RW0_wdata_7,
  output [333:0] RW0_rdata_0,
  output [333:0] RW0_rdata_1,
  output [333:0] RW0_rdata_2,
  output [333:0] RW0_rdata_3,
  output [333:0] RW0_rdata_4,
  output [333:0] RW0_rdata_5,
  output [333:0] RW0_rdata_6,
  output [333:0] RW0_rdata_7,
  input          RW0_wmask_0,
  input          RW0_wmask_1,
  input          RW0_wmask_2,
  input          RW0_wmask_3,
  input          RW0_wmask_4,
  input          RW0_wmask_5,
  input          RW0_wmask_6,
  input          RW0_wmask_7
);
  wire [1:0] array_17_ext_RW0_addr;
  wire  array_17_ext_RW0_en;
  wire  array_17_ext_RW0_clk;
  wire  array_17_ext_RW0_wmode;
  wire [2671:0] array_17_ext_RW0_wdata;
  wire [2671:0] array_17_ext_RW0_rdata;
  wire [7:0] array_17_ext_RW0_wmask;
  wire [1335:0] _GEN_4 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4};
  wire [1335:0] _GEN_5 = {RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [3:0] _GEN_10 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4};
  wire [3:0] _GEN_11 = {RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_17_ext array_17_ext (
    .RW0_addr(array_17_ext_RW0_addr),
    .RW0_en(array_17_ext_RW0_en),
    .RW0_clk(array_17_ext_RW0_clk),
    .RW0_wmode(array_17_ext_RW0_wmode),
    .RW0_wdata(array_17_ext_RW0_wdata),
    .RW0_rdata(array_17_ext_RW0_rdata),
    .RW0_wmask(array_17_ext_RW0_wmask)
  );
  assign array_17_ext_RW0_clk = RW0_clk;
  assign array_17_ext_RW0_en = RW0_en;
  assign array_17_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_17_ext_RW0_rdata[333:0];
  assign RW0_rdata_1 = array_17_ext_RW0_rdata[667:334];
  assign RW0_rdata_2 = array_17_ext_RW0_rdata[1001:668];
  assign RW0_rdata_3 = array_17_ext_RW0_rdata[1335:1002];
  assign RW0_rdata_4 = array_17_ext_RW0_rdata[1669:1336];
  assign RW0_rdata_5 = array_17_ext_RW0_rdata[2003:1670];
  assign RW0_rdata_6 = array_17_ext_RW0_rdata[2337:2004];
  assign RW0_rdata_7 = array_17_ext_RW0_rdata[2671:2338];
  assign array_17_ext_RW0_wmode = RW0_wmode;
  assign array_17_ext_RW0_wdata = {_GEN_4,_GEN_5};
  assign array_17_ext_RW0_wmask = {_GEN_10,_GEN_11};
endmodule

