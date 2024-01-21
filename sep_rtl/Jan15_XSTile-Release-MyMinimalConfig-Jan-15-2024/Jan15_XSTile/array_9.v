module array_9(
  input  [6:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [49:0] RW0_wdata_0,
  input  [49:0] RW0_wdata_1,
  output [49:0] RW0_rdata_0,
  output [49:0] RW0_rdata_1,
  input         RW0_wmask_0,
  input         RW0_wmask_1
);
  wire [6:0] array_9_ext_RW0_addr;
  wire  array_9_ext_RW0_en;
  wire  array_9_ext_RW0_clk;
  wire  array_9_ext_RW0_wmode;
  wire [99:0] array_9_ext_RW0_wdata;
  wire [99:0] array_9_ext_RW0_rdata;
  wire [1:0] array_9_ext_RW0_wmask;
  array_9_ext array_9_ext (
    .RW0_addr(array_9_ext_RW0_addr),
    .RW0_en(array_9_ext_RW0_en),
    .RW0_clk(array_9_ext_RW0_clk),
    .RW0_wmode(array_9_ext_RW0_wmode),
    .RW0_wdata(array_9_ext_RW0_wdata),
    .RW0_rdata(array_9_ext_RW0_rdata),
    .RW0_wmask(array_9_ext_RW0_wmask)
  );
  assign array_9_ext_RW0_clk = RW0_clk;
  assign array_9_ext_RW0_en = RW0_en;
  assign array_9_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_9_ext_RW0_rdata[49:0];
  assign RW0_rdata_1 = array_9_ext_RW0_rdata[99:50];
  assign array_9_ext_RW0_wmode = RW0_wmode;
  assign array_9_ext_RW0_wdata = {RW0_wdata_1,RW0_wdata_0};
  assign array_9_ext_RW0_wmask = {RW0_wmask_1,RW0_wmask_0};
endmodule

