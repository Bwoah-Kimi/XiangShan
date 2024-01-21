module array_7(
  input  [7:0] R0_addr,
  input        R0_en,
  input        R0_clk,
  output [5:0] R0_data_0,
  output [5:0] R0_data_1,
  output [5:0] R0_data_2,
  output [5:0] R0_data_3,
  input  [7:0] W0_addr,
  input        W0_en,
  input        W0_clk,
  input  [5:0] W0_data_0,
  input  [5:0] W0_data_1,
  input  [5:0] W0_data_2,
  input  [5:0] W0_data_3,
  input        W0_mask_0,
  input        W0_mask_1,
  input        W0_mask_2,
  input        W0_mask_3
);
  wire [7:0] array_7_ext_R0_addr;
  wire  array_7_ext_R0_en;
  wire  array_7_ext_R0_clk;
  wire [23:0] array_7_ext_R0_data;
  wire [7:0] array_7_ext_W0_addr;
  wire  array_7_ext_W0_en;
  wire  array_7_ext_W0_clk;
  wire [23:0] array_7_ext_W0_data;
  wire [3:0] array_7_ext_W0_mask;
  wire [11:0] _GEN_0 = {W0_data_3,W0_data_2};
  wire [11:0] _GEN_1 = {W0_data_1,W0_data_0};
  wire [1:0] _GEN_2 = {W0_mask_3,W0_mask_2};
  wire [1:0] _GEN_3 = {W0_mask_1,W0_mask_0};
  array_7_ext array_7_ext (
    .R0_addr(array_7_ext_R0_addr),
    .R0_en(array_7_ext_R0_en),
    .R0_clk(array_7_ext_R0_clk),
    .R0_data(array_7_ext_R0_data),
    .W0_addr(array_7_ext_W0_addr),
    .W0_en(array_7_ext_W0_en),
    .W0_clk(array_7_ext_W0_clk),
    .W0_data(array_7_ext_W0_data),
    .W0_mask(array_7_ext_W0_mask)
  );
  assign array_7_ext_R0_clk = R0_clk;
  assign array_7_ext_R0_en = R0_en;
  assign array_7_ext_R0_addr = R0_addr;
  assign R0_data_0 = array_7_ext_R0_data[5:0];
  assign R0_data_1 = array_7_ext_R0_data[11:6];
  assign R0_data_2 = array_7_ext_R0_data[17:12];
  assign R0_data_3 = array_7_ext_R0_data[23:18];
  assign array_7_ext_W0_clk = W0_clk;
  assign array_7_ext_W0_en = W0_en;
  assign array_7_ext_W0_addr = W0_addr;
  assign array_7_ext_W0_data = {_GEN_0,_GEN_1};
  assign array_7_ext_W0_mask = {_GEN_2,_GEN_3};
endmodule

