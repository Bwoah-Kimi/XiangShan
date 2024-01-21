module FtqNRSRAM_1(
  input          clock,
  input          reset,
  input  [2:0]   io_raddr_0,
  input          io_ren_0,
  output [255:0] io_rdata_0_meta,
  input  [2:0]   io_waddr,
  input          io_wen,
  input  [255:0] io_wdata_meta
);
  wire  sram_clock; // @[NewFtq.scala 71:22]
  wire  sram_reset; // @[NewFtq.scala 71:22]
  wire  sram_io_rreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_io_rreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [255:0] sram_io_rresp_data_0_meta; // @[NewFtq.scala 71:22]
  wire  sram_io_wreq_valid; // @[NewFtq.scala 71:22]
  wire [2:0] sram_io_wreq_bits_setIdx; // @[NewFtq.scala 71:22]
  wire [255:0] sram_io_wreq_bits_data_0_meta; // @[NewFtq.scala 71:22]
  SRAMTemplate_71 sram ( // @[NewFtq.scala 71:22]
    .clock(sram_clock),
    .reset(sram_reset),
    .io_rreq_valid(sram_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_io_rreq_bits_setIdx),
    .io_rresp_data_0_meta(sram_io_rresp_data_0_meta),
    .io_wreq_valid(sram_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_meta(sram_io_wreq_bits_data_0_meta)
  );
  assign io_rdata_0_meta = sram_io_rresp_data_0_meta; // @[NewFtq.scala 74:17]
  assign sram_clock = clock;
  assign sram_reset = reset;
  assign sram_io_rreq_valid = io_ren_0; // @[NewFtq.scala 72:25]
  assign sram_io_rreq_bits_setIdx = io_raddr_0; // @[NewFtq.scala 73:31]
  assign sram_io_wreq_valid = io_wen; // @[NewFtq.scala 75:25]
  assign sram_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 76:31]
  assign sram_io_wreq_bits_data_0_meta = io_wdata_meta; // @[NewFtq.scala 77:{39,39}]
endmodule

