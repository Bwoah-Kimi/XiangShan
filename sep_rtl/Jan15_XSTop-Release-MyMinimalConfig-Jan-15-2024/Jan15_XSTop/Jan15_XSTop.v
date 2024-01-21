module Jan15_XSTop(
  output         dma_0_awready,
  input          dma_0_awvalid,
  input  [13:0]  dma_0_awid,
  input  [35:0]  dma_0_awaddr,
  input  [7:0]   dma_0_awlen,
  input  [2:0]   dma_0_awsize,
  input  [1:0]   dma_0_awburst,
  input          dma_0_awlock,
  input  [3:0]   dma_0_awcache,
  input  [2:0]   dma_0_awprot,
  input  [3:0]   dma_0_awqos,
  output         dma_0_wready,
  input          dma_0_wvalid,
  input  [255:0] dma_0_wdata,
  input  [31:0]  dma_0_wstrb,
  input          dma_0_wlast,
  input          dma_0_bready,
  output         dma_0_bvalid,
  output [13:0]  dma_0_bid,
  output [1:0]   dma_0_bresp,
  output         dma_0_arready,
  input          dma_0_arvalid,
  input  [13:0]  dma_0_arid,
  input  [35:0]  dma_0_araddr,
  input  [7:0]   dma_0_arlen,
  input  [2:0]   dma_0_arsize,
  input  [1:0]   dma_0_arburst,
  input          dma_0_arlock,
  input  [3:0]   dma_0_arcache,
  input  [2:0]   dma_0_arprot,
  input  [3:0]   dma_0_arqos,
  input          dma_0_rready,
  output         dma_0_rvalid,
  output [13:0]  dma_0_rid,
  output [255:0] dma_0_rdata,
  output [1:0]   dma_0_rresp,
  output         dma_0_rlast,
  input          peripheral_0_awready,
  output         peripheral_0_awvalid,
  output [3:0]   peripheral_0_awid,
  output [30:0]  peripheral_0_awaddr,
  output [7:0]   peripheral_0_awlen,
  output [2:0]   peripheral_0_awsize,
  output [1:0]   peripheral_0_awburst,
  output         peripheral_0_awlock,
  output [3:0]   peripheral_0_awcache,
  output [2:0]   peripheral_0_awprot,
  output [3:0]   peripheral_0_awqos,
  input          peripheral_0_wready,
  output         peripheral_0_wvalid,
  output [63:0]  peripheral_0_wdata,
  output [7:0]   peripheral_0_wstrb,
  output         peripheral_0_wlast,
  output         peripheral_0_bready,
  input          peripheral_0_bvalid,
  input  [3:0]   peripheral_0_bid,
  input  [1:0]   peripheral_0_bresp,
  input          peripheral_0_arready,
  output         peripheral_0_arvalid,
  output [3:0]   peripheral_0_arid,
  output [30:0]  peripheral_0_araddr,
  output [7:0]   peripheral_0_arlen,
  output [2:0]   peripheral_0_arsize,
  output [1:0]   peripheral_0_arburst,
  output         peripheral_0_arlock,
  output [3:0]   peripheral_0_arcache,
  output [2:0]   peripheral_0_arprot,
  output [3:0]   peripheral_0_arqos,
  output         peripheral_0_rready,
  input          peripheral_0_rvalid,
  input  [3:0]   peripheral_0_rid,
  input  [63:0]  peripheral_0_rdata,
  input  [1:0]   peripheral_0_rresp,
  input          peripheral_0_rlast,
  input          memory_0_awready,
  output         memory_0_awvalid,
  output [13:0]  memory_0_awid,
  output [35:0]  memory_0_awaddr,
  output [7:0]   memory_0_awlen,
  output [2:0]   memory_0_awsize,
  output [1:0]   memory_0_awburst,
  output         memory_0_awlock,
  output [3:0]   memory_0_awcache,
  output [2:0]   memory_0_awprot,
  output [3:0]   memory_0_awqos,
  input          memory_0_wready,
  output         memory_0_wvalid,
  output [255:0] memory_0_wdata,
  output [31:0]  memory_0_wstrb,
  output         memory_0_wlast,
  output         memory_0_bready,
  input          memory_0_bvalid,
  input  [13:0]  memory_0_bid,
  input  [1:0]   memory_0_bresp,
  input          memory_0_arready,
  output         memory_0_arvalid,
  output [13:0]  memory_0_arid,
  output [35:0]  memory_0_araddr,
  output [7:0]   memory_0_arlen,
  output [2:0]   memory_0_arsize,
  output [1:0]   memory_0_arburst,
  output         memory_0_arlock,
  output [3:0]   memory_0_arcache,
  output [2:0]   memory_0_arprot,
  output [3:0]   memory_0_arqos,
  output         memory_0_rready,
  input          memory_0_rvalid,
  input  [13:0]  memory_0_rid,
  input  [255:0] memory_0_rdata,
  input  [1:0]   memory_0_rresp,
  input          memory_0_rlast,
  input          io_clock,
  input          io_reset,
  input  [15:0]  io_sram_config,
  input  [63:0]  io_extIntrs,
  input          io_pll0_lock,
  output [31:0]  io_pll0_ctrl_0,
  output [31:0]  io_pll0_ctrl_1,
  output [31:0]  io_pll0_ctrl_2,
  output [31:0]  io_pll0_ctrl_3,
  output [31:0]  io_pll0_ctrl_4,
  output [31:0]  io_pll0_ctrl_5,
  input          io_systemjtag_jtag_TCK,
  input          io_systemjtag_jtag_TMS,
  input          io_systemjtag_jtag_TDI,
  output         io_systemjtag_jtag_TDO_data,
  output         io_systemjtag_jtag_TDO_driven,
  input          io_systemjtag_reset,
  input  [10:0]  io_systemjtag_mfr_id,
  input  [15:0]  io_systemjtag_part_number,
  input  [3:0]   io_systemjtag_version,
  output         io_debug_reset,
  input          io_rtc_clock,
  input          io_cacheable_check_req_0_valid,
  input  [35:0]  io_cacheable_check_req_0_bits_addr,
  input  [1:0]   io_cacheable_check_req_0_bits_size,
  input  [2:0]   io_cacheable_check_req_0_bits_cmd,
  input          io_cacheable_check_req_1_valid,
  input  [35:0]  io_cacheable_check_req_1_bits_addr,
  input  [1:0]   io_cacheable_check_req_1_bits_size,
  input  [2:0]   io_cacheable_check_req_1_bits_cmd,
  output         io_cacheable_check_resp_0_ld,
  output         io_cacheable_check_resp_0_st,
  output         io_cacheable_check_resp_0_instr,
  output         io_cacheable_check_resp_0_mmio,
  output         io_cacheable_check_resp_0_atomic,
  output         io_cacheable_check_resp_1_ld,
  output         io_cacheable_check_resp_1_st,
  output         io_cacheable_check_resp_1_instr,
  output         io_cacheable_check_resp_1_mmio,
  output         io_cacheable_check_resp_1_atomic,
  output         io_riscv_halt_0,
  input  [37:0]  io_riscv_rst_vec_0
);
  wire  misc_clock; // @[Top.scala 38:24]
  wire  misc_reset; // @[Top.scala 38:24]
  wire  misc_auto_debugModule_debug_dmOuter_dmOuter_int_out_0; // @[Top.scala 38:24]
  wire  misc_auto_plic_int_in_0; // @[Top.scala 38:24]
  wire  misc_auto_plic_int_out_1_0; // @[Top.scala 38:24]
  wire  misc_auto_plic_int_out_0_0; // @[Top.scala 38:24]
  wire  misc_auto_clint_int_out_0; // @[Top.scala 38:24]
  wire  misc_auto_clint_int_out_1; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_a_ready; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_a_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_a_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_a_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_a_bits_size; // @[Top.scala 38:24]
  wire [8:0] misc_auto_buffer_in_a_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_buffer_in_a_bits_address; // @[Top.scala 38:24]
  wire [31:0] misc_auto_buffer_in_a_bits_mask; // @[Top.scala 38:24]
  wire [255:0] misc_auto_buffer_in_a_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_bready; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_bvalid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_bopcode; // @[Top.scala 38:24]
  wire [1:0] misc_auto_buffer_in_bparam; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_bsize; // @[Top.scala 38:24]
  wire [35:0] misc_auto_buffer_in_baddress; // @[Top.scala 38:24]
  wire [31:0] misc_auto_buffer_in_bmask; // @[Top.scala 38:24]
  wire [255:0] misc_auto_buffer_in_bdata; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_bcorrupt; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_c_ready; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_c_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_c_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_c_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_c_bits_size; // @[Top.scala 38:24]
  wire [8:0] misc_auto_buffer_in_c_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_buffer_in_c_bits_address; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_c_bits_echo_blockisdirty; // @[Top.scala 38:24]
  wire [255:0] misc_auto_buffer_in_c_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_d_ready; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_d_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_d_bits_opcode; // @[Top.scala 38:24]
  wire [1:0] misc_auto_buffer_in_d_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_buffer_in_d_bits_size; // @[Top.scala 38:24]
  wire [8:0] misc_auto_buffer_in_d_bits_source; // @[Top.scala 38:24]
  wire [3:0] misc_auto_buffer_in_d_bits_sink; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_d_bits_denied; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_d_bits_echo_blockisdirty; // @[Top.scala 38:24]
  wire [255:0] misc_auto_buffer_in_d_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_d_bits_corrupt; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_e_ready; // @[Top.scala 38:24]
  wire  misc_auto_buffer_in_e_valid; // @[Top.scala 38:24]
  wire [3:0] misc_auto_buffer_in_e_bits_sink; // @[Top.scala 38:24]
  wire  misc_auto_L2_to_L3_peripheral_buffer_1_in_a_ready; // @[Top.scala 38:24]
  wire  misc_auto_L2_to_L3_peripheral_buffer_1_in_a_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_size; // @[Top.scala 38:24]
  wire [2:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_address; // @[Top.scala 38:24]
  wire [7:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_mask; // @[Top.scala 38:24]
  wire [63:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_L2_to_L3_peripheral_buffer_1_in_d_ready; // @[Top.scala 38:24]
  wire  misc_auto_L2_to_L3_peripheral_buffer_1_in_d_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_size; // @[Top.scala 38:24]
  wire [2:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_source; // @[Top.scala 38:24]
  wire [63:0] misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_a_ready; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_a_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_a_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_a_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_a_bits_size; // @[Top.scala 38:24]
  wire [9:0] misc_auto_xbar_out_a_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_xbar_out_a_bits_address; // @[Top.scala 38:24]
  wire [31:0] misc_auto_xbar_out_a_bits_mask; // @[Top.scala 38:24]
  wire [255:0] misc_auto_xbar_out_a_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_bready; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_bvalid; // @[Top.scala 38:24]
  wire [1:0] misc_auto_xbar_out_bparam; // @[Top.scala 38:24]
  wire [35:0] misc_auto_xbar_out_baddress; // @[Top.scala 38:24]
  wire [255:0] misc_auto_xbar_out_bdata; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_c_ready; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_c_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_c_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_c_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_c_bits_size; // @[Top.scala 38:24]
  wire [9:0] misc_auto_xbar_out_c_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_xbar_out_c_bits_address; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_c_bits_echo_blockisdirty; // @[Top.scala 38:24]
  wire [255:0] misc_auto_xbar_out_c_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_d_ready; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_d_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_d_bits_opcode; // @[Top.scala 38:24]
  wire [1:0] misc_auto_xbar_out_d_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_xbar_out_d_bits_size; // @[Top.scala 38:24]
  wire [9:0] misc_auto_xbar_out_d_bits_source; // @[Top.scala 38:24]
  wire [3:0] misc_auto_xbar_out_d_bits_sink; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_d_bits_denied; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_d_bits_echo_blockisdirty; // @[Top.scala 38:24]
  wire [255:0] misc_auto_xbar_out_d_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_d_bits_corrupt; // @[Top.scala 38:24]
  wire  misc_auto_xbar_out_e_valid; // @[Top.scala 38:24]
  wire [3:0] misc_auto_xbar_out_e_bits_sink; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_a_ready; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_a_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_a_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_a_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_a_bits_size; // @[Top.scala 38:24]
  wire [3:0] misc_auto_binder_in_a_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_binder_in_a_bits_address; // @[Top.scala 38:24]
  wire [31:0] misc_auto_binder_in_a_bits_mask; // @[Top.scala 38:24]
  wire [255:0] misc_auto_binder_in_a_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_c_ready; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_c_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_c_bits_opcode; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_c_bits_size; // @[Top.scala 38:24]
  wire [3:0] misc_auto_binder_in_c_bits_source; // @[Top.scala 38:24]
  wire [35:0] misc_auto_binder_in_c_bits_address; // @[Top.scala 38:24]
  wire [255:0] misc_auto_binder_in_c_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_d_ready; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_d_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_d_bits_opcode; // @[Top.scala 38:24]
  wire [1:0] misc_auto_binder_in_d_bits_param; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_d_bits_size; // @[Top.scala 38:24]
  wire [3:0] misc_auto_binder_in_d_bits_source; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_d_bits_sink; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_d_bits_denied; // @[Top.scala 38:24]
  wire [255:0] misc_auto_binder_in_d_bits_data; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_e_ready; // @[Top.scala 38:24]
  wire  misc_auto_binder_in_e_valid; // @[Top.scala 38:24]
  wire [2:0] misc_auto_binder_in_e_bits_sink; // @[Top.scala 38:24]
  wire  misc_memory_0_awready; // @[Top.scala 38:24]
  wire  misc_memory_0_awvalid; // @[Top.scala 38:24]
  wire [13:0] misc_memory_0_awid; // @[Top.scala 38:24]
  wire [35:0] misc_memory_0_awaddr; // @[Top.scala 38:24]
  wire [7:0] misc_memory_0_awlen; // @[Top.scala 38:24]
  wire [2:0] misc_memory_0_awsize; // @[Top.scala 38:24]
  wire [1:0] misc_memory_0_awburst; // @[Top.scala 38:24]
  wire  misc_memory_0_awlock; // @[Top.scala 38:24]
  wire [3:0] misc_memory_0_awcache; // @[Top.scala 38:24]
  wire [2:0] misc_memory_0_awprot; // @[Top.scala 38:24]
  wire [3:0] misc_memory_0_awqos; // @[Top.scala 38:24]
  wire  misc_memory_0_wready; // @[Top.scala 38:24]
  wire  misc_memory_0_wvalid; // @[Top.scala 38:24]
  wire [255:0] misc_memory_0_wdata; // @[Top.scala 38:24]
  wire [31:0] misc_memory_0_wstrb; // @[Top.scala 38:24]
  wire  misc_memory_0_wlast; // @[Top.scala 38:24]
  wire  misc_memory_0_bready; // @[Top.scala 38:24]
  wire  misc_memory_0_bvalid; // @[Top.scala 38:24]
  wire [13:0] misc_memory_0_bid; // @[Top.scala 38:24]
  wire [1:0] misc_memory_0_bresp; // @[Top.scala 38:24]
  wire  misc_memory_0_arready; // @[Top.scala 38:24]
  wire  misc_memory_0_arvalid; // @[Top.scala 38:24]
  wire [13:0] misc_memory_0_arid; // @[Top.scala 38:24]
  wire [35:0] misc_memory_0_araddr; // @[Top.scala 38:24]
  wire [7:0] misc_memory_0_arlen; // @[Top.scala 38:24]
  wire [2:0] misc_memory_0_arsize; // @[Top.scala 38:24]
  wire [1:0] misc_memory_0_arburst; // @[Top.scala 38:24]
  wire  misc_memory_0_arlock; // @[Top.scala 38:24]
  wire [3:0] misc_memory_0_arcache; // @[Top.scala 38:24]
  wire [2:0] misc_memory_0_arprot; // @[Top.scala 38:24]
  wire [3:0] misc_memory_0_arqos; // @[Top.scala 38:24]
  wire  misc_memory_0_rready; // @[Top.scala 38:24]
  wire  misc_memory_0_rvalid; // @[Top.scala 38:24]
  wire [13:0] misc_memory_0_rid; // @[Top.scala 38:24]
  wire [255:0] misc_memory_0_rdata; // @[Top.scala 38:24]
  wire [1:0] misc_memory_0_rresp; // @[Top.scala 38:24]
  wire  misc_memory_0_rlast; // @[Top.scala 38:24]
  wire  misc_peripheral_0_awready; // @[Top.scala 38:24]
  wire  misc_peripheral_0_awvalid; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_awid; // @[Top.scala 38:24]
  wire [30:0] misc_peripheral_0_awaddr; // @[Top.scala 38:24]
  wire [7:0] misc_peripheral_0_awlen; // @[Top.scala 38:24]
  wire [2:0] misc_peripheral_0_awsize; // @[Top.scala 38:24]
  wire [1:0] misc_peripheral_0_awburst; // @[Top.scala 38:24]
  wire  misc_peripheral_0_awlock; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_awcache; // @[Top.scala 38:24]
  wire [2:0] misc_peripheral_0_awprot; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_awqos; // @[Top.scala 38:24]
  wire  misc_peripheral_0_wready; // @[Top.scala 38:24]
  wire  misc_peripheral_0_wvalid; // @[Top.scala 38:24]
  wire [63:0] misc_peripheral_0_wdata; // @[Top.scala 38:24]
  wire [7:0] misc_peripheral_0_wstrb; // @[Top.scala 38:24]
  wire  misc_peripheral_0_wlast; // @[Top.scala 38:24]
  wire  misc_peripheral_0_bready; // @[Top.scala 38:24]
  wire  misc_peripheral_0_bvalid; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_bid; // @[Top.scala 38:24]
  wire  misc_peripheral_0_arready; // @[Top.scala 38:24]
  wire  misc_peripheral_0_arvalid; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_arid; // @[Top.scala 38:24]
  wire [30:0] misc_peripheral_0_araddr; // @[Top.scala 38:24]
  wire [7:0] misc_peripheral_0_arlen; // @[Top.scala 38:24]
  wire [2:0] misc_peripheral_0_arsize; // @[Top.scala 38:24]
  wire [1:0] misc_peripheral_0_arburst; // @[Top.scala 38:24]
  wire  misc_peripheral_0_arlock; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_arcache; // @[Top.scala 38:24]
  wire [2:0] misc_peripheral_0_arprot; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_arqos; // @[Top.scala 38:24]
  wire  misc_peripheral_0_rready; // @[Top.scala 38:24]
  wire  misc_peripheral_0_rvalid; // @[Top.scala 38:24]
  wire [3:0] misc_peripheral_0_rid; // @[Top.scala 38:24]
  wire [63:0] misc_peripheral_0_rdata; // @[Top.scala 38:24]
  wire  misc_peripheral_0_rlast; // @[Top.scala 38:24]
  wire  misc_dma_0_awready; // @[Top.scala 38:24]
  wire  misc_dma_0_awvalid; // @[Top.scala 38:24]
  wire [13:0] misc_dma_0_awid; // @[Top.scala 38:24]
  wire [35:0] misc_dma_0_awaddr; // @[Top.scala 38:24]
  wire [7:0] misc_dma_0_awlen; // @[Top.scala 38:24]
  wire [2:0] misc_dma_0_awsize; // @[Top.scala 38:24]
  wire [1:0] misc_dma_0_awburst; // @[Top.scala 38:24]
  wire  misc_dma_0_wready; // @[Top.scala 38:24]
  wire  misc_dma_0_wvalid; // @[Top.scala 38:24]
  wire [255:0] misc_dma_0_wdata; // @[Top.scala 38:24]
  wire [31:0] misc_dma_0_wstrb; // @[Top.scala 38:24]
  wire  misc_dma_0_wlast; // @[Top.scala 38:24]
  wire  misc_dma_0_bready; // @[Top.scala 38:24]
  wire  misc_dma_0_bvalid; // @[Top.scala 38:24]
  wire [13:0] misc_dma_0_bid; // @[Top.scala 38:24]
  wire [1:0] misc_dma_0_bresp; // @[Top.scala 38:24]
  wire  misc_dma_0_arready; // @[Top.scala 38:24]
  wire  misc_dma_0_arvalid; // @[Top.scala 38:24]
  wire [13:0] misc_dma_0_arid; // @[Top.scala 38:24]
  wire [35:0] misc_dma_0_araddr; // @[Top.scala 38:24]
  wire [7:0] misc_dma_0_arlen; // @[Top.scala 38:24]
  wire [2:0] misc_dma_0_arsize; // @[Top.scala 38:24]
  wire [1:0] misc_dma_0_arburst; // @[Top.scala 38:24]
  wire  misc_dma_0_rready; // @[Top.scala 38:24]
  wire  misc_dma_0_rvalid; // @[Top.scala 38:24]
  wire [13:0] misc_dma_0_rid; // @[Top.scala 38:24]
  wire [255:0] misc_dma_0_rdata; // @[Top.scala 38:24]
  wire [1:0] misc_dma_0_rresp; // @[Top.scala 38:24]
  wire  misc_dma_0_rlast; // @[Top.scala 38:24]
  wire  misc_debug_module_io_resetCtrl_hartIsInReset_0; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_clock; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_reset; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_systemjtag_jtag_TCK; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_systemjtag_jtag_TMS; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_systemjtag_jtag_TDI; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_systemjtag_jtag_TDO_data; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_systemjtag_jtag_TDO_driven; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_systemjtag_reset; // @[Top.scala 38:24]
  wire [10:0] misc_debug_module_io_debugIO_systemjtag_mfr_id; // @[Top.scala 38:24]
  wire [15:0] misc_debug_module_io_debugIO_systemjtag_part_number; // @[Top.scala 38:24]
  wire [3:0] misc_debug_module_io_debugIO_systemjtag_version; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_ndreset; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_dmactive; // @[Top.scala 38:24]
  wire  misc_debug_module_io_debugIO_dmactiveAck; // @[Top.scala 38:24]
  wire  misc_debug_module_io_clock; // @[Top.scala 38:24]
  wire  misc_debug_module_io_reset; // @[Top.scala 38:24]
  wire [63:0] misc_ext_intrs; // @[Top.scala 38:24]
  wire  misc_pll0_lock; // @[Top.scala 38:24]
  wire [31:0] misc_pll0_ctrl_0; // @[Top.scala 38:24]
  wire [31:0] misc_pll0_ctrl_1; // @[Top.scala 38:24]
  wire [31:0] misc_pll0_ctrl_2; // @[Top.scala 38:24]
  wire [31:0] misc_pll0_ctrl_3; // @[Top.scala 38:24]
  wire [31:0] misc_pll0_ctrl_4; // @[Top.scala 38:24]
  wire [31:0] misc_pll0_ctrl_5; // @[Top.scala 38:24]
  wire [35:0] misc_cacheable_check_req_0_bits_addr; // @[Top.scala 38:24]
  wire [35:0] misc_cacheable_check_req_1_bits_addr; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_0_ld; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_0_st; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_0_instr; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_0_mmio; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_0_atomic; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_1_ld; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_1_st; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_1_instr; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_1_mmio; // @[Top.scala 38:24]
  wire  misc_cacheable_check_resp_1_atomic; // @[Top.scala 38:24]
  wire  core_with_l2_clock; // @[Top.scala 66:15]
  wire  core_with_l2_reset; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_beu_int_out_0; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_a_ready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_a_valid; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_a_bits_opcode; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_a_bits_param; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_a_bits_size; // @[Top.scala 66:15]
  wire [8:0] core_with_l2_auto_misc_memory_port_out_a_bits_source; // @[Top.scala 66:15]
  wire [35:0] core_with_l2_auto_misc_memory_port_out_a_bits_address; // @[Top.scala 66:15]
  wire [31:0] core_with_l2_auto_misc_memory_port_out_a_bits_mask; // @[Top.scala 66:15]
  wire [255:0] core_with_l2_auto_misc_memory_port_out_a_bits_data; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_bready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_bvalid; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_bopcode; // @[Top.scala 66:15]
  wire [1:0] core_with_l2_auto_misc_memory_port_out_bparam; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_bsize; // @[Top.scala 66:15]
  wire [35:0] core_with_l2_auto_misc_memory_port_out_baddress; // @[Top.scala 66:15]
  wire [31:0] core_with_l2_auto_misc_memory_port_out_bmask; // @[Top.scala 66:15]
  wire [255:0] core_with_l2_auto_misc_memory_port_out_bdata; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_bcorrupt; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_c_ready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_c_valid; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_c_bits_opcode; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_c_bits_param; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_c_bits_size; // @[Top.scala 66:15]
  wire [8:0] core_with_l2_auto_misc_memory_port_out_c_bits_source; // @[Top.scala 66:15]
  wire [35:0] core_with_l2_auto_misc_memory_port_out_c_bits_address; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_c_bits_echo_blockisdirty; // @[Top.scala 66:15]
  wire [255:0] core_with_l2_auto_misc_memory_port_out_c_bits_data; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_d_ready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_d_valid; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_d_bits_opcode; // @[Top.scala 66:15]
  wire [1:0] core_with_l2_auto_misc_memory_port_out_d_bits_param; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_memory_port_out_d_bits_size; // @[Top.scala 66:15]
  wire [8:0] core_with_l2_auto_misc_memory_port_out_d_bits_source; // @[Top.scala 66:15]
  wire [3:0] core_with_l2_auto_misc_memory_port_out_d_bits_sink; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_d_bits_denied; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_d_bits_echo_blockisdirty; // @[Top.scala 66:15]
  wire [255:0] core_with_l2_auto_misc_memory_port_out_d_bits_data; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_d_bits_corrupt; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_e_ready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_memory_port_out_e_valid; // @[Top.scala 66:15]
  wire [3:0] core_with_l2_auto_misc_memory_port_out_e_bits_sink; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_mmio_port_out_a_ready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_mmio_port_out_a_valid; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_mmio_port_out_a_bits_opcode; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_mmio_port_out_a_bits_size; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_mmio_port_out_a_bits_source; // @[Top.scala 66:15]
  wire [35:0] core_with_l2_auto_misc_mmio_port_out_a_bits_address; // @[Top.scala 66:15]
  wire [7:0] core_with_l2_auto_misc_mmio_port_out_a_bits_mask; // @[Top.scala 66:15]
  wire [63:0] core_with_l2_auto_misc_mmio_port_out_a_bits_data; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_mmio_port_out_d_ready; // @[Top.scala 66:15]
  wire  core_with_l2_auto_misc_mmio_port_out_d_valid; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_mmio_port_out_d_bits_opcode; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_mmio_port_out_d_bits_size; // @[Top.scala 66:15]
  wire [2:0] core_with_l2_auto_misc_mmio_port_out_d_bits_source; // @[Top.scala 66:15]
  wire [63:0] core_with_l2_auto_misc_mmio_port_out_d_bits_data; // @[Top.scala 66:15]
  wire  core_with_l2_auto_core_plic_int_sink_in_1_0; // @[Top.scala 66:15]
  wire  core_with_l2_auto_core_plic_int_sink_in_0_0; // @[Top.scala 66:15]
  wire  core_with_l2_auto_core_debug_int_sink_in_0; // @[Top.scala 66:15]
  wire  core_with_l2_auto_core_clint_int_sink_in_0; // @[Top.scala 66:15]
  wire  core_with_l2_auto_core_clint_int_sink_in_1; // @[Top.scala 66:15]
  wire [63:0] core_with_l2_io_hartId; // @[Top.scala 66:15]
  wire [35:0] core_with_l2_io_reset_vector; // @[Top.scala 66:15]
  wire  core_with_l2_io_cpu_halt; // @[Top.scala 66:15]
  wire  core_with_l2_sourcePaddr_valid; // @[Top.scala 66:15]
  wire [35:0] core_with_l2_sourcePaddr_bits; // @[Top.scala 66:15]
  wire  l3cacheOpt_clock; // @[Top.scala 72:15]
  wire  l3cacheOpt_reset; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_a_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_a_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_a_bits_opcode; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_a_bits_param; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_a_bits_size; // @[Top.scala 72:15]
  wire [9:0] l3cacheOpt_auto_in_a_bits_source; // @[Top.scala 72:15]
  wire [35:0] l3cacheOpt_auto_in_a_bits_address; // @[Top.scala 72:15]
  wire [31:0] l3cacheOpt_auto_in_a_bits_mask; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_in_a_bits_data; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_bready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_bvalid; // @[Top.scala 72:15]
  wire [1:0] l3cacheOpt_auto_in_bparam; // @[Top.scala 72:15]
  wire [35:0] l3cacheOpt_auto_in_baddress; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_in_bdata; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_c_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_c_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_c_bits_opcode; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_c_bits_param; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_c_bits_size; // @[Top.scala 72:15]
  wire [9:0] l3cacheOpt_auto_in_c_bits_source; // @[Top.scala 72:15]
  wire [35:0] l3cacheOpt_auto_in_c_bits_address; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_c_bits_echo_blockisdirty; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_in_c_bits_data; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_d_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_d_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_d_bits_opcode; // @[Top.scala 72:15]
  wire [1:0] l3cacheOpt_auto_in_d_bits_param; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_in_d_bits_size; // @[Top.scala 72:15]
  wire [9:0] l3cacheOpt_auto_in_d_bits_source; // @[Top.scala 72:15]
  wire [3:0] l3cacheOpt_auto_in_d_bits_sink; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_d_bits_denied; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_d_bits_echo_blockisdirty; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_in_d_bits_data; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_d_bits_corrupt; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_in_e_valid; // @[Top.scala 72:15]
  wire [3:0] l3cacheOpt_auto_in_e_bits_sink; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_a_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_a_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_a_bits_opcode; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_a_bits_param; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_a_bits_size; // @[Top.scala 72:15]
  wire [3:0] l3cacheOpt_auto_out_a_bits_source; // @[Top.scala 72:15]
  wire [35:0] l3cacheOpt_auto_out_a_bits_address; // @[Top.scala 72:15]
  wire [31:0] l3cacheOpt_auto_out_a_bits_mask; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_out_a_bits_data; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_c_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_c_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_c_bits_opcode; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_c_bits_size; // @[Top.scala 72:15]
  wire [3:0] l3cacheOpt_auto_out_c_bits_source; // @[Top.scala 72:15]
  wire [35:0] l3cacheOpt_auto_out_c_bits_address; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_out_c_bits_data; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_d_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_d_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_d_bits_opcode; // @[Top.scala 72:15]
  wire [1:0] l3cacheOpt_auto_out_d_bits_param; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_d_bits_size; // @[Top.scala 72:15]
  wire [3:0] l3cacheOpt_auto_out_d_bits_source; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_d_bits_sink; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_d_bits_denied; // @[Top.scala 72:15]
  wire [255:0] l3cacheOpt_auto_out_d_bits_data; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_e_ready; // @[Top.scala 72:15]
  wire  l3cacheOpt_auto_out_e_valid; // @[Top.scala 72:15]
  wire [2:0] l3cacheOpt_auto_out_e_bits_sink; // @[Top.scala 72:15]
  wire  l3cacheOpt_sourcePaddr_valid; // @[Top.scala 72:15]
  wire [35:0] l3cacheOpt_sourcePaddr_bits; // @[Top.scala 72:15]
  wire  intBuffer_clock; // @[IntBuffer.scala 22:31]
  wire  intBuffer_reset; // @[IntBuffer.scala 22:31]
  wire  intBuffer_auto_in_0; // @[IntBuffer.scala 22:31]
  wire  intBuffer_auto_out_0; // @[IntBuffer.scala 22:31]
  wire  reset_sync_resetSync_clock; // @[ResetGen.scala 40:27]
  wire  reset_sync_resetSync_reset; // @[ResetGen.scala 40:27]
  wire  reset_sync_resetSync_o_reset; // @[ResetGen.scala 40:27]
  wire  jtag_reset_sync_resetSync_clock; // @[ResetGen.scala 40:27]
  wire  jtag_reset_sync_resetSync_reset; // @[ResetGen.scala 40:27]
  wire  jtag_reset_sync_resetSync_o_reset; // @[ResetGen.scala 40:27]
  wire  resetGen_clock; // @[ResetGen.scala 66:32]
  wire  resetGen_reset; // @[ResetGen.scala 66:32]
  wire  resetGen_o_reset; // @[ResetGen.scala 66:32]
  SoCMisc misc ( // @[Top.scala 38:24]
    .clock(misc_clock),
    .reset(misc_reset),
    .auto_debugModule_debug_dmOuter_dmOuter_int_out_0(misc_auto_debugModule_debug_dmOuter_dmOuter_int_out_0),
    .auto_plic_int_in_0(misc_auto_plic_int_in_0),
    .auto_plic_int_out_1_0(misc_auto_plic_int_out_1_0),
    .auto_plic_int_out_0_0(misc_auto_plic_int_out_0_0),
    .auto_clint_int_out_0(misc_auto_clint_int_out_0),
    .auto_clint_int_out_1(misc_auto_clint_int_out_1),
    .auto_buffer_in_a_ready(misc_auto_buffer_in_a_ready),
    .auto_buffer_in_a_valid(misc_auto_buffer_in_a_valid),
    .auto_buffer_in_a_bits_opcode(misc_auto_buffer_in_a_bits_opcode),
    .auto_buffer_in_a_bits_param(misc_auto_buffer_in_a_bits_param),
    .auto_buffer_in_a_bits_size(misc_auto_buffer_in_a_bits_size),
    .auto_buffer_in_a_bits_source(misc_auto_buffer_in_a_bits_source),
    .auto_buffer_in_a_bits_address(misc_auto_buffer_in_a_bits_address),
    .auto_buffer_in_a_bits_mask(misc_auto_buffer_in_a_bits_mask),
    .auto_buffer_in_a_bits_data(misc_auto_buffer_in_a_bits_data),
    .auto_buffer_in_bready(misc_auto_buffer_in_bready),
    .auto_buffer_in_bvalid(misc_auto_buffer_in_bvalid),
    .auto_buffer_in_bopcode(misc_auto_buffer_in_bopcode),
    .auto_buffer_in_bparam(misc_auto_buffer_in_bparam),
    .auto_buffer_in_bsize(misc_auto_buffer_in_bsize),
    .auto_buffer_in_baddress(misc_auto_buffer_in_baddress),
    .auto_buffer_in_bmask(misc_auto_buffer_in_bmask),
    .auto_buffer_in_bdata(misc_auto_buffer_in_bdata),
    .auto_buffer_in_bcorrupt(misc_auto_buffer_in_bcorrupt),
    .auto_buffer_in_c_ready(misc_auto_buffer_in_c_ready),
    .auto_buffer_in_c_valid(misc_auto_buffer_in_c_valid),
    .auto_buffer_in_c_bits_opcode(misc_auto_buffer_in_c_bits_opcode),
    .auto_buffer_in_c_bits_param(misc_auto_buffer_in_c_bits_param),
    .auto_buffer_in_c_bits_size(misc_auto_buffer_in_c_bits_size),
    .auto_buffer_in_c_bits_source(misc_auto_buffer_in_c_bits_source),
    .auto_buffer_in_c_bits_address(misc_auto_buffer_in_c_bits_address),
    .auto_buffer_in_c_bits_echo_blockisdirty(misc_auto_buffer_in_c_bits_echo_blockisdirty),
    .auto_buffer_in_c_bits_data(misc_auto_buffer_in_c_bits_data),
    .auto_buffer_in_d_ready(misc_auto_buffer_in_d_ready),
    .auto_buffer_in_d_valid(misc_auto_buffer_in_d_valid),
    .auto_buffer_in_d_bits_opcode(misc_auto_buffer_in_d_bits_opcode),
    .auto_buffer_in_d_bits_param(misc_auto_buffer_in_d_bits_param),
    .auto_buffer_in_d_bits_size(misc_auto_buffer_in_d_bits_size),
    .auto_buffer_in_d_bits_source(misc_auto_buffer_in_d_bits_source),
    .auto_buffer_in_d_bits_sink(misc_auto_buffer_in_d_bits_sink),
    .auto_buffer_in_d_bits_denied(misc_auto_buffer_in_d_bits_denied),
    .auto_buffer_in_d_bits_echo_blockisdirty(misc_auto_buffer_in_d_bits_echo_blockisdirty),
    .auto_buffer_in_d_bits_data(misc_auto_buffer_in_d_bits_data),
    .auto_buffer_in_d_bits_corrupt(misc_auto_buffer_in_d_bits_corrupt),
    .auto_buffer_in_e_ready(misc_auto_buffer_in_e_ready),
    .auto_buffer_in_e_valid(misc_auto_buffer_in_e_valid),
    .auto_buffer_in_e_bits_sink(misc_auto_buffer_in_e_bits_sink),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_ready(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_ready),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_valid(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_valid),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_bits_opcode(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_opcode),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_bits_size(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_size),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_bits_source(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_source),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_bits_address(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_address),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_bits_mask(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_mask),
    .auto_L2_to_L3_peripheral_buffer_1_in_a_bits_data(misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_data),
    .auto_L2_to_L3_peripheral_buffer_1_in_d_ready(misc_auto_L2_to_L3_peripheral_buffer_1_in_d_ready),
    .auto_L2_to_L3_peripheral_buffer_1_in_d_valid(misc_auto_L2_to_L3_peripheral_buffer_1_in_d_valid),
    .auto_L2_to_L3_peripheral_buffer_1_in_d_bits_opcode(misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_opcode),
    .auto_L2_to_L3_peripheral_buffer_1_in_d_bits_size(misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_size),
    .auto_L2_to_L3_peripheral_buffer_1_in_d_bits_source(misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_source),
    .auto_L2_to_L3_peripheral_buffer_1_in_d_bits_data(misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_data),
    .auto_xbar_out_a_ready(misc_auto_xbar_out_a_ready),
    .auto_xbar_out_a_valid(misc_auto_xbar_out_a_valid),
    .auto_xbar_out_a_bits_opcode(misc_auto_xbar_out_a_bits_opcode),
    .auto_xbar_out_a_bits_param(misc_auto_xbar_out_a_bits_param),
    .auto_xbar_out_a_bits_size(misc_auto_xbar_out_a_bits_size),
    .auto_xbar_out_a_bits_source(misc_auto_xbar_out_a_bits_source),
    .auto_xbar_out_a_bits_address(misc_auto_xbar_out_a_bits_address),
    .auto_xbar_out_a_bits_mask(misc_auto_xbar_out_a_bits_mask),
    .auto_xbar_out_a_bits_data(misc_auto_xbar_out_a_bits_data),
    .auto_xbar_out_bready(misc_auto_xbar_out_bready),
    .auto_xbar_out_bvalid(misc_auto_xbar_out_bvalid),
    .auto_xbar_out_bparam(misc_auto_xbar_out_bparam),
    .auto_xbar_out_baddress(misc_auto_xbar_out_baddress),
    .auto_xbar_out_bdata(misc_auto_xbar_out_bdata),
    .auto_xbar_out_c_ready(misc_auto_xbar_out_c_ready),
    .auto_xbar_out_c_valid(misc_auto_xbar_out_c_valid),
    .auto_xbar_out_c_bits_opcode(misc_auto_xbar_out_c_bits_opcode),
    .auto_xbar_out_c_bits_param(misc_auto_xbar_out_c_bits_param),
    .auto_xbar_out_c_bits_size(misc_auto_xbar_out_c_bits_size),
    .auto_xbar_out_c_bits_source(misc_auto_xbar_out_c_bits_source),
    .auto_xbar_out_c_bits_address(misc_auto_xbar_out_c_bits_address),
    .auto_xbar_out_c_bits_echo_blockisdirty(misc_auto_xbar_out_c_bits_echo_blockisdirty),
    .auto_xbar_out_c_bits_data(misc_auto_xbar_out_c_bits_data),
    .auto_xbar_out_d_ready(misc_auto_xbar_out_d_ready),
    .auto_xbar_out_d_valid(misc_auto_xbar_out_d_valid),
    .auto_xbar_out_d_bits_opcode(misc_auto_xbar_out_d_bits_opcode),
    .auto_xbar_out_d_bits_param(misc_auto_xbar_out_d_bits_param),
    .auto_xbar_out_d_bits_size(misc_auto_xbar_out_d_bits_size),
    .auto_xbar_out_d_bits_source(misc_auto_xbar_out_d_bits_source),
    .auto_xbar_out_d_bits_sink(misc_auto_xbar_out_d_bits_sink),
    .auto_xbar_out_d_bits_denied(misc_auto_xbar_out_d_bits_denied),
    .auto_xbar_out_d_bits_echo_blockisdirty(misc_auto_xbar_out_d_bits_echo_blockisdirty),
    .auto_xbar_out_d_bits_data(misc_auto_xbar_out_d_bits_data),
    .auto_xbar_out_d_bits_corrupt(misc_auto_xbar_out_d_bits_corrupt),
    .auto_xbar_out_e_valid(misc_auto_xbar_out_e_valid),
    .auto_xbar_out_e_bits_sink(misc_auto_xbar_out_e_bits_sink),
    .auto_binder_in_a_ready(misc_auto_binder_in_a_ready),
    .auto_binder_in_a_valid(misc_auto_binder_in_a_valid),
    .auto_binder_in_a_bits_opcode(misc_auto_binder_in_a_bits_opcode),
    .auto_binder_in_a_bits_param(misc_auto_binder_in_a_bits_param),
    .auto_binder_in_a_bits_size(misc_auto_binder_in_a_bits_size),
    .auto_binder_in_a_bits_source(misc_auto_binder_in_a_bits_source),
    .auto_binder_in_a_bits_address(misc_auto_binder_in_a_bits_address),
    .auto_binder_in_a_bits_mask(misc_auto_binder_in_a_bits_mask),
    .auto_binder_in_a_bits_data(misc_auto_binder_in_a_bits_data),
    .auto_binder_in_c_ready(misc_auto_binder_in_c_ready),
    .auto_binder_in_c_valid(misc_auto_binder_in_c_valid),
    .auto_binder_in_c_bits_opcode(misc_auto_binder_in_c_bits_opcode),
    .auto_binder_in_c_bits_size(misc_auto_binder_in_c_bits_size),
    .auto_binder_in_c_bits_source(misc_auto_binder_in_c_bits_source),
    .auto_binder_in_c_bits_address(misc_auto_binder_in_c_bits_address),
    .auto_binder_in_c_bits_data(misc_auto_binder_in_c_bits_data),
    .auto_binder_in_d_ready(misc_auto_binder_in_d_ready),
    .auto_binder_in_d_valid(misc_auto_binder_in_d_valid),
    .auto_binder_in_d_bits_opcode(misc_auto_binder_in_d_bits_opcode),
    .auto_binder_in_d_bits_param(misc_auto_binder_in_d_bits_param),
    .auto_binder_in_d_bits_size(misc_auto_binder_in_d_bits_size),
    .auto_binder_in_d_bits_source(misc_auto_binder_in_d_bits_source),
    .auto_binder_in_d_bits_sink(misc_auto_binder_in_d_bits_sink),
    .auto_binder_in_d_bits_denied(misc_auto_binder_in_d_bits_denied),
    .auto_binder_in_d_bits_data(misc_auto_binder_in_d_bits_data),
    .auto_binder_in_e_ready(misc_auto_binder_in_e_ready),
    .auto_binder_in_e_valid(misc_auto_binder_in_e_valid),
    .auto_binder_in_e_bits_sink(misc_auto_binder_in_e_bits_sink),
    .memory_0_awready(misc_memory_0_awready),
    .memory_0_awvalid(misc_memory_0_awvalid),
    .memory_0_awid(misc_memory_0_awid),
    .memory_0_awaddr(misc_memory_0_awaddr),
    .memory_0_awlen(misc_memory_0_awlen),
    .memory_0_awsize(misc_memory_0_awsize),
    .memory_0_awburst(misc_memory_0_awburst),
    .memory_0_awlock(misc_memory_0_awlock),
    .memory_0_awcache(misc_memory_0_awcache),
    .memory_0_awprot(misc_memory_0_awprot),
    .memory_0_awqos(misc_memory_0_awqos),
    .memory_0_wready(misc_memory_0_wready),
    .memory_0_wvalid(misc_memory_0_wvalid),
    .memory_0_wdata(misc_memory_0_wdata),
    .memory_0_wstrb(misc_memory_0_wstrb),
    .memory_0_wlast(misc_memory_0_wlast),
    .memory_0_bready(misc_memory_0_bready),
    .memory_0_bvalid(misc_memory_0_bvalid),
    .memory_0_bid(misc_memory_0_bid),
    .memory_0_bresp(misc_memory_0_bresp),
    .memory_0_arready(misc_memory_0_arready),
    .memory_0_arvalid(misc_memory_0_arvalid),
    .memory_0_arid(misc_memory_0_arid),
    .memory_0_araddr(misc_memory_0_araddr),
    .memory_0_arlen(misc_memory_0_arlen),
    .memory_0_arsize(misc_memory_0_arsize),
    .memory_0_arburst(misc_memory_0_arburst),
    .memory_0_arlock(misc_memory_0_arlock),
    .memory_0_arcache(misc_memory_0_arcache),
    .memory_0_arprot(misc_memory_0_arprot),
    .memory_0_arqos(misc_memory_0_arqos),
    .memory_0_rready(misc_memory_0_rready),
    .memory_0_rvalid(misc_memory_0_rvalid),
    .memory_0_rid(misc_memory_0_rid),
    .memory_0_rdata(misc_memory_0_rdata),
    .memory_0_rresp(misc_memory_0_rresp),
    .memory_0_rlast(misc_memory_0_rlast),
    .peripheral_0_awready(misc_peripheral_0_awready),
    .peripheral_0_awvalid(misc_peripheral_0_awvalid),
    .peripheral_0_awid(misc_peripheral_0_awid),
    .peripheral_0_awaddr(misc_peripheral_0_awaddr),
    .peripheral_0_awlen(misc_peripheral_0_awlen),
    .peripheral_0_awsize(misc_peripheral_0_awsize),
    .peripheral_0_awburst(misc_peripheral_0_awburst),
    .peripheral_0_awlock(misc_peripheral_0_awlock),
    .peripheral_0_awcache(misc_peripheral_0_awcache),
    .peripheral_0_awprot(misc_peripheral_0_awprot),
    .peripheral_0_awqos(misc_peripheral_0_awqos),
    .peripheral_0_wready(misc_peripheral_0_wready),
    .peripheral_0_wvalid(misc_peripheral_0_wvalid),
    .peripheral_0_wdata(misc_peripheral_0_wdata),
    .peripheral_0_wstrb(misc_peripheral_0_wstrb),
    .peripheral_0_wlast(misc_peripheral_0_wlast),
    .peripheral_0_bready(misc_peripheral_0_bready),
    .peripheral_0_bvalid(misc_peripheral_0_bvalid),
    .peripheral_0_bid(misc_peripheral_0_bid),
    .peripheral_0_arready(misc_peripheral_0_arready),
    .peripheral_0_arvalid(misc_peripheral_0_arvalid),
    .peripheral_0_arid(misc_peripheral_0_arid),
    .peripheral_0_araddr(misc_peripheral_0_araddr),
    .peripheral_0_arlen(misc_peripheral_0_arlen),
    .peripheral_0_arsize(misc_peripheral_0_arsize),
    .peripheral_0_arburst(misc_peripheral_0_arburst),
    .peripheral_0_arlock(misc_peripheral_0_arlock),
    .peripheral_0_arcache(misc_peripheral_0_arcache),
    .peripheral_0_arprot(misc_peripheral_0_arprot),
    .peripheral_0_arqos(misc_peripheral_0_arqos),
    .peripheral_0_rready(misc_peripheral_0_rready),
    .peripheral_0_rvalid(misc_peripheral_0_rvalid),
    .peripheral_0_rid(misc_peripheral_0_rid),
    .peripheral_0_rdata(misc_peripheral_0_rdata),
    .peripheral_0_rlast(misc_peripheral_0_rlast),
    .dma_0_awready(misc_dma_0_awready),
    .dma_0_awvalid(misc_dma_0_awvalid),
    .dma_0_awid(misc_dma_0_awid),
    .dma_0_awaddr(misc_dma_0_awaddr),
    .dma_0_awlen(misc_dma_0_awlen),
    .dma_0_awsize(misc_dma_0_awsize),
    .dma_0_awburst(misc_dma_0_awburst),
    .dma_0_wready(misc_dma_0_wready),
    .dma_0_wvalid(misc_dma_0_wvalid),
    .dma_0_wdata(misc_dma_0_wdata),
    .dma_0_wstrb(misc_dma_0_wstrb),
    .dma_0_wlast(misc_dma_0_wlast),
    .dma_0_bready(misc_dma_0_bready),
    .dma_0_bvalid(misc_dma_0_bvalid),
    .dma_0_bid(misc_dma_0_bid),
    .dma_0_bresp(misc_dma_0_bresp),
    .dma_0_arready(misc_dma_0_arready),
    .dma_0_arvalid(misc_dma_0_arvalid),
    .dma_0_arid(misc_dma_0_arid),
    .dma_0_araddr(misc_dma_0_araddr),
    .dma_0_arlen(misc_dma_0_arlen),
    .dma_0_arsize(misc_dma_0_arsize),
    .dma_0_arburst(misc_dma_0_arburst),
    .dma_0_rready(misc_dma_0_rready),
    .dma_0_rvalid(misc_dma_0_rvalid),
    .dma_0_rid(misc_dma_0_rid),
    .dma_0_rdata(misc_dma_0_rdata),
    .dma_0_rresp(misc_dma_0_rresp),
    .dma_0_rlast(misc_dma_0_rlast),
    .debug_module_io_resetCtrl_hartIsInReset_0(misc_debug_module_io_resetCtrl_hartIsInReset_0),
    .debug_module_io_debugIO_clock(misc_debug_module_io_debugIO_clock),
    .debug_module_io_debugIO_reset(misc_debug_module_io_debugIO_reset),
    .debug_module_io_debugIO_systemjtag_jtag_TCK(misc_debug_module_io_debugIO_systemjtag_jtag_TCK),
    .debug_module_io_debugIO_systemjtag_jtag_TMS(misc_debug_module_io_debugIO_systemjtag_jtag_TMS),
    .debug_module_io_debugIO_systemjtag_jtag_TDI(misc_debug_module_io_debugIO_systemjtag_jtag_TDI),
    .debug_module_io_debugIO_systemjtag_jtag_TDO_data(misc_debug_module_io_debugIO_systemjtag_jtag_TDO_data),
    .debug_module_io_debugIO_systemjtag_jtag_TDO_driven(misc_debug_module_io_debugIO_systemjtag_jtag_TDO_driven),
    .debug_module_io_debugIO_systemjtag_reset(misc_debug_module_io_debugIO_systemjtag_reset),
    .debug_module_io_debugIO_systemjtag_mfr_id(misc_debug_module_io_debugIO_systemjtag_mfr_id),
    .debug_module_io_debugIO_systemjtag_part_number(misc_debug_module_io_debugIO_systemjtag_part_number),
    .debug_module_io_debugIO_systemjtag_version(misc_debug_module_io_debugIO_systemjtag_version),
    .debug_module_io_debugIO_ndreset(misc_debug_module_io_debugIO_ndreset),
    .debug_module_io_debugIO_dmactive(misc_debug_module_io_debugIO_dmactive),
    .debug_module_io_debugIO_dmactiveAck(misc_debug_module_io_debugIO_dmactiveAck),
    .debug_module_io_clock(misc_debug_module_io_clock),
    .debug_module_io_reset(misc_debug_module_io_reset),
    .ext_intrs(misc_ext_intrs),
    .pll0_lock(misc_pll0_lock),
    .pll0_ctrl_0(misc_pll0_ctrl_0),
    .pll0_ctrl_1(misc_pll0_ctrl_1),
    .pll0_ctrl_2(misc_pll0_ctrl_2),
    .pll0_ctrl_3(misc_pll0_ctrl_3),
    .pll0_ctrl_4(misc_pll0_ctrl_4),
    .pll0_ctrl_5(misc_pll0_ctrl_5),
    .cacheable_check_req_0_bits_addr(misc_cacheable_check_req_0_bits_addr),
    .cacheable_check_req_1_bits_addr(misc_cacheable_check_req_1_bits_addr),
    .cacheable_check_resp_0_ld(misc_cacheable_check_resp_0_ld),
    .cacheable_check_resp_0_st(misc_cacheable_check_resp_0_st),
    .cacheable_check_resp_0_instr(misc_cacheable_check_resp_0_instr),
    .cacheable_check_resp_0_mmio(misc_cacheable_check_resp_0_mmio),
    .cacheable_check_resp_0_atomic(misc_cacheable_check_resp_0_atomic),
    .cacheable_check_resp_1_ld(misc_cacheable_check_resp_1_ld),
    .cacheable_check_resp_1_st(misc_cacheable_check_resp_1_st),
    .cacheable_check_resp_1_instr(misc_cacheable_check_resp_1_instr),
    .cacheable_check_resp_1_mmio(misc_cacheable_check_resp_1_mmio),
    .cacheable_check_resp_1_atomic(misc_cacheable_check_resp_1_atomic)
  );
  XSTile core_with_l2 ( // @[Top.scala 66:15]
    .clock(core_with_l2_clock),
    .reset(core_with_l2_reset),
    .auto_misc_beu_int_out_0(core_with_l2_auto_misc_beu_int_out_0),
    .auto_misc_memory_port_out_a_ready(core_with_l2_auto_misc_memory_port_out_a_ready),
    .auto_misc_memory_port_out_a_valid(core_with_l2_auto_misc_memory_port_out_a_valid),
    .auto_misc_memory_port_out_a_bits_opcode(core_with_l2_auto_misc_memory_port_out_a_bits_opcode),
    .auto_misc_memory_port_out_a_bits_param(core_with_l2_auto_misc_memory_port_out_a_bits_param),
    .auto_misc_memory_port_out_a_bits_size(core_with_l2_auto_misc_memory_port_out_a_bits_size),
    .auto_misc_memory_port_out_a_bits_source(core_with_l2_auto_misc_memory_port_out_a_bits_source),
    .auto_misc_memory_port_out_a_bits_address(core_with_l2_auto_misc_memory_port_out_a_bits_address),
    .auto_misc_memory_port_out_a_bits_mask(core_with_l2_auto_misc_memory_port_out_a_bits_mask),
    .auto_misc_memory_port_out_a_bits_data(core_with_l2_auto_misc_memory_port_out_a_bits_data),
    .auto_misc_memory_port_out_bready(core_with_l2_auto_misc_memory_port_out_bready),
    .auto_misc_memory_port_out_bvalid(core_with_l2_auto_misc_memory_port_out_bvalid),
    .auto_misc_memory_port_out_bopcode(core_with_l2_auto_misc_memory_port_out_bopcode),
    .auto_misc_memory_port_out_bparam(core_with_l2_auto_misc_memory_port_out_bparam),
    .auto_misc_memory_port_out_bsize(core_with_l2_auto_misc_memory_port_out_bsize),
    .auto_misc_memory_port_out_baddress(core_with_l2_auto_misc_memory_port_out_baddress),
    .auto_misc_memory_port_out_bmask(core_with_l2_auto_misc_memory_port_out_bmask),
    .auto_misc_memory_port_out_bdata(core_with_l2_auto_misc_memory_port_out_bdata),
    .auto_misc_memory_port_out_bcorrupt(core_with_l2_auto_misc_memory_port_out_bcorrupt),
    .auto_misc_memory_port_out_c_ready(core_with_l2_auto_misc_memory_port_out_c_ready),
    .auto_misc_memory_port_out_c_valid(core_with_l2_auto_misc_memory_port_out_c_valid),
    .auto_misc_memory_port_out_c_bits_opcode(core_with_l2_auto_misc_memory_port_out_c_bits_opcode),
    .auto_misc_memory_port_out_c_bits_param(core_with_l2_auto_misc_memory_port_out_c_bits_param),
    .auto_misc_memory_port_out_c_bits_size(core_with_l2_auto_misc_memory_port_out_c_bits_size),
    .auto_misc_memory_port_out_c_bits_source(core_with_l2_auto_misc_memory_port_out_c_bits_source),
    .auto_misc_memory_port_out_c_bits_address(core_with_l2_auto_misc_memory_port_out_c_bits_address),
    .auto_misc_memory_port_out_c_bits_echo_blockisdirty(core_with_l2_auto_misc_memory_port_out_c_bits_echo_blockisdirty)
      ,
    .auto_misc_memory_port_out_c_bits_data(core_with_l2_auto_misc_memory_port_out_c_bits_data),
    .auto_misc_memory_port_out_d_ready(core_with_l2_auto_misc_memory_port_out_d_ready),
    .auto_misc_memory_port_out_d_valid(core_with_l2_auto_misc_memory_port_out_d_valid),
    .auto_misc_memory_port_out_d_bits_opcode(core_with_l2_auto_misc_memory_port_out_d_bits_opcode),
    .auto_misc_memory_port_out_d_bits_param(core_with_l2_auto_misc_memory_port_out_d_bits_param),
    .auto_misc_memory_port_out_d_bits_size(core_with_l2_auto_misc_memory_port_out_d_bits_size),
    .auto_misc_memory_port_out_d_bits_source(core_with_l2_auto_misc_memory_port_out_d_bits_source),
    .auto_misc_memory_port_out_d_bits_sink(core_with_l2_auto_misc_memory_port_out_d_bits_sink),
    .auto_misc_memory_port_out_d_bits_denied(core_with_l2_auto_misc_memory_port_out_d_bits_denied),
    .auto_misc_memory_port_out_d_bits_echo_blockisdirty(core_with_l2_auto_misc_memory_port_out_d_bits_echo_blockisdirty)
      ,
    .auto_misc_memory_port_out_d_bits_data(core_with_l2_auto_misc_memory_port_out_d_bits_data),
    .auto_misc_memory_port_out_d_bits_corrupt(core_with_l2_auto_misc_memory_port_out_d_bits_corrupt),
    .auto_misc_memory_port_out_e_ready(core_with_l2_auto_misc_memory_port_out_e_ready),
    .auto_misc_memory_port_out_e_valid(core_with_l2_auto_misc_memory_port_out_e_valid),
    .auto_misc_memory_port_out_e_bits_sink(core_with_l2_auto_misc_memory_port_out_e_bits_sink),
    .auto_misc_mmio_port_out_a_ready(core_with_l2_auto_misc_mmio_port_out_a_ready),
    .auto_misc_mmio_port_out_a_valid(core_with_l2_auto_misc_mmio_port_out_a_valid),
    .auto_misc_mmio_port_out_a_bits_opcode(core_with_l2_auto_misc_mmio_port_out_a_bits_opcode),
    .auto_misc_mmio_port_out_a_bits_size(core_with_l2_auto_misc_mmio_port_out_a_bits_size),
    .auto_misc_mmio_port_out_a_bits_source(core_with_l2_auto_misc_mmio_port_out_a_bits_source),
    .auto_misc_mmio_port_out_a_bits_address(core_with_l2_auto_misc_mmio_port_out_a_bits_address),
    .auto_misc_mmio_port_out_a_bits_mask(core_with_l2_auto_misc_mmio_port_out_a_bits_mask),
    .auto_misc_mmio_port_out_a_bits_data(core_with_l2_auto_misc_mmio_port_out_a_bits_data),
    .auto_misc_mmio_port_out_d_ready(core_with_l2_auto_misc_mmio_port_out_d_ready),
    .auto_misc_mmio_port_out_d_valid(core_with_l2_auto_misc_mmio_port_out_d_valid),
    .auto_misc_mmio_port_out_d_bits_opcode(core_with_l2_auto_misc_mmio_port_out_d_bits_opcode),
    .auto_misc_mmio_port_out_d_bits_size(core_with_l2_auto_misc_mmio_port_out_d_bits_size),
    .auto_misc_mmio_port_out_d_bits_source(core_with_l2_auto_misc_mmio_port_out_d_bits_source),
    .auto_misc_mmio_port_out_d_bits_data(core_with_l2_auto_misc_mmio_port_out_d_bits_data),
    .auto_core_plic_int_sink_in_1_0(core_with_l2_auto_core_plic_int_sink_in_1_0),
    .auto_core_plic_int_sink_in_0_0(core_with_l2_auto_core_plic_int_sink_in_0_0),
    .auto_core_debug_int_sink_in_0(core_with_l2_auto_core_debug_int_sink_in_0),
    .auto_core_clint_int_sink_in_0(core_with_l2_auto_core_clint_int_sink_in_0),
    .auto_core_clint_int_sink_in_1(core_with_l2_auto_core_clint_int_sink_in_1),
    .io_hartId(core_with_l2_io_hartId),
    .io_reset_vector(core_with_l2_io_reset_vector),
    .io_cpu_halt(core_with_l2_io_cpu_halt),
    .sourcePaddr_valid(core_with_l2_sourcePaddr_valid),
    .sourcePaddr_bits(core_with_l2_sourcePaddr_bits)
  );
  HuanCun l3cacheOpt ( // @[Top.scala 72:15]
    .clock(l3cacheOpt_clock),
    .reset(l3cacheOpt_reset),
    .auto_in_a_ready(l3cacheOpt_auto_in_a_ready),
    .auto_in_a_valid(l3cacheOpt_auto_in_a_valid),
    .auto_in_a_bits_opcode(l3cacheOpt_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(l3cacheOpt_auto_in_a_bits_param),
    .auto_in_a_bits_size(l3cacheOpt_auto_in_a_bits_size),
    .auto_in_a_bits_source(l3cacheOpt_auto_in_a_bits_source),
    .auto_in_a_bits_address(l3cacheOpt_auto_in_a_bits_address),
    .auto_in_a_bits_mask(l3cacheOpt_auto_in_a_bits_mask),
    .auto_in_a_bits_data(l3cacheOpt_auto_in_a_bits_data),
    .auto_in_bready(l3cacheOpt_auto_in_bready),
    .auto_in_bvalid(l3cacheOpt_auto_in_bvalid),
    .auto_in_bparam(l3cacheOpt_auto_in_bparam),
    .auto_in_baddress(l3cacheOpt_auto_in_baddress),
    .auto_in_bdata(l3cacheOpt_auto_in_bdata),
    .auto_in_c_ready(l3cacheOpt_auto_in_c_ready),
    .auto_in_c_valid(l3cacheOpt_auto_in_c_valid),
    .auto_in_c_bits_opcode(l3cacheOpt_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(l3cacheOpt_auto_in_c_bits_param),
    .auto_in_c_bits_size(l3cacheOpt_auto_in_c_bits_size),
    .auto_in_c_bits_source(l3cacheOpt_auto_in_c_bits_source),
    .auto_in_c_bits_address(l3cacheOpt_auto_in_c_bits_address),
    .auto_in_c_bits_echo_blockisdirty(l3cacheOpt_auto_in_c_bits_echo_blockisdirty),
    .auto_in_c_bits_data(l3cacheOpt_auto_in_c_bits_data),
    .auto_in_d_ready(l3cacheOpt_auto_in_d_ready),
    .auto_in_d_valid(l3cacheOpt_auto_in_d_valid),
    .auto_in_d_bits_opcode(l3cacheOpt_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(l3cacheOpt_auto_in_d_bits_param),
    .auto_in_d_bits_size(l3cacheOpt_auto_in_d_bits_size),
    .auto_in_d_bits_source(l3cacheOpt_auto_in_d_bits_source),
    .auto_in_d_bits_sink(l3cacheOpt_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(l3cacheOpt_auto_in_d_bits_denied),
    .auto_in_d_bits_echo_blockisdirty(l3cacheOpt_auto_in_d_bits_echo_blockisdirty),
    .auto_in_d_bits_data(l3cacheOpt_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(l3cacheOpt_auto_in_d_bits_corrupt),
    .auto_in_e_valid(l3cacheOpt_auto_in_e_valid),
    .auto_in_e_bits_sink(l3cacheOpt_auto_in_e_bits_sink),
    .auto_out_a_ready(l3cacheOpt_auto_out_a_ready),
    .auto_out_a_valid(l3cacheOpt_auto_out_a_valid),
    .auto_out_a_bits_opcode(l3cacheOpt_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(l3cacheOpt_auto_out_a_bits_param),
    .auto_out_a_bits_size(l3cacheOpt_auto_out_a_bits_size),
    .auto_out_a_bits_source(l3cacheOpt_auto_out_a_bits_source),
    .auto_out_a_bits_address(l3cacheOpt_auto_out_a_bits_address),
    .auto_out_a_bits_mask(l3cacheOpt_auto_out_a_bits_mask),
    .auto_out_a_bits_data(l3cacheOpt_auto_out_a_bits_data),
    .auto_out_c_ready(l3cacheOpt_auto_out_c_ready),
    .auto_out_c_valid(l3cacheOpt_auto_out_c_valid),
    .auto_out_c_bits_opcode(l3cacheOpt_auto_out_c_bits_opcode),
    .auto_out_c_bits_size(l3cacheOpt_auto_out_c_bits_size),
    .auto_out_c_bits_source(l3cacheOpt_auto_out_c_bits_source),
    .auto_out_c_bits_address(l3cacheOpt_auto_out_c_bits_address),
    .auto_out_c_bits_data(l3cacheOpt_auto_out_c_bits_data),
    .auto_out_d_ready(l3cacheOpt_auto_out_d_ready),
    .auto_out_d_valid(l3cacheOpt_auto_out_d_valid),
    .auto_out_d_bits_opcode(l3cacheOpt_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(l3cacheOpt_auto_out_d_bits_param),
    .auto_out_d_bits_size(l3cacheOpt_auto_out_d_bits_size),
    .auto_out_d_bits_source(l3cacheOpt_auto_out_d_bits_source),
    .auto_out_d_bits_sink(l3cacheOpt_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(l3cacheOpt_auto_out_d_bits_denied),
    .auto_out_d_bits_data(l3cacheOpt_auto_out_d_bits_data),
    .auto_out_e_ready(l3cacheOpt_auto_out_e_ready),
    .auto_out_e_valid(l3cacheOpt_auto_out_e_valid),
    .auto_out_e_bits_sink(l3cacheOpt_auto_out_e_bits_sink),
    .sourcePaddr_valid(l3cacheOpt_sourcePaddr_valid),
    .sourcePaddr_bits(l3cacheOpt_sourcePaddr_bits)
  );
  IntBuffer intBuffer ( // @[IntBuffer.scala 22:31]
    .clock(intBuffer_clock),
    .reset(intBuffer_reset),
    .auto_in_0(intBuffer_auto_in_0),
    .auto_out_0(intBuffer_auto_out_0)
  );
  ResetGen reset_sync_resetSync ( // @[ResetGen.scala 40:27]
    .clock(reset_sync_resetSync_clock),
    .reset(reset_sync_resetSync_reset),
    .o_reset(reset_sync_resetSync_o_reset)
  );
  ResetGen jtag_reset_sync_resetSync ( // @[ResetGen.scala 40:27]
    .clock(jtag_reset_sync_resetSync_clock),
    .reset(jtag_reset_sync_resetSync_reset),
    .o_reset(jtag_reset_sync_resetSync_o_reset)
  );
  ResetGen resetGen ( // @[ResetGen.scala 66:32]
    .clock(resetGen_clock),
    .reset(resetGen_reset),
    .o_reset(resetGen_o_reset)
  );
  assign dma_0_awready = misc_dma_0_awready; // @[Top.scala 137:14]
  assign dma_0_wready = misc_dma_0_wready; // @[Top.scala 137:14]
  assign dma_0_bvalid = misc_dma_0_bvalid; // @[Top.scala 137:14]
  assign dma_0_bid = misc_dma_0_bid; // @[Top.scala 137:14]
  assign dma_0_bresp = misc_dma_0_bresp; // @[Top.scala 137:14]
  assign dma_0_arready = misc_dma_0_arready; // @[Top.scala 137:14]
  assign dma_0_rvalid = misc_dma_0_rvalid; // @[Top.scala 137:14]
  assign dma_0_rid = misc_dma_0_rid; // @[Top.scala 137:14]
  assign dma_0_rdata = misc_dma_0_rdata; // @[Top.scala 137:14]
  assign dma_0_rresp = misc_dma_0_rresp; // @[Top.scala 137:14]
  assign dma_0_rlast = misc_dma_0_rlast; // @[Top.scala 137:14]
  assign peripheral_0_awvalid = misc_peripheral_0_awvalid; // @[Top.scala 138:16]
  assign peripheral_0_awid = misc_peripheral_0_awid; // @[Top.scala 138:16]
  assign peripheral_0_awaddr = misc_peripheral_0_awaddr; // @[Top.scala 138:16]
  assign peripheral_0_awlen = misc_peripheral_0_awlen; // @[Top.scala 138:16]
  assign peripheral_0_awsize = misc_peripheral_0_awsize; // @[Top.scala 138:16]
  assign peripheral_0_awburst = misc_peripheral_0_awburst; // @[Top.scala 138:16]
  assign peripheral_0_awlock = misc_peripheral_0_awlock; // @[Top.scala 138:16]
  assign peripheral_0_awcache = misc_peripheral_0_awcache; // @[Top.scala 138:16]
  assign peripheral_0_awprot = misc_peripheral_0_awprot; // @[Top.scala 138:16]
  assign peripheral_0_awqos = misc_peripheral_0_awqos; // @[Top.scala 138:16]
  assign peripheral_0_wvalid = misc_peripheral_0_wvalid; // @[Top.scala 138:16]
  assign peripheral_0_wdata = misc_peripheral_0_wdata; // @[Top.scala 138:16]
  assign peripheral_0_wstrb = misc_peripheral_0_wstrb; // @[Top.scala 138:16]
  assign peripheral_0_wlast = misc_peripheral_0_wlast; // @[Top.scala 138:16]
  assign peripheral_0_bready = misc_peripheral_0_bready; // @[Top.scala 138:16]
  assign peripheral_0_arvalid = misc_peripheral_0_arvalid; // @[Top.scala 138:16]
  assign peripheral_0_arid = misc_peripheral_0_arid; // @[Top.scala 138:16]
  assign peripheral_0_araddr = misc_peripheral_0_araddr; // @[Top.scala 138:16]
  assign peripheral_0_arlen = misc_peripheral_0_arlen; // @[Top.scala 138:16]
  assign peripheral_0_arsize = misc_peripheral_0_arsize; // @[Top.scala 138:16]
  assign peripheral_0_arburst = misc_peripheral_0_arburst; // @[Top.scala 138:16]
  assign peripheral_0_arlock = misc_peripheral_0_arlock; // @[Top.scala 138:16]
  assign peripheral_0_arcache = misc_peripheral_0_arcache; // @[Top.scala 138:16]
  assign peripheral_0_arprot = misc_peripheral_0_arprot; // @[Top.scala 138:16]
  assign peripheral_0_arqos = misc_peripheral_0_arqos; // @[Top.scala 138:16]
  assign peripheral_0_rready = misc_peripheral_0_rready; // @[Top.scala 138:16]
  assign memory_0_awvalid = misc_memory_0_awvalid; // @[Top.scala 139:12]
  assign memory_0_awid = misc_memory_0_awid; // @[Top.scala 139:12]
  assign memory_0_awaddr = misc_memory_0_awaddr; // @[Top.scala 139:12]
  assign memory_0_awlen = misc_memory_0_awlen; // @[Top.scala 139:12]
  assign memory_0_awsize = misc_memory_0_awsize; // @[Top.scala 139:12]
  assign memory_0_awburst = misc_memory_0_awburst; // @[Top.scala 139:12]
  assign memory_0_awlock = misc_memory_0_awlock; // @[Top.scala 139:12]
  assign memory_0_awcache = misc_memory_0_awcache; // @[Top.scala 139:12]
  assign memory_0_awprot = misc_memory_0_awprot; // @[Top.scala 139:12]
  assign memory_0_awqos = misc_memory_0_awqos; // @[Top.scala 139:12]
  assign memory_0_wvalid = misc_memory_0_wvalid; // @[Top.scala 139:12]
  assign memory_0_wdata = misc_memory_0_wdata; // @[Top.scala 139:12]
  assign memory_0_wstrb = misc_memory_0_wstrb; // @[Top.scala 139:12]
  assign memory_0_wlast = misc_memory_0_wlast; // @[Top.scala 139:12]
  assign memory_0_bready = misc_memory_0_bready; // @[Top.scala 139:12]
  assign memory_0_arvalid = misc_memory_0_arvalid; // @[Top.scala 139:12]
  assign memory_0_arid = misc_memory_0_arid; // @[Top.scala 139:12]
  assign memory_0_araddr = misc_memory_0_araddr; // @[Top.scala 139:12]
  assign memory_0_arlen = misc_memory_0_arlen; // @[Top.scala 139:12]
  assign memory_0_arsize = misc_memory_0_arsize; // @[Top.scala 139:12]
  assign memory_0_arburst = misc_memory_0_arburst; // @[Top.scala 139:12]
  assign memory_0_arlock = misc_memory_0_arlock; // @[Top.scala 139:12]
  assign memory_0_arcache = misc_memory_0_arcache; // @[Top.scala 139:12]
  assign memory_0_arprot = misc_memory_0_arprot; // @[Top.scala 139:12]
  assign memory_0_arqos = misc_memory_0_arqos; // @[Top.scala 139:12]
  assign memory_0_rready = misc_memory_0_rready; // @[Top.scala 139:12]
  assign io_pll0_ctrl_0 = misc_pll0_ctrl_0; // @[Top.scala 182:18]
  assign io_pll0_ctrl_1 = misc_pll0_ctrl_1; // @[Top.scala 182:18]
  assign io_pll0_ctrl_2 = misc_pll0_ctrl_2; // @[Top.scala 182:18]
  assign io_pll0_ctrl_3 = misc_pll0_ctrl_3; // @[Top.scala 182:18]
  assign io_pll0_ctrl_4 = misc_pll0_ctrl_4; // @[Top.scala 182:18]
  assign io_pll0_ctrl_5 = misc_pll0_ctrl_5; // @[Top.scala 182:18]
  assign io_systemjtag_jtag_TDO_data = misc_debug_module_io_debugIO_systemjtag_jtag_TDO_data; // @[Top.scala 221:21]
  assign io_systemjtag_jtag_TDO_driven = misc_debug_module_io_debugIO_systemjtag_jtag_TDO_driven; // @[Top.scala 221:21]
  assign io_debug_reset = misc_debug_module_io_debugIO_ndreset; // @[Top.scala 170:20]
  assign io_cacheable_check_resp_0_ld = misc_cacheable_check_resp_0_ld; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_0_st = misc_cacheable_check_resp_0_st; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_0_instr = misc_cacheable_check_resp_0_instr; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_0_mmio = misc_cacheable_check_resp_0_mmio; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_0_atomic = misc_cacheable_check_resp_0_atomic; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_1_ld = misc_cacheable_check_resp_1_ld; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_1_st = misc_cacheable_check_resp_1_st; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_1_instr = misc_cacheable_check_resp_1_instr; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_1_mmio = misc_cacheable_check_resp_1_mmio; // @[Top.scala 180:33]
  assign io_cacheable_check_resp_1_atomic = misc_cacheable_check_resp_1_atomic; // @[Top.scala 180:33]
  assign io_riscv_halt_0 = core_with_l2_io_cpu_halt; // @[Top.scala 186:24]
  assign misc_clock = io_clock; // @[Top.scala 166:28]
  assign misc_reset = resetGen_o_reset; // @[ResetGen.scala 61:24 67:27]
  assign misc_auto_plic_int_in_0 = intBuffer_auto_out_0; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_valid = core_with_l2_auto_misc_memory_port_out_a_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_opcode = core_with_l2_auto_misc_memory_port_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_param = core_with_l2_auto_misc_memory_port_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_size = core_with_l2_auto_misc_memory_port_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_source = core_with_l2_auto_misc_memory_port_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_address = core_with_l2_auto_misc_memory_port_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_mask = core_with_l2_auto_misc_memory_port_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_a_bits_data = core_with_l2_auto_misc_memory_port_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_bready = core_with_l2_auto_misc_memory_port_out_bready; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_valid = core_with_l2_auto_misc_memory_port_out_c_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_opcode = core_with_l2_auto_misc_memory_port_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_param = core_with_l2_auto_misc_memory_port_out_c_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_size = core_with_l2_auto_misc_memory_port_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_source = core_with_l2_auto_misc_memory_port_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_address = core_with_l2_auto_misc_memory_port_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_echo_blockisdirty = core_with_l2_auto_misc_memory_port_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_c_bits_data = core_with_l2_auto_misc_memory_port_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_d_ready = core_with_l2_auto_misc_memory_port_out_d_ready; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_e_valid = core_with_l2_auto_misc_memory_port_out_e_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_buffer_in_e_bits_sink = core_with_l2_auto_misc_memory_port_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_valid = core_with_l2_auto_misc_mmio_port_out_a_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_opcode = core_with_l2_auto_misc_mmio_port_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_size = core_with_l2_auto_misc_mmio_port_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_source = core_with_l2_auto_misc_mmio_port_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_address = core_with_l2_auto_misc_mmio_port_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_mask = core_with_l2_auto_misc_mmio_port_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_a_bits_data = core_with_l2_auto_misc_mmio_port_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_L2_to_L3_peripheral_buffer_1_in_d_ready = core_with_l2_auto_misc_mmio_port_out_d_ready; // @[LazyModule.scala 296:16]
  assign misc_auto_xbar_out_a_ready = l3cacheOpt_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_bvalid = l3cacheOpt_auto_in_bvalid; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_bparam = l3cacheOpt_auto_in_bparam; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_baddress = l3cacheOpt_auto_in_baddress; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_bdata = l3cacheOpt_auto_in_bdata; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_c_ready = l3cacheOpt_auto_in_c_ready; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_valid = l3cacheOpt_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_opcode = l3cacheOpt_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_param = l3cacheOpt_auto_in_d_bits_param; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_size = l3cacheOpt_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_source = l3cacheOpt_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_sink = l3cacheOpt_auto_in_d_bits_sink; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_denied = l3cacheOpt_auto_in_d_bits_denied; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_echo_blockisdirty = l3cacheOpt_auto_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_data = l3cacheOpt_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign misc_auto_xbar_out_d_bits_corrupt = l3cacheOpt_auto_in_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign misc_auto_binder_in_a_valid = l3cacheOpt_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_opcode = l3cacheOpt_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_param = l3cacheOpt_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_size = l3cacheOpt_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_source = l3cacheOpt_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_address = l3cacheOpt_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_mask = l3cacheOpt_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_a_bits_data = l3cacheOpt_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_c_valid = l3cacheOpt_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_c_bits_opcode = l3cacheOpt_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_c_bits_size = l3cacheOpt_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_c_bits_source = l3cacheOpt_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_c_bits_address = l3cacheOpt_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_c_bits_data = l3cacheOpt_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_d_ready = l3cacheOpt_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_e_valid = l3cacheOpt_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_e_bits_sink = l3cacheOpt_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign misc_memory_0_awready = memory_0_awready; // @[Top.scala 139:12]
  assign misc_memory_0_wready = memory_0_wready; // @[Top.scala 139:12]
  assign misc_memory_0_bvalid = memory_0_bvalid; // @[Top.scala 139:12]
  assign misc_memory_0_bid = memory_0_bid; // @[Top.scala 139:12]
  assign misc_memory_0_bresp = memory_0_bresp; // @[Top.scala 139:12]
  assign misc_memory_0_arready = memory_0_arready; // @[Top.scala 139:12]
  assign misc_memory_0_rvalid = memory_0_rvalid; // @[Top.scala 139:12]
  assign misc_memory_0_rid = memory_0_rid; // @[Top.scala 139:12]
  assign misc_memory_0_rdata = memory_0_rdata; // @[Top.scala 139:12]
  assign misc_memory_0_rresp = memory_0_rresp; // @[Top.scala 139:12]
  assign misc_memory_0_rlast = memory_0_rlast; // @[Top.scala 139:12]
  assign misc_peripheral_0_awready = peripheral_0_awready; // @[Top.scala 138:16]
  assign misc_peripheral_0_wready = peripheral_0_wready; // @[Top.scala 138:16]
  assign misc_peripheral_0_bvalid = peripheral_0_bvalid; // @[Top.scala 138:16]
  assign misc_peripheral_0_bid = peripheral_0_bid; // @[Top.scala 138:16]
  assign misc_peripheral_0_arready = peripheral_0_arready; // @[Top.scala 138:16]
  assign misc_peripheral_0_rvalid = peripheral_0_rvalid; // @[Top.scala 138:16]
  assign misc_peripheral_0_rid = peripheral_0_rid; // @[Top.scala 138:16]
  assign misc_peripheral_0_rdata = peripheral_0_rdata; // @[Top.scala 138:16]
  assign misc_peripheral_0_rlast = peripheral_0_rlast; // @[Top.scala 138:16]
  assign misc_dma_0_awvalid = dma_0_awvalid; // @[Top.scala 137:14]
  assign misc_dma_0_awid = dma_0_awid; // @[Top.scala 137:14]
  assign misc_dma_0_awaddr = dma_0_awaddr; // @[Top.scala 137:14]
  assign misc_dma_0_awlen = dma_0_awlen; // @[Top.scala 137:14]
  assign misc_dma_0_awsize = dma_0_awsize; // @[Top.scala 137:14]
  assign misc_dma_0_awburst = dma_0_awburst; // @[Top.scala 137:14]
  assign misc_dma_0_wvalid = dma_0_wvalid; // @[Top.scala 137:14]
  assign misc_dma_0_wdata = dma_0_wdata; // @[Top.scala 137:14]
  assign misc_dma_0_wstrb = dma_0_wstrb; // @[Top.scala 137:14]
  assign misc_dma_0_wlast = dma_0_wlast; // @[Top.scala 137:14]
  assign misc_dma_0_bready = dma_0_bready; // @[Top.scala 137:14]
  assign misc_dma_0_arvalid = dma_0_arvalid; // @[Top.scala 137:14]
  assign misc_dma_0_arid = dma_0_arid; // @[Top.scala 137:14]
  assign misc_dma_0_araddr = dma_0_araddr; // @[Top.scala 137:14]
  assign misc_dma_0_arlen = dma_0_arlen; // @[Top.scala 137:14]
  assign misc_dma_0_arsize = dma_0_arsize; // @[Top.scala 137:14]
  assign misc_dma_0_arburst = dma_0_arburst; // @[Top.scala 137:14]
  assign misc_dma_0_rready = dma_0_rready; // @[Top.scala 137:14]
  assign misc_debug_module_io_resetCtrl_hartIsInReset_0 = core_with_l2_reset; // @[Top.scala 211:92]
  assign misc_debug_module_io_debugIO_clock = io_clock; // @[Top.scala 216:59]
  assign misc_debug_module_io_debugIO_reset = misc_reset; // @[Top.scala 215:47]
  assign misc_debug_module_io_debugIO_systemjtag_jtag_TCK = io_systemjtag_jtag_TCK; // @[Top.scala 221:21]
  assign misc_debug_module_io_debugIO_systemjtag_jtag_TMS = io_systemjtag_jtag_TMS; // @[Top.scala 221:21]
  assign misc_debug_module_io_debugIO_systemjtag_jtag_TDI = io_systemjtag_jtag_TDI; // @[Top.scala 221:21]
  assign misc_debug_module_io_debugIO_systemjtag_reset = jtag_reset_sync_resetSync_o_reset; // @[Top.scala 222:21]
  assign misc_debug_module_io_debugIO_systemjtag_mfr_id = io_systemjtag_mfr_id; // @[Top.scala 223:21]
  assign misc_debug_module_io_debugIO_systemjtag_part_number = io_systemjtag_part_number; // @[Top.scala 224:21]
  assign misc_debug_module_io_debugIO_systemjtag_version = io_systemjtag_version; // @[Top.scala 225:21]
  assign misc_debug_module_io_debugIO_dmactiveAck = misc_debug_module_io_debugIO_dmactive; // @[Top.scala 218:53]
  assign misc_debug_module_io_clock = io_clock; // @[Top.scala 212:39]
  assign misc_debug_module_io_reset = reset_sync_resetSync_o_reset; // @[Top.scala 213:39]
  assign misc_ext_intrs = io_extIntrs; // @[Top.scala 177:27]
  assign misc_pll0_lock = io_pll0_lock; // @[Top.scala 179:27]
  assign misc_cacheable_check_req_0_bits_addr = io_cacheable_check_req_0_bits_addr; // @[Top.scala 180:33]
  assign misc_cacheable_check_req_1_bits_addr = io_cacheable_check_req_1_bits_addr; // @[Top.scala 180:33]
  assign core_with_l2_clock = io_clock; // @[Top.scala 166:28]
  assign core_with_l2_reset = resetGen_o_reset; // @[ResetGen.scala 61:24 67:27]
  assign core_with_l2_auto_misc_memory_port_out_a_ready = misc_auto_buffer_in_a_ready; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bvalid = misc_auto_buffer_in_bvalid; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bopcode = misc_auto_buffer_in_bopcode; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bparam = misc_auto_buffer_in_bparam; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bsize = misc_auto_buffer_in_bsize; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_baddress = misc_auto_buffer_in_baddress; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bmask = misc_auto_buffer_in_bmask; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bdata = misc_auto_buffer_in_bdata; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_bcorrupt = misc_auto_buffer_in_bcorrupt; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_c_ready = misc_auto_buffer_in_c_ready; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_valid = misc_auto_buffer_in_d_valid; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_opcode = misc_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_param = misc_auto_buffer_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_size = misc_auto_buffer_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_source = misc_auto_buffer_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_sink = misc_auto_buffer_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_denied = misc_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_echo_blockisdirty = misc_auto_buffer_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_data = misc_auto_buffer_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_d_bits_corrupt = misc_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_memory_port_out_e_ready = misc_auto_buffer_in_e_ready; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_mmio_port_out_a_ready = misc_auto_L2_to_L3_peripheral_buffer_1_in_a_ready; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_mmio_port_out_d_valid = misc_auto_L2_to_L3_peripheral_buffer_1_in_d_valid; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_mmio_port_out_d_bits_opcode = misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_mmio_port_out_d_bits_size = misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_mmio_port_out_d_bits_source = misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_misc_mmio_port_out_d_bits_data = misc_auto_L2_to_L3_peripheral_buffer_1_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign core_with_l2_auto_core_plic_int_sink_in_1_0 = misc_auto_plic_int_out_1_0; // @[LazyModule.scala 298:16]
  assign core_with_l2_auto_core_plic_int_sink_in_0_0 = misc_auto_plic_int_out_0_0; // @[LazyModule.scala 298:16]
  assign core_with_l2_auto_core_debug_int_sink_in_0 = misc_auto_debugModule_debug_dmOuter_dmOuter_int_out_0; // @[LazyModule.scala 298:16]
  assign core_with_l2_auto_core_clint_int_sink_in_0 = misc_auto_clint_int_out_0; // @[LazyModule.scala 298:16]
  assign core_with_l2_auto_core_clint_int_sink_in_1 = misc_auto_clint_int_out_1; // @[LazyModule.scala 298:16]
  assign core_with_l2_io_hartId = 64'h0; // @[Top.scala 185:29]
  assign core_with_l2_io_reset_vector = io_riscv_rst_vec_0[35:0]; // @[Top.scala 187:35]
  assign l3cacheOpt_clock = io_clock; // @[Top.scala 166:28]
  assign l3cacheOpt_reset = resetGen_o_reset; // @[ResetGen.scala 61:24 67:27]
  assign l3cacheOpt_auto_in_a_valid = misc_auto_xbar_out_a_valid; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_opcode = misc_auto_xbar_out_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_param = misc_auto_xbar_out_a_bits_param; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_size = misc_auto_xbar_out_a_bits_size; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_source = misc_auto_xbar_out_a_bits_source; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_address = misc_auto_xbar_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_mask = misc_auto_xbar_out_a_bits_mask; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_a_bits_data = misc_auto_xbar_out_a_bits_data; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_bready = misc_auto_xbar_out_bready; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_valid = misc_auto_xbar_out_c_valid; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_opcode = misc_auto_xbar_out_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_param = misc_auto_xbar_out_c_bits_param; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_size = misc_auto_xbar_out_c_bits_size; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_source = misc_auto_xbar_out_c_bits_source; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_address = misc_auto_xbar_out_c_bits_address; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_echo_blockisdirty = misc_auto_xbar_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_c_bits_data = misc_auto_xbar_out_c_bits_data; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_d_ready = misc_auto_xbar_out_d_ready; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_e_valid = misc_auto_xbar_out_e_valid; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_in_e_bits_sink = misc_auto_xbar_out_e_bits_sink; // @[LazyModule.scala 298:16]
  assign l3cacheOpt_auto_out_a_ready = misc_auto_binder_in_a_ready; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_c_ready = misc_auto_binder_in_c_ready; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_valid = misc_auto_binder_in_d_valid; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_opcode = misc_auto_binder_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_param = misc_auto_binder_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_size = misc_auto_binder_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_source = misc_auto_binder_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_sink = misc_auto_binder_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_denied = misc_auto_binder_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_d_bits_data = misc_auto_binder_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_auto_out_e_ready = misc_auto_binder_in_e_ready; // @[LazyModule.scala 296:16]
  assign l3cacheOpt_sourcePaddr_valid = core_with_l2_sourcePaddr_valid;
  assign l3cacheOpt_sourcePaddr_bits = core_with_l2_sourcePaddr_bits;
  assign intBuffer_clock = io_clock; // @[Top.scala 166:28]
  assign intBuffer_reset = reset_sync_resetSync_o_reset; // @[LazyModule.scala 352:31 Top.scala 167:16]
  assign intBuffer_auto_in_0 = core_with_l2_auto_misc_beu_int_out_0; // @[LazyModule.scala 298:16]
  assign reset_sync_resetSync_clock = io_clock; // @[Top.scala 162:49]
  assign reset_sync_resetSync_reset = io_reset;
  assign jtag_reset_sync_resetSync_clock = io_systemjtag_jtag_TCK;
  assign jtag_reset_sync_resetSync_reset = io_systemjtag_reset;
  assign resetGen_clock = io_clock; // @[Top.scala 228:32]
  assign resetGen_reset = reset_sync_resetSync_o_reset; // @[ResetGen.scala 61:24 62:24]
endmodule

