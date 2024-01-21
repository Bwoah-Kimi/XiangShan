module FoldedSRAMTemplate_1(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [7:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0_valid,
  output [7:0] io_rresp_data_0_tag,
  output [2:0] io_rresp_data_0_ctr,
  output       io_rresp_data_1_valid,
  output [7:0] io_rresp_data_1_tag,
  output [2:0] io_rresp_data_1_ctr,
  input        io_wreq_valid,
  input  [7:0] io_wreq_bits_setIdx,
  input  [7:0] io_wreq_bits_data_0_tag,
  input  [2:0] io_wreq_bits_data_0_ctr,
  input  [7:0] io_wreq_bits_data_1_tag,
  input  [2:0] io_wreq_bits_data_1_ctr,
  input  [1:0] io_wreq_bits_waymask
);
  wire  array_clock; // @[SRAMTemplate.scala 179:21]
  wire  array_reset; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rreq_valid; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_0_valid; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_rresp_data_0_tag; // @[SRAMTemplate.scala 179:21]
  wire [2:0] array_io_rresp_data_0_ctr; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_1_valid; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_rresp_data_1_tag; // @[SRAMTemplate.scala 179:21]
  wire [2:0] array_io_rresp_data_1_ctr; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_valid; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 179:21]
  wire [2:0] array_io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_wreq_bits_data_1_tag; // @[SRAMTemplate.scala 179:21]
  wire [2:0] array_io_wreq_bits_data_1_ctr; // @[SRAMTemplate.scala 179:21]
  wire [1:0] array_io_wreq_bits_waymask; // @[SRAMTemplate.scala 179:21]
  SRAMTemplate_18 array ( // @[SRAMTemplate.scala 179:21]
    .clock(array_clock),
    .reset(array_reset),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(array_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(array_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(array_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(array_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(array_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(array_io_rresp_data_1_ctr),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(array_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(array_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(array_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(array_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(array_io_wreq_bits_waymask)
  );
  assign io_rresp_data_0_valid = array_io_rresp_data_0_valid; // @[SRAMTemplate.scala 197:{26,26}]
  assign io_rresp_data_0_tag = array_io_rresp_data_0_tag; // @[SRAMTemplate.scala 197:{26,26}]
  assign io_rresp_data_0_ctr = array_io_rresp_data_0_ctr; // @[SRAMTemplate.scala 197:{26,26}]
  assign io_rresp_data_1_valid = array_io_rresp_data_1_valid; // @[SRAMTemplate.scala 197:{26,26}]
  assign io_rresp_data_1_tag = array_io_rresp_data_1_tag; // @[SRAMTemplate.scala 197:{26,26}]
  assign io_rresp_data_1_ctr = array_io_rresp_data_1_ctr; // @[SRAMTemplate.scala 197:{26,26}]
  assign array_clock = clock;
  assign array_reset = reset;
  assign array_io_rreq_valid = io_rreq_valid; // @[SRAMTemplate.scala 192:24]
  assign array_io_rreq_bits_setIdx = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 188:36]
  assign array_io_wreq_valid = io_wreq_valid; // @[SRAMTemplate.scala 84:20]
  assign array_io_wreq_bits_setIdx = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 205:36]
  assign array_io_wreq_bits_data_0_tag = io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_0_ctr = io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_1_tag = io_wreq_bits_data_1_tag; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_1_ctr = io_wreq_bits_data_1_ctr; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_waymask = {io_wreq_bits_waymask[1],io_wreq_bits_waymask[0]}; // @[SRAMTemplate.scala 210:122]
endmodule

