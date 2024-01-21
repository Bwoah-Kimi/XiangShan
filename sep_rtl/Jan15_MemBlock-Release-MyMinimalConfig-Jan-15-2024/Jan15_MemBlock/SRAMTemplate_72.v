module SRAMTemplate_72(
  input         clock,
  input         io_rreq_valid,
  input  [5:0]  io_rreq_bits_setIdx,
  output [63:0] io_rresp_data_0,
  input         io_wreq_valid,
  input  [5:0]  io_wreq_bits_setIdx,
  input  [63:0] io_wreq_bits_data_0
);
  wire [5:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [63:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [63:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 123:38]
  array_12 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0 = array_RW0_rdata_0; // @[SRAMTemplate.scala 154:{45,45}]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule

