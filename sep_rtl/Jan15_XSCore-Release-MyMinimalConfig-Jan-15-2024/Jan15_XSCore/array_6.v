module array_6(
  input  [10:0] R0_addr,
  input         R0_en,
  input         R0_clk,
  output [1:0]  R0_data_0,
  output [1:0]  R0_data_1,
  input  [10:0] W0_addr,
  input         W0_en,
  input         W0_clk,
  input  [1:0]  W0_data_0,
  input  [1:0]  W0_data_1,
  input         W0_mask_0,
  input         W0_mask_1
);
  wire [10:0] array_6_ext_R0_addr;
  wire  array_6_ext_R0_en;
  wire  array_6_ext_R0_clk;
  wire [3:0] array_6_ext_R0_data;
  wire [10:0] array_6_ext_W0_addr;
  wire  array_6_ext_W0_en;
  wire  array_6_ext_W0_clk;
  wire [3:0] array_6_ext_W0_data;
  wire [1:0] array_6_ext_W0_mask;
  array_6_ext array_6_ext (
    .R0_addr(array_6_ext_R0_addr),
    .R0_en(array_6_ext_R0_en),
    .R0_clk(array_6_ext_R0_clk),
    .R0_data(array_6_ext_R0_data),
    .W0_addr(array_6_ext_W0_addr),
    .W0_en(array_6_ext_W0_en),
    .W0_clk(array_6_ext_W0_clk),
    .W0_data(array_6_ext_W0_data),
    .W0_mask(array_6_ext_W0_mask)
  );
  assign array_6_ext_R0_clk = R0_clk;
  assign array_6_ext_R0_en = R0_en;
  assign array_6_ext_R0_addr = R0_addr;
  assign R0_data_0 = array_6_ext_R0_data[1:0];
  assign R0_data_1 = array_6_ext_R0_data[3:2];
  assign array_6_ext_W0_clk = W0_clk;
  assign array_6_ext_W0_en = W0_en;
  assign array_6_ext_W0_addr = W0_addr;
  assign array_6_ext_W0_data = {W0_data_1,W0_data_0};
  assign array_6_ext_W0_mask = {W0_mask_1,W0_mask_0};
endmodule

