module SoCMisc(
  input          clock,
  input          reset,
  output         auto_debugModule_debug_dmOuter_dmOuter_int_out_0,
  input          auto_plic_int_in_0,
  output         auto_plic_int_out_1_0,
  output         auto_plic_int_out_0_0,
  output         auto_clint_int_out_0,
  output         auto_clint_int_out_1,
  output         auto_buffer_in_a_ready,
  input          auto_buffer_in_a_valid,
  input  [2:0]   auto_buffer_in_a_bits_opcode,
  input  [2:0]   auto_buffer_in_a_bits_param,
  input  [2:0]   auto_buffer_in_a_bits_size,
  input  [8:0]   auto_buffer_in_a_bits_source,
  input  [35:0]  auto_buffer_in_a_bits_address,
  input  [31:0]  auto_buffer_in_a_bits_mask,
  input  [255:0] auto_buffer_in_a_bits_data,
  input          auto_buffer_in_bready,
  output         auto_buffer_in_bvalid,
  output [2:0]   auto_buffer_in_bopcode,
  output [1:0]   auto_buffer_in_bparam,
  output [2:0]   auto_buffer_in_bsize,
  output [35:0]  auto_buffer_in_baddress,
  output [31:0]  auto_buffer_in_bmask,
  output [255:0] auto_buffer_in_bdata,
  output         auto_buffer_in_bcorrupt,
  output         auto_buffer_in_c_ready,
  input          auto_buffer_in_c_valid,
  input  [2:0]   auto_buffer_in_c_bits_opcode,
  input  [2:0]   auto_buffer_in_c_bits_param,
  input  [2:0]   auto_buffer_in_c_bits_size,
  input  [8:0]   auto_buffer_in_c_bits_source,
  input  [35:0]  auto_buffer_in_c_bits_address,
  input          auto_buffer_in_c_bits_echo_blockisdirty,
  input  [255:0] auto_buffer_in_c_bits_data,
  input          auto_buffer_in_d_ready,
  output         auto_buffer_in_d_valid,
  output [2:0]   auto_buffer_in_d_bits_opcode,
  output [1:0]   auto_buffer_in_d_bits_param,
  output [2:0]   auto_buffer_in_d_bits_size,
  output [8:0]   auto_buffer_in_d_bits_source,
  output [3:0]   auto_buffer_in_d_bits_sink,
  output         auto_buffer_in_d_bits_denied,
  output         auto_buffer_in_d_bits_echo_blockisdirty,
  output [255:0] auto_buffer_in_d_bits_data,
  output         auto_buffer_in_d_bits_corrupt,
  output         auto_buffer_in_e_ready,
  input          auto_buffer_in_e_valid,
  input  [3:0]   auto_buffer_in_e_bits_sink,
  output         auto_L2_to_L3_peripheral_buffer_1_in_a_ready,
  input          auto_L2_to_L3_peripheral_buffer_1_in_a_valid,
  input  [2:0]   auto_L2_to_L3_peripheral_buffer_1_in_a_bits_opcode,
  input  [2:0]   auto_L2_to_L3_peripheral_buffer_1_in_a_bits_size,
  input  [2:0]   auto_L2_to_L3_peripheral_buffer_1_in_a_bits_source,
  input  [35:0]  auto_L2_to_L3_peripheral_buffer_1_in_a_bits_address,
  input  [7:0]   auto_L2_to_L3_peripheral_buffer_1_in_a_bits_mask,
  input  [63:0]  auto_L2_to_L3_peripheral_buffer_1_in_a_bits_data,
  input          auto_L2_to_L3_peripheral_buffer_1_in_d_ready,
  output         auto_L2_to_L3_peripheral_buffer_1_in_d_valid,
  output [2:0]   auto_L2_to_L3_peripheral_buffer_1_in_d_bits_opcode,
  output [2:0]   auto_L2_to_L3_peripheral_buffer_1_in_d_bits_size,
  output [2:0]   auto_L2_to_L3_peripheral_buffer_1_in_d_bits_source,
  output [63:0]  auto_L2_to_L3_peripheral_buffer_1_in_d_bits_data,
  input          auto_xbar_out_a_ready,
  output         auto_xbar_out_a_valid,
  output [2:0]   auto_xbar_out_a_bits_opcode,
  output [2:0]   auto_xbar_out_a_bits_param,
  output [2:0]   auto_xbar_out_a_bits_size,
  output [9:0]   auto_xbar_out_a_bits_source,
  output [35:0]  auto_xbar_out_a_bits_address,
  output [31:0]  auto_xbar_out_a_bits_mask,
  output [255:0] auto_xbar_out_a_bits_data,
  output         auto_xbar_out_bready,
  input          auto_xbar_out_bvalid,
  input  [1:0]   auto_xbar_out_bparam,
  input  [35:0]  auto_xbar_out_baddress,
  input  [255:0] auto_xbar_out_bdata,
  input          auto_xbar_out_c_ready,
  output         auto_xbar_out_c_valid,
  output [2:0]   auto_xbar_out_c_bits_opcode,
  output [2:0]   auto_xbar_out_c_bits_param,
  output [2:0]   auto_xbar_out_c_bits_size,
  output [9:0]   auto_xbar_out_c_bits_source,
  output [35:0]  auto_xbar_out_c_bits_address,
  output         auto_xbar_out_c_bits_echo_blockisdirty,
  output [255:0] auto_xbar_out_c_bits_data,
  output         auto_xbar_out_d_ready,
  input          auto_xbar_out_d_valid,
  input  [2:0]   auto_xbar_out_d_bits_opcode,
  input  [1:0]   auto_xbar_out_d_bits_param,
  input  [2:0]   auto_xbar_out_d_bits_size,
  input  [9:0]   auto_xbar_out_d_bits_source,
  input  [3:0]   auto_xbar_out_d_bits_sink,
  input          auto_xbar_out_d_bits_denied,
  input          auto_xbar_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_xbar_out_d_bits_data,
  input          auto_xbar_out_d_bits_corrupt,
  output         auto_xbar_out_e_valid,
  output [3:0]   auto_xbar_out_e_bits_sink,
  output         auto_binder_in_a_ready,
  input          auto_binder_in_a_valid,
  input  [2:0]   auto_binder_in_a_bits_opcode,
  input  [2:0]   auto_binder_in_a_bits_param,
  input  [2:0]   auto_binder_in_a_bits_size,
  input  [3:0]   auto_binder_in_a_bits_source,
  input  [35:0]  auto_binder_in_a_bits_address,
  input  [31:0]  auto_binder_in_a_bits_mask,
  input  [255:0] auto_binder_in_a_bits_data,
  output         auto_binder_in_c_ready,
  input          auto_binder_in_c_valid,
  input  [2:0]   auto_binder_in_c_bits_opcode,
  input  [2:0]   auto_binder_in_c_bits_size,
  input  [3:0]   auto_binder_in_c_bits_source,
  input  [35:0]  auto_binder_in_c_bits_address,
  input  [255:0] auto_binder_in_c_bits_data,
  input          auto_binder_in_d_ready,
  output         auto_binder_in_d_valid,
  output [2:0]   auto_binder_in_d_bits_opcode,
  output [1:0]   auto_binder_in_d_bits_param,
  output [2:0]   auto_binder_in_d_bits_size,
  output [3:0]   auto_binder_in_d_bits_source,
  output [2:0]   auto_binder_in_d_bits_sink,
  output         auto_binder_in_d_bits_denied,
  output [255:0] auto_binder_in_d_bits_data,
  output         auto_binder_in_e_ready,
  input          auto_binder_in_e_valid,
  input  [2:0]   auto_binder_in_e_bits_sink,
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
  input          peripheral_0_rlast,
  output         dma_0_awready,
  input          dma_0_awvalid,
  input  [13:0]  dma_0_awid,
  input  [35:0]  dma_0_awaddr,
  input  [7:0]   dma_0_awlen,
  input  [2:0]   dma_0_awsize,
  input  [1:0]   dma_0_awburst,
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
  input          dma_0_rready,
  output         dma_0_rvalid,
  output [13:0]  dma_0_rid,
  output [255:0] dma_0_rdata,
  output [1:0]   dma_0_rresp,
  output         dma_0_rlast,
  input          debug_module_io_resetCtrl_hartIsInReset_0,
  input          debug_module_io_debugIO_clock,
  input          debug_module_io_debugIO_reset,
  input          debug_module_io_debugIO_systemjtag_jtag_TCK,
  input          debug_module_io_debugIO_systemjtag_jtag_TMS,
  input          debug_module_io_debugIO_systemjtag_jtag_TDI,
  output         debug_module_io_debugIO_systemjtag_jtag_TDO_data,
  output         debug_module_io_debugIO_systemjtag_jtag_TDO_driven,
  input          debug_module_io_debugIO_systemjtag_reset,
  input  [10:0]  debug_module_io_debugIO_systemjtag_mfr_id,
  input  [15:0]  debug_module_io_debugIO_systemjtag_part_number,
  input  [3:0]   debug_module_io_debugIO_systemjtag_version,
  output         debug_module_io_debugIO_ndreset,
  output         debug_module_io_debugIO_dmactive,
  input          debug_module_io_debugIO_dmactiveAck,
  input          debug_module_io_clock,
  input          debug_module_io_reset,
  input  [63:0]  ext_intrs,
  input          pll0_lock,
  output [31:0]  pll0_ctrl_0,
  output [31:0]  pll0_ctrl_1,
  output [31:0]  pll0_ctrl_2,
  output [31:0]  pll0_ctrl_3,
  output [31:0]  pll0_ctrl_4,
  output [31:0]  pll0_ctrl_5,
  input  [35:0]  cacheable_check_req_0_bits_addr,
  input  [35:0]  cacheable_check_req_1_bits_addr,
  output         cacheable_check_resp_0_ld,
  output         cacheable_check_resp_0_st,
  output         cacheable_check_resp_0_instr,
  output         cacheable_check_resp_0_mmio,
  output         cacheable_check_resp_0_atomic,
  output         cacheable_check_resp_1_ld,
  output         cacheable_check_resp_1_st,
  output         cacheable_check_resp_1_instr,
  output         cacheable_check_resp_1_mmio,
  output         cacheable_check_resp_1_atomic
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
`endif // RANDOMIZE_REG_INIT
  wire  binder_auto_in_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_a_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_a_bits_address; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_c_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_c_bits_address; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_d_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_d_bits_source; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_d_bits_denied; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_e_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_a_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_a_bits_address; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_c_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_c_bits_address; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_d_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_d_bits_source; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_d_bits_denied; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_e_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  xbar_clock; // @[Xbar.scala 142:26]
  wire  xbar_reset; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_in_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_in_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_in_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_6_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_6_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_6_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_6_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_6_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_auto_out_6_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_6_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_6_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_6_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_6_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_6_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_6_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_6_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_6_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_5_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_5_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_5_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_5_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_5_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_auto_out_5_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_5_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_5_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_5_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_5_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_5_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_5_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_5_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_5_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_4_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_4_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_4_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_4_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_4_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_auto_out_4_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_4_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_4_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_4_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_4_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_4_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_4_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_4_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_4_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_3_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_3_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_3_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_3_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_3_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_auto_out_3_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_3_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_3_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_3_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_3_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_3_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_3_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_3_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_3_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_2_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_2_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_2_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_2_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_2_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_auto_out_2_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_2_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_2_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_2_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_2_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_2_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_2_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_2_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_2_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [30:0] xbar_auto_out_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_clock; // @[Xbar.scala 142:26]
  wire  xbar_1_reset; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_1_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_1_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_1_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_1_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_1_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [1:0] xbar_1_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_1_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_1_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_1_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [1:0] xbar_1_auto_in_0_d_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_1_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_1_auto_out_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_1_auto_out_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_1_auto_out_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_d_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_1_auto_out_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_a_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_d_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_clock; // @[Xbar.scala 142:26]
  wire  xbar_2_reset; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bvalid; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_0_bparam; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_baddress; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_size; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_in_0_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_0_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_in_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_e_valid; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_size; // @[Xbar.scala 142:26]
  wire [9:0] xbar_2_auto_out_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_out_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bvalid; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_out_bparam; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_baddress; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_size; // @[Xbar.scala 142:26]
  wire [9:0] xbar_2_auto_out_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_out_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_d_bits_size; // @[Xbar.scala 142:26]
  wire [9:0] xbar_2_auto_out_d_bits_source; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_out_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_e_valid; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_out_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_3_clock; // @[Xbar.scala 142:26]
  wire  xbar_3_reset; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_3_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_3_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_3_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [255:0] xbar_3_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_3_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_3_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_3_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_3_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_3_auto_in_0_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_3_auto_in_0_d_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_in_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_3_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_out_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_out_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_out_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_out_a_bits_size; // @[Xbar.scala 142:26]
  wire [5:0] xbar_3_auto_out_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_3_auto_out_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_3_auto_out_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_3_auto_out_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_out_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_out_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_out_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_3_auto_out_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_3_auto_out_d_bits_size; // @[Xbar.scala 142:26]
  wire [5:0] xbar_3_auto_out_d_bits_source; // @[Xbar.scala 142:26]
  wire  xbar_3_auto_out_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_3_auto_out_d_bits_data; // @[Xbar.scala 142:26]
  wire  buffers_clock; // @[Buffer.scala 73:47]
  wire  buffers_reset; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_auto_in_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_auto_out_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_clock; // @[Buffer.scala 73:47]
  wire  buffers_1_reset; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_1_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_1_auto_in_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_1_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_1_auto_out_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  cork_clock; // @[CacheCork.scala 177:26]
  wire  cork_reset; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_a_ready; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_a_valid; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_a_bits_opcode; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_a_bits_param; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_a_bits_size; // @[CacheCork.scala 177:26]
  wire [3:0] cork_auto_in_a_bits_source; // @[CacheCork.scala 177:26]
  wire [35:0] cork_auto_in_a_bits_address; // @[CacheCork.scala 177:26]
  wire [31:0] cork_auto_in_a_bits_mask; // @[CacheCork.scala 177:26]
  wire [255:0] cork_auto_in_a_bits_data; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_c_ready; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_c_valid; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_c_bits_opcode; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_c_bits_size; // @[CacheCork.scala 177:26]
  wire [3:0] cork_auto_in_c_bits_source; // @[CacheCork.scala 177:26]
  wire [35:0] cork_auto_in_c_bits_address; // @[CacheCork.scala 177:26]
  wire [255:0] cork_auto_in_c_bits_data; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_d_ready; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_d_valid; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_d_bits_opcode; // @[CacheCork.scala 177:26]
  wire [1:0] cork_auto_in_d_bits_param; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_d_bits_size; // @[CacheCork.scala 177:26]
  wire [3:0] cork_auto_in_d_bits_source; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_d_bits_sink; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_d_bits_denied; // @[CacheCork.scala 177:26]
  wire [255:0] cork_auto_in_d_bits_data; // @[CacheCork.scala 177:26]
  wire  cork_auto_in_e_valid; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_in_e_bits_sink; // @[CacheCork.scala 177:26]
  wire  cork_auto_out_a_ready; // @[CacheCork.scala 177:26]
  wire  cork_auto_out_a_valid; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_out_a_bits_opcode; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_out_a_bits_size; // @[CacheCork.scala 177:26]
  wire [4:0] cork_auto_out_a_bits_source; // @[CacheCork.scala 177:26]
  wire [35:0] cork_auto_out_a_bits_address; // @[CacheCork.scala 177:26]
  wire [31:0] cork_auto_out_a_bits_mask; // @[CacheCork.scala 177:26]
  wire [255:0] cork_auto_out_a_bits_data; // @[CacheCork.scala 177:26]
  wire  cork_auto_out_d_ready; // @[CacheCork.scala 177:26]
  wire  cork_auto_out_d_valid; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_out_d_bits_opcode; // @[CacheCork.scala 177:26]
  wire [1:0] cork_auto_out_d_bits_param; // @[CacheCork.scala 177:26]
  wire [2:0] cork_auto_out_d_bits_size; // @[CacheCork.scala 177:26]
  wire [4:0] cork_auto_out_d_bits_source; // @[CacheCork.scala 177:26]
  wire  cork_auto_out_d_bits_denied; // @[CacheCork.scala 177:26]
  wire [255:0] cork_auto_out_d_bits_data; // @[CacheCork.scala 177:26]
  wire  merger_auto_in_a_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_a_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_in_a_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_a_bits_address; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_in_a_bits_mask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_a_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_in_c_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_c_bits_address; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_c_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_in_d_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_in_d_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_bits_denied; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_d_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_e_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_e_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_e_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_out_a_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_a_bits_address; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_out_a_bits_mask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_a_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_out_c_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_c_bits_address; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_c_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_out_d_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_out_d_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_bits_denied; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_d_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_e_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_e_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_e_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  xbar_4_auto_in_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_a_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_4_auto_in_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_4_auto_in_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_4_auto_in_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_4_auto_in_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_c_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_4_auto_in_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_4_auto_in_c_bits_address; // @[Xbar.scala 142:26]
  wire [255:0] xbar_4_auto_in_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_4_auto_in_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_d_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_4_auto_in_d_bits_source; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_4_auto_in_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_in_e_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_in_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_a_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_4_auto_out_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_4_auto_out_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_4_auto_out_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_4_auto_out_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_c_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_4_auto_out_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_4_auto_out_c_bits_address; // @[Xbar.scala 142:26]
  wire [255:0] xbar_4_auto_out_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_4_auto_out_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_d_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_4_auto_out_d_bits_source; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_4_auto_out_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_4_auto_out_e_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_4_auto_out_e_bits_sink; // @[Xbar.scala 142:26]
  wire  widget_clock; // @[WidthWidget.scala 219:28]
  wire  widget_reset; // @[WidthWidget.scala 219:28]
  wire  widget_auto_in_a_ready; // @[WidthWidget.scala 219:28]
  wire  widget_auto_in_a_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_in_a_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_in_a_bits_size; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_in_a_bits_source; // @[WidthWidget.scala 219:28]
  wire [35:0] widget_auto_in_a_bits_address; // @[WidthWidget.scala 219:28]
  wire [7:0] widget_auto_in_a_bits_mask; // @[WidthWidget.scala 219:28]
  wire [63:0] widget_auto_in_a_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_auto_in_d_ready; // @[WidthWidget.scala 219:28]
  wire  widget_auto_in_d_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_in_d_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_in_d_bits_size; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_in_d_bits_source; // @[WidthWidget.scala 219:28]
  wire [63:0] widget_auto_in_d_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_auto_out_a_ready; // @[WidthWidget.scala 219:28]
  wire  widget_auto_out_a_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_out_a_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_out_a_bits_size; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_out_a_bits_source; // @[WidthWidget.scala 219:28]
  wire [35:0] widget_auto_out_a_bits_address; // @[WidthWidget.scala 219:28]
  wire [31:0] widget_auto_out_a_bits_mask; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_auto_out_a_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_auto_out_d_ready; // @[WidthWidget.scala 219:28]
  wire  widget_auto_out_d_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_out_d_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_out_d_bits_size; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_auto_out_d_bits_source; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_auto_out_d_bits_data; // @[WidthWidget.scala 219:28]
  wire  PeripheralXbar_to_MemXbar_buffer_0_clock; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_reset; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_clock; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_reset; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_clock; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_reset; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  axi4buf_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_in_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_in_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_in_bresp; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_in_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_in_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_auto_in_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_in_rresp; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_out_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_out_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_out_bresp; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_out_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_auto_out_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_auto_out_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_auto_out_rresp; // @[Buffer.scala 62:29]
  wire  axi4buf_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_1_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_1_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_in_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_1_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_1_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_1_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_1_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_in_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_in_bresp; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_in_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_1_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_1_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_in_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_1_auto_in_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_in_rresp; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_out_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_1_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_1_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_1_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_1_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_out_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_out_bresp; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_out_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_1_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_1_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_1_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_1_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_1_auto_out_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_1_auto_out_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_1_auto_out_rresp; // @[Buffer.scala 62:29]
  wire  axi4buf_1_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_2_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_2_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_in_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_2_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_2_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_2_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_2_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_in_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_in_bresp; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_in_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_2_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_2_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_in_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_2_auto_in_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_in_rresp; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_out_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_2_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_2_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_2_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_2_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_out_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_out_bresp; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_out_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_2_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_2_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_2_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_2_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [13:0] axi4buf_2_auto_out_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_2_auto_out_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_2_auto_out_rresp; // @[Buffer.scala 62:29]
  wire  axi4buf_2_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4index_auto_in_awready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_awvalid; // @[IdIndexer.scala 91:31]
  wire [5:0] axi4index_auto_in_awid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_auto_in_awaddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_auto_in_awlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_in_awsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_in_awburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_awlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_in_awcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_in_awprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_in_awqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_wready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_wvalid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_auto_in_wdata; // @[IdIndexer.scala 91:31]
  wire [31:0] axi4index_auto_in_wstrb; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_wlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_bready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_bvalid; // @[IdIndexer.scala 91:31]
  wire [5:0] axi4index_auto_in_bid; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_in_bresp; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_arready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_arvalid; // @[IdIndexer.scala 91:31]
  wire [5:0] axi4index_auto_in_arid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_auto_in_araddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_auto_in_arlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_in_arsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_in_arburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_arlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_in_arcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_in_arprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_in_arqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_rready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_rvalid; // @[IdIndexer.scala 91:31]
  wire [5:0] axi4index_auto_in_rid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_auto_in_rdata; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_in_rresp; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_in_rlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_awready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_awvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_auto_out_awid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_auto_out_awaddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_auto_out_awlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_out_awsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_out_awburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_awlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_out_awcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_out_awprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_out_awqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_wready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_wvalid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_auto_out_wdata; // @[IdIndexer.scala 91:31]
  wire [31:0] axi4index_auto_out_wstrb; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_wlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_bready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_bvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_auto_out_bid; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_out_bresp; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_arready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_arvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_auto_out_arid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_auto_out_araddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_auto_out_arlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_out_arsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_out_arburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_arlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_out_arcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_auto_out_arprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_auto_out_arqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_rready; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_rvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_auto_out_rid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_auto_out_rdata; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_auto_out_rresp; // @[IdIndexer.scala 91:31]
  wire  axi4index_auto_out_rlast; // @[IdIndexer.scala 91:31]
  wire  axi4yank_clock; // @[UserYanker.scala 105:30]
  wire  axi4yank_reset; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_awready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_awvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_awid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_auto_in_awaddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_auto_in_awlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_in_awsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_in_awburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_awlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_awcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_in_awprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_awqos; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_awecho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_awecho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_wready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_wvalid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_auto_in_wdata; // @[UserYanker.scala 105:30]
  wire [31:0] axi4yank_auto_in_wstrb; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_wlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_bready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_bvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_bid; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_in_bresp; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_becho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_becho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_arready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_arvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_arid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_auto_in_araddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_auto_in_arlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_in_arsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_in_arburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_arlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_arcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_in_arprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_arqos; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_arecho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_arecho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_rready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_rvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_rid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_auto_in_rdata; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_in_rresp; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_in_recho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_in_recho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_in_rlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_awready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_awvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_out_awid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_auto_out_awaddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_auto_out_awlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_out_awsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_out_awburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_awlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_out_awcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_out_awprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_out_awqos; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_wready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_wvalid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_auto_out_wdata; // @[UserYanker.scala 105:30]
  wire [31:0] axi4yank_auto_out_wstrb; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_wlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_bready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_bvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_out_bid; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_out_bresp; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_arready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_arvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_out_arid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_auto_out_araddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_auto_out_arlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_out_arsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_out_arburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_arlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_out_arcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_auto_out_arprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_auto_out_arqos; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_rready; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_rvalid; // @[UserYanker.scala 105:30]
  wire [5:0] axi4yank_auto_out_rid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_auto_out_rdata; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_auto_out_rresp; // @[UserYanker.scala 105:30]
  wire  axi4yank_auto_out_rlast; // @[UserYanker.scala 105:30]
  wire  axi4deint_clock; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_reset; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_awready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_awvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_awid; // @[Deinterleaver.scala 140:31]
  wire [35:0] axi4deint_auto_in_awaddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_auto_in_awlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_in_awsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_in_awburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_awlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_awcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_in_awprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_awqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_awecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_awecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_wready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_wvalid; // @[Deinterleaver.scala 140:31]
  wire [255:0] axi4deint_auto_in_wdata; // @[Deinterleaver.scala 140:31]
  wire [31:0] axi4deint_auto_in_wstrb; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_wlast; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_bready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_bvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_bid; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_in_bresp; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_becho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_becho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_arready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_arvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_arid; // @[Deinterleaver.scala 140:31]
  wire [35:0] axi4deint_auto_in_araddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_auto_in_arlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_in_arsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_in_arburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_arlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_arcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_in_arprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_arqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_arecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_arecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_rready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_rvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_rid; // @[Deinterleaver.scala 140:31]
  wire [255:0] axi4deint_auto_in_rdata; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_in_rresp; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_in_recho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_in_recho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_in_rlast; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_awready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_awvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_awid; // @[Deinterleaver.scala 140:31]
  wire [35:0] axi4deint_auto_out_awaddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_auto_out_awlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_out_awsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_out_awburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_awlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_awcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_out_awprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_awqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_awecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_awecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_wready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_wvalid; // @[Deinterleaver.scala 140:31]
  wire [255:0] axi4deint_auto_out_wdata; // @[Deinterleaver.scala 140:31]
  wire [31:0] axi4deint_auto_out_wstrb; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_wlast; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_bready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_bvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_bid; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_out_bresp; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_becho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_becho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_arready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_arvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_arid; // @[Deinterleaver.scala 140:31]
  wire [35:0] axi4deint_auto_out_araddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_auto_out_arlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_out_arsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_out_arburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_arlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_arcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_auto_out_arprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_arqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_arecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_arecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_rready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_rvalid; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_rid; // @[Deinterleaver.scala 140:31]
  wire [255:0] axi4deint_auto_out_rdata; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_auto_out_rresp; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_auto_out_recho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [5:0] axi4deint_auto_out_recho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_auto_out_rlast; // @[Deinterleaver.scala 140:31]
  wire  tl2axi4_clock; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_reset; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_in_a_ready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_in_a_valid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_in_a_bits_opcode; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_in_a_bits_size; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_in_a_bits_source; // @[ToAXI4.scala 283:29]
  wire [35:0] tl2axi4_auto_in_a_bits_address; // @[ToAXI4.scala 283:29]
  wire [31:0] tl2axi4_auto_in_a_bits_mask; // @[ToAXI4.scala 283:29]
  wire [255:0] tl2axi4_auto_in_a_bits_data; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_in_d_ready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_in_d_valid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_in_d_bits_opcode; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_in_d_bits_size; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_in_d_bits_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_in_d_bits_denied; // @[ToAXI4.scala 283:29]
  wire [255:0] tl2axi4_auto_in_d_bits_data; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_awready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_awvalid; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_awid; // @[ToAXI4.scala 283:29]
  wire [35:0] tl2axi4_auto_out_awaddr; // @[ToAXI4.scala 283:29]
  wire [7:0] tl2axi4_auto_out_awlen; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_out_awsize; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_auto_out_awburst; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_awlock; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_awcache; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_out_awprot; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_awqos; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_awecho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_awecho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_wready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_wvalid; // @[ToAXI4.scala 283:29]
  wire [255:0] tl2axi4_auto_out_wdata; // @[ToAXI4.scala 283:29]
  wire [31:0] tl2axi4_auto_out_wstrb; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_wlast; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_bready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_bvalid; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_bid; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_auto_out_bresp; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_becho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_becho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_arready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_arvalid; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_arid; // @[ToAXI4.scala 283:29]
  wire [35:0] tl2axi4_auto_out_araddr; // @[ToAXI4.scala 283:29]
  wire [7:0] tl2axi4_auto_out_arlen; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_out_arsize; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_auto_out_arburst; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_arlock; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_arcache; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_auto_out_arprot; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_arqos; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_arecho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_arecho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_rready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_rvalid; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_rid; // @[ToAXI4.scala 283:29]
  wire [255:0] tl2axi4_auto_out_rdata; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_auto_out_rresp; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_auto_out_recho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [5:0] tl2axi4_auto_out_recho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_auto_out_rlast; // @[ToAXI4.scala 283:29]
  wire  shrinker_auto_in_a_ready; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_in_a_valid; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_in_a_bits_opcode; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_in_a_bits_size; // @[SourceShrinker.scala 88:30]
  wire [5:0] shrinker_auto_in_a_bits_source; // @[SourceShrinker.scala 88:30]
  wire [35:0] shrinker_auto_in_a_bits_address; // @[SourceShrinker.scala 88:30]
  wire [31:0] shrinker_auto_in_a_bits_mask; // @[SourceShrinker.scala 88:30]
  wire [255:0] shrinker_auto_in_a_bits_data; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_in_d_ready; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_in_d_valid; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_in_d_bits_opcode; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_in_d_bits_size; // @[SourceShrinker.scala 88:30]
  wire [5:0] shrinker_auto_in_d_bits_source; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_in_d_bits_denied; // @[SourceShrinker.scala 88:30]
  wire [255:0] shrinker_auto_in_d_bits_data; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_out_a_ready; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_out_a_valid; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_out_a_bits_opcode; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_out_a_bits_size; // @[SourceShrinker.scala 88:30]
  wire [5:0] shrinker_auto_out_a_bits_source; // @[SourceShrinker.scala 88:30]
  wire [35:0] shrinker_auto_out_a_bits_address; // @[SourceShrinker.scala 88:30]
  wire [31:0] shrinker_auto_out_a_bits_mask; // @[SourceShrinker.scala 88:30]
  wire [255:0] shrinker_auto_out_a_bits_data; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_out_d_ready; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_out_d_valid; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_out_d_bits_opcode; // @[SourceShrinker.scala 88:30]
  wire [2:0] shrinker_auto_out_d_bits_size; // @[SourceShrinker.scala 88:30]
  wire [5:0] shrinker_auto_out_d_bits_source; // @[SourceShrinker.scala 88:30]
  wire  shrinker_auto_out_d_bits_denied; // @[SourceShrinker.scala 88:30]
  wire [255:0] shrinker_auto_out_d_bits_data; // @[SourceShrinker.scala 88:30]
  wire  widget_1_auto_in_a_ready; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_in_a_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_in_a_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_in_a_bits_size; // @[WidthWidget.scala 219:28]
  wire [5:0] widget_1_auto_in_a_bits_source; // @[WidthWidget.scala 219:28]
  wire [35:0] widget_1_auto_in_a_bits_address; // @[WidthWidget.scala 219:28]
  wire [31:0] widget_1_auto_in_a_bits_mask; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_1_auto_in_a_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_in_d_ready; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_in_d_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_in_d_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_in_d_bits_size; // @[WidthWidget.scala 219:28]
  wire [5:0] widget_1_auto_in_d_bits_source; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_in_d_bits_denied; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_1_auto_in_d_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_out_a_ready; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_out_a_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_out_a_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_out_a_bits_size; // @[WidthWidget.scala 219:28]
  wire [5:0] widget_1_auto_out_a_bits_source; // @[WidthWidget.scala 219:28]
  wire [35:0] widget_1_auto_out_a_bits_address; // @[WidthWidget.scala 219:28]
  wire [31:0] widget_1_auto_out_a_bits_mask; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_1_auto_out_a_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_out_d_ready; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_out_d_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_out_d_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_1_auto_out_d_bits_size; // @[WidthWidget.scala 219:28]
  wire [5:0] widget_1_auto_out_d_bits_source; // @[WidthWidget.scala 219:28]
  wire  widget_1_auto_out_d_bits_denied; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_1_auto_out_d_bits_data; // @[WidthWidget.scala 219:28]
  wire  buffers_2_clock; // @[Buffer.scala 73:47]
  wire  buffers_2_reset; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_2_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_2_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_2_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_2_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_2_auto_in_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_2_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_2_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_2_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_2_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_2_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_2_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_2_auto_out_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_2_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_2_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_clock; // @[Buffer.scala 73:47]
  wire  buffers_3_reset; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_3_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_3_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_3_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_3_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_3_auto_in_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_3_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_3_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_3_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_3_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_3_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_3_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_3_auto_out_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [5:0] buffers_3_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_3_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  axi4index_1_auto_in_awready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_awvalid; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_awid; // @[IdIndexer.scala 91:31]
  wire [30:0] axi4index_1_auto_in_awaddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_1_auto_in_awlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_awsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_1_auto_in_awburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_awlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_in_awcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_awprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_in_awqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_wready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_wvalid; // @[IdIndexer.scala 91:31]
  wire [63:0] axi4index_1_auto_in_wdata; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_1_auto_in_wstrb; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_wlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_bready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_bvalid; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_bid; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_arready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_arvalid; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_arid; // @[IdIndexer.scala 91:31]
  wire [30:0] axi4index_1_auto_in_araddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_1_auto_in_arlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_arsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_1_auto_in_arburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_arlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_in_arcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_arprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_in_arqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_rready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_rvalid; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_in_rid; // @[IdIndexer.scala 91:31]
  wire [63:0] axi4index_1_auto_in_rdata; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_in_rlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_awready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_awvalid; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_awid; // @[IdIndexer.scala 91:31]
  wire [30:0] axi4index_1_auto_out_awaddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_1_auto_out_awlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_out_awsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_1_auto_out_awburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_awlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_awcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_out_awprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_awqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_wready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_wvalid; // @[IdIndexer.scala 91:31]
  wire [63:0] axi4index_1_auto_out_wdata; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_1_auto_out_wstrb; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_wlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_bready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_bvalid; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_bid; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_arready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_arvalid; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_arid; // @[IdIndexer.scala 91:31]
  wire [30:0] axi4index_1_auto_out_araddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_1_auto_out_arlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_out_arsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_1_auto_out_arburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_arlock; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_arcache; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_1_auto_out_arprot; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_arqos; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_rready; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_rvalid; // @[IdIndexer.scala 91:31]
  wire [3:0] axi4index_1_auto_out_rid; // @[IdIndexer.scala 91:31]
  wire [63:0] axi4index_1_auto_out_rdata; // @[IdIndexer.scala 91:31]
  wire  axi4index_1_auto_out_rlast; // @[IdIndexer.scala 91:31]
  wire  axi4buf_3_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_3_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_3_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_3_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_3_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_3_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_3_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_3_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_3_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_3_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_in_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_3_auto_in_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_3_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_3_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_3_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_3_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_3_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_3_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_3_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_3_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_3_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_3_auto_out_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_3_auto_out_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_3_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_4_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_4_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_4_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_4_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_4_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_4_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_4_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_4_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_4_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_4_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_in_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_4_auto_in_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_4_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_4_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_4_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_4_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_4_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_4_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_4_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_4_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_4_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_4_auto_out_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_4_auto_out_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_4_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_5_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_5_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_5_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_5_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_5_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_5_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_5_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_5_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_5_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_5_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_in_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_5_auto_in_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_5_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_5_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_5_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_5_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_5_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_5_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_5_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_5_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_5_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_5_auto_out_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_5_auto_out_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_5_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_6_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_6_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_6_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_6_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_6_auto_in_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_in_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_in_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_6_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_6_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_6_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_6_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_6_auto_in_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_in_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_in_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_in_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_6_auto_in_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_awid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_6_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_6_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_6_auto_out_awburst; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_awlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_out_awcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_awprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_out_awqos; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_6_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_6_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_bid; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_arid; // @[Buffer.scala 62:29]
  wire [30:0] axi4buf_6_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_6_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_6_auto_out_arburst; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_arlock; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_out_arcache; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_arprot; // @[Buffer.scala 62:29]
  wire [3:0] axi4buf_6_auto_out_arqos; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_6_auto_out_rid; // @[Buffer.scala 62:29]
  wire [63:0] axi4buf_6_auto_out_rdata; // @[Buffer.scala 62:29]
  wire  axi4buf_6_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4yank_1_clock; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_reset; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_awready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_awvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_awid; // @[UserYanker.scala 105:30]
  wire [30:0] axi4yank_1_auto_in_awaddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_1_auto_in_awlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_awsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_1_auto_in_awburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_awlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_awcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_awprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_awqos; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_awecho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_awecho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_wready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_wvalid; // @[UserYanker.scala 105:30]
  wire [63:0] axi4yank_1_auto_in_wdata; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_1_auto_in_wstrb; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_wlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_bready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_bvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_bid; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_becho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_becho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_arready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_arvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_arid; // @[UserYanker.scala 105:30]
  wire [30:0] axi4yank_1_auto_in_araddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_1_auto_in_arlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_arsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_1_auto_in_arburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_arlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_arcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_arprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_arqos; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_arecho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_arecho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_rready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_rvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_rid; // @[UserYanker.scala 105:30]
  wire [63:0] axi4yank_1_auto_in_rdata; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_in_recho_tl_state_size; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_in_recho_tl_state_source; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_in_rlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_awready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_awvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_awid; // @[UserYanker.scala 105:30]
  wire [30:0] axi4yank_1_auto_out_awaddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_1_auto_out_awlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_awsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_1_auto_out_awburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_awlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_out_awcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_awprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_out_awqos; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_wready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_wvalid; // @[UserYanker.scala 105:30]
  wire [63:0] axi4yank_1_auto_out_wdata; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_1_auto_out_wstrb; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_wlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_bready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_bvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_bid; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_arready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_arvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_arid; // @[UserYanker.scala 105:30]
  wire [30:0] axi4yank_1_auto_out_araddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_1_auto_out_arlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_arsize; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_1_auto_out_arburst; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_arlock; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_out_arcache; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_arprot; // @[UserYanker.scala 105:30]
  wire [3:0] axi4yank_1_auto_out_arqos; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_rready; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_rvalid; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_1_auto_out_rid; // @[UserYanker.scala 105:30]
  wire [63:0] axi4yank_1_auto_out_rdata; // @[UserYanker.scala 105:30]
  wire  axi4yank_1_auto_out_rlast; // @[UserYanker.scala 105:30]
  wire  axi4deint_1_clock; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_reset; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_awready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_awvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_awid; // @[Deinterleaver.scala 140:31]
  wire [30:0] axi4deint_1_auto_in_awaddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_1_auto_in_awlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_awsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_1_auto_in_awburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_awlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_awcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_awprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_awqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_awecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_awecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_wready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_wvalid; // @[Deinterleaver.scala 140:31]
  wire [63:0] axi4deint_1_auto_in_wdata; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_1_auto_in_wstrb; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_wlast; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_bready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_bvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_bid; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_becho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_becho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_arready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_arvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_arid; // @[Deinterleaver.scala 140:31]
  wire [30:0] axi4deint_1_auto_in_araddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_1_auto_in_arlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_arsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_1_auto_in_arburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_arlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_arcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_arprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_arqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_arecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_arecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_rready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_rvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_rid; // @[Deinterleaver.scala 140:31]
  wire [63:0] axi4deint_1_auto_in_rdata; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_in_recho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_in_recho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_in_rlast; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_awready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_awvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_awid; // @[Deinterleaver.scala 140:31]
  wire [30:0] axi4deint_1_auto_out_awaddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_1_auto_out_awlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_awsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_1_auto_out_awburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_awlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_awcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_awprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_awqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_awecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_awecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_wready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_wvalid; // @[Deinterleaver.scala 140:31]
  wire [63:0] axi4deint_1_auto_out_wdata; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_1_auto_out_wstrb; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_wlast; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_bready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_bvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_bid; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_becho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_becho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_arready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_arvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_arid; // @[Deinterleaver.scala 140:31]
  wire [30:0] axi4deint_1_auto_out_araddr; // @[Deinterleaver.scala 140:31]
  wire [7:0] axi4deint_1_auto_out_arlen; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_arsize; // @[Deinterleaver.scala 140:31]
  wire [1:0] axi4deint_1_auto_out_arburst; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_arlock; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_arcache; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_arprot; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_arqos; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_arecho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_arecho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_rready; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_rvalid; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_rid; // @[Deinterleaver.scala 140:31]
  wire [63:0] axi4deint_1_auto_out_rdata; // @[Deinterleaver.scala 140:31]
  wire [3:0] axi4deint_1_auto_out_recho_tl_state_size; // @[Deinterleaver.scala 140:31]
  wire [2:0] axi4deint_1_auto_out_recho_tl_state_source; // @[Deinterleaver.scala 140:31]
  wire  axi4deint_1_auto_out_rlast; // @[Deinterleaver.scala 140:31]
  wire  tl2axi4_1_clock; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_reset; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_in_a_ready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_in_a_valid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_in_a_bits_opcode; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_1_auto_in_a_bits_size; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_in_a_bits_source; // @[ToAXI4.scala 283:29]
  wire [30:0] tl2axi4_1_auto_in_a_bits_address; // @[ToAXI4.scala 283:29]
  wire [7:0] tl2axi4_1_auto_in_a_bits_mask; // @[ToAXI4.scala 283:29]
  wire [63:0] tl2axi4_1_auto_in_a_bits_data; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_in_d_ready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_in_d_valid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_in_d_bits_opcode; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_1_auto_in_d_bits_size; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_in_d_bits_source; // @[ToAXI4.scala 283:29]
  wire [63:0] tl2axi4_1_auto_in_d_bits_data; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_awready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_awvalid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_awid; // @[ToAXI4.scala 283:29]
  wire [30:0] tl2axi4_1_auto_out_awaddr; // @[ToAXI4.scala 283:29]
  wire [7:0] tl2axi4_1_auto_out_awlen; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_awsize; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_1_auto_out_awburst; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_awlock; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_awcache; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_awprot; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_awqos; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_awecho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_awecho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_wready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_wvalid; // @[ToAXI4.scala 283:29]
  wire [63:0] tl2axi4_1_auto_out_wdata; // @[ToAXI4.scala 283:29]
  wire [7:0] tl2axi4_1_auto_out_wstrb; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_wlast; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_bready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_bvalid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_bid; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_becho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_becho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_arready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_arvalid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_arid; // @[ToAXI4.scala 283:29]
  wire [30:0] tl2axi4_1_auto_out_araddr; // @[ToAXI4.scala 283:29]
  wire [7:0] tl2axi4_1_auto_out_arlen; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_arsize; // @[ToAXI4.scala 283:29]
  wire [1:0] tl2axi4_1_auto_out_arburst; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_arlock; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_arcache; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_arprot; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_arqos; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_arecho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_arecho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_rready; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_rvalid; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_rid; // @[ToAXI4.scala 283:29]
  wire [63:0] tl2axi4_1_auto_out_rdata; // @[ToAXI4.scala 283:29]
  wire [3:0] tl2axi4_1_auto_out_recho_tl_state_size; // @[ToAXI4.scala 283:29]
  wire [2:0] tl2axi4_1_auto_out_recho_tl_state_source; // @[ToAXI4.scala 283:29]
  wire  tl2axi4_1_auto_out_rlast; // @[ToAXI4.scala 283:29]
  wire  buffers_4_clock; // @[Buffer.scala 73:47]
  wire  buffers_4_reset; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_4_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [30:0] buffers_4_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_4_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_4_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_4_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [30:0] buffers_4_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_4_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_4_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_clock; // @[Buffer.scala 73:47]
  wire  buffers_5_reset; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_5_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [30:0] buffers_5_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_5_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_5_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_5_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [30:0] buffers_5_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_5_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_5_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_clock; // @[Buffer.scala 73:47]
  wire  buffers_6_reset; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [30:0] buffers_6_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_6_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [30:0] buffers_6_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_6_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  errorDevice_clock; // @[SoC.scala 101:39]
  wire  errorDevice_reset; // @[SoC.scala 101:39]
  wire  errorDevice_auto_in_a_ready; // @[SoC.scala 101:39]
  wire  errorDevice_auto_in_a_valid; // @[SoC.scala 101:39]
  wire [2:0] errorDevice_auto_in_a_bits_opcode; // @[SoC.scala 101:39]
  wire [2:0] errorDevice_auto_in_a_bits_size; // @[SoC.scala 101:39]
  wire [2:0] errorDevice_auto_in_a_bits_source; // @[SoC.scala 101:39]
  wire  errorDevice_auto_in_d_ready; // @[SoC.scala 101:39]
  wire  errorDevice_auto_in_d_valid; // @[SoC.scala 101:39]
  wire [2:0] errorDevice_auto_in_d_bits_opcode; // @[SoC.scala 101:39]
  wire [2:0] errorDevice_auto_in_d_bits_size; // @[SoC.scala 101:39]
  wire [2:0] errorDevice_auto_in_d_bits_source; // @[SoC.scala 101:39]
  wire  errorDevice_auto_in_d_bits_corrupt; // @[SoC.scala 101:39]
  wire  fixer_clock; // @[FIFOFixer.scala 144:27]
  wire  fixer_reset; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 144:27]
  wire [1:0] fixer_auto_in_a_bits_source; // @[FIFOFixer.scala 144:27]
  wire [35:0] fixer_auto_in_a_bits_address; // @[FIFOFixer.scala 144:27]
  wire [31:0] fixer_auto_in_a_bits_mask; // @[FIFOFixer.scala 144:27]
  wire [255:0] fixer_auto_in_a_bits_data; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_in_d_bits_size; // @[FIFOFixer.scala 144:27]
  wire [1:0] fixer_auto_in_d_bits_source; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_in_d_bits_denied; // @[FIFOFixer.scala 144:27]
  wire [255:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_in_d_bits_corrupt; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 144:27]
  wire [1:0] fixer_auto_out_a_bits_source; // @[FIFOFixer.scala 144:27]
  wire [35:0] fixer_auto_out_a_bits_address; // @[FIFOFixer.scala 144:27]
  wire [31:0] fixer_auto_out_a_bits_mask; // @[FIFOFixer.scala 144:27]
  wire [255:0] fixer_auto_out_a_bits_data; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 144:27]
  wire [2:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 144:27]
  wire [1:0] fixer_auto_out_d_bits_source; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 144:27]
  wire [255:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 144:27]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 144:27]
  wire  widget_2_auto_in_a_ready; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_in_a_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_in_a_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_in_a_bits_size; // @[WidthWidget.scala 219:28]
  wire [1:0] widget_2_auto_in_a_bits_source; // @[WidthWidget.scala 219:28]
  wire [35:0] widget_2_auto_in_a_bits_address; // @[WidthWidget.scala 219:28]
  wire [31:0] widget_2_auto_in_a_bits_mask; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_2_auto_in_a_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_in_d_ready; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_in_d_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_in_d_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_in_d_bits_size; // @[WidthWidget.scala 219:28]
  wire [1:0] widget_2_auto_in_d_bits_source; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_in_d_bits_denied; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_2_auto_in_d_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_in_d_bits_corrupt; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_out_a_ready; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_out_a_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_out_a_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_out_a_bits_size; // @[WidthWidget.scala 219:28]
  wire [1:0] widget_2_auto_out_a_bits_source; // @[WidthWidget.scala 219:28]
  wire [35:0] widget_2_auto_out_a_bits_address; // @[WidthWidget.scala 219:28]
  wire [31:0] widget_2_auto_out_a_bits_mask; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_2_auto_out_a_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_out_d_ready; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_out_d_valid; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_out_d_bits_opcode; // @[WidthWidget.scala 219:28]
  wire [2:0] widget_2_auto_out_d_bits_size; // @[WidthWidget.scala 219:28]
  wire [1:0] widget_2_auto_out_d_bits_source; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_out_d_bits_denied; // @[WidthWidget.scala 219:28]
  wire [255:0] widget_2_auto_out_d_bits_data; // @[WidthWidget.scala 219:28]
  wire  widget_2_auto_out_d_bits_corrupt; // @[WidthWidget.scala 219:28]
  wire  axi42tl_clock; // @[ToTL.scala 224:29]
  wire  axi42tl_reset; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_awready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_awvalid; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_awid; // @[ToTL.scala 224:29]
  wire [35:0] axi42tl_auto_in_awaddr; // @[ToTL.scala 224:29]
  wire [7:0] axi42tl_auto_in_awlen; // @[ToTL.scala 224:29]
  wire [2:0] axi42tl_auto_in_awsize; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_wready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_wvalid; // @[ToTL.scala 224:29]
  wire [255:0] axi42tl_auto_in_wdata; // @[ToTL.scala 224:29]
  wire [31:0] axi42tl_auto_in_wstrb; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_wlast; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_bready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_bvalid; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_bid; // @[ToTL.scala 224:29]
  wire [1:0] axi42tl_auto_in_bresp; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_arready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_arvalid; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_arid; // @[ToTL.scala 224:29]
  wire [35:0] axi42tl_auto_in_araddr; // @[ToTL.scala 224:29]
  wire [7:0] axi42tl_auto_in_arlen; // @[ToTL.scala 224:29]
  wire [2:0] axi42tl_auto_in_arsize; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_rready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_rvalid; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_rid; // @[ToTL.scala 224:29]
  wire [255:0] axi42tl_auto_in_rdata; // @[ToTL.scala 224:29]
  wire [1:0] axi42tl_auto_in_rresp; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_in_rlast; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_out_a_ready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_out_a_valid; // @[ToTL.scala 224:29]
  wire [2:0] axi42tl_auto_out_a_bits_opcode; // @[ToTL.scala 224:29]
  wire [2:0] axi42tl_auto_out_a_bits_size; // @[ToTL.scala 224:29]
  wire [1:0] axi42tl_auto_out_a_bits_source; // @[ToTL.scala 224:29]
  wire [35:0] axi42tl_auto_out_a_bits_address; // @[ToTL.scala 224:29]
  wire [31:0] axi42tl_auto_out_a_bits_mask; // @[ToTL.scala 224:29]
  wire [255:0] axi42tl_auto_out_a_bits_data; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_out_d_ready; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_out_d_valid; // @[ToTL.scala 224:29]
  wire [2:0] axi42tl_auto_out_d_bits_opcode; // @[ToTL.scala 224:29]
  wire [2:0] axi42tl_auto_out_d_bits_size; // @[ToTL.scala 224:29]
  wire [1:0] axi42tl_auto_out_d_bits_source; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_out_d_bits_denied; // @[ToTL.scala 224:29]
  wire [255:0] axi42tl_auto_out_d_bits_data; // @[ToTL.scala 224:29]
  wire  axi42tl_auto_out_d_bits_corrupt; // @[ToTL.scala 224:29]
  wire  axi4yank_2_clock; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_reset; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_awready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_awvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_awid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_2_auto_in_awaddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_2_auto_in_awlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_2_auto_in_awsize; // @[UserYanker.scala 105:30]
  wire [12:0] axi4yank_2_auto_in_awecho_extra_id; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_awecho_real_last; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_wready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_wvalid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_2_auto_in_wdata; // @[UserYanker.scala 105:30]
  wire [31:0] axi4yank_2_auto_in_wstrb; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_wlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_bready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_bvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_bid; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_2_auto_in_bresp; // @[UserYanker.scala 105:30]
  wire [12:0] axi4yank_2_auto_in_becho_extra_id; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_becho_real_last; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_arready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_arvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_arid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_2_auto_in_araddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_2_auto_in_arlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_2_auto_in_arsize; // @[UserYanker.scala 105:30]
  wire [12:0] axi4yank_2_auto_in_arecho_extra_id; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_arecho_real_last; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_rready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_rvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_rid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_2_auto_in_rdata; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_2_auto_in_rresp; // @[UserYanker.scala 105:30]
  wire [12:0] axi4yank_2_auto_in_recho_extra_id; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_recho_real_last; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_in_rlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_awready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_awvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_awid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_2_auto_out_awaddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_2_auto_out_awlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_2_auto_out_awsize; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_wready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_wvalid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_2_auto_out_wdata; // @[UserYanker.scala 105:30]
  wire [31:0] axi4yank_2_auto_out_wstrb; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_wlast; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_bready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_bvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_bid; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_2_auto_out_bresp; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_arready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_arvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_arid; // @[UserYanker.scala 105:30]
  wire [35:0] axi4yank_2_auto_out_araddr; // @[UserYanker.scala 105:30]
  wire [7:0] axi4yank_2_auto_out_arlen; // @[UserYanker.scala 105:30]
  wire [2:0] axi4yank_2_auto_out_arsize; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_rready; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_rvalid; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_rid; // @[UserYanker.scala 105:30]
  wire [255:0] axi4yank_2_auto_out_rdata; // @[UserYanker.scala 105:30]
  wire [1:0] axi4yank_2_auto_out_rresp; // @[UserYanker.scala 105:30]
  wire  axi4yank_2_auto_out_rlast; // @[UserYanker.scala 105:30]
  wire  axi4frag_clock; // @[Fragmenter.scala 208:30]
  wire  axi4frag_reset; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_awready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_awvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_awid; // @[Fragmenter.scala 208:30]
  wire [35:0] axi4frag_auto_in_awaddr; // @[Fragmenter.scala 208:30]
  wire [7:0] axi4frag_auto_in_awlen; // @[Fragmenter.scala 208:30]
  wire [2:0] axi4frag_auto_in_awsize; // @[Fragmenter.scala 208:30]
  wire [1:0] axi4frag_auto_in_awburst; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_in_awecho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_wready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_wvalid; // @[Fragmenter.scala 208:30]
  wire [255:0] axi4frag_auto_in_wdata; // @[Fragmenter.scala 208:30]
  wire [31:0] axi4frag_auto_in_wstrb; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_wlast; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_bready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_bvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_bid; // @[Fragmenter.scala 208:30]
  wire [1:0] axi4frag_auto_in_bresp; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_in_becho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_arready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_arvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_arid; // @[Fragmenter.scala 208:30]
  wire [35:0] axi4frag_auto_in_araddr; // @[Fragmenter.scala 208:30]
  wire [7:0] axi4frag_auto_in_arlen; // @[Fragmenter.scala 208:30]
  wire [2:0] axi4frag_auto_in_arsize; // @[Fragmenter.scala 208:30]
  wire [1:0] axi4frag_auto_in_arburst; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_in_arecho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_rready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_rvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_rid; // @[Fragmenter.scala 208:30]
  wire [255:0] axi4frag_auto_in_rdata; // @[Fragmenter.scala 208:30]
  wire [1:0] axi4frag_auto_in_rresp; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_in_recho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_in_rlast; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_awready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_awvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_awid; // @[Fragmenter.scala 208:30]
  wire [35:0] axi4frag_auto_out_awaddr; // @[Fragmenter.scala 208:30]
  wire [7:0] axi4frag_auto_out_awlen; // @[Fragmenter.scala 208:30]
  wire [2:0] axi4frag_auto_out_awsize; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_out_awecho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_awecho_real_last; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_wready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_wvalid; // @[Fragmenter.scala 208:30]
  wire [255:0] axi4frag_auto_out_wdata; // @[Fragmenter.scala 208:30]
  wire [31:0] axi4frag_auto_out_wstrb; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_wlast; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_bready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_bvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_bid; // @[Fragmenter.scala 208:30]
  wire [1:0] axi4frag_auto_out_bresp; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_out_becho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_becho_real_last; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_arready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_arvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_arid; // @[Fragmenter.scala 208:30]
  wire [35:0] axi4frag_auto_out_araddr; // @[Fragmenter.scala 208:30]
  wire [7:0] axi4frag_auto_out_arlen; // @[Fragmenter.scala 208:30]
  wire [2:0] axi4frag_auto_out_arsize; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_out_arecho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_arecho_real_last; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_rready; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_rvalid; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_rid; // @[Fragmenter.scala 208:30]
  wire [255:0] axi4frag_auto_out_rdata; // @[Fragmenter.scala 208:30]
  wire [1:0] axi4frag_auto_out_rresp; // @[Fragmenter.scala 208:30]
  wire [12:0] axi4frag_auto_out_recho_extra_id; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_recho_real_last; // @[Fragmenter.scala 208:30]
  wire  axi4frag_auto_out_rlast; // @[Fragmenter.scala 208:30]
  wire  axi4buf_7_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_7_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_7_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_7_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_7_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_in_awburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_in_awecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_7_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_7_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_in_bresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_in_becho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_7_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_7_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_7_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_in_arburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_in_arecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_7_auto_in_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_in_rresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_in_recho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_7_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_7_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_7_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_out_awburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_out_awecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_7_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_7_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_out_bresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_out_becho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_7_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_7_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_7_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_out_arburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_out_arecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_7_auto_out_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_7_auto_out_rresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_7_auto_out_recho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_7_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_8_clock; // @[Buffer.scala 62:29]
  wire  axi4buf_8_reset; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_awvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_8_auto_in_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_8_auto_in_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_8_auto_in_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_in_awburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_in_awecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_8_auto_in_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_8_auto_in_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_bvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_in_bresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_in_becho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_arvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_8_auto_in_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_8_auto_in_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_8_auto_in_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_in_arburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_in_arecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_rvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_8_auto_in_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_in_rresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_in_recho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_in_rlast; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_awready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_awvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_awid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_8_auto_out_awaddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_8_auto_out_awlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_8_auto_out_awsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_out_awburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_out_awecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_wready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_wvalid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_8_auto_out_wdata; // @[Buffer.scala 62:29]
  wire [31:0] axi4buf_8_auto_out_wstrb; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_wlast; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_bready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_bvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_bid; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_out_bresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_out_becho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_arready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_arvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_arid; // @[Buffer.scala 62:29]
  wire [35:0] axi4buf_8_auto_out_araddr; // @[Buffer.scala 62:29]
  wire [7:0] axi4buf_8_auto_out_arlen; // @[Buffer.scala 62:29]
  wire [2:0] axi4buf_8_auto_out_arsize; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_out_arburst; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_out_arecho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_rready; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_rvalid; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_rid; // @[Buffer.scala 62:29]
  wire [255:0] axi4buf_8_auto_out_rdata; // @[Buffer.scala 62:29]
  wire [1:0] axi4buf_8_auto_out_rresp; // @[Buffer.scala 62:29]
  wire [12:0] axi4buf_8_auto_out_recho_extra_id; // @[Buffer.scala 62:29]
  wire  axi4buf_8_auto_out_rlast; // @[Buffer.scala 62:29]
  wire  axi4index_2_auto_in_awready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_awvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_2_auto_in_awid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_2_auto_in_awaddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_2_auto_in_awlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_2_auto_in_awsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_in_awburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_wready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_wvalid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_2_auto_in_wdata; // @[IdIndexer.scala 91:31]
  wire [31:0] axi4index_2_auto_in_wstrb; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_wlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_bready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_bvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_2_auto_in_bid; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_in_bresp; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_arready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_arvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_2_auto_in_arid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_2_auto_in_araddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_2_auto_in_arlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_2_auto_in_arsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_in_arburst; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_rready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_rvalid; // @[IdIndexer.scala 91:31]
  wire [13:0] axi4index_2_auto_in_rid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_2_auto_in_rdata; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_in_rresp; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_in_rlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_awready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_awvalid; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_awid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_2_auto_out_awaddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_2_auto_out_awlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_2_auto_out_awsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_out_awburst; // @[IdIndexer.scala 91:31]
  wire [12:0] axi4index_2_auto_out_awecho_extra_id; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_wready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_wvalid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_2_auto_out_wdata; // @[IdIndexer.scala 91:31]
  wire [31:0] axi4index_2_auto_out_wstrb; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_wlast; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_bready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_bvalid; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_bid; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_out_bresp; // @[IdIndexer.scala 91:31]
  wire [12:0] axi4index_2_auto_out_becho_extra_id; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_arready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_arvalid; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_arid; // @[IdIndexer.scala 91:31]
  wire [35:0] axi4index_2_auto_out_araddr; // @[IdIndexer.scala 91:31]
  wire [7:0] axi4index_2_auto_out_arlen; // @[IdIndexer.scala 91:31]
  wire [2:0] axi4index_2_auto_out_arsize; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_out_arburst; // @[IdIndexer.scala 91:31]
  wire [12:0] axi4index_2_auto_out_arecho_extra_id; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_rready; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_rvalid; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_rid; // @[IdIndexer.scala 91:31]
  wire [255:0] axi4index_2_auto_out_rdata; // @[IdIndexer.scala 91:31]
  wire [1:0] axi4index_2_auto_out_rresp; // @[IdIndexer.scala 91:31]
  wire [12:0] axi4index_2_auto_out_recho_extra_id; // @[IdIndexer.scala 91:31]
  wire  axi4index_2_auto_out_rlast; // @[IdIndexer.scala 91:31]
  wire  L2_to_L3_peripheral_buffer_0_clock; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_reset; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] L2_to_L3_peripheral_buffer_0_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] L2_to_L3_peripheral_buffer_0_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_0_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_0_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] L2_to_L3_peripheral_buffer_0_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] L2_to_L3_peripheral_buffer_0_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_0_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_0_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_0_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_0_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_clock; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_reset; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] L2_to_L3_peripheral_buffer_1_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] L2_to_L3_peripheral_buffer_1_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_1_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_1_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] L2_to_L3_peripheral_buffer_1_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] L2_to_L3_peripheral_buffer_1_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_1_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  L2_to_L3_peripheral_buffer_1_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] L2_to_L3_peripheral_buffer_1_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] L2_to_L3_peripheral_buffer_1_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffer_clock; // @[Buffer.scala 68:28]
  wire  buffer_reset; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 68:28]
  wire [8:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 68:28]
  wire [31:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_bready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_bvalid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_bopcode; // @[Buffer.scala 68:28]
  wire [1:0] buffer_auto_in_bparam; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_bsize; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_in_baddress; // @[Buffer.scala 68:28]
  wire [31:0] buffer_auto_in_bmask; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_in_bdata; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_bcorrupt; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_c_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_c_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_c_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_c_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_c_bits_size; // @[Buffer.scala 68:28]
  wire [8:0] buffer_auto_in_c_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_in_c_bits_address; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_c_bits_echo_blockisdirty; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_in_c_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 68:28]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 68:28]
  wire [8:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 68:28]
  wire [3:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_bits_echo_blockisdirty; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_e_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_e_valid; // @[Buffer.scala 68:28]
  wire [3:0] buffer_auto_in_e_bits_sink; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 68:28]
  wire [8:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 68:28]
  wire [31:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_bready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_bvalid; // @[Buffer.scala 68:28]
  wire [1:0] buffer_auto_out_bparam; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_out_baddress; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_out_bdata; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_c_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_c_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_c_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_c_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_c_bits_size; // @[Buffer.scala 68:28]
  wire [8:0] buffer_auto_out_c_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_out_c_bits_address; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_c_bits_echo_blockisdirty; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_out_c_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 68:28]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 68:28]
  wire [8:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 68:28]
  wire [3:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_bits_echo_blockisdirty; // @[Buffer.scala 68:28]
  wire [255:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_e_valid; // @[Buffer.scala 68:28]
  wire [3:0] buffer_auto_out_e_bits_sink; // @[Buffer.scala 68:28]
  wire  buffers_7_clock; // @[Buffer.scala 73:47]
  wire  buffers_7_reset; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_7_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_7_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_7_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_7_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_in_d_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_7_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_7_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_7_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_7_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_7_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_7_auto_out_d_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_8_clock; // @[Buffer.scala 73:47]
  wire  buffers_8_reset; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_8_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_8_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_8_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_8_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_in_d_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_8_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [31:0] buffers_8_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_8_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_8_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire [255:0] buffers_8_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_8_auto_out_d_bits_corrupt; // @[Buffer.scala 73:47]
  wire  clint_clock; // @[SoC.scala 257:25]
  wire  clint_reset; // @[SoC.scala 257:25]
  wire  clint_auto_int_out_0; // @[SoC.scala 257:25]
  wire  clint_auto_int_out_1; // @[SoC.scala 257:25]
  wire  clint_auto_in_a_ready; // @[SoC.scala 257:25]
  wire  clint_auto_in_a_valid; // @[SoC.scala 257:25]
  wire [2:0] clint_auto_in_a_bits_opcode; // @[SoC.scala 257:25]
  wire [1:0] clint_auto_in_a_bits_size; // @[SoC.scala 257:25]
  wire [2:0] clint_auto_in_a_bits_source; // @[SoC.scala 257:25]
  wire [29:0] clint_auto_in_a_bits_address; // @[SoC.scala 257:25]
  wire [7:0] clint_auto_in_a_bits_mask; // @[SoC.scala 257:25]
  wire [63:0] clint_auto_in_a_bits_data; // @[SoC.scala 257:25]
  wire  clint_auto_in_d_ready; // @[SoC.scala 257:25]
  wire  clint_auto_in_d_valid; // @[SoC.scala 257:25]
  wire [2:0] clint_auto_in_d_bits_opcode; // @[SoC.scala 257:25]
  wire [1:0] clint_auto_in_d_bits_size; // @[SoC.scala 257:25]
  wire [2:0] clint_auto_in_d_bits_source; // @[SoC.scala 257:25]
  wire [63:0] clint_auto_in_d_bits_data; // @[SoC.scala 257:25]
  wire  clint_io_rtcTick; // @[SoC.scala 257:25]
  wire  plic_clock; // @[SoC.scala 268:24]
  wire  plic_reset; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_1_0; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_0; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_1; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_2; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_3; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_4; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_5; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_6; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_7; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_8; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_9; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_10; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_11; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_12; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_13; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_14; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_15; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_16; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_17; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_18; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_19; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_20; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_21; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_22; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_23; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_24; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_25; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_26; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_27; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_28; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_29; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_30; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_31; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_32; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_33; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_34; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_35; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_36; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_37; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_38; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_39; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_40; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_41; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_42; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_43; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_44; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_45; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_46; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_47; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_48; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_49; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_50; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_51; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_52; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_53; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_54; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_55; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_56; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_57; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_58; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_59; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_60; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_61; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_62; // @[SoC.scala 268:24]
  wire  plic_auto_int_in_0_63; // @[SoC.scala 268:24]
  wire  plic_auto_int_out_1_0; // @[SoC.scala 268:24]
  wire  plic_auto_int_out_0_0; // @[SoC.scala 268:24]
  wire  plic_auto_in_a_ready; // @[SoC.scala 268:24]
  wire  plic_auto_in_a_valid; // @[SoC.scala 268:24]
  wire [2:0] plic_auto_in_a_bits_opcode; // @[SoC.scala 268:24]
  wire [1:0] plic_auto_in_a_bits_size; // @[SoC.scala 268:24]
  wire [2:0] plic_auto_in_a_bits_source; // @[SoC.scala 268:24]
  wire [29:0] plic_auto_in_a_bits_address; // @[SoC.scala 268:24]
  wire [7:0] plic_auto_in_a_bits_mask; // @[SoC.scala 268:24]
  wire [63:0] plic_auto_in_a_bits_data; // @[SoC.scala 268:24]
  wire  plic_auto_in_d_ready; // @[SoC.scala 268:24]
  wire  plic_auto_in_d_valid; // @[SoC.scala 268:24]
  wire [2:0] plic_auto_in_d_bits_opcode; // @[SoC.scala 268:24]
  wire [1:0] plic_auto_in_d_bits_size; // @[SoC.scala 268:24]
  wire [2:0] plic_auto_in_d_bits_source; // @[SoC.scala 268:24]
  wire [63:0] plic_auto_in_d_bits_data; // @[SoC.scala 268:24]
  wire  plicSource_auto_source_out_0; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_1; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_2; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_3; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_4; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_5; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_6; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_7; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_8; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_9; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_10; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_11; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_12; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_13; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_14; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_15; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_16; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_17; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_18; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_19; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_20; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_21; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_22; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_23; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_24; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_25; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_26; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_27; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_28; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_29; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_30; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_31; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_32; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_33; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_34; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_35; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_36; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_37; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_38; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_39; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_40; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_41; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_42; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_43; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_44; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_45; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_46; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_47; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_48; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_49; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_50; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_51; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_52; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_53; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_54; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_55; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_56; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_57; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_58; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_59; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_60; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_61; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_62; // @[SoC.scala 269:30]
  wire  plicSource_auto_source_out_63; // @[SoC.scala 269:30]
  wire  plicSource_in_0; // @[SoC.scala 269:30]
  wire  plicSource_in_1; // @[SoC.scala 269:30]
  wire  plicSource_in_2; // @[SoC.scala 269:30]
  wire  plicSource_in_3; // @[SoC.scala 269:30]
  wire  plicSource_in_4; // @[SoC.scala 269:30]
  wire  plicSource_in_5; // @[SoC.scala 269:30]
  wire  plicSource_in_6; // @[SoC.scala 269:30]
  wire  plicSource_in_7; // @[SoC.scala 269:30]
  wire  plicSource_in_8; // @[SoC.scala 269:30]
  wire  plicSource_in_9; // @[SoC.scala 269:30]
  wire  plicSource_in_10; // @[SoC.scala 269:30]
  wire  plicSource_in_11; // @[SoC.scala 269:30]
  wire  plicSource_in_12; // @[SoC.scala 269:30]
  wire  plicSource_in_13; // @[SoC.scala 269:30]
  wire  plicSource_in_14; // @[SoC.scala 269:30]
  wire  plicSource_in_15; // @[SoC.scala 269:30]
  wire  plicSource_in_16; // @[SoC.scala 269:30]
  wire  plicSource_in_17; // @[SoC.scala 269:30]
  wire  plicSource_in_18; // @[SoC.scala 269:30]
  wire  plicSource_in_19; // @[SoC.scala 269:30]
  wire  plicSource_in_20; // @[SoC.scala 269:30]
  wire  plicSource_in_21; // @[SoC.scala 269:30]
  wire  plicSource_in_22; // @[SoC.scala 269:30]
  wire  plicSource_in_23; // @[SoC.scala 269:30]
  wire  plicSource_in_24; // @[SoC.scala 269:30]
  wire  plicSource_in_25; // @[SoC.scala 269:30]
  wire  plicSource_in_26; // @[SoC.scala 269:30]
  wire  plicSource_in_27; // @[SoC.scala 269:30]
  wire  plicSource_in_28; // @[SoC.scala 269:30]
  wire  plicSource_in_29; // @[SoC.scala 269:30]
  wire  plicSource_in_30; // @[SoC.scala 269:30]
  wire  plicSource_in_31; // @[SoC.scala 269:30]
  wire  plicSource_in_32; // @[SoC.scala 269:30]
  wire  plicSource_in_33; // @[SoC.scala 269:30]
  wire  plicSource_in_34; // @[SoC.scala 269:30]
  wire  plicSource_in_35; // @[SoC.scala 269:30]
  wire  plicSource_in_36; // @[SoC.scala 269:30]
  wire  plicSource_in_37; // @[SoC.scala 269:30]
  wire  plicSource_in_38; // @[SoC.scala 269:30]
  wire  plicSource_in_39; // @[SoC.scala 269:30]
  wire  plicSource_in_40; // @[SoC.scala 269:30]
  wire  plicSource_in_41; // @[SoC.scala 269:30]
  wire  plicSource_in_42; // @[SoC.scala 269:30]
  wire  plicSource_in_43; // @[SoC.scala 269:30]
  wire  plicSource_in_44; // @[SoC.scala 269:30]
  wire  plicSource_in_45; // @[SoC.scala 269:30]
  wire  plicSource_in_46; // @[SoC.scala 269:30]
  wire  plicSource_in_47; // @[SoC.scala 269:30]
  wire  plicSource_in_48; // @[SoC.scala 269:30]
  wire  plicSource_in_49; // @[SoC.scala 269:30]
  wire  plicSource_in_50; // @[SoC.scala 269:30]
  wire  plicSource_in_51; // @[SoC.scala 269:30]
  wire  plicSource_in_52; // @[SoC.scala 269:30]
  wire  plicSource_in_53; // @[SoC.scala 269:30]
  wire  plicSource_in_54; // @[SoC.scala 269:30]
  wire  plicSource_in_55; // @[SoC.scala 269:30]
  wire  plicSource_in_56; // @[SoC.scala 269:30]
  wire  plicSource_in_57; // @[SoC.scala 269:30]
  wire  plicSource_in_58; // @[SoC.scala 269:30]
  wire  plicSource_in_59; // @[SoC.scala 269:30]
  wire  plicSource_in_60; // @[SoC.scala 269:30]
  wire  plicSource_in_61; // @[SoC.scala 269:30]
  wire  plicSource_in_62; // @[SoC.scala 269:30]
  wire  plicSource_in_63; // @[SoC.scala 269:30]
  wire  debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_ready; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_valid; // @[SoC.scala 282:31]
  wire [2:0] debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode; // @[SoC.scala 282:31]
  wire [35:0] debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_address; // @[SoC.scala 282:31]
  wire [31:0] debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_mask; // @[SoC.scala 282:31]
  wire [255:0] debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_data; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_ready; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_valid; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_denied; // @[SoC.scala 282:31]
  wire [255:0] debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_data; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_tl_in_a_ready; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_tl_in_a_valid; // @[SoC.scala 282:31]
  wire [2:0] debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_opcode; // @[SoC.scala 282:31]
  wire [1:0] debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_size; // @[SoC.scala 282:31]
  wire [2:0] debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_source; // @[SoC.scala 282:31]
  wire [29:0] debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_address; // @[SoC.scala 282:31]
  wire [7:0] debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_mask; // @[SoC.scala 282:31]
  wire [63:0] debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_data; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_tl_in_d_ready; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmInner_dmInner_tl_in_d_valid; // @[SoC.scala 282:31]
  wire [2:0] debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_opcode; // @[SoC.scala 282:31]
  wire [1:0] debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_size; // @[SoC.scala 282:31]
  wire [2:0] debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_source; // @[SoC.scala 282:31]
  wire [63:0] debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_data; // @[SoC.scala 282:31]
  wire  debugModule_auto_debug_dmOuter_dmOuter_int_out_0; // @[SoC.scala 282:31]
  wire  debugModule_io_resetCtrl_hartIsInReset_0; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_clock; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_reset; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_systemjtag_jtag_TCK; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_systemjtag_jtag_TMS; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_systemjtag_jtag_TDI; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_systemjtag_jtag_TDO_data; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_systemjtag_jtag_TDO_driven; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_systemjtag_reset; // @[SoC.scala 282:31]
  wire [10:0] debugModule_io_debugIO_systemjtag_mfr_id; // @[SoC.scala 282:31]
  wire [15:0] debugModule_io_debugIO_systemjtag_part_number; // @[SoC.scala 282:31]
  wire [3:0] debugModule_io_debugIO_systemjtag_version; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_ndreset; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_dmactive; // @[SoC.scala 282:31]
  wire  debugModule_io_debugIO_dmactiveAck; // @[SoC.scala 282:31]
  wire  debugModule_io_clock; // @[SoC.scala 282:31]
  wire  debugModule_io_reset; // @[SoC.scala 282:31]
  wire  buffer_1_clock; // @[Buffer.scala 68:28]
  wire  buffer_1_reset; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_in_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_in_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_1_auto_in_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [35:0] buffer_1_auto_in_a_bits_address; // @[Buffer.scala 68:28]
  wire [31:0] buffer_1_auto_in_a_bits_mask; // @[Buffer.scala 68:28]
  wire [255:0] buffer_1_auto_in_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_in_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_in_d_valid; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_in_d_bits_denied; // @[Buffer.scala 68:28]
  wire [255:0] buffer_1_auto_in_d_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_in_d_bits_corrupt; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_1_auto_out_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_1_auto_out_a_bits_param; // @[Buffer.scala 68:28]
  wire [2:0] buffer_1_auto_out_a_bits_size; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_1_auto_out_a_bits_address; // @[Buffer.scala 68:28]
  wire [31:0] buffer_1_auto_out_a_bits_mask; // @[Buffer.scala 68:28]
  wire [255:0] buffer_1_auto_out_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_d_valid; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_d_bits_denied; // @[Buffer.scala 68:28]
  wire [255:0] buffer_1_auto_out_d_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_1_auto_out_d_bits_corrupt; // @[Buffer.scala 68:28]
  wire  pma_clock; // @[SoC.scala 288:23]
  wire  pma_reset; // @[SoC.scala 288:23]
  wire  pma_auto_in_a_ready; // @[SoC.scala 288:23]
  wire  pma_auto_in_a_valid; // @[SoC.scala 288:23]
  wire [2:0] pma_auto_in_a_bits_opcode; // @[SoC.scala 288:23]
  wire [1:0] pma_auto_in_a_bits_size; // @[SoC.scala 288:23]
  wire [2:0] pma_auto_in_a_bits_source; // @[SoC.scala 288:23]
  wire [29:0] pma_auto_in_a_bits_address; // @[SoC.scala 288:23]
  wire [7:0] pma_auto_in_a_bits_mask; // @[SoC.scala 288:23]
  wire [63:0] pma_auto_in_a_bits_data; // @[SoC.scala 288:23]
  wire  pma_auto_in_d_ready; // @[SoC.scala 288:23]
  wire  pma_auto_in_d_valid; // @[SoC.scala 288:23]
  wire [2:0] pma_auto_in_d_bits_opcode; // @[SoC.scala 288:23]
  wire [1:0] pma_auto_in_d_bits_size; // @[SoC.scala 288:23]
  wire [2:0] pma_auto_in_d_bits_source; // @[SoC.scala 288:23]
  wire [63:0] pma_auto_in_d_bits_data; // @[SoC.scala 288:23]
  wire [35:0] pma_io_req_0_bits_addr; // @[SoC.scala 288:23]
  wire [35:0] pma_io_req_1_bits_addr; // @[SoC.scala 288:23]
  wire  pma_io_resp_0_ld; // @[SoC.scala 288:23]
  wire  pma_io_resp_0_st; // @[SoC.scala 288:23]
  wire  pma_io_resp_0_instr; // @[SoC.scala 288:23]
  wire  pma_io_resp_0_mmio; // @[SoC.scala 288:23]
  wire  pma_io_resp_0_atomic; // @[SoC.scala 288:23]
  wire  pma_io_resp_1_ld; // @[SoC.scala 288:23]
  wire  pma_io_resp_1_st; // @[SoC.scala 288:23]
  wire  pma_io_resp_1_instr; // @[SoC.scala 288:23]
  wire  pma_io_resp_1_mmio; // @[SoC.scala 288:23]
  wire  pma_io_resp_1_atomic; // @[SoC.scala 288:23]
  wire  buffers_9_clock; // @[Buffer.scala 73:47]
  wire  buffers_9_reset; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_9_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_9_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_9_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_9_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_9_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_9_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_9_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_9_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_9_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_9_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_9_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_9_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_9_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_9_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_10_clock; // @[Buffer.scala 73:47]
  wire  buffers_10_reset; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_10_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_10_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_10_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_10_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_10_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_10_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_10_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_10_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_10_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_10_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_10_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_10_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_10_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_10_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_11_clock; // @[Buffer.scala 73:47]
  wire  buffers_11_reset; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_11_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_11_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_11_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_11_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_11_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_11_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_11_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_11_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_11_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_11_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_11_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_11_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_11_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_11_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_12_clock; // @[Buffer.scala 73:47]
  wire  buffers_12_reset; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_12_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_12_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_12_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_12_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_12_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_12_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_12_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_12_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_12_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_12_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_12_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_12_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_12_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_12_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  out_back_clock; // @[Decoupled.scala 361:21]
  wire  out_back_reset; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_bits_read; // @[Decoupled.scala 361:21]
  wire [8:0] out_back_io_enq_bits_index; // @[Decoupled.scala 361:21]
  wire [63:0] out_back_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] out_back_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [2:0] out_back_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 361:21]
  wire [1:0] out_back_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_bits_read; // @[Decoupled.scala 361:21]
  wire [8:0] out_back_io_deq_bits_index; // @[Decoupled.scala 361:21]
  wire [63:0] out_back_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] out_back_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [2:0] out_back_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 361:21]
  wire [1:0] out_back_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 361:21]
  reg [2:0] ext_intr_sync; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_1; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_2; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_3; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_4; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_5; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_6; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_7; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_8; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_9; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_10; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_11; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_12; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_13; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_14; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_15; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_16; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_17; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_18; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_19; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_20; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_21; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_22; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_23; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_24; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_25; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_26; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_27; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_28; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_29; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_30; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_31; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_32; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_33; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_34; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_35; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_36; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_37; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_38; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_39; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_40; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_41; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_42; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_43; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_44; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_45; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_46; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_47; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_48; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_49; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_50; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_51; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_52; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_53; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_54; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_55; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_56; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_57; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_58; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_59; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_60; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_61; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_62; // @[SoC.scala 307:34]
  reg [2:0] ext_intr_sync_63; // @[SoC.scala 307:34]
  reg [6:0] cnt; // @[SoC.scala 320:22]
  wire  tick = cnt == 7'h0; // @[SoC.scala 321:20]
  wire [6:0] _cnt_T_1 = cnt - 7'h1; // @[SoC.scala 322:34]
  reg [31:0] pll_ctrl_regs_0; // @[SoC.scala 325:45]
  reg [31:0] pll_ctrl_regs_1; // @[SoC.scala 325:45]
  reg [31:0] pll_ctrl_regs_2; // @[SoC.scala 325:45]
  reg [31:0] pll_ctrl_regs_3; // @[SoC.scala 325:45]
  reg [31:0] pll_ctrl_regs_4; // @[SoC.scala 325:45]
  reg [31:0] pll_ctrl_regs_5; // @[SoC.scala 325:45]
  reg  pll_lock; // @[SoC.scala 326:27]
  wire [31:0] _T_64 = {31'h0,pll_lock}; // @[Cat.scala 31:58]
  wire [2:0] bundleIn_0_2_a_bits_opcode = xbar_auto_out_4_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  wire [29:0] bundleIn_0_2_a_bits_address = xbar_auto_out_4_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  wire [8:0] out_bindex = out_back_io_deq_bits_index & 9'h1fc; // @[RegisterRouter.scala 82:24]
  wire  _out_T_1 = out_bindex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backMask_T_9 = out_back_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_11 = out_back_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_13 = out_back_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_15 = out_back_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_17 = out_back_io_deq_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_19 = out_back_io_deq_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_21 = out_back_io_deq_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_23 = out_back_io_deq_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] out_backMask = {_out_backMask_T_23,_out_backMask_T_21,_out_backMask_T_19,_out_backMask_T_17,
    _out_backMask_T_15,_out_backMask_T_13,_out_backMask_T_11,_out_backMask_T_9}; // @[Cat.scala 31:58]
  wire  out_womask = &out_backMask[31:0]; // @[RegisterRouter.scala 82:24]
  wire  bundleIn_0_2_d_ready = xbar_auto_out_4_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  wire [1:0] out_oindex = {out_back_io_deq_bits_index[1],out_back_io_deq_bits_index[0]}; // @[Cat.scala 31:58]
  wire [3:0] _out_backSel_T = 4'h1 << out_oindex; // @[OneHot.scala 57:35]
  wire  out_backSel_0 = _out_backSel_T[0]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_0 = out_back_io_deq_valid & bundleIn_0_2_d_ready & ~out_back_io_deq_bits_read & out_backSel_0 &
    out_bindex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready = out_woready_0 & out_womask; // @[RegisterRouter.scala 82:24]
  wire  out_womask_1 = &out_backMask[63:32]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_1 = out_woready_0 & out_womask_1; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend = {pll_ctrl_regs_1,pll_ctrl_regs_0}; // @[Cat.scala 31:58]
  wire  out_backSel_1 = _out_backSel_T[1]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_2 = out_back_io_deq_valid & bundleIn_0_2_d_ready & ~out_back_io_deq_bits_read & out_backSel_1 &
    out_bindex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_2 = out_woready_2 & out_womask; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_3 = out_woready_2 & out_womask_1; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_1 = {pll_ctrl_regs_3,pll_ctrl_regs_2}; // @[Cat.scala 31:58]
  wire  out_backSel_2 = _out_backSel_T[2]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_4 = out_back_io_deq_valid & bundleIn_0_2_d_ready & ~out_back_io_deq_bits_read & out_backSel_2 &
    out_bindex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_4 = out_woready_4 & out_womask; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_5 = out_woready_4 & out_womask_1; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_2 = {pll_ctrl_regs_5,pll_ctrl_regs_4}; // @[Cat.scala 31:58]
  wire  _GEN_23 = 2'h1 == out_oindex ? _out_T_1 : _out_T_1; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_24 = 2'h2 == out_oindex ? _out_T_1 : _GEN_23; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_25 = 2'h3 == out_oindex ? _out_T_1 : _GEN_24; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_27 = 2'h1 == out_oindex ? out_prepend_1 : out_prepend; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_28 = 2'h2 == out_oindex ? out_prepend_2 : _GEN_27; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _out_out_bits_data_WIRE_1_3 = {{32'd0}, _T_64}; // @[MuxLiteral.scala 48:{48,48}]
  wire [63:0] _GEN_29 = 2'h3 == out_oindex ? _out_out_bits_data_WIRE_1_3 : _GEN_28; // @[MuxLiteral.scala 48:{10,10}]
  wire  out_bits_read = out_back_io_deq_bits_read; // @[RegisterRouter.scala 82:{24,24}]
  BankBinder binder ( // @[BankBinder.scala 67:28]
    .auto_in_a_ready(binder_auto_in_a_ready),
    .auto_in_a_valid(binder_auto_in_a_valid),
    .auto_in_a_bits_opcode(binder_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(binder_auto_in_a_bits_param),
    .auto_in_a_bits_size(binder_auto_in_a_bits_size),
    .auto_in_a_bits_source(binder_auto_in_a_bits_source),
    .auto_in_a_bits_address(binder_auto_in_a_bits_address),
    .auto_in_a_bits_mask(binder_auto_in_a_bits_mask),
    .auto_in_a_bits_data(binder_auto_in_a_bits_data),
    .auto_in_c_ready(binder_auto_in_c_ready),
    .auto_in_c_valid(binder_auto_in_c_valid),
    .auto_in_c_bits_opcode(binder_auto_in_c_bits_opcode),
    .auto_in_c_bits_size(binder_auto_in_c_bits_size),
    .auto_in_c_bits_source(binder_auto_in_c_bits_source),
    .auto_in_c_bits_address(binder_auto_in_c_bits_address),
    .auto_in_c_bits_data(binder_auto_in_c_bits_data),
    .auto_in_d_ready(binder_auto_in_d_ready),
    .auto_in_d_valid(binder_auto_in_d_valid),
    .auto_in_d_bits_opcode(binder_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(binder_auto_in_d_bits_param),
    .auto_in_d_bits_size(binder_auto_in_d_bits_size),
    .auto_in_d_bits_source(binder_auto_in_d_bits_source),
    .auto_in_d_bits_sink(binder_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(binder_auto_in_d_bits_denied),
    .auto_in_d_bits_data(binder_auto_in_d_bits_data),
    .auto_in_e_ready(binder_auto_in_e_ready),
    .auto_in_e_valid(binder_auto_in_e_valid),
    .auto_in_e_bits_sink(binder_auto_in_e_bits_sink),
    .auto_out_a_ready(binder_auto_out_a_ready),
    .auto_out_a_valid(binder_auto_out_a_valid),
    .auto_out_a_bits_opcode(binder_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(binder_auto_out_a_bits_param),
    .auto_out_a_bits_size(binder_auto_out_a_bits_size),
    .auto_out_a_bits_source(binder_auto_out_a_bits_source),
    .auto_out_a_bits_address(binder_auto_out_a_bits_address),
    .auto_out_a_bits_mask(binder_auto_out_a_bits_mask),
    .auto_out_a_bits_data(binder_auto_out_a_bits_data),
    .auto_out_c_ready(binder_auto_out_c_ready),
    .auto_out_c_valid(binder_auto_out_c_valid),
    .auto_out_c_bits_opcode(binder_auto_out_c_bits_opcode),
    .auto_out_c_bits_size(binder_auto_out_c_bits_size),
    .auto_out_c_bits_source(binder_auto_out_c_bits_source),
    .auto_out_c_bits_address(binder_auto_out_c_bits_address),
    .auto_out_c_bits_data(binder_auto_out_c_bits_data),
    .auto_out_d_ready(binder_auto_out_d_ready),
    .auto_out_d_valid(binder_auto_out_d_valid),
    .auto_out_d_bits_opcode(binder_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(binder_auto_out_d_bits_param),
    .auto_out_d_bits_size(binder_auto_out_d_bits_size),
    .auto_out_d_bits_source(binder_auto_out_d_bits_source),
    .auto_out_d_bits_sink(binder_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(binder_auto_out_d_bits_denied),
    .auto_out_d_bits_data(binder_auto_out_d_bits_data),
    .auto_out_e_ready(binder_auto_out_e_ready),
    .auto_out_e_valid(binder_auto_out_e_valid),
    .auto_out_e_bits_sink(binder_auto_out_e_bits_sink)
  );
  TLXbar xbar ( // @[Xbar.scala 142:26]
    .clock(xbar_clock),
    .reset(xbar_reset),
    .auto_in_a_ready(xbar_auto_in_a_ready),
    .auto_in_a_valid(xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(xbar_auto_in_a_bits_data),
    .auto_in_d_ready(xbar_auto_in_d_ready),
    .auto_in_d_valid(xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(xbar_auto_in_d_bits_source),
    .auto_in_d_bits_data(xbar_auto_in_d_bits_data),
    .auto_out_6_a_ready(xbar_auto_out_6_a_ready),
    .auto_out_6_a_valid(xbar_auto_out_6_a_valid),
    .auto_out_6_a_bits_opcode(xbar_auto_out_6_a_bits_opcode),
    .auto_out_6_a_bits_size(xbar_auto_out_6_a_bits_size),
    .auto_out_6_a_bits_source(xbar_auto_out_6_a_bits_source),
    .auto_out_6_a_bits_address(xbar_auto_out_6_a_bits_address),
    .auto_out_6_a_bits_mask(xbar_auto_out_6_a_bits_mask),
    .auto_out_6_a_bits_data(xbar_auto_out_6_a_bits_data),
    .auto_out_6_d_ready(xbar_auto_out_6_d_ready),
    .auto_out_6_d_valid(xbar_auto_out_6_d_valid),
    .auto_out_6_d_bits_opcode(xbar_auto_out_6_d_bits_opcode),
    .auto_out_6_d_bits_size(xbar_auto_out_6_d_bits_size),
    .auto_out_6_d_bits_source(xbar_auto_out_6_d_bits_source),
    .auto_out_6_d_bits_data(xbar_auto_out_6_d_bits_data),
    .auto_out_5_a_ready(xbar_auto_out_5_a_ready),
    .auto_out_5_a_valid(xbar_auto_out_5_a_valid),
    .auto_out_5_a_bits_opcode(xbar_auto_out_5_a_bits_opcode),
    .auto_out_5_a_bits_size(xbar_auto_out_5_a_bits_size),
    .auto_out_5_a_bits_source(xbar_auto_out_5_a_bits_source),
    .auto_out_5_a_bits_address(xbar_auto_out_5_a_bits_address),
    .auto_out_5_a_bits_mask(xbar_auto_out_5_a_bits_mask),
    .auto_out_5_a_bits_data(xbar_auto_out_5_a_bits_data),
    .auto_out_5_d_ready(xbar_auto_out_5_d_ready),
    .auto_out_5_d_valid(xbar_auto_out_5_d_valid),
    .auto_out_5_d_bits_opcode(xbar_auto_out_5_d_bits_opcode),
    .auto_out_5_d_bits_size(xbar_auto_out_5_d_bits_size),
    .auto_out_5_d_bits_source(xbar_auto_out_5_d_bits_source),
    .auto_out_5_d_bits_data(xbar_auto_out_5_d_bits_data),
    .auto_out_4_a_ready(xbar_auto_out_4_a_ready),
    .auto_out_4_a_valid(xbar_auto_out_4_a_valid),
    .auto_out_4_a_bits_opcode(xbar_auto_out_4_a_bits_opcode),
    .auto_out_4_a_bits_size(xbar_auto_out_4_a_bits_size),
    .auto_out_4_a_bits_source(xbar_auto_out_4_a_bits_source),
    .auto_out_4_a_bits_address(xbar_auto_out_4_a_bits_address),
    .auto_out_4_a_bits_mask(xbar_auto_out_4_a_bits_mask),
    .auto_out_4_a_bits_data(xbar_auto_out_4_a_bits_data),
    .auto_out_4_d_ready(xbar_auto_out_4_d_ready),
    .auto_out_4_d_valid(xbar_auto_out_4_d_valid),
    .auto_out_4_d_bits_opcode(xbar_auto_out_4_d_bits_opcode),
    .auto_out_4_d_bits_size(xbar_auto_out_4_d_bits_size),
    .auto_out_4_d_bits_source(xbar_auto_out_4_d_bits_source),
    .auto_out_4_d_bits_data(xbar_auto_out_4_d_bits_data),
    .auto_out_3_a_ready(xbar_auto_out_3_a_ready),
    .auto_out_3_a_valid(xbar_auto_out_3_a_valid),
    .auto_out_3_a_bits_opcode(xbar_auto_out_3_a_bits_opcode),
    .auto_out_3_a_bits_size(xbar_auto_out_3_a_bits_size),
    .auto_out_3_a_bits_source(xbar_auto_out_3_a_bits_source),
    .auto_out_3_a_bits_address(xbar_auto_out_3_a_bits_address),
    .auto_out_3_a_bits_mask(xbar_auto_out_3_a_bits_mask),
    .auto_out_3_a_bits_data(xbar_auto_out_3_a_bits_data),
    .auto_out_3_d_ready(xbar_auto_out_3_d_ready),
    .auto_out_3_d_valid(xbar_auto_out_3_d_valid),
    .auto_out_3_d_bits_opcode(xbar_auto_out_3_d_bits_opcode),
    .auto_out_3_d_bits_size(xbar_auto_out_3_d_bits_size),
    .auto_out_3_d_bits_source(xbar_auto_out_3_d_bits_source),
    .auto_out_3_d_bits_data(xbar_auto_out_3_d_bits_data),
    .auto_out_2_a_ready(xbar_auto_out_2_a_ready),
    .auto_out_2_a_valid(xbar_auto_out_2_a_valid),
    .auto_out_2_a_bits_opcode(xbar_auto_out_2_a_bits_opcode),
    .auto_out_2_a_bits_size(xbar_auto_out_2_a_bits_size),
    .auto_out_2_a_bits_source(xbar_auto_out_2_a_bits_source),
    .auto_out_2_a_bits_address(xbar_auto_out_2_a_bits_address),
    .auto_out_2_a_bits_mask(xbar_auto_out_2_a_bits_mask),
    .auto_out_2_a_bits_data(xbar_auto_out_2_a_bits_data),
    .auto_out_2_d_ready(xbar_auto_out_2_d_ready),
    .auto_out_2_d_valid(xbar_auto_out_2_d_valid),
    .auto_out_2_d_bits_opcode(xbar_auto_out_2_d_bits_opcode),
    .auto_out_2_d_bits_size(xbar_auto_out_2_d_bits_size),
    .auto_out_2_d_bits_source(xbar_auto_out_2_d_bits_source),
    .auto_out_2_d_bits_data(xbar_auto_out_2_d_bits_data),
    .auto_out_1_a_ready(xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_size(xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(xbar_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_size(xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_data(xbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_size(xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(xbar_auto_out_0_a_bits_data),
    .auto_out_0_d_ready(xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_size(xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_data(xbar_auto_out_0_d_bits_data)
  );
  TLXbar_1 xbar_1 ( // @[Xbar.scala 142:26]
    .clock(xbar_1_clock),
    .reset(xbar_1_reset),
    .auto_in_1_a_ready(xbar_1_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_1_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_1_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(xbar_1_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(xbar_1_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_1_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_1_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(xbar_1_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(xbar_1_auto_in_1_a_bits_data),
    .auto_in_1_d_ready(xbar_1_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_1_auto_in_1_d_valid),
    .auto_in_1_d_bits_denied(xbar_1_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(xbar_1_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(xbar_1_auto_in_1_d_bits_corrupt),
    .auto_in_0_a_ready(xbar_1_auto_in_0_a_ready),
    .auto_in_0_a_valid(xbar_1_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(xbar_1_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_size(xbar_1_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(xbar_1_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(xbar_1_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(xbar_1_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(xbar_1_auto_in_0_a_bits_data),
    .auto_in_0_d_ready(xbar_1_auto_in_0_d_ready),
    .auto_in_0_d_valid(xbar_1_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(xbar_1_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_size(xbar_1_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(xbar_1_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_denied(xbar_1_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(xbar_1_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(xbar_1_auto_in_0_d_bits_corrupt),
    .auto_out_1_a_ready(xbar_1_auto_out_1_a_ready),
    .auto_out_1_a_valid(xbar_1_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(xbar_1_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(xbar_1_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(xbar_1_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(xbar_1_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(xbar_1_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(xbar_1_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(xbar_1_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(xbar_1_auto_out_1_d_ready),
    .auto_out_1_d_valid(xbar_1_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(xbar_1_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_size(xbar_1_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(xbar_1_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_denied(xbar_1_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(xbar_1_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(xbar_1_auto_out_1_d_bits_corrupt),
    .auto_out_0_a_ready(xbar_1_auto_out_0_a_ready),
    .auto_out_0_a_valid(xbar_1_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(xbar_1_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_size(xbar_1_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(xbar_1_auto_out_0_a_bits_source),
    .auto_out_0_d_ready(xbar_1_auto_out_0_d_ready),
    .auto_out_0_d_valid(xbar_1_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(xbar_1_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_size(xbar_1_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(xbar_1_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_corrupt(xbar_1_auto_out_0_d_bits_corrupt)
  );
  TLXbar_2 xbar_2 ( // @[Xbar.scala 142:26]
    .clock(xbar_2_clock),
    .reset(xbar_2_reset),
    .auto_in_1_a_ready(xbar_2_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_2_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_2_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(xbar_2_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(xbar_2_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_2_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_2_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(xbar_2_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(xbar_2_auto_in_1_a_bits_data),
    .auto_in_1_d_ready(xbar_2_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_2_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_2_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_size(xbar_2_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(xbar_2_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_denied(xbar_2_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(xbar_2_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(xbar_2_auto_in_1_d_bits_corrupt),
    .auto_in_0_a_ready(xbar_2_auto_in_0_a_ready),
    .auto_in_0_a_valid(xbar_2_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(xbar_2_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(xbar_2_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(xbar_2_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(xbar_2_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(xbar_2_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(xbar_2_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(xbar_2_auto_in_0_a_bits_data),
    .auto_in_0_bready(xbar_2_auto_in_0_bready),
    .auto_in_0_bvalid(xbar_2_auto_in_0_bvalid),
    .auto_in_0_bparam(xbar_2_auto_in_0_bparam),
    .auto_in_0_baddress(xbar_2_auto_in_0_baddress),
    .auto_in_0_bdata(xbar_2_auto_in_0_bdata),
    .auto_in_0_c_ready(xbar_2_auto_in_0_c_ready),
    .auto_in_0_c_valid(xbar_2_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(xbar_2_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(xbar_2_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(xbar_2_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(xbar_2_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(xbar_2_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_echo_blockisdirty(xbar_2_auto_in_0_c_bits_echo_blockisdirty),
    .auto_in_0_c_bits_data(xbar_2_auto_in_0_c_bits_data),
    .auto_in_0_d_ready(xbar_2_auto_in_0_d_ready),
    .auto_in_0_d_valid(xbar_2_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(xbar_2_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(xbar_2_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(xbar_2_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(xbar_2_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(xbar_2_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(xbar_2_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_echo_blockisdirty(xbar_2_auto_in_0_d_bits_echo_blockisdirty),
    .auto_in_0_d_bits_data(xbar_2_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(xbar_2_auto_in_0_d_bits_corrupt),
    .auto_in_0_e_valid(xbar_2_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(xbar_2_auto_in_0_e_bits_sink),
    .auto_out_a_ready(xbar_2_auto_out_a_ready),
    .auto_out_a_valid(xbar_2_auto_out_a_valid),
    .auto_out_a_bits_opcode(xbar_2_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(xbar_2_auto_out_a_bits_param),
    .auto_out_a_bits_size(xbar_2_auto_out_a_bits_size),
    .auto_out_a_bits_source(xbar_2_auto_out_a_bits_source),
    .auto_out_a_bits_address(xbar_2_auto_out_a_bits_address),
    .auto_out_a_bits_mask(xbar_2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(xbar_2_auto_out_a_bits_data),
    .auto_out_bready(xbar_2_auto_out_bready),
    .auto_out_bvalid(xbar_2_auto_out_bvalid),
    .auto_out_bparam(xbar_2_auto_out_bparam),
    .auto_out_baddress(xbar_2_auto_out_baddress),
    .auto_out_bdata(xbar_2_auto_out_bdata),
    .auto_out_c_ready(xbar_2_auto_out_c_ready),
    .auto_out_c_valid(xbar_2_auto_out_c_valid),
    .auto_out_c_bits_opcode(xbar_2_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(xbar_2_auto_out_c_bits_param),
    .auto_out_c_bits_size(xbar_2_auto_out_c_bits_size),
    .auto_out_c_bits_source(xbar_2_auto_out_c_bits_source),
    .auto_out_c_bits_address(xbar_2_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(xbar_2_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(xbar_2_auto_out_c_bits_data),
    .auto_out_d_ready(xbar_2_auto_out_d_ready),
    .auto_out_d_valid(xbar_2_auto_out_d_valid),
    .auto_out_d_bits_opcode(xbar_2_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(xbar_2_auto_out_d_bits_param),
    .auto_out_d_bits_size(xbar_2_auto_out_d_bits_size),
    .auto_out_d_bits_source(xbar_2_auto_out_d_bits_source),
    .auto_out_d_bits_sink(xbar_2_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(xbar_2_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(xbar_2_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(xbar_2_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(xbar_2_auto_out_d_bits_corrupt),
    .auto_out_e_valid(xbar_2_auto_out_e_valid),
    .auto_out_e_bits_sink(xbar_2_auto_out_e_bits_sink)
  );
  TLXbar_3 xbar_3 ( // @[Xbar.scala 142:26]
    .clock(xbar_3_clock),
    .reset(xbar_3_reset),
    .auto_in_1_a_ready(xbar_3_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_3_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_3_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_size(xbar_3_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_3_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_3_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(xbar_3_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(xbar_3_auto_in_1_a_bits_data),
    .auto_in_1_d_ready(xbar_3_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_3_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_3_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_size(xbar_3_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(xbar_3_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_data(xbar_3_auto_in_1_d_bits_data),
    .auto_in_0_a_ready(xbar_3_auto_in_0_a_ready),
    .auto_in_0_a_valid(xbar_3_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(xbar_3_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_size(xbar_3_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(xbar_3_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(xbar_3_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(xbar_3_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(xbar_3_auto_in_0_a_bits_data),
    .auto_in_0_d_ready(xbar_3_auto_in_0_d_ready),
    .auto_in_0_d_valid(xbar_3_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(xbar_3_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(xbar_3_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(xbar_3_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(xbar_3_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_denied(xbar_3_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(xbar_3_auto_in_0_d_bits_data),
    .auto_out_a_ready(xbar_3_auto_out_a_ready),
    .auto_out_a_valid(xbar_3_auto_out_a_valid),
    .auto_out_a_bits_opcode(xbar_3_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(xbar_3_auto_out_a_bits_size),
    .auto_out_a_bits_source(xbar_3_auto_out_a_bits_source),
    .auto_out_a_bits_address(xbar_3_auto_out_a_bits_address),
    .auto_out_a_bits_mask(xbar_3_auto_out_a_bits_mask),
    .auto_out_a_bits_data(xbar_3_auto_out_a_bits_data),
    .auto_out_d_ready(xbar_3_auto_out_d_ready),
    .auto_out_d_valid(xbar_3_auto_out_d_valid),
    .auto_out_d_bits_opcode(xbar_3_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(xbar_3_auto_out_d_bits_param),
    .auto_out_d_bits_size(xbar_3_auto_out_d_bits_size),
    .auto_out_d_bits_source(xbar_3_auto_out_d_bits_source),
    .auto_out_d_bits_denied(xbar_3_auto_out_d_bits_denied),
    .auto_out_d_bits_data(xbar_3_auto_out_d_bits_data)
  );
  TLBuffer buffers ( // @[Buffer.scala 73:47]
    .clock(buffers_clock),
    .reset(buffers_reset),
    .auto_in_a_ready(buffers_auto_in_a_ready),
    .auto_in_a_valid(buffers_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_auto_in_d_ready),
    .auto_in_d_valid(buffers_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffers_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffers_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffers_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffers_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_auto_out_a_ready),
    .auto_out_a_valid(buffers_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_auto_out_d_ready),
    .auto_out_d_valid(buffers_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffers_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffers_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffers_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffers_auto_out_d_bits_data)
  );
  TLBuffer buffers_1 ( // @[Buffer.scala 73:47]
    .clock(buffers_1_clock),
    .reset(buffers_1_reset),
    .auto_in_a_ready(buffers_1_auto_in_a_ready),
    .auto_in_a_valid(buffers_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_1_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_1_auto_in_d_ready),
    .auto_in_d_valid(buffers_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffers_1_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffers_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_1_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffers_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffers_1_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_1_auto_out_a_ready),
    .auto_out_a_valid(buffers_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_1_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_1_auto_out_d_ready),
    .auto_out_d_valid(buffers_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffers_1_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffers_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_1_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffers_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffers_1_auto_out_d_bits_data)
  );
  TLCacheCork cork ( // @[CacheCork.scala 177:26]
    .clock(cork_clock),
    .reset(cork_reset),
    .auto_in_a_ready(cork_auto_in_a_ready),
    .auto_in_a_valid(cork_auto_in_a_valid),
    .auto_in_a_bits_opcode(cork_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(cork_auto_in_a_bits_param),
    .auto_in_a_bits_size(cork_auto_in_a_bits_size),
    .auto_in_a_bits_source(cork_auto_in_a_bits_source),
    .auto_in_a_bits_address(cork_auto_in_a_bits_address),
    .auto_in_a_bits_mask(cork_auto_in_a_bits_mask),
    .auto_in_a_bits_data(cork_auto_in_a_bits_data),
    .auto_in_c_ready(cork_auto_in_c_ready),
    .auto_in_c_valid(cork_auto_in_c_valid),
    .auto_in_c_bits_opcode(cork_auto_in_c_bits_opcode),
    .auto_in_c_bits_size(cork_auto_in_c_bits_size),
    .auto_in_c_bits_source(cork_auto_in_c_bits_source),
    .auto_in_c_bits_address(cork_auto_in_c_bits_address),
    .auto_in_c_bits_data(cork_auto_in_c_bits_data),
    .auto_in_d_ready(cork_auto_in_d_ready),
    .auto_in_d_valid(cork_auto_in_d_valid),
    .auto_in_d_bits_opcode(cork_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(cork_auto_in_d_bits_param),
    .auto_in_d_bits_size(cork_auto_in_d_bits_size),
    .auto_in_d_bits_source(cork_auto_in_d_bits_source),
    .auto_in_d_bits_sink(cork_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(cork_auto_in_d_bits_denied),
    .auto_in_d_bits_data(cork_auto_in_d_bits_data),
    .auto_in_e_valid(cork_auto_in_e_valid),
    .auto_in_e_bits_sink(cork_auto_in_e_bits_sink),
    .auto_out_a_ready(cork_auto_out_a_ready),
    .auto_out_a_valid(cork_auto_out_a_valid),
    .auto_out_a_bits_opcode(cork_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(cork_auto_out_a_bits_size),
    .auto_out_a_bits_source(cork_auto_out_a_bits_source),
    .auto_out_a_bits_address(cork_auto_out_a_bits_address),
    .auto_out_a_bits_mask(cork_auto_out_a_bits_mask),
    .auto_out_a_bits_data(cork_auto_out_a_bits_data),
    .auto_out_d_ready(cork_auto_out_d_ready),
    .auto_out_d_valid(cork_auto_out_d_valid),
    .auto_out_d_bits_opcode(cork_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(cork_auto_out_d_bits_param),
    .auto_out_d_bits_size(cork_auto_out_d_bits_size),
    .auto_out_d_bits_source(cork_auto_out_d_bits_source),
    .auto_out_d_bits_denied(cork_auto_out_d_bits_denied),
    .auto_out_d_bits_data(cork_auto_out_d_bits_data)
  );
  BankBinder merger ( // @[TLClientsMerger.scala 66:28]
    .auto_in_a_ready(merger_auto_in_a_ready),
    .auto_in_a_valid(merger_auto_in_a_valid),
    .auto_in_a_bits_opcode(merger_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(merger_auto_in_a_bits_param),
    .auto_in_a_bits_size(merger_auto_in_a_bits_size),
    .auto_in_a_bits_source(merger_auto_in_a_bits_source),
    .auto_in_a_bits_address(merger_auto_in_a_bits_address),
    .auto_in_a_bits_mask(merger_auto_in_a_bits_mask),
    .auto_in_a_bits_data(merger_auto_in_a_bits_data),
    .auto_in_c_ready(merger_auto_in_c_ready),
    .auto_in_c_valid(merger_auto_in_c_valid),
    .auto_in_c_bits_opcode(merger_auto_in_c_bits_opcode),
    .auto_in_c_bits_size(merger_auto_in_c_bits_size),
    .auto_in_c_bits_source(merger_auto_in_c_bits_source),
    .auto_in_c_bits_address(merger_auto_in_c_bits_address),
    .auto_in_c_bits_data(merger_auto_in_c_bits_data),
    .auto_in_d_ready(merger_auto_in_d_ready),
    .auto_in_d_valid(merger_auto_in_d_valid),
    .auto_in_d_bits_opcode(merger_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(merger_auto_in_d_bits_param),
    .auto_in_d_bits_size(merger_auto_in_d_bits_size),
    .auto_in_d_bits_source(merger_auto_in_d_bits_source),
    .auto_in_d_bits_sink(merger_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(merger_auto_in_d_bits_denied),
    .auto_in_d_bits_data(merger_auto_in_d_bits_data),
    .auto_in_e_ready(merger_auto_in_e_ready),
    .auto_in_e_valid(merger_auto_in_e_valid),
    .auto_in_e_bits_sink(merger_auto_in_e_bits_sink),
    .auto_out_a_ready(merger_auto_out_a_ready),
    .auto_out_a_valid(merger_auto_out_a_valid),
    .auto_out_a_bits_opcode(merger_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(merger_auto_out_a_bits_param),
    .auto_out_a_bits_size(merger_auto_out_a_bits_size),
    .auto_out_a_bits_source(merger_auto_out_a_bits_source),
    .auto_out_a_bits_address(merger_auto_out_a_bits_address),
    .auto_out_a_bits_mask(merger_auto_out_a_bits_mask),
    .auto_out_a_bits_data(merger_auto_out_a_bits_data),
    .auto_out_c_ready(merger_auto_out_c_ready),
    .auto_out_c_valid(merger_auto_out_c_valid),
    .auto_out_c_bits_opcode(merger_auto_out_c_bits_opcode),
    .auto_out_c_bits_size(merger_auto_out_c_bits_size),
    .auto_out_c_bits_source(merger_auto_out_c_bits_source),
    .auto_out_c_bits_address(merger_auto_out_c_bits_address),
    .auto_out_c_bits_data(merger_auto_out_c_bits_data),
    .auto_out_d_ready(merger_auto_out_d_ready),
    .auto_out_d_valid(merger_auto_out_d_valid),
    .auto_out_d_bits_opcode(merger_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(merger_auto_out_d_bits_param),
    .auto_out_d_bits_size(merger_auto_out_d_bits_size),
    .auto_out_d_bits_source(merger_auto_out_d_bits_source),
    .auto_out_d_bits_sink(merger_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(merger_auto_out_d_bits_denied),
    .auto_out_d_bits_data(merger_auto_out_d_bits_data),
    .auto_out_e_ready(merger_auto_out_e_ready),
    .auto_out_e_valid(merger_auto_out_e_valid),
    .auto_out_e_bits_sink(merger_auto_out_e_bits_sink)
  );
  TLXbar_4 xbar_4 ( // @[Xbar.scala 142:26]
    .auto_in_a_ready(xbar_4_auto_in_a_ready),
    .auto_in_a_valid(xbar_4_auto_in_a_valid),
    .auto_in_a_bits_opcode(xbar_4_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(xbar_4_auto_in_a_bits_param),
    .auto_in_a_bits_size(xbar_4_auto_in_a_bits_size),
    .auto_in_a_bits_source(xbar_4_auto_in_a_bits_source),
    .auto_in_a_bits_address(xbar_4_auto_in_a_bits_address),
    .auto_in_a_bits_mask(xbar_4_auto_in_a_bits_mask),
    .auto_in_a_bits_data(xbar_4_auto_in_a_bits_data),
    .auto_in_c_ready(xbar_4_auto_in_c_ready),
    .auto_in_c_valid(xbar_4_auto_in_c_valid),
    .auto_in_c_bits_opcode(xbar_4_auto_in_c_bits_opcode),
    .auto_in_c_bits_size(xbar_4_auto_in_c_bits_size),
    .auto_in_c_bits_source(xbar_4_auto_in_c_bits_source),
    .auto_in_c_bits_address(xbar_4_auto_in_c_bits_address),
    .auto_in_c_bits_data(xbar_4_auto_in_c_bits_data),
    .auto_in_d_ready(xbar_4_auto_in_d_ready),
    .auto_in_d_valid(xbar_4_auto_in_d_valid),
    .auto_in_d_bits_opcode(xbar_4_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(xbar_4_auto_in_d_bits_param),
    .auto_in_d_bits_size(xbar_4_auto_in_d_bits_size),
    .auto_in_d_bits_source(xbar_4_auto_in_d_bits_source),
    .auto_in_d_bits_sink(xbar_4_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(xbar_4_auto_in_d_bits_denied),
    .auto_in_d_bits_data(xbar_4_auto_in_d_bits_data),
    .auto_in_e_ready(xbar_4_auto_in_e_ready),
    .auto_in_e_valid(xbar_4_auto_in_e_valid),
    .auto_in_e_bits_sink(xbar_4_auto_in_e_bits_sink),
    .auto_out_a_ready(xbar_4_auto_out_a_ready),
    .auto_out_a_valid(xbar_4_auto_out_a_valid),
    .auto_out_a_bits_opcode(xbar_4_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(xbar_4_auto_out_a_bits_param),
    .auto_out_a_bits_size(xbar_4_auto_out_a_bits_size),
    .auto_out_a_bits_source(xbar_4_auto_out_a_bits_source),
    .auto_out_a_bits_address(xbar_4_auto_out_a_bits_address),
    .auto_out_a_bits_mask(xbar_4_auto_out_a_bits_mask),
    .auto_out_a_bits_data(xbar_4_auto_out_a_bits_data),
    .auto_out_c_ready(xbar_4_auto_out_c_ready),
    .auto_out_c_valid(xbar_4_auto_out_c_valid),
    .auto_out_c_bits_opcode(xbar_4_auto_out_c_bits_opcode),
    .auto_out_c_bits_size(xbar_4_auto_out_c_bits_size),
    .auto_out_c_bits_source(xbar_4_auto_out_c_bits_source),
    .auto_out_c_bits_address(xbar_4_auto_out_c_bits_address),
    .auto_out_c_bits_data(xbar_4_auto_out_c_bits_data),
    .auto_out_d_ready(xbar_4_auto_out_d_ready),
    .auto_out_d_valid(xbar_4_auto_out_d_valid),
    .auto_out_d_bits_opcode(xbar_4_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(xbar_4_auto_out_d_bits_param),
    .auto_out_d_bits_size(xbar_4_auto_out_d_bits_size),
    .auto_out_d_bits_source(xbar_4_auto_out_d_bits_source),
    .auto_out_d_bits_sink(xbar_4_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(xbar_4_auto_out_d_bits_denied),
    .auto_out_d_bits_data(xbar_4_auto_out_d_bits_data),
    .auto_out_e_ready(xbar_4_auto_out_e_ready),
    .auto_out_e_valid(xbar_4_auto_out_e_valid),
    .auto_out_e_bits_sink(xbar_4_auto_out_e_bits_sink)
  );
  TLWidthWidget widget ( // @[WidthWidget.scala 219:28]
    .clock(widget_clock),
    .reset(widget_reset),
    .auto_in_a_ready(widget_auto_in_a_ready),
    .auto_in_a_valid(widget_auto_in_a_valid),
    .auto_in_a_bits_opcode(widget_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(widget_auto_in_a_bits_size),
    .auto_in_a_bits_source(widget_auto_in_a_bits_source),
    .auto_in_a_bits_address(widget_auto_in_a_bits_address),
    .auto_in_a_bits_mask(widget_auto_in_a_bits_mask),
    .auto_in_a_bits_data(widget_auto_in_a_bits_data),
    .auto_in_d_ready(widget_auto_in_d_ready),
    .auto_in_d_valid(widget_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(widget_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_auto_in_d_bits_source),
    .auto_in_d_bits_data(widget_auto_in_d_bits_data),
    .auto_out_a_ready(widget_auto_out_a_ready),
    .auto_out_a_valid(widget_auto_out_a_valid),
    .auto_out_a_bits_opcode(widget_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(widget_auto_out_a_bits_size),
    .auto_out_a_bits_source(widget_auto_out_a_bits_source),
    .auto_out_a_bits_address(widget_auto_out_a_bits_address),
    .auto_out_a_bits_mask(widget_auto_out_a_bits_mask),
    .auto_out_a_bits_data(widget_auto_out_a_bits_data),
    .auto_out_d_ready(widget_auto_out_d_ready),
    .auto_out_d_valid(widget_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(widget_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_auto_out_d_bits_source),
    .auto_out_d_bits_data(widget_auto_out_d_bits_data)
  );
  TLBuffer_2 PeripheralXbar_to_MemXbar_buffer_0 ( // @[Buffer.scala 73:47]
    .clock(PeripheralXbar_to_MemXbar_buffer_0_clock),
    .reset(PeripheralXbar_to_MemXbar_buffer_0_reset),
    .auto_in_a_ready(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_ready),
    .auto_in_a_valid(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_valid),
    .auto_in_a_bits_opcode(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_size),
    .auto_in_a_bits_source(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_source),
    .auto_in_a_bits_address(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_address),
    .auto_in_a_bits_mask(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_mask),
    .auto_in_a_bits_data(PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_data),
    .auto_in_d_ready(PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_ready),
    .auto_in_d_valid(PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_valid),
    .auto_in_d_bits_opcode(PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_size),
    .auto_in_d_bits_source(PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_source),
    .auto_in_d_bits_data(PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_data),
    .auto_out_a_ready(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_ready),
    .auto_out_a_valid(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_valid),
    .auto_out_a_bits_opcode(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_size),
    .auto_out_a_bits_source(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_source),
    .auto_out_a_bits_address(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_address),
    .auto_out_a_bits_mask(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_mask),
    .auto_out_a_bits_data(PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_data),
    .auto_out_d_ready(PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_ready),
    .auto_out_d_valid(PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_valid),
    .auto_out_d_bits_opcode(PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_size),
    .auto_out_d_bits_source(PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_source),
    .auto_out_d_bits_data(PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_data)
  );
  TLBuffer_2 PeripheralXbar_to_MemXbar_buffer_1 ( // @[Buffer.scala 73:47]
    .clock(PeripheralXbar_to_MemXbar_buffer_1_clock),
    .reset(PeripheralXbar_to_MemXbar_buffer_1_reset),
    .auto_in_a_ready(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_ready),
    .auto_in_a_valid(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_data),
    .auto_in_d_ready(PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_ready),
    .auto_in_d_valid(PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_source),
    .auto_in_d_bits_data(PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_data),
    .auto_out_a_ready(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_ready),
    .auto_out_a_valid(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_data),
    .auto_out_d_ready(PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_ready),
    .auto_out_d_valid(PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_source),
    .auto_out_d_bits_data(PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_data)
  );
  TLBuffer_2 PeripheralXbar_to_MemXbar_buffer_2 ( // @[Buffer.scala 73:47]
    .clock(PeripheralXbar_to_MemXbar_buffer_2_clock),
    .reset(PeripheralXbar_to_MemXbar_buffer_2_reset),
    .auto_in_a_ready(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_ready),
    .auto_in_a_valid(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_valid),
    .auto_in_a_bits_opcode(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_size),
    .auto_in_a_bits_source(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_source),
    .auto_in_a_bits_address(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_address),
    .auto_in_a_bits_mask(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_mask),
    .auto_in_a_bits_data(PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_data),
    .auto_in_d_ready(PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_ready),
    .auto_in_d_valid(PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_valid),
    .auto_in_d_bits_opcode(PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_size),
    .auto_in_d_bits_source(PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_source),
    .auto_in_d_bits_data(PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_data),
    .auto_out_a_ready(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_ready),
    .auto_out_a_valid(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_valid),
    .auto_out_a_bits_opcode(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_size),
    .auto_out_a_bits_source(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_source),
    .auto_out_a_bits_address(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_address),
    .auto_out_a_bits_mask(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_data),
    .auto_out_d_ready(PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_ready),
    .auto_out_d_valid(PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_valid),
    .auto_out_d_bits_opcode(PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_size),
    .auto_out_d_bits_source(PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_source),
    .auto_out_d_bits_data(PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_data)
  );
  AXI4Buffer axi4buf ( // @[Buffer.scala 62:29]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_awready(axi4buf_auto_in_awready),
    .auto_in_awvalid(axi4buf_auto_in_awvalid),
    .auto_in_awid(axi4buf_auto_in_awid),
    .auto_in_awaddr(axi4buf_auto_in_awaddr),
    .auto_in_awlen(axi4buf_auto_in_awlen),
    .auto_in_awsize(axi4buf_auto_in_awsize),
    .auto_in_awburst(axi4buf_auto_in_awburst),
    .auto_in_awlock(axi4buf_auto_in_awlock),
    .auto_in_awcache(axi4buf_auto_in_awcache),
    .auto_in_awprot(axi4buf_auto_in_awprot),
    .auto_in_awqos(axi4buf_auto_in_awqos),
    .auto_in_wready(axi4buf_auto_in_wready),
    .auto_in_wvalid(axi4buf_auto_in_wvalid),
    .auto_in_wdata(axi4buf_auto_in_wdata),
    .auto_in_wstrb(axi4buf_auto_in_wstrb),
    .auto_in_wlast(axi4buf_auto_in_wlast),
    .auto_in_bready(axi4buf_auto_in_bready),
    .auto_in_bvalid(axi4buf_auto_in_bvalid),
    .auto_in_bid(axi4buf_auto_in_bid),
    .auto_in_bresp(axi4buf_auto_in_bresp),
    .auto_in_arready(axi4buf_auto_in_arready),
    .auto_in_arvalid(axi4buf_auto_in_arvalid),
    .auto_in_arid(axi4buf_auto_in_arid),
    .auto_in_araddr(axi4buf_auto_in_araddr),
    .auto_in_arlen(axi4buf_auto_in_arlen),
    .auto_in_arsize(axi4buf_auto_in_arsize),
    .auto_in_arburst(axi4buf_auto_in_arburst),
    .auto_in_arlock(axi4buf_auto_in_arlock),
    .auto_in_arcache(axi4buf_auto_in_arcache),
    .auto_in_arprot(axi4buf_auto_in_arprot),
    .auto_in_arqos(axi4buf_auto_in_arqos),
    .auto_in_rready(axi4buf_auto_in_rready),
    .auto_in_rvalid(axi4buf_auto_in_rvalid),
    .auto_in_rid(axi4buf_auto_in_rid),
    .auto_in_rdata(axi4buf_auto_in_rdata),
    .auto_in_rresp(axi4buf_auto_in_rresp),
    .auto_in_rlast(axi4buf_auto_in_rlast),
    .auto_out_awready(axi4buf_auto_out_awready),
    .auto_out_awvalid(axi4buf_auto_out_awvalid),
    .auto_out_awid(axi4buf_auto_out_awid),
    .auto_out_awaddr(axi4buf_auto_out_awaddr),
    .auto_out_awlen(axi4buf_auto_out_awlen),
    .auto_out_awsize(axi4buf_auto_out_awsize),
    .auto_out_awburst(axi4buf_auto_out_awburst),
    .auto_out_awlock(axi4buf_auto_out_awlock),
    .auto_out_awcache(axi4buf_auto_out_awcache),
    .auto_out_awprot(axi4buf_auto_out_awprot),
    .auto_out_awqos(axi4buf_auto_out_awqos),
    .auto_out_wready(axi4buf_auto_out_wready),
    .auto_out_wvalid(axi4buf_auto_out_wvalid),
    .auto_out_wdata(axi4buf_auto_out_wdata),
    .auto_out_wstrb(axi4buf_auto_out_wstrb),
    .auto_out_wlast(axi4buf_auto_out_wlast),
    .auto_out_bready(axi4buf_auto_out_bready),
    .auto_out_bvalid(axi4buf_auto_out_bvalid),
    .auto_out_bid(axi4buf_auto_out_bid),
    .auto_out_bresp(axi4buf_auto_out_bresp),
    .auto_out_arready(axi4buf_auto_out_arready),
    .auto_out_arvalid(axi4buf_auto_out_arvalid),
    .auto_out_arid(axi4buf_auto_out_arid),
    .auto_out_araddr(axi4buf_auto_out_araddr),
    .auto_out_arlen(axi4buf_auto_out_arlen),
    .auto_out_arsize(axi4buf_auto_out_arsize),
    .auto_out_arburst(axi4buf_auto_out_arburst),
    .auto_out_arlock(axi4buf_auto_out_arlock),
    .auto_out_arcache(axi4buf_auto_out_arcache),
    .auto_out_arprot(axi4buf_auto_out_arprot),
    .auto_out_arqos(axi4buf_auto_out_arqos),
    .auto_out_rready(axi4buf_auto_out_rready),
    .auto_out_rvalid(axi4buf_auto_out_rvalid),
    .auto_out_rid(axi4buf_auto_out_rid),
    .auto_out_rdata(axi4buf_auto_out_rdata),
    .auto_out_rresp(axi4buf_auto_out_rresp),
    .auto_out_rlast(axi4buf_auto_out_rlast)
  );
  AXI4Buffer axi4buf_1 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_1_clock),
    .reset(axi4buf_1_reset),
    .auto_in_awready(axi4buf_1_auto_in_awready),
    .auto_in_awvalid(axi4buf_1_auto_in_awvalid),
    .auto_in_awid(axi4buf_1_auto_in_awid),
    .auto_in_awaddr(axi4buf_1_auto_in_awaddr),
    .auto_in_awlen(axi4buf_1_auto_in_awlen),
    .auto_in_awsize(axi4buf_1_auto_in_awsize),
    .auto_in_awburst(axi4buf_1_auto_in_awburst),
    .auto_in_awlock(axi4buf_1_auto_in_awlock),
    .auto_in_awcache(axi4buf_1_auto_in_awcache),
    .auto_in_awprot(axi4buf_1_auto_in_awprot),
    .auto_in_awqos(axi4buf_1_auto_in_awqos),
    .auto_in_wready(axi4buf_1_auto_in_wready),
    .auto_in_wvalid(axi4buf_1_auto_in_wvalid),
    .auto_in_wdata(axi4buf_1_auto_in_wdata),
    .auto_in_wstrb(axi4buf_1_auto_in_wstrb),
    .auto_in_wlast(axi4buf_1_auto_in_wlast),
    .auto_in_bready(axi4buf_1_auto_in_bready),
    .auto_in_bvalid(axi4buf_1_auto_in_bvalid),
    .auto_in_bid(axi4buf_1_auto_in_bid),
    .auto_in_bresp(axi4buf_1_auto_in_bresp),
    .auto_in_arready(axi4buf_1_auto_in_arready),
    .auto_in_arvalid(axi4buf_1_auto_in_arvalid),
    .auto_in_arid(axi4buf_1_auto_in_arid),
    .auto_in_araddr(axi4buf_1_auto_in_araddr),
    .auto_in_arlen(axi4buf_1_auto_in_arlen),
    .auto_in_arsize(axi4buf_1_auto_in_arsize),
    .auto_in_arburst(axi4buf_1_auto_in_arburst),
    .auto_in_arlock(axi4buf_1_auto_in_arlock),
    .auto_in_arcache(axi4buf_1_auto_in_arcache),
    .auto_in_arprot(axi4buf_1_auto_in_arprot),
    .auto_in_arqos(axi4buf_1_auto_in_arqos),
    .auto_in_rready(axi4buf_1_auto_in_rready),
    .auto_in_rvalid(axi4buf_1_auto_in_rvalid),
    .auto_in_rid(axi4buf_1_auto_in_rid),
    .auto_in_rdata(axi4buf_1_auto_in_rdata),
    .auto_in_rresp(axi4buf_1_auto_in_rresp),
    .auto_in_rlast(axi4buf_1_auto_in_rlast),
    .auto_out_awready(axi4buf_1_auto_out_awready),
    .auto_out_awvalid(axi4buf_1_auto_out_awvalid),
    .auto_out_awid(axi4buf_1_auto_out_awid),
    .auto_out_awaddr(axi4buf_1_auto_out_awaddr),
    .auto_out_awlen(axi4buf_1_auto_out_awlen),
    .auto_out_awsize(axi4buf_1_auto_out_awsize),
    .auto_out_awburst(axi4buf_1_auto_out_awburst),
    .auto_out_awlock(axi4buf_1_auto_out_awlock),
    .auto_out_awcache(axi4buf_1_auto_out_awcache),
    .auto_out_awprot(axi4buf_1_auto_out_awprot),
    .auto_out_awqos(axi4buf_1_auto_out_awqos),
    .auto_out_wready(axi4buf_1_auto_out_wready),
    .auto_out_wvalid(axi4buf_1_auto_out_wvalid),
    .auto_out_wdata(axi4buf_1_auto_out_wdata),
    .auto_out_wstrb(axi4buf_1_auto_out_wstrb),
    .auto_out_wlast(axi4buf_1_auto_out_wlast),
    .auto_out_bready(axi4buf_1_auto_out_bready),
    .auto_out_bvalid(axi4buf_1_auto_out_bvalid),
    .auto_out_bid(axi4buf_1_auto_out_bid),
    .auto_out_bresp(axi4buf_1_auto_out_bresp),
    .auto_out_arready(axi4buf_1_auto_out_arready),
    .auto_out_arvalid(axi4buf_1_auto_out_arvalid),
    .auto_out_arid(axi4buf_1_auto_out_arid),
    .auto_out_araddr(axi4buf_1_auto_out_araddr),
    .auto_out_arlen(axi4buf_1_auto_out_arlen),
    .auto_out_arsize(axi4buf_1_auto_out_arsize),
    .auto_out_arburst(axi4buf_1_auto_out_arburst),
    .auto_out_arlock(axi4buf_1_auto_out_arlock),
    .auto_out_arcache(axi4buf_1_auto_out_arcache),
    .auto_out_arprot(axi4buf_1_auto_out_arprot),
    .auto_out_arqos(axi4buf_1_auto_out_arqos),
    .auto_out_rready(axi4buf_1_auto_out_rready),
    .auto_out_rvalid(axi4buf_1_auto_out_rvalid),
    .auto_out_rid(axi4buf_1_auto_out_rid),
    .auto_out_rdata(axi4buf_1_auto_out_rdata),
    .auto_out_rresp(axi4buf_1_auto_out_rresp),
    .auto_out_rlast(axi4buf_1_auto_out_rlast)
  );
  AXI4Buffer axi4buf_2 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_2_clock),
    .reset(axi4buf_2_reset),
    .auto_in_awready(axi4buf_2_auto_in_awready),
    .auto_in_awvalid(axi4buf_2_auto_in_awvalid),
    .auto_in_awid(axi4buf_2_auto_in_awid),
    .auto_in_awaddr(axi4buf_2_auto_in_awaddr),
    .auto_in_awlen(axi4buf_2_auto_in_awlen),
    .auto_in_awsize(axi4buf_2_auto_in_awsize),
    .auto_in_awburst(axi4buf_2_auto_in_awburst),
    .auto_in_awlock(axi4buf_2_auto_in_awlock),
    .auto_in_awcache(axi4buf_2_auto_in_awcache),
    .auto_in_awprot(axi4buf_2_auto_in_awprot),
    .auto_in_awqos(axi4buf_2_auto_in_awqos),
    .auto_in_wready(axi4buf_2_auto_in_wready),
    .auto_in_wvalid(axi4buf_2_auto_in_wvalid),
    .auto_in_wdata(axi4buf_2_auto_in_wdata),
    .auto_in_wstrb(axi4buf_2_auto_in_wstrb),
    .auto_in_wlast(axi4buf_2_auto_in_wlast),
    .auto_in_bready(axi4buf_2_auto_in_bready),
    .auto_in_bvalid(axi4buf_2_auto_in_bvalid),
    .auto_in_bid(axi4buf_2_auto_in_bid),
    .auto_in_bresp(axi4buf_2_auto_in_bresp),
    .auto_in_arready(axi4buf_2_auto_in_arready),
    .auto_in_arvalid(axi4buf_2_auto_in_arvalid),
    .auto_in_arid(axi4buf_2_auto_in_arid),
    .auto_in_araddr(axi4buf_2_auto_in_araddr),
    .auto_in_arlen(axi4buf_2_auto_in_arlen),
    .auto_in_arsize(axi4buf_2_auto_in_arsize),
    .auto_in_arburst(axi4buf_2_auto_in_arburst),
    .auto_in_arlock(axi4buf_2_auto_in_arlock),
    .auto_in_arcache(axi4buf_2_auto_in_arcache),
    .auto_in_arprot(axi4buf_2_auto_in_arprot),
    .auto_in_arqos(axi4buf_2_auto_in_arqos),
    .auto_in_rready(axi4buf_2_auto_in_rready),
    .auto_in_rvalid(axi4buf_2_auto_in_rvalid),
    .auto_in_rid(axi4buf_2_auto_in_rid),
    .auto_in_rdata(axi4buf_2_auto_in_rdata),
    .auto_in_rresp(axi4buf_2_auto_in_rresp),
    .auto_in_rlast(axi4buf_2_auto_in_rlast),
    .auto_out_awready(axi4buf_2_auto_out_awready),
    .auto_out_awvalid(axi4buf_2_auto_out_awvalid),
    .auto_out_awid(axi4buf_2_auto_out_awid),
    .auto_out_awaddr(axi4buf_2_auto_out_awaddr),
    .auto_out_awlen(axi4buf_2_auto_out_awlen),
    .auto_out_awsize(axi4buf_2_auto_out_awsize),
    .auto_out_awburst(axi4buf_2_auto_out_awburst),
    .auto_out_awlock(axi4buf_2_auto_out_awlock),
    .auto_out_awcache(axi4buf_2_auto_out_awcache),
    .auto_out_awprot(axi4buf_2_auto_out_awprot),
    .auto_out_awqos(axi4buf_2_auto_out_awqos),
    .auto_out_wready(axi4buf_2_auto_out_wready),
    .auto_out_wvalid(axi4buf_2_auto_out_wvalid),
    .auto_out_wdata(axi4buf_2_auto_out_wdata),
    .auto_out_wstrb(axi4buf_2_auto_out_wstrb),
    .auto_out_wlast(axi4buf_2_auto_out_wlast),
    .auto_out_bready(axi4buf_2_auto_out_bready),
    .auto_out_bvalid(axi4buf_2_auto_out_bvalid),
    .auto_out_bid(axi4buf_2_auto_out_bid),
    .auto_out_bresp(axi4buf_2_auto_out_bresp),
    .auto_out_arready(axi4buf_2_auto_out_arready),
    .auto_out_arvalid(axi4buf_2_auto_out_arvalid),
    .auto_out_arid(axi4buf_2_auto_out_arid),
    .auto_out_araddr(axi4buf_2_auto_out_araddr),
    .auto_out_arlen(axi4buf_2_auto_out_arlen),
    .auto_out_arsize(axi4buf_2_auto_out_arsize),
    .auto_out_arburst(axi4buf_2_auto_out_arburst),
    .auto_out_arlock(axi4buf_2_auto_out_arlock),
    .auto_out_arcache(axi4buf_2_auto_out_arcache),
    .auto_out_arprot(axi4buf_2_auto_out_arprot),
    .auto_out_arqos(axi4buf_2_auto_out_arqos),
    .auto_out_rready(axi4buf_2_auto_out_rready),
    .auto_out_rvalid(axi4buf_2_auto_out_rvalid),
    .auto_out_rid(axi4buf_2_auto_out_rid),
    .auto_out_rdata(axi4buf_2_auto_out_rdata),
    .auto_out_rresp(axi4buf_2_auto_out_rresp),
    .auto_out_rlast(axi4buf_2_auto_out_rlast)
  );
  AXI4IdIndexer axi4index ( // @[IdIndexer.scala 91:31]
    .auto_in_awready(axi4index_auto_in_awready),
    .auto_in_awvalid(axi4index_auto_in_awvalid),
    .auto_in_awid(axi4index_auto_in_awid),
    .auto_in_awaddr(axi4index_auto_in_awaddr),
    .auto_in_awlen(axi4index_auto_in_awlen),
    .auto_in_awsize(axi4index_auto_in_awsize),
    .auto_in_awburst(axi4index_auto_in_awburst),
    .auto_in_awlock(axi4index_auto_in_awlock),
    .auto_in_awcache(axi4index_auto_in_awcache),
    .auto_in_awprot(axi4index_auto_in_awprot),
    .auto_in_awqos(axi4index_auto_in_awqos),
    .auto_in_wready(axi4index_auto_in_wready),
    .auto_in_wvalid(axi4index_auto_in_wvalid),
    .auto_in_wdata(axi4index_auto_in_wdata),
    .auto_in_wstrb(axi4index_auto_in_wstrb),
    .auto_in_wlast(axi4index_auto_in_wlast),
    .auto_in_bready(axi4index_auto_in_bready),
    .auto_in_bvalid(axi4index_auto_in_bvalid),
    .auto_in_bid(axi4index_auto_in_bid),
    .auto_in_bresp(axi4index_auto_in_bresp),
    .auto_in_arready(axi4index_auto_in_arready),
    .auto_in_arvalid(axi4index_auto_in_arvalid),
    .auto_in_arid(axi4index_auto_in_arid),
    .auto_in_araddr(axi4index_auto_in_araddr),
    .auto_in_arlen(axi4index_auto_in_arlen),
    .auto_in_arsize(axi4index_auto_in_arsize),
    .auto_in_arburst(axi4index_auto_in_arburst),
    .auto_in_arlock(axi4index_auto_in_arlock),
    .auto_in_arcache(axi4index_auto_in_arcache),
    .auto_in_arprot(axi4index_auto_in_arprot),
    .auto_in_arqos(axi4index_auto_in_arqos),
    .auto_in_rready(axi4index_auto_in_rready),
    .auto_in_rvalid(axi4index_auto_in_rvalid),
    .auto_in_rid(axi4index_auto_in_rid),
    .auto_in_rdata(axi4index_auto_in_rdata),
    .auto_in_rresp(axi4index_auto_in_rresp),
    .auto_in_rlast(axi4index_auto_in_rlast),
    .auto_out_awready(axi4index_auto_out_awready),
    .auto_out_awvalid(axi4index_auto_out_awvalid),
    .auto_out_awid(axi4index_auto_out_awid),
    .auto_out_awaddr(axi4index_auto_out_awaddr),
    .auto_out_awlen(axi4index_auto_out_awlen),
    .auto_out_awsize(axi4index_auto_out_awsize),
    .auto_out_awburst(axi4index_auto_out_awburst),
    .auto_out_awlock(axi4index_auto_out_awlock),
    .auto_out_awcache(axi4index_auto_out_awcache),
    .auto_out_awprot(axi4index_auto_out_awprot),
    .auto_out_awqos(axi4index_auto_out_awqos),
    .auto_out_wready(axi4index_auto_out_wready),
    .auto_out_wvalid(axi4index_auto_out_wvalid),
    .auto_out_wdata(axi4index_auto_out_wdata),
    .auto_out_wstrb(axi4index_auto_out_wstrb),
    .auto_out_wlast(axi4index_auto_out_wlast),
    .auto_out_bready(axi4index_auto_out_bready),
    .auto_out_bvalid(axi4index_auto_out_bvalid),
    .auto_out_bid(axi4index_auto_out_bid),
    .auto_out_bresp(axi4index_auto_out_bresp),
    .auto_out_arready(axi4index_auto_out_arready),
    .auto_out_arvalid(axi4index_auto_out_arvalid),
    .auto_out_arid(axi4index_auto_out_arid),
    .auto_out_araddr(axi4index_auto_out_araddr),
    .auto_out_arlen(axi4index_auto_out_arlen),
    .auto_out_arsize(axi4index_auto_out_arsize),
    .auto_out_arburst(axi4index_auto_out_arburst),
    .auto_out_arlock(axi4index_auto_out_arlock),
    .auto_out_arcache(axi4index_auto_out_arcache),
    .auto_out_arprot(axi4index_auto_out_arprot),
    .auto_out_arqos(axi4index_auto_out_arqos),
    .auto_out_rready(axi4index_auto_out_rready),
    .auto_out_rvalid(axi4index_auto_out_rvalid),
    .auto_out_rid(axi4index_auto_out_rid),
    .auto_out_rdata(axi4index_auto_out_rdata),
    .auto_out_rresp(axi4index_auto_out_rresp),
    .auto_out_rlast(axi4index_auto_out_rlast)
  );
  AXI4UserYanker axi4yank ( // @[UserYanker.scala 105:30]
    .clock(axi4yank_clock),
    .reset(axi4yank_reset),
    .auto_in_awready(axi4yank_auto_in_awready),
    .auto_in_awvalid(axi4yank_auto_in_awvalid),
    .auto_in_awid(axi4yank_auto_in_awid),
    .auto_in_awaddr(axi4yank_auto_in_awaddr),
    .auto_in_awlen(axi4yank_auto_in_awlen),
    .auto_in_awsize(axi4yank_auto_in_awsize),
    .auto_in_awburst(axi4yank_auto_in_awburst),
    .auto_in_awlock(axi4yank_auto_in_awlock),
    .auto_in_awcache(axi4yank_auto_in_awcache),
    .auto_in_awprot(axi4yank_auto_in_awprot),
    .auto_in_awqos(axi4yank_auto_in_awqos),
    .auto_in_awecho_tl_state_size(axi4yank_auto_in_awecho_tl_state_size),
    .auto_in_awecho_tl_state_source(axi4yank_auto_in_awecho_tl_state_source),
    .auto_in_wready(axi4yank_auto_in_wready),
    .auto_in_wvalid(axi4yank_auto_in_wvalid),
    .auto_in_wdata(axi4yank_auto_in_wdata),
    .auto_in_wstrb(axi4yank_auto_in_wstrb),
    .auto_in_wlast(axi4yank_auto_in_wlast),
    .auto_in_bready(axi4yank_auto_in_bready),
    .auto_in_bvalid(axi4yank_auto_in_bvalid),
    .auto_in_bid(axi4yank_auto_in_bid),
    .auto_in_bresp(axi4yank_auto_in_bresp),
    .auto_in_becho_tl_state_size(axi4yank_auto_in_becho_tl_state_size),
    .auto_in_becho_tl_state_source(axi4yank_auto_in_becho_tl_state_source),
    .auto_in_arready(axi4yank_auto_in_arready),
    .auto_in_arvalid(axi4yank_auto_in_arvalid),
    .auto_in_arid(axi4yank_auto_in_arid),
    .auto_in_araddr(axi4yank_auto_in_araddr),
    .auto_in_arlen(axi4yank_auto_in_arlen),
    .auto_in_arsize(axi4yank_auto_in_arsize),
    .auto_in_arburst(axi4yank_auto_in_arburst),
    .auto_in_arlock(axi4yank_auto_in_arlock),
    .auto_in_arcache(axi4yank_auto_in_arcache),
    .auto_in_arprot(axi4yank_auto_in_arprot),
    .auto_in_arqos(axi4yank_auto_in_arqos),
    .auto_in_arecho_tl_state_size(axi4yank_auto_in_arecho_tl_state_size),
    .auto_in_arecho_tl_state_source(axi4yank_auto_in_arecho_tl_state_source),
    .auto_in_rready(axi4yank_auto_in_rready),
    .auto_in_rvalid(axi4yank_auto_in_rvalid),
    .auto_in_rid(axi4yank_auto_in_rid),
    .auto_in_rdata(axi4yank_auto_in_rdata),
    .auto_in_rresp(axi4yank_auto_in_rresp),
    .auto_in_recho_tl_state_size(axi4yank_auto_in_recho_tl_state_size),
    .auto_in_recho_tl_state_source(axi4yank_auto_in_recho_tl_state_source),
    .auto_in_rlast(axi4yank_auto_in_rlast),
    .auto_out_awready(axi4yank_auto_out_awready),
    .auto_out_awvalid(axi4yank_auto_out_awvalid),
    .auto_out_awid(axi4yank_auto_out_awid),
    .auto_out_awaddr(axi4yank_auto_out_awaddr),
    .auto_out_awlen(axi4yank_auto_out_awlen),
    .auto_out_awsize(axi4yank_auto_out_awsize),
    .auto_out_awburst(axi4yank_auto_out_awburst),
    .auto_out_awlock(axi4yank_auto_out_awlock),
    .auto_out_awcache(axi4yank_auto_out_awcache),
    .auto_out_awprot(axi4yank_auto_out_awprot),
    .auto_out_awqos(axi4yank_auto_out_awqos),
    .auto_out_wready(axi4yank_auto_out_wready),
    .auto_out_wvalid(axi4yank_auto_out_wvalid),
    .auto_out_wdata(axi4yank_auto_out_wdata),
    .auto_out_wstrb(axi4yank_auto_out_wstrb),
    .auto_out_wlast(axi4yank_auto_out_wlast),
    .auto_out_bready(axi4yank_auto_out_bready),
    .auto_out_bvalid(axi4yank_auto_out_bvalid),
    .auto_out_bid(axi4yank_auto_out_bid),
    .auto_out_bresp(axi4yank_auto_out_bresp),
    .auto_out_arready(axi4yank_auto_out_arready),
    .auto_out_arvalid(axi4yank_auto_out_arvalid),
    .auto_out_arid(axi4yank_auto_out_arid),
    .auto_out_araddr(axi4yank_auto_out_araddr),
    .auto_out_arlen(axi4yank_auto_out_arlen),
    .auto_out_arsize(axi4yank_auto_out_arsize),
    .auto_out_arburst(axi4yank_auto_out_arburst),
    .auto_out_arlock(axi4yank_auto_out_arlock),
    .auto_out_arcache(axi4yank_auto_out_arcache),
    .auto_out_arprot(axi4yank_auto_out_arprot),
    .auto_out_arqos(axi4yank_auto_out_arqos),
    .auto_out_rready(axi4yank_auto_out_rready),
    .auto_out_rvalid(axi4yank_auto_out_rvalid),
    .auto_out_rid(axi4yank_auto_out_rid),
    .auto_out_rdata(axi4yank_auto_out_rdata),
    .auto_out_rresp(axi4yank_auto_out_rresp),
    .auto_out_rlast(axi4yank_auto_out_rlast)
  );
  AXI4Deinterleaver axi4deint ( // @[Deinterleaver.scala 140:31]
    .clock(axi4deint_clock),
    .reset(axi4deint_reset),
    .auto_in_awready(axi4deint_auto_in_awready),
    .auto_in_awvalid(axi4deint_auto_in_awvalid),
    .auto_in_awid(axi4deint_auto_in_awid),
    .auto_in_awaddr(axi4deint_auto_in_awaddr),
    .auto_in_awlen(axi4deint_auto_in_awlen),
    .auto_in_awsize(axi4deint_auto_in_awsize),
    .auto_in_awburst(axi4deint_auto_in_awburst),
    .auto_in_awlock(axi4deint_auto_in_awlock),
    .auto_in_awcache(axi4deint_auto_in_awcache),
    .auto_in_awprot(axi4deint_auto_in_awprot),
    .auto_in_awqos(axi4deint_auto_in_awqos),
    .auto_in_awecho_tl_state_size(axi4deint_auto_in_awecho_tl_state_size),
    .auto_in_awecho_tl_state_source(axi4deint_auto_in_awecho_tl_state_source),
    .auto_in_wready(axi4deint_auto_in_wready),
    .auto_in_wvalid(axi4deint_auto_in_wvalid),
    .auto_in_wdata(axi4deint_auto_in_wdata),
    .auto_in_wstrb(axi4deint_auto_in_wstrb),
    .auto_in_wlast(axi4deint_auto_in_wlast),
    .auto_in_bready(axi4deint_auto_in_bready),
    .auto_in_bvalid(axi4deint_auto_in_bvalid),
    .auto_in_bid(axi4deint_auto_in_bid),
    .auto_in_bresp(axi4deint_auto_in_bresp),
    .auto_in_becho_tl_state_size(axi4deint_auto_in_becho_tl_state_size),
    .auto_in_becho_tl_state_source(axi4deint_auto_in_becho_tl_state_source),
    .auto_in_arready(axi4deint_auto_in_arready),
    .auto_in_arvalid(axi4deint_auto_in_arvalid),
    .auto_in_arid(axi4deint_auto_in_arid),
    .auto_in_araddr(axi4deint_auto_in_araddr),
    .auto_in_arlen(axi4deint_auto_in_arlen),
    .auto_in_arsize(axi4deint_auto_in_arsize),
    .auto_in_arburst(axi4deint_auto_in_arburst),
    .auto_in_arlock(axi4deint_auto_in_arlock),
    .auto_in_arcache(axi4deint_auto_in_arcache),
    .auto_in_arprot(axi4deint_auto_in_arprot),
    .auto_in_arqos(axi4deint_auto_in_arqos),
    .auto_in_arecho_tl_state_size(axi4deint_auto_in_arecho_tl_state_size),
    .auto_in_arecho_tl_state_source(axi4deint_auto_in_arecho_tl_state_source),
    .auto_in_rready(axi4deint_auto_in_rready),
    .auto_in_rvalid(axi4deint_auto_in_rvalid),
    .auto_in_rid(axi4deint_auto_in_rid),
    .auto_in_rdata(axi4deint_auto_in_rdata),
    .auto_in_rresp(axi4deint_auto_in_rresp),
    .auto_in_recho_tl_state_size(axi4deint_auto_in_recho_tl_state_size),
    .auto_in_recho_tl_state_source(axi4deint_auto_in_recho_tl_state_source),
    .auto_in_rlast(axi4deint_auto_in_rlast),
    .auto_out_awready(axi4deint_auto_out_awready),
    .auto_out_awvalid(axi4deint_auto_out_awvalid),
    .auto_out_awid(axi4deint_auto_out_awid),
    .auto_out_awaddr(axi4deint_auto_out_awaddr),
    .auto_out_awlen(axi4deint_auto_out_awlen),
    .auto_out_awsize(axi4deint_auto_out_awsize),
    .auto_out_awburst(axi4deint_auto_out_awburst),
    .auto_out_awlock(axi4deint_auto_out_awlock),
    .auto_out_awcache(axi4deint_auto_out_awcache),
    .auto_out_awprot(axi4deint_auto_out_awprot),
    .auto_out_awqos(axi4deint_auto_out_awqos),
    .auto_out_awecho_tl_state_size(axi4deint_auto_out_awecho_tl_state_size),
    .auto_out_awecho_tl_state_source(axi4deint_auto_out_awecho_tl_state_source),
    .auto_out_wready(axi4deint_auto_out_wready),
    .auto_out_wvalid(axi4deint_auto_out_wvalid),
    .auto_out_wdata(axi4deint_auto_out_wdata),
    .auto_out_wstrb(axi4deint_auto_out_wstrb),
    .auto_out_wlast(axi4deint_auto_out_wlast),
    .auto_out_bready(axi4deint_auto_out_bready),
    .auto_out_bvalid(axi4deint_auto_out_bvalid),
    .auto_out_bid(axi4deint_auto_out_bid),
    .auto_out_bresp(axi4deint_auto_out_bresp),
    .auto_out_becho_tl_state_size(axi4deint_auto_out_becho_tl_state_size),
    .auto_out_becho_tl_state_source(axi4deint_auto_out_becho_tl_state_source),
    .auto_out_arready(axi4deint_auto_out_arready),
    .auto_out_arvalid(axi4deint_auto_out_arvalid),
    .auto_out_arid(axi4deint_auto_out_arid),
    .auto_out_araddr(axi4deint_auto_out_araddr),
    .auto_out_arlen(axi4deint_auto_out_arlen),
    .auto_out_arsize(axi4deint_auto_out_arsize),
    .auto_out_arburst(axi4deint_auto_out_arburst),
    .auto_out_arlock(axi4deint_auto_out_arlock),
    .auto_out_arcache(axi4deint_auto_out_arcache),
    .auto_out_arprot(axi4deint_auto_out_arprot),
    .auto_out_arqos(axi4deint_auto_out_arqos),
    .auto_out_arecho_tl_state_size(axi4deint_auto_out_arecho_tl_state_size),
    .auto_out_arecho_tl_state_source(axi4deint_auto_out_arecho_tl_state_source),
    .auto_out_rready(axi4deint_auto_out_rready),
    .auto_out_rvalid(axi4deint_auto_out_rvalid),
    .auto_out_rid(axi4deint_auto_out_rid),
    .auto_out_rdata(axi4deint_auto_out_rdata),
    .auto_out_rresp(axi4deint_auto_out_rresp),
    .auto_out_recho_tl_state_size(axi4deint_auto_out_recho_tl_state_size),
    .auto_out_recho_tl_state_source(axi4deint_auto_out_recho_tl_state_source),
    .auto_out_rlast(axi4deint_auto_out_rlast)
  );
  TLToAXI4 tl2axi4 ( // @[ToAXI4.scala 283:29]
    .clock(tl2axi4_clock),
    .reset(tl2axi4_reset),
    .auto_in_a_ready(tl2axi4_auto_in_a_ready),
    .auto_in_a_valid(tl2axi4_auto_in_a_valid),
    .auto_in_a_bits_opcode(tl2axi4_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(tl2axi4_auto_in_a_bits_size),
    .auto_in_a_bits_source(tl2axi4_auto_in_a_bits_source),
    .auto_in_a_bits_address(tl2axi4_auto_in_a_bits_address),
    .auto_in_a_bits_mask(tl2axi4_auto_in_a_bits_mask),
    .auto_in_a_bits_data(tl2axi4_auto_in_a_bits_data),
    .auto_in_d_ready(tl2axi4_auto_in_d_ready),
    .auto_in_d_valid(tl2axi4_auto_in_d_valid),
    .auto_in_d_bits_opcode(tl2axi4_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(tl2axi4_auto_in_d_bits_size),
    .auto_in_d_bits_source(tl2axi4_auto_in_d_bits_source),
    .auto_in_d_bits_denied(tl2axi4_auto_in_d_bits_denied),
    .auto_in_d_bits_data(tl2axi4_auto_in_d_bits_data),
    .auto_out_awready(tl2axi4_auto_out_awready),
    .auto_out_awvalid(tl2axi4_auto_out_awvalid),
    .auto_out_awid(tl2axi4_auto_out_awid),
    .auto_out_awaddr(tl2axi4_auto_out_awaddr),
    .auto_out_awlen(tl2axi4_auto_out_awlen),
    .auto_out_awsize(tl2axi4_auto_out_awsize),
    .auto_out_awburst(tl2axi4_auto_out_awburst),
    .auto_out_awlock(tl2axi4_auto_out_awlock),
    .auto_out_awcache(tl2axi4_auto_out_awcache),
    .auto_out_awprot(tl2axi4_auto_out_awprot),
    .auto_out_awqos(tl2axi4_auto_out_awqos),
    .auto_out_awecho_tl_state_size(tl2axi4_auto_out_awecho_tl_state_size),
    .auto_out_awecho_tl_state_source(tl2axi4_auto_out_awecho_tl_state_source),
    .auto_out_wready(tl2axi4_auto_out_wready),
    .auto_out_wvalid(tl2axi4_auto_out_wvalid),
    .auto_out_wdata(tl2axi4_auto_out_wdata),
    .auto_out_wstrb(tl2axi4_auto_out_wstrb),
    .auto_out_wlast(tl2axi4_auto_out_wlast),
    .auto_out_bready(tl2axi4_auto_out_bready),
    .auto_out_bvalid(tl2axi4_auto_out_bvalid),
    .auto_out_bid(tl2axi4_auto_out_bid),
    .auto_out_bresp(tl2axi4_auto_out_bresp),
    .auto_out_becho_tl_state_size(tl2axi4_auto_out_becho_tl_state_size),
    .auto_out_becho_tl_state_source(tl2axi4_auto_out_becho_tl_state_source),
    .auto_out_arready(tl2axi4_auto_out_arready),
    .auto_out_arvalid(tl2axi4_auto_out_arvalid),
    .auto_out_arid(tl2axi4_auto_out_arid),
    .auto_out_araddr(tl2axi4_auto_out_araddr),
    .auto_out_arlen(tl2axi4_auto_out_arlen),
    .auto_out_arsize(tl2axi4_auto_out_arsize),
    .auto_out_arburst(tl2axi4_auto_out_arburst),
    .auto_out_arlock(tl2axi4_auto_out_arlock),
    .auto_out_arcache(tl2axi4_auto_out_arcache),
    .auto_out_arprot(tl2axi4_auto_out_arprot),
    .auto_out_arqos(tl2axi4_auto_out_arqos),
    .auto_out_arecho_tl_state_size(tl2axi4_auto_out_arecho_tl_state_size),
    .auto_out_arecho_tl_state_source(tl2axi4_auto_out_arecho_tl_state_source),
    .auto_out_rready(tl2axi4_auto_out_rready),
    .auto_out_rvalid(tl2axi4_auto_out_rvalid),
    .auto_out_rid(tl2axi4_auto_out_rid),
    .auto_out_rdata(tl2axi4_auto_out_rdata),
    .auto_out_rresp(tl2axi4_auto_out_rresp),
    .auto_out_recho_tl_state_size(tl2axi4_auto_out_recho_tl_state_size),
    .auto_out_recho_tl_state_source(tl2axi4_auto_out_recho_tl_state_source),
    .auto_out_rlast(tl2axi4_auto_out_rlast)
  );
  TLSourceShrinker shrinker ( // @[SourceShrinker.scala 88:30]
    .auto_in_a_ready(shrinker_auto_in_a_ready),
    .auto_in_a_valid(shrinker_auto_in_a_valid),
    .auto_in_a_bits_opcode(shrinker_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(shrinker_auto_in_a_bits_size),
    .auto_in_a_bits_source(shrinker_auto_in_a_bits_source),
    .auto_in_a_bits_address(shrinker_auto_in_a_bits_address),
    .auto_in_a_bits_mask(shrinker_auto_in_a_bits_mask),
    .auto_in_a_bits_data(shrinker_auto_in_a_bits_data),
    .auto_in_d_ready(shrinker_auto_in_d_ready),
    .auto_in_d_valid(shrinker_auto_in_d_valid),
    .auto_in_d_bits_opcode(shrinker_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(shrinker_auto_in_d_bits_size),
    .auto_in_d_bits_source(shrinker_auto_in_d_bits_source),
    .auto_in_d_bits_denied(shrinker_auto_in_d_bits_denied),
    .auto_in_d_bits_data(shrinker_auto_in_d_bits_data),
    .auto_out_a_ready(shrinker_auto_out_a_ready),
    .auto_out_a_valid(shrinker_auto_out_a_valid),
    .auto_out_a_bits_opcode(shrinker_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(shrinker_auto_out_a_bits_size),
    .auto_out_a_bits_source(shrinker_auto_out_a_bits_source),
    .auto_out_a_bits_address(shrinker_auto_out_a_bits_address),
    .auto_out_a_bits_mask(shrinker_auto_out_a_bits_mask),
    .auto_out_a_bits_data(shrinker_auto_out_a_bits_data),
    .auto_out_d_ready(shrinker_auto_out_d_ready),
    .auto_out_d_valid(shrinker_auto_out_d_valid),
    .auto_out_d_bits_opcode(shrinker_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(shrinker_auto_out_d_bits_size),
    .auto_out_d_bits_source(shrinker_auto_out_d_bits_source),
    .auto_out_d_bits_denied(shrinker_auto_out_d_bits_denied),
    .auto_out_d_bits_data(shrinker_auto_out_d_bits_data)
  );
  TLWidthWidget_1 widget_1 ( // @[WidthWidget.scala 219:28]
    .auto_in_a_ready(widget_1_auto_in_a_ready),
    .auto_in_a_valid(widget_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(widget_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(widget_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(widget_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(widget_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(widget_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(widget_1_auto_in_a_bits_data),
    .auto_in_d_ready(widget_1_auto_in_d_ready),
    .auto_in_d_valid(widget_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(widget_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_1_auto_in_d_bits_source),
    .auto_in_d_bits_denied(widget_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_1_auto_in_d_bits_data),
    .auto_out_a_ready(widget_1_auto_out_a_ready),
    .auto_out_a_valid(widget_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(widget_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(widget_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(widget_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(widget_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(widget_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(widget_1_auto_out_a_bits_data),
    .auto_out_d_ready(widget_1_auto_out_d_ready),
    .auto_out_d_valid(widget_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(widget_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_1_auto_out_d_bits_source),
    .auto_out_d_bits_denied(widget_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_1_auto_out_d_bits_data)
  );
  TLBuffer_5 buffers_2 ( // @[Buffer.scala 73:47]
    .clock(buffers_2_clock),
    .reset(buffers_2_reset),
    .auto_in_a_ready(buffers_2_auto_in_a_ready),
    .auto_in_a_valid(buffers_2_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_2_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_2_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_2_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_2_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_2_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_2_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_2_auto_in_d_ready),
    .auto_in_d_valid(buffers_2_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_2_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffers_2_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffers_2_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_2_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffers_2_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffers_2_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_2_auto_out_a_ready),
    .auto_out_a_valid(buffers_2_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_2_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_2_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_2_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_2_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_2_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_2_auto_out_d_ready),
    .auto_out_d_valid(buffers_2_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_2_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffers_2_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffers_2_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_2_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffers_2_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffers_2_auto_out_d_bits_data)
  );
  TLBuffer_5 buffers_3 ( // @[Buffer.scala 73:47]
    .clock(buffers_3_clock),
    .reset(buffers_3_reset),
    .auto_in_a_ready(buffers_3_auto_in_a_ready),
    .auto_in_a_valid(buffers_3_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_3_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_3_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_3_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_3_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_3_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_3_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_3_auto_in_d_ready),
    .auto_in_d_valid(buffers_3_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_3_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffers_3_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffers_3_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_3_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffers_3_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffers_3_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_3_auto_out_a_ready),
    .auto_out_a_valid(buffers_3_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_3_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_3_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_3_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_3_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_3_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_3_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_3_auto_out_d_ready),
    .auto_out_d_valid(buffers_3_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_3_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffers_3_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffers_3_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_3_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffers_3_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffers_3_auto_out_d_bits_data)
  );
  AXI4IdIndexer_1 axi4index_1 ( // @[IdIndexer.scala 91:31]
    .auto_in_awready(axi4index_1_auto_in_awready),
    .auto_in_awvalid(axi4index_1_auto_in_awvalid),
    .auto_in_awid(axi4index_1_auto_in_awid),
    .auto_in_awaddr(axi4index_1_auto_in_awaddr),
    .auto_in_awlen(axi4index_1_auto_in_awlen),
    .auto_in_awsize(axi4index_1_auto_in_awsize),
    .auto_in_awburst(axi4index_1_auto_in_awburst),
    .auto_in_awlock(axi4index_1_auto_in_awlock),
    .auto_in_awcache(axi4index_1_auto_in_awcache),
    .auto_in_awprot(axi4index_1_auto_in_awprot),
    .auto_in_awqos(axi4index_1_auto_in_awqos),
    .auto_in_wready(axi4index_1_auto_in_wready),
    .auto_in_wvalid(axi4index_1_auto_in_wvalid),
    .auto_in_wdata(axi4index_1_auto_in_wdata),
    .auto_in_wstrb(axi4index_1_auto_in_wstrb),
    .auto_in_wlast(axi4index_1_auto_in_wlast),
    .auto_in_bready(axi4index_1_auto_in_bready),
    .auto_in_bvalid(axi4index_1_auto_in_bvalid),
    .auto_in_bid(axi4index_1_auto_in_bid),
    .auto_in_arready(axi4index_1_auto_in_arready),
    .auto_in_arvalid(axi4index_1_auto_in_arvalid),
    .auto_in_arid(axi4index_1_auto_in_arid),
    .auto_in_araddr(axi4index_1_auto_in_araddr),
    .auto_in_arlen(axi4index_1_auto_in_arlen),
    .auto_in_arsize(axi4index_1_auto_in_arsize),
    .auto_in_arburst(axi4index_1_auto_in_arburst),
    .auto_in_arlock(axi4index_1_auto_in_arlock),
    .auto_in_arcache(axi4index_1_auto_in_arcache),
    .auto_in_arprot(axi4index_1_auto_in_arprot),
    .auto_in_arqos(axi4index_1_auto_in_arqos),
    .auto_in_rready(axi4index_1_auto_in_rready),
    .auto_in_rvalid(axi4index_1_auto_in_rvalid),
    .auto_in_rid(axi4index_1_auto_in_rid),
    .auto_in_rdata(axi4index_1_auto_in_rdata),
    .auto_in_rlast(axi4index_1_auto_in_rlast),
    .auto_out_awready(axi4index_1_auto_out_awready),
    .auto_out_awvalid(axi4index_1_auto_out_awvalid),
    .auto_out_awid(axi4index_1_auto_out_awid),
    .auto_out_awaddr(axi4index_1_auto_out_awaddr),
    .auto_out_awlen(axi4index_1_auto_out_awlen),
    .auto_out_awsize(axi4index_1_auto_out_awsize),
    .auto_out_awburst(axi4index_1_auto_out_awburst),
    .auto_out_awlock(axi4index_1_auto_out_awlock),
    .auto_out_awcache(axi4index_1_auto_out_awcache),
    .auto_out_awprot(axi4index_1_auto_out_awprot),
    .auto_out_awqos(axi4index_1_auto_out_awqos),
    .auto_out_wready(axi4index_1_auto_out_wready),
    .auto_out_wvalid(axi4index_1_auto_out_wvalid),
    .auto_out_wdata(axi4index_1_auto_out_wdata),
    .auto_out_wstrb(axi4index_1_auto_out_wstrb),
    .auto_out_wlast(axi4index_1_auto_out_wlast),
    .auto_out_bready(axi4index_1_auto_out_bready),
    .auto_out_bvalid(axi4index_1_auto_out_bvalid),
    .auto_out_bid(axi4index_1_auto_out_bid),
    .auto_out_arready(axi4index_1_auto_out_arready),
    .auto_out_arvalid(axi4index_1_auto_out_arvalid),
    .auto_out_arid(axi4index_1_auto_out_arid),
    .auto_out_araddr(axi4index_1_auto_out_araddr),
    .auto_out_arlen(axi4index_1_auto_out_arlen),
    .auto_out_arsize(axi4index_1_auto_out_arsize),
    .auto_out_arburst(axi4index_1_auto_out_arburst),
    .auto_out_arlock(axi4index_1_auto_out_arlock),
    .auto_out_arcache(axi4index_1_auto_out_arcache),
    .auto_out_arprot(axi4index_1_auto_out_arprot),
    .auto_out_arqos(axi4index_1_auto_out_arqos),
    .auto_out_rready(axi4index_1_auto_out_rready),
    .auto_out_rvalid(axi4index_1_auto_out_rvalid),
    .auto_out_rid(axi4index_1_auto_out_rid),
    .auto_out_rdata(axi4index_1_auto_out_rdata),
    .auto_out_rlast(axi4index_1_auto_out_rlast)
  );
  AXI4Buffer_3 axi4buf_3 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_3_clock),
    .reset(axi4buf_3_reset),
    .auto_in_awready(axi4buf_3_auto_in_awready),
    .auto_in_awvalid(axi4buf_3_auto_in_awvalid),
    .auto_in_awid(axi4buf_3_auto_in_awid),
    .auto_in_awaddr(axi4buf_3_auto_in_awaddr),
    .auto_in_awlen(axi4buf_3_auto_in_awlen),
    .auto_in_awsize(axi4buf_3_auto_in_awsize),
    .auto_in_awburst(axi4buf_3_auto_in_awburst),
    .auto_in_awlock(axi4buf_3_auto_in_awlock),
    .auto_in_awcache(axi4buf_3_auto_in_awcache),
    .auto_in_awprot(axi4buf_3_auto_in_awprot),
    .auto_in_awqos(axi4buf_3_auto_in_awqos),
    .auto_in_wready(axi4buf_3_auto_in_wready),
    .auto_in_wvalid(axi4buf_3_auto_in_wvalid),
    .auto_in_wdata(axi4buf_3_auto_in_wdata),
    .auto_in_wstrb(axi4buf_3_auto_in_wstrb),
    .auto_in_wlast(axi4buf_3_auto_in_wlast),
    .auto_in_bready(axi4buf_3_auto_in_bready),
    .auto_in_bvalid(axi4buf_3_auto_in_bvalid),
    .auto_in_bid(axi4buf_3_auto_in_bid),
    .auto_in_arready(axi4buf_3_auto_in_arready),
    .auto_in_arvalid(axi4buf_3_auto_in_arvalid),
    .auto_in_arid(axi4buf_3_auto_in_arid),
    .auto_in_araddr(axi4buf_3_auto_in_araddr),
    .auto_in_arlen(axi4buf_3_auto_in_arlen),
    .auto_in_arsize(axi4buf_3_auto_in_arsize),
    .auto_in_arburst(axi4buf_3_auto_in_arburst),
    .auto_in_arlock(axi4buf_3_auto_in_arlock),
    .auto_in_arcache(axi4buf_3_auto_in_arcache),
    .auto_in_arprot(axi4buf_3_auto_in_arprot),
    .auto_in_arqos(axi4buf_3_auto_in_arqos),
    .auto_in_rready(axi4buf_3_auto_in_rready),
    .auto_in_rvalid(axi4buf_3_auto_in_rvalid),
    .auto_in_rid(axi4buf_3_auto_in_rid),
    .auto_in_rdata(axi4buf_3_auto_in_rdata),
    .auto_in_rlast(axi4buf_3_auto_in_rlast),
    .auto_out_awready(axi4buf_3_auto_out_awready),
    .auto_out_awvalid(axi4buf_3_auto_out_awvalid),
    .auto_out_awid(axi4buf_3_auto_out_awid),
    .auto_out_awaddr(axi4buf_3_auto_out_awaddr),
    .auto_out_awlen(axi4buf_3_auto_out_awlen),
    .auto_out_awsize(axi4buf_3_auto_out_awsize),
    .auto_out_awburst(axi4buf_3_auto_out_awburst),
    .auto_out_awlock(axi4buf_3_auto_out_awlock),
    .auto_out_awcache(axi4buf_3_auto_out_awcache),
    .auto_out_awprot(axi4buf_3_auto_out_awprot),
    .auto_out_awqos(axi4buf_3_auto_out_awqos),
    .auto_out_wready(axi4buf_3_auto_out_wready),
    .auto_out_wvalid(axi4buf_3_auto_out_wvalid),
    .auto_out_wdata(axi4buf_3_auto_out_wdata),
    .auto_out_wstrb(axi4buf_3_auto_out_wstrb),
    .auto_out_wlast(axi4buf_3_auto_out_wlast),
    .auto_out_bready(axi4buf_3_auto_out_bready),
    .auto_out_bvalid(axi4buf_3_auto_out_bvalid),
    .auto_out_bid(axi4buf_3_auto_out_bid),
    .auto_out_arready(axi4buf_3_auto_out_arready),
    .auto_out_arvalid(axi4buf_3_auto_out_arvalid),
    .auto_out_arid(axi4buf_3_auto_out_arid),
    .auto_out_araddr(axi4buf_3_auto_out_araddr),
    .auto_out_arlen(axi4buf_3_auto_out_arlen),
    .auto_out_arsize(axi4buf_3_auto_out_arsize),
    .auto_out_arburst(axi4buf_3_auto_out_arburst),
    .auto_out_arlock(axi4buf_3_auto_out_arlock),
    .auto_out_arcache(axi4buf_3_auto_out_arcache),
    .auto_out_arprot(axi4buf_3_auto_out_arprot),
    .auto_out_arqos(axi4buf_3_auto_out_arqos),
    .auto_out_rready(axi4buf_3_auto_out_rready),
    .auto_out_rvalid(axi4buf_3_auto_out_rvalid),
    .auto_out_rid(axi4buf_3_auto_out_rid),
    .auto_out_rdata(axi4buf_3_auto_out_rdata),
    .auto_out_rlast(axi4buf_3_auto_out_rlast)
  );
  AXI4Buffer_3 axi4buf_4 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_4_clock),
    .reset(axi4buf_4_reset),
    .auto_in_awready(axi4buf_4_auto_in_awready),
    .auto_in_awvalid(axi4buf_4_auto_in_awvalid),
    .auto_in_awid(axi4buf_4_auto_in_awid),
    .auto_in_awaddr(axi4buf_4_auto_in_awaddr),
    .auto_in_awlen(axi4buf_4_auto_in_awlen),
    .auto_in_awsize(axi4buf_4_auto_in_awsize),
    .auto_in_awburst(axi4buf_4_auto_in_awburst),
    .auto_in_awlock(axi4buf_4_auto_in_awlock),
    .auto_in_awcache(axi4buf_4_auto_in_awcache),
    .auto_in_awprot(axi4buf_4_auto_in_awprot),
    .auto_in_awqos(axi4buf_4_auto_in_awqos),
    .auto_in_wready(axi4buf_4_auto_in_wready),
    .auto_in_wvalid(axi4buf_4_auto_in_wvalid),
    .auto_in_wdata(axi4buf_4_auto_in_wdata),
    .auto_in_wstrb(axi4buf_4_auto_in_wstrb),
    .auto_in_wlast(axi4buf_4_auto_in_wlast),
    .auto_in_bready(axi4buf_4_auto_in_bready),
    .auto_in_bvalid(axi4buf_4_auto_in_bvalid),
    .auto_in_bid(axi4buf_4_auto_in_bid),
    .auto_in_arready(axi4buf_4_auto_in_arready),
    .auto_in_arvalid(axi4buf_4_auto_in_arvalid),
    .auto_in_arid(axi4buf_4_auto_in_arid),
    .auto_in_araddr(axi4buf_4_auto_in_araddr),
    .auto_in_arlen(axi4buf_4_auto_in_arlen),
    .auto_in_arsize(axi4buf_4_auto_in_arsize),
    .auto_in_arburst(axi4buf_4_auto_in_arburst),
    .auto_in_arlock(axi4buf_4_auto_in_arlock),
    .auto_in_arcache(axi4buf_4_auto_in_arcache),
    .auto_in_arprot(axi4buf_4_auto_in_arprot),
    .auto_in_arqos(axi4buf_4_auto_in_arqos),
    .auto_in_rready(axi4buf_4_auto_in_rready),
    .auto_in_rvalid(axi4buf_4_auto_in_rvalid),
    .auto_in_rid(axi4buf_4_auto_in_rid),
    .auto_in_rdata(axi4buf_4_auto_in_rdata),
    .auto_in_rlast(axi4buf_4_auto_in_rlast),
    .auto_out_awready(axi4buf_4_auto_out_awready),
    .auto_out_awvalid(axi4buf_4_auto_out_awvalid),
    .auto_out_awid(axi4buf_4_auto_out_awid),
    .auto_out_awaddr(axi4buf_4_auto_out_awaddr),
    .auto_out_awlen(axi4buf_4_auto_out_awlen),
    .auto_out_awsize(axi4buf_4_auto_out_awsize),
    .auto_out_awburst(axi4buf_4_auto_out_awburst),
    .auto_out_awlock(axi4buf_4_auto_out_awlock),
    .auto_out_awcache(axi4buf_4_auto_out_awcache),
    .auto_out_awprot(axi4buf_4_auto_out_awprot),
    .auto_out_awqos(axi4buf_4_auto_out_awqos),
    .auto_out_wready(axi4buf_4_auto_out_wready),
    .auto_out_wvalid(axi4buf_4_auto_out_wvalid),
    .auto_out_wdata(axi4buf_4_auto_out_wdata),
    .auto_out_wstrb(axi4buf_4_auto_out_wstrb),
    .auto_out_wlast(axi4buf_4_auto_out_wlast),
    .auto_out_bready(axi4buf_4_auto_out_bready),
    .auto_out_bvalid(axi4buf_4_auto_out_bvalid),
    .auto_out_bid(axi4buf_4_auto_out_bid),
    .auto_out_arready(axi4buf_4_auto_out_arready),
    .auto_out_arvalid(axi4buf_4_auto_out_arvalid),
    .auto_out_arid(axi4buf_4_auto_out_arid),
    .auto_out_araddr(axi4buf_4_auto_out_araddr),
    .auto_out_arlen(axi4buf_4_auto_out_arlen),
    .auto_out_arsize(axi4buf_4_auto_out_arsize),
    .auto_out_arburst(axi4buf_4_auto_out_arburst),
    .auto_out_arlock(axi4buf_4_auto_out_arlock),
    .auto_out_arcache(axi4buf_4_auto_out_arcache),
    .auto_out_arprot(axi4buf_4_auto_out_arprot),
    .auto_out_arqos(axi4buf_4_auto_out_arqos),
    .auto_out_rready(axi4buf_4_auto_out_rready),
    .auto_out_rvalid(axi4buf_4_auto_out_rvalid),
    .auto_out_rid(axi4buf_4_auto_out_rid),
    .auto_out_rdata(axi4buf_4_auto_out_rdata),
    .auto_out_rlast(axi4buf_4_auto_out_rlast)
  );
  AXI4Buffer_3 axi4buf_5 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_5_clock),
    .reset(axi4buf_5_reset),
    .auto_in_awready(axi4buf_5_auto_in_awready),
    .auto_in_awvalid(axi4buf_5_auto_in_awvalid),
    .auto_in_awid(axi4buf_5_auto_in_awid),
    .auto_in_awaddr(axi4buf_5_auto_in_awaddr),
    .auto_in_awlen(axi4buf_5_auto_in_awlen),
    .auto_in_awsize(axi4buf_5_auto_in_awsize),
    .auto_in_awburst(axi4buf_5_auto_in_awburst),
    .auto_in_awlock(axi4buf_5_auto_in_awlock),
    .auto_in_awcache(axi4buf_5_auto_in_awcache),
    .auto_in_awprot(axi4buf_5_auto_in_awprot),
    .auto_in_awqos(axi4buf_5_auto_in_awqos),
    .auto_in_wready(axi4buf_5_auto_in_wready),
    .auto_in_wvalid(axi4buf_5_auto_in_wvalid),
    .auto_in_wdata(axi4buf_5_auto_in_wdata),
    .auto_in_wstrb(axi4buf_5_auto_in_wstrb),
    .auto_in_wlast(axi4buf_5_auto_in_wlast),
    .auto_in_bready(axi4buf_5_auto_in_bready),
    .auto_in_bvalid(axi4buf_5_auto_in_bvalid),
    .auto_in_bid(axi4buf_5_auto_in_bid),
    .auto_in_arready(axi4buf_5_auto_in_arready),
    .auto_in_arvalid(axi4buf_5_auto_in_arvalid),
    .auto_in_arid(axi4buf_5_auto_in_arid),
    .auto_in_araddr(axi4buf_5_auto_in_araddr),
    .auto_in_arlen(axi4buf_5_auto_in_arlen),
    .auto_in_arsize(axi4buf_5_auto_in_arsize),
    .auto_in_arburst(axi4buf_5_auto_in_arburst),
    .auto_in_arlock(axi4buf_5_auto_in_arlock),
    .auto_in_arcache(axi4buf_5_auto_in_arcache),
    .auto_in_arprot(axi4buf_5_auto_in_arprot),
    .auto_in_arqos(axi4buf_5_auto_in_arqos),
    .auto_in_rready(axi4buf_5_auto_in_rready),
    .auto_in_rvalid(axi4buf_5_auto_in_rvalid),
    .auto_in_rid(axi4buf_5_auto_in_rid),
    .auto_in_rdata(axi4buf_5_auto_in_rdata),
    .auto_in_rlast(axi4buf_5_auto_in_rlast),
    .auto_out_awready(axi4buf_5_auto_out_awready),
    .auto_out_awvalid(axi4buf_5_auto_out_awvalid),
    .auto_out_awid(axi4buf_5_auto_out_awid),
    .auto_out_awaddr(axi4buf_5_auto_out_awaddr),
    .auto_out_awlen(axi4buf_5_auto_out_awlen),
    .auto_out_awsize(axi4buf_5_auto_out_awsize),
    .auto_out_awburst(axi4buf_5_auto_out_awburst),
    .auto_out_awlock(axi4buf_5_auto_out_awlock),
    .auto_out_awcache(axi4buf_5_auto_out_awcache),
    .auto_out_awprot(axi4buf_5_auto_out_awprot),
    .auto_out_awqos(axi4buf_5_auto_out_awqos),
    .auto_out_wready(axi4buf_5_auto_out_wready),
    .auto_out_wvalid(axi4buf_5_auto_out_wvalid),
    .auto_out_wdata(axi4buf_5_auto_out_wdata),
    .auto_out_wstrb(axi4buf_5_auto_out_wstrb),
    .auto_out_wlast(axi4buf_5_auto_out_wlast),
    .auto_out_bready(axi4buf_5_auto_out_bready),
    .auto_out_bvalid(axi4buf_5_auto_out_bvalid),
    .auto_out_bid(axi4buf_5_auto_out_bid),
    .auto_out_arready(axi4buf_5_auto_out_arready),
    .auto_out_arvalid(axi4buf_5_auto_out_arvalid),
    .auto_out_arid(axi4buf_5_auto_out_arid),
    .auto_out_araddr(axi4buf_5_auto_out_araddr),
    .auto_out_arlen(axi4buf_5_auto_out_arlen),
    .auto_out_arsize(axi4buf_5_auto_out_arsize),
    .auto_out_arburst(axi4buf_5_auto_out_arburst),
    .auto_out_arlock(axi4buf_5_auto_out_arlock),
    .auto_out_arcache(axi4buf_5_auto_out_arcache),
    .auto_out_arprot(axi4buf_5_auto_out_arprot),
    .auto_out_arqos(axi4buf_5_auto_out_arqos),
    .auto_out_rready(axi4buf_5_auto_out_rready),
    .auto_out_rvalid(axi4buf_5_auto_out_rvalid),
    .auto_out_rid(axi4buf_5_auto_out_rid),
    .auto_out_rdata(axi4buf_5_auto_out_rdata),
    .auto_out_rlast(axi4buf_5_auto_out_rlast)
  );
  AXI4Buffer_3 axi4buf_6 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_6_clock),
    .reset(axi4buf_6_reset),
    .auto_in_awready(axi4buf_6_auto_in_awready),
    .auto_in_awvalid(axi4buf_6_auto_in_awvalid),
    .auto_in_awid(axi4buf_6_auto_in_awid),
    .auto_in_awaddr(axi4buf_6_auto_in_awaddr),
    .auto_in_awlen(axi4buf_6_auto_in_awlen),
    .auto_in_awsize(axi4buf_6_auto_in_awsize),
    .auto_in_awburst(axi4buf_6_auto_in_awburst),
    .auto_in_awlock(axi4buf_6_auto_in_awlock),
    .auto_in_awcache(axi4buf_6_auto_in_awcache),
    .auto_in_awprot(axi4buf_6_auto_in_awprot),
    .auto_in_awqos(axi4buf_6_auto_in_awqos),
    .auto_in_wready(axi4buf_6_auto_in_wready),
    .auto_in_wvalid(axi4buf_6_auto_in_wvalid),
    .auto_in_wdata(axi4buf_6_auto_in_wdata),
    .auto_in_wstrb(axi4buf_6_auto_in_wstrb),
    .auto_in_wlast(axi4buf_6_auto_in_wlast),
    .auto_in_bready(axi4buf_6_auto_in_bready),
    .auto_in_bvalid(axi4buf_6_auto_in_bvalid),
    .auto_in_bid(axi4buf_6_auto_in_bid),
    .auto_in_arready(axi4buf_6_auto_in_arready),
    .auto_in_arvalid(axi4buf_6_auto_in_arvalid),
    .auto_in_arid(axi4buf_6_auto_in_arid),
    .auto_in_araddr(axi4buf_6_auto_in_araddr),
    .auto_in_arlen(axi4buf_6_auto_in_arlen),
    .auto_in_arsize(axi4buf_6_auto_in_arsize),
    .auto_in_arburst(axi4buf_6_auto_in_arburst),
    .auto_in_arlock(axi4buf_6_auto_in_arlock),
    .auto_in_arcache(axi4buf_6_auto_in_arcache),
    .auto_in_arprot(axi4buf_6_auto_in_arprot),
    .auto_in_arqos(axi4buf_6_auto_in_arqos),
    .auto_in_rready(axi4buf_6_auto_in_rready),
    .auto_in_rvalid(axi4buf_6_auto_in_rvalid),
    .auto_in_rid(axi4buf_6_auto_in_rid),
    .auto_in_rdata(axi4buf_6_auto_in_rdata),
    .auto_in_rlast(axi4buf_6_auto_in_rlast),
    .auto_out_awready(axi4buf_6_auto_out_awready),
    .auto_out_awvalid(axi4buf_6_auto_out_awvalid),
    .auto_out_awid(axi4buf_6_auto_out_awid),
    .auto_out_awaddr(axi4buf_6_auto_out_awaddr),
    .auto_out_awlen(axi4buf_6_auto_out_awlen),
    .auto_out_awsize(axi4buf_6_auto_out_awsize),
    .auto_out_awburst(axi4buf_6_auto_out_awburst),
    .auto_out_awlock(axi4buf_6_auto_out_awlock),
    .auto_out_awcache(axi4buf_6_auto_out_awcache),
    .auto_out_awprot(axi4buf_6_auto_out_awprot),
    .auto_out_awqos(axi4buf_6_auto_out_awqos),
    .auto_out_wready(axi4buf_6_auto_out_wready),
    .auto_out_wvalid(axi4buf_6_auto_out_wvalid),
    .auto_out_wdata(axi4buf_6_auto_out_wdata),
    .auto_out_wstrb(axi4buf_6_auto_out_wstrb),
    .auto_out_wlast(axi4buf_6_auto_out_wlast),
    .auto_out_bready(axi4buf_6_auto_out_bready),
    .auto_out_bvalid(axi4buf_6_auto_out_bvalid),
    .auto_out_bid(axi4buf_6_auto_out_bid),
    .auto_out_arready(axi4buf_6_auto_out_arready),
    .auto_out_arvalid(axi4buf_6_auto_out_arvalid),
    .auto_out_arid(axi4buf_6_auto_out_arid),
    .auto_out_araddr(axi4buf_6_auto_out_araddr),
    .auto_out_arlen(axi4buf_6_auto_out_arlen),
    .auto_out_arsize(axi4buf_6_auto_out_arsize),
    .auto_out_arburst(axi4buf_6_auto_out_arburst),
    .auto_out_arlock(axi4buf_6_auto_out_arlock),
    .auto_out_arcache(axi4buf_6_auto_out_arcache),
    .auto_out_arprot(axi4buf_6_auto_out_arprot),
    .auto_out_arqos(axi4buf_6_auto_out_arqos),
    .auto_out_rready(axi4buf_6_auto_out_rready),
    .auto_out_rvalid(axi4buf_6_auto_out_rvalid),
    .auto_out_rid(axi4buf_6_auto_out_rid),
    .auto_out_rdata(axi4buf_6_auto_out_rdata),
    .auto_out_rlast(axi4buf_6_auto_out_rlast)
  );
  AXI4UserYanker_1 axi4yank_1 ( // @[UserYanker.scala 105:30]
    .clock(axi4yank_1_clock),
    .reset(axi4yank_1_reset),
    .auto_in_awready(axi4yank_1_auto_in_awready),
    .auto_in_awvalid(axi4yank_1_auto_in_awvalid),
    .auto_in_awid(axi4yank_1_auto_in_awid),
    .auto_in_awaddr(axi4yank_1_auto_in_awaddr),
    .auto_in_awlen(axi4yank_1_auto_in_awlen),
    .auto_in_awsize(axi4yank_1_auto_in_awsize),
    .auto_in_awburst(axi4yank_1_auto_in_awburst),
    .auto_in_awlock(axi4yank_1_auto_in_awlock),
    .auto_in_awcache(axi4yank_1_auto_in_awcache),
    .auto_in_awprot(axi4yank_1_auto_in_awprot),
    .auto_in_awqos(axi4yank_1_auto_in_awqos),
    .auto_in_awecho_tl_state_size(axi4yank_1_auto_in_awecho_tl_state_size),
    .auto_in_awecho_tl_state_source(axi4yank_1_auto_in_awecho_tl_state_source),
    .auto_in_wready(axi4yank_1_auto_in_wready),
    .auto_in_wvalid(axi4yank_1_auto_in_wvalid),
    .auto_in_wdata(axi4yank_1_auto_in_wdata),
    .auto_in_wstrb(axi4yank_1_auto_in_wstrb),
    .auto_in_wlast(axi4yank_1_auto_in_wlast),
    .auto_in_bready(axi4yank_1_auto_in_bready),
    .auto_in_bvalid(axi4yank_1_auto_in_bvalid),
    .auto_in_bid(axi4yank_1_auto_in_bid),
    .auto_in_becho_tl_state_size(axi4yank_1_auto_in_becho_tl_state_size),
    .auto_in_becho_tl_state_source(axi4yank_1_auto_in_becho_tl_state_source),
    .auto_in_arready(axi4yank_1_auto_in_arready),
    .auto_in_arvalid(axi4yank_1_auto_in_arvalid),
    .auto_in_arid(axi4yank_1_auto_in_arid),
    .auto_in_araddr(axi4yank_1_auto_in_araddr),
    .auto_in_arlen(axi4yank_1_auto_in_arlen),
    .auto_in_arsize(axi4yank_1_auto_in_arsize),
    .auto_in_arburst(axi4yank_1_auto_in_arburst),
    .auto_in_arlock(axi4yank_1_auto_in_arlock),
    .auto_in_arcache(axi4yank_1_auto_in_arcache),
    .auto_in_arprot(axi4yank_1_auto_in_arprot),
    .auto_in_arqos(axi4yank_1_auto_in_arqos),
    .auto_in_arecho_tl_state_size(axi4yank_1_auto_in_arecho_tl_state_size),
    .auto_in_arecho_tl_state_source(axi4yank_1_auto_in_arecho_tl_state_source),
    .auto_in_rready(axi4yank_1_auto_in_rready),
    .auto_in_rvalid(axi4yank_1_auto_in_rvalid),
    .auto_in_rid(axi4yank_1_auto_in_rid),
    .auto_in_rdata(axi4yank_1_auto_in_rdata),
    .auto_in_recho_tl_state_size(axi4yank_1_auto_in_recho_tl_state_size),
    .auto_in_recho_tl_state_source(axi4yank_1_auto_in_recho_tl_state_source),
    .auto_in_rlast(axi4yank_1_auto_in_rlast),
    .auto_out_awready(axi4yank_1_auto_out_awready),
    .auto_out_awvalid(axi4yank_1_auto_out_awvalid),
    .auto_out_awid(axi4yank_1_auto_out_awid),
    .auto_out_awaddr(axi4yank_1_auto_out_awaddr),
    .auto_out_awlen(axi4yank_1_auto_out_awlen),
    .auto_out_awsize(axi4yank_1_auto_out_awsize),
    .auto_out_awburst(axi4yank_1_auto_out_awburst),
    .auto_out_awlock(axi4yank_1_auto_out_awlock),
    .auto_out_awcache(axi4yank_1_auto_out_awcache),
    .auto_out_awprot(axi4yank_1_auto_out_awprot),
    .auto_out_awqos(axi4yank_1_auto_out_awqos),
    .auto_out_wready(axi4yank_1_auto_out_wready),
    .auto_out_wvalid(axi4yank_1_auto_out_wvalid),
    .auto_out_wdata(axi4yank_1_auto_out_wdata),
    .auto_out_wstrb(axi4yank_1_auto_out_wstrb),
    .auto_out_wlast(axi4yank_1_auto_out_wlast),
    .auto_out_bready(axi4yank_1_auto_out_bready),
    .auto_out_bvalid(axi4yank_1_auto_out_bvalid),
    .auto_out_bid(axi4yank_1_auto_out_bid),
    .auto_out_arready(axi4yank_1_auto_out_arready),
    .auto_out_arvalid(axi4yank_1_auto_out_arvalid),
    .auto_out_arid(axi4yank_1_auto_out_arid),
    .auto_out_araddr(axi4yank_1_auto_out_araddr),
    .auto_out_arlen(axi4yank_1_auto_out_arlen),
    .auto_out_arsize(axi4yank_1_auto_out_arsize),
    .auto_out_arburst(axi4yank_1_auto_out_arburst),
    .auto_out_arlock(axi4yank_1_auto_out_arlock),
    .auto_out_arcache(axi4yank_1_auto_out_arcache),
    .auto_out_arprot(axi4yank_1_auto_out_arprot),
    .auto_out_arqos(axi4yank_1_auto_out_arqos),
    .auto_out_rready(axi4yank_1_auto_out_rready),
    .auto_out_rvalid(axi4yank_1_auto_out_rvalid),
    .auto_out_rid(axi4yank_1_auto_out_rid),
    .auto_out_rdata(axi4yank_1_auto_out_rdata),
    .auto_out_rlast(axi4yank_1_auto_out_rlast)
  );
  AXI4Deinterleaver_1 axi4deint_1 ( // @[Deinterleaver.scala 140:31]
    .clock(axi4deint_1_clock),
    .reset(axi4deint_1_reset),
    .auto_in_awready(axi4deint_1_auto_in_awready),
    .auto_in_awvalid(axi4deint_1_auto_in_awvalid),
    .auto_in_awid(axi4deint_1_auto_in_awid),
    .auto_in_awaddr(axi4deint_1_auto_in_awaddr),
    .auto_in_awlen(axi4deint_1_auto_in_awlen),
    .auto_in_awsize(axi4deint_1_auto_in_awsize),
    .auto_in_awburst(axi4deint_1_auto_in_awburst),
    .auto_in_awlock(axi4deint_1_auto_in_awlock),
    .auto_in_awcache(axi4deint_1_auto_in_awcache),
    .auto_in_awprot(axi4deint_1_auto_in_awprot),
    .auto_in_awqos(axi4deint_1_auto_in_awqos),
    .auto_in_awecho_tl_state_size(axi4deint_1_auto_in_awecho_tl_state_size),
    .auto_in_awecho_tl_state_source(axi4deint_1_auto_in_awecho_tl_state_source),
    .auto_in_wready(axi4deint_1_auto_in_wready),
    .auto_in_wvalid(axi4deint_1_auto_in_wvalid),
    .auto_in_wdata(axi4deint_1_auto_in_wdata),
    .auto_in_wstrb(axi4deint_1_auto_in_wstrb),
    .auto_in_wlast(axi4deint_1_auto_in_wlast),
    .auto_in_bready(axi4deint_1_auto_in_bready),
    .auto_in_bvalid(axi4deint_1_auto_in_bvalid),
    .auto_in_bid(axi4deint_1_auto_in_bid),
    .auto_in_becho_tl_state_size(axi4deint_1_auto_in_becho_tl_state_size),
    .auto_in_becho_tl_state_source(axi4deint_1_auto_in_becho_tl_state_source),
    .auto_in_arready(axi4deint_1_auto_in_arready),
    .auto_in_arvalid(axi4deint_1_auto_in_arvalid),
    .auto_in_arid(axi4deint_1_auto_in_arid),
    .auto_in_araddr(axi4deint_1_auto_in_araddr),
    .auto_in_arlen(axi4deint_1_auto_in_arlen),
    .auto_in_arsize(axi4deint_1_auto_in_arsize),
    .auto_in_arburst(axi4deint_1_auto_in_arburst),
    .auto_in_arlock(axi4deint_1_auto_in_arlock),
    .auto_in_arcache(axi4deint_1_auto_in_arcache),
    .auto_in_arprot(axi4deint_1_auto_in_arprot),
    .auto_in_arqos(axi4deint_1_auto_in_arqos),
    .auto_in_arecho_tl_state_size(axi4deint_1_auto_in_arecho_tl_state_size),
    .auto_in_arecho_tl_state_source(axi4deint_1_auto_in_arecho_tl_state_source),
    .auto_in_rready(axi4deint_1_auto_in_rready),
    .auto_in_rvalid(axi4deint_1_auto_in_rvalid),
    .auto_in_rid(axi4deint_1_auto_in_rid),
    .auto_in_rdata(axi4deint_1_auto_in_rdata),
    .auto_in_recho_tl_state_size(axi4deint_1_auto_in_recho_tl_state_size),
    .auto_in_recho_tl_state_source(axi4deint_1_auto_in_recho_tl_state_source),
    .auto_in_rlast(axi4deint_1_auto_in_rlast),
    .auto_out_awready(axi4deint_1_auto_out_awready),
    .auto_out_awvalid(axi4deint_1_auto_out_awvalid),
    .auto_out_awid(axi4deint_1_auto_out_awid),
    .auto_out_awaddr(axi4deint_1_auto_out_awaddr),
    .auto_out_awlen(axi4deint_1_auto_out_awlen),
    .auto_out_awsize(axi4deint_1_auto_out_awsize),
    .auto_out_awburst(axi4deint_1_auto_out_awburst),
    .auto_out_awlock(axi4deint_1_auto_out_awlock),
    .auto_out_awcache(axi4deint_1_auto_out_awcache),
    .auto_out_awprot(axi4deint_1_auto_out_awprot),
    .auto_out_awqos(axi4deint_1_auto_out_awqos),
    .auto_out_awecho_tl_state_size(axi4deint_1_auto_out_awecho_tl_state_size),
    .auto_out_awecho_tl_state_source(axi4deint_1_auto_out_awecho_tl_state_source),
    .auto_out_wready(axi4deint_1_auto_out_wready),
    .auto_out_wvalid(axi4deint_1_auto_out_wvalid),
    .auto_out_wdata(axi4deint_1_auto_out_wdata),
    .auto_out_wstrb(axi4deint_1_auto_out_wstrb),
    .auto_out_wlast(axi4deint_1_auto_out_wlast),
    .auto_out_bready(axi4deint_1_auto_out_bready),
    .auto_out_bvalid(axi4deint_1_auto_out_bvalid),
    .auto_out_bid(axi4deint_1_auto_out_bid),
    .auto_out_becho_tl_state_size(axi4deint_1_auto_out_becho_tl_state_size),
    .auto_out_becho_tl_state_source(axi4deint_1_auto_out_becho_tl_state_source),
    .auto_out_arready(axi4deint_1_auto_out_arready),
    .auto_out_arvalid(axi4deint_1_auto_out_arvalid),
    .auto_out_arid(axi4deint_1_auto_out_arid),
    .auto_out_araddr(axi4deint_1_auto_out_araddr),
    .auto_out_arlen(axi4deint_1_auto_out_arlen),
    .auto_out_arsize(axi4deint_1_auto_out_arsize),
    .auto_out_arburst(axi4deint_1_auto_out_arburst),
    .auto_out_arlock(axi4deint_1_auto_out_arlock),
    .auto_out_arcache(axi4deint_1_auto_out_arcache),
    .auto_out_arprot(axi4deint_1_auto_out_arprot),
    .auto_out_arqos(axi4deint_1_auto_out_arqos),
    .auto_out_arecho_tl_state_size(axi4deint_1_auto_out_arecho_tl_state_size),
    .auto_out_arecho_tl_state_source(axi4deint_1_auto_out_arecho_tl_state_source),
    .auto_out_rready(axi4deint_1_auto_out_rready),
    .auto_out_rvalid(axi4deint_1_auto_out_rvalid),
    .auto_out_rid(axi4deint_1_auto_out_rid),
    .auto_out_rdata(axi4deint_1_auto_out_rdata),
    .auto_out_recho_tl_state_size(axi4deint_1_auto_out_recho_tl_state_size),
    .auto_out_recho_tl_state_source(axi4deint_1_auto_out_recho_tl_state_source),
    .auto_out_rlast(axi4deint_1_auto_out_rlast)
  );
  TLToAXI4_1 tl2axi4_1 ( // @[ToAXI4.scala 283:29]
    .clock(tl2axi4_1_clock),
    .reset(tl2axi4_1_reset),
    .auto_in_a_ready(tl2axi4_1_auto_in_a_ready),
    .auto_in_a_valid(tl2axi4_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(tl2axi4_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(tl2axi4_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(tl2axi4_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(tl2axi4_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(tl2axi4_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(tl2axi4_1_auto_in_a_bits_data),
    .auto_in_d_ready(tl2axi4_1_auto_in_d_ready),
    .auto_in_d_valid(tl2axi4_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(tl2axi4_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(tl2axi4_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(tl2axi4_1_auto_in_d_bits_source),
    .auto_in_d_bits_data(tl2axi4_1_auto_in_d_bits_data),
    .auto_out_awready(tl2axi4_1_auto_out_awready),
    .auto_out_awvalid(tl2axi4_1_auto_out_awvalid),
    .auto_out_awid(tl2axi4_1_auto_out_awid),
    .auto_out_awaddr(tl2axi4_1_auto_out_awaddr),
    .auto_out_awlen(tl2axi4_1_auto_out_awlen),
    .auto_out_awsize(tl2axi4_1_auto_out_awsize),
    .auto_out_awburst(tl2axi4_1_auto_out_awburst),
    .auto_out_awlock(tl2axi4_1_auto_out_awlock),
    .auto_out_awcache(tl2axi4_1_auto_out_awcache),
    .auto_out_awprot(tl2axi4_1_auto_out_awprot),
    .auto_out_awqos(tl2axi4_1_auto_out_awqos),
    .auto_out_awecho_tl_state_size(tl2axi4_1_auto_out_awecho_tl_state_size),
    .auto_out_awecho_tl_state_source(tl2axi4_1_auto_out_awecho_tl_state_source),
    .auto_out_wready(tl2axi4_1_auto_out_wready),
    .auto_out_wvalid(tl2axi4_1_auto_out_wvalid),
    .auto_out_wdata(tl2axi4_1_auto_out_wdata),
    .auto_out_wstrb(tl2axi4_1_auto_out_wstrb),
    .auto_out_wlast(tl2axi4_1_auto_out_wlast),
    .auto_out_bready(tl2axi4_1_auto_out_bready),
    .auto_out_bvalid(tl2axi4_1_auto_out_bvalid),
    .auto_out_bid(tl2axi4_1_auto_out_bid),
    .auto_out_becho_tl_state_size(tl2axi4_1_auto_out_becho_tl_state_size),
    .auto_out_becho_tl_state_source(tl2axi4_1_auto_out_becho_tl_state_source),
    .auto_out_arready(tl2axi4_1_auto_out_arready),
    .auto_out_arvalid(tl2axi4_1_auto_out_arvalid),
    .auto_out_arid(tl2axi4_1_auto_out_arid),
    .auto_out_araddr(tl2axi4_1_auto_out_araddr),
    .auto_out_arlen(tl2axi4_1_auto_out_arlen),
    .auto_out_arsize(tl2axi4_1_auto_out_arsize),
    .auto_out_arburst(tl2axi4_1_auto_out_arburst),
    .auto_out_arlock(tl2axi4_1_auto_out_arlock),
    .auto_out_arcache(tl2axi4_1_auto_out_arcache),
    .auto_out_arprot(tl2axi4_1_auto_out_arprot),
    .auto_out_arqos(tl2axi4_1_auto_out_arqos),
    .auto_out_arecho_tl_state_size(tl2axi4_1_auto_out_arecho_tl_state_size),
    .auto_out_arecho_tl_state_source(tl2axi4_1_auto_out_arecho_tl_state_source),
    .auto_out_rready(tl2axi4_1_auto_out_rready),
    .auto_out_rvalid(tl2axi4_1_auto_out_rvalid),
    .auto_out_rid(tl2axi4_1_auto_out_rid),
    .auto_out_rdata(tl2axi4_1_auto_out_rdata),
    .auto_out_recho_tl_state_size(tl2axi4_1_auto_out_recho_tl_state_size),
    .auto_out_recho_tl_state_source(tl2axi4_1_auto_out_recho_tl_state_source),
    .auto_out_rlast(tl2axi4_1_auto_out_rlast)
  );
  TLBuffer_7 buffers_4 ( // @[Buffer.scala 73:47]
    .clock(buffers_4_clock),
    .reset(buffers_4_reset),
    .auto_in_a_ready(buffers_4_auto_in_a_ready),
    .auto_in_a_valid(buffers_4_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_4_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_4_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_4_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_4_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_4_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_4_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_4_auto_in_d_ready),
    .auto_in_d_valid(buffers_4_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_4_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_4_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_4_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_4_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_4_auto_out_a_ready),
    .auto_out_a_valid(buffers_4_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_4_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_4_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_4_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_4_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_4_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_4_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_4_auto_out_d_ready),
    .auto_out_d_valid(buffers_4_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_4_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_4_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_4_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_4_auto_out_d_bits_data)
  );
  TLBuffer_7 buffers_5 ( // @[Buffer.scala 73:47]
    .clock(buffers_5_clock),
    .reset(buffers_5_reset),
    .auto_in_a_ready(buffers_5_auto_in_a_ready),
    .auto_in_a_valid(buffers_5_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_5_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_5_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_5_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_5_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_5_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_5_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_5_auto_in_d_ready),
    .auto_in_d_valid(buffers_5_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_5_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_5_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_5_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_5_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_5_auto_out_a_ready),
    .auto_out_a_valid(buffers_5_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_5_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_5_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_5_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_5_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_5_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_5_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_5_auto_out_d_ready),
    .auto_out_d_valid(buffers_5_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_5_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_5_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_5_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_5_auto_out_d_bits_data)
  );
  TLBuffer_7 buffers_6 ( // @[Buffer.scala 73:47]
    .clock(buffers_6_clock),
    .reset(buffers_6_reset),
    .auto_in_a_ready(buffers_6_auto_in_a_ready),
    .auto_in_a_valid(buffers_6_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_6_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_6_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_6_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_6_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_6_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_6_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_6_auto_in_d_ready),
    .auto_in_d_valid(buffers_6_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_6_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_6_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_6_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_6_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_6_auto_out_a_ready),
    .auto_out_a_valid(buffers_6_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_6_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_6_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_6_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_6_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_6_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_6_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_6_auto_out_d_ready),
    .auto_out_d_valid(buffers_6_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_6_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_6_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_6_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_6_auto_out_d_bits_data)
  );
  TLError errorDevice ( // @[SoC.scala 101:39]
    .clock(errorDevice_clock),
    .reset(errorDevice_reset),
    .auto_in_a_ready(errorDevice_auto_in_a_ready),
    .auto_in_a_valid(errorDevice_auto_in_a_valid),
    .auto_in_a_bits_opcode(errorDevice_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(errorDevice_auto_in_a_bits_size),
    .auto_in_a_bits_source(errorDevice_auto_in_a_bits_source),
    .auto_in_d_ready(errorDevice_auto_in_d_ready),
    .auto_in_d_valid(errorDevice_auto_in_d_valid),
    .auto_in_d_bits_opcode(errorDevice_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(errorDevice_auto_in_d_bits_size),
    .auto_in_d_bits_source(errorDevice_auto_in_d_bits_source),
    .auto_in_d_bits_corrupt(errorDevice_auto_in_d_bits_corrupt)
  );
  TLFIFOFixer fixer ( // @[FIFOFixer.scala 144:27]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
    .auto_in_d_bits_denied(fixer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fixer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_source(fixer_auto_out_a_bits_source),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  TLWidthWidget_2 widget_2 ( // @[WidthWidget.scala 219:28]
    .auto_in_a_ready(widget_2_auto_in_a_ready),
    .auto_in_a_valid(widget_2_auto_in_a_valid),
    .auto_in_a_bits_opcode(widget_2_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(widget_2_auto_in_a_bits_size),
    .auto_in_a_bits_source(widget_2_auto_in_a_bits_source),
    .auto_in_a_bits_address(widget_2_auto_in_a_bits_address),
    .auto_in_a_bits_mask(widget_2_auto_in_a_bits_mask),
    .auto_in_a_bits_data(widget_2_auto_in_a_bits_data),
    .auto_in_d_ready(widget_2_auto_in_d_ready),
    .auto_in_d_valid(widget_2_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_2_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(widget_2_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_2_auto_in_d_bits_source),
    .auto_in_d_bits_denied(widget_2_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_2_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(widget_2_auto_in_d_bits_corrupt),
    .auto_out_a_ready(widget_2_auto_out_a_ready),
    .auto_out_a_valid(widget_2_auto_out_a_valid),
    .auto_out_a_bits_opcode(widget_2_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(widget_2_auto_out_a_bits_size),
    .auto_out_a_bits_source(widget_2_auto_out_a_bits_source),
    .auto_out_a_bits_address(widget_2_auto_out_a_bits_address),
    .auto_out_a_bits_mask(widget_2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(widget_2_auto_out_a_bits_data),
    .auto_out_d_ready(widget_2_auto_out_d_ready),
    .auto_out_d_valid(widget_2_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_2_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(widget_2_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_2_auto_out_d_bits_source),
    .auto_out_d_bits_denied(widget_2_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_2_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(widget_2_auto_out_d_bits_corrupt)
  );
  AXI4ToTL axi42tl ( // @[ToTL.scala 224:29]
    .clock(axi42tl_clock),
    .reset(axi42tl_reset),
    .auto_in_awready(axi42tl_auto_in_awready),
    .auto_in_awvalid(axi42tl_auto_in_awvalid),
    .auto_in_awid(axi42tl_auto_in_awid),
    .auto_in_awaddr(axi42tl_auto_in_awaddr),
    .auto_in_awlen(axi42tl_auto_in_awlen),
    .auto_in_awsize(axi42tl_auto_in_awsize),
    .auto_in_wready(axi42tl_auto_in_wready),
    .auto_in_wvalid(axi42tl_auto_in_wvalid),
    .auto_in_wdata(axi42tl_auto_in_wdata),
    .auto_in_wstrb(axi42tl_auto_in_wstrb),
    .auto_in_wlast(axi42tl_auto_in_wlast),
    .auto_in_bready(axi42tl_auto_in_bready),
    .auto_in_bvalid(axi42tl_auto_in_bvalid),
    .auto_in_bid(axi42tl_auto_in_bid),
    .auto_in_bresp(axi42tl_auto_in_bresp),
    .auto_in_arready(axi42tl_auto_in_arready),
    .auto_in_arvalid(axi42tl_auto_in_arvalid),
    .auto_in_arid(axi42tl_auto_in_arid),
    .auto_in_araddr(axi42tl_auto_in_araddr),
    .auto_in_arlen(axi42tl_auto_in_arlen),
    .auto_in_arsize(axi42tl_auto_in_arsize),
    .auto_in_rready(axi42tl_auto_in_rready),
    .auto_in_rvalid(axi42tl_auto_in_rvalid),
    .auto_in_rid(axi42tl_auto_in_rid),
    .auto_in_rdata(axi42tl_auto_in_rdata),
    .auto_in_rresp(axi42tl_auto_in_rresp),
    .auto_in_rlast(axi42tl_auto_in_rlast),
    .auto_out_a_ready(axi42tl_auto_out_a_ready),
    .auto_out_a_valid(axi42tl_auto_out_a_valid),
    .auto_out_a_bits_opcode(axi42tl_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(axi42tl_auto_out_a_bits_size),
    .auto_out_a_bits_source(axi42tl_auto_out_a_bits_source),
    .auto_out_a_bits_address(axi42tl_auto_out_a_bits_address),
    .auto_out_a_bits_mask(axi42tl_auto_out_a_bits_mask),
    .auto_out_a_bits_data(axi42tl_auto_out_a_bits_data),
    .auto_out_d_ready(axi42tl_auto_out_d_ready),
    .auto_out_d_valid(axi42tl_auto_out_d_valid),
    .auto_out_d_bits_opcode(axi42tl_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(axi42tl_auto_out_d_bits_size),
    .auto_out_d_bits_source(axi42tl_auto_out_d_bits_source),
    .auto_out_d_bits_denied(axi42tl_auto_out_d_bits_denied),
    .auto_out_d_bits_data(axi42tl_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(axi42tl_auto_out_d_bits_corrupt)
  );
  AXI4UserYanker_2 axi4yank_2 ( // @[UserYanker.scala 105:30]
    .clock(axi4yank_2_clock),
    .reset(axi4yank_2_reset),
    .auto_in_awready(axi4yank_2_auto_in_awready),
    .auto_in_awvalid(axi4yank_2_auto_in_awvalid),
    .auto_in_awid(axi4yank_2_auto_in_awid),
    .auto_in_awaddr(axi4yank_2_auto_in_awaddr),
    .auto_in_awlen(axi4yank_2_auto_in_awlen),
    .auto_in_awsize(axi4yank_2_auto_in_awsize),
    .auto_in_awecho_extra_id(axi4yank_2_auto_in_awecho_extra_id),
    .auto_in_awecho_real_last(axi4yank_2_auto_in_awecho_real_last),
    .auto_in_wready(axi4yank_2_auto_in_wready),
    .auto_in_wvalid(axi4yank_2_auto_in_wvalid),
    .auto_in_wdata(axi4yank_2_auto_in_wdata),
    .auto_in_wstrb(axi4yank_2_auto_in_wstrb),
    .auto_in_wlast(axi4yank_2_auto_in_wlast),
    .auto_in_bready(axi4yank_2_auto_in_bready),
    .auto_in_bvalid(axi4yank_2_auto_in_bvalid),
    .auto_in_bid(axi4yank_2_auto_in_bid),
    .auto_in_bresp(axi4yank_2_auto_in_bresp),
    .auto_in_becho_extra_id(axi4yank_2_auto_in_becho_extra_id),
    .auto_in_becho_real_last(axi4yank_2_auto_in_becho_real_last),
    .auto_in_arready(axi4yank_2_auto_in_arready),
    .auto_in_arvalid(axi4yank_2_auto_in_arvalid),
    .auto_in_arid(axi4yank_2_auto_in_arid),
    .auto_in_araddr(axi4yank_2_auto_in_araddr),
    .auto_in_arlen(axi4yank_2_auto_in_arlen),
    .auto_in_arsize(axi4yank_2_auto_in_arsize),
    .auto_in_arecho_extra_id(axi4yank_2_auto_in_arecho_extra_id),
    .auto_in_arecho_real_last(axi4yank_2_auto_in_arecho_real_last),
    .auto_in_rready(axi4yank_2_auto_in_rready),
    .auto_in_rvalid(axi4yank_2_auto_in_rvalid),
    .auto_in_rid(axi4yank_2_auto_in_rid),
    .auto_in_rdata(axi4yank_2_auto_in_rdata),
    .auto_in_rresp(axi4yank_2_auto_in_rresp),
    .auto_in_recho_extra_id(axi4yank_2_auto_in_recho_extra_id),
    .auto_in_recho_real_last(axi4yank_2_auto_in_recho_real_last),
    .auto_in_rlast(axi4yank_2_auto_in_rlast),
    .auto_out_awready(axi4yank_2_auto_out_awready),
    .auto_out_awvalid(axi4yank_2_auto_out_awvalid),
    .auto_out_awid(axi4yank_2_auto_out_awid),
    .auto_out_awaddr(axi4yank_2_auto_out_awaddr),
    .auto_out_awlen(axi4yank_2_auto_out_awlen),
    .auto_out_awsize(axi4yank_2_auto_out_awsize),
    .auto_out_wready(axi4yank_2_auto_out_wready),
    .auto_out_wvalid(axi4yank_2_auto_out_wvalid),
    .auto_out_wdata(axi4yank_2_auto_out_wdata),
    .auto_out_wstrb(axi4yank_2_auto_out_wstrb),
    .auto_out_wlast(axi4yank_2_auto_out_wlast),
    .auto_out_bready(axi4yank_2_auto_out_bready),
    .auto_out_bvalid(axi4yank_2_auto_out_bvalid),
    .auto_out_bid(axi4yank_2_auto_out_bid),
    .auto_out_bresp(axi4yank_2_auto_out_bresp),
    .auto_out_arready(axi4yank_2_auto_out_arready),
    .auto_out_arvalid(axi4yank_2_auto_out_arvalid),
    .auto_out_arid(axi4yank_2_auto_out_arid),
    .auto_out_araddr(axi4yank_2_auto_out_araddr),
    .auto_out_arlen(axi4yank_2_auto_out_arlen),
    .auto_out_arsize(axi4yank_2_auto_out_arsize),
    .auto_out_rready(axi4yank_2_auto_out_rready),
    .auto_out_rvalid(axi4yank_2_auto_out_rvalid),
    .auto_out_rid(axi4yank_2_auto_out_rid),
    .auto_out_rdata(axi4yank_2_auto_out_rdata),
    .auto_out_rresp(axi4yank_2_auto_out_rresp),
    .auto_out_rlast(axi4yank_2_auto_out_rlast)
  );
  AXI4Fragmenter axi4frag ( // @[Fragmenter.scala 208:30]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_awready(axi4frag_auto_in_awready),
    .auto_in_awvalid(axi4frag_auto_in_awvalid),
    .auto_in_awid(axi4frag_auto_in_awid),
    .auto_in_awaddr(axi4frag_auto_in_awaddr),
    .auto_in_awlen(axi4frag_auto_in_awlen),
    .auto_in_awsize(axi4frag_auto_in_awsize),
    .auto_in_awburst(axi4frag_auto_in_awburst),
    .auto_in_awecho_extra_id(axi4frag_auto_in_awecho_extra_id),
    .auto_in_wready(axi4frag_auto_in_wready),
    .auto_in_wvalid(axi4frag_auto_in_wvalid),
    .auto_in_wdata(axi4frag_auto_in_wdata),
    .auto_in_wstrb(axi4frag_auto_in_wstrb),
    .auto_in_wlast(axi4frag_auto_in_wlast),
    .auto_in_bready(axi4frag_auto_in_bready),
    .auto_in_bvalid(axi4frag_auto_in_bvalid),
    .auto_in_bid(axi4frag_auto_in_bid),
    .auto_in_bresp(axi4frag_auto_in_bresp),
    .auto_in_becho_extra_id(axi4frag_auto_in_becho_extra_id),
    .auto_in_arready(axi4frag_auto_in_arready),
    .auto_in_arvalid(axi4frag_auto_in_arvalid),
    .auto_in_arid(axi4frag_auto_in_arid),
    .auto_in_araddr(axi4frag_auto_in_araddr),
    .auto_in_arlen(axi4frag_auto_in_arlen),
    .auto_in_arsize(axi4frag_auto_in_arsize),
    .auto_in_arburst(axi4frag_auto_in_arburst),
    .auto_in_arecho_extra_id(axi4frag_auto_in_arecho_extra_id),
    .auto_in_rready(axi4frag_auto_in_rready),
    .auto_in_rvalid(axi4frag_auto_in_rvalid),
    .auto_in_rid(axi4frag_auto_in_rid),
    .auto_in_rdata(axi4frag_auto_in_rdata),
    .auto_in_rresp(axi4frag_auto_in_rresp),
    .auto_in_recho_extra_id(axi4frag_auto_in_recho_extra_id),
    .auto_in_rlast(axi4frag_auto_in_rlast),
    .auto_out_awready(axi4frag_auto_out_awready),
    .auto_out_awvalid(axi4frag_auto_out_awvalid),
    .auto_out_awid(axi4frag_auto_out_awid),
    .auto_out_awaddr(axi4frag_auto_out_awaddr),
    .auto_out_awlen(axi4frag_auto_out_awlen),
    .auto_out_awsize(axi4frag_auto_out_awsize),
    .auto_out_awecho_extra_id(axi4frag_auto_out_awecho_extra_id),
    .auto_out_awecho_real_last(axi4frag_auto_out_awecho_real_last),
    .auto_out_wready(axi4frag_auto_out_wready),
    .auto_out_wvalid(axi4frag_auto_out_wvalid),
    .auto_out_wdata(axi4frag_auto_out_wdata),
    .auto_out_wstrb(axi4frag_auto_out_wstrb),
    .auto_out_wlast(axi4frag_auto_out_wlast),
    .auto_out_bready(axi4frag_auto_out_bready),
    .auto_out_bvalid(axi4frag_auto_out_bvalid),
    .auto_out_bid(axi4frag_auto_out_bid),
    .auto_out_bresp(axi4frag_auto_out_bresp),
    .auto_out_becho_extra_id(axi4frag_auto_out_becho_extra_id),
    .auto_out_becho_real_last(axi4frag_auto_out_becho_real_last),
    .auto_out_arready(axi4frag_auto_out_arready),
    .auto_out_arvalid(axi4frag_auto_out_arvalid),
    .auto_out_arid(axi4frag_auto_out_arid),
    .auto_out_araddr(axi4frag_auto_out_araddr),
    .auto_out_arlen(axi4frag_auto_out_arlen),
    .auto_out_arsize(axi4frag_auto_out_arsize),
    .auto_out_arecho_extra_id(axi4frag_auto_out_arecho_extra_id),
    .auto_out_arecho_real_last(axi4frag_auto_out_arecho_real_last),
    .auto_out_rready(axi4frag_auto_out_rready),
    .auto_out_rvalid(axi4frag_auto_out_rvalid),
    .auto_out_rid(axi4frag_auto_out_rid),
    .auto_out_rdata(axi4frag_auto_out_rdata),
    .auto_out_rresp(axi4frag_auto_out_rresp),
    .auto_out_recho_extra_id(axi4frag_auto_out_recho_extra_id),
    .auto_out_recho_real_last(axi4frag_auto_out_recho_real_last),
    .auto_out_rlast(axi4frag_auto_out_rlast)
  );
  AXI4Buffer_7 axi4buf_7 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_7_clock),
    .reset(axi4buf_7_reset),
    .auto_in_awready(axi4buf_7_auto_in_awready),
    .auto_in_awvalid(axi4buf_7_auto_in_awvalid),
    .auto_in_awid(axi4buf_7_auto_in_awid),
    .auto_in_awaddr(axi4buf_7_auto_in_awaddr),
    .auto_in_awlen(axi4buf_7_auto_in_awlen),
    .auto_in_awsize(axi4buf_7_auto_in_awsize),
    .auto_in_awburst(axi4buf_7_auto_in_awburst),
    .auto_in_awecho_extra_id(axi4buf_7_auto_in_awecho_extra_id),
    .auto_in_wready(axi4buf_7_auto_in_wready),
    .auto_in_wvalid(axi4buf_7_auto_in_wvalid),
    .auto_in_wdata(axi4buf_7_auto_in_wdata),
    .auto_in_wstrb(axi4buf_7_auto_in_wstrb),
    .auto_in_wlast(axi4buf_7_auto_in_wlast),
    .auto_in_bready(axi4buf_7_auto_in_bready),
    .auto_in_bvalid(axi4buf_7_auto_in_bvalid),
    .auto_in_bid(axi4buf_7_auto_in_bid),
    .auto_in_bresp(axi4buf_7_auto_in_bresp),
    .auto_in_becho_extra_id(axi4buf_7_auto_in_becho_extra_id),
    .auto_in_arready(axi4buf_7_auto_in_arready),
    .auto_in_arvalid(axi4buf_7_auto_in_arvalid),
    .auto_in_arid(axi4buf_7_auto_in_arid),
    .auto_in_araddr(axi4buf_7_auto_in_araddr),
    .auto_in_arlen(axi4buf_7_auto_in_arlen),
    .auto_in_arsize(axi4buf_7_auto_in_arsize),
    .auto_in_arburst(axi4buf_7_auto_in_arburst),
    .auto_in_arecho_extra_id(axi4buf_7_auto_in_arecho_extra_id),
    .auto_in_rready(axi4buf_7_auto_in_rready),
    .auto_in_rvalid(axi4buf_7_auto_in_rvalid),
    .auto_in_rid(axi4buf_7_auto_in_rid),
    .auto_in_rdata(axi4buf_7_auto_in_rdata),
    .auto_in_rresp(axi4buf_7_auto_in_rresp),
    .auto_in_recho_extra_id(axi4buf_7_auto_in_recho_extra_id),
    .auto_in_rlast(axi4buf_7_auto_in_rlast),
    .auto_out_awready(axi4buf_7_auto_out_awready),
    .auto_out_awvalid(axi4buf_7_auto_out_awvalid),
    .auto_out_awid(axi4buf_7_auto_out_awid),
    .auto_out_awaddr(axi4buf_7_auto_out_awaddr),
    .auto_out_awlen(axi4buf_7_auto_out_awlen),
    .auto_out_awsize(axi4buf_7_auto_out_awsize),
    .auto_out_awburst(axi4buf_7_auto_out_awburst),
    .auto_out_awecho_extra_id(axi4buf_7_auto_out_awecho_extra_id),
    .auto_out_wready(axi4buf_7_auto_out_wready),
    .auto_out_wvalid(axi4buf_7_auto_out_wvalid),
    .auto_out_wdata(axi4buf_7_auto_out_wdata),
    .auto_out_wstrb(axi4buf_7_auto_out_wstrb),
    .auto_out_wlast(axi4buf_7_auto_out_wlast),
    .auto_out_bready(axi4buf_7_auto_out_bready),
    .auto_out_bvalid(axi4buf_7_auto_out_bvalid),
    .auto_out_bid(axi4buf_7_auto_out_bid),
    .auto_out_bresp(axi4buf_7_auto_out_bresp),
    .auto_out_becho_extra_id(axi4buf_7_auto_out_becho_extra_id),
    .auto_out_arready(axi4buf_7_auto_out_arready),
    .auto_out_arvalid(axi4buf_7_auto_out_arvalid),
    .auto_out_arid(axi4buf_7_auto_out_arid),
    .auto_out_araddr(axi4buf_7_auto_out_araddr),
    .auto_out_arlen(axi4buf_7_auto_out_arlen),
    .auto_out_arsize(axi4buf_7_auto_out_arsize),
    .auto_out_arburst(axi4buf_7_auto_out_arburst),
    .auto_out_arecho_extra_id(axi4buf_7_auto_out_arecho_extra_id),
    .auto_out_rready(axi4buf_7_auto_out_rready),
    .auto_out_rvalid(axi4buf_7_auto_out_rvalid),
    .auto_out_rid(axi4buf_7_auto_out_rid),
    .auto_out_rdata(axi4buf_7_auto_out_rdata),
    .auto_out_rresp(axi4buf_7_auto_out_rresp),
    .auto_out_recho_extra_id(axi4buf_7_auto_out_recho_extra_id),
    .auto_out_rlast(axi4buf_7_auto_out_rlast)
  );
  AXI4Buffer_7 axi4buf_8 ( // @[Buffer.scala 62:29]
    .clock(axi4buf_8_clock),
    .reset(axi4buf_8_reset),
    .auto_in_awready(axi4buf_8_auto_in_awready),
    .auto_in_awvalid(axi4buf_8_auto_in_awvalid),
    .auto_in_awid(axi4buf_8_auto_in_awid),
    .auto_in_awaddr(axi4buf_8_auto_in_awaddr),
    .auto_in_awlen(axi4buf_8_auto_in_awlen),
    .auto_in_awsize(axi4buf_8_auto_in_awsize),
    .auto_in_awburst(axi4buf_8_auto_in_awburst),
    .auto_in_awecho_extra_id(axi4buf_8_auto_in_awecho_extra_id),
    .auto_in_wready(axi4buf_8_auto_in_wready),
    .auto_in_wvalid(axi4buf_8_auto_in_wvalid),
    .auto_in_wdata(axi4buf_8_auto_in_wdata),
    .auto_in_wstrb(axi4buf_8_auto_in_wstrb),
    .auto_in_wlast(axi4buf_8_auto_in_wlast),
    .auto_in_bready(axi4buf_8_auto_in_bready),
    .auto_in_bvalid(axi4buf_8_auto_in_bvalid),
    .auto_in_bid(axi4buf_8_auto_in_bid),
    .auto_in_bresp(axi4buf_8_auto_in_bresp),
    .auto_in_becho_extra_id(axi4buf_8_auto_in_becho_extra_id),
    .auto_in_arready(axi4buf_8_auto_in_arready),
    .auto_in_arvalid(axi4buf_8_auto_in_arvalid),
    .auto_in_arid(axi4buf_8_auto_in_arid),
    .auto_in_araddr(axi4buf_8_auto_in_araddr),
    .auto_in_arlen(axi4buf_8_auto_in_arlen),
    .auto_in_arsize(axi4buf_8_auto_in_arsize),
    .auto_in_arburst(axi4buf_8_auto_in_arburst),
    .auto_in_arecho_extra_id(axi4buf_8_auto_in_arecho_extra_id),
    .auto_in_rready(axi4buf_8_auto_in_rready),
    .auto_in_rvalid(axi4buf_8_auto_in_rvalid),
    .auto_in_rid(axi4buf_8_auto_in_rid),
    .auto_in_rdata(axi4buf_8_auto_in_rdata),
    .auto_in_rresp(axi4buf_8_auto_in_rresp),
    .auto_in_recho_extra_id(axi4buf_8_auto_in_recho_extra_id),
    .auto_in_rlast(axi4buf_8_auto_in_rlast),
    .auto_out_awready(axi4buf_8_auto_out_awready),
    .auto_out_awvalid(axi4buf_8_auto_out_awvalid),
    .auto_out_awid(axi4buf_8_auto_out_awid),
    .auto_out_awaddr(axi4buf_8_auto_out_awaddr),
    .auto_out_awlen(axi4buf_8_auto_out_awlen),
    .auto_out_awsize(axi4buf_8_auto_out_awsize),
    .auto_out_awburst(axi4buf_8_auto_out_awburst),
    .auto_out_awecho_extra_id(axi4buf_8_auto_out_awecho_extra_id),
    .auto_out_wready(axi4buf_8_auto_out_wready),
    .auto_out_wvalid(axi4buf_8_auto_out_wvalid),
    .auto_out_wdata(axi4buf_8_auto_out_wdata),
    .auto_out_wstrb(axi4buf_8_auto_out_wstrb),
    .auto_out_wlast(axi4buf_8_auto_out_wlast),
    .auto_out_bready(axi4buf_8_auto_out_bready),
    .auto_out_bvalid(axi4buf_8_auto_out_bvalid),
    .auto_out_bid(axi4buf_8_auto_out_bid),
    .auto_out_bresp(axi4buf_8_auto_out_bresp),
    .auto_out_becho_extra_id(axi4buf_8_auto_out_becho_extra_id),
    .auto_out_arready(axi4buf_8_auto_out_arready),
    .auto_out_arvalid(axi4buf_8_auto_out_arvalid),
    .auto_out_arid(axi4buf_8_auto_out_arid),
    .auto_out_araddr(axi4buf_8_auto_out_araddr),
    .auto_out_arlen(axi4buf_8_auto_out_arlen),
    .auto_out_arsize(axi4buf_8_auto_out_arsize),
    .auto_out_arburst(axi4buf_8_auto_out_arburst),
    .auto_out_arecho_extra_id(axi4buf_8_auto_out_arecho_extra_id),
    .auto_out_rready(axi4buf_8_auto_out_rready),
    .auto_out_rvalid(axi4buf_8_auto_out_rvalid),
    .auto_out_rid(axi4buf_8_auto_out_rid),
    .auto_out_rdata(axi4buf_8_auto_out_rdata),
    .auto_out_rresp(axi4buf_8_auto_out_rresp),
    .auto_out_recho_extra_id(axi4buf_8_auto_out_recho_extra_id),
    .auto_out_rlast(axi4buf_8_auto_out_rlast)
  );
  AXI4IdIndexer_2 axi4index_2 ( // @[IdIndexer.scala 91:31]
    .auto_in_awready(axi4index_2_auto_in_awready),
    .auto_in_awvalid(axi4index_2_auto_in_awvalid),
    .auto_in_awid(axi4index_2_auto_in_awid),
    .auto_in_awaddr(axi4index_2_auto_in_awaddr),
    .auto_in_awlen(axi4index_2_auto_in_awlen),
    .auto_in_awsize(axi4index_2_auto_in_awsize),
    .auto_in_awburst(axi4index_2_auto_in_awburst),
    .auto_in_wready(axi4index_2_auto_in_wready),
    .auto_in_wvalid(axi4index_2_auto_in_wvalid),
    .auto_in_wdata(axi4index_2_auto_in_wdata),
    .auto_in_wstrb(axi4index_2_auto_in_wstrb),
    .auto_in_wlast(axi4index_2_auto_in_wlast),
    .auto_in_bready(axi4index_2_auto_in_bready),
    .auto_in_bvalid(axi4index_2_auto_in_bvalid),
    .auto_in_bid(axi4index_2_auto_in_bid),
    .auto_in_bresp(axi4index_2_auto_in_bresp),
    .auto_in_arready(axi4index_2_auto_in_arready),
    .auto_in_arvalid(axi4index_2_auto_in_arvalid),
    .auto_in_arid(axi4index_2_auto_in_arid),
    .auto_in_araddr(axi4index_2_auto_in_araddr),
    .auto_in_arlen(axi4index_2_auto_in_arlen),
    .auto_in_arsize(axi4index_2_auto_in_arsize),
    .auto_in_arburst(axi4index_2_auto_in_arburst),
    .auto_in_rready(axi4index_2_auto_in_rready),
    .auto_in_rvalid(axi4index_2_auto_in_rvalid),
    .auto_in_rid(axi4index_2_auto_in_rid),
    .auto_in_rdata(axi4index_2_auto_in_rdata),
    .auto_in_rresp(axi4index_2_auto_in_rresp),
    .auto_in_rlast(axi4index_2_auto_in_rlast),
    .auto_out_awready(axi4index_2_auto_out_awready),
    .auto_out_awvalid(axi4index_2_auto_out_awvalid),
    .auto_out_awid(axi4index_2_auto_out_awid),
    .auto_out_awaddr(axi4index_2_auto_out_awaddr),
    .auto_out_awlen(axi4index_2_auto_out_awlen),
    .auto_out_awsize(axi4index_2_auto_out_awsize),
    .auto_out_awburst(axi4index_2_auto_out_awburst),
    .auto_out_awecho_extra_id(axi4index_2_auto_out_awecho_extra_id),
    .auto_out_wready(axi4index_2_auto_out_wready),
    .auto_out_wvalid(axi4index_2_auto_out_wvalid),
    .auto_out_wdata(axi4index_2_auto_out_wdata),
    .auto_out_wstrb(axi4index_2_auto_out_wstrb),
    .auto_out_wlast(axi4index_2_auto_out_wlast),
    .auto_out_bready(axi4index_2_auto_out_bready),
    .auto_out_bvalid(axi4index_2_auto_out_bvalid),
    .auto_out_bid(axi4index_2_auto_out_bid),
    .auto_out_bresp(axi4index_2_auto_out_bresp),
    .auto_out_becho_extra_id(axi4index_2_auto_out_becho_extra_id),
    .auto_out_arready(axi4index_2_auto_out_arready),
    .auto_out_arvalid(axi4index_2_auto_out_arvalid),
    .auto_out_arid(axi4index_2_auto_out_arid),
    .auto_out_araddr(axi4index_2_auto_out_araddr),
    .auto_out_arlen(axi4index_2_auto_out_arlen),
    .auto_out_arsize(axi4index_2_auto_out_arsize),
    .auto_out_arburst(axi4index_2_auto_out_arburst),
    .auto_out_arecho_extra_id(axi4index_2_auto_out_arecho_extra_id),
    .auto_out_rready(axi4index_2_auto_out_rready),
    .auto_out_rvalid(axi4index_2_auto_out_rvalid),
    .auto_out_rid(axi4index_2_auto_out_rid),
    .auto_out_rdata(axi4index_2_auto_out_rdata),
    .auto_out_rresp(axi4index_2_auto_out_rresp),
    .auto_out_recho_extra_id(axi4index_2_auto_out_recho_extra_id),
    .auto_out_rlast(axi4index_2_auto_out_rlast)
  );
  TLBuffer_2 L2_to_L3_peripheral_buffer_0 ( // @[Buffer.scala 73:47]
    .clock(L2_to_L3_peripheral_buffer_0_clock),
    .reset(L2_to_L3_peripheral_buffer_0_reset),
    .auto_in_a_ready(L2_to_L3_peripheral_buffer_0_auto_in_a_ready),
    .auto_in_a_valid(L2_to_L3_peripheral_buffer_0_auto_in_a_valid),
    .auto_in_a_bits_opcode(L2_to_L3_peripheral_buffer_0_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(L2_to_L3_peripheral_buffer_0_auto_in_a_bits_size),
    .auto_in_a_bits_source(L2_to_L3_peripheral_buffer_0_auto_in_a_bits_source),
    .auto_in_a_bits_address(L2_to_L3_peripheral_buffer_0_auto_in_a_bits_address),
    .auto_in_a_bits_mask(L2_to_L3_peripheral_buffer_0_auto_in_a_bits_mask),
    .auto_in_a_bits_data(L2_to_L3_peripheral_buffer_0_auto_in_a_bits_data),
    .auto_in_d_ready(L2_to_L3_peripheral_buffer_0_auto_in_d_ready),
    .auto_in_d_valid(L2_to_L3_peripheral_buffer_0_auto_in_d_valid),
    .auto_in_d_bits_opcode(L2_to_L3_peripheral_buffer_0_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(L2_to_L3_peripheral_buffer_0_auto_in_d_bits_size),
    .auto_in_d_bits_source(L2_to_L3_peripheral_buffer_0_auto_in_d_bits_source),
    .auto_in_d_bits_data(L2_to_L3_peripheral_buffer_0_auto_in_d_bits_data),
    .auto_out_a_ready(L2_to_L3_peripheral_buffer_0_auto_out_a_ready),
    .auto_out_a_valid(L2_to_L3_peripheral_buffer_0_auto_out_a_valid),
    .auto_out_a_bits_opcode(L2_to_L3_peripheral_buffer_0_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(L2_to_L3_peripheral_buffer_0_auto_out_a_bits_size),
    .auto_out_a_bits_source(L2_to_L3_peripheral_buffer_0_auto_out_a_bits_source),
    .auto_out_a_bits_address(L2_to_L3_peripheral_buffer_0_auto_out_a_bits_address),
    .auto_out_a_bits_mask(L2_to_L3_peripheral_buffer_0_auto_out_a_bits_mask),
    .auto_out_a_bits_data(L2_to_L3_peripheral_buffer_0_auto_out_a_bits_data),
    .auto_out_d_ready(L2_to_L3_peripheral_buffer_0_auto_out_d_ready),
    .auto_out_d_valid(L2_to_L3_peripheral_buffer_0_auto_out_d_valid),
    .auto_out_d_bits_opcode(L2_to_L3_peripheral_buffer_0_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(L2_to_L3_peripheral_buffer_0_auto_out_d_bits_size),
    .auto_out_d_bits_source(L2_to_L3_peripheral_buffer_0_auto_out_d_bits_source),
    .auto_out_d_bits_data(L2_to_L3_peripheral_buffer_0_auto_out_d_bits_data)
  );
  TLBuffer_2 L2_to_L3_peripheral_buffer_1 ( // @[Buffer.scala 73:47]
    .clock(L2_to_L3_peripheral_buffer_1_clock),
    .reset(L2_to_L3_peripheral_buffer_1_reset),
    .auto_in_a_ready(L2_to_L3_peripheral_buffer_1_auto_in_a_ready),
    .auto_in_a_valid(L2_to_L3_peripheral_buffer_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(L2_to_L3_peripheral_buffer_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(L2_to_L3_peripheral_buffer_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(L2_to_L3_peripheral_buffer_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(L2_to_L3_peripheral_buffer_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(L2_to_L3_peripheral_buffer_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(L2_to_L3_peripheral_buffer_1_auto_in_a_bits_data),
    .auto_in_d_ready(L2_to_L3_peripheral_buffer_1_auto_in_d_ready),
    .auto_in_d_valid(L2_to_L3_peripheral_buffer_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(L2_to_L3_peripheral_buffer_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(L2_to_L3_peripheral_buffer_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(L2_to_L3_peripheral_buffer_1_auto_in_d_bits_source),
    .auto_in_d_bits_data(L2_to_L3_peripheral_buffer_1_auto_in_d_bits_data),
    .auto_out_a_ready(L2_to_L3_peripheral_buffer_1_auto_out_a_ready),
    .auto_out_a_valid(L2_to_L3_peripheral_buffer_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(L2_to_L3_peripheral_buffer_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(L2_to_L3_peripheral_buffer_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(L2_to_L3_peripheral_buffer_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(L2_to_L3_peripheral_buffer_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(L2_to_L3_peripheral_buffer_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(L2_to_L3_peripheral_buffer_1_auto_out_a_bits_data),
    .auto_out_d_ready(L2_to_L3_peripheral_buffer_1_auto_out_d_ready),
    .auto_out_d_valid(L2_to_L3_peripheral_buffer_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(L2_to_L3_peripheral_buffer_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(L2_to_L3_peripheral_buffer_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(L2_to_L3_peripheral_buffer_1_auto_out_d_bits_source),
    .auto_out_d_bits_data(L2_to_L3_peripheral_buffer_1_auto_out_d_bits_data)
  );
  TLBuffer_12 buffer ( // @[Buffer.scala 68:28]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_bready(buffer_auto_in_bready),
    .auto_in_bvalid(buffer_auto_in_bvalid),
    .auto_in_bopcode(buffer_auto_in_bopcode),
    .auto_in_bparam(buffer_auto_in_bparam),
    .auto_in_bsize(buffer_auto_in_bsize),
    .auto_in_baddress(buffer_auto_in_baddress),
    .auto_in_bmask(buffer_auto_in_bmask),
    .auto_in_bdata(buffer_auto_in_bdata),
    .auto_in_bcorrupt(buffer_auto_in_bcorrupt),
    .auto_in_c_ready(buffer_auto_in_c_ready),
    .auto_in_c_valid(buffer_auto_in_c_valid),
    .auto_in_c_bits_opcode(buffer_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(buffer_auto_in_c_bits_param),
    .auto_in_c_bits_size(buffer_auto_in_c_bits_size),
    .auto_in_c_bits_source(buffer_auto_in_c_bits_source),
    .auto_in_c_bits_address(buffer_auto_in_c_bits_address),
    .auto_in_c_bits_echo_blockisdirty(buffer_auto_in_c_bits_echo_blockisdirty),
    .auto_in_c_bits_data(buffer_auto_in_c_bits_data),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_echo_blockisdirty(buffer_auto_in_d_bits_echo_blockisdirty),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_in_e_ready(buffer_auto_in_e_ready),
    .auto_in_e_valid(buffer_auto_in_e_valid),
    .auto_in_e_bits_sink(buffer_auto_in_e_bits_sink),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_bready(buffer_auto_out_bready),
    .auto_out_bvalid(buffer_auto_out_bvalid),
    .auto_out_bparam(buffer_auto_out_bparam),
    .auto_out_baddress(buffer_auto_out_baddress),
    .auto_out_bdata(buffer_auto_out_bdata),
    .auto_out_c_ready(buffer_auto_out_c_ready),
    .auto_out_c_valid(buffer_auto_out_c_valid),
    .auto_out_c_bits_opcode(buffer_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(buffer_auto_out_c_bits_param),
    .auto_out_c_bits_size(buffer_auto_out_c_bits_size),
    .auto_out_c_bits_source(buffer_auto_out_c_bits_source),
    .auto_out_c_bits_address(buffer_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(buffer_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(buffer_auto_out_c_bits_data),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(buffer_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt),
    .auto_out_e_valid(buffer_auto_out_e_valid),
    .auto_out_e_bits_sink(buffer_auto_out_e_bits_sink)
  );
  TLBuffer_13 buffers_7 ( // @[Buffer.scala 73:47]
    .clock(buffers_7_clock),
    .reset(buffers_7_reset),
    .auto_in_a_ready(buffers_7_auto_in_a_ready),
    .auto_in_a_valid(buffers_7_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_7_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffers_7_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffers_7_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_7_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_7_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_7_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_7_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_7_auto_in_d_ready),
    .auto_in_d_valid(buffers_7_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_7_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_7_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_7_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffers_7_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffers_7_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffers_7_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffers_7_auto_out_a_ready),
    .auto_out_a_valid(buffers_7_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_7_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffers_7_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffers_7_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_7_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_7_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_7_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_7_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_7_auto_out_d_ready),
    .auto_out_d_valid(buffers_7_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_7_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_7_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_7_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffers_7_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffers_7_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffers_7_auto_out_d_bits_corrupt)
  );
  TLBuffer_13 buffers_8 ( // @[Buffer.scala 73:47]
    .clock(buffers_8_clock),
    .reset(buffers_8_reset),
    .auto_in_a_ready(buffers_8_auto_in_a_ready),
    .auto_in_a_valid(buffers_8_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_8_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffers_8_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffers_8_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_8_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_8_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_8_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_8_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_8_auto_in_d_ready),
    .auto_in_d_valid(buffers_8_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_8_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_8_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_8_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffers_8_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffers_8_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffers_8_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffers_8_auto_out_a_ready),
    .auto_out_a_valid(buffers_8_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_8_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffers_8_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffers_8_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_8_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_8_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_8_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_8_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_8_auto_out_d_ready),
    .auto_out_d_valid(buffers_8_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_8_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_8_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_8_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffers_8_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffers_8_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffers_8_auto_out_d_bits_corrupt)
  );
  CLINT clint ( // @[SoC.scala 257:25]
    .clock(clint_clock),
    .reset(clint_reset),
    .auto_int_out_0(clint_auto_int_out_0),
    .auto_int_out_1(clint_auto_int_out_1),
    .auto_in_a_ready(clint_auto_in_a_ready),
    .auto_in_a_valid(clint_auto_in_a_valid),
    .auto_in_a_bits_opcode(clint_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(clint_auto_in_a_bits_size),
    .auto_in_a_bits_source(clint_auto_in_a_bits_source),
    .auto_in_a_bits_address(clint_auto_in_a_bits_address),
    .auto_in_a_bits_mask(clint_auto_in_a_bits_mask),
    .auto_in_a_bits_data(clint_auto_in_a_bits_data),
    .auto_in_d_ready(clint_auto_in_d_ready),
    .auto_in_d_valid(clint_auto_in_d_valid),
    .auto_in_d_bits_opcode(clint_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(clint_auto_in_d_bits_size),
    .auto_in_d_bits_source(clint_auto_in_d_bits_source),
    .auto_in_d_bits_data(clint_auto_in_d_bits_data),
    .io_rtcTick(clint_io_rtcTick)
  );
  TLPLIC plic ( // @[SoC.scala 268:24]
    .clock(plic_clock),
    .reset(plic_reset),
    .auto_int_in_1_0(plic_auto_int_in_1_0),
    .auto_int_in_0_0(plic_auto_int_in_0_0),
    .auto_int_in_0_1(plic_auto_int_in_0_1),
    .auto_int_in_0_2(plic_auto_int_in_0_2),
    .auto_int_in_0_3(plic_auto_int_in_0_3),
    .auto_int_in_0_4(plic_auto_int_in_0_4),
    .auto_int_in_0_5(plic_auto_int_in_0_5),
    .auto_int_in_0_6(plic_auto_int_in_0_6),
    .auto_int_in_0_7(plic_auto_int_in_0_7),
    .auto_int_in_0_8(plic_auto_int_in_0_8),
    .auto_int_in_0_9(plic_auto_int_in_0_9),
    .auto_int_in_0_10(plic_auto_int_in_0_10),
    .auto_int_in_0_11(plic_auto_int_in_0_11),
    .auto_int_in_0_12(plic_auto_int_in_0_12),
    .auto_int_in_0_13(plic_auto_int_in_0_13),
    .auto_int_in_0_14(plic_auto_int_in_0_14),
    .auto_int_in_0_15(plic_auto_int_in_0_15),
    .auto_int_in_0_16(plic_auto_int_in_0_16),
    .auto_int_in_0_17(plic_auto_int_in_0_17),
    .auto_int_in_0_18(plic_auto_int_in_0_18),
    .auto_int_in_0_19(plic_auto_int_in_0_19),
    .auto_int_in_0_20(plic_auto_int_in_0_20),
    .auto_int_in_0_21(plic_auto_int_in_0_21),
    .auto_int_in_0_22(plic_auto_int_in_0_22),
    .auto_int_in_0_23(plic_auto_int_in_0_23),
    .auto_int_in_0_24(plic_auto_int_in_0_24),
    .auto_int_in_0_25(plic_auto_int_in_0_25),
    .auto_int_in_0_26(plic_auto_int_in_0_26),
    .auto_int_in_0_27(plic_auto_int_in_0_27),
    .auto_int_in_0_28(plic_auto_int_in_0_28),
    .auto_int_in_0_29(plic_auto_int_in_0_29),
    .auto_int_in_0_30(plic_auto_int_in_0_30),
    .auto_int_in_0_31(plic_auto_int_in_0_31),
    .auto_int_in_0_32(plic_auto_int_in_0_32),
    .auto_int_in_0_33(plic_auto_int_in_0_33),
    .auto_int_in_0_34(plic_auto_int_in_0_34),
    .auto_int_in_0_35(plic_auto_int_in_0_35),
    .auto_int_in_0_36(plic_auto_int_in_0_36),
    .auto_int_in_0_37(plic_auto_int_in_0_37),
    .auto_int_in_0_38(plic_auto_int_in_0_38),
    .auto_int_in_0_39(plic_auto_int_in_0_39),
    .auto_int_in_0_40(plic_auto_int_in_0_40),
    .auto_int_in_0_41(plic_auto_int_in_0_41),
    .auto_int_in_0_42(plic_auto_int_in_0_42),
    .auto_int_in_0_43(plic_auto_int_in_0_43),
    .auto_int_in_0_44(plic_auto_int_in_0_44),
    .auto_int_in_0_45(plic_auto_int_in_0_45),
    .auto_int_in_0_46(plic_auto_int_in_0_46),
    .auto_int_in_0_47(plic_auto_int_in_0_47),
    .auto_int_in_0_48(plic_auto_int_in_0_48),
    .auto_int_in_0_49(plic_auto_int_in_0_49),
    .auto_int_in_0_50(plic_auto_int_in_0_50),
    .auto_int_in_0_51(plic_auto_int_in_0_51),
    .auto_int_in_0_52(plic_auto_int_in_0_52),
    .auto_int_in_0_53(plic_auto_int_in_0_53),
    .auto_int_in_0_54(plic_auto_int_in_0_54),
    .auto_int_in_0_55(plic_auto_int_in_0_55),
    .auto_int_in_0_56(plic_auto_int_in_0_56),
    .auto_int_in_0_57(plic_auto_int_in_0_57),
    .auto_int_in_0_58(plic_auto_int_in_0_58),
    .auto_int_in_0_59(plic_auto_int_in_0_59),
    .auto_int_in_0_60(plic_auto_int_in_0_60),
    .auto_int_in_0_61(plic_auto_int_in_0_61),
    .auto_int_in_0_62(plic_auto_int_in_0_62),
    .auto_int_in_0_63(plic_auto_int_in_0_63),
    .auto_int_out_1_0(plic_auto_int_out_1_0),
    .auto_int_out_0_0(plic_auto_int_out_0_0),
    .auto_in_a_ready(plic_auto_in_a_ready),
    .auto_in_a_valid(plic_auto_in_a_valid),
    .auto_in_a_bits_opcode(plic_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(plic_auto_in_a_bits_size),
    .auto_in_a_bits_source(plic_auto_in_a_bits_source),
    .auto_in_a_bits_address(plic_auto_in_a_bits_address),
    .auto_in_a_bits_mask(plic_auto_in_a_bits_mask),
    .auto_in_a_bits_data(plic_auto_in_a_bits_data),
    .auto_in_d_ready(plic_auto_in_d_ready),
    .auto_in_d_valid(plic_auto_in_d_valid),
    .auto_in_d_bits_opcode(plic_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(plic_auto_in_d_bits_size),
    .auto_in_d_bits_source(plic_auto_in_d_bits_source),
    .auto_in_d_bits_data(plic_auto_in_d_bits_data)
  );
  LazyModule plicSource ( // @[SoC.scala 269:30]
    .auto_source_out_0(plicSource_auto_source_out_0),
    .auto_source_out_1(plicSource_auto_source_out_1),
    .auto_source_out_2(plicSource_auto_source_out_2),
    .auto_source_out_3(plicSource_auto_source_out_3),
    .auto_source_out_4(plicSource_auto_source_out_4),
    .auto_source_out_5(plicSource_auto_source_out_5),
    .auto_source_out_6(plicSource_auto_source_out_6),
    .auto_source_out_7(plicSource_auto_source_out_7),
    .auto_source_out_8(plicSource_auto_source_out_8),
    .auto_source_out_9(plicSource_auto_source_out_9),
    .auto_source_out_10(plicSource_auto_source_out_10),
    .auto_source_out_11(plicSource_auto_source_out_11),
    .auto_source_out_12(plicSource_auto_source_out_12),
    .auto_source_out_13(plicSource_auto_source_out_13),
    .auto_source_out_14(plicSource_auto_source_out_14),
    .auto_source_out_15(plicSource_auto_source_out_15),
    .auto_source_out_16(plicSource_auto_source_out_16),
    .auto_source_out_17(plicSource_auto_source_out_17),
    .auto_source_out_18(plicSource_auto_source_out_18),
    .auto_source_out_19(plicSource_auto_source_out_19),
    .auto_source_out_20(plicSource_auto_source_out_20),
    .auto_source_out_21(plicSource_auto_source_out_21),
    .auto_source_out_22(plicSource_auto_source_out_22),
    .auto_source_out_23(plicSource_auto_source_out_23),
    .auto_source_out_24(plicSource_auto_source_out_24),
    .auto_source_out_25(plicSource_auto_source_out_25),
    .auto_source_out_26(plicSource_auto_source_out_26),
    .auto_source_out_27(plicSource_auto_source_out_27),
    .auto_source_out_28(plicSource_auto_source_out_28),
    .auto_source_out_29(plicSource_auto_source_out_29),
    .auto_source_out_30(plicSource_auto_source_out_30),
    .auto_source_out_31(plicSource_auto_source_out_31),
    .auto_source_out_32(plicSource_auto_source_out_32),
    .auto_source_out_33(plicSource_auto_source_out_33),
    .auto_source_out_34(plicSource_auto_source_out_34),
    .auto_source_out_35(plicSource_auto_source_out_35),
    .auto_source_out_36(plicSource_auto_source_out_36),
    .auto_source_out_37(plicSource_auto_source_out_37),
    .auto_source_out_38(plicSource_auto_source_out_38),
    .auto_source_out_39(plicSource_auto_source_out_39),
    .auto_source_out_40(plicSource_auto_source_out_40),
    .auto_source_out_41(plicSource_auto_source_out_41),
    .auto_source_out_42(plicSource_auto_source_out_42),
    .auto_source_out_43(plicSource_auto_source_out_43),
    .auto_source_out_44(plicSource_auto_source_out_44),
    .auto_source_out_45(plicSource_auto_source_out_45),
    .auto_source_out_46(plicSource_auto_source_out_46),
    .auto_source_out_47(plicSource_auto_source_out_47),
    .auto_source_out_48(plicSource_auto_source_out_48),
    .auto_source_out_49(plicSource_auto_source_out_49),
    .auto_source_out_50(plicSource_auto_source_out_50),
    .auto_source_out_51(plicSource_auto_source_out_51),
    .auto_source_out_52(plicSource_auto_source_out_52),
    .auto_source_out_53(plicSource_auto_source_out_53),
    .auto_source_out_54(plicSource_auto_source_out_54),
    .auto_source_out_55(plicSource_auto_source_out_55),
    .auto_source_out_56(plicSource_auto_source_out_56),
    .auto_source_out_57(plicSource_auto_source_out_57),
    .auto_source_out_58(plicSource_auto_source_out_58),
    .auto_source_out_59(plicSource_auto_source_out_59),
    .auto_source_out_60(plicSource_auto_source_out_60),
    .auto_source_out_61(plicSource_auto_source_out_61),
    .auto_source_out_62(plicSource_auto_source_out_62),
    .auto_source_out_63(plicSource_auto_source_out_63),
    .in_0(plicSource_in_0),
    .in_1(plicSource_in_1),
    .in_2(plicSource_in_2),
    .in_3(plicSource_in_3),
    .in_4(plicSource_in_4),
    .in_5(plicSource_in_5),
    .in_6(plicSource_in_6),
    .in_7(plicSource_in_7),
    .in_8(plicSource_in_8),
    .in_9(plicSource_in_9),
    .in_10(plicSource_in_10),
    .in_11(plicSource_in_11),
    .in_12(plicSource_in_12),
    .in_13(plicSource_in_13),
    .in_14(plicSource_in_14),
    .in_15(plicSource_in_15),
    .in_16(plicSource_in_16),
    .in_17(plicSource_in_17),
    .in_18(plicSource_in_18),
    .in_19(plicSource_in_19),
    .in_20(plicSource_in_20),
    .in_21(plicSource_in_21),
    .in_22(plicSource_in_22),
    .in_23(plicSource_in_23),
    .in_24(plicSource_in_24),
    .in_25(plicSource_in_25),
    .in_26(plicSource_in_26),
    .in_27(plicSource_in_27),
    .in_28(plicSource_in_28),
    .in_29(plicSource_in_29),
    .in_30(plicSource_in_30),
    .in_31(plicSource_in_31),
    .in_32(plicSource_in_32),
    .in_33(plicSource_in_33),
    .in_34(plicSource_in_34),
    .in_35(plicSource_in_35),
    .in_36(plicSource_in_36),
    .in_37(plicSource_in_37),
    .in_38(plicSource_in_38),
    .in_39(plicSource_in_39),
    .in_40(plicSource_in_40),
    .in_41(plicSource_in_41),
    .in_42(plicSource_in_42),
    .in_43(plicSource_in_43),
    .in_44(plicSource_in_44),
    .in_45(plicSource_in_45),
    .in_46(plicSource_in_46),
    .in_47(plicSource_in_47),
    .in_48(plicSource_in_48),
    .in_49(plicSource_in_49),
    .in_50(plicSource_in_50),
    .in_51(plicSource_in_51),
    .in_52(plicSource_in_52),
    .in_53(plicSource_in_53),
    .in_54(plicSource_in_54),
    .in_55(plicSource_in_55),
    .in_56(plicSource_in_56),
    .in_57(plicSource_in_57),
    .in_58(plicSource_in_58),
    .in_59(plicSource_in_59),
    .in_60(plicSource_in_60),
    .in_61(plicSource_in_61),
    .in_62(plicSource_in_62),
    .in_63(plicSource_in_63)
  );
  DebugModule debugModule ( // @[SoC.scala 282:31]
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_a_ready(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_ready),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_a_valid(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_valid),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode(
      debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_address(
      debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_address),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_mask(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_mask
      ),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_data(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_data
      ),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_d_ready(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_ready),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_d_valid(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_valid),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_denied(
      debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_denied),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_data(debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_data
      ),
    .auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt(
      debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt),
    .auto_debug_dmInner_dmInner_tl_in_a_ready(debugModule_auto_debug_dmInner_dmInner_tl_in_a_ready),
    .auto_debug_dmInner_dmInner_tl_in_a_valid(debugModule_auto_debug_dmInner_dmInner_tl_in_a_valid),
    .auto_debug_dmInner_dmInner_tl_in_a_bits_opcode(debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_opcode),
    .auto_debug_dmInner_dmInner_tl_in_a_bits_size(debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_size),
    .auto_debug_dmInner_dmInner_tl_in_a_bits_source(debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_source),
    .auto_debug_dmInner_dmInner_tl_in_a_bits_address(debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_address),
    .auto_debug_dmInner_dmInner_tl_in_a_bits_mask(debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_mask),
    .auto_debug_dmInner_dmInner_tl_in_a_bits_data(debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_data),
    .auto_debug_dmInner_dmInner_tl_in_d_ready(debugModule_auto_debug_dmInner_dmInner_tl_in_d_ready),
    .auto_debug_dmInner_dmInner_tl_in_d_valid(debugModule_auto_debug_dmInner_dmInner_tl_in_d_valid),
    .auto_debug_dmInner_dmInner_tl_in_d_bits_opcode(debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_opcode),
    .auto_debug_dmInner_dmInner_tl_in_d_bits_size(debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_size),
    .auto_debug_dmInner_dmInner_tl_in_d_bits_source(debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_source),
    .auto_debug_dmInner_dmInner_tl_in_d_bits_data(debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_data),
    .auto_debug_dmOuter_dmOuter_int_out_0(debugModule_auto_debug_dmOuter_dmOuter_int_out_0),
    .io_resetCtrl_hartIsInReset_0(debugModule_io_resetCtrl_hartIsInReset_0),
    .io_debugIO_clock(debugModule_io_debugIO_clock),
    .io_debugIO_reset(debugModule_io_debugIO_reset),
    .io_debugIO_systemjtag_jtag_TCK(debugModule_io_debugIO_systemjtag_jtag_TCK),
    .io_debugIO_systemjtag_jtag_TMS(debugModule_io_debugIO_systemjtag_jtag_TMS),
    .io_debugIO_systemjtag_jtag_TDI(debugModule_io_debugIO_systemjtag_jtag_TDI),
    .io_debugIO_systemjtag_jtag_TDO_data(debugModule_io_debugIO_systemjtag_jtag_TDO_data),
    .io_debugIO_systemjtag_jtag_TDO_driven(debugModule_io_debugIO_systemjtag_jtag_TDO_driven),
    .io_debugIO_systemjtag_reset(debugModule_io_debugIO_systemjtag_reset),
    .io_debugIO_systemjtag_mfr_id(debugModule_io_debugIO_systemjtag_mfr_id),
    .io_debugIO_systemjtag_part_number(debugModule_io_debugIO_systemjtag_part_number),
    .io_debugIO_systemjtag_version(debugModule_io_debugIO_systemjtag_version),
    .io_debugIO_ndreset(debugModule_io_debugIO_ndreset),
    .io_debugIO_dmactive(debugModule_io_debugIO_dmactive),
    .io_debugIO_dmactiveAck(debugModule_io_debugIO_dmactiveAck),
    .io_clock(debugModule_io_clock),
    .io_reset(debugModule_io_reset)
  );
  TLBuffer_15 buffer_1 ( // @[Buffer.scala 68:28]
    .clock(buffer_1_clock),
    .reset(buffer_1_reset),
    .auto_in_a_ready(buffer_1_auto_in_a_ready),
    .auto_in_a_valid(buffer_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(buffer_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_1_auto_in_a_bits_data),
    .auto_in_d_ready(buffer_1_auto_in_d_ready),
    .auto_in_d_valid(buffer_1_auto_in_d_valid),
    .auto_in_d_bits_denied(buffer_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_1_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_1_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_1_auto_out_a_ready),
    .auto_out_a_valid(buffer_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_1_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_1_auto_out_a_bits_data),
    .auto_out_d_ready(buffer_1_auto_out_d_ready),
    .auto_out_d_valid(buffer_1_auto_out_d_valid),
    .auto_out_d_bits_denied(buffer_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_1_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_1_auto_out_d_bits_corrupt)
  );
  TLPMA pma ( // @[SoC.scala 288:23]
    .clock(pma_clock),
    .reset(pma_reset),
    .auto_in_a_ready(pma_auto_in_a_ready),
    .auto_in_a_valid(pma_auto_in_a_valid),
    .auto_in_a_bits_opcode(pma_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(pma_auto_in_a_bits_size),
    .auto_in_a_bits_source(pma_auto_in_a_bits_source),
    .auto_in_a_bits_address(pma_auto_in_a_bits_address),
    .auto_in_a_bits_mask(pma_auto_in_a_bits_mask),
    .auto_in_a_bits_data(pma_auto_in_a_bits_data),
    .auto_in_d_ready(pma_auto_in_d_ready),
    .auto_in_d_valid(pma_auto_in_d_valid),
    .auto_in_d_bits_opcode(pma_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(pma_auto_in_d_bits_size),
    .auto_in_d_bits_source(pma_auto_in_d_bits_source),
    .auto_in_d_bits_data(pma_auto_in_d_bits_data),
    .io_req_0_bits_addr(pma_io_req_0_bits_addr),
    .io_req_1_bits_addr(pma_io_req_1_bits_addr),
    .io_resp_0_ld(pma_io_resp_0_ld),
    .io_resp_0_st(pma_io_resp_0_st),
    .io_resp_0_instr(pma_io_resp_0_instr),
    .io_resp_0_mmio(pma_io_resp_0_mmio),
    .io_resp_0_atomic(pma_io_resp_0_atomic),
    .io_resp_1_ld(pma_io_resp_1_ld),
    .io_resp_1_st(pma_io_resp_1_st),
    .io_resp_1_instr(pma_io_resp_1_instr),
    .io_resp_1_mmio(pma_io_resp_1_mmio),
    .io_resp_1_atomic(pma_io_resp_1_atomic)
  );
  TLBuffer_16 buffers_9 ( // @[Buffer.scala 73:47]
    .clock(buffers_9_clock),
    .reset(buffers_9_reset),
    .auto_in_a_ready(buffers_9_auto_in_a_ready),
    .auto_in_a_valid(buffers_9_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_9_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_9_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_9_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_9_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_9_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_9_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_9_auto_in_d_ready),
    .auto_in_d_valid(buffers_9_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_9_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_9_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_9_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_9_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_9_auto_out_a_ready),
    .auto_out_a_valid(buffers_9_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_9_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_9_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_9_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_9_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_9_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_9_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_9_auto_out_d_ready),
    .auto_out_d_valid(buffers_9_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_9_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_9_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_9_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_9_auto_out_d_bits_data)
  );
  TLBuffer_16 buffers_10 ( // @[Buffer.scala 73:47]
    .clock(buffers_10_clock),
    .reset(buffers_10_reset),
    .auto_in_a_ready(buffers_10_auto_in_a_ready),
    .auto_in_a_valid(buffers_10_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_10_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_10_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_10_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_10_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_10_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_10_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_10_auto_in_d_ready),
    .auto_in_d_valid(buffers_10_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_10_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_10_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_10_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_10_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_10_auto_out_a_ready),
    .auto_out_a_valid(buffers_10_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_10_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_10_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_10_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_10_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_10_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_10_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_10_auto_out_d_ready),
    .auto_out_d_valid(buffers_10_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_10_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_10_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_10_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_10_auto_out_d_bits_data)
  );
  TLBuffer_16 buffers_11 ( // @[Buffer.scala 73:47]
    .clock(buffers_11_clock),
    .reset(buffers_11_reset),
    .auto_in_a_ready(buffers_11_auto_in_a_ready),
    .auto_in_a_valid(buffers_11_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_11_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_11_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_11_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_11_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_11_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_11_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_11_auto_in_d_ready),
    .auto_in_d_valid(buffers_11_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_11_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_11_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_11_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_11_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_11_auto_out_a_ready),
    .auto_out_a_valid(buffers_11_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_11_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_11_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_11_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_11_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_11_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_11_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_11_auto_out_d_ready),
    .auto_out_d_valid(buffers_11_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_11_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_11_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_11_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_11_auto_out_d_bits_data)
  );
  TLBuffer_16 buffers_12 ( // @[Buffer.scala 73:47]
    .clock(buffers_12_clock),
    .reset(buffers_12_reset),
    .auto_in_a_ready(buffers_12_auto_in_a_ready),
    .auto_in_a_valid(buffers_12_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_12_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_12_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_12_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_12_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_12_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_12_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_12_auto_in_d_ready),
    .auto_in_d_valid(buffers_12_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_12_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_12_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_12_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_12_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_12_auto_out_a_ready),
    .auto_out_a_valid(buffers_12_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_12_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_12_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_12_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_12_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_12_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_12_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_12_auto_out_d_ready),
    .auto_out_d_valid(buffers_12_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_12_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_12_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_12_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_12_auto_out_d_bits_data)
  );
  Queue_132 out_back ( // @[Decoupled.scala 361:21]
    .clock(out_back_clock),
    .reset(out_back_reset),
    .io_enq_ready(out_back_io_enq_ready),
    .io_enq_valid(out_back_io_enq_valid),
    .io_enq_bits_read(out_back_io_enq_bits_read),
    .io_enq_bits_index(out_back_io_enq_bits_index),
    .io_enq_bits_data(out_back_io_enq_bits_data),
    .io_enq_bits_mask(out_back_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(out_back_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(out_back_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(out_back_io_deq_ready),
    .io_deq_valid(out_back_io_deq_valid),
    .io_deq_bits_read(out_back_io_deq_bits_read),
    .io_deq_bits_index(out_back_io_deq_bits_index),
    .io_deq_bits_data(out_back_io_deq_bits_data),
    .io_deq_bits_mask(out_back_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(out_back_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(out_back_io_deq_bits_extra_tlrr_extra_size)
  );
  assign auto_debugModule_debug_dmOuter_dmOuter_int_out_0 = debugModule_auto_debug_dmOuter_dmOuter_int_out_0; // @[LazyModule.scala 311:12]
  assign auto_plic_int_out_1_0 = plic_auto_int_out_1_0; // @[LazyModule.scala 311:12]
  assign auto_plic_int_out_0_0 = plic_auto_int_out_0_0; // @[LazyModule.scala 311:12]
  assign auto_clint_int_out_0 = clint_auto_int_out_0; // @[LazyModule.scala 311:12]
  assign auto_clint_int_out_1 = clint_auto_int_out_1; // @[LazyModule.scala 311:12]
  assign auto_buffer_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bvalid = buffer_auto_in_bvalid; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bopcode = buffer_auto_in_bopcode; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bparam = buffer_auto_in_bparam; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bsize = buffer_auto_in_bsize; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_baddress = buffer_auto_in_baddress; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bmask = buffer_auto_in_bmask; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bdata = buffer_auto_in_bdata; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_bcorrupt = buffer_auto_in_bcorrupt; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_c_ready = buffer_auto_in_c_ready; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_echo_blockisdirty = buffer_auto_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_e_ready = buffer_auto_in_e_ready; // @[LazyModule.scala 309:16]
  assign auto_L2_to_L3_peripheral_buffer_1_in_a_ready = L2_to_L3_peripheral_buffer_1_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_L2_to_L3_peripheral_buffer_1_in_d_valid = L2_to_L3_peripheral_buffer_1_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_L2_to_L3_peripheral_buffer_1_in_d_bits_opcode = L2_to_L3_peripheral_buffer_1_auto_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_L2_to_L3_peripheral_buffer_1_in_d_bits_size = L2_to_L3_peripheral_buffer_1_auto_in_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_L2_to_L3_peripheral_buffer_1_in_d_bits_source = L2_to_L3_peripheral_buffer_1_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_L2_to_L3_peripheral_buffer_1_in_d_bits_data = L2_to_L3_peripheral_buffer_1_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_xbar_out_a_valid = xbar_2_auto_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_opcode = xbar_2_auto_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_param = xbar_2_auto_out_a_bits_param; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_size = xbar_2_auto_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_source = xbar_2_auto_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_address = xbar_2_auto_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_mask = xbar_2_auto_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_a_bits_data = xbar_2_auto_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_bready = xbar_2_auto_out_bready; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_valid = xbar_2_auto_out_c_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_opcode = xbar_2_auto_out_c_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_param = xbar_2_auto_out_c_bits_param; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_size = xbar_2_auto_out_c_bits_size; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_source = xbar_2_auto_out_c_bits_source; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_address = xbar_2_auto_out_c_bits_address; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_echo_blockisdirty = xbar_2_auto_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_c_bits_data = xbar_2_auto_out_c_bits_data; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_d_ready = xbar_2_auto_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_e_valid = xbar_2_auto_out_e_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_e_bits_sink = xbar_2_auto_out_e_bits_sink; // @[LazyModule.scala 311:12]
  assign auto_binder_in_a_ready = binder_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_c_ready = binder_auto_in_c_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_valid = binder_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_opcode = binder_auto_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_param = binder_auto_in_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_size = binder_auto_in_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_source = binder_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_sink = binder_auto_in_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_denied = binder_auto_in_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_binder_in_d_bits_data = binder_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_e_ready = binder_auto_in_e_ready; // @[LazyModule.scala 309:16]
  assign memory_0_awvalid = axi4buf_auto_out_awvalid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awid = axi4buf_auto_out_awid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awaddr = axi4buf_auto_out_awaddr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awlen = axi4buf_auto_out_awlen; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awsize = axi4buf_auto_out_awsize; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awburst = axi4buf_auto_out_awburst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awlock = axi4buf_auto_out_awlock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awcache = axi4buf_auto_out_awcache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awprot = axi4buf_auto_out_awprot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_awqos = axi4buf_auto_out_awqos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_wvalid = axi4buf_auto_out_wvalid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_wdata = axi4buf_auto_out_wdata; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_wstrb = axi4buf_auto_out_wstrb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_wlast = axi4buf_auto_out_wlast; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_bready = axi4buf_auto_out_bready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arvalid = axi4buf_auto_out_arvalid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arid = axi4buf_auto_out_arid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_araddr = axi4buf_auto_out_araddr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arlen = axi4buf_auto_out_arlen; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arsize = axi4buf_auto_out_arsize; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arburst = axi4buf_auto_out_arburst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arlock = axi4buf_auto_out_arlock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arcache = axi4buf_auto_out_arcache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arprot = axi4buf_auto_out_arprot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_arqos = axi4buf_auto_out_arqos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign memory_0_rready = axi4buf_auto_out_rready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awvalid = axi4index_1_auto_out_awvalid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awid = axi4index_1_auto_out_awid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awaddr = axi4index_1_auto_out_awaddr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awlen = axi4index_1_auto_out_awlen; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awsize = axi4index_1_auto_out_awsize; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awburst = axi4index_1_auto_out_awburst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awlock = axi4index_1_auto_out_awlock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awcache = axi4index_1_auto_out_awcache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awprot = axi4index_1_auto_out_awprot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_awqos = axi4index_1_auto_out_awqos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_wvalid = axi4index_1_auto_out_wvalid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_wdata = axi4index_1_auto_out_wdata; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_wstrb = axi4index_1_auto_out_wstrb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_wlast = axi4index_1_auto_out_wlast; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_bready = axi4index_1_auto_out_bready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arvalid = axi4index_1_auto_out_arvalid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arid = axi4index_1_auto_out_arid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_araddr = axi4index_1_auto_out_araddr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arlen = axi4index_1_auto_out_arlen; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arsize = axi4index_1_auto_out_arsize; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arburst = axi4index_1_auto_out_arburst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arlock = axi4index_1_auto_out_arlock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arcache = axi4index_1_auto_out_arcache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arprot = axi4index_1_auto_out_arprot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_arqos = axi4index_1_auto_out_arqos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign peripheral_0_rready = axi4index_1_auto_out_rready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign dma_0_awready = axi4index_2_auto_in_awready; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_wready = axi4index_2_auto_in_wready; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_bvalid = axi4index_2_auto_in_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_bid = axi4index_2_auto_in_bid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_bresp = axi4index_2_auto_in_bresp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_arready = axi4index_2_auto_in_arready; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_rvalid = axi4index_2_auto_in_rvalid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_rid = axi4index_2_auto_in_rid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_rdata = axi4index_2_auto_in_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_rresp = axi4index_2_auto_in_rresp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign dma_0_rlast = axi4index_2_auto_in_rlast; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign debug_module_io_debugIO_systemjtag_jtag_TDO_data = debugModule_io_debugIO_systemjtag_jtag_TDO_data; // @[SoC.scala 302:27]
  assign debug_module_io_debugIO_systemjtag_jtag_TDO_driven = debugModule_io_debugIO_systemjtag_jtag_TDO_driven; // @[SoC.scala 302:27]
  assign debug_module_io_debugIO_ndreset = debugModule_io_debugIO_ndreset; // @[SoC.scala 302:27]
  assign debug_module_io_debugIO_dmactive = debugModule_io_debugIO_dmactive; // @[SoC.scala 302:27]
  assign pll0_ctrl_0 = pll_ctrl_regs_0; // @[SoC.scala 328:{25,25}]
  assign pll0_ctrl_1 = pll_ctrl_regs_1; // @[SoC.scala 328:{25,25}]
  assign pll0_ctrl_2 = pll_ctrl_regs_2; // @[SoC.scala 328:{25,25}]
  assign pll0_ctrl_3 = pll_ctrl_regs_3; // @[SoC.scala 328:{25,25}]
  assign pll0_ctrl_4 = pll_ctrl_regs_4; // @[SoC.scala 328:{25,25}]
  assign pll0_ctrl_5 = pll_ctrl_regs_5; // @[SoC.scala 328:{25,25}]
  assign cacheable_check_resp_0_ld = pma_io_resp_0_ld; // @[SoC.scala 312:19]
  assign cacheable_check_resp_0_st = pma_io_resp_0_st; // @[SoC.scala 312:19]
  assign cacheable_check_resp_0_instr = pma_io_resp_0_instr; // @[SoC.scala 312:19]
  assign cacheable_check_resp_0_mmio = pma_io_resp_0_mmio; // @[SoC.scala 312:19]
  assign cacheable_check_resp_0_atomic = pma_io_resp_0_atomic; // @[SoC.scala 312:19]
  assign cacheable_check_resp_1_ld = pma_io_resp_1_ld; // @[SoC.scala 312:19]
  assign cacheable_check_resp_1_st = pma_io_resp_1_st; // @[SoC.scala 312:19]
  assign cacheable_check_resp_1_instr = pma_io_resp_1_instr; // @[SoC.scala 312:19]
  assign cacheable_check_resp_1_mmio = pma_io_resp_1_mmio; // @[SoC.scala 312:19]
  assign cacheable_check_resp_1_atomic = pma_io_resp_1_atomic; // @[SoC.scala 312:19]
  assign binder_auto_in_a_valid = auto_binder_in_a_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_opcode = auto_binder_in_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_param = auto_binder_in_a_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_size = auto_binder_in_a_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_source = auto_binder_in_a_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_address = auto_binder_in_a_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_mask = auto_binder_in_a_bits_mask; // @[LazyModule.scala 309:16]
  assign binder_auto_in_a_bits_data = auto_binder_in_a_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_c_valid = auto_binder_in_c_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_c_bits_opcode = auto_binder_in_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_c_bits_size = auto_binder_in_c_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_c_bits_source = auto_binder_in_c_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_c_bits_address = auto_binder_in_c_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_c_bits_data = auto_binder_in_c_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_d_ready = auto_binder_in_d_ready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_e_valid = auto_binder_in_e_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_e_bits_sink = auto_binder_in_e_bits_sink; // @[LazyModule.scala 309:16]
  assign binder_auto_out_a_ready = xbar_4_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_c_ready = xbar_4_auto_in_c_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_valid = xbar_4_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_opcode = xbar_4_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_param = xbar_4_auto_in_d_bits_param; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_size = xbar_4_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_source = xbar_4_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_sink = xbar_4_auto_in_d_bits_sink; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_denied = xbar_4_auto_in_d_bits_denied; // @[LazyModule.scala 298:16]
  assign binder_auto_out_d_bits_data = xbar_4_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign binder_auto_out_e_ready = xbar_4_auto_in_e_ready; // @[LazyModule.scala 298:16]
  assign xbar_clock = clock;
  assign xbar_reset = reset;
  assign xbar_auto_in_a_valid = L2_to_L3_peripheral_buffer_0_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_a_bits_opcode = L2_to_L3_peripheral_buffer_0_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_a_bits_size = L2_to_L3_peripheral_buffer_0_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_a_bits_source = L2_to_L3_peripheral_buffer_0_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_a_bits_address = L2_to_L3_peripheral_buffer_0_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_a_bits_mask = L2_to_L3_peripheral_buffer_0_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_a_bits_data = L2_to_L3_peripheral_buffer_0_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_d_ready = L2_to_L3_peripheral_buffer_0_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_auto_out_6_a_ready = buffers_12_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_6_d_valid = buffers_12_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_6_d_bits_opcode = buffers_12_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_6_d_bits_size = buffers_12_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_6_d_bits_source = buffers_12_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_6_d_bits_data = buffers_12_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_5_a_ready = debugModule_auto_debug_dmInner_dmInner_tl_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_5_d_valid = debugModule_auto_debug_dmInner_dmInner_tl_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_5_d_bits_opcode = debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_5_d_bits_size = debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_5_d_bits_source = debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_5_d_bits_data = debugModule_auto_debug_dmInner_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_4_a_ready = out_back_io_enq_ready; // @[Decoupled.scala 365:17 RegisterRouter.scala 82:24]
  assign xbar_auto_out_4_d_valid = out_back_io_deq_valid; // @[RegisterRouter.scala 82:24]
  assign xbar_auto_out_4_d_bits_opcode = {{2'd0}, out_bits_read}; // @[Nodes.scala 1210:84 RegisterRouter.scala 97:19]
  assign xbar_auto_out_4_d_bits_size = out_back_io_deq_bits_extra_tlrr_extra_size; // @[RegisterRouter.scala 82:{24,24}]
  assign xbar_auto_out_4_d_bits_source = out_back_io_deq_bits_extra_tlrr_extra_source; // @[RegisterRouter.scala 82:{24,24}]
  assign xbar_auto_out_4_d_bits_data = _GEN_25 ? _GEN_29 : 64'h0; // @[RegisterRouter.scala 82:24]
  assign xbar_auto_out_3_a_ready = plic_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_3_d_valid = plic_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_3_d_bits_opcode = plic_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_3_d_bits_size = plic_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_3_d_bits_source = plic_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_3_d_bits_data = plic_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_2_a_ready = clint_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_2_d_valid = clint_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_2_d_bits_opcode = clint_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_2_d_bits_size = clint_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_2_d_bits_source = clint_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_2_d_bits_data = clint_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_a_ready = buffers_6_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_valid = buffers_6_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_opcode = buffers_6_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_size = buffers_6_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_source = buffers_6_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_data = buffers_6_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_a_ready = PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_valid = PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_opcode = PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_size = PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_source = PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_data = PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_1_clock = clock;
  assign xbar_1_reset = reset;
  assign xbar_1_auto_in_1_a_valid = buffer_1_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_opcode = buffer_1_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_param = buffer_1_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_size = buffer_1_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_source = buffer_1_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_address = buffer_1_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_mask = buffer_1_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_data = buffer_1_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_d_ready = buffer_1_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_out_1_a_ready = buffers_8_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_valid = buffers_8_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_opcode = buffers_8_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_size = buffers_8_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_source = buffers_8_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_denied = buffers_8_auto_in_d_bits_denied; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_data = buffers_8_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_corrupt = buffers_8_auto_in_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_a_ready = errorDevice_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_valid = errorDevice_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_opcode = errorDevice_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_size = errorDevice_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_source = errorDevice_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_corrupt = errorDevice_auto_in_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign xbar_2_clock = clock;
  assign xbar_2_reset = reset;
  assign xbar_2_auto_in_1_a_valid = buffers_7_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_opcode = buffers_7_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_param = buffers_7_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_size = buffers_7_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_source = buffers_7_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_address = buffers_7_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_mask = buffers_7_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_a_bits_data = buffers_7_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_1_d_ready = buffers_7_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_bready = buffer_auto_out_bready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_valid = buffer_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_opcode = buffer_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_param = buffer_auto_out_c_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_size = buffer_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_source = buffer_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_address = buffer_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_echo_blockisdirty = buffer_auto_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_c_bits_data = buffer_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_e_valid = buffer_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_in_0_e_bits_sink = buffer_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_a_ready = auto_xbar_out_a_ready; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_bvalid = auto_xbar_out_bvalid; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_bparam = auto_xbar_out_bparam; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_baddress = auto_xbar_out_baddress; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_bdata = auto_xbar_out_bdata; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_c_ready = auto_xbar_out_c_ready; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_valid = auto_xbar_out_d_valid; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_opcode = auto_xbar_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_param = auto_xbar_out_d_bits_param; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_size = auto_xbar_out_d_bits_size; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_source = auto_xbar_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_sink = auto_xbar_out_d_bits_sink; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_denied = auto_xbar_out_d_bits_denied; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_echo_blockisdirty = auto_xbar_out_d_bits_echo_blockisdirty; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_data = auto_xbar_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign xbar_2_auto_out_d_bits_corrupt = auto_xbar_out_d_bits_corrupt; // @[LazyModule.scala 311:12]
  assign xbar_3_clock = clock;
  assign xbar_3_reset = reset;
  assign xbar_3_auto_in_1_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_1_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_valid = buffers_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_bits_opcode = buffers_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_bits_size = buffers_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_bits_source = buffers_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_bits_address = buffers_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_bits_mask = buffers_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_a_bits_data = buffers_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_in_0_d_ready = buffers_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_3_auto_out_a_ready = buffers_3_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_valid = buffers_3_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_bits_opcode = buffers_3_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_bits_param = buffers_3_auto_in_d_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_bits_size = buffers_3_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_bits_source = buffers_3_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_bits_denied = buffers_3_auto_in_d_bits_denied; // @[LazyModule.scala 298:16]
  assign xbar_3_auto_out_d_bits_data = buffers_3_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_clock = clock;
  assign buffers_reset = reset;
  assign buffers_auto_in_a_valid = buffers_1_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_opcode = buffers_1_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_size = buffers_1_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_source = buffers_1_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_address = buffers_1_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_mask = buffers_1_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_data = buffers_1_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_d_ready = buffers_1_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_a_ready = xbar_3_auto_in_0_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_valid = xbar_3_auto_in_0_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_opcode = xbar_3_auto_in_0_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_param = xbar_3_auto_in_0_d_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_size = xbar_3_auto_in_0_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_source = xbar_3_auto_in_0_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_denied = xbar_3_auto_in_0_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_data = xbar_3_auto_in_0_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_1_clock = clock;
  assign buffers_1_reset = reset;
  assign buffers_1_auto_in_a_valid = cork_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_opcode = cork_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_size = cork_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_source = cork_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_address = cork_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_mask = cork_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_data = cork_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_d_ready = cork_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_a_ready = buffers_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_valid = buffers_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_opcode = buffers_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_param = buffers_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_size = buffers_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_source = buffers_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_denied = buffers_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_data = buffers_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign cork_clock = clock;
  assign cork_reset = reset;
  assign cork_auto_in_a_valid = merger_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_opcode = merger_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_param = merger_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_size = merger_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_source = merger_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_address = merger_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_mask = merger_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign cork_auto_in_a_bits_data = merger_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign cork_auto_in_c_valid = merger_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign cork_auto_in_c_bits_opcode = merger_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign cork_auto_in_c_bits_size = merger_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign cork_auto_in_c_bits_source = merger_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign cork_auto_in_c_bits_address = merger_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign cork_auto_in_c_bits_data = merger_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign cork_auto_in_d_ready = merger_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign cork_auto_in_e_valid = merger_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign cork_auto_in_e_bits_sink = merger_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign cork_auto_out_a_ready = buffers_1_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_valid = buffers_1_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_bits_opcode = buffers_1_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_bits_param = buffers_1_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_bits_size = buffers_1_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_bits_source = buffers_1_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_bits_denied = buffers_1_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign cork_auto_out_d_bits_data = buffers_1_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_valid = xbar_4_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_opcode = xbar_4_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_param = xbar_4_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_size = xbar_4_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_source = xbar_4_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_address = xbar_4_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_mask = xbar_4_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_data = xbar_4_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_valid = xbar_4_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_opcode = xbar_4_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_size = xbar_4_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_source = xbar_4_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_address = xbar_4_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_data = xbar_4_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_d_ready = xbar_4_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_in_e_valid = xbar_4_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_e_bits_sink = xbar_4_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign merger_auto_out_a_ready = cork_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_out_c_ready = cork_auto_in_c_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_valid = cork_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_opcode = cork_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_param = cork_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_size = cork_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_source = cork_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_sink = cork_auto_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_denied = cork_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_data = cork_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_out_e_ready = 1'h1; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_in_a_valid = binder_auto_out_a_valid; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_opcode = binder_auto_out_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_param = binder_auto_out_a_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_size = binder_auto_out_a_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_source = binder_auto_out_a_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_address = binder_auto_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_mask = binder_auto_out_a_bits_mask; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_a_bits_data = binder_auto_out_a_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_c_valid = binder_auto_out_c_valid; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_c_bits_opcode = binder_auto_out_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_c_bits_size = binder_auto_out_c_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_c_bits_source = binder_auto_out_c_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_c_bits_address = binder_auto_out_c_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_c_bits_data = binder_auto_out_c_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_d_ready = binder_auto_out_d_ready; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_e_valid = binder_auto_out_e_valid; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_in_e_bits_sink = binder_auto_out_e_bits_sink; // @[LazyModule.scala 298:16]
  assign xbar_4_auto_out_a_ready = merger_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_c_ready = merger_auto_in_c_ready; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_valid = merger_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_opcode = merger_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_param = merger_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_size = merger_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_source = merger_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_sink = merger_auto_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_denied = merger_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_d_bits_data = merger_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_4_auto_out_e_ready = merger_auto_in_e_ready; // @[LazyModule.scala 296:16]
  assign widget_clock = clock;
  assign widget_reset = reset;
  assign widget_auto_in_a_valid = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign widget_auto_in_a_bits_opcode = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign widget_auto_in_a_bits_size = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign widget_auto_in_a_bits_source = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign widget_auto_in_a_bits_address = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign widget_auto_in_a_bits_mask = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign widget_auto_in_a_bits_data = PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign widget_auto_in_d_ready = PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign widget_auto_out_a_ready = xbar_3_auto_in_1_a_ready; // @[LazyModule.scala 296:16]
  assign widget_auto_out_d_valid = xbar_3_auto_in_1_d_valid; // @[LazyModule.scala 296:16]
  assign widget_auto_out_d_bits_opcode = xbar_3_auto_in_1_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign widget_auto_out_d_bits_size = xbar_3_auto_in_1_d_bits_size; // @[LazyModule.scala 296:16]
  assign widget_auto_out_d_bits_source = xbar_3_auto_in_1_d_bits_source; // @[LazyModule.scala 296:16]
  assign widget_auto_out_d_bits_data = xbar_3_auto_in_1_d_bits_data; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_clock = clock;
  assign PeripheralXbar_to_MemXbar_buffer_0_reset = reset;
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_valid = PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_opcode =
    PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_size =
    PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_source =
    PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_address =
    PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_mask =
    PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_bits_data =
    PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_ready = PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_out_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_0_auto_out_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_clock = clock;
  assign PeripheralXbar_to_MemXbar_buffer_1_reset = reset;
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_valid = PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_opcode =
    PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_size =
    PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_source =
    PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_address =
    PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_mask =
    PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_bits_data =
    PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_ready = PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_out_a_ready = PeripheralXbar_to_MemXbar_buffer_0_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_valid = PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_opcode =
    PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_size =
    PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_source =
    PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_1_auto_out_d_bits_data =
    PeripheralXbar_to_MemXbar_buffer_0_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_clock = clock;
  assign PeripheralXbar_to_MemXbar_buffer_2_reset = reset;
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_valid = xbar_auto_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_opcode = xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_size = xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_source = xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_address = xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_mask = xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_a_bits_data = xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_in_d_ready = xbar_auto_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_out_a_ready = PeripheralXbar_to_MemXbar_buffer_1_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_valid = PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_opcode =
    PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_size =
    PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_source =
    PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign PeripheralXbar_to_MemXbar_buffer_2_auto_out_d_bits_data =
    PeripheralXbar_to_MemXbar_buffer_1_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign axi4buf_clock = clock;
  assign axi4buf_reset = reset;
  assign axi4buf_auto_in_awvalid = axi4buf_1_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awid = axi4buf_1_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awaddr = axi4buf_1_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awlen = axi4buf_1_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awsize = axi4buf_1_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awburst = axi4buf_1_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awlock = axi4buf_1_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awcache = axi4buf_1_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awprot = axi4buf_1_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_awqos = axi4buf_1_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_wvalid = axi4buf_1_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_wdata = axi4buf_1_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_wstrb = axi4buf_1_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_wlast = axi4buf_1_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_bready = axi4buf_1_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arvalid = axi4buf_1_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arid = axi4buf_1_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_araddr = axi4buf_1_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arlen = axi4buf_1_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arsize = axi4buf_1_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arburst = axi4buf_1_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arlock = axi4buf_1_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arcache = axi4buf_1_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arprot = axi4buf_1_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_arqos = axi4buf_1_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_in_rready = axi4buf_1_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_awready = memory_0_awready; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_wready = memory_0_wready; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_bvalid = memory_0_bvalid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_bid = memory_0_bid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_bresp = memory_0_bresp; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_arready = memory_0_arready; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_rvalid = memory_0_rvalid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_rid = memory_0_rid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_rdata = memory_0_rdata; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_rresp = memory_0_rresp; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_auto_out_rlast = memory_0_rlast; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_1_clock = clock;
  assign axi4buf_1_reset = reset;
  assign axi4buf_1_auto_in_awvalid = axi4buf_2_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awid = axi4buf_2_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awaddr = axi4buf_2_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awlen = axi4buf_2_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awsize = axi4buf_2_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awburst = axi4buf_2_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awlock = axi4buf_2_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awcache = axi4buf_2_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awprot = axi4buf_2_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_awqos = axi4buf_2_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_wvalid = axi4buf_2_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_wdata = axi4buf_2_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_wstrb = axi4buf_2_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_wlast = axi4buf_2_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_bready = axi4buf_2_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arvalid = axi4buf_2_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arid = axi4buf_2_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_araddr = axi4buf_2_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arlen = axi4buf_2_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arsize = axi4buf_2_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arburst = axi4buf_2_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arlock = axi4buf_2_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arcache = axi4buf_2_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arprot = axi4buf_2_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_arqos = axi4buf_2_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_in_rready = axi4buf_2_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_awready = axi4buf_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_wready = axi4buf_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_bvalid = axi4buf_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_bid = axi4buf_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_bresp = axi4buf_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_arready = axi4buf_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_rvalid = axi4buf_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_rid = axi4buf_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_rdata = axi4buf_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_rresp = axi4buf_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_rlast = axi4buf_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4buf_2_clock = clock;
  assign axi4buf_2_reset = reset;
  assign axi4buf_2_auto_in_awvalid = axi4index_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awid = axi4index_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awaddr = axi4index_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awlen = axi4index_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awsize = axi4index_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awburst = axi4index_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awlock = axi4index_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awcache = axi4index_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awprot = axi4index_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_awqos = axi4index_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_wvalid = axi4index_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_wdata = axi4index_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_wstrb = axi4index_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_wlast = axi4index_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_bready = axi4index_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arvalid = axi4index_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arid = axi4index_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_araddr = axi4index_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arlen = axi4index_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arsize = axi4index_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arburst = axi4index_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arlock = axi4index_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arcache = axi4index_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arprot = axi4index_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_arqos = axi4index_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_in_rready = axi4index_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_awready = axi4buf_1_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_wready = axi4buf_1_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_bvalid = axi4buf_1_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_bid = axi4buf_1_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_bresp = axi4buf_1_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_arready = axi4buf_1_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_rvalid = axi4buf_1_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_rid = axi4buf_1_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_rdata = axi4buf_1_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_rresp = axi4buf_1_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_rlast = axi4buf_1_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awvalid = axi4yank_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awid = axi4yank_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awaddr = axi4yank_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awlen = axi4yank_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awsize = axi4yank_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awburst = axi4yank_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awlock = axi4yank_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awcache = axi4yank_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awprot = axi4yank_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_awqos = axi4yank_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_wvalid = axi4yank_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_wdata = axi4yank_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_wstrb = axi4yank_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_wlast = axi4yank_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_bready = axi4yank_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arvalid = axi4yank_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arid = axi4yank_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_araddr = axi4yank_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arlen = axi4yank_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arsize = axi4yank_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arburst = axi4yank_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arlock = axi4yank_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arcache = axi4yank_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arprot = axi4yank_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_arqos = axi4yank_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4index_auto_in_rready = axi4yank_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_awready = axi4buf_2_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_wready = axi4buf_2_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_bvalid = axi4buf_2_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_bid = axi4buf_2_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_bresp = axi4buf_2_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_arready = axi4buf_2_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_rvalid = axi4buf_2_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_rid = axi4buf_2_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_rdata = axi4buf_2_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_rresp = axi4buf_2_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4index_auto_out_rlast = axi4buf_2_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4yank_clock = clock;
  assign axi4yank_reset = reset;
  assign axi4yank_auto_in_awvalid = axi4deint_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awid = axi4deint_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awaddr = axi4deint_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awlen = axi4deint_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awsize = axi4deint_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awburst = axi4deint_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awlock = axi4deint_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awcache = axi4deint_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awprot = axi4deint_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awqos = axi4deint_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awecho_tl_state_size = axi4deint_auto_out_awecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_awecho_tl_state_source = axi4deint_auto_out_awecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_wvalid = axi4deint_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_wdata = axi4deint_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_wstrb = axi4deint_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_wlast = axi4deint_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_bready = axi4deint_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arvalid = axi4deint_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arid = axi4deint_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_araddr = axi4deint_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arlen = axi4deint_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arsize = axi4deint_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arburst = axi4deint_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arlock = axi4deint_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arcache = axi4deint_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arprot = axi4deint_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arqos = axi4deint_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arecho_tl_state_size = axi4deint_auto_out_arecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_arecho_tl_state_source = axi4deint_auto_out_arecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_in_rready = axi4deint_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_awready = axi4index_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_wready = axi4index_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_bvalid = axi4index_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_bid = axi4index_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_bresp = axi4index_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_arready = axi4index_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_rvalid = axi4index_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_rid = axi4index_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_rdata = axi4index_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_rresp = axi4index_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4yank_auto_out_rlast = axi4index_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4deint_clock = clock;
  assign axi4deint_reset = reset;
  assign axi4deint_auto_in_awvalid = tl2axi4_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awid = tl2axi4_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awaddr = tl2axi4_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awlen = tl2axi4_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awsize = tl2axi4_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awburst = tl2axi4_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awlock = tl2axi4_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awcache = tl2axi4_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awprot = tl2axi4_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awqos = tl2axi4_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awecho_tl_state_size = tl2axi4_auto_out_awecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_awecho_tl_state_source = tl2axi4_auto_out_awecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_wvalid = tl2axi4_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_wdata = tl2axi4_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_wstrb = tl2axi4_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_wlast = tl2axi4_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_bready = tl2axi4_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arvalid = tl2axi4_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arid = tl2axi4_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_araddr = tl2axi4_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arlen = tl2axi4_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arsize = tl2axi4_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arburst = tl2axi4_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arlock = tl2axi4_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arcache = tl2axi4_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arprot = tl2axi4_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arqos = tl2axi4_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arecho_tl_state_size = tl2axi4_auto_out_arecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_arecho_tl_state_source = tl2axi4_auto_out_arecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_in_rready = tl2axi4_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_awready = axi4yank_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_wready = axi4yank_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_bvalid = axi4yank_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_bid = axi4yank_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_bresp = axi4yank_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_becho_tl_state_size = axi4yank_auto_in_becho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_becho_tl_state_source = axi4yank_auto_in_becho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_arready = axi4yank_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_rvalid = axi4yank_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_rid = axi4yank_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_rdata = axi4yank_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_rresp = axi4yank_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_recho_tl_state_size = axi4yank_auto_in_recho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_recho_tl_state_source = axi4yank_auto_in_recho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_auto_out_rlast = axi4yank_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign tl2axi4_clock = clock;
  assign tl2axi4_reset = reset;
  assign tl2axi4_auto_in_a_valid = shrinker_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_a_bits_opcode = shrinker_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_a_bits_size = shrinker_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_a_bits_source = shrinker_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_a_bits_address = shrinker_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_a_bits_mask = shrinker_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_a_bits_data = shrinker_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_in_d_ready = shrinker_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_awready = axi4deint_auto_in_awready; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_wready = axi4deint_auto_in_wready; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_bvalid = axi4deint_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_bid = axi4deint_auto_in_bid; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_bresp = axi4deint_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_becho_tl_state_size = axi4deint_auto_in_becho_tl_state_size; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_becho_tl_state_source = axi4deint_auto_in_becho_tl_state_source; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_arready = axi4deint_auto_in_arready; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_rvalid = axi4deint_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_rid = axi4deint_auto_in_rid; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_rdata = axi4deint_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_rresp = axi4deint_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_recho_tl_state_size = axi4deint_auto_in_recho_tl_state_size; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_recho_tl_state_source = axi4deint_auto_in_recho_tl_state_source; // @[LazyModule.scala 296:16]
  assign tl2axi4_auto_out_rlast = axi4deint_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_valid = widget_1_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_bits_opcode = widget_1_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_bits_size = widget_1_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_bits_source = widget_1_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_bits_address = widget_1_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_bits_mask = widget_1_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_a_bits_data = widget_1_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign shrinker_auto_in_d_ready = widget_1_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_a_ready = tl2axi4_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_d_valid = tl2axi4_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_d_bits_opcode = tl2axi4_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_d_bits_size = tl2axi4_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_d_bits_source = tl2axi4_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_d_bits_denied = tl2axi4_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign shrinker_auto_out_d_bits_data = tl2axi4_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_valid = buffers_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_bits_opcode = buffers_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_bits_size = buffers_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_bits_source = buffers_2_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_bits_address = buffers_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_bits_mask = buffers_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_a_bits_data = buffers_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign widget_1_auto_in_d_ready = buffers_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_a_ready = shrinker_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_d_valid = shrinker_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_d_bits_opcode = shrinker_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_d_bits_size = shrinker_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_d_bits_source = shrinker_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_d_bits_denied = shrinker_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign widget_1_auto_out_d_bits_data = shrinker_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_2_clock = clock;
  assign buffers_2_reset = reset;
  assign buffers_2_auto_in_a_valid = buffers_3_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_opcode = buffers_3_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_size = buffers_3_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_source = buffers_3_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_address = buffers_3_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_mask = buffers_3_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_data = buffers_3_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_d_ready = buffers_3_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_a_ready = widget_1_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_valid = widget_1_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_opcode = widget_1_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_param = 2'h0; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_size = widget_1_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_source = widget_1_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_denied = widget_1_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_data = widget_1_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_3_clock = clock;
  assign buffers_3_reset = reset;
  assign buffers_3_auto_in_a_valid = xbar_3_auto_out_a_valid; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_a_bits_opcode = xbar_3_auto_out_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_a_bits_size = xbar_3_auto_out_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_a_bits_source = xbar_3_auto_out_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_a_bits_address = xbar_3_auto_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_a_bits_mask = xbar_3_auto_out_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_a_bits_data = xbar_3_auto_out_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_in_d_ready = xbar_3_auto_out_d_ready; // @[LazyModule.scala 298:16]
  assign buffers_3_auto_out_a_ready = buffers_2_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_valid = buffers_2_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_opcode = buffers_2_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_param = buffers_2_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_size = buffers_2_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_source = buffers_2_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_denied = buffers_2_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_data = buffers_2_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awvalid = axi4buf_3_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awid = axi4buf_3_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awaddr = axi4buf_3_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awlen = axi4buf_3_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awsize = axi4buf_3_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awburst = axi4buf_3_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awlock = axi4buf_3_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awcache = axi4buf_3_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awprot = axi4buf_3_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_awqos = axi4buf_3_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_wvalid = axi4buf_3_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_wdata = axi4buf_3_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_wstrb = axi4buf_3_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_wlast = axi4buf_3_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_bready = axi4buf_3_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arvalid = axi4buf_3_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arid = axi4buf_3_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_araddr = axi4buf_3_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arlen = axi4buf_3_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arsize = axi4buf_3_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arburst = axi4buf_3_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arlock = axi4buf_3_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arcache = axi4buf_3_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arprot = axi4buf_3_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_arqos = axi4buf_3_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_in_rready = axi4buf_3_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4index_1_auto_out_awready = peripheral_0_awready; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_wready = peripheral_0_wready; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_bvalid = peripheral_0_bvalid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_bid = peripheral_0_bid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_arready = peripheral_0_arready; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_rvalid = peripheral_0_rvalid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_rid = peripheral_0_rid; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_rdata = peripheral_0_rdata; // @[Nodes.scala 1210:84 1694:56]
  assign axi4index_1_auto_out_rlast = peripheral_0_rlast; // @[Nodes.scala 1210:84 1694:56]
  assign axi4buf_3_clock = clock;
  assign axi4buf_3_reset = reset;
  assign axi4buf_3_auto_in_awvalid = axi4buf_4_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awid = axi4buf_4_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awaddr = axi4buf_4_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awlen = axi4buf_4_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awsize = axi4buf_4_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awburst = axi4buf_4_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awlock = axi4buf_4_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awcache = axi4buf_4_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awprot = axi4buf_4_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_awqos = axi4buf_4_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_wvalid = axi4buf_4_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_wdata = axi4buf_4_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_wstrb = axi4buf_4_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_wlast = axi4buf_4_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_bready = axi4buf_4_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arvalid = axi4buf_4_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arid = axi4buf_4_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_araddr = axi4buf_4_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arlen = axi4buf_4_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arsize = axi4buf_4_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arburst = axi4buf_4_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arlock = axi4buf_4_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arcache = axi4buf_4_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arprot = axi4buf_4_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_arqos = axi4buf_4_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_in_rready = axi4buf_4_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_awready = axi4index_1_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_wready = axi4index_1_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_bvalid = axi4index_1_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_bid = axi4index_1_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_arready = axi4index_1_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_rvalid = axi4index_1_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_rid = axi4index_1_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_rdata = axi4index_1_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_3_auto_out_rlast = axi4index_1_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4buf_4_clock = clock;
  assign axi4buf_4_reset = reset;
  assign axi4buf_4_auto_in_awvalid = axi4buf_5_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awid = axi4buf_5_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awaddr = axi4buf_5_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awlen = axi4buf_5_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awsize = axi4buf_5_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awburst = axi4buf_5_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awlock = axi4buf_5_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awcache = axi4buf_5_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awprot = axi4buf_5_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_awqos = axi4buf_5_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_wvalid = axi4buf_5_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_wdata = axi4buf_5_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_wstrb = axi4buf_5_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_wlast = axi4buf_5_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_bready = axi4buf_5_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arvalid = axi4buf_5_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arid = axi4buf_5_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_araddr = axi4buf_5_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arlen = axi4buf_5_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arsize = axi4buf_5_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arburst = axi4buf_5_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arlock = axi4buf_5_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arcache = axi4buf_5_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arprot = axi4buf_5_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_arqos = axi4buf_5_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_in_rready = axi4buf_5_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_awready = axi4buf_3_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_wready = axi4buf_3_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_bvalid = axi4buf_3_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_bid = axi4buf_3_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_arready = axi4buf_3_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_rvalid = axi4buf_3_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_rid = axi4buf_3_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_rdata = axi4buf_3_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_4_auto_out_rlast = axi4buf_3_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4buf_5_clock = clock;
  assign axi4buf_5_reset = reset;
  assign axi4buf_5_auto_in_awvalid = axi4buf_6_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awid = axi4buf_6_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awaddr = axi4buf_6_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awlen = axi4buf_6_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awsize = axi4buf_6_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awburst = axi4buf_6_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awlock = axi4buf_6_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awcache = axi4buf_6_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awprot = axi4buf_6_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_awqos = axi4buf_6_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_wvalid = axi4buf_6_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_wdata = axi4buf_6_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_wstrb = axi4buf_6_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_wlast = axi4buf_6_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_bready = axi4buf_6_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arvalid = axi4buf_6_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arid = axi4buf_6_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_araddr = axi4buf_6_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arlen = axi4buf_6_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arsize = axi4buf_6_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arburst = axi4buf_6_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arlock = axi4buf_6_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arcache = axi4buf_6_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arprot = axi4buf_6_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_arqos = axi4buf_6_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_in_rready = axi4buf_6_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_awready = axi4buf_4_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_wready = axi4buf_4_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_bvalid = axi4buf_4_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_bid = axi4buf_4_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_arready = axi4buf_4_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_rvalid = axi4buf_4_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_rid = axi4buf_4_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_rdata = axi4buf_4_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_5_auto_out_rlast = axi4buf_4_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4buf_6_clock = clock;
  assign axi4buf_6_reset = reset;
  assign axi4buf_6_auto_in_awvalid = axi4yank_1_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awid = axi4yank_1_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awaddr = axi4yank_1_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awlen = axi4yank_1_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awsize = axi4yank_1_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awburst = axi4yank_1_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awlock = axi4yank_1_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awcache = axi4yank_1_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awprot = axi4yank_1_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_awqos = axi4yank_1_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_wvalid = axi4yank_1_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_wdata = axi4yank_1_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_wstrb = axi4yank_1_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_wlast = axi4yank_1_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_bready = axi4yank_1_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arvalid = axi4yank_1_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arid = axi4yank_1_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_araddr = axi4yank_1_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arlen = axi4yank_1_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arsize = axi4yank_1_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arburst = axi4yank_1_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arlock = axi4yank_1_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arcache = axi4yank_1_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arprot = axi4yank_1_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_arqos = axi4yank_1_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_in_rready = axi4yank_1_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_awready = axi4buf_5_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_wready = axi4buf_5_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_bvalid = axi4buf_5_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_bid = axi4buf_5_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_arready = axi4buf_5_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_rvalid = axi4buf_5_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_rid = axi4buf_5_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_rdata = axi4buf_5_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_6_auto_out_rlast = axi4buf_5_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4yank_1_clock = clock;
  assign axi4yank_1_reset = reset;
  assign axi4yank_1_auto_in_awvalid = axi4deint_1_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awid = axi4deint_1_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awaddr = axi4deint_1_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awlen = axi4deint_1_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awsize = axi4deint_1_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awburst = axi4deint_1_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awlock = axi4deint_1_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awcache = axi4deint_1_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awprot = axi4deint_1_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awqos = axi4deint_1_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awecho_tl_state_size = axi4deint_1_auto_out_awecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_awecho_tl_state_source = axi4deint_1_auto_out_awecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_wvalid = axi4deint_1_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_wdata = axi4deint_1_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_wstrb = axi4deint_1_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_wlast = axi4deint_1_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_bready = axi4deint_1_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arvalid = axi4deint_1_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arid = axi4deint_1_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_araddr = axi4deint_1_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arlen = axi4deint_1_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arsize = axi4deint_1_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arburst = axi4deint_1_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arlock = axi4deint_1_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arcache = axi4deint_1_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arprot = axi4deint_1_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arqos = axi4deint_1_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arecho_tl_state_size = axi4deint_1_auto_out_arecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_arecho_tl_state_source = axi4deint_1_auto_out_arecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_in_rready = axi4deint_1_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_awready = axi4buf_6_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_wready = axi4buf_6_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_bvalid = axi4buf_6_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_bid = axi4buf_6_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_arready = axi4buf_6_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_rvalid = axi4buf_6_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_rid = axi4buf_6_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_rdata = axi4buf_6_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4yank_1_auto_out_rlast = axi4buf_6_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4deint_1_clock = clock;
  assign axi4deint_1_reset = reset;
  assign axi4deint_1_auto_in_awvalid = tl2axi4_1_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awid = tl2axi4_1_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awaddr = tl2axi4_1_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awlen = tl2axi4_1_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awsize = tl2axi4_1_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awburst = tl2axi4_1_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awlock = tl2axi4_1_auto_out_awlock; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awcache = tl2axi4_1_auto_out_awcache; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awprot = tl2axi4_1_auto_out_awprot; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awqos = tl2axi4_1_auto_out_awqos; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awecho_tl_state_size = tl2axi4_1_auto_out_awecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_awecho_tl_state_source = tl2axi4_1_auto_out_awecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_wvalid = tl2axi4_1_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_wdata = tl2axi4_1_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_wstrb = tl2axi4_1_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_wlast = tl2axi4_1_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_bready = tl2axi4_1_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arvalid = tl2axi4_1_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arid = tl2axi4_1_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_araddr = tl2axi4_1_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arlen = tl2axi4_1_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arsize = tl2axi4_1_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arburst = tl2axi4_1_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arlock = tl2axi4_1_auto_out_arlock; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arcache = tl2axi4_1_auto_out_arcache; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arprot = tl2axi4_1_auto_out_arprot; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arqos = tl2axi4_1_auto_out_arqos; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arecho_tl_state_size = tl2axi4_1_auto_out_arecho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_arecho_tl_state_source = tl2axi4_1_auto_out_arecho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_in_rready = tl2axi4_1_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_awready = axi4yank_1_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_wready = axi4yank_1_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_bvalid = axi4yank_1_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_bid = axi4yank_1_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_becho_tl_state_size = axi4yank_1_auto_in_becho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_becho_tl_state_source = axi4yank_1_auto_in_becho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_arready = axi4yank_1_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_rvalid = axi4yank_1_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_rid = axi4yank_1_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_rdata = axi4yank_1_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_recho_tl_state_size = axi4yank_1_auto_in_recho_tl_state_size; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_recho_tl_state_source = axi4yank_1_auto_in_recho_tl_state_source; // @[LazyModule.scala 296:16]
  assign axi4deint_1_auto_out_rlast = axi4yank_1_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_clock = clock;
  assign tl2axi4_1_reset = reset;
  assign tl2axi4_1_auto_in_a_valid = buffers_4_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_a_bits_opcode = buffers_4_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_a_bits_size = buffers_4_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_a_bits_source = buffers_4_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_a_bits_address = buffers_4_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_a_bits_mask = buffers_4_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_a_bits_data = buffers_4_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_in_d_ready = buffers_4_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_awready = axi4deint_1_auto_in_awready; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_wready = axi4deint_1_auto_in_wready; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_bvalid = axi4deint_1_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_bid = axi4deint_1_auto_in_bid; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_becho_tl_state_size = axi4deint_1_auto_in_becho_tl_state_size; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_becho_tl_state_source = axi4deint_1_auto_in_becho_tl_state_source; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_arready = axi4deint_1_auto_in_arready; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_rvalid = axi4deint_1_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_rid = axi4deint_1_auto_in_rid; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_rdata = axi4deint_1_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_recho_tl_state_size = axi4deint_1_auto_in_recho_tl_state_size; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_recho_tl_state_source = axi4deint_1_auto_in_recho_tl_state_source; // @[LazyModule.scala 296:16]
  assign tl2axi4_1_auto_out_rlast = axi4deint_1_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign buffers_4_clock = clock;
  assign buffers_4_reset = reset;
  assign buffers_4_auto_in_a_valid = buffers_5_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_opcode = buffers_5_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_size = buffers_5_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_source = buffers_5_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_address = buffers_5_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_mask = buffers_5_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_data = buffers_5_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_d_ready = buffers_5_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_a_ready = tl2axi4_1_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_valid = tl2axi4_1_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_opcode = tl2axi4_1_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_size = tl2axi4_1_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_source = tl2axi4_1_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_data = tl2axi4_1_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_5_clock = clock;
  assign buffers_5_reset = reset;
  assign buffers_5_auto_in_a_valid = buffers_6_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_a_bits_opcode = buffers_6_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_a_bits_size = buffers_6_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_a_bits_source = buffers_6_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_a_bits_address = buffers_6_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_a_bits_mask = buffers_6_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_a_bits_data = buffers_6_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_in_d_ready = buffers_6_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_a_ready = buffers_4_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_valid = buffers_4_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_opcode = buffers_4_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_size = buffers_4_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_source = buffers_4_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_data = buffers_4_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_6_clock = clock;
  assign buffers_6_reset = reset;
  assign buffers_6_auto_in_a_valid = xbar_auto_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_opcode = xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_size = xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_source = xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_address = xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_mask = xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_data = xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_d_ready = xbar_auto_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_out_a_ready = buffers_5_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_valid = buffers_5_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_opcode = buffers_5_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_size = buffers_5_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_source = buffers_5_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_data = buffers_5_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign errorDevice_clock = clock;
  assign errorDevice_reset = reset;
  assign errorDevice_auto_in_a_valid = xbar_1_auto_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign errorDevice_auto_in_a_bits_opcode = xbar_1_auto_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign errorDevice_auto_in_a_bits_size = xbar_1_auto_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign errorDevice_auto_in_a_bits_source = xbar_1_auto_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign errorDevice_auto_in_d_ready = xbar_1_auto_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign fixer_clock = clock;
  assign fixer_reset = reset;
  assign fixer_auto_in_a_valid = widget_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_a_bits_opcode = widget_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_a_bits_size = widget_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_a_bits_source = widget_2_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_a_bits_address = widget_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_a_bits_mask = widget_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_a_bits_data = widget_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign fixer_auto_in_d_ready = widget_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_a_ready = xbar_1_auto_in_0_a_ready; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_valid = xbar_1_auto_in_0_d_valid; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_bits_opcode = xbar_1_auto_in_0_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_bits_size = xbar_1_auto_in_0_d_bits_size; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_bits_source = xbar_1_auto_in_0_d_bits_source; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_bits_denied = xbar_1_auto_in_0_d_bits_denied; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_bits_data = xbar_1_auto_in_0_d_bits_data; // @[LazyModule.scala 296:16]
  assign fixer_auto_out_d_bits_corrupt = xbar_1_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_valid = axi42tl_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_bits_opcode = axi42tl_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_bits_size = axi42tl_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_bits_source = axi42tl_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_bits_address = axi42tl_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_bits_mask = axi42tl_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_a_bits_data = axi42tl_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign widget_2_auto_in_d_ready = axi42tl_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign widget_2_auto_out_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign axi42tl_clock = clock;
  assign axi42tl_reset = reset;
  assign axi42tl_auto_in_awvalid = axi4yank_2_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_awid = axi4yank_2_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_awaddr = axi4yank_2_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_awlen = axi4yank_2_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_awsize = axi4yank_2_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_wvalid = axi4yank_2_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_wdata = axi4yank_2_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_wstrb = axi4yank_2_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_wlast = axi4yank_2_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_bready = axi4yank_2_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_arvalid = axi4yank_2_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_arid = axi4yank_2_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_araddr = axi4yank_2_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_arlen = axi4yank_2_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_arsize = axi4yank_2_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_in_rready = axi4yank_2_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_a_ready = widget_2_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_valid = widget_2_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_bits_opcode = widget_2_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_bits_size = widget_2_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_bits_source = widget_2_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_bits_denied = widget_2_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_bits_data = widget_2_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign axi42tl_auto_out_d_bits_corrupt = widget_2_auto_in_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign axi4yank_2_clock = clock;
  assign axi4yank_2_reset = reset;
  assign axi4yank_2_auto_in_awvalid = axi4frag_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_awid = axi4frag_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_awaddr = axi4frag_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_awlen = axi4frag_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_awsize = axi4frag_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_awecho_extra_id = axi4frag_auto_out_awecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_awecho_real_last = axi4frag_auto_out_awecho_real_last; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_wvalid = axi4frag_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_wdata = axi4frag_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_wstrb = axi4frag_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_wlast = axi4frag_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_bready = axi4frag_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_arvalid = axi4frag_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_arid = axi4frag_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_araddr = axi4frag_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_arlen = axi4frag_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_arsize = axi4frag_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_arecho_extra_id = axi4frag_auto_out_arecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_arecho_real_last = axi4frag_auto_out_arecho_real_last; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_in_rready = axi4frag_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_awready = axi42tl_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_wready = axi42tl_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_bvalid = axi42tl_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_bid = axi42tl_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_bresp = axi42tl_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_arready = axi42tl_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_rvalid = axi42tl_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_rid = axi42tl_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_rdata = axi42tl_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_rresp = axi42tl_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4yank_2_auto_out_rlast = axi42tl_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4frag_clock = clock;
  assign axi4frag_reset = reset;
  assign axi4frag_auto_in_awvalid = axi4buf_7_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_awid = axi4buf_7_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_awaddr = axi4buf_7_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_awlen = axi4buf_7_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_awsize = axi4buf_7_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_awburst = axi4buf_7_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_awecho_extra_id = axi4buf_7_auto_out_awecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_wvalid = axi4buf_7_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_wdata = axi4buf_7_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_wstrb = axi4buf_7_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_wlast = axi4buf_7_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_bready = axi4buf_7_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_arvalid = axi4buf_7_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_arid = axi4buf_7_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_araddr = axi4buf_7_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_arlen = axi4buf_7_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_arsize = axi4buf_7_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_arburst = axi4buf_7_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_arecho_extra_id = axi4buf_7_auto_out_arecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_in_rready = axi4buf_7_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_awready = axi4yank_2_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_wready = axi4yank_2_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_bvalid = axi4yank_2_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_bid = axi4yank_2_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_bresp = axi4yank_2_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_becho_extra_id = axi4yank_2_auto_in_becho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_becho_real_last = axi4yank_2_auto_in_becho_real_last; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_arready = axi4yank_2_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_rvalid = axi4yank_2_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_rid = axi4yank_2_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_rdata = axi4yank_2_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_rresp = axi4yank_2_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_recho_extra_id = axi4yank_2_auto_in_recho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_recho_real_last = axi4yank_2_auto_in_recho_real_last; // @[LazyModule.scala 296:16]
  assign axi4frag_auto_out_rlast = axi4yank_2_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4buf_7_clock = clock;
  assign axi4buf_7_reset = reset;
  assign axi4buf_7_auto_in_awvalid = axi4buf_8_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_awid = axi4buf_8_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_awaddr = axi4buf_8_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_awlen = axi4buf_8_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_awsize = axi4buf_8_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_awburst = axi4buf_8_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_awecho_extra_id = axi4buf_8_auto_out_awecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_wvalid = axi4buf_8_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_wdata = axi4buf_8_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_wstrb = axi4buf_8_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_wlast = axi4buf_8_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_bready = axi4buf_8_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_arvalid = axi4buf_8_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_arid = axi4buf_8_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_araddr = axi4buf_8_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_arlen = axi4buf_8_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_arsize = axi4buf_8_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_arburst = axi4buf_8_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_arecho_extra_id = axi4buf_8_auto_out_arecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_in_rready = axi4buf_8_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_awready = axi4frag_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_wready = axi4frag_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_bvalid = axi4frag_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_bid = axi4frag_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_bresp = axi4frag_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_becho_extra_id = axi4frag_auto_in_becho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_arready = axi4frag_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_rvalid = axi4frag_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_rid = axi4frag_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_rdata = axi4frag_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_rresp = axi4frag_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_recho_extra_id = axi4frag_auto_in_recho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_7_auto_out_rlast = axi4frag_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4buf_8_clock = clock;
  assign axi4buf_8_reset = reset;
  assign axi4buf_8_auto_in_awvalid = axi4index_2_auto_out_awvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_awid = axi4index_2_auto_out_awid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_awaddr = axi4index_2_auto_out_awaddr; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_awlen = axi4index_2_auto_out_awlen; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_awsize = axi4index_2_auto_out_awsize; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_awburst = axi4index_2_auto_out_awburst; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_awecho_extra_id = axi4index_2_auto_out_awecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_wvalid = axi4index_2_auto_out_wvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_wdata = axi4index_2_auto_out_wdata; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_wstrb = axi4index_2_auto_out_wstrb; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_wlast = axi4index_2_auto_out_wlast; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_bready = axi4index_2_auto_out_bready; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_arvalid = axi4index_2_auto_out_arvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_arid = axi4index_2_auto_out_arid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_araddr = axi4index_2_auto_out_araddr; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_arlen = axi4index_2_auto_out_arlen; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_arsize = axi4index_2_auto_out_arsize; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_arburst = axi4index_2_auto_out_arburst; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_arecho_extra_id = axi4index_2_auto_out_arecho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_in_rready = axi4index_2_auto_out_rready; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_awready = axi4buf_7_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_wready = axi4buf_7_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_bvalid = axi4buf_7_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_bid = axi4buf_7_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_bresp = axi4buf_7_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_becho_extra_id = axi4buf_7_auto_in_becho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_arready = axi4buf_7_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_rvalid = axi4buf_7_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_rid = axi4buf_7_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_rdata = axi4buf_7_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_rresp = axi4buf_7_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_recho_extra_id = axi4buf_7_auto_in_recho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4buf_8_auto_out_rlast = axi4buf_7_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_in_awvalid = dma_0_awvalid; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_awid = dma_0_awid; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_awaddr = dma_0_awaddr; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_awlen = dma_0_awlen; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_awsize = dma_0_awsize; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_awburst = dma_0_awburst; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_wvalid = dma_0_wvalid; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_wdata = dma_0_wdata; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_wstrb = dma_0_wstrb; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_wlast = dma_0_wlast; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_bready = dma_0_bready; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_arvalid = dma_0_arvalid; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_arid = dma_0_arid; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_araddr = dma_0_araddr; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_arlen = dma_0_arlen; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_arsize = dma_0_arsize; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_arburst = dma_0_arburst; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_in_rready = dma_0_rready; // @[Nodes.scala 1207:84 1630:60]
  assign axi4index_2_auto_out_awready = axi4buf_8_auto_in_awready; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_wready = axi4buf_8_auto_in_wready; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_bvalid = axi4buf_8_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_bid = axi4buf_8_auto_in_bid; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_bresp = axi4buf_8_auto_in_bresp; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_becho_extra_id = axi4buf_8_auto_in_becho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_arready = axi4buf_8_auto_in_arready; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_rvalid = axi4buf_8_auto_in_rvalid; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_rid = axi4buf_8_auto_in_rid; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_rdata = axi4buf_8_auto_in_rdata; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_rresp = axi4buf_8_auto_in_rresp; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_recho_extra_id = axi4buf_8_auto_in_recho_extra_id; // @[LazyModule.scala 296:16]
  assign axi4index_2_auto_out_rlast = axi4buf_8_auto_in_rlast; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_clock = clock;
  assign L2_to_L3_peripheral_buffer_0_reset = reset;
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_valid = L2_to_L3_peripheral_buffer_1_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_bits_opcode = L2_to_L3_peripheral_buffer_1_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_bits_size = L2_to_L3_peripheral_buffer_1_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_bits_source = L2_to_L3_peripheral_buffer_1_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_bits_address = L2_to_L3_peripheral_buffer_1_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_bits_mask = L2_to_L3_peripheral_buffer_1_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_a_bits_data = L2_to_L3_peripheral_buffer_1_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_in_d_ready = L2_to_L3_peripheral_buffer_1_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_out_a_ready = xbar_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_out_d_valid = xbar_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_out_d_bits_opcode = xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_out_d_bits_size = xbar_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_out_d_bits_source = xbar_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_0_auto_out_d_bits_data = xbar_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_1_clock = clock;
  assign L2_to_L3_peripheral_buffer_1_reset = reset;
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_valid = auto_L2_to_L3_peripheral_buffer_1_in_a_valid; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_bits_opcode = auto_L2_to_L3_peripheral_buffer_1_in_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_bits_size = auto_L2_to_L3_peripheral_buffer_1_in_a_bits_size; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_bits_source = auto_L2_to_L3_peripheral_buffer_1_in_a_bits_source; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_bits_address = auto_L2_to_L3_peripheral_buffer_1_in_a_bits_address; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_bits_mask = auto_L2_to_L3_peripheral_buffer_1_in_a_bits_mask; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_a_bits_data = auto_L2_to_L3_peripheral_buffer_1_in_a_bits_data; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_in_d_ready = auto_L2_to_L3_peripheral_buffer_1_in_d_ready; // @[LazyModule.scala 309:16]
  assign L2_to_L3_peripheral_buffer_1_auto_out_a_ready = L2_to_L3_peripheral_buffer_0_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_1_auto_out_d_valid = L2_to_L3_peripheral_buffer_0_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_1_auto_out_d_bits_opcode = L2_to_L3_peripheral_buffer_0_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_1_auto_out_d_bits_size = L2_to_L3_peripheral_buffer_0_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_1_auto_out_d_bits_source = L2_to_L3_peripheral_buffer_0_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign L2_to_L3_peripheral_buffer_1_auto_out_d_bits_data = L2_to_L3_peripheral_buffer_0_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = auto_buffer_in_a_valid; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_opcode = auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_param = auto_buffer_in_a_bits_param; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_size = auto_buffer_in_a_bits_size; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_source = auto_buffer_in_a_bits_source; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_address = auto_buffer_in_a_bits_address; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_mask = auto_buffer_in_a_bits_mask; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_data = auto_buffer_in_a_bits_data; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_bready = auto_buffer_in_bready; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_valid = auto_buffer_in_c_valid; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_opcode = auto_buffer_in_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_param = auto_buffer_in_c_bits_param; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_size = auto_buffer_in_c_bits_size; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_source = auto_buffer_in_c_bits_source; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_address = auto_buffer_in_c_bits_address; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_echo_blockisdirty = auto_buffer_in_c_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_c_bits_data = auto_buffer_in_c_bits_data; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_d_ready = auto_buffer_in_d_ready; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_e_valid = auto_buffer_in_e_valid; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_e_bits_sink = auto_buffer_in_e_bits_sink; // @[LazyModule.scala 309:16]
  assign buffer_auto_out_a_ready = xbar_2_auto_in_0_a_ready; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_bvalid = xbar_2_auto_in_0_bvalid; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_bparam = xbar_2_auto_in_0_bparam; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_baddress = xbar_2_auto_in_0_baddress; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_bdata = xbar_2_auto_in_0_bdata; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_c_ready = xbar_2_auto_in_0_c_ready; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_valid = xbar_2_auto_in_0_d_valid; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_opcode = xbar_2_auto_in_0_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_param = xbar_2_auto_in_0_d_bits_param; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_size = xbar_2_auto_in_0_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_source = xbar_2_auto_in_0_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_sink = xbar_2_auto_in_0_d_bits_sink; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_denied = xbar_2_auto_in_0_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_echo_blockisdirty = xbar_2_auto_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_data = xbar_2_auto_in_0_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffer_auto_out_d_bits_corrupt = xbar_2_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign buffers_7_clock = clock;
  assign buffers_7_reset = reset;
  assign buffers_7_auto_in_a_valid = buffers_8_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_opcode = buffers_8_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_param = buffers_8_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_size = buffers_8_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_source = buffers_8_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_address = buffers_8_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_mask = buffers_8_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_a_bits_data = buffers_8_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_in_d_ready = buffers_8_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_a_ready = xbar_2_auto_in_1_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_valid = xbar_2_auto_in_1_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_bits_opcode = xbar_2_auto_in_1_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_bits_size = xbar_2_auto_in_1_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_bits_source = xbar_2_auto_in_1_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_bits_denied = xbar_2_auto_in_1_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_bits_data = xbar_2_auto_in_1_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_7_auto_out_d_bits_corrupt = xbar_2_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign buffers_8_clock = clock;
  assign buffers_8_reset = reset;
  assign buffers_8_auto_in_a_valid = xbar_1_auto_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_opcode = xbar_1_auto_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_param = xbar_1_auto_out_1_a_bits_param; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_size = xbar_1_auto_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_source = xbar_1_auto_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_address = xbar_1_auto_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_mask = xbar_1_auto_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_a_bits_data = xbar_1_auto_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_in_d_ready = xbar_1_auto_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign buffers_8_auto_out_a_ready = buffers_7_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_valid = buffers_7_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_bits_opcode = buffers_7_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_bits_size = buffers_7_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_bits_source = buffers_7_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_bits_denied = buffers_7_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_bits_data = buffers_7_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_8_auto_out_d_bits_corrupt = buffers_7_auto_in_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_auto_in_a_valid = xbar_auto_out_2_a_valid; // @[LazyModule.scala 298:16]
  assign clint_auto_in_a_bits_opcode = xbar_auto_out_2_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign clint_auto_in_a_bits_size = xbar_auto_out_2_a_bits_size; // @[LazyModule.scala 298:16]
  assign clint_auto_in_a_bits_source = xbar_auto_out_2_a_bits_source; // @[LazyModule.scala 298:16]
  assign clint_auto_in_a_bits_address = xbar_auto_out_2_a_bits_address; // @[LazyModule.scala 298:16]
  assign clint_auto_in_a_bits_mask = xbar_auto_out_2_a_bits_mask; // @[LazyModule.scala 298:16]
  assign clint_auto_in_a_bits_data = xbar_auto_out_2_a_bits_data; // @[LazyModule.scala 298:16]
  assign clint_auto_in_d_ready = xbar_auto_out_2_d_ready; // @[LazyModule.scala 298:16]
  assign clint_io_rtcTick = cnt == 7'h0; // @[SoC.scala 321:20]
  assign plic_clock = clock;
  assign plic_reset = reset;
  assign plic_auto_int_in_1_0 = auto_plic_int_in_0; // @[LazyModule.scala 309:16]
  assign plic_auto_int_in_0_0 = plicSource_auto_source_out_0; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_1 = plicSource_auto_source_out_1; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_2 = plicSource_auto_source_out_2; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_3 = plicSource_auto_source_out_3; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_4 = plicSource_auto_source_out_4; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_5 = plicSource_auto_source_out_5; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_6 = plicSource_auto_source_out_6; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_7 = plicSource_auto_source_out_7; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_8 = plicSource_auto_source_out_8; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_9 = plicSource_auto_source_out_9; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_10 = plicSource_auto_source_out_10; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_11 = plicSource_auto_source_out_11; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_12 = plicSource_auto_source_out_12; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_13 = plicSource_auto_source_out_13; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_14 = plicSource_auto_source_out_14; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_15 = plicSource_auto_source_out_15; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_16 = plicSource_auto_source_out_16; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_17 = plicSource_auto_source_out_17; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_18 = plicSource_auto_source_out_18; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_19 = plicSource_auto_source_out_19; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_20 = plicSource_auto_source_out_20; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_21 = plicSource_auto_source_out_21; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_22 = plicSource_auto_source_out_22; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_23 = plicSource_auto_source_out_23; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_24 = plicSource_auto_source_out_24; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_25 = plicSource_auto_source_out_25; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_26 = plicSource_auto_source_out_26; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_27 = plicSource_auto_source_out_27; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_28 = plicSource_auto_source_out_28; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_29 = plicSource_auto_source_out_29; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_30 = plicSource_auto_source_out_30; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_31 = plicSource_auto_source_out_31; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_32 = plicSource_auto_source_out_32; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_33 = plicSource_auto_source_out_33; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_34 = plicSource_auto_source_out_34; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_35 = plicSource_auto_source_out_35; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_36 = plicSource_auto_source_out_36; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_37 = plicSource_auto_source_out_37; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_38 = plicSource_auto_source_out_38; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_39 = plicSource_auto_source_out_39; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_40 = plicSource_auto_source_out_40; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_41 = plicSource_auto_source_out_41; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_42 = plicSource_auto_source_out_42; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_43 = plicSource_auto_source_out_43; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_44 = plicSource_auto_source_out_44; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_45 = plicSource_auto_source_out_45; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_46 = plicSource_auto_source_out_46; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_47 = plicSource_auto_source_out_47; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_48 = plicSource_auto_source_out_48; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_49 = plicSource_auto_source_out_49; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_50 = plicSource_auto_source_out_50; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_51 = plicSource_auto_source_out_51; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_52 = plicSource_auto_source_out_52; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_53 = plicSource_auto_source_out_53; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_54 = plicSource_auto_source_out_54; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_55 = plicSource_auto_source_out_55; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_56 = plicSource_auto_source_out_56; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_57 = plicSource_auto_source_out_57; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_58 = plicSource_auto_source_out_58; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_59 = plicSource_auto_source_out_59; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_60 = plicSource_auto_source_out_60; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_61 = plicSource_auto_source_out_61; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_62 = plicSource_auto_source_out_62; // @[LazyModule.scala 296:16]
  assign plic_auto_int_in_0_63 = plicSource_auto_source_out_63; // @[LazyModule.scala 296:16]
  assign plic_auto_in_a_valid = xbar_auto_out_3_a_valid; // @[LazyModule.scala 298:16]
  assign plic_auto_in_a_bits_opcode = xbar_auto_out_3_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign plic_auto_in_a_bits_size = xbar_auto_out_3_a_bits_size; // @[LazyModule.scala 298:16]
  assign plic_auto_in_a_bits_source = xbar_auto_out_3_a_bits_source; // @[LazyModule.scala 298:16]
  assign plic_auto_in_a_bits_address = xbar_auto_out_3_a_bits_address; // @[LazyModule.scala 298:16]
  assign plic_auto_in_a_bits_mask = xbar_auto_out_3_a_bits_mask; // @[LazyModule.scala 298:16]
  assign plic_auto_in_a_bits_data = xbar_auto_out_3_a_bits_data; // @[LazyModule.scala 298:16]
  assign plic_auto_in_d_ready = xbar_auto_out_3_d_ready; // @[LazyModule.scala 298:16]
  assign plicSource_in_0 = ext_intr_sync[2]; // @[SoC.scala 309:31]
  assign plicSource_in_1 = ext_intr_sync_1[2]; // @[SoC.scala 309:31]
  assign plicSource_in_2 = ext_intr_sync_2[2]; // @[SoC.scala 309:31]
  assign plicSource_in_3 = ext_intr_sync_3[2]; // @[SoC.scala 309:31]
  assign plicSource_in_4 = ext_intr_sync_4[2]; // @[SoC.scala 309:31]
  assign plicSource_in_5 = ext_intr_sync_5[2]; // @[SoC.scala 309:31]
  assign plicSource_in_6 = ext_intr_sync_6[2]; // @[SoC.scala 309:31]
  assign plicSource_in_7 = ext_intr_sync_7[2]; // @[SoC.scala 309:31]
  assign plicSource_in_8 = ext_intr_sync_8[2]; // @[SoC.scala 309:31]
  assign plicSource_in_9 = ext_intr_sync_9[2]; // @[SoC.scala 309:31]
  assign plicSource_in_10 = ext_intr_sync_10[2]; // @[SoC.scala 309:31]
  assign plicSource_in_11 = ext_intr_sync_11[2]; // @[SoC.scala 309:31]
  assign plicSource_in_12 = ext_intr_sync_12[2]; // @[SoC.scala 309:31]
  assign plicSource_in_13 = ext_intr_sync_13[2]; // @[SoC.scala 309:31]
  assign plicSource_in_14 = ext_intr_sync_14[2]; // @[SoC.scala 309:31]
  assign plicSource_in_15 = ext_intr_sync_15[2]; // @[SoC.scala 309:31]
  assign plicSource_in_16 = ext_intr_sync_16[2]; // @[SoC.scala 309:31]
  assign plicSource_in_17 = ext_intr_sync_17[2]; // @[SoC.scala 309:31]
  assign plicSource_in_18 = ext_intr_sync_18[2]; // @[SoC.scala 309:31]
  assign plicSource_in_19 = ext_intr_sync_19[2]; // @[SoC.scala 309:31]
  assign plicSource_in_20 = ext_intr_sync_20[2]; // @[SoC.scala 309:31]
  assign plicSource_in_21 = ext_intr_sync_21[2]; // @[SoC.scala 309:31]
  assign plicSource_in_22 = ext_intr_sync_22[2]; // @[SoC.scala 309:31]
  assign plicSource_in_23 = ext_intr_sync_23[2]; // @[SoC.scala 309:31]
  assign plicSource_in_24 = ext_intr_sync_24[2]; // @[SoC.scala 309:31]
  assign plicSource_in_25 = ext_intr_sync_25[2]; // @[SoC.scala 309:31]
  assign plicSource_in_26 = ext_intr_sync_26[2]; // @[SoC.scala 309:31]
  assign plicSource_in_27 = ext_intr_sync_27[2]; // @[SoC.scala 309:31]
  assign plicSource_in_28 = ext_intr_sync_28[2]; // @[SoC.scala 309:31]
  assign plicSource_in_29 = ext_intr_sync_29[2]; // @[SoC.scala 309:31]
  assign plicSource_in_30 = ext_intr_sync_30[2]; // @[SoC.scala 309:31]
  assign plicSource_in_31 = ext_intr_sync_31[2]; // @[SoC.scala 309:31]
  assign plicSource_in_32 = ext_intr_sync_32[2]; // @[SoC.scala 309:31]
  assign plicSource_in_33 = ext_intr_sync_33[2]; // @[SoC.scala 309:31]
  assign plicSource_in_34 = ext_intr_sync_34[2]; // @[SoC.scala 309:31]
  assign plicSource_in_35 = ext_intr_sync_35[2]; // @[SoC.scala 309:31]
  assign plicSource_in_36 = ext_intr_sync_36[2]; // @[SoC.scala 309:31]
  assign plicSource_in_37 = ext_intr_sync_37[2]; // @[SoC.scala 309:31]
  assign plicSource_in_38 = ext_intr_sync_38[2]; // @[SoC.scala 309:31]
  assign plicSource_in_39 = ext_intr_sync_39[2]; // @[SoC.scala 309:31]
  assign plicSource_in_40 = ext_intr_sync_40[2]; // @[SoC.scala 309:31]
  assign plicSource_in_41 = ext_intr_sync_41[2]; // @[SoC.scala 309:31]
  assign plicSource_in_42 = ext_intr_sync_42[2]; // @[SoC.scala 309:31]
  assign plicSource_in_43 = ext_intr_sync_43[2]; // @[SoC.scala 309:31]
  assign plicSource_in_44 = ext_intr_sync_44[2]; // @[SoC.scala 309:31]
  assign plicSource_in_45 = ext_intr_sync_45[2]; // @[SoC.scala 309:31]
  assign plicSource_in_46 = ext_intr_sync_46[2]; // @[SoC.scala 309:31]
  assign plicSource_in_47 = ext_intr_sync_47[2]; // @[SoC.scala 309:31]
  assign plicSource_in_48 = ext_intr_sync_48[2]; // @[SoC.scala 309:31]
  assign plicSource_in_49 = ext_intr_sync_49[2]; // @[SoC.scala 309:31]
  assign plicSource_in_50 = ext_intr_sync_50[2]; // @[SoC.scala 309:31]
  assign plicSource_in_51 = ext_intr_sync_51[2]; // @[SoC.scala 309:31]
  assign plicSource_in_52 = ext_intr_sync_52[2]; // @[SoC.scala 309:31]
  assign plicSource_in_53 = ext_intr_sync_53[2]; // @[SoC.scala 309:31]
  assign plicSource_in_54 = ext_intr_sync_54[2]; // @[SoC.scala 309:31]
  assign plicSource_in_55 = ext_intr_sync_55[2]; // @[SoC.scala 309:31]
  assign plicSource_in_56 = ext_intr_sync_56[2]; // @[SoC.scala 309:31]
  assign plicSource_in_57 = ext_intr_sync_57[2]; // @[SoC.scala 309:31]
  assign plicSource_in_58 = ext_intr_sync_58[2]; // @[SoC.scala 309:31]
  assign plicSource_in_59 = ext_intr_sync_59[2]; // @[SoC.scala 309:31]
  assign plicSource_in_60 = ext_intr_sync_60[2]; // @[SoC.scala 309:31]
  assign plicSource_in_61 = ext_intr_sync_61[2]; // @[SoC.scala 309:31]
  assign plicSource_in_62 = ext_intr_sync_62[2]; // @[SoC.scala 309:31]
  assign plicSource_in_63 = ext_intr_sync_63[2]; // @[SoC.scala 309:31]
  assign debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_ready = buffer_1_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_valid = buffer_1_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_denied = buffer_1_auto_in_d_bits_denied; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_data = buffer_1_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt = buffer_1_auto_in_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_valid = xbar_auto_out_5_a_valid; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_opcode = xbar_auto_out_5_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_size = xbar_auto_out_5_a_bits_size; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_source = xbar_auto_out_5_a_bits_source; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_address = xbar_auto_out_5_a_bits_address; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_mask = xbar_auto_out_5_a_bits_mask; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_a_bits_data = xbar_auto_out_5_a_bits_data; // @[LazyModule.scala 298:16]
  assign debugModule_auto_debug_dmInner_dmInner_tl_in_d_ready = xbar_auto_out_5_d_ready; // @[LazyModule.scala 298:16]
  assign debugModule_io_resetCtrl_hartIsInReset_0 = debug_module_io_resetCtrl_hartIsInReset_0; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_clock = debug_module_io_debugIO_clock; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_reset = debug_module_io_debugIO_reset; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_jtag_TCK = debug_module_io_debugIO_systemjtag_jtag_TCK; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_jtag_TMS = debug_module_io_debugIO_systemjtag_jtag_TMS; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_jtag_TDI = debug_module_io_debugIO_systemjtag_jtag_TDI; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_reset = debug_module_io_debugIO_systemjtag_reset; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_mfr_id = debug_module_io_debugIO_systemjtag_mfr_id; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_part_number = debug_module_io_debugIO_systemjtag_part_number; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_systemjtag_version = debug_module_io_debugIO_systemjtag_version; // @[SoC.scala 302:27]
  assign debugModule_io_debugIO_dmactiveAck = debug_module_io_debugIO_dmactiveAck; // @[SoC.scala 302:27]
  assign debugModule_io_clock = debug_module_io_clock; // @[SoC.scala 302:27]
  assign debugModule_io_reset = debug_module_io_reset; // @[SoC.scala 302:27]
  assign buffer_1_clock = clock;
  assign buffer_1_reset = reset;
  assign buffer_1_auto_in_a_valid = debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_valid; // @[LazyModule.scala 298:16]
  assign buffer_1_auto_in_a_bits_opcode = debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffer_1_auto_in_a_bits_address = debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffer_1_auto_in_a_bits_mask = debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffer_1_auto_in_a_bits_data = debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffer_1_auto_in_d_ready = debugModule_auto_debug_dmInner_dmInner_sb2tlOpt_out_d_ready; // @[LazyModule.scala 298:16]
  assign buffer_1_auto_out_a_ready = xbar_1_auto_in_1_a_ready; // @[LazyModule.scala 296:16]
  assign buffer_1_auto_out_d_valid = xbar_1_auto_in_1_d_valid; // @[LazyModule.scala 296:16]
  assign buffer_1_auto_out_d_bits_denied = xbar_1_auto_in_1_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffer_1_auto_out_d_bits_data = xbar_1_auto_in_1_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffer_1_auto_out_d_bits_corrupt = xbar_1_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign pma_clock = clock;
  assign pma_reset = reset;
  assign pma_auto_in_a_valid = buffers_9_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign pma_auto_in_a_bits_opcode = buffers_9_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign pma_auto_in_a_bits_size = buffers_9_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign pma_auto_in_a_bits_source = buffers_9_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign pma_auto_in_a_bits_address = buffers_9_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign pma_auto_in_a_bits_mask = buffers_9_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign pma_auto_in_a_bits_data = buffers_9_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign pma_auto_in_d_ready = buffers_9_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign pma_io_req_0_bits_addr = cacheable_check_req_0_bits_addr; // @[SoC.scala 312:19]
  assign pma_io_req_1_bits_addr = cacheable_check_req_1_bits_addr; // @[SoC.scala 312:19]
  assign buffers_9_clock = clock;
  assign buffers_9_reset = reset;
  assign buffers_9_auto_in_a_valid = buffers_10_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_a_bits_opcode = buffers_10_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_a_bits_size = buffers_10_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_a_bits_source = buffers_10_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_a_bits_address = buffers_10_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_a_bits_mask = buffers_10_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_a_bits_data = buffers_10_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_in_d_ready = buffers_10_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_out_a_ready = pma_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_out_d_valid = pma_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_out_d_bits_opcode = pma_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_out_d_bits_size = pma_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_out_d_bits_source = pma_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_9_auto_out_d_bits_data = pma_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_10_clock = clock;
  assign buffers_10_reset = reset;
  assign buffers_10_auto_in_a_valid = buffers_11_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_a_bits_opcode = buffers_11_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_a_bits_size = buffers_11_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_a_bits_source = buffers_11_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_a_bits_address = buffers_11_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_a_bits_mask = buffers_11_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_a_bits_data = buffers_11_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_in_d_ready = buffers_11_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_out_a_ready = buffers_9_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_out_d_valid = buffers_9_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_out_d_bits_opcode = buffers_9_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_out_d_bits_size = buffers_9_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_out_d_bits_source = buffers_9_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_10_auto_out_d_bits_data = buffers_9_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_11_clock = clock;
  assign buffers_11_reset = reset;
  assign buffers_11_auto_in_a_valid = buffers_12_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_a_bits_opcode = buffers_12_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_a_bits_size = buffers_12_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_a_bits_source = buffers_12_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_a_bits_address = buffers_12_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_a_bits_mask = buffers_12_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_a_bits_data = buffers_12_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_in_d_ready = buffers_12_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_out_a_ready = buffers_10_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_out_d_valid = buffers_10_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_out_d_bits_opcode = buffers_10_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_out_d_bits_size = buffers_10_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_out_d_bits_source = buffers_10_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_11_auto_out_d_bits_data = buffers_10_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_12_clock = clock;
  assign buffers_12_reset = reset;
  assign buffers_12_auto_in_a_valid = xbar_auto_out_6_a_valid; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_a_bits_opcode = xbar_auto_out_6_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_a_bits_size = xbar_auto_out_6_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_a_bits_source = xbar_auto_out_6_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_a_bits_address = xbar_auto_out_6_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_a_bits_mask = xbar_auto_out_6_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_a_bits_data = xbar_auto_out_6_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_in_d_ready = xbar_auto_out_6_d_ready; // @[LazyModule.scala 298:16]
  assign buffers_12_auto_out_a_ready = buffers_11_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_12_auto_out_d_valid = buffers_11_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_12_auto_out_d_bits_opcode = buffers_11_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_12_auto_out_d_bits_size = buffers_11_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_12_auto_out_d_bits_source = buffers_11_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_12_auto_out_d_bits_data = buffers_11_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign out_back_clock = clock;
  assign out_back_reset = reset;
  assign out_back_io_enq_valid = xbar_auto_out_4_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign out_back_io_enq_bits_read = bundleIn_0_2_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  assign out_back_io_enq_bits_index = bundleIn_0_2_a_bits_address[11:3]; // @[RegisterRouter.scala 70:18 72:19]
  assign out_back_io_enq_bits_data = xbar_auto_out_4_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign out_back_io_enq_bits_mask = xbar_auto_out_4_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_source = xbar_auto_out_4_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_size = xbar_auto_out_4_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign out_back_io_deq_ready = xbar_auto_out_4_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync <= 3'h0;
    end else begin
      ext_intr_sync <= {ext_intr_sync[1:0],ext_intrs[0]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_1 <= 3'h0;
    end else begin
      ext_intr_sync_1 <= {ext_intr_sync_1[1:0],ext_intrs[1]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_2 <= 3'h0;
    end else begin
      ext_intr_sync_2 <= {ext_intr_sync_2[1:0],ext_intrs[2]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_3 <= 3'h0;
    end else begin
      ext_intr_sync_3 <= {ext_intr_sync_3[1:0],ext_intrs[3]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_4 <= 3'h0;
    end else begin
      ext_intr_sync_4 <= {ext_intr_sync_4[1:0],ext_intrs[4]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_5 <= 3'h0;
    end else begin
      ext_intr_sync_5 <= {ext_intr_sync_5[1:0],ext_intrs[5]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_6 <= 3'h0;
    end else begin
      ext_intr_sync_6 <= {ext_intr_sync_6[1:0],ext_intrs[6]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_7 <= 3'h0;
    end else begin
      ext_intr_sync_7 <= {ext_intr_sync_7[1:0],ext_intrs[7]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_8 <= 3'h0;
    end else begin
      ext_intr_sync_8 <= {ext_intr_sync_8[1:0],ext_intrs[8]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_9 <= 3'h0;
    end else begin
      ext_intr_sync_9 <= {ext_intr_sync_9[1:0],ext_intrs[9]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_10 <= 3'h0;
    end else begin
      ext_intr_sync_10 <= {ext_intr_sync_10[1:0],ext_intrs[10]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_11 <= 3'h0;
    end else begin
      ext_intr_sync_11 <= {ext_intr_sync_11[1:0],ext_intrs[11]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_12 <= 3'h0;
    end else begin
      ext_intr_sync_12 <= {ext_intr_sync_12[1:0],ext_intrs[12]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_13 <= 3'h0;
    end else begin
      ext_intr_sync_13 <= {ext_intr_sync_13[1:0],ext_intrs[13]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_14 <= 3'h0;
    end else begin
      ext_intr_sync_14 <= {ext_intr_sync_14[1:0],ext_intrs[14]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_15 <= 3'h0;
    end else begin
      ext_intr_sync_15 <= {ext_intr_sync_15[1:0],ext_intrs[15]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_16 <= 3'h0;
    end else begin
      ext_intr_sync_16 <= {ext_intr_sync_16[1:0],ext_intrs[16]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_17 <= 3'h0;
    end else begin
      ext_intr_sync_17 <= {ext_intr_sync_17[1:0],ext_intrs[17]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_18 <= 3'h0;
    end else begin
      ext_intr_sync_18 <= {ext_intr_sync_18[1:0],ext_intrs[18]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_19 <= 3'h0;
    end else begin
      ext_intr_sync_19 <= {ext_intr_sync_19[1:0],ext_intrs[19]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_20 <= 3'h0;
    end else begin
      ext_intr_sync_20 <= {ext_intr_sync_20[1:0],ext_intrs[20]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_21 <= 3'h0;
    end else begin
      ext_intr_sync_21 <= {ext_intr_sync_21[1:0],ext_intrs[21]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_22 <= 3'h0;
    end else begin
      ext_intr_sync_22 <= {ext_intr_sync_22[1:0],ext_intrs[22]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_23 <= 3'h0;
    end else begin
      ext_intr_sync_23 <= {ext_intr_sync_23[1:0],ext_intrs[23]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_24 <= 3'h0;
    end else begin
      ext_intr_sync_24 <= {ext_intr_sync_24[1:0],ext_intrs[24]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_25 <= 3'h0;
    end else begin
      ext_intr_sync_25 <= {ext_intr_sync_25[1:0],ext_intrs[25]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_26 <= 3'h0;
    end else begin
      ext_intr_sync_26 <= {ext_intr_sync_26[1:0],ext_intrs[26]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_27 <= 3'h0;
    end else begin
      ext_intr_sync_27 <= {ext_intr_sync_27[1:0],ext_intrs[27]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_28 <= 3'h0;
    end else begin
      ext_intr_sync_28 <= {ext_intr_sync_28[1:0],ext_intrs[28]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_29 <= 3'h0;
    end else begin
      ext_intr_sync_29 <= {ext_intr_sync_29[1:0],ext_intrs[29]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_30 <= 3'h0;
    end else begin
      ext_intr_sync_30 <= {ext_intr_sync_30[1:0],ext_intrs[30]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_31 <= 3'h0;
    end else begin
      ext_intr_sync_31 <= {ext_intr_sync_31[1:0],ext_intrs[31]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_32 <= 3'h0;
    end else begin
      ext_intr_sync_32 <= {ext_intr_sync_32[1:0],ext_intrs[32]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_33 <= 3'h0;
    end else begin
      ext_intr_sync_33 <= {ext_intr_sync_33[1:0],ext_intrs[33]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_34 <= 3'h0;
    end else begin
      ext_intr_sync_34 <= {ext_intr_sync_34[1:0],ext_intrs[34]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_35 <= 3'h0;
    end else begin
      ext_intr_sync_35 <= {ext_intr_sync_35[1:0],ext_intrs[35]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_36 <= 3'h0;
    end else begin
      ext_intr_sync_36 <= {ext_intr_sync_36[1:0],ext_intrs[36]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_37 <= 3'h0;
    end else begin
      ext_intr_sync_37 <= {ext_intr_sync_37[1:0],ext_intrs[37]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_38 <= 3'h0;
    end else begin
      ext_intr_sync_38 <= {ext_intr_sync_38[1:0],ext_intrs[38]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_39 <= 3'h0;
    end else begin
      ext_intr_sync_39 <= {ext_intr_sync_39[1:0],ext_intrs[39]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_40 <= 3'h0;
    end else begin
      ext_intr_sync_40 <= {ext_intr_sync_40[1:0],ext_intrs[40]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_41 <= 3'h0;
    end else begin
      ext_intr_sync_41 <= {ext_intr_sync_41[1:0],ext_intrs[41]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_42 <= 3'h0;
    end else begin
      ext_intr_sync_42 <= {ext_intr_sync_42[1:0],ext_intrs[42]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_43 <= 3'h0;
    end else begin
      ext_intr_sync_43 <= {ext_intr_sync_43[1:0],ext_intrs[43]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_44 <= 3'h0;
    end else begin
      ext_intr_sync_44 <= {ext_intr_sync_44[1:0],ext_intrs[44]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_45 <= 3'h0;
    end else begin
      ext_intr_sync_45 <= {ext_intr_sync_45[1:0],ext_intrs[45]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_46 <= 3'h0;
    end else begin
      ext_intr_sync_46 <= {ext_intr_sync_46[1:0],ext_intrs[46]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_47 <= 3'h0;
    end else begin
      ext_intr_sync_47 <= {ext_intr_sync_47[1:0],ext_intrs[47]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_48 <= 3'h0;
    end else begin
      ext_intr_sync_48 <= {ext_intr_sync_48[1:0],ext_intrs[48]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_49 <= 3'h0;
    end else begin
      ext_intr_sync_49 <= {ext_intr_sync_49[1:0],ext_intrs[49]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_50 <= 3'h0;
    end else begin
      ext_intr_sync_50 <= {ext_intr_sync_50[1:0],ext_intrs[50]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_51 <= 3'h0;
    end else begin
      ext_intr_sync_51 <= {ext_intr_sync_51[1:0],ext_intrs[51]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_52 <= 3'h0;
    end else begin
      ext_intr_sync_52 <= {ext_intr_sync_52[1:0],ext_intrs[52]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_53 <= 3'h0;
    end else begin
      ext_intr_sync_53 <= {ext_intr_sync_53[1:0],ext_intrs[53]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_54 <= 3'h0;
    end else begin
      ext_intr_sync_54 <= {ext_intr_sync_54[1:0],ext_intrs[54]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_55 <= 3'h0;
    end else begin
      ext_intr_sync_55 <= {ext_intr_sync_55[1:0],ext_intrs[55]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_56 <= 3'h0;
    end else begin
      ext_intr_sync_56 <= {ext_intr_sync_56[1:0],ext_intrs[56]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_57 <= 3'h0;
    end else begin
      ext_intr_sync_57 <= {ext_intr_sync_57[1:0],ext_intrs[57]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_58 <= 3'h0;
    end else begin
      ext_intr_sync_58 <= {ext_intr_sync_58[1:0],ext_intrs[58]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_59 <= 3'h0;
    end else begin
      ext_intr_sync_59 <= {ext_intr_sync_59[1:0],ext_intrs[59]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_60 <= 3'h0;
    end else begin
      ext_intr_sync_60 <= {ext_intr_sync_60[1:0],ext_intrs[60]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_61 <= 3'h0;
    end else begin
      ext_intr_sync_61 <= {ext_intr_sync_61[1:0],ext_intrs[61]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_62 <= 3'h0;
    end else begin
      ext_intr_sync_62 <= {ext_intr_sync_62[1:0],ext_intrs[62]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Cat.scala 31:58]
      ext_intr_sync_63 <= 3'h0;
    end else begin
      ext_intr_sync_63 <= {ext_intr_sync_63[1:0],ext_intrs[63]};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SoC.scala 322:15]
      cnt <= 7'h64;
    end else if (tick) begin
      cnt <= 7'h64;
    end else begin
      cnt <= _cnt_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      pll_ctrl_regs_0 <= 32'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready) begin // @[SoC.scala 325:45]
      pll_ctrl_regs_0 <= out_back_io_deq_bits_data[31:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      pll_ctrl_regs_1 <= 32'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_1) begin // @[SoC.scala 325:45]
      pll_ctrl_regs_1 <= out_back_io_deq_bits_data[63:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      pll_ctrl_regs_2 <= 32'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_2) begin // @[SoC.scala 325:45]
      pll_ctrl_regs_2 <= out_back_io_deq_bits_data[31:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      pll_ctrl_regs_3 <= 32'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_3) begin // @[SoC.scala 325:45]
      pll_ctrl_regs_3 <= out_back_io_deq_bits_data[63:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      pll_ctrl_regs_4 <= 32'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_4) begin // @[SoC.scala 325:45]
      pll_ctrl_regs_4 <= out_back_io_deq_bits_data[31:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      pll_ctrl_regs_5 <= 32'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_5) begin // @[SoC.scala 325:45]
      pll_ctrl_regs_5 <= out_back_io_deq_bits_data[63:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SoC.scala 326:27]
      pll_lock <= 1'h0; // @[SoC.scala 326:27]
    end else begin
      pll_lock <= pll0_lock; // @[SoC.scala 326:27]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ext_intr_sync = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  ext_intr_sync_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  ext_intr_sync_2 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  ext_intr_sync_3 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  ext_intr_sync_4 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  ext_intr_sync_5 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  ext_intr_sync_6 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  ext_intr_sync_7 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  ext_intr_sync_8 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  ext_intr_sync_9 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  ext_intr_sync_10 = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  ext_intr_sync_11 = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  ext_intr_sync_12 = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  ext_intr_sync_13 = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  ext_intr_sync_14 = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  ext_intr_sync_15 = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  ext_intr_sync_16 = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  ext_intr_sync_17 = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  ext_intr_sync_18 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  ext_intr_sync_19 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  ext_intr_sync_20 = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  ext_intr_sync_21 = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  ext_intr_sync_22 = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  ext_intr_sync_23 = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  ext_intr_sync_24 = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  ext_intr_sync_25 = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  ext_intr_sync_26 = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  ext_intr_sync_27 = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  ext_intr_sync_28 = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  ext_intr_sync_29 = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  ext_intr_sync_30 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  ext_intr_sync_31 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  ext_intr_sync_32 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  ext_intr_sync_33 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  ext_intr_sync_34 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  ext_intr_sync_35 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  ext_intr_sync_36 = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  ext_intr_sync_37 = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  ext_intr_sync_38 = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  ext_intr_sync_39 = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  ext_intr_sync_40 = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  ext_intr_sync_41 = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  ext_intr_sync_42 = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  ext_intr_sync_43 = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  ext_intr_sync_44 = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  ext_intr_sync_45 = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  ext_intr_sync_46 = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  ext_intr_sync_47 = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  ext_intr_sync_48 = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  ext_intr_sync_49 = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  ext_intr_sync_50 = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  ext_intr_sync_51 = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  ext_intr_sync_52 = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  ext_intr_sync_53 = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  ext_intr_sync_54 = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  ext_intr_sync_55 = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  ext_intr_sync_56 = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  ext_intr_sync_57 = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  ext_intr_sync_58 = _RAND_58[2:0];
  _RAND_59 = {1{`RANDOM}};
  ext_intr_sync_59 = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  ext_intr_sync_60 = _RAND_60[2:0];
  _RAND_61 = {1{`RANDOM}};
  ext_intr_sync_61 = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  ext_intr_sync_62 = _RAND_62[2:0];
  _RAND_63 = {1{`RANDOM}};
  ext_intr_sync_63 = _RAND_63[2:0];
  _RAND_64 = {1{`RANDOM}};
  cnt = _RAND_64[6:0];
  _RAND_65 = {1{`RANDOM}};
  pll_ctrl_regs_0 = _RAND_65[31:0];
  _RAND_66 = {1{`RANDOM}};
  pll_ctrl_regs_1 = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  pll_ctrl_regs_2 = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  pll_ctrl_regs_3 = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  pll_ctrl_regs_4 = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  pll_ctrl_regs_5 = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  pll_lock = _RAND_71[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ext_intr_sync = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_1 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_2 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_3 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_4 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_5 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_6 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_7 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_8 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_9 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_10 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_11 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_12 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_13 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_14 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_15 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_16 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_17 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_18 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_19 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_20 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_21 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_22 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_23 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_24 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_25 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_26 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_27 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_28 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_29 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_30 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_31 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_32 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_33 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_34 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_35 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_36 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_37 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_38 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_39 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_40 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_41 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_42 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_43 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_44 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_45 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_46 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_47 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_48 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_49 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_50 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_51 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_52 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_53 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_54 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_55 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_56 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_57 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_58 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_59 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_60 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_61 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_62 = 3'h0;
  end
  if (reset) begin
    ext_intr_sync_63 = 3'h0;
  end
  if (reset) begin
    cnt = 7'h64;
  end
  if (reset) begin
    pll_ctrl_regs_0 = 32'h0;
  end
  if (reset) begin
    pll_ctrl_regs_1 = 32'h0;
  end
  if (reset) begin
    pll_ctrl_regs_2 = 32'h0;
  end
  if (reset) begin
    pll_ctrl_regs_3 = 32'h0;
  end
  if (reset) begin
    pll_ctrl_regs_4 = 32'h0;
  end
  if (reset) begin
    pll_ctrl_regs_5 = 32'h0;
  end
  if (reset) begin
    pll_lock = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

