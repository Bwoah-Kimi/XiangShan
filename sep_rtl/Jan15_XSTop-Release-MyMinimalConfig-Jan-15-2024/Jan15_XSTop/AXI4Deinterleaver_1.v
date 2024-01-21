module AXI4Deinterleaver_1(
  input         clock,
  input         reset,
  output        auto_in_awready,
  input         auto_in_awvalid,
  input  [2:0]  auto_in_awid,
  input  [30:0] auto_in_awaddr,
  input  [7:0]  auto_in_awlen,
  input  [2:0]  auto_in_awsize,
  input  [1:0]  auto_in_awburst,
  input         auto_in_awlock,
  input  [3:0]  auto_in_awcache,
  input  [2:0]  auto_in_awprot,
  input  [3:0]  auto_in_awqos,
  input  [3:0]  auto_in_awecho_tl_state_size,
  input  [2:0]  auto_in_awecho_tl_state_source,
  output        auto_in_wready,
  input         auto_in_wvalid,
  input  [63:0] auto_in_wdata,
  input  [7:0]  auto_in_wstrb,
  input         auto_in_wlast,
  input         auto_in_bready,
  output        auto_in_bvalid,
  output [2:0]  auto_in_bid,
  output [3:0]  auto_in_becho_tl_state_size,
  output [2:0]  auto_in_becho_tl_state_source,
  output        auto_in_arready,
  input         auto_in_arvalid,
  input  [2:0]  auto_in_arid,
  input  [30:0] auto_in_araddr,
  input  [7:0]  auto_in_arlen,
  input  [2:0]  auto_in_arsize,
  input  [1:0]  auto_in_arburst,
  input         auto_in_arlock,
  input  [3:0]  auto_in_arcache,
  input  [2:0]  auto_in_arprot,
  input  [3:0]  auto_in_arqos,
  input  [3:0]  auto_in_arecho_tl_state_size,
  input  [2:0]  auto_in_arecho_tl_state_source,
  input         auto_in_rready,
  output        auto_in_rvalid,
  output [2:0]  auto_in_rid,
  output [63:0] auto_in_rdata,
  output [3:0]  auto_in_recho_tl_state_size,
  output [2:0]  auto_in_recho_tl_state_source,
  output        auto_in_rlast,
  input         auto_out_awready,
  output        auto_out_awvalid,
  output [2:0]  auto_out_awid,
  output [30:0] auto_out_awaddr,
  output [7:0]  auto_out_awlen,
  output [2:0]  auto_out_awsize,
  output [1:0]  auto_out_awburst,
  output        auto_out_awlock,
  output [3:0]  auto_out_awcache,
  output [2:0]  auto_out_awprot,
  output [3:0]  auto_out_awqos,
  output [3:0]  auto_out_awecho_tl_state_size,
  output [2:0]  auto_out_awecho_tl_state_source,
  input         auto_out_wready,
  output        auto_out_wvalid,
  output [63:0] auto_out_wdata,
  output [7:0]  auto_out_wstrb,
  output        auto_out_wlast,
  output        auto_out_bready,
  input         auto_out_bvalid,
  input  [2:0]  auto_out_bid,
  input  [3:0]  auto_out_becho_tl_state_size,
  input  [2:0]  auto_out_becho_tl_state_source,
  input         auto_out_arready,
  output        auto_out_arvalid,
  output [2:0]  auto_out_arid,
  output [30:0] auto_out_araddr,
  output [7:0]  auto_out_arlen,
  output [2:0]  auto_out_arsize,
  output [1:0]  auto_out_arburst,
  output        auto_out_arlock,
  output [3:0]  auto_out_arcache,
  output [2:0]  auto_out_arprot,
  output [3:0]  auto_out_arqos,
  output [3:0]  auto_out_arecho_tl_state_size,
  output [2:0]  auto_out_arecho_tl_state_source,
  output        auto_out_rready,
  input         auto_out_rvalid,
  input  [2:0]  auto_out_rid,
  input  [63:0] auto_out_rdata,
  input  [3:0]  auto_out_recho_tl_state_size,
  input  [2:0]  auto_out_recho_tl_state_source,
  input         auto_out_rlast
);
  wire  deq_clock; // @[Decoupled.scala 361:21]
  wire  deq_reset; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] deq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [63:0] deq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [3:0] deq_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [2:0] deq_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] deq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [63:0] deq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [3:0] deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [2:0] deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  Queue_90 deq ( // @[Decoupled.scala 361:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_id(deq_io_enq_bits_id),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_echo_tl_state_size(deq_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(deq_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(deq_io_enq_bits_last),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_id(deq_io_deq_bits_id),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_echo_tl_state_size(deq_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(deq_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  assign auto_in_awready = auto_out_awready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_wready = auto_out_wready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bvalid = auto_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bid = auto_out_bid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_becho_tl_state_size = auto_out_becho_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_becho_tl_state_source = auto_out_becho_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_arready = auto_out_arready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rvalid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_in_rid = deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rdata = deq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_recho_tl_state_size = deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_recho_tl_state_source = deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rlast = deq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awvalid = auto_in_awvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awid = auto_in_awid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awaddr = auto_in_awaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awlen = auto_in_awlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awsize = auto_in_awsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awburst = auto_in_awburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awlock = auto_in_awlock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awcache = auto_in_awcache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awprot = auto_in_awprot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awqos = auto_in_awqos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awecho_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awecho_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wvalid = auto_in_wvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wdata = auto_in_wdata; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wstrb = auto_in_wstrb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wlast = auto_in_wlast; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_bready = auto_in_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arvalid = auto_in_arvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arid = auto_in_arid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_araddr = auto_in_araddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arlen = auto_in_arlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arsize = auto_in_arsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arburst = auto_in_arburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arlock = auto_in_arlock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arcache = auto_in_arcache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arprot = auto_in_arprot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arqos = auto_in_arqos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arecho_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arecho_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_rready = deq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = auto_out_rvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_enq_bits_id = auto_out_rid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_enq_bits_data = auto_out_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_enq_bits_echo_tl_state_size = auto_out_recho_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_enq_bits_echo_tl_state_source = auto_out_recho_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_enq_bits_last = auto_out_rlast; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_deq_ready = auto_in_rready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule

