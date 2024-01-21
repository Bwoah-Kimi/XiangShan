module array_21(
  input  [9:0]   RW0_addr,
  input          RW0_en,
  input          RW0_clk,
  input          RW0_wmode,
  input  [511:0] RW0_wdata_0,
  output [511:0] RW0_rdata_0
);
  wire [9:0] array_21_ext_RW0_addr;
  wire  array_21_ext_RW0_en;
  wire  array_21_ext_RW0_clk;
  wire  array_21_ext_RW0_wmode;
  wire [511:0] array_21_ext_RW0_wdata;
  wire [511:0] array_21_ext_RW0_rdata;
  array_21_ext array_21_ext (
    .RW0_addr(array_21_ext_RW0_addr),
    .RW0_en(array_21_ext_RW0_en),
    .RW0_clk(array_21_ext_RW0_clk),
    .RW0_wmode(array_21_ext_RW0_wmode),
    .RW0_wdata(array_21_ext_RW0_wdata),
    .RW0_rdata(array_21_ext_RW0_rdata)
  );
  assign array_21_ext_RW0_clk = RW0_clk;
  assign array_21_ext_RW0_en = RW0_en;
  assign array_21_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_21_ext_RW0_rdata;
  assign array_21_ext_RW0_wmode = RW0_wmode;
  assign array_21_ext_RW0_wdata = RW0_wdata_0;
endmodule

