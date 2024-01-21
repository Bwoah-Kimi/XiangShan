module AXI4Buffer_7(
  input          clock,
  input          reset,
  output         auto_in_awready,
  input          auto_in_awvalid,
  input          auto_in_awid,
  input  [35:0]  auto_in_awaddr,
  input  [7:0]   auto_in_awlen,
  input  [2:0]   auto_in_awsize,
  input  [1:0]   auto_in_awburst,
  input  [12:0]  auto_in_awecho_extra_id,
  output         auto_in_wready,
  input          auto_in_wvalid,
  input  [255:0] auto_in_wdata,
  input  [31:0]  auto_in_wstrb,
  input          auto_in_wlast,
  input          auto_in_bready,
  output         auto_in_bvalid,
  output         auto_in_bid,
  output [1:0]   auto_in_bresp,
  output [12:0]  auto_in_becho_extra_id,
  output         auto_in_arready,
  input          auto_in_arvalid,
  input          auto_in_arid,
  input  [35:0]  auto_in_araddr,
  input  [7:0]   auto_in_arlen,
  input  [2:0]   auto_in_arsize,
  input  [1:0]   auto_in_arburst,
  input  [12:0]  auto_in_arecho_extra_id,
  input          auto_in_rready,
  output         auto_in_rvalid,
  output         auto_in_rid,
  output [255:0] auto_in_rdata,
  output [1:0]   auto_in_rresp,
  output [12:0]  auto_in_recho_extra_id,
  output         auto_in_rlast,
  input          auto_out_awready,
  output         auto_out_awvalid,
  output         auto_out_awid,
  output [35:0]  auto_out_awaddr,
  output [7:0]   auto_out_awlen,
  output [2:0]   auto_out_awsize,
  output [1:0]   auto_out_awburst,
  output [12:0]  auto_out_awecho_extra_id,
  input          auto_out_wready,
  output         auto_out_wvalid,
  output [255:0] auto_out_wdata,
  output [31:0]  auto_out_wstrb,
  output         auto_out_wlast,
  output         auto_out_bready,
  input          auto_out_bvalid,
  input          auto_out_bid,
  input  [1:0]   auto_out_bresp,
  input  [12:0]  auto_out_becho_extra_id,
  input          auto_out_arready,
  output         auto_out_arvalid,
  output         auto_out_arid,
  output [35:0]  auto_out_araddr,
  output [7:0]   auto_out_arlen,
  output [2:0]   auto_out_arsize,
  output [1:0]   auto_out_arburst,
  output [12:0]  auto_out_arecho_extra_id,
  output         auto_out_rready,
  input          auto_out_rvalid,
  input          auto_out_rid,
  input  [255:0] auto_out_rdata,
  input  [1:0]   auto_out_rresp,
  input  [12:0]  auto_out_recho_extra_id,
  input          auto_out_rlast
);
  wire  bundleOut_0_awdeq_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_awdeq_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_awdeq_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_awdeq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] bundleOut_0_awdeq_io_enq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] bundleOut_0_awdeq_io_enq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_awdeq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_awdeq_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_awdeq_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_awdeq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] bundleOut_0_awdeq_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] bundleOut_0_awdeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_wdeq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_wdeq_io_enq_bits_strb; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_wdeq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_wdeq_io_deq_bits_strb; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_wdeq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_bdeq_io_enq_bits_resp; // @[Decoupled.scala 361:21]
  wire [12:0] bundleIn_0_bdeq_io_enq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bdeq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_bdeq_io_deq_bits_resp; // @[Decoupled.scala 361:21]
  wire [12:0] bundleIn_0_bdeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_ardeq_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_ardeq_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_ardeq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] bundleOut_0_ardeq_io_enq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] bundleOut_0_ardeq_io_enq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_ardeq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_ardeq_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_ardeq_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_ardeq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] bundleOut_0_ardeq_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] bundleOut_0_ardeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_rdeq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_rdeq_io_enq_bits_resp; // @[Decoupled.scala 361:21]
  wire [12:0] bundleIn_0_rdeq_io_enq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_rdeq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_rdeq_io_deq_bits_resp; // @[Decoupled.scala 361:21]
  wire [12:0] bundleIn_0_rdeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_rdeq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  Queue_105 bundleOut_0_awdeq ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_awdeq_clock),
    .reset(bundleOut_0_awdeq_reset),
    .io_enq_ready(bundleOut_0_awdeq_io_enq_ready),
    .io_enq_valid(bundleOut_0_awdeq_io_enq_valid),
    .io_enq_bits_id(bundleOut_0_awdeq_io_enq_bits_id),
    .io_enq_bits_addr(bundleOut_0_awdeq_io_enq_bits_addr),
    .io_enq_bits_len(bundleOut_0_awdeq_io_enq_bits_len),
    .io_enq_bits_size(bundleOut_0_awdeq_io_enq_bits_size),
    .io_enq_bits_burst(bundleOut_0_awdeq_io_enq_bits_burst),
    .io_enq_bits_echo_extra_id(bundleOut_0_awdeq_io_enq_bits_echo_extra_id),
    .io_deq_ready(bundleOut_0_awdeq_io_deq_ready),
    .io_deq_valid(bundleOut_0_awdeq_io_deq_valid),
    .io_deq_bits_id(bundleOut_0_awdeq_io_deq_bits_id),
    .io_deq_bits_addr(bundleOut_0_awdeq_io_deq_bits_addr),
    .io_deq_bits_len(bundleOut_0_awdeq_io_deq_bits_len),
    .io_deq_bits_size(bundleOut_0_awdeq_io_deq_bits_size),
    .io_deq_bits_burst(bundleOut_0_awdeq_io_deq_bits_burst),
    .io_deq_bits_echo_extra_id(bundleOut_0_awdeq_io_deq_bits_echo_extra_id)
  );
  Queue_13 bundleOut_0_wdeq ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_wdeq_clock),
    .reset(bundleOut_0_wdeq_reset),
    .io_enq_ready(bundleOut_0_wdeq_io_enq_ready),
    .io_enq_valid(bundleOut_0_wdeq_io_enq_valid),
    .io_enq_bits_data(bundleOut_0_wdeq_io_enq_bits_data),
    .io_enq_bits_strb(bundleOut_0_wdeq_io_enq_bits_strb),
    .io_enq_bits_last(bundleOut_0_wdeq_io_enq_bits_last),
    .io_deq_ready(bundleOut_0_wdeq_io_deq_ready),
    .io_deq_valid(bundleOut_0_wdeq_io_deq_valid),
    .io_deq_bits_data(bundleOut_0_wdeq_io_deq_bits_data),
    .io_deq_bits_strb(bundleOut_0_wdeq_io_deq_bits_strb),
    .io_deq_bits_last(bundleOut_0_wdeq_io_deq_bits_last)
  );
  Queue_107 bundleIn_0_bdeq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_bdeq_clock),
    .reset(bundleIn_0_bdeq_reset),
    .io_enq_ready(bundleIn_0_bdeq_io_enq_ready),
    .io_enq_valid(bundleIn_0_bdeq_io_enq_valid),
    .io_enq_bits_id(bundleIn_0_bdeq_io_enq_bits_id),
    .io_enq_bits_resp(bundleIn_0_bdeq_io_enq_bits_resp),
    .io_enq_bits_echo_extra_id(bundleIn_0_bdeq_io_enq_bits_echo_extra_id),
    .io_deq_ready(bundleIn_0_bdeq_io_deq_ready),
    .io_deq_valid(bundleIn_0_bdeq_io_deq_valid),
    .io_deq_bits_id(bundleIn_0_bdeq_io_deq_bits_id),
    .io_deq_bits_resp(bundleIn_0_bdeq_io_deq_bits_resp),
    .io_deq_bits_echo_extra_id(bundleIn_0_bdeq_io_deq_bits_echo_extra_id)
  );
  Queue_105 bundleOut_0_ardeq ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_ardeq_clock),
    .reset(bundleOut_0_ardeq_reset),
    .io_enq_ready(bundleOut_0_ardeq_io_enq_ready),
    .io_enq_valid(bundleOut_0_ardeq_io_enq_valid),
    .io_enq_bits_id(bundleOut_0_ardeq_io_enq_bits_id),
    .io_enq_bits_addr(bundleOut_0_ardeq_io_enq_bits_addr),
    .io_enq_bits_len(bundleOut_0_ardeq_io_enq_bits_len),
    .io_enq_bits_size(bundleOut_0_ardeq_io_enq_bits_size),
    .io_enq_bits_burst(bundleOut_0_ardeq_io_enq_bits_burst),
    .io_enq_bits_echo_extra_id(bundleOut_0_ardeq_io_enq_bits_echo_extra_id),
    .io_deq_ready(bundleOut_0_ardeq_io_deq_ready),
    .io_deq_valid(bundleOut_0_ardeq_io_deq_valid),
    .io_deq_bits_id(bundleOut_0_ardeq_io_deq_bits_id),
    .io_deq_bits_addr(bundleOut_0_ardeq_io_deq_bits_addr),
    .io_deq_bits_len(bundleOut_0_ardeq_io_deq_bits_len),
    .io_deq_bits_size(bundleOut_0_ardeq_io_deq_bits_size),
    .io_deq_bits_burst(bundleOut_0_ardeq_io_deq_bits_burst),
    .io_deq_bits_echo_extra_id(bundleOut_0_ardeq_io_deq_bits_echo_extra_id)
  );
  Queue_109 bundleIn_0_rdeq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_rdeq_clock),
    .reset(bundleIn_0_rdeq_reset),
    .io_enq_ready(bundleIn_0_rdeq_io_enq_ready),
    .io_enq_valid(bundleIn_0_rdeq_io_enq_valid),
    .io_enq_bits_id(bundleIn_0_rdeq_io_enq_bits_id),
    .io_enq_bits_data(bundleIn_0_rdeq_io_enq_bits_data),
    .io_enq_bits_resp(bundleIn_0_rdeq_io_enq_bits_resp),
    .io_enq_bits_echo_extra_id(bundleIn_0_rdeq_io_enq_bits_echo_extra_id),
    .io_enq_bits_last(bundleIn_0_rdeq_io_enq_bits_last),
    .io_deq_ready(bundleIn_0_rdeq_io_deq_ready),
    .io_deq_valid(bundleIn_0_rdeq_io_deq_valid),
    .io_deq_bits_id(bundleIn_0_rdeq_io_deq_bits_id),
    .io_deq_bits_data(bundleIn_0_rdeq_io_deq_bits_data),
    .io_deq_bits_resp(bundleIn_0_rdeq_io_deq_bits_resp),
    .io_deq_bits_echo_extra_id(bundleIn_0_rdeq_io_deq_bits_echo_extra_id),
    .io_deq_bits_last(bundleIn_0_rdeq_io_deq_bits_last)
  );
  assign auto_in_awready = bundleOut_0_awdeq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_wready = bundleOut_0_wdeq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_bvalid = bundleIn_0_bdeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_in_bid = bundleIn_0_bdeq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_bresp = bundleIn_0_bdeq_io_deq_bits_resp; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_becho_extra_id = bundleIn_0_bdeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_arready = bundleOut_0_ardeq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_rvalid = bundleIn_0_rdeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_in_rid = bundleIn_0_rdeq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rdata = bundleIn_0_rdeq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rresp = bundleIn_0_rdeq_io_deq_bits_resp; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_recho_extra_id = bundleIn_0_rdeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rlast = bundleIn_0_rdeq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awvalid = bundleOut_0_awdeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_awid = bundleOut_0_awdeq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awaddr = bundleOut_0_awdeq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awlen = bundleOut_0_awdeq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awsize = bundleOut_0_awdeq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awburst = bundleOut_0_awdeq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_extra_id = bundleOut_0_awdeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wvalid = bundleOut_0_wdeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_wdata = bundleOut_0_wdeq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wstrb = bundleOut_0_wdeq_io_deq_bits_strb; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wlast = bundleOut_0_wdeq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_bready = bundleIn_0_bdeq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_arvalid = bundleOut_0_ardeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_arid = bundleOut_0_ardeq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_araddr = bundleOut_0_ardeq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arlen = bundleOut_0_ardeq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arsize = bundleOut_0_ardeq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arburst = bundleOut_0_ardeq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_extra_id = bundleOut_0_ardeq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_rready = bundleIn_0_rdeq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign bundleOut_0_awdeq_clock = clock;
  assign bundleOut_0_awdeq_reset = reset;
  assign bundleOut_0_awdeq_io_enq_valid = auto_in_awvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_enq_bits_id = auto_in_awid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_enq_bits_addr = auto_in_awaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_enq_bits_len = auto_in_awlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_enq_bits_size = auto_in_awsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_enq_bits_burst = auto_in_awburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_enq_bits_echo_extra_id = auto_in_awecho_extra_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_awdeq_io_deq_ready = auto_out_awready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_wdeq_clock = clock;
  assign bundleOut_0_wdeq_reset = reset;
  assign bundleOut_0_wdeq_io_enq_valid = auto_in_wvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_wdeq_io_enq_bits_data = auto_in_wdata; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_wdeq_io_enq_bits_strb = auto_in_wstrb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_wdeq_io_enq_bits_last = auto_in_wlast; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_wdeq_io_deq_ready = auto_out_wready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bdeq_clock = clock;
  assign bundleIn_0_bdeq_reset = reset;
  assign bundleIn_0_bdeq_io_enq_valid = auto_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bdeq_io_enq_bits_id = auto_out_bid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bdeq_io_enq_bits_resp = auto_out_bresp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bdeq_io_enq_bits_echo_extra_id = auto_out_becho_extra_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bdeq_io_deq_ready = auto_in_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_clock = clock;
  assign bundleOut_0_ardeq_reset = reset;
  assign bundleOut_0_ardeq_io_enq_valid = auto_in_arvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_enq_bits_id = auto_in_arid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_enq_bits_addr = auto_in_araddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_enq_bits_len = auto_in_arlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_enq_bits_size = auto_in_arsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_enq_bits_burst = auto_in_arburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_enq_bits_echo_extra_id = auto_in_arecho_extra_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ardeq_io_deq_ready = auto_out_arready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_clock = clock;
  assign bundleIn_0_rdeq_reset = reset;
  assign bundleIn_0_rdeq_io_enq_valid = auto_out_rvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_io_enq_bits_id = auto_out_rid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_io_enq_bits_data = auto_out_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_io_enq_bits_resp = auto_out_rresp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_io_enq_bits_echo_extra_id = auto_out_recho_extra_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_io_enq_bits_last = auto_out_rlast; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_rdeq_io_deq_ready = auto_in_rready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule

