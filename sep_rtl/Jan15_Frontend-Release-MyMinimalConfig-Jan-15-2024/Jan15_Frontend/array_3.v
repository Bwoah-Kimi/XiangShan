module array_3(
  input  [8:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [78:0] RW0_wdata_0,
  input  [78:0] RW0_wdata_1,
  input  [78:0] RW0_wdata_2,
  input  [78:0] RW0_wdata_3,
  output [78:0] RW0_rdata_0,
  output [78:0] RW0_rdata_1,
  output [78:0] RW0_rdata_2,
  output [78:0] RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [8:0] array_3_ext_RW0_addr;
  wire  array_3_ext_RW0_en;
  wire  array_3_ext_RW0_clk;
  wire  array_3_ext_RW0_wmode;
  wire [315:0] array_3_ext_RW0_wdata;
  wire [315:0] array_3_ext_RW0_rdata;
  wire [3:0] array_3_ext_RW0_wmask;
  wire [157:0] _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  wire [157:0] _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  wire [1:0] _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  wire [1:0] _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  array_3_ext array_3_ext (
    .RW0_addr(array_3_ext_RW0_addr),
    .RW0_en(array_3_ext_RW0_en),
    .RW0_clk(array_3_ext_RW0_clk),
    .RW0_wmode(array_3_ext_RW0_wmode),
    .RW0_wdata(array_3_ext_RW0_wdata),
    .RW0_rdata(array_3_ext_RW0_rdata),
    .RW0_wmask(array_3_ext_RW0_wmask)
  );
  assign array_3_ext_RW0_clk = RW0_clk;
  assign array_3_ext_RW0_en = RW0_en;
  assign array_3_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_3_ext_RW0_rdata[78:0];
  assign RW0_rdata_1 = array_3_ext_RW0_rdata[157:79];
  assign RW0_rdata_2 = array_3_ext_RW0_rdata[236:158];
  assign RW0_rdata_3 = array_3_ext_RW0_rdata[315:237];
  assign array_3_ext_RW0_wmode = RW0_wmode;
  assign array_3_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign array_3_ext_RW0_wmask = {_GEN_2,_GEN_3};
endmodule

