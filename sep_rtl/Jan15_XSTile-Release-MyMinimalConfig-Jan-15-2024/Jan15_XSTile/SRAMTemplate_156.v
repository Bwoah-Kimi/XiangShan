module SRAMTemplate_156(
  input          clock,
  input          io_rreq_valid,
  output [255:0] io_rresp_data_0_data,
  input          io_wreq_valid,
  input  [255:0] io_wreq_bits_data_0_data
);
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [255:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [255:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
  array_22 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0_data = array_RW0_rdata_0; // @[SRAMTemplate.scala 163:22]
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 131:14 113:26]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = io_wreq_bits_data_0_data; // @[SRAMTemplate.scala 129:26]
  assign array_RW0_en = realRen | io_wreq_valid;
endmodule

