module SRAMTemplate_155(
  input          clock,
  input          io_rreq_valid,
  input  [9:0]   io_rreq_bits_setIdx,
  output [511:0] io_rresp_data_0_data,
  input          io_wreq_valid,
  input  [9:0]   io_wreq_bits_setIdx,
  input  [511:0] io_wreq_bits_data_0_data
);
  wire [9:0] array_RW0_addr; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [511:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [511:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
  array_21 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0_data = array_RW0_rdata_0; // @[SRAMTemplate.scala 163:22]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = io_wreq_bits_data_0_data; // @[SRAMTemplate.scala 129:26]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 125:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule

