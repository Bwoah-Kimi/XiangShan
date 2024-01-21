module array_11(
  input  [2:0]   R0_addr,
  input          R0_en,
  input          R0_clk,
  output [255:0] R0_data_0,
  input  [2:0]   W0_addr,
  input          W0_en,
  input          W0_clk,
  input  [255:0] W0_data_0
);
  wire [2:0] array_11_ext_R0_addr;
  wire  array_11_ext_R0_en;
  wire  array_11_ext_R0_clk;
  wire [255:0] array_11_ext_R0_data;
  wire [2:0] array_11_ext_W0_addr;
  wire  array_11_ext_W0_en;
  wire  array_11_ext_W0_clk;
  wire [255:0] array_11_ext_W0_data;
  array_11_ext array_11_ext (
    .R0_addr(array_11_ext_R0_addr),
    .R0_en(array_11_ext_R0_en),
    .R0_clk(array_11_ext_R0_clk),
    .R0_data(array_11_ext_R0_data),
    .W0_addr(array_11_ext_W0_addr),
    .W0_en(array_11_ext_W0_en),
    .W0_clk(array_11_ext_W0_clk),
    .W0_data(array_11_ext_W0_data)
  );
  assign array_11_ext_R0_clk = R0_clk;
  assign array_11_ext_R0_en = R0_en;
  assign array_11_ext_R0_addr = R0_addr;
  assign R0_data_0 = array_11_ext_R0_data;
  assign array_11_ext_W0_clk = W0_clk;
  assign array_11_ext_W0_en = W0_en;
  assign array_11_ext_W0_addr = W0_addr;
  assign array_11_ext_W0_data = W0_data_0;
endmodule

