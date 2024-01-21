module ICachePartWayArray(
  input          clock,
  input          reset,
  output         io_read_req_0_ready,
  input          io_read_req_0_valid,
  input  [4:0]   io_read_req_0_bits_ridx,
  output         io_read_req_1_ready,
  input          io_read_req_1_valid,
  input  [4:0]   io_read_req_1_bits_ridx,
  output [511:0] io_read_resp_rdata_0_0,
  output [511:0] io_read_resp_rdata_0_1,
  output [511:0] io_read_resp_rdata_1_0,
  output [511:0] io_read_resp_rdata_1_1,
  input          io_write_valid,
  input  [511:0] io_write_bits_wdata,
  input  [4:0]   io_write_bits_widx,
  input          io_write_bits_wbankidx,
  input          io_write_bits_wmask_0,
  input          io_write_bits_wmask_1
);
  wire  srams_0_clock; // @[ICache.scala 690:26]
  wire  srams_0_reset; // @[ICache.scala 690:26]
  wire  srams_0_io_rreq_ready; // @[ICache.scala 690:26]
  wire  srams_0_io_rreq_valid; // @[ICache.scala 690:26]
  wire [4:0] srams_0_io_rreq_bits_setIdx; // @[ICache.scala 690:26]
  wire [511:0] srams_0_io_rresp_data_0; // @[ICache.scala 690:26]
  wire [511:0] srams_0_io_rresp_data_1; // @[ICache.scala 690:26]
  wire  srams_0_io_wreq_valid; // @[ICache.scala 690:26]
  wire [4:0] srams_0_io_wreq_bits_setIdx; // @[ICache.scala 690:26]
  wire [511:0] srams_0_io_wreq_bits_data_0; // @[ICache.scala 690:26]
  wire [511:0] srams_0_io_wreq_bits_data_1; // @[ICache.scala 690:26]
  wire [1:0] srams_0_io_wreq_bits_waymask; // @[ICache.scala 690:26]
  wire  srams_1_clock; // @[ICache.scala 690:26]
  wire  srams_1_reset; // @[ICache.scala 690:26]
  wire  srams_1_io_rreq_ready; // @[ICache.scala 690:26]
  wire  srams_1_io_rreq_valid; // @[ICache.scala 690:26]
  wire [4:0] srams_1_io_rreq_bits_setIdx; // @[ICache.scala 690:26]
  wire [511:0] srams_1_io_rresp_data_0; // @[ICache.scala 690:26]
  wire [511:0] srams_1_io_rresp_data_1; // @[ICache.scala 690:26]
  wire  srams_1_io_wreq_valid; // @[ICache.scala 690:26]
  wire [4:0] srams_1_io_wreq_bits_setIdx; // @[ICache.scala 690:26]
  wire [511:0] srams_1_io_wreq_bits_data_0; // @[ICache.scala 690:26]
  wire [511:0] srams_1_io_wreq_bits_data_1; // @[ICache.scala 690:26]
  wire [1:0] srams_1_io_wreq_bits_waymask; // @[ICache.scala 690:26]
  wire  _io_read_req_0_ready_T = ~io_write_valid; // @[ICache.scala 687:30]
  wire [1023:0] _T_2 = {srams_0_io_rresp_data_1,srams_0_io_rresp_data_0}; // @[ICache.scala 711:74]
  wire [1023:0] _T_5 = {srams_1_io_rresp_data_1,srams_1_io_rresp_data_0}; // @[ICache.scala 711:74]
  SRAMTemplate_2 srams_0 ( // @[ICache.scala 690:26]
    .clock(srams_0_clock),
    .reset(srams_0_reset),
    .io_rreq_ready(srams_0_io_rreq_ready),
    .io_rreq_valid(srams_0_io_rreq_valid),
    .io_rreq_bits_setIdx(srams_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(srams_0_io_rresp_data_0),
    .io_rresp_data_1(srams_0_io_rresp_data_1),
    .io_wreq_valid(srams_0_io_wreq_valid),
    .io_wreq_bits_setIdx(srams_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(srams_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(srams_0_io_wreq_bits_data_1),
    .io_wreq_bits_waymask(srams_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_2 srams_1 ( // @[ICache.scala 690:26]
    .clock(srams_1_clock),
    .reset(srams_1_reset),
    .io_rreq_ready(srams_1_io_rreq_ready),
    .io_rreq_valid(srams_1_io_rreq_valid),
    .io_rreq_bits_setIdx(srams_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(srams_1_io_rresp_data_0),
    .io_rresp_data_1(srams_1_io_rresp_data_1),
    .io_wreq_valid(srams_1_io_wreq_valid),
    .io_wreq_bits_setIdx(srams_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(srams_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(srams_1_io_wreq_bits_data_1),
    .io_wreq_bits_waymask(srams_1_io_wreq_bits_waymask)
  );
  assign io_read_req_0_ready = _io_read_req_0_ready_T & (srams_0_io_rreq_ready & srams_1_io_rreq_ready); // @[ICache.scala 709:46]
  assign io_read_req_1_ready = _io_read_req_0_ready_T & (srams_0_io_rreq_ready & srams_1_io_rreq_ready); // @[ICache.scala 709:46]
  assign io_read_resp_rdata_0_0 = _T_2[511:0]; // @[ICache.scala 711:74]
  assign io_read_resp_rdata_0_1 = _T_2[1023:512]; // @[ICache.scala 711:74]
  assign io_read_resp_rdata_1_0 = _T_5[511:0]; // @[ICache.scala 711:74]
  assign io_read_resp_rdata_1_1 = _T_5[1023:512]; // @[ICache.scala 711:74]
  assign srams_0_clock = clock;
  assign srams_0_reset = reset;
  assign srams_0_io_rreq_valid = io_read_req_0_valid; // @[ICache.scala 699:29]
  assign srams_0_io_rreq_bits_setIdx = io_read_req_0_bits_ridx; // @[SRAMTemplate.scala 42:17]
  assign srams_0_io_wreq_valid = io_write_valid & ~io_write_bits_wbankidx; // @[ICache.scala 702:61]
  assign srams_0_io_wreq_bits_setIdx = io_write_bits_widx; // @[SRAMTemplate.scala 42:17]
  assign srams_0_io_wreq_bits_data_0 = io_write_bits_wdata; // @[SRAMTemplate.scala 59:{18,18}]
  assign srams_0_io_wreq_bits_data_1 = io_write_bits_wdata; // @[SRAMTemplate.scala 59:{18,18}]
  assign srams_0_io_wreq_bits_waymask = {io_write_bits_wmask_1,io_write_bits_wmask_0}; // @[ICache.scala 704:121]
  assign srams_1_clock = clock;
  assign srams_1_reset = reset;
  assign srams_1_io_rreq_valid = io_read_req_1_valid; // @[ICache.scala 699:29]
  assign srams_1_io_rreq_bits_setIdx = io_read_req_1_bits_ridx; // @[SRAMTemplate.scala 42:17]
  assign srams_1_io_wreq_valid = io_write_valid & io_write_bits_wbankidx; // @[ICache.scala 703:52]
  assign srams_1_io_wreq_bits_setIdx = io_write_bits_widx; // @[SRAMTemplate.scala 42:17]
  assign srams_1_io_wreq_bits_data_0 = io_write_bits_wdata; // @[SRAMTemplate.scala 59:{18,18}]
  assign srams_1_io_wreq_bits_data_1 = io_write_bits_wdata; // @[SRAMTemplate.scala 59:{18,18}]
  assign srams_1_io_wreq_bits_waymask = {io_write_bits_wmask_1,io_write_bits_wmask_0}; // @[ICache.scala 704:121]
endmodule

