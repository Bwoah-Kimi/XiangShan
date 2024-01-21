module array_18(
  input  [6:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [21:0] RW0_wdata_0,
  input  [21:0] RW0_wdata_1,
  input  [21:0] RW0_wdata_2,
  input  [21:0] RW0_wdata_3,
  input  [21:0] RW0_wdata_4,
  input  [21:0] RW0_wdata_5,
  input  [21:0] RW0_wdata_6,
  input  [21:0] RW0_wdata_7,
  output [21:0] RW0_rdata_0,
  output [21:0] RW0_rdata_1,
  output [21:0] RW0_rdata_2,
  output [21:0] RW0_rdata_3,
  output [21:0] RW0_rdata_4,
  output [21:0] RW0_rdata_5,
  output [21:0] RW0_rdata_6,
  output [21:0] RW0_rdata_7,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3,
  input         RW0_wmask_4,
  input         RW0_wmask_5,
  input         RW0_wmask_6,
  input         RW0_wmask_7
);
  wire [6:0] array_18_ext_RW0_addr;
  wire  array_18_ext_RW0_en;
  wire  array_18_ext_RW0_clk;
  wire  array_18_ext_RW0_wmode;
  wire [175:0] array_18_ext_RW0_wdata;
  wire [175:0] array_18_ext_RW0_rdata;
  wire [7:0] array_18_ext_RW0_wmask;
  wire [87:0] _GEN_4 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4};
  wire [87:0] _GEN_5 = {RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [3:0] _GEN_10 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4};
  wire [3:0] _GEN_11 = {RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_18_ext array_18_ext (
    .RW0_addr(array_18_ext_RW0_addr),
    .RW0_en(array_18_ext_RW0_en),
    .RW0_clk(array_18_ext_RW0_clk),
    .RW0_wmode(array_18_ext_RW0_wmode),
    .RW0_wdata(array_18_ext_RW0_wdata),
    .RW0_rdata(array_18_ext_RW0_rdata),
    .RW0_wmask(array_18_ext_RW0_wmask)
  );
  assign array_18_ext_RW0_clk = RW0_clk;
  assign array_18_ext_RW0_en = RW0_en;
  assign array_18_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_18_ext_RW0_rdata[21:0];
  assign RW0_rdata_1 = array_18_ext_RW0_rdata[43:22];
  assign RW0_rdata_2 = array_18_ext_RW0_rdata[65:44];
  assign RW0_rdata_3 = array_18_ext_RW0_rdata[87:66];
  assign RW0_rdata_4 = array_18_ext_RW0_rdata[109:88];
  assign RW0_rdata_5 = array_18_ext_RW0_rdata[131:110];
  assign RW0_rdata_6 = array_18_ext_RW0_rdata[153:132];
  assign RW0_rdata_7 = array_18_ext_RW0_rdata[175:154];
  assign array_18_ext_RW0_wmode = RW0_wmode;
  assign array_18_ext_RW0_wdata = {_GEN_4,_GEN_5};
  assign array_18_ext_RW0_wmask = {_GEN_10,_GEN_11};
endmodule

