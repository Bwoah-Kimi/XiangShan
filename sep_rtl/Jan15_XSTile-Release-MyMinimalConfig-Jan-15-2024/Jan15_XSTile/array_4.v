module array_4(
  input  [7:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input        RW0_wdata_0,
  input        RW0_wdata_1,
  input        RW0_wdata_2,
  input        RW0_wdata_3,
  input        RW0_wdata_4,
  input        RW0_wdata_5,
  input        RW0_wdata_6,
  input        RW0_wdata_7,
  input        RW0_wdata_8,
  input        RW0_wdata_9,
  input        RW0_wdata_10,
  input        RW0_wdata_11,
  input        RW0_wdata_12,
  input        RW0_wdata_13,
  input        RW0_wdata_14,
  input        RW0_wdata_15,
  output       RW0_rdata_0,
  output       RW0_rdata_1,
  output       RW0_rdata_2,
  output       RW0_rdata_3,
  output       RW0_rdata_4,
  output       RW0_rdata_5,
  output       RW0_rdata_6,
  output       RW0_rdata_7,
  output       RW0_rdata_8,
  output       RW0_rdata_9,
  output       RW0_rdata_10,
  output       RW0_rdata_11,
  output       RW0_rdata_12,
  output       RW0_rdata_13,
  output       RW0_rdata_14,
  output       RW0_rdata_15,
  input        RW0_wmask_0,
  input        RW0_wmask_1,
  input        RW0_wmask_2,
  input        RW0_wmask_3,
  input        RW0_wmask_4,
  input        RW0_wmask_5,
  input        RW0_wmask_6,
  input        RW0_wmask_7,
  input        RW0_wmask_8,
  input        RW0_wmask_9,
  input        RW0_wmask_10,
  input        RW0_wmask_11,
  input        RW0_wmask_12,
  input        RW0_wmask_13,
  input        RW0_wmask_14,
  input        RW0_wmask_15
);
  wire [7:0] array_4_ext_RW0_addr;
  wire  array_4_ext_RW0_en;
  wire  array_4_ext_RW0_clk;
  wire  array_4_ext_RW0_wmode;
  wire [15:0] array_4_ext_RW0_wdata;
  wire [15:0] array_4_ext_RW0_rdata;
  wire [15:0] array_4_ext_RW0_wmask;
  wire [7:0] _GEN_12 = {RW0_wdata_15,RW0_wdata_14,RW0_wdata_13,RW0_wdata_12,RW0_wdata_11,RW0_wdata_10,RW0_wdata_9,
    RW0_wdata_8};
  wire [7:0] _GEN_13 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4,RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0}
    ;
  wire [7:0] _GEN_26 = {RW0_wmask_15,RW0_wmask_14,RW0_wmask_13,RW0_wmask_12,RW0_wmask_11,RW0_wmask_10,RW0_wmask_9,
    RW0_wmask_8};
  wire [7:0] _GEN_27 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4,RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0}
    ;
  array_4_ext array_4_ext (
    .RW0_addr(array_4_ext_RW0_addr),
    .RW0_en(array_4_ext_RW0_en),
    .RW0_clk(array_4_ext_RW0_clk),
    .RW0_wmode(array_4_ext_RW0_wmode),
    .RW0_wdata(array_4_ext_RW0_wdata),
    .RW0_rdata(array_4_ext_RW0_rdata),
    .RW0_wmask(array_4_ext_RW0_wmask)
  );
  assign array_4_ext_RW0_clk = RW0_clk;
  assign array_4_ext_RW0_en = RW0_en;
  assign array_4_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_4_ext_RW0_rdata[0];
  assign RW0_rdata_1 = array_4_ext_RW0_rdata[1];
  assign RW0_rdata_2 = array_4_ext_RW0_rdata[2];
  assign RW0_rdata_3 = array_4_ext_RW0_rdata[3];
  assign RW0_rdata_4 = array_4_ext_RW0_rdata[4];
  assign RW0_rdata_5 = array_4_ext_RW0_rdata[5];
  assign RW0_rdata_6 = array_4_ext_RW0_rdata[6];
  assign RW0_rdata_7 = array_4_ext_RW0_rdata[7];
  assign RW0_rdata_8 = array_4_ext_RW0_rdata[8];
  assign RW0_rdata_9 = array_4_ext_RW0_rdata[9];
  assign RW0_rdata_10 = array_4_ext_RW0_rdata[10];
  assign RW0_rdata_11 = array_4_ext_RW0_rdata[11];
  assign RW0_rdata_12 = array_4_ext_RW0_rdata[12];
  assign RW0_rdata_13 = array_4_ext_RW0_rdata[13];
  assign RW0_rdata_14 = array_4_ext_RW0_rdata[14];
  assign RW0_rdata_15 = array_4_ext_RW0_rdata[15];
  assign array_4_ext_RW0_wmode = RW0_wmode;
  assign array_4_ext_RW0_wdata = {_GEN_12,_GEN_13};
  assign array_4_ext_RW0_wmask = {_GEN_26,_GEN_27};
endmodule

