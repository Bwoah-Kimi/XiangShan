module AXI4UserYanker(
  input          clock,
  input          reset,
  output         auto_in_awready,
  input          auto_in_awvalid,
  input  [5:0]   auto_in_awid,
  input  [35:0]  auto_in_awaddr,
  input  [7:0]   auto_in_awlen,
  input  [2:0]   auto_in_awsize,
  input  [1:0]   auto_in_awburst,
  input          auto_in_awlock,
  input  [3:0]   auto_in_awcache,
  input  [2:0]   auto_in_awprot,
  input  [3:0]   auto_in_awqos,
  input  [3:0]   auto_in_awecho_tl_state_size,
  input  [5:0]   auto_in_awecho_tl_state_source,
  output         auto_in_wready,
  input          auto_in_wvalid,
  input  [255:0] auto_in_wdata,
  input  [31:0]  auto_in_wstrb,
  input          auto_in_wlast,
  input          auto_in_bready,
  output         auto_in_bvalid,
  output [5:0]   auto_in_bid,
  output [1:0]   auto_in_bresp,
  output [3:0]   auto_in_becho_tl_state_size,
  output [5:0]   auto_in_becho_tl_state_source,
  output         auto_in_arready,
  input          auto_in_arvalid,
  input  [5:0]   auto_in_arid,
  input  [35:0]  auto_in_araddr,
  input  [7:0]   auto_in_arlen,
  input  [2:0]   auto_in_arsize,
  input  [1:0]   auto_in_arburst,
  input          auto_in_arlock,
  input  [3:0]   auto_in_arcache,
  input  [2:0]   auto_in_arprot,
  input  [3:0]   auto_in_arqos,
  input  [3:0]   auto_in_arecho_tl_state_size,
  input  [5:0]   auto_in_arecho_tl_state_source,
  input          auto_in_rready,
  output         auto_in_rvalid,
  output [5:0]   auto_in_rid,
  output [255:0] auto_in_rdata,
  output [1:0]   auto_in_rresp,
  output [3:0]   auto_in_recho_tl_state_size,
  output [5:0]   auto_in_recho_tl_state_source,
  output         auto_in_rlast,
  input          auto_out_awready,
  output         auto_out_awvalid,
  output [5:0]   auto_out_awid,
  output [35:0]  auto_out_awaddr,
  output [7:0]   auto_out_awlen,
  output [2:0]   auto_out_awsize,
  output [1:0]   auto_out_awburst,
  output         auto_out_awlock,
  output [3:0]   auto_out_awcache,
  output [2:0]   auto_out_awprot,
  output [3:0]   auto_out_awqos,
  input          auto_out_wready,
  output         auto_out_wvalid,
  output [255:0] auto_out_wdata,
  output [31:0]  auto_out_wstrb,
  output         auto_out_wlast,
  output         auto_out_bready,
  input          auto_out_bvalid,
  input  [5:0]   auto_out_bid,
  input  [1:0]   auto_out_bresp,
  input          auto_out_arready,
  output         auto_out_arvalid,
  output [5:0]   auto_out_arid,
  output [35:0]  auto_out_araddr,
  output [7:0]   auto_out_arlen,
  output [2:0]   auto_out_arsize,
  output [1:0]   auto_out_arburst,
  output         auto_out_arlock,
  output [3:0]   auto_out_arcache,
  output [2:0]   auto_out_arprot,
  output [3:0]   auto_out_arqos,
  output         auto_out_rready,
  input          auto_out_rvalid,
  input  [5:0]   auto_out_rid,
  input  [255:0] auto_out_rdata,
  input  [1:0]   auto_out_rresp,
  input          auto_out_rlast
);
  wire  QueueCompatibility_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_1_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_2_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_3_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_4_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_5_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_6_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_7_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_8_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_9_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_10_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_10_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_11_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_11_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_12_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_12_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_13_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_13_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_14_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_14_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_15_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_15_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_16_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_16_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_17_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_17_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_18_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_18_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_19_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_19_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_20_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_20_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_20_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_20_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_20_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_20_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_20_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_20_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_20_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_20_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_21_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_21_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_21_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_21_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_21_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_21_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_21_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_21_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_21_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_21_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_22_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_22_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_22_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_22_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_22_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_22_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_22_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_22_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_22_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_22_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_23_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_23_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_23_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_23_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_23_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_23_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_23_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_23_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_23_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_23_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_24_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_24_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_24_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_24_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_24_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_24_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_24_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_24_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_24_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_24_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_25_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_25_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_25_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_25_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_25_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_25_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_25_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_25_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_25_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_25_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_26_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_26_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_26_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_26_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_26_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_26_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_26_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_26_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_26_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_26_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_27_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_27_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_27_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_27_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_27_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_27_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_27_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_27_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_27_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_27_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_28_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_28_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_28_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_28_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_28_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_28_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_28_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_28_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_28_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_28_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_29_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_29_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_29_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_29_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_29_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_29_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_29_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_29_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_29_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_29_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_30_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_30_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_30_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_30_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_30_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_30_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_30_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_30_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_30_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_30_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_31_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_31_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_31_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_31_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_31_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_31_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_31_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_31_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_31_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_31_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_32_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_32_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_32_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_32_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_32_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_32_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_32_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_32_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_32_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_32_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_33_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_33_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_33_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_33_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_33_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_33_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_33_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_33_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_33_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_33_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_34_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_34_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_34_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_34_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_34_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_34_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_34_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_34_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_34_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_34_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_35_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_35_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_35_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_35_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_35_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_35_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_35_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_35_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_35_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_35_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_36_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_36_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_36_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_36_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_36_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_36_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_36_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_36_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_36_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_36_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_37_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_37_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_37_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_37_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_37_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_37_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_37_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_37_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_37_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_37_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_38_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_38_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_38_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_38_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_38_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_38_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_38_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_38_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_38_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_38_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_39_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_39_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_39_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_39_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_39_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_39_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_39_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_39_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_39_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_39_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_40_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_40_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_40_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_40_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_40_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_40_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_40_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_40_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_40_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_40_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_41_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_41_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_41_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_41_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_41_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_41_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_41_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_41_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_41_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_41_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_42_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_42_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_42_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_42_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_42_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_42_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_42_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_42_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_42_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_42_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_43_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_43_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_43_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_43_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_43_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_43_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_43_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_43_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_43_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_43_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_44_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_44_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_44_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_44_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_44_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_44_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_44_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_44_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_44_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_44_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_45_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_45_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_45_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_45_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_45_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_45_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_45_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_45_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_45_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_45_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_46_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_46_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_46_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_46_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_46_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_46_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_46_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_46_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_46_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_46_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_47_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_47_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_47_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_47_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_47_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_47_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_47_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_47_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_47_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_47_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_48_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_48_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_48_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_48_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_48_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_48_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_48_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_48_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_48_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_48_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_49_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_49_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_49_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_49_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_49_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_49_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_49_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_49_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_49_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_49_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_50_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_50_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_50_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_50_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_50_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_50_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_50_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_50_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_50_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_50_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_51_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_51_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_51_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_51_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_51_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_51_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_51_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_51_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_51_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_51_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_52_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_52_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_52_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_52_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_52_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_52_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_52_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_52_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_52_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_52_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_53_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_53_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_53_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_53_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_53_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_53_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_53_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_53_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_53_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_53_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_54_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_54_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_54_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_54_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_54_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_54_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_54_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_54_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_54_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_54_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_55_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_55_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_55_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_55_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_55_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_55_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_55_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_55_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_55_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_55_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_56_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_56_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_56_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_56_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_56_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_56_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_56_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_56_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_56_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_56_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_57_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_57_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_57_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_57_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_57_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_57_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_57_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_57_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_57_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_57_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_58_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_58_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_58_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_58_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_58_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_58_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_58_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_58_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_58_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_58_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_59_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_59_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_59_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_59_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_59_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_59_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_59_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_59_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_59_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_59_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_60_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_60_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_60_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_60_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_60_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_60_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_60_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_60_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_60_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_60_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_61_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_61_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_61_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_61_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_61_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_61_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_61_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_61_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_61_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_61_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_62_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_62_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_62_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_62_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_62_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_62_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_62_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_62_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_62_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_62_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_63_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_63_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_63_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_63_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_63_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_63_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_63_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_63_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_63_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_63_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_64_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_64_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_64_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_64_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_64_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_64_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_64_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_64_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_64_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_64_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_65_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_65_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_65_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_65_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_65_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_65_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_65_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_65_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_65_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_65_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_66_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_66_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_66_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_66_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_66_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_66_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_66_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_66_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_66_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_66_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_67_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_67_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_67_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_67_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_67_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_67_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_67_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_67_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_67_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_67_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_68_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_68_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_68_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_68_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_68_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_68_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_68_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_68_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_68_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_68_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_69_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_69_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_69_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_69_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_69_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_69_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_69_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_69_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_69_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_69_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_70_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_70_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_70_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_70_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_70_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_70_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_70_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_70_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_70_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_70_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_71_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_71_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_71_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_71_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_71_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_71_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_71_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_71_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_71_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_71_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_72_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_72_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_72_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_72_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_72_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_72_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_72_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_72_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_72_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_72_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_73_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_73_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_73_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_73_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_73_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_73_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_73_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_73_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_73_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [5:0] QueueCompatibility_73_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  _arready_WIRE_0 = QueueCompatibility_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _arready_WIRE_1 = QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_1 = 6'h1 == auto_in_arid ? _arready_WIRE_1 : _arready_WIRE_0; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_2 = QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_2 = 6'h2 == auto_in_arid ? _arready_WIRE_2 : _GEN_1; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_3 = QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_3 = 6'h3 == auto_in_arid ? _arready_WIRE_3 : _GEN_2; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_4 = QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_4 = 6'h4 == auto_in_arid ? _arready_WIRE_4 : _GEN_3; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_5 = QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_5 = 6'h5 == auto_in_arid ? _arready_WIRE_5 : _GEN_4; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_6 = QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_6 = 6'h6 == auto_in_arid ? _arready_WIRE_6 : _GEN_5; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_7 = QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_7 = 6'h7 == auto_in_arid ? _arready_WIRE_7 : _GEN_6; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_8 = QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_8 = 6'h8 == auto_in_arid ? _arready_WIRE_8 : _GEN_7; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_9 = QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_9 = 6'h9 == auto_in_arid ? _arready_WIRE_9 : _GEN_8; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_10 = QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_10 = 6'ha == auto_in_arid ? _arready_WIRE_10 : _GEN_9; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_11 = QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_11 = 6'hb == auto_in_arid ? _arready_WIRE_11 : _GEN_10; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_12 = QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_12 = 6'hc == auto_in_arid ? _arready_WIRE_12 : _GEN_11; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_13 = QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_13 = 6'hd == auto_in_arid ? _arready_WIRE_13 : _GEN_12; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_14 = QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_14 = 6'he == auto_in_arid ? _arready_WIRE_14 : _GEN_13; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_15 = QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_15 = 6'hf == auto_in_arid ? _arready_WIRE_15 : _GEN_14; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_16 = QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_16 = 6'h10 == auto_in_arid ? _arready_WIRE_16 : _GEN_15; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_17 = QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_17 = 6'h11 == auto_in_arid ? _arready_WIRE_17 : _GEN_16; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_18 = QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_18 = 6'h12 == auto_in_arid ? _arready_WIRE_18 : _GEN_17; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_19 = QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_19 = 6'h13 == auto_in_arid ? _arready_WIRE_19 : _GEN_18; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_20 = QueueCompatibility_20_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_20 = 6'h14 == auto_in_arid ? _arready_WIRE_20 : _GEN_19; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_21 = QueueCompatibility_21_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_21 = 6'h15 == auto_in_arid ? _arready_WIRE_21 : _GEN_20; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_22 = QueueCompatibility_22_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_22 = 6'h16 == auto_in_arid ? _arready_WIRE_22 : _GEN_21; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_23 = QueueCompatibility_23_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_23 = 6'h17 == auto_in_arid ? _arready_WIRE_23 : _GEN_22; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_24 = QueueCompatibility_24_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_24 = 6'h18 == auto_in_arid ? _arready_WIRE_24 : _GEN_23; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_25 = QueueCompatibility_25_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_25 = 6'h19 == auto_in_arid ? _arready_WIRE_25 : _GEN_24; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_26 = QueueCompatibility_26_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_26 = 6'h1a == auto_in_arid ? _arready_WIRE_26 : _GEN_25; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_27 = QueueCompatibility_27_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_27 = 6'h1b == auto_in_arid ? _arready_WIRE_27 : _GEN_26; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_28 = QueueCompatibility_28_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_28 = 6'h1c == auto_in_arid ? _arready_WIRE_28 : _GEN_27; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_29 = QueueCompatibility_29_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_29 = 6'h1d == auto_in_arid ? _arready_WIRE_29 : _GEN_28; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_30 = QueueCompatibility_30_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_30 = 6'h1e == auto_in_arid ? _arready_WIRE_30 : _GEN_29; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_31 = QueueCompatibility_31_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_31 = 6'h1f == auto_in_arid ? _arready_WIRE_31 : _GEN_30; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_32 = QueueCompatibility_32_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_32 = 6'h20 == auto_in_arid ? _arready_WIRE_32 : _GEN_31; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_33 = QueueCompatibility_33_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_33 = 6'h21 == auto_in_arid ? _arready_WIRE_33 : _GEN_32; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_34 = QueueCompatibility_34_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_34 = 6'h22 == auto_in_arid ? _arready_WIRE_34 : _GEN_33; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_35 = QueueCompatibility_35_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_35 = 6'h23 == auto_in_arid ? _arready_WIRE_35 : _GEN_34; // @[UserYanker.scala 56:{36,36}]
  wire  _arready_WIRE_36 = QueueCompatibility_36_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_36 = 6'h24 == auto_in_arid ? _arready_WIRE_36 : _GEN_35; // @[UserYanker.scala 56:{36,36}]
  wire [5:0] _rWIRE_0_tl_state_source = QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _rWIRE_1_tl_state_source = QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_75 = 6'h1 == auto_out_rid ? _rWIRE_1_tl_state_source : _rWIRE_0_tl_state_source; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_2_tl_state_source = QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_76 = 6'h2 == auto_out_rid ? _rWIRE_2_tl_state_source : _GEN_75; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_3_tl_state_source = QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_77 = 6'h3 == auto_out_rid ? _rWIRE_3_tl_state_source : _GEN_76; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_4_tl_state_source = QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_78 = 6'h4 == auto_out_rid ? _rWIRE_4_tl_state_source : _GEN_77; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_5_tl_state_source = QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_79 = 6'h5 == auto_out_rid ? _rWIRE_5_tl_state_source : _GEN_78; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_6_tl_state_source = QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_80 = 6'h6 == auto_out_rid ? _rWIRE_6_tl_state_source : _GEN_79; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_7_tl_state_source = QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_81 = 6'h7 == auto_out_rid ? _rWIRE_7_tl_state_source : _GEN_80; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_8_tl_state_source = QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_82 = 6'h8 == auto_out_rid ? _rWIRE_8_tl_state_source : _GEN_81; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_9_tl_state_source = QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_83 = 6'h9 == auto_out_rid ? _rWIRE_9_tl_state_source : _GEN_82; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_10_tl_state_source = QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_84 = 6'ha == auto_out_rid ? _rWIRE_10_tl_state_source : _GEN_83; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_11_tl_state_source = QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_85 = 6'hb == auto_out_rid ? _rWIRE_11_tl_state_source : _GEN_84; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_12_tl_state_source = QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_86 = 6'hc == auto_out_rid ? _rWIRE_12_tl_state_source : _GEN_85; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_13_tl_state_source = QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_87 = 6'hd == auto_out_rid ? _rWIRE_13_tl_state_source : _GEN_86; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_14_tl_state_source = QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_88 = 6'he == auto_out_rid ? _rWIRE_14_tl_state_source : _GEN_87; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_15_tl_state_source = QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_89 = 6'hf == auto_out_rid ? _rWIRE_15_tl_state_source : _GEN_88; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_16_tl_state_source = QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_90 = 6'h10 == auto_out_rid ? _rWIRE_16_tl_state_source : _GEN_89; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_17_tl_state_source = QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_91 = 6'h11 == auto_out_rid ? _rWIRE_17_tl_state_source : _GEN_90; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_18_tl_state_source = QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_92 = 6'h12 == auto_out_rid ? _rWIRE_18_tl_state_source : _GEN_91; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_19_tl_state_source = QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_93 = 6'h13 == auto_out_rid ? _rWIRE_19_tl_state_source : _GEN_92; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_20_tl_state_source = QueueCompatibility_20_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_94 = 6'h14 == auto_out_rid ? _rWIRE_20_tl_state_source : _GEN_93; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_21_tl_state_source = QueueCompatibility_21_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_95 = 6'h15 == auto_out_rid ? _rWIRE_21_tl_state_source : _GEN_94; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_22_tl_state_source = QueueCompatibility_22_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_96 = 6'h16 == auto_out_rid ? _rWIRE_22_tl_state_source : _GEN_95; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_23_tl_state_source = QueueCompatibility_23_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_97 = 6'h17 == auto_out_rid ? _rWIRE_23_tl_state_source : _GEN_96; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_24_tl_state_source = QueueCompatibility_24_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_98 = 6'h18 == auto_out_rid ? _rWIRE_24_tl_state_source : _GEN_97; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_25_tl_state_source = QueueCompatibility_25_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_99 = 6'h19 == auto_out_rid ? _rWIRE_25_tl_state_source : _GEN_98; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_26_tl_state_source = QueueCompatibility_26_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_100 = 6'h1a == auto_out_rid ? _rWIRE_26_tl_state_source : _GEN_99; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_27_tl_state_source = QueueCompatibility_27_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_101 = 6'h1b == auto_out_rid ? _rWIRE_27_tl_state_source : _GEN_100; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_28_tl_state_source = QueueCompatibility_28_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_102 = 6'h1c == auto_out_rid ? _rWIRE_28_tl_state_source : _GEN_101; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_29_tl_state_source = QueueCompatibility_29_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_103 = 6'h1d == auto_out_rid ? _rWIRE_29_tl_state_source : _GEN_102; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_30_tl_state_source = QueueCompatibility_30_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_104 = 6'h1e == auto_out_rid ? _rWIRE_30_tl_state_source : _GEN_103; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_31_tl_state_source = QueueCompatibility_31_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_105 = 6'h1f == auto_out_rid ? _rWIRE_31_tl_state_source : _GEN_104; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_32_tl_state_source = QueueCompatibility_32_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_106 = 6'h20 == auto_out_rid ? _rWIRE_32_tl_state_source : _GEN_105; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_33_tl_state_source = QueueCompatibility_33_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_107 = 6'h21 == auto_out_rid ? _rWIRE_33_tl_state_source : _GEN_106; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_34_tl_state_source = QueueCompatibility_34_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_108 = 6'h22 == auto_out_rid ? _rWIRE_34_tl_state_source : _GEN_107; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_35_tl_state_source = QueueCompatibility_35_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [5:0] _GEN_109 = 6'h23 == auto_out_rid ? _rWIRE_35_tl_state_source : _GEN_108; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _rWIRE_36_tl_state_source = QueueCompatibility_36_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _rWIRE_0_tl_state_size = QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _rWIRE_1_tl_state_size = QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_112 = 6'h1 == auto_out_rid ? _rWIRE_1_tl_state_size : _rWIRE_0_tl_state_size; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_2_tl_state_size = QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_113 = 6'h2 == auto_out_rid ? _rWIRE_2_tl_state_size : _GEN_112; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_3_tl_state_size = QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_114 = 6'h3 == auto_out_rid ? _rWIRE_3_tl_state_size : _GEN_113; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_4_tl_state_size = QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_115 = 6'h4 == auto_out_rid ? _rWIRE_4_tl_state_size : _GEN_114; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_5_tl_state_size = QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_116 = 6'h5 == auto_out_rid ? _rWIRE_5_tl_state_size : _GEN_115; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_6_tl_state_size = QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_117 = 6'h6 == auto_out_rid ? _rWIRE_6_tl_state_size : _GEN_116; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_7_tl_state_size = QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_118 = 6'h7 == auto_out_rid ? _rWIRE_7_tl_state_size : _GEN_117; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_8_tl_state_size = QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_119 = 6'h8 == auto_out_rid ? _rWIRE_8_tl_state_size : _GEN_118; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_9_tl_state_size = QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_120 = 6'h9 == auto_out_rid ? _rWIRE_9_tl_state_size : _GEN_119; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_10_tl_state_size = QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_121 = 6'ha == auto_out_rid ? _rWIRE_10_tl_state_size : _GEN_120; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_11_tl_state_size = QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_122 = 6'hb == auto_out_rid ? _rWIRE_11_tl_state_size : _GEN_121; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_12_tl_state_size = QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_123 = 6'hc == auto_out_rid ? _rWIRE_12_tl_state_size : _GEN_122; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_13_tl_state_size = QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_124 = 6'hd == auto_out_rid ? _rWIRE_13_tl_state_size : _GEN_123; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_14_tl_state_size = QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_125 = 6'he == auto_out_rid ? _rWIRE_14_tl_state_size : _GEN_124; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_15_tl_state_size = QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_126 = 6'hf == auto_out_rid ? _rWIRE_15_tl_state_size : _GEN_125; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_16_tl_state_size = QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_127 = 6'h10 == auto_out_rid ? _rWIRE_16_tl_state_size : _GEN_126; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_17_tl_state_size = QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_128 = 6'h11 == auto_out_rid ? _rWIRE_17_tl_state_size : _GEN_127; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_18_tl_state_size = QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_129 = 6'h12 == auto_out_rid ? _rWIRE_18_tl_state_size : _GEN_128; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_19_tl_state_size = QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_130 = 6'h13 == auto_out_rid ? _rWIRE_19_tl_state_size : _GEN_129; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_20_tl_state_size = QueueCompatibility_20_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_131 = 6'h14 == auto_out_rid ? _rWIRE_20_tl_state_size : _GEN_130; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_21_tl_state_size = QueueCompatibility_21_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_132 = 6'h15 == auto_out_rid ? _rWIRE_21_tl_state_size : _GEN_131; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_22_tl_state_size = QueueCompatibility_22_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_133 = 6'h16 == auto_out_rid ? _rWIRE_22_tl_state_size : _GEN_132; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_23_tl_state_size = QueueCompatibility_23_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_134 = 6'h17 == auto_out_rid ? _rWIRE_23_tl_state_size : _GEN_133; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_24_tl_state_size = QueueCompatibility_24_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_135 = 6'h18 == auto_out_rid ? _rWIRE_24_tl_state_size : _GEN_134; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_25_tl_state_size = QueueCompatibility_25_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_136 = 6'h19 == auto_out_rid ? _rWIRE_25_tl_state_size : _GEN_135; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_26_tl_state_size = QueueCompatibility_26_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_137 = 6'h1a == auto_out_rid ? _rWIRE_26_tl_state_size : _GEN_136; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_27_tl_state_size = QueueCompatibility_27_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_138 = 6'h1b == auto_out_rid ? _rWIRE_27_tl_state_size : _GEN_137; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_28_tl_state_size = QueueCompatibility_28_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_139 = 6'h1c == auto_out_rid ? _rWIRE_28_tl_state_size : _GEN_138; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_29_tl_state_size = QueueCompatibility_29_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_140 = 6'h1d == auto_out_rid ? _rWIRE_29_tl_state_size : _GEN_139; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_30_tl_state_size = QueueCompatibility_30_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_141 = 6'h1e == auto_out_rid ? _rWIRE_30_tl_state_size : _GEN_140; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_31_tl_state_size = QueueCompatibility_31_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_142 = 6'h1f == auto_out_rid ? _rWIRE_31_tl_state_size : _GEN_141; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_32_tl_state_size = QueueCompatibility_32_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_143 = 6'h20 == auto_out_rid ? _rWIRE_32_tl_state_size : _GEN_142; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_33_tl_state_size = QueueCompatibility_33_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_144 = 6'h21 == auto_out_rid ? _rWIRE_33_tl_state_size : _GEN_143; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_34_tl_state_size = QueueCompatibility_34_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_145 = 6'h22 == auto_out_rid ? _rWIRE_34_tl_state_size : _GEN_144; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_35_tl_state_size = QueueCompatibility_35_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_146 = 6'h23 == auto_out_rid ? _rWIRE_35_tl_state_size : _GEN_145; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _rWIRE_36_tl_state_size = QueueCompatibility_36_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [63:0] _arsel_T = 64'h1 << auto_in_arid; // @[OneHot.scala 64:12]
  wire  arsel_0 = _arsel_T[0]; // @[UserYanker.scala 67:55]
  wire  arsel_1 = _arsel_T[1]; // @[UserYanker.scala 67:55]
  wire  arsel_2 = _arsel_T[2]; // @[UserYanker.scala 67:55]
  wire  arsel_3 = _arsel_T[3]; // @[UserYanker.scala 67:55]
  wire  arsel_4 = _arsel_T[4]; // @[UserYanker.scala 67:55]
  wire  arsel_5 = _arsel_T[5]; // @[UserYanker.scala 67:55]
  wire  arsel_6 = _arsel_T[6]; // @[UserYanker.scala 67:55]
  wire  arsel_7 = _arsel_T[7]; // @[UserYanker.scala 67:55]
  wire  arsel_8 = _arsel_T[8]; // @[UserYanker.scala 67:55]
  wire  arsel_9 = _arsel_T[9]; // @[UserYanker.scala 67:55]
  wire  arsel_10 = _arsel_T[10]; // @[UserYanker.scala 67:55]
  wire  arsel_11 = _arsel_T[11]; // @[UserYanker.scala 67:55]
  wire  arsel_12 = _arsel_T[12]; // @[UserYanker.scala 67:55]
  wire  arsel_13 = _arsel_T[13]; // @[UserYanker.scala 67:55]
  wire  arsel_14 = _arsel_T[14]; // @[UserYanker.scala 67:55]
  wire  arsel_15 = _arsel_T[15]; // @[UserYanker.scala 67:55]
  wire  arsel_16 = _arsel_T[16]; // @[UserYanker.scala 67:55]
  wire  arsel_17 = _arsel_T[17]; // @[UserYanker.scala 67:55]
  wire  arsel_18 = _arsel_T[18]; // @[UserYanker.scala 67:55]
  wire  arsel_19 = _arsel_T[19]; // @[UserYanker.scala 67:55]
  wire  arsel_20 = _arsel_T[20]; // @[UserYanker.scala 67:55]
  wire  arsel_21 = _arsel_T[21]; // @[UserYanker.scala 67:55]
  wire  arsel_22 = _arsel_T[22]; // @[UserYanker.scala 67:55]
  wire  arsel_23 = _arsel_T[23]; // @[UserYanker.scala 67:55]
  wire  arsel_24 = _arsel_T[24]; // @[UserYanker.scala 67:55]
  wire  arsel_25 = _arsel_T[25]; // @[UserYanker.scala 67:55]
  wire  arsel_26 = _arsel_T[26]; // @[UserYanker.scala 67:55]
  wire  arsel_27 = _arsel_T[27]; // @[UserYanker.scala 67:55]
  wire  arsel_28 = _arsel_T[28]; // @[UserYanker.scala 67:55]
  wire  arsel_29 = _arsel_T[29]; // @[UserYanker.scala 67:55]
  wire  arsel_30 = _arsel_T[30]; // @[UserYanker.scala 67:55]
  wire  arsel_31 = _arsel_T[31]; // @[UserYanker.scala 67:55]
  wire  arsel_32 = _arsel_T[32]; // @[UserYanker.scala 67:55]
  wire  arsel_33 = _arsel_T[33]; // @[UserYanker.scala 67:55]
  wire  arsel_34 = _arsel_T[34]; // @[UserYanker.scala 67:55]
  wire  arsel_35 = _arsel_T[35]; // @[UserYanker.scala 67:55]
  wire  arsel_36 = _arsel_T[36]; // @[UserYanker.scala 67:55]
  wire [63:0] _rsel_T = 64'h1 << auto_out_rid; // @[OneHot.scala 64:12]
  wire  rsel_0 = _rsel_T[0]; // @[UserYanker.scala 68:55]
  wire  rsel_1 = _rsel_T[1]; // @[UserYanker.scala 68:55]
  wire  rsel_2 = _rsel_T[2]; // @[UserYanker.scala 68:55]
  wire  rsel_3 = _rsel_T[3]; // @[UserYanker.scala 68:55]
  wire  rsel_4 = _rsel_T[4]; // @[UserYanker.scala 68:55]
  wire  rsel_5 = _rsel_T[5]; // @[UserYanker.scala 68:55]
  wire  rsel_6 = _rsel_T[6]; // @[UserYanker.scala 68:55]
  wire  rsel_7 = _rsel_T[7]; // @[UserYanker.scala 68:55]
  wire  rsel_8 = _rsel_T[8]; // @[UserYanker.scala 68:55]
  wire  rsel_9 = _rsel_T[9]; // @[UserYanker.scala 68:55]
  wire  rsel_10 = _rsel_T[10]; // @[UserYanker.scala 68:55]
  wire  rsel_11 = _rsel_T[11]; // @[UserYanker.scala 68:55]
  wire  rsel_12 = _rsel_T[12]; // @[UserYanker.scala 68:55]
  wire  rsel_13 = _rsel_T[13]; // @[UserYanker.scala 68:55]
  wire  rsel_14 = _rsel_T[14]; // @[UserYanker.scala 68:55]
  wire  rsel_15 = _rsel_T[15]; // @[UserYanker.scala 68:55]
  wire  rsel_16 = _rsel_T[16]; // @[UserYanker.scala 68:55]
  wire  rsel_17 = _rsel_T[17]; // @[UserYanker.scala 68:55]
  wire  rsel_18 = _rsel_T[18]; // @[UserYanker.scala 68:55]
  wire  rsel_19 = _rsel_T[19]; // @[UserYanker.scala 68:55]
  wire  rsel_20 = _rsel_T[20]; // @[UserYanker.scala 68:55]
  wire  rsel_21 = _rsel_T[21]; // @[UserYanker.scala 68:55]
  wire  rsel_22 = _rsel_T[22]; // @[UserYanker.scala 68:55]
  wire  rsel_23 = _rsel_T[23]; // @[UserYanker.scala 68:55]
  wire  rsel_24 = _rsel_T[24]; // @[UserYanker.scala 68:55]
  wire  rsel_25 = _rsel_T[25]; // @[UserYanker.scala 68:55]
  wire  rsel_26 = _rsel_T[26]; // @[UserYanker.scala 68:55]
  wire  rsel_27 = _rsel_T[27]; // @[UserYanker.scala 68:55]
  wire  rsel_28 = _rsel_T[28]; // @[UserYanker.scala 68:55]
  wire  rsel_29 = _rsel_T[29]; // @[UserYanker.scala 68:55]
  wire  rsel_30 = _rsel_T[30]; // @[UserYanker.scala 68:55]
  wire  rsel_31 = _rsel_T[31]; // @[UserYanker.scala 68:55]
  wire  rsel_32 = _rsel_T[32]; // @[UserYanker.scala 68:55]
  wire  rsel_33 = _rsel_T[33]; // @[UserYanker.scala 68:55]
  wire  rsel_34 = _rsel_T[34]; // @[UserYanker.scala 68:55]
  wire  rsel_35 = _rsel_T[35]; // @[UserYanker.scala 68:55]
  wire  rsel_36 = _rsel_T[36]; // @[UserYanker.scala 68:55]
  wire  _awready_WIRE_0 = QueueCompatibility_37_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _awready_WIRE_1 = QueueCompatibility_38_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_149 = 6'h1 == auto_in_awid ? _awready_WIRE_1 : _awready_WIRE_0; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_2 = QueueCompatibility_39_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_150 = 6'h2 == auto_in_awid ? _awready_WIRE_2 : _GEN_149; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_3 = QueueCompatibility_40_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_151 = 6'h3 == auto_in_awid ? _awready_WIRE_3 : _GEN_150; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_4 = QueueCompatibility_41_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_152 = 6'h4 == auto_in_awid ? _awready_WIRE_4 : _GEN_151; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_5 = QueueCompatibility_42_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_153 = 6'h5 == auto_in_awid ? _awready_WIRE_5 : _GEN_152; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_6 = QueueCompatibility_43_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_154 = 6'h6 == auto_in_awid ? _awready_WIRE_6 : _GEN_153; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_7 = QueueCompatibility_44_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_155 = 6'h7 == auto_in_awid ? _awready_WIRE_7 : _GEN_154; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_8 = QueueCompatibility_45_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_156 = 6'h8 == auto_in_awid ? _awready_WIRE_8 : _GEN_155; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_9 = QueueCompatibility_46_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_157 = 6'h9 == auto_in_awid ? _awready_WIRE_9 : _GEN_156; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_10 = QueueCompatibility_47_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_158 = 6'ha == auto_in_awid ? _awready_WIRE_10 : _GEN_157; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_11 = QueueCompatibility_48_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_159 = 6'hb == auto_in_awid ? _awready_WIRE_11 : _GEN_158; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_12 = QueueCompatibility_49_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_160 = 6'hc == auto_in_awid ? _awready_WIRE_12 : _GEN_159; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_13 = QueueCompatibility_50_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_161 = 6'hd == auto_in_awid ? _awready_WIRE_13 : _GEN_160; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_14 = QueueCompatibility_51_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_162 = 6'he == auto_in_awid ? _awready_WIRE_14 : _GEN_161; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_15 = QueueCompatibility_52_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_163 = 6'hf == auto_in_awid ? _awready_WIRE_15 : _GEN_162; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_16 = QueueCompatibility_53_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_164 = 6'h10 == auto_in_awid ? _awready_WIRE_16 : _GEN_163; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_17 = QueueCompatibility_54_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_165 = 6'h11 == auto_in_awid ? _awready_WIRE_17 : _GEN_164; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_18 = QueueCompatibility_55_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_166 = 6'h12 == auto_in_awid ? _awready_WIRE_18 : _GEN_165; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_19 = QueueCompatibility_56_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_167 = 6'h13 == auto_in_awid ? _awready_WIRE_19 : _GEN_166; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_20 = QueueCompatibility_57_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_168 = 6'h14 == auto_in_awid ? _awready_WIRE_20 : _GEN_167; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_21 = QueueCompatibility_58_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_169 = 6'h15 == auto_in_awid ? _awready_WIRE_21 : _GEN_168; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_22 = QueueCompatibility_59_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_170 = 6'h16 == auto_in_awid ? _awready_WIRE_22 : _GEN_169; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_23 = QueueCompatibility_60_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_171 = 6'h17 == auto_in_awid ? _awready_WIRE_23 : _GEN_170; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_24 = QueueCompatibility_61_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_172 = 6'h18 == auto_in_awid ? _awready_WIRE_24 : _GEN_171; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_25 = QueueCompatibility_62_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_173 = 6'h19 == auto_in_awid ? _awready_WIRE_25 : _GEN_172; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_26 = QueueCompatibility_63_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_174 = 6'h1a == auto_in_awid ? _awready_WIRE_26 : _GEN_173; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_27 = QueueCompatibility_64_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_175 = 6'h1b == auto_in_awid ? _awready_WIRE_27 : _GEN_174; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_28 = QueueCompatibility_65_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_176 = 6'h1c == auto_in_awid ? _awready_WIRE_28 : _GEN_175; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_29 = QueueCompatibility_66_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_177 = 6'h1d == auto_in_awid ? _awready_WIRE_29 : _GEN_176; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_30 = QueueCompatibility_67_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_178 = 6'h1e == auto_in_awid ? _awready_WIRE_30 : _GEN_177; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_31 = QueueCompatibility_68_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_179 = 6'h1f == auto_in_awid ? _awready_WIRE_31 : _GEN_178; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_32 = QueueCompatibility_69_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_180 = 6'h20 == auto_in_awid ? _awready_WIRE_32 : _GEN_179; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_33 = QueueCompatibility_70_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_181 = 6'h21 == auto_in_awid ? _awready_WIRE_33 : _GEN_180; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_34 = QueueCompatibility_71_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_182 = 6'h22 == auto_in_awid ? _awready_WIRE_34 : _GEN_181; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_35 = QueueCompatibility_72_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_183 = 6'h23 == auto_in_awid ? _awready_WIRE_35 : _GEN_182; // @[UserYanker.scala 77:{36,36}]
  wire  _awready_WIRE_36 = QueueCompatibility_73_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_184 = 6'h24 == auto_in_awid ? _awready_WIRE_36 : _GEN_183; // @[UserYanker.scala 77:{36,36}]
  wire [5:0] _bWIRE_0_tl_state_source = QueueCompatibility_37_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _bWIRE_1_tl_state_source = QueueCompatibility_38_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_223 = 6'h1 == auto_out_bid ? _bWIRE_1_tl_state_source : _bWIRE_0_tl_state_source; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_2_tl_state_source = QueueCompatibility_39_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_224 = 6'h2 == auto_out_bid ? _bWIRE_2_tl_state_source : _GEN_223; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_3_tl_state_source = QueueCompatibility_40_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_225 = 6'h3 == auto_out_bid ? _bWIRE_3_tl_state_source : _GEN_224; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_4_tl_state_source = QueueCompatibility_41_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_226 = 6'h4 == auto_out_bid ? _bWIRE_4_tl_state_source : _GEN_225; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_5_tl_state_source = QueueCompatibility_42_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_227 = 6'h5 == auto_out_bid ? _bWIRE_5_tl_state_source : _GEN_226; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_6_tl_state_source = QueueCompatibility_43_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_228 = 6'h6 == auto_out_bid ? _bWIRE_6_tl_state_source : _GEN_227; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_7_tl_state_source = QueueCompatibility_44_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_229 = 6'h7 == auto_out_bid ? _bWIRE_7_tl_state_source : _GEN_228; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_8_tl_state_source = QueueCompatibility_45_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_230 = 6'h8 == auto_out_bid ? _bWIRE_8_tl_state_source : _GEN_229; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_9_tl_state_source = QueueCompatibility_46_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_231 = 6'h9 == auto_out_bid ? _bWIRE_9_tl_state_source : _GEN_230; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_10_tl_state_source = QueueCompatibility_47_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_232 = 6'ha == auto_out_bid ? _bWIRE_10_tl_state_source : _GEN_231; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_11_tl_state_source = QueueCompatibility_48_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_233 = 6'hb == auto_out_bid ? _bWIRE_11_tl_state_source : _GEN_232; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_12_tl_state_source = QueueCompatibility_49_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_234 = 6'hc == auto_out_bid ? _bWIRE_12_tl_state_source : _GEN_233; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_13_tl_state_source = QueueCompatibility_50_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_235 = 6'hd == auto_out_bid ? _bWIRE_13_tl_state_source : _GEN_234; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_14_tl_state_source = QueueCompatibility_51_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_236 = 6'he == auto_out_bid ? _bWIRE_14_tl_state_source : _GEN_235; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_15_tl_state_source = QueueCompatibility_52_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_237 = 6'hf == auto_out_bid ? _bWIRE_15_tl_state_source : _GEN_236; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_16_tl_state_source = QueueCompatibility_53_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_238 = 6'h10 == auto_out_bid ? _bWIRE_16_tl_state_source : _GEN_237; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_17_tl_state_source = QueueCompatibility_54_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_239 = 6'h11 == auto_out_bid ? _bWIRE_17_tl_state_source : _GEN_238; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_18_tl_state_source = QueueCompatibility_55_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_240 = 6'h12 == auto_out_bid ? _bWIRE_18_tl_state_source : _GEN_239; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_19_tl_state_source = QueueCompatibility_56_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_241 = 6'h13 == auto_out_bid ? _bWIRE_19_tl_state_source : _GEN_240; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_20_tl_state_source = QueueCompatibility_57_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_242 = 6'h14 == auto_out_bid ? _bWIRE_20_tl_state_source : _GEN_241; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_21_tl_state_source = QueueCompatibility_58_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_243 = 6'h15 == auto_out_bid ? _bWIRE_21_tl_state_source : _GEN_242; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_22_tl_state_source = QueueCompatibility_59_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_244 = 6'h16 == auto_out_bid ? _bWIRE_22_tl_state_source : _GEN_243; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_23_tl_state_source = QueueCompatibility_60_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_245 = 6'h17 == auto_out_bid ? _bWIRE_23_tl_state_source : _GEN_244; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_24_tl_state_source = QueueCompatibility_61_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_246 = 6'h18 == auto_out_bid ? _bWIRE_24_tl_state_source : _GEN_245; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_25_tl_state_source = QueueCompatibility_62_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_247 = 6'h19 == auto_out_bid ? _bWIRE_25_tl_state_source : _GEN_246; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_26_tl_state_source = QueueCompatibility_63_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_248 = 6'h1a == auto_out_bid ? _bWIRE_26_tl_state_source : _GEN_247; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_27_tl_state_source = QueueCompatibility_64_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_249 = 6'h1b == auto_out_bid ? _bWIRE_27_tl_state_source : _GEN_248; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_28_tl_state_source = QueueCompatibility_65_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_250 = 6'h1c == auto_out_bid ? _bWIRE_28_tl_state_source : _GEN_249; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_29_tl_state_source = QueueCompatibility_66_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_251 = 6'h1d == auto_out_bid ? _bWIRE_29_tl_state_source : _GEN_250; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_30_tl_state_source = QueueCompatibility_67_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_252 = 6'h1e == auto_out_bid ? _bWIRE_30_tl_state_source : _GEN_251; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_31_tl_state_source = QueueCompatibility_68_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_253 = 6'h1f == auto_out_bid ? _bWIRE_31_tl_state_source : _GEN_252; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_32_tl_state_source = QueueCompatibility_69_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_254 = 6'h20 == auto_out_bid ? _bWIRE_32_tl_state_source : _GEN_253; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_33_tl_state_source = QueueCompatibility_70_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_255 = 6'h21 == auto_out_bid ? _bWIRE_33_tl_state_source : _GEN_254; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_34_tl_state_source = QueueCompatibility_71_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_256 = 6'h22 == auto_out_bid ? _bWIRE_34_tl_state_source : _GEN_255; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_35_tl_state_source = QueueCompatibility_72_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [5:0] _GEN_257 = 6'h23 == auto_out_bid ? _bWIRE_35_tl_state_source : _GEN_256; // @[BundleMap.scala 247:{19,19}]
  wire [5:0] _bWIRE_36_tl_state_source = QueueCompatibility_73_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _bWIRE_0_tl_state_size = QueueCompatibility_37_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _bWIRE_1_tl_state_size = QueueCompatibility_38_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_260 = 6'h1 == auto_out_bid ? _bWIRE_1_tl_state_size : _bWIRE_0_tl_state_size; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_2_tl_state_size = QueueCompatibility_39_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_261 = 6'h2 == auto_out_bid ? _bWIRE_2_tl_state_size : _GEN_260; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_3_tl_state_size = QueueCompatibility_40_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_262 = 6'h3 == auto_out_bid ? _bWIRE_3_tl_state_size : _GEN_261; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_4_tl_state_size = QueueCompatibility_41_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_263 = 6'h4 == auto_out_bid ? _bWIRE_4_tl_state_size : _GEN_262; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_5_tl_state_size = QueueCompatibility_42_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_264 = 6'h5 == auto_out_bid ? _bWIRE_5_tl_state_size : _GEN_263; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_6_tl_state_size = QueueCompatibility_43_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_265 = 6'h6 == auto_out_bid ? _bWIRE_6_tl_state_size : _GEN_264; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_7_tl_state_size = QueueCompatibility_44_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_266 = 6'h7 == auto_out_bid ? _bWIRE_7_tl_state_size : _GEN_265; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_8_tl_state_size = QueueCompatibility_45_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_267 = 6'h8 == auto_out_bid ? _bWIRE_8_tl_state_size : _GEN_266; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_9_tl_state_size = QueueCompatibility_46_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_268 = 6'h9 == auto_out_bid ? _bWIRE_9_tl_state_size : _GEN_267; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_10_tl_state_size = QueueCompatibility_47_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_269 = 6'ha == auto_out_bid ? _bWIRE_10_tl_state_size : _GEN_268; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_11_tl_state_size = QueueCompatibility_48_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_270 = 6'hb == auto_out_bid ? _bWIRE_11_tl_state_size : _GEN_269; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_12_tl_state_size = QueueCompatibility_49_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_271 = 6'hc == auto_out_bid ? _bWIRE_12_tl_state_size : _GEN_270; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_13_tl_state_size = QueueCompatibility_50_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_272 = 6'hd == auto_out_bid ? _bWIRE_13_tl_state_size : _GEN_271; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_14_tl_state_size = QueueCompatibility_51_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_273 = 6'he == auto_out_bid ? _bWIRE_14_tl_state_size : _GEN_272; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_15_tl_state_size = QueueCompatibility_52_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_274 = 6'hf == auto_out_bid ? _bWIRE_15_tl_state_size : _GEN_273; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_16_tl_state_size = QueueCompatibility_53_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_275 = 6'h10 == auto_out_bid ? _bWIRE_16_tl_state_size : _GEN_274; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_17_tl_state_size = QueueCompatibility_54_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_276 = 6'h11 == auto_out_bid ? _bWIRE_17_tl_state_size : _GEN_275; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_18_tl_state_size = QueueCompatibility_55_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_277 = 6'h12 == auto_out_bid ? _bWIRE_18_tl_state_size : _GEN_276; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_19_tl_state_size = QueueCompatibility_56_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_278 = 6'h13 == auto_out_bid ? _bWIRE_19_tl_state_size : _GEN_277; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_20_tl_state_size = QueueCompatibility_57_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_279 = 6'h14 == auto_out_bid ? _bWIRE_20_tl_state_size : _GEN_278; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_21_tl_state_size = QueueCompatibility_58_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_280 = 6'h15 == auto_out_bid ? _bWIRE_21_tl_state_size : _GEN_279; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_22_tl_state_size = QueueCompatibility_59_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_281 = 6'h16 == auto_out_bid ? _bWIRE_22_tl_state_size : _GEN_280; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_23_tl_state_size = QueueCompatibility_60_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_282 = 6'h17 == auto_out_bid ? _bWIRE_23_tl_state_size : _GEN_281; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_24_tl_state_size = QueueCompatibility_61_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_283 = 6'h18 == auto_out_bid ? _bWIRE_24_tl_state_size : _GEN_282; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_25_tl_state_size = QueueCompatibility_62_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_284 = 6'h19 == auto_out_bid ? _bWIRE_25_tl_state_size : _GEN_283; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_26_tl_state_size = QueueCompatibility_63_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_285 = 6'h1a == auto_out_bid ? _bWIRE_26_tl_state_size : _GEN_284; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_27_tl_state_size = QueueCompatibility_64_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_286 = 6'h1b == auto_out_bid ? _bWIRE_27_tl_state_size : _GEN_285; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_28_tl_state_size = QueueCompatibility_65_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_287 = 6'h1c == auto_out_bid ? _bWIRE_28_tl_state_size : _GEN_286; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_29_tl_state_size = QueueCompatibility_66_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_288 = 6'h1d == auto_out_bid ? _bWIRE_29_tl_state_size : _GEN_287; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_30_tl_state_size = QueueCompatibility_67_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_289 = 6'h1e == auto_out_bid ? _bWIRE_30_tl_state_size : _GEN_288; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_31_tl_state_size = QueueCompatibility_68_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_290 = 6'h1f == auto_out_bid ? _bWIRE_31_tl_state_size : _GEN_289; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_32_tl_state_size = QueueCompatibility_69_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_291 = 6'h20 == auto_out_bid ? _bWIRE_32_tl_state_size : _GEN_290; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_33_tl_state_size = QueueCompatibility_70_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_292 = 6'h21 == auto_out_bid ? _bWIRE_33_tl_state_size : _GEN_291; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_34_tl_state_size = QueueCompatibility_71_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_293 = 6'h22 == auto_out_bid ? _bWIRE_34_tl_state_size : _GEN_292; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_35_tl_state_size = QueueCompatibility_72_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_294 = 6'h23 == auto_out_bid ? _bWIRE_35_tl_state_size : _GEN_293; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _bWIRE_36_tl_state_size = QueueCompatibility_73_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [63:0] _awsel_T = 64'h1 << auto_in_awid; // @[OneHot.scala 64:12]
  wire  awsel_0 = _awsel_T[0]; // @[UserYanker.scala 88:55]
  wire  awsel_1 = _awsel_T[1]; // @[UserYanker.scala 88:55]
  wire  awsel_2 = _awsel_T[2]; // @[UserYanker.scala 88:55]
  wire  awsel_3 = _awsel_T[3]; // @[UserYanker.scala 88:55]
  wire  awsel_4 = _awsel_T[4]; // @[UserYanker.scala 88:55]
  wire  awsel_5 = _awsel_T[5]; // @[UserYanker.scala 88:55]
  wire  awsel_6 = _awsel_T[6]; // @[UserYanker.scala 88:55]
  wire  awsel_7 = _awsel_T[7]; // @[UserYanker.scala 88:55]
  wire  awsel_8 = _awsel_T[8]; // @[UserYanker.scala 88:55]
  wire  awsel_9 = _awsel_T[9]; // @[UserYanker.scala 88:55]
  wire  awsel_10 = _awsel_T[10]; // @[UserYanker.scala 88:55]
  wire  awsel_11 = _awsel_T[11]; // @[UserYanker.scala 88:55]
  wire  awsel_12 = _awsel_T[12]; // @[UserYanker.scala 88:55]
  wire  awsel_13 = _awsel_T[13]; // @[UserYanker.scala 88:55]
  wire  awsel_14 = _awsel_T[14]; // @[UserYanker.scala 88:55]
  wire  awsel_15 = _awsel_T[15]; // @[UserYanker.scala 88:55]
  wire  awsel_16 = _awsel_T[16]; // @[UserYanker.scala 88:55]
  wire  awsel_17 = _awsel_T[17]; // @[UserYanker.scala 88:55]
  wire  awsel_18 = _awsel_T[18]; // @[UserYanker.scala 88:55]
  wire  awsel_19 = _awsel_T[19]; // @[UserYanker.scala 88:55]
  wire  awsel_20 = _awsel_T[20]; // @[UserYanker.scala 88:55]
  wire  awsel_21 = _awsel_T[21]; // @[UserYanker.scala 88:55]
  wire  awsel_22 = _awsel_T[22]; // @[UserYanker.scala 88:55]
  wire  awsel_23 = _awsel_T[23]; // @[UserYanker.scala 88:55]
  wire  awsel_24 = _awsel_T[24]; // @[UserYanker.scala 88:55]
  wire  awsel_25 = _awsel_T[25]; // @[UserYanker.scala 88:55]
  wire  awsel_26 = _awsel_T[26]; // @[UserYanker.scala 88:55]
  wire  awsel_27 = _awsel_T[27]; // @[UserYanker.scala 88:55]
  wire  awsel_28 = _awsel_T[28]; // @[UserYanker.scala 88:55]
  wire  awsel_29 = _awsel_T[29]; // @[UserYanker.scala 88:55]
  wire  awsel_30 = _awsel_T[30]; // @[UserYanker.scala 88:55]
  wire  awsel_31 = _awsel_T[31]; // @[UserYanker.scala 88:55]
  wire  awsel_32 = _awsel_T[32]; // @[UserYanker.scala 88:55]
  wire  awsel_33 = _awsel_T[33]; // @[UserYanker.scala 88:55]
  wire  awsel_34 = _awsel_T[34]; // @[UserYanker.scala 88:55]
  wire  awsel_35 = _awsel_T[35]; // @[UserYanker.scala 88:55]
  wire  awsel_36 = _awsel_T[36]; // @[UserYanker.scala 88:55]
  wire [63:0] _bsel_T = 64'h1 << auto_out_bid; // @[OneHot.scala 64:12]
  wire  bsel_0 = _bsel_T[0]; // @[UserYanker.scala 89:55]
  wire  bsel_1 = _bsel_T[1]; // @[UserYanker.scala 89:55]
  wire  bsel_2 = _bsel_T[2]; // @[UserYanker.scala 89:55]
  wire  bsel_3 = _bsel_T[3]; // @[UserYanker.scala 89:55]
  wire  bsel_4 = _bsel_T[4]; // @[UserYanker.scala 89:55]
  wire  bsel_5 = _bsel_T[5]; // @[UserYanker.scala 89:55]
  wire  bsel_6 = _bsel_T[6]; // @[UserYanker.scala 89:55]
  wire  bsel_7 = _bsel_T[7]; // @[UserYanker.scala 89:55]
  wire  bsel_8 = _bsel_T[8]; // @[UserYanker.scala 89:55]
  wire  bsel_9 = _bsel_T[9]; // @[UserYanker.scala 89:55]
  wire  bsel_10 = _bsel_T[10]; // @[UserYanker.scala 89:55]
  wire  bsel_11 = _bsel_T[11]; // @[UserYanker.scala 89:55]
  wire  bsel_12 = _bsel_T[12]; // @[UserYanker.scala 89:55]
  wire  bsel_13 = _bsel_T[13]; // @[UserYanker.scala 89:55]
  wire  bsel_14 = _bsel_T[14]; // @[UserYanker.scala 89:55]
  wire  bsel_15 = _bsel_T[15]; // @[UserYanker.scala 89:55]
  wire  bsel_16 = _bsel_T[16]; // @[UserYanker.scala 89:55]
  wire  bsel_17 = _bsel_T[17]; // @[UserYanker.scala 89:55]
  wire  bsel_18 = _bsel_T[18]; // @[UserYanker.scala 89:55]
  wire  bsel_19 = _bsel_T[19]; // @[UserYanker.scala 89:55]
  wire  bsel_20 = _bsel_T[20]; // @[UserYanker.scala 89:55]
  wire  bsel_21 = _bsel_T[21]; // @[UserYanker.scala 89:55]
  wire  bsel_22 = _bsel_T[22]; // @[UserYanker.scala 89:55]
  wire  bsel_23 = _bsel_T[23]; // @[UserYanker.scala 89:55]
  wire  bsel_24 = _bsel_T[24]; // @[UserYanker.scala 89:55]
  wire  bsel_25 = _bsel_T[25]; // @[UserYanker.scala 89:55]
  wire  bsel_26 = _bsel_T[26]; // @[UserYanker.scala 89:55]
  wire  bsel_27 = _bsel_T[27]; // @[UserYanker.scala 89:55]
  wire  bsel_28 = _bsel_T[28]; // @[UserYanker.scala 89:55]
  wire  bsel_29 = _bsel_T[29]; // @[UserYanker.scala 89:55]
  wire  bsel_30 = _bsel_T[30]; // @[UserYanker.scala 89:55]
  wire  bsel_31 = _bsel_T[31]; // @[UserYanker.scala 89:55]
  wire  bsel_32 = _bsel_T[32]; // @[UserYanker.scala 89:55]
  wire  bsel_33 = _bsel_T[33]; // @[UserYanker.scala 89:55]
  wire  bsel_34 = _bsel_T[34]; // @[UserYanker.scala 89:55]
  wire  bsel_35 = _bsel_T[35]; // @[UserYanker.scala 89:55]
  wire  bsel_36 = _bsel_T[36]; // @[UserYanker.scala 89:55]
  QueueCompatibility QueueCompatibility ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_clock),
    .reset(QueueCompatibility_reset),
    .io_enq_ready(QueueCompatibility_io_enq_ready),
    .io_enq_valid(QueueCompatibility_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_io_deq_ready),
    .io_deq_valid(QueueCompatibility_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_1 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_1_clock),
    .reset(QueueCompatibility_1_reset),
    .io_enq_ready(QueueCompatibility_1_io_enq_ready),
    .io_enq_valid(QueueCompatibility_1_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_1_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_1_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_1_io_deq_ready),
    .io_deq_valid(QueueCompatibility_1_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_1_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_1_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_2 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_2_clock),
    .reset(QueueCompatibility_2_reset),
    .io_enq_ready(QueueCompatibility_2_io_enq_ready),
    .io_enq_valid(QueueCompatibility_2_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_2_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_2_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_2_io_deq_ready),
    .io_deq_valid(QueueCompatibility_2_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_2_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_2_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_3 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_3_clock),
    .reset(QueueCompatibility_3_reset),
    .io_enq_ready(QueueCompatibility_3_io_enq_ready),
    .io_enq_valid(QueueCompatibility_3_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_3_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_3_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_3_io_deq_ready),
    .io_deq_valid(QueueCompatibility_3_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_3_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_3_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_4 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_4_clock),
    .reset(QueueCompatibility_4_reset),
    .io_enq_ready(QueueCompatibility_4_io_enq_ready),
    .io_enq_valid(QueueCompatibility_4_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_4_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_4_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_4_io_deq_ready),
    .io_deq_valid(QueueCompatibility_4_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_4_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_4_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_5 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_5_clock),
    .reset(QueueCompatibility_5_reset),
    .io_enq_ready(QueueCompatibility_5_io_enq_ready),
    .io_enq_valid(QueueCompatibility_5_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_5_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_5_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_5_io_deq_ready),
    .io_deq_valid(QueueCompatibility_5_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_5_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_5_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_6 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_6_clock),
    .reset(QueueCompatibility_6_reset),
    .io_enq_ready(QueueCompatibility_6_io_enq_ready),
    .io_enq_valid(QueueCompatibility_6_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_6_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_6_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_6_io_deq_ready),
    .io_deq_valid(QueueCompatibility_6_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_6_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_6_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_7 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_7_clock),
    .reset(QueueCompatibility_7_reset),
    .io_enq_ready(QueueCompatibility_7_io_enq_ready),
    .io_enq_valid(QueueCompatibility_7_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_7_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_7_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_7_io_deq_ready),
    .io_deq_valid(QueueCompatibility_7_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_7_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_7_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_8 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_8_clock),
    .reset(QueueCompatibility_8_reset),
    .io_enq_ready(QueueCompatibility_8_io_enq_ready),
    .io_enq_valid(QueueCompatibility_8_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_8_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_8_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_8_io_deq_ready),
    .io_deq_valid(QueueCompatibility_8_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_8_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_8_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_9 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_9_clock),
    .reset(QueueCompatibility_9_reset),
    .io_enq_ready(QueueCompatibility_9_io_enq_ready),
    .io_enq_valid(QueueCompatibility_9_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_9_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_9_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_9_io_deq_ready),
    .io_deq_valid(QueueCompatibility_9_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_9_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_9_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_10 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_10_clock),
    .reset(QueueCompatibility_10_reset),
    .io_enq_ready(QueueCompatibility_10_io_enq_ready),
    .io_enq_valid(QueueCompatibility_10_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_10_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_10_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_10_io_deq_ready),
    .io_deq_valid(QueueCompatibility_10_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_10_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_10_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_11 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_11_clock),
    .reset(QueueCompatibility_11_reset),
    .io_enq_ready(QueueCompatibility_11_io_enq_ready),
    .io_enq_valid(QueueCompatibility_11_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_11_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_11_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_11_io_deq_ready),
    .io_deq_valid(QueueCompatibility_11_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_11_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_11_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_12 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_12_clock),
    .reset(QueueCompatibility_12_reset),
    .io_enq_ready(QueueCompatibility_12_io_enq_ready),
    .io_enq_valid(QueueCompatibility_12_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_12_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_12_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_12_io_deq_ready),
    .io_deq_valid(QueueCompatibility_12_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_12_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_12_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_13 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_13_clock),
    .reset(QueueCompatibility_13_reset),
    .io_enq_ready(QueueCompatibility_13_io_enq_ready),
    .io_enq_valid(QueueCompatibility_13_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_13_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_13_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_13_io_deq_ready),
    .io_deq_valid(QueueCompatibility_13_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_13_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_13_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_14 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_14_clock),
    .reset(QueueCompatibility_14_reset),
    .io_enq_ready(QueueCompatibility_14_io_enq_ready),
    .io_enq_valid(QueueCompatibility_14_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_14_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_14_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_14_io_deq_ready),
    .io_deq_valid(QueueCompatibility_14_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_14_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_14_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_15 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_15_clock),
    .reset(QueueCompatibility_15_reset),
    .io_enq_ready(QueueCompatibility_15_io_enq_ready),
    .io_enq_valid(QueueCompatibility_15_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_15_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_15_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_15_io_deq_ready),
    .io_deq_valid(QueueCompatibility_15_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_15_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_15_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_16 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_16_clock),
    .reset(QueueCompatibility_16_reset),
    .io_enq_ready(QueueCompatibility_16_io_enq_ready),
    .io_enq_valid(QueueCompatibility_16_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_16_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_16_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_16_io_deq_ready),
    .io_deq_valid(QueueCompatibility_16_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_16_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_16_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_17 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_17_clock),
    .reset(QueueCompatibility_17_reset),
    .io_enq_ready(QueueCompatibility_17_io_enq_ready),
    .io_enq_valid(QueueCompatibility_17_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_17_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_17_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_17_io_deq_ready),
    .io_deq_valid(QueueCompatibility_17_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_17_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_17_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_18 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_18_clock),
    .reset(QueueCompatibility_18_reset),
    .io_enq_ready(QueueCompatibility_18_io_enq_ready),
    .io_enq_valid(QueueCompatibility_18_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_18_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_18_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_18_io_deq_ready),
    .io_deq_valid(QueueCompatibility_18_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_18_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_18_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_19 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_19_clock),
    .reset(QueueCompatibility_19_reset),
    .io_enq_ready(QueueCompatibility_19_io_enq_ready),
    .io_enq_valid(QueueCompatibility_19_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_19_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_19_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_19_io_deq_ready),
    .io_deq_valid(QueueCompatibility_19_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_19_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_19_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_20 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_20_clock),
    .reset(QueueCompatibility_20_reset),
    .io_enq_ready(QueueCompatibility_20_io_enq_ready),
    .io_enq_valid(QueueCompatibility_20_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_20_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_20_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_20_io_deq_ready),
    .io_deq_valid(QueueCompatibility_20_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_20_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_20_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_21 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_21_clock),
    .reset(QueueCompatibility_21_reset),
    .io_enq_ready(QueueCompatibility_21_io_enq_ready),
    .io_enq_valid(QueueCompatibility_21_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_21_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_21_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_21_io_deq_ready),
    .io_deq_valid(QueueCompatibility_21_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_21_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_21_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_22 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_22_clock),
    .reset(QueueCompatibility_22_reset),
    .io_enq_ready(QueueCompatibility_22_io_enq_ready),
    .io_enq_valid(QueueCompatibility_22_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_22_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_22_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_22_io_deq_ready),
    .io_deq_valid(QueueCompatibility_22_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_22_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_22_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_23 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_23_clock),
    .reset(QueueCompatibility_23_reset),
    .io_enq_ready(QueueCompatibility_23_io_enq_ready),
    .io_enq_valid(QueueCompatibility_23_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_23_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_23_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_23_io_deq_ready),
    .io_deq_valid(QueueCompatibility_23_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_23_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_23_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_24 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_24_clock),
    .reset(QueueCompatibility_24_reset),
    .io_enq_ready(QueueCompatibility_24_io_enq_ready),
    .io_enq_valid(QueueCompatibility_24_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_24_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_24_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_24_io_deq_ready),
    .io_deq_valid(QueueCompatibility_24_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_24_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_24_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_25 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_25_clock),
    .reset(QueueCompatibility_25_reset),
    .io_enq_ready(QueueCompatibility_25_io_enq_ready),
    .io_enq_valid(QueueCompatibility_25_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_25_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_25_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_25_io_deq_ready),
    .io_deq_valid(QueueCompatibility_25_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_25_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_25_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_26 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_26_clock),
    .reset(QueueCompatibility_26_reset),
    .io_enq_ready(QueueCompatibility_26_io_enq_ready),
    .io_enq_valid(QueueCompatibility_26_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_26_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_26_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_26_io_deq_ready),
    .io_deq_valid(QueueCompatibility_26_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_26_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_26_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_27 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_27_clock),
    .reset(QueueCompatibility_27_reset),
    .io_enq_ready(QueueCompatibility_27_io_enq_ready),
    .io_enq_valid(QueueCompatibility_27_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_27_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_27_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_27_io_deq_ready),
    .io_deq_valid(QueueCompatibility_27_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_27_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_27_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_28 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_28_clock),
    .reset(QueueCompatibility_28_reset),
    .io_enq_ready(QueueCompatibility_28_io_enq_ready),
    .io_enq_valid(QueueCompatibility_28_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_28_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_28_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_28_io_deq_ready),
    .io_deq_valid(QueueCompatibility_28_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_28_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_28_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_29 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_29_clock),
    .reset(QueueCompatibility_29_reset),
    .io_enq_ready(QueueCompatibility_29_io_enq_ready),
    .io_enq_valid(QueueCompatibility_29_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_29_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_29_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_29_io_deq_ready),
    .io_deq_valid(QueueCompatibility_29_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_29_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_29_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_30 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_30_clock),
    .reset(QueueCompatibility_30_reset),
    .io_enq_ready(QueueCompatibility_30_io_enq_ready),
    .io_enq_valid(QueueCompatibility_30_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_30_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_30_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_30_io_deq_ready),
    .io_deq_valid(QueueCompatibility_30_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_30_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_30_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_31 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_31_clock),
    .reset(QueueCompatibility_31_reset),
    .io_enq_ready(QueueCompatibility_31_io_enq_ready),
    .io_enq_valid(QueueCompatibility_31_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_31_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_31_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_31_io_deq_ready),
    .io_deq_valid(QueueCompatibility_31_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_31_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_31_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_32 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_32_clock),
    .reset(QueueCompatibility_32_reset),
    .io_enq_ready(QueueCompatibility_32_io_enq_ready),
    .io_enq_valid(QueueCompatibility_32_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_32_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_32_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_32_io_deq_ready),
    .io_deq_valid(QueueCompatibility_32_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_32_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_32_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_33 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_33_clock),
    .reset(QueueCompatibility_33_reset),
    .io_enq_ready(QueueCompatibility_33_io_enq_ready),
    .io_enq_valid(QueueCompatibility_33_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_33_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_33_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_33_io_deq_ready),
    .io_deq_valid(QueueCompatibility_33_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_33_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_33_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_34 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_34_clock),
    .reset(QueueCompatibility_34_reset),
    .io_enq_ready(QueueCompatibility_34_io_enq_ready),
    .io_enq_valid(QueueCompatibility_34_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_34_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_34_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_34_io_deq_ready),
    .io_deq_valid(QueueCompatibility_34_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_34_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_34_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_35 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_35_clock),
    .reset(QueueCompatibility_35_reset),
    .io_enq_ready(QueueCompatibility_35_io_enq_ready),
    .io_enq_valid(QueueCompatibility_35_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_35_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_35_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_35_io_deq_ready),
    .io_deq_valid(QueueCompatibility_35_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_35_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_35_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_36 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_36_clock),
    .reset(QueueCompatibility_36_reset),
    .io_enq_ready(QueueCompatibility_36_io_enq_ready),
    .io_enq_valid(QueueCompatibility_36_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_36_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_36_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_36_io_deq_ready),
    .io_deq_valid(QueueCompatibility_36_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_36_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_36_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_37 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_37_clock),
    .reset(QueueCompatibility_37_reset),
    .io_enq_ready(QueueCompatibility_37_io_enq_ready),
    .io_enq_valid(QueueCompatibility_37_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_37_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_37_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_37_io_deq_ready),
    .io_deq_valid(QueueCompatibility_37_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_37_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_37_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_38 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_38_clock),
    .reset(QueueCompatibility_38_reset),
    .io_enq_ready(QueueCompatibility_38_io_enq_ready),
    .io_enq_valid(QueueCompatibility_38_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_38_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_38_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_38_io_deq_ready),
    .io_deq_valid(QueueCompatibility_38_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_38_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_38_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_39 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_39_clock),
    .reset(QueueCompatibility_39_reset),
    .io_enq_ready(QueueCompatibility_39_io_enq_ready),
    .io_enq_valid(QueueCompatibility_39_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_39_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_39_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_39_io_deq_ready),
    .io_deq_valid(QueueCompatibility_39_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_39_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_39_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_40 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_40_clock),
    .reset(QueueCompatibility_40_reset),
    .io_enq_ready(QueueCompatibility_40_io_enq_ready),
    .io_enq_valid(QueueCompatibility_40_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_40_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_40_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_40_io_deq_ready),
    .io_deq_valid(QueueCompatibility_40_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_40_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_40_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_41 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_41_clock),
    .reset(QueueCompatibility_41_reset),
    .io_enq_ready(QueueCompatibility_41_io_enq_ready),
    .io_enq_valid(QueueCompatibility_41_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_41_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_41_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_41_io_deq_ready),
    .io_deq_valid(QueueCompatibility_41_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_41_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_41_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_42 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_42_clock),
    .reset(QueueCompatibility_42_reset),
    .io_enq_ready(QueueCompatibility_42_io_enq_ready),
    .io_enq_valid(QueueCompatibility_42_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_42_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_42_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_42_io_deq_ready),
    .io_deq_valid(QueueCompatibility_42_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_42_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_42_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_43 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_43_clock),
    .reset(QueueCompatibility_43_reset),
    .io_enq_ready(QueueCompatibility_43_io_enq_ready),
    .io_enq_valid(QueueCompatibility_43_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_43_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_43_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_43_io_deq_ready),
    .io_deq_valid(QueueCompatibility_43_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_43_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_43_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_44 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_44_clock),
    .reset(QueueCompatibility_44_reset),
    .io_enq_ready(QueueCompatibility_44_io_enq_ready),
    .io_enq_valid(QueueCompatibility_44_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_44_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_44_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_44_io_deq_ready),
    .io_deq_valid(QueueCompatibility_44_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_44_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_44_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_45 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_45_clock),
    .reset(QueueCompatibility_45_reset),
    .io_enq_ready(QueueCompatibility_45_io_enq_ready),
    .io_enq_valid(QueueCompatibility_45_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_45_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_45_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_45_io_deq_ready),
    .io_deq_valid(QueueCompatibility_45_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_45_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_45_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_46 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_46_clock),
    .reset(QueueCompatibility_46_reset),
    .io_enq_ready(QueueCompatibility_46_io_enq_ready),
    .io_enq_valid(QueueCompatibility_46_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_46_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_46_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_46_io_deq_ready),
    .io_deq_valid(QueueCompatibility_46_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_46_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_46_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_47 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_47_clock),
    .reset(QueueCompatibility_47_reset),
    .io_enq_ready(QueueCompatibility_47_io_enq_ready),
    .io_enq_valid(QueueCompatibility_47_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_47_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_47_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_47_io_deq_ready),
    .io_deq_valid(QueueCompatibility_47_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_47_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_47_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_48 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_48_clock),
    .reset(QueueCompatibility_48_reset),
    .io_enq_ready(QueueCompatibility_48_io_enq_ready),
    .io_enq_valid(QueueCompatibility_48_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_48_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_48_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_48_io_deq_ready),
    .io_deq_valid(QueueCompatibility_48_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_48_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_48_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_49 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_49_clock),
    .reset(QueueCompatibility_49_reset),
    .io_enq_ready(QueueCompatibility_49_io_enq_ready),
    .io_enq_valid(QueueCompatibility_49_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_49_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_49_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_49_io_deq_ready),
    .io_deq_valid(QueueCompatibility_49_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_49_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_49_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_50 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_50_clock),
    .reset(QueueCompatibility_50_reset),
    .io_enq_ready(QueueCompatibility_50_io_enq_ready),
    .io_enq_valid(QueueCompatibility_50_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_50_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_50_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_50_io_deq_ready),
    .io_deq_valid(QueueCompatibility_50_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_50_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_50_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_51 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_51_clock),
    .reset(QueueCompatibility_51_reset),
    .io_enq_ready(QueueCompatibility_51_io_enq_ready),
    .io_enq_valid(QueueCompatibility_51_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_51_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_51_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_51_io_deq_ready),
    .io_deq_valid(QueueCompatibility_51_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_51_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_51_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_52 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_52_clock),
    .reset(QueueCompatibility_52_reset),
    .io_enq_ready(QueueCompatibility_52_io_enq_ready),
    .io_enq_valid(QueueCompatibility_52_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_52_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_52_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_52_io_deq_ready),
    .io_deq_valid(QueueCompatibility_52_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_52_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_52_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_53 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_53_clock),
    .reset(QueueCompatibility_53_reset),
    .io_enq_ready(QueueCompatibility_53_io_enq_ready),
    .io_enq_valid(QueueCompatibility_53_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_53_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_53_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_53_io_deq_ready),
    .io_deq_valid(QueueCompatibility_53_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_53_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_53_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_54 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_54_clock),
    .reset(QueueCompatibility_54_reset),
    .io_enq_ready(QueueCompatibility_54_io_enq_ready),
    .io_enq_valid(QueueCompatibility_54_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_54_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_54_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_54_io_deq_ready),
    .io_deq_valid(QueueCompatibility_54_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_54_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_54_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_55 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_55_clock),
    .reset(QueueCompatibility_55_reset),
    .io_enq_ready(QueueCompatibility_55_io_enq_ready),
    .io_enq_valid(QueueCompatibility_55_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_55_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_55_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_55_io_deq_ready),
    .io_deq_valid(QueueCompatibility_55_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_55_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_55_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_56 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_56_clock),
    .reset(QueueCompatibility_56_reset),
    .io_enq_ready(QueueCompatibility_56_io_enq_ready),
    .io_enq_valid(QueueCompatibility_56_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_56_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_56_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_56_io_deq_ready),
    .io_deq_valid(QueueCompatibility_56_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_56_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_56_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_57 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_57_clock),
    .reset(QueueCompatibility_57_reset),
    .io_enq_ready(QueueCompatibility_57_io_enq_ready),
    .io_enq_valid(QueueCompatibility_57_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_57_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_57_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_57_io_deq_ready),
    .io_deq_valid(QueueCompatibility_57_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_57_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_57_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_58 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_58_clock),
    .reset(QueueCompatibility_58_reset),
    .io_enq_ready(QueueCompatibility_58_io_enq_ready),
    .io_enq_valid(QueueCompatibility_58_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_58_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_58_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_58_io_deq_ready),
    .io_deq_valid(QueueCompatibility_58_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_58_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_58_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_59 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_59_clock),
    .reset(QueueCompatibility_59_reset),
    .io_enq_ready(QueueCompatibility_59_io_enq_ready),
    .io_enq_valid(QueueCompatibility_59_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_59_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_59_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_59_io_deq_ready),
    .io_deq_valid(QueueCompatibility_59_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_59_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_59_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_60 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_60_clock),
    .reset(QueueCompatibility_60_reset),
    .io_enq_ready(QueueCompatibility_60_io_enq_ready),
    .io_enq_valid(QueueCompatibility_60_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_60_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_60_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_60_io_deq_ready),
    .io_deq_valid(QueueCompatibility_60_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_60_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_60_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_61 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_61_clock),
    .reset(QueueCompatibility_61_reset),
    .io_enq_ready(QueueCompatibility_61_io_enq_ready),
    .io_enq_valid(QueueCompatibility_61_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_61_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_61_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_61_io_deq_ready),
    .io_deq_valid(QueueCompatibility_61_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_61_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_61_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_62 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_62_clock),
    .reset(QueueCompatibility_62_reset),
    .io_enq_ready(QueueCompatibility_62_io_enq_ready),
    .io_enq_valid(QueueCompatibility_62_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_62_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_62_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_62_io_deq_ready),
    .io_deq_valid(QueueCompatibility_62_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_62_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_62_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_63 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_63_clock),
    .reset(QueueCompatibility_63_reset),
    .io_enq_ready(QueueCompatibility_63_io_enq_ready),
    .io_enq_valid(QueueCompatibility_63_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_63_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_63_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_63_io_deq_ready),
    .io_deq_valid(QueueCompatibility_63_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_63_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_63_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_64 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_64_clock),
    .reset(QueueCompatibility_64_reset),
    .io_enq_ready(QueueCompatibility_64_io_enq_ready),
    .io_enq_valid(QueueCompatibility_64_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_64_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_64_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_64_io_deq_ready),
    .io_deq_valid(QueueCompatibility_64_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_64_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_64_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_65 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_65_clock),
    .reset(QueueCompatibility_65_reset),
    .io_enq_ready(QueueCompatibility_65_io_enq_ready),
    .io_enq_valid(QueueCompatibility_65_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_65_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_65_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_65_io_deq_ready),
    .io_deq_valid(QueueCompatibility_65_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_65_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_65_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_66 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_66_clock),
    .reset(QueueCompatibility_66_reset),
    .io_enq_ready(QueueCompatibility_66_io_enq_ready),
    .io_enq_valid(QueueCompatibility_66_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_66_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_66_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_66_io_deq_ready),
    .io_deq_valid(QueueCompatibility_66_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_66_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_66_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_67 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_67_clock),
    .reset(QueueCompatibility_67_reset),
    .io_enq_ready(QueueCompatibility_67_io_enq_ready),
    .io_enq_valid(QueueCompatibility_67_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_67_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_67_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_67_io_deq_ready),
    .io_deq_valid(QueueCompatibility_67_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_67_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_67_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_68 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_68_clock),
    .reset(QueueCompatibility_68_reset),
    .io_enq_ready(QueueCompatibility_68_io_enq_ready),
    .io_enq_valid(QueueCompatibility_68_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_68_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_68_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_68_io_deq_ready),
    .io_deq_valid(QueueCompatibility_68_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_68_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_68_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_69 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_69_clock),
    .reset(QueueCompatibility_69_reset),
    .io_enq_ready(QueueCompatibility_69_io_enq_ready),
    .io_enq_valid(QueueCompatibility_69_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_69_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_69_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_69_io_deq_ready),
    .io_deq_valid(QueueCompatibility_69_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_69_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_69_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_70 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_70_clock),
    .reset(QueueCompatibility_70_reset),
    .io_enq_ready(QueueCompatibility_70_io_enq_ready),
    .io_enq_valid(QueueCompatibility_70_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_70_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_70_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_70_io_deq_ready),
    .io_deq_valid(QueueCompatibility_70_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_70_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_70_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_71 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_71_clock),
    .reset(QueueCompatibility_71_reset),
    .io_enq_ready(QueueCompatibility_71_io_enq_ready),
    .io_enq_valid(QueueCompatibility_71_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_71_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_71_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_71_io_deq_ready),
    .io_deq_valid(QueueCompatibility_71_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_71_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_71_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_72 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_72_clock),
    .reset(QueueCompatibility_72_reset),
    .io_enq_ready(QueueCompatibility_72_io_enq_ready),
    .io_enq_valid(QueueCompatibility_72_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_72_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_72_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_72_io_deq_ready),
    .io_deq_valid(QueueCompatibility_72_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_72_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_72_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_73 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_73_clock),
    .reset(QueueCompatibility_73_reset),
    .io_enq_ready(QueueCompatibility_73_io_enq_ready),
    .io_enq_valid(QueueCompatibility_73_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_73_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_73_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_73_io_deq_ready),
    .io_deq_valid(QueueCompatibility_73_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_73_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_73_io_deq_bits_tl_state_source)
  );
  assign auto_in_awready = auto_out_awready & _GEN_184; // @[UserYanker.scala 77:36]
  assign auto_in_wready = auto_out_wready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bvalid = auto_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bid = auto_out_bid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bresp = auto_out_bresp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_becho_tl_state_size = 6'h24 == auto_out_bid ? _bWIRE_36_tl_state_size : _GEN_294; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_becho_tl_state_source = 6'h24 == auto_out_bid ? _bWIRE_36_tl_state_source : _GEN_257; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_arready = auto_out_arready & _GEN_36; // @[UserYanker.scala 56:36]
  assign auto_in_rvalid = auto_out_rvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rid = auto_out_rid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rdata = auto_out_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rresp = auto_out_rresp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_recho_tl_state_size = 6'h24 == auto_out_rid ? _rWIRE_36_tl_state_size : _GEN_146; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_recho_tl_state_source = 6'h24 == auto_out_rid ? _rWIRE_36_tl_state_source : _GEN_109; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_rlast = auto_out_rlast; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_awvalid = auto_in_awvalid & _GEN_184; // @[UserYanker.scala 78:36]
  assign auto_out_awid = auto_in_awid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awaddr = auto_in_awaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awlen = auto_in_awlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awsize = auto_in_awsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awburst = auto_in_awburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awlock = auto_in_awlock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awcache = auto_in_awcache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awprot = auto_in_awprot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_awqos = auto_in_awqos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wvalid = auto_in_wvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wdata = auto_in_wdata; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wstrb = auto_in_wstrb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_wlast = auto_in_wlast; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_bready = auto_in_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arvalid = auto_in_arvalid & _GEN_36; // @[UserYanker.scala 57:36]
  assign auto_out_arid = auto_in_arid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_araddr = auto_in_araddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arlen = auto_in_arlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arsize = auto_in_arsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arburst = auto_in_arburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arlock = auto_in_arlock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arcache = auto_in_arcache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arprot = auto_in_arprot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_arqos = auto_in_arqos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_rready = auto_in_rready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_clock = clock;
  assign QueueCompatibility_reset = reset;
  assign QueueCompatibility_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_0; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_0 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_1_clock = clock;
  assign QueueCompatibility_1_reset = reset;
  assign QueueCompatibility_1_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_1; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_1_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_1_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_1_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_1 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_2_clock = clock;
  assign QueueCompatibility_2_reset = reset;
  assign QueueCompatibility_2_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_2; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_2_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_2_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_2_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_2 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_3_clock = clock;
  assign QueueCompatibility_3_reset = reset;
  assign QueueCompatibility_3_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_3; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_3_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_3_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_3_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_3 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_4_clock = clock;
  assign QueueCompatibility_4_reset = reset;
  assign QueueCompatibility_4_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_4; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_4_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_4_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_4_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_4 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_5_clock = clock;
  assign QueueCompatibility_5_reset = reset;
  assign QueueCompatibility_5_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_5; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_5_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_5_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_5_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_5 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_6_clock = clock;
  assign QueueCompatibility_6_reset = reset;
  assign QueueCompatibility_6_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_6; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_6_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_6_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_6_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_6 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_7_clock = clock;
  assign QueueCompatibility_7_reset = reset;
  assign QueueCompatibility_7_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_7; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_7_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_7_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_7_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_7 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_8_clock = clock;
  assign QueueCompatibility_8_reset = reset;
  assign QueueCompatibility_8_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_8; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_8_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_8_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_8_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_8 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_9_clock = clock;
  assign QueueCompatibility_9_reset = reset;
  assign QueueCompatibility_9_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_9; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_9_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_9_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_9_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_9 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_10_clock = clock;
  assign QueueCompatibility_10_reset = reset;
  assign QueueCompatibility_10_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_10; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_10_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_10_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_10_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_10 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_11_clock = clock;
  assign QueueCompatibility_11_reset = reset;
  assign QueueCompatibility_11_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_11; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_11_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_11_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_11_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_11 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_12_clock = clock;
  assign QueueCompatibility_12_reset = reset;
  assign QueueCompatibility_12_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_12; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_12_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_12_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_12_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_12 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_13_clock = clock;
  assign QueueCompatibility_13_reset = reset;
  assign QueueCompatibility_13_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_13; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_13_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_13_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_13_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_13 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_14_clock = clock;
  assign QueueCompatibility_14_reset = reset;
  assign QueueCompatibility_14_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_14; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_14_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_14_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_14_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_14 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_15_clock = clock;
  assign QueueCompatibility_15_reset = reset;
  assign QueueCompatibility_15_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_15; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_15_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_15_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_15_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_15 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_16_clock = clock;
  assign QueueCompatibility_16_reset = reset;
  assign QueueCompatibility_16_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_16; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_16_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_16_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_16_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_16 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_17_clock = clock;
  assign QueueCompatibility_17_reset = reset;
  assign QueueCompatibility_17_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_17; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_17_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_17_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_17_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_17 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_18_clock = clock;
  assign QueueCompatibility_18_reset = reset;
  assign QueueCompatibility_18_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_18; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_18_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_18_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_18_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_18 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_19_clock = clock;
  assign QueueCompatibility_19_reset = reset;
  assign QueueCompatibility_19_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_19; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_19_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_19_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_19_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_19 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_20_clock = clock;
  assign QueueCompatibility_20_reset = reset;
  assign QueueCompatibility_20_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_20; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_20_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_20_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_20_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_20 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_21_clock = clock;
  assign QueueCompatibility_21_reset = reset;
  assign QueueCompatibility_21_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_21; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_21_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_21_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_21_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_21 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_22_clock = clock;
  assign QueueCompatibility_22_reset = reset;
  assign QueueCompatibility_22_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_22; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_22_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_22_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_22_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_22 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_23_clock = clock;
  assign QueueCompatibility_23_reset = reset;
  assign QueueCompatibility_23_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_23; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_23_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_23_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_23_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_23 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_24_clock = clock;
  assign QueueCompatibility_24_reset = reset;
  assign QueueCompatibility_24_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_24; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_24_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_24_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_24_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_24 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_25_clock = clock;
  assign QueueCompatibility_25_reset = reset;
  assign QueueCompatibility_25_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_25; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_25_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_25_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_25_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_25 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_26_clock = clock;
  assign QueueCompatibility_26_reset = reset;
  assign QueueCompatibility_26_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_26; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_26_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_26_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_26_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_26 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_27_clock = clock;
  assign QueueCompatibility_27_reset = reset;
  assign QueueCompatibility_27_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_27; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_27_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_27_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_27_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_27 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_28_clock = clock;
  assign QueueCompatibility_28_reset = reset;
  assign QueueCompatibility_28_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_28; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_28_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_28_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_28_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_28 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_29_clock = clock;
  assign QueueCompatibility_29_reset = reset;
  assign QueueCompatibility_29_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_29; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_29_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_29_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_29_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_29 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_30_clock = clock;
  assign QueueCompatibility_30_reset = reset;
  assign QueueCompatibility_30_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_30; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_30_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_30_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_30_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_30 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_31_clock = clock;
  assign QueueCompatibility_31_reset = reset;
  assign QueueCompatibility_31_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_31; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_31_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_31_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_31_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_31 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_32_clock = clock;
  assign QueueCompatibility_32_reset = reset;
  assign QueueCompatibility_32_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_32; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_32_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_32_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_32_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_32 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_33_clock = clock;
  assign QueueCompatibility_33_reset = reset;
  assign QueueCompatibility_33_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_33; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_33_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_33_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_33_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_33 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_34_clock = clock;
  assign QueueCompatibility_34_reset = reset;
  assign QueueCompatibility_34_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_34; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_34_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_34_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_34_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_34 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_35_clock = clock;
  assign QueueCompatibility_35_reset = reset;
  assign QueueCompatibility_35_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_35; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_35_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_35_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_35_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_35 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_36_clock = clock;
  assign QueueCompatibility_36_reset = reset;
  assign QueueCompatibility_36_io_enq_valid = auto_in_arvalid & auto_out_arready & arsel_36; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_36_io_enq_bits_tl_state_size = auto_in_arecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_36_io_enq_bits_tl_state_source = auto_in_arecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_36_io_deq_ready = auto_out_rvalid & auto_in_rready & rsel_36 & auto_out_rlast; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_37_clock = clock;
  assign QueueCompatibility_37_reset = reset;
  assign QueueCompatibility_37_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_0; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_37_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_37_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_37_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_0; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_38_clock = clock;
  assign QueueCompatibility_38_reset = reset;
  assign QueueCompatibility_38_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_1; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_38_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_38_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_38_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_1; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_39_clock = clock;
  assign QueueCompatibility_39_reset = reset;
  assign QueueCompatibility_39_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_2; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_39_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_39_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_39_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_2; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_40_clock = clock;
  assign QueueCompatibility_40_reset = reset;
  assign QueueCompatibility_40_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_3; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_40_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_40_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_40_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_3; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_41_clock = clock;
  assign QueueCompatibility_41_reset = reset;
  assign QueueCompatibility_41_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_4; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_41_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_41_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_41_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_4; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_42_clock = clock;
  assign QueueCompatibility_42_reset = reset;
  assign QueueCompatibility_42_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_5; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_42_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_42_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_42_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_5; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_43_clock = clock;
  assign QueueCompatibility_43_reset = reset;
  assign QueueCompatibility_43_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_6; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_43_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_43_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_43_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_6; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_44_clock = clock;
  assign QueueCompatibility_44_reset = reset;
  assign QueueCompatibility_44_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_7; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_44_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_44_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_44_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_7; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_45_clock = clock;
  assign QueueCompatibility_45_reset = reset;
  assign QueueCompatibility_45_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_8; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_45_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_45_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_45_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_8; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_46_clock = clock;
  assign QueueCompatibility_46_reset = reset;
  assign QueueCompatibility_46_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_9; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_46_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_46_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_46_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_9; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_47_clock = clock;
  assign QueueCompatibility_47_reset = reset;
  assign QueueCompatibility_47_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_10; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_47_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_47_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_47_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_10; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_48_clock = clock;
  assign QueueCompatibility_48_reset = reset;
  assign QueueCompatibility_48_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_11; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_48_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_48_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_48_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_11; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_49_clock = clock;
  assign QueueCompatibility_49_reset = reset;
  assign QueueCompatibility_49_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_12; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_49_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_49_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_49_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_12; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_50_clock = clock;
  assign QueueCompatibility_50_reset = reset;
  assign QueueCompatibility_50_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_13; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_50_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_50_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_50_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_13; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_51_clock = clock;
  assign QueueCompatibility_51_reset = reset;
  assign QueueCompatibility_51_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_14; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_51_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_51_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_51_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_14; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_52_clock = clock;
  assign QueueCompatibility_52_reset = reset;
  assign QueueCompatibility_52_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_15; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_52_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_52_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_52_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_15; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_53_clock = clock;
  assign QueueCompatibility_53_reset = reset;
  assign QueueCompatibility_53_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_16; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_53_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_53_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_53_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_16; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_54_clock = clock;
  assign QueueCompatibility_54_reset = reset;
  assign QueueCompatibility_54_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_17; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_54_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_54_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_54_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_17; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_55_clock = clock;
  assign QueueCompatibility_55_reset = reset;
  assign QueueCompatibility_55_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_18; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_55_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_55_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_55_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_18; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_56_clock = clock;
  assign QueueCompatibility_56_reset = reset;
  assign QueueCompatibility_56_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_19; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_56_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_56_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_56_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_19; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_57_clock = clock;
  assign QueueCompatibility_57_reset = reset;
  assign QueueCompatibility_57_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_20; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_57_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_57_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_57_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_20; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_58_clock = clock;
  assign QueueCompatibility_58_reset = reset;
  assign QueueCompatibility_58_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_21; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_58_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_58_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_58_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_21; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_59_clock = clock;
  assign QueueCompatibility_59_reset = reset;
  assign QueueCompatibility_59_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_22; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_59_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_59_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_59_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_22; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_60_clock = clock;
  assign QueueCompatibility_60_reset = reset;
  assign QueueCompatibility_60_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_23; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_60_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_60_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_60_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_23; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_61_clock = clock;
  assign QueueCompatibility_61_reset = reset;
  assign QueueCompatibility_61_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_24; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_61_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_61_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_61_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_24; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_62_clock = clock;
  assign QueueCompatibility_62_reset = reset;
  assign QueueCompatibility_62_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_25; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_62_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_62_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_62_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_25; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_63_clock = clock;
  assign QueueCompatibility_63_reset = reset;
  assign QueueCompatibility_63_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_26; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_63_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_63_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_63_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_26; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_64_clock = clock;
  assign QueueCompatibility_64_reset = reset;
  assign QueueCompatibility_64_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_27; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_64_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_64_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_64_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_27; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_65_clock = clock;
  assign QueueCompatibility_65_reset = reset;
  assign QueueCompatibility_65_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_28; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_65_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_65_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_65_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_28; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_66_clock = clock;
  assign QueueCompatibility_66_reset = reset;
  assign QueueCompatibility_66_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_29; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_66_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_66_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_66_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_29; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_67_clock = clock;
  assign QueueCompatibility_67_reset = reset;
  assign QueueCompatibility_67_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_30; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_67_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_67_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_67_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_30; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_68_clock = clock;
  assign QueueCompatibility_68_reset = reset;
  assign QueueCompatibility_68_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_31; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_68_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_68_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_68_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_31; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_69_clock = clock;
  assign QueueCompatibility_69_reset = reset;
  assign QueueCompatibility_69_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_32; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_69_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_69_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_69_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_32; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_70_clock = clock;
  assign QueueCompatibility_70_reset = reset;
  assign QueueCompatibility_70_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_33; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_70_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_70_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_70_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_33; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_71_clock = clock;
  assign QueueCompatibility_71_reset = reset;
  assign QueueCompatibility_71_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_34; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_71_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_71_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_71_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_34; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_72_clock = clock;
  assign QueueCompatibility_72_reset = reset;
  assign QueueCompatibility_72_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_35; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_72_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_72_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_72_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_35; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_73_clock = clock;
  assign QueueCompatibility_73_reset = reset;
  assign QueueCompatibility_73_io_enq_valid = auto_in_awvalid & auto_out_awready & awsel_36; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_73_io_enq_bits_tl_state_size = auto_in_awecho_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_73_io_enq_bits_tl_state_source = auto_in_awecho_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_73_io_deq_ready = auto_out_bvalid & auto_in_bready & bsel_36; // @[UserYanker.scala 91:53]
endmodule

