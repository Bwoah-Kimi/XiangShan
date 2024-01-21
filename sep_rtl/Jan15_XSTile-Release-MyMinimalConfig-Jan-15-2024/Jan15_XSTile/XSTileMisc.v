module XSTileMisc(
  input          clock,
  input          reset,
  output         auto_buffers_in_1_a_ready,
  input          auto_buffers_in_1_a_valid,
  input  [2:0]   auto_buffers_in_1_a_bits_opcode,
  input  [2:0]   auto_buffers_in_1_a_bits_size,
  input  [1:0]   auto_buffers_in_1_a_bits_source,
  input  [35:0]  auto_buffers_in_1_a_bits_address,
  input  [7:0]   auto_buffers_in_1_a_bits_mask,
  input  [63:0]  auto_buffers_in_1_a_bits_data,
  input          auto_buffers_in_1_d_ready,
  output         auto_buffers_in_1_d_valid,
  output [2:0]   auto_buffers_in_1_d_bits_opcode,
  output [63:0]  auto_buffers_in_1_d_bits_data,
  output         auto_buffers_in_0_a_ready,
  input          auto_buffers_in_0_a_valid,
  input  [35:0]  auto_buffers_in_0_a_bits_address,
  input          auto_buffers_in_0_d_ready,
  output         auto_buffers_in_0_d_valid,
  output         auto_buffers_in_0_d_bits_source,
  output [63:0]  auto_buffers_in_0_d_bits_data,
  output         auto_binder_in_1_a_ready,
  input          auto_binder_in_1_a_valid,
  input  [2:0]   auto_binder_in_1_a_bits_opcode,
  input  [2:0]   auto_binder_in_1_a_bits_param,
  input  [2:0]   auto_binder_in_1_a_bits_size,
  input  [7:0]   auto_binder_in_1_a_bits_source,
  input  [35:0]  auto_binder_in_1_a_bits_address,
  input  [31:0]  auto_binder_in_1_a_bits_mask,
  input  [255:0] auto_binder_in_1_a_bits_data,
  input          auto_binder_in_1_bready,
  output         auto_binder_in_1_bvalid,
  output [2:0]   auto_binder_in_1_bopcode,
  output [1:0]   auto_binder_in_1_bparam,
  output [2:0]   auto_binder_in_1_bsize,
  output [7:0]   auto_binder_in_1_bsource,
  output [35:0]  auto_binder_in_1_baddress,
  output [31:0]  auto_binder_in_1_bmask,
  output [255:0] auto_binder_in_1_bdata,
  output         auto_binder_in_1_bcorrupt,
  output         auto_binder_in_1_c_ready,
  input          auto_binder_in_1_c_valid,
  input  [2:0]   auto_binder_in_1_c_bits_opcode,
  input  [2:0]   auto_binder_in_1_c_bits_param,
  input  [2:0]   auto_binder_in_1_c_bits_size,
  input  [7:0]   auto_binder_in_1_c_bits_source,
  input  [35:0]  auto_binder_in_1_c_bits_address,
  input          auto_binder_in_1_c_bits_echo_blockisdirty,
  input  [255:0] auto_binder_in_1_c_bits_data,
  input          auto_binder_in_1_d_ready,
  output         auto_binder_in_1_d_valid,
  output [2:0]   auto_binder_in_1_d_bits_opcode,
  output [1:0]   auto_binder_in_1_d_bits_param,
  output [2:0]   auto_binder_in_1_d_bits_size,
  output [7:0]   auto_binder_in_1_d_bits_source,
  output [3:0]   auto_binder_in_1_d_bits_sink,
  output         auto_binder_in_1_d_bits_denied,
  output         auto_binder_in_1_d_bits_echo_blockisdirty,
  output [255:0] auto_binder_in_1_d_bits_data,
  output         auto_binder_in_1_d_bits_corrupt,
  output         auto_binder_in_1_e_ready,
  input          auto_binder_in_1_e_valid,
  input  [3:0]   auto_binder_in_1_e_bits_sink,
  output         auto_binder_in_0_a_ready,
  input          auto_binder_in_0_a_valid,
  input  [2:0]   auto_binder_in_0_a_bits_opcode,
  input  [2:0]   auto_binder_in_0_a_bits_param,
  input  [2:0]   auto_binder_in_0_a_bits_size,
  input  [7:0]   auto_binder_in_0_a_bits_source,
  input  [35:0]  auto_binder_in_0_a_bits_address,
  input  [31:0]  auto_binder_in_0_a_bits_mask,
  input  [255:0] auto_binder_in_0_a_bits_data,
  input          auto_binder_in_0_bready,
  output         auto_binder_in_0_bvalid,
  output [2:0]   auto_binder_in_0_bopcode,
  output [1:0]   auto_binder_in_0_bparam,
  output [2:0]   auto_binder_in_0_bsize,
  output [7:0]   auto_binder_in_0_bsource,
  output [35:0]  auto_binder_in_0_baddress,
  output [31:0]  auto_binder_in_0_bmask,
  output [255:0] auto_binder_in_0_bdata,
  output         auto_binder_in_0_bcorrupt,
  output         auto_binder_in_0_c_ready,
  input          auto_binder_in_0_c_valid,
  input  [2:0]   auto_binder_in_0_c_bits_opcode,
  input  [2:0]   auto_binder_in_0_c_bits_param,
  input  [2:0]   auto_binder_in_0_c_bits_size,
  input  [7:0]   auto_binder_in_0_c_bits_source,
  input  [35:0]  auto_binder_in_0_c_bits_address,
  input          auto_binder_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_binder_in_0_c_bits_data,
  input          auto_binder_in_0_d_ready,
  output         auto_binder_in_0_d_valid,
  output [2:0]   auto_binder_in_0_d_bits_opcode,
  output [1:0]   auto_binder_in_0_d_bits_param,
  output [2:0]   auto_binder_in_0_d_bits_size,
  output [7:0]   auto_binder_in_0_d_bits_source,
  output [3:0]   auto_binder_in_0_d_bits_sink,
  output         auto_binder_in_0_d_bits_denied,
  output         auto_binder_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_binder_in_0_d_bits_data,
  output         auto_binder_in_0_d_bits_corrupt,
  output         auto_binder_in_0_e_ready,
  input          auto_binder_in_0_e_valid,
  input  [3:0]   auto_binder_in_0_e_bits_sink,
  output         auto_beu_int_out_0,
  output         auto_xbar_in_2_a_ready,
  input          auto_xbar_in_2_a_valid,
  input  [2:0]   auto_xbar_in_2_a_bits_opcode,
  input  [2:0]   auto_xbar_in_2_a_bits_param,
  input  [2:0]   auto_xbar_in_2_a_bits_size,
  input  [2:0]   auto_xbar_in_2_a_bits_source,
  input  [35:0]  auto_xbar_in_2_a_bits_address,
  input  [3:0]   auto_xbar_in_2_a_bits_user_reqSource,
  input  [31:0]  auto_xbar_in_2_a_bits_mask,
  input  [255:0] auto_xbar_in_2_a_bits_data,
  input          auto_xbar_in_2_a_bits_corrupt,
  input          auto_xbar_in_2_d_ready,
  output         auto_xbar_in_2_d_valid,
  output [2:0]   auto_xbar_in_2_d_bits_opcode,
  output [2:0]   auto_xbar_in_2_d_bits_size,
  output [2:0]   auto_xbar_in_2_d_bits_source,
  output [255:0] auto_xbar_in_2_d_bits_data,
  output         auto_xbar_in_1_a_ready,
  input          auto_xbar_in_1_a_valid,
  input  [2:0]   auto_xbar_in_1_a_bits_opcode,
  input  [2:0]   auto_xbar_in_1_a_bits_size,
  input  [1:0]   auto_xbar_in_1_a_bits_source,
  input  [35:0]  auto_xbar_in_1_a_bits_address,
  input  [3:0]   auto_xbar_in_1_a_bits_user_reqSource,
  input  [31:0]  auto_xbar_in_1_a_bits_mask,
  output         auto_xbar_in_1_d_valid,
  output [2:0]   auto_xbar_in_1_d_bits_opcode,
  output [1:0]   auto_xbar_in_1_d_bits_source,
  output [255:0] auto_xbar_in_1_d_bits_data,
  output         auto_xbar_in_1_d_bits_corrupt,
  output         auto_xbar_in_0_a_ready,
  input          auto_xbar_in_0_a_valid,
  input  [2:0]   auto_xbar_in_0_a_bits_opcode,
  input  [2:0]   auto_xbar_in_0_a_bits_param,
  input  [2:0]   auto_xbar_in_0_a_bits_size,
  input  [3:0]   auto_xbar_in_0_a_bits_source,
  input  [35:0]  auto_xbar_in_0_a_bits_address,
  input  [32:0]  auto_xbar_in_0_a_bits_user_vaddr,
  input  [3:0]   auto_xbar_in_0_a_bits_user_reqSource,
  input          auto_xbar_in_0_a_bits_user_needHint,
  input  [31:0]  auto_xbar_in_0_a_bits_mask,
  input  [255:0] auto_xbar_in_0_a_bits_data,
  input          auto_xbar_in_0_a_bits_corrupt,
  input          auto_xbar_in_0_bready,
  output         auto_xbar_in_0_bvalid,
  output [2:0]   auto_xbar_in_0_bopcode,
  output [1:0]   auto_xbar_in_0_bparam,
  output [2:0]   auto_xbar_in_0_bsize,
  output [3:0]   auto_xbar_in_0_bsource,
  output [35:0]  auto_xbar_in_0_baddress,
  output [31:0]  auto_xbar_in_0_bmask,
  output [255:0] auto_xbar_in_0_bdata,
  output         auto_xbar_in_0_c_ready,
  input          auto_xbar_in_0_c_valid,
  input  [2:0]   auto_xbar_in_0_c_bits_opcode,
  input  [2:0]   auto_xbar_in_0_c_bits_param,
  input  [2:0]   auto_xbar_in_0_c_bits_size,
  input  [3:0]   auto_xbar_in_0_c_bits_source,
  input  [35:0]  auto_xbar_in_0_c_bits_address,
  input  [32:0]  auto_xbar_in_0_c_bits_user_vaddr,
  input  [3:0]   auto_xbar_in_0_c_bits_user_reqSource,
  input          auto_xbar_in_0_c_bits_user_needHint,
  input  [255:0] auto_xbar_in_0_c_bits_data,
  input          auto_xbar_in_0_c_bits_corrupt,
  input          auto_xbar_in_0_d_ready,
  output         auto_xbar_in_0_d_valid,
  output [2:0]   auto_xbar_in_0_d_bits_opcode,
  output [1:0]   auto_xbar_in_0_d_bits_param,
  output [2:0]   auto_xbar_in_0_d_bits_size,
  output [3:0]   auto_xbar_in_0_d_bits_source,
  output [8:0]   auto_xbar_in_0_d_bits_sink,
  output         auto_xbar_in_0_d_bits_denied,
  output [255:0] auto_xbar_in_0_d_bits_data,
  output         auto_xbar_in_0_d_bits_corrupt,
  output         auto_xbar_in_0_e_ready,
  input          auto_xbar_in_0_e_valid,
  input  [8:0]   auto_xbar_in_0_e_bits_sink,
  input          auto_xbar_out_1_a_ready,
  output         auto_xbar_out_1_a_valid,
  output [2:0]   auto_xbar_out_1_a_bits_opcode,
  output [2:0]   auto_xbar_out_1_a_bits_param,
  output [2:0]   auto_xbar_out_1_a_bits_size,
  output [4:0]   auto_xbar_out_1_a_bits_source,
  output [35:0]  auto_xbar_out_1_a_bits_address,
  output [32:0]  auto_xbar_out_1_a_bits_user_vaddr,
  output [3:0]   auto_xbar_out_1_a_bits_user_reqSource,
  output         auto_xbar_out_1_a_bits_user_needHint,
  output [31:0]  auto_xbar_out_1_a_bits_mask,
  output [255:0] auto_xbar_out_1_a_bits_data,
  output         auto_xbar_out_1_a_bits_corrupt,
  output         auto_xbar_out_1_bready,
  input          auto_xbar_out_1_bvalid,
  input  [2:0]   auto_xbar_out_1_bopcode,
  input  [1:0]   auto_xbar_out_1_bparam,
  input  [2:0]   auto_xbar_out_1_bsize,
  input  [4:0]   auto_xbar_out_1_bsource,
  input  [35:0]  auto_xbar_out_1_baddress,
  input  [31:0]  auto_xbar_out_1_bmask,
  input  [255:0] auto_xbar_out_1_bdata,
  input          auto_xbar_out_1_c_ready,
  output         auto_xbar_out_1_c_valid,
  output [2:0]   auto_xbar_out_1_c_bits_opcode,
  output [2:0]   auto_xbar_out_1_c_bits_param,
  output [2:0]   auto_xbar_out_1_c_bits_size,
  output [4:0]   auto_xbar_out_1_c_bits_source,
  output [35:0]  auto_xbar_out_1_c_bits_address,
  output [32:0]  auto_xbar_out_1_c_bits_user_vaddr,
  output [3:0]   auto_xbar_out_1_c_bits_user_reqSource,
  output         auto_xbar_out_1_c_bits_user_needHint,
  output [255:0] auto_xbar_out_1_c_bits_data,
  output         auto_xbar_out_1_c_bits_corrupt,
  output         auto_xbar_out_1_d_ready,
  input          auto_xbar_out_1_d_valid,
  input  [2:0]   auto_xbar_out_1_d_bits_opcode,
  input  [1:0]   auto_xbar_out_1_d_bits_param,
  input  [2:0]   auto_xbar_out_1_d_bits_size,
  input  [4:0]   auto_xbar_out_1_d_bits_source,
  input  [7:0]   auto_xbar_out_1_d_bits_sink,
  input          auto_xbar_out_1_d_bits_denied,
  input  [255:0] auto_xbar_out_1_d_bits_data,
  input          auto_xbar_out_1_d_bits_corrupt,
  input          auto_xbar_out_1_e_ready,
  output         auto_xbar_out_1_e_valid,
  output [7:0]   auto_xbar_out_1_e_bits_sink,
  input          auto_xbar_out_0_a_ready,
  output         auto_xbar_out_0_a_valid,
  output [2:0]   auto_xbar_out_0_a_bits_opcode,
  output [2:0]   auto_xbar_out_0_a_bits_param,
  output [2:0]   auto_xbar_out_0_a_bits_size,
  output [4:0]   auto_xbar_out_0_a_bits_source,
  output [35:0]  auto_xbar_out_0_a_bits_address,
  output [32:0]  auto_xbar_out_0_a_bits_user_vaddr,
  output [3:0]   auto_xbar_out_0_a_bits_user_reqSource,
  output         auto_xbar_out_0_a_bits_user_needHint,
  output [31:0]  auto_xbar_out_0_a_bits_mask,
  output [255:0] auto_xbar_out_0_a_bits_data,
  output         auto_xbar_out_0_a_bits_corrupt,
  output         auto_xbar_out_0_bready,
  input          auto_xbar_out_0_bvalid,
  input  [2:0]   auto_xbar_out_0_bopcode,
  input  [1:0]   auto_xbar_out_0_bparam,
  input  [2:0]   auto_xbar_out_0_bsize,
  input  [4:0]   auto_xbar_out_0_bsource,
  input  [35:0]  auto_xbar_out_0_baddress,
  input  [31:0]  auto_xbar_out_0_bmask,
  input  [255:0] auto_xbar_out_0_bdata,
  input          auto_xbar_out_0_c_ready,
  output         auto_xbar_out_0_c_valid,
  output [2:0]   auto_xbar_out_0_c_bits_opcode,
  output [2:0]   auto_xbar_out_0_c_bits_param,
  output [2:0]   auto_xbar_out_0_c_bits_size,
  output [4:0]   auto_xbar_out_0_c_bits_source,
  output [35:0]  auto_xbar_out_0_c_bits_address,
  output [32:0]  auto_xbar_out_0_c_bits_user_vaddr,
  output [3:0]   auto_xbar_out_0_c_bits_user_reqSource,
  output         auto_xbar_out_0_c_bits_user_needHint,
  output [255:0] auto_xbar_out_0_c_bits_data,
  output         auto_xbar_out_0_c_bits_corrupt,
  output         auto_xbar_out_0_d_ready,
  input          auto_xbar_out_0_d_valid,
  input  [2:0]   auto_xbar_out_0_d_bits_opcode,
  input  [1:0]   auto_xbar_out_0_d_bits_param,
  input  [2:0]   auto_xbar_out_0_d_bits_size,
  input  [4:0]   auto_xbar_out_0_d_bits_source,
  input  [7:0]   auto_xbar_out_0_d_bits_sink,
  input          auto_xbar_out_0_d_bits_denied,
  input  [255:0] auto_xbar_out_0_d_bits_data,
  input          auto_xbar_out_0_d_bits_corrupt,
  input          auto_xbar_out_0_e_ready,
  output         auto_xbar_out_0_e_valid,
  output [7:0]   auto_xbar_out_0_e_bits_sink,
  input          auto_memory_port_out_a_ready,
  output         auto_memory_port_out_a_valid,
  output [2:0]   auto_memory_port_out_a_bits_opcode,
  output [2:0]   auto_memory_port_out_a_bits_param,
  output [2:0]   auto_memory_port_out_a_bits_size,
  output [8:0]   auto_memory_port_out_a_bits_source,
  output [35:0]  auto_memory_port_out_a_bits_address,
  output [31:0]  auto_memory_port_out_a_bits_mask,
  output [255:0] auto_memory_port_out_a_bits_data,
  output         auto_memory_port_out_bready,
  input          auto_memory_port_out_bvalid,
  input  [2:0]   auto_memory_port_out_bopcode,
  input  [1:0]   auto_memory_port_out_bparam,
  input  [2:0]   auto_memory_port_out_bsize,
  input  [35:0]  auto_memory_port_out_baddress,
  input  [31:0]  auto_memory_port_out_bmask,
  input  [255:0] auto_memory_port_out_bdata,
  input          auto_memory_port_out_bcorrupt,
  input          auto_memory_port_out_c_ready,
  output         auto_memory_port_out_c_valid,
  output [2:0]   auto_memory_port_out_c_bits_opcode,
  output [2:0]   auto_memory_port_out_c_bits_param,
  output [2:0]   auto_memory_port_out_c_bits_size,
  output [8:0]   auto_memory_port_out_c_bits_source,
  output [35:0]  auto_memory_port_out_c_bits_address,
  output         auto_memory_port_out_c_bits_echo_blockisdirty,
  output [255:0] auto_memory_port_out_c_bits_data,
  output         auto_memory_port_out_d_ready,
  input          auto_memory_port_out_d_valid,
  input  [2:0]   auto_memory_port_out_d_bits_opcode,
  input  [1:0]   auto_memory_port_out_d_bits_param,
  input  [2:0]   auto_memory_port_out_d_bits_size,
  input  [8:0]   auto_memory_port_out_d_bits_source,
  input  [3:0]   auto_memory_port_out_d_bits_sink,
  input          auto_memory_port_out_d_bits_denied,
  input          auto_memory_port_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_memory_port_out_d_bits_data,
  input          auto_memory_port_out_d_bits_corrupt,
  input          auto_memory_port_out_e_ready,
  output         auto_memory_port_out_e_valid,
  output [3:0]   auto_memory_port_out_e_bits_sink,
  input          auto_mmio_port_out_a_ready,
  output         auto_mmio_port_out_a_valid,
  output [2:0]   auto_mmio_port_out_a_bits_opcode,
  output [2:0]   auto_mmio_port_out_a_bits_size,
  output [2:0]   auto_mmio_port_out_a_bits_source,
  output [35:0]  auto_mmio_port_out_a_bits_address,
  output [7:0]   auto_mmio_port_out_a_bits_mask,
  output [63:0]  auto_mmio_port_out_a_bits_data,
  output         auto_mmio_port_out_d_ready,
  input          auto_mmio_port_out_d_valid,
  input  [2:0]   auto_mmio_port_out_d_bits_opcode,
  input  [2:0]   auto_mmio_port_out_d_bits_size,
  input  [2:0]   auto_mmio_port_out_d_bits_source,
  input  [63:0]  auto_mmio_port_out_d_bits_data,
  input          beu_errors_icache_ecc_error_valid,
  input  [35:0]  beu_errors_icache_ecc_error_bits,
  input          beu_errors_dcache_ecc_error_valid,
  input  [35:0]  beu_errors_dcache_ecc_error_bits
);
  wire  xbar_clock; // @[Xbar.scala 142:26]
  wire  xbar_reset; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_2_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_2_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_2_a_bits_address; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_2_a_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_in_2_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_2_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_2_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_2_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_2_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_2_d_bits_source; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_2_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_1_a_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_in_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [32:0] xbar_auto_in_0_a_bits_user_vaddr; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_0_a_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_a_bits_user_needHint; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_bready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_in_0_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_bsize; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_0_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_0_baddress; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_in_0_bmask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_0_bdata; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_c_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_0_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_0_c_bits_address; // @[Xbar.scala 142:26]
  wire [32:0] xbar_auto_in_0_c_bits_user_vaddr; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_0_c_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_c_bits_user_needHint; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_0_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_c_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_in_0_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_in_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [8:0] xbar_auto_in_0_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_e_valid; // @[Xbar.scala 142:26]
  wire [8:0] xbar_auto_in_0_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [32:0] xbar_auto_out_1_a_bits_user_vaddr; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_out_1_a_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_bits_user_needHint; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_out_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_bready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_1_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_bsize; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_1_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_1_baddress; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_out_1_bmask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_1_bdata; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_c_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_1_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_1_c_bits_address; // @[Xbar.scala 142:26]
  wire [32:0] xbar_auto_out_1_c_bits_user_vaddr; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_out_1_c_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_c_bits_user_needHint; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_1_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_c_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_1_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_1_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_e_valid; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_1_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [32:0] xbar_auto_out_0_a_bits_user_vaddr; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_out_0_a_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_bits_user_needHint; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_out_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_bready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_0_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_bsize; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_0_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_0_baddress; // @[Xbar.scala 142:26]
  wire [31:0] xbar_auto_out_0_bmask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_0_bdata; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_c_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_0_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_0_c_bits_address; // @[Xbar.scala 142:26]
  wire [32:0] xbar_auto_out_0_c_bits_user_vaddr; // @[Xbar.scala 142:26]
  wire [3:0] xbar_auto_out_0_c_bits_user_reqSource; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_c_bits_user_needHint; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_0_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_c_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_0_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_auto_out_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_0_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire [255:0] xbar_auto_out_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_e_valid; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_0_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_1_clock; // @[Xbar.scala 142:26]
  wire  xbar_1_reset; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [1:0] xbar_1_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_1_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_1_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_1_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_1_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_1_auto_out_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_1_auto_out_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_out_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_out_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_1_auto_out_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_1_auto_out_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_1_auto_out_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_out_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_1_auto_out_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_1_auto_out_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_1_auto_out_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  beu_clock; // @[XSTile.scala 59:23]
  wire  beu_reset; // @[XSTile.scala 59:23]
  wire  beu_auto_in_a_ready; // @[XSTile.scala 59:23]
  wire  beu_auto_in_a_valid; // @[XSTile.scala 59:23]
  wire [2:0] beu_auto_in_a_bits_opcode; // @[XSTile.scala 59:23]
  wire [1:0] beu_auto_in_a_bits_size; // @[XSTile.scala 59:23]
  wire [2:0] beu_auto_in_a_bits_source; // @[XSTile.scala 59:23]
  wire [29:0] beu_auto_in_a_bits_address; // @[XSTile.scala 59:23]
  wire [7:0] beu_auto_in_a_bits_mask; // @[XSTile.scala 59:23]
  wire [63:0] beu_auto_in_a_bits_data; // @[XSTile.scala 59:23]
  wire  beu_auto_in_d_ready; // @[XSTile.scala 59:23]
  wire  beu_auto_in_d_valid; // @[XSTile.scala 59:23]
  wire [2:0] beu_auto_in_d_bits_opcode; // @[XSTile.scala 59:23]
  wire [1:0] beu_auto_in_d_bits_size; // @[XSTile.scala 59:23]
  wire [2:0] beu_auto_in_d_bits_source; // @[XSTile.scala 59:23]
  wire [63:0] beu_auto_in_d_bits_data; // @[XSTile.scala 59:23]
  wire  beu_auto_int_out_0; // @[XSTile.scala 59:23]
  wire  beu_io_errors_icache_ecc_error_valid; // @[XSTile.scala 59:23]
  wire [35:0] beu_io_errors_icache_ecc_error_bits; // @[XSTile.scala 59:23]
  wire  beu_io_errors_dcache_ecc_error_valid; // @[XSTile.scala 59:23]
  wire [35:0] beu_io_errors_dcache_ecc_error_bits; // @[XSTile.scala 59:23]
  wire  binder_auto_in_1_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_a_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_1_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_1_a_bits_address; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_1_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_1_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_bsize; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_1_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_1_baddress; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_1_bmask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_bcorrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_c_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_1_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_1_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_1_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_d_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_1_d_bits_source; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_1_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_e_valid; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_1_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_a_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_0_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_0_a_bits_address; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_0_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_0_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_bsize; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_0_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_0_baddress; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_0_bmask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_bcorrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_c_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_0_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_0_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_0_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_d_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_in_0_d_bits_source; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_0_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_e_valid; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_0_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_a_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_1_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_1_a_bits_address; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_1_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_1_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_bsize; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_1_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_1_baddress; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_1_bmask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_bcorrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_c_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_1_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_1_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_1_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_d_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_1_d_bits_source; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_1_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_e_valid; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_1_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_a_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_0_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_0_a_bits_address; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_0_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_0_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_bsize; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_0_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_0_baddress; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_0_bmask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_bcorrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_c_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_0_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_0_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_0_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_d_bits_size; // @[BankBinder.scala 67:28]
  wire [7:0] binder_auto_out_0_d_bits_source; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_0_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_e_valid; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_0_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  merger_auto_in_a_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_a_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_in_a_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_a_bits_address; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_in_a_bits_mask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_a_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_bready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_bvalid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_bopcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_in_bparam; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_bsize; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_in_bsource; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_baddress; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_in_bmask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_bdata; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_bcorrupt; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_in_c_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_c_bits_address; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_c_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_in_d_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_in_d_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_in_d_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_bits_denied; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_d_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_bits_corrupt; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_e_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_e_valid; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_in_e_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_out_a_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_a_bits_address; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_out_a_bits_mask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_a_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_bready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_bvalid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_bopcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_out_bparam; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_bsize; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_baddress; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_out_bmask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_bdata; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_bcorrupt; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_out_c_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_c_bits_address; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_c_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_out_d_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [8:0] merger_auto_out_d_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_out_d_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_bits_denied; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_d_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_bits_corrupt; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_e_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_e_valid; // @[TLClientsMerger.scala 66:28]
  wire [3:0] merger_auto_out_e_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  xbar_2_clock; // @[Xbar.scala 142:26]
  wire  xbar_2_reset; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_1_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_bsize; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_1_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_baddress; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_1_bmask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_bcorrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_c_bits_size; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_1_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_1_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_1_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_e_valid; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_1_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_0_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_bsize; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_0_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_baddress; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_0_bmask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bcorrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_size; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_0_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_0_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [7:0] xbar_2_auto_in_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_e_valid; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_size; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_out_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_a_bits_address; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_out_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_out_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_bsize; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_out_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_baddress; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_out_bmask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bcorrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_size; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_out_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_out_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_d_bits_size; // @[Xbar.scala 142:26]
  wire [8:0] xbar_2_auto_out_d_bits_source; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_out_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_e_valid; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_out_e_bits_sink; // @[Xbar.scala 142:26]
  wire  buffers_clock; // @[Buffer.scala 73:47]
  wire  buffers_reset; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_clock; // @[Buffer.scala 73:47]
  wire  buffers_1_reset; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_1_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_1_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_1_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_1_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_1_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_1_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_clock; // @[Buffer.scala 73:47]
  wire  buffers_2_reset; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [1:0] buffers_2_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_2_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_2_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [1:0] buffers_2_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_2_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_2_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_clock; // @[Buffer.scala 73:47]
  wire  buffers_3_reset; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [1:0] buffers_3_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_3_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_3_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [1:0] buffers_3_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_3_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_3_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_clock; // @[Buffer.scala 73:47]
  wire  buffers_4_reset; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_4_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_4_auto_in_a_bits_address; // @[Buffer.scala 73:47]
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
  wire [29:0] buffers_4_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_4_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_4_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffer_clock; // @[Buffer.scala 68:28]
  wire  buffer_reset; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 68:28]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 68:28]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 68:28]
  TLXbar_7 xbar ( // @[Xbar.scala 142:26]
    .clock(xbar_clock),
    .reset(xbar_reset),
    .auto_in_2_a_ready(xbar_auto_in_2_a_ready),
    .auto_in_2_a_valid(xbar_auto_in_2_a_valid),
    .auto_in_2_a_bits_opcode(xbar_auto_in_2_a_bits_opcode),
    .auto_in_2_a_bits_param(xbar_auto_in_2_a_bits_param),
    .auto_in_2_a_bits_size(xbar_auto_in_2_a_bits_size),
    .auto_in_2_a_bits_source(xbar_auto_in_2_a_bits_source),
    .auto_in_2_a_bits_address(xbar_auto_in_2_a_bits_address),
    .auto_in_2_a_bits_user_reqSource(xbar_auto_in_2_a_bits_user_reqSource),
    .auto_in_2_a_bits_mask(xbar_auto_in_2_a_bits_mask),
    .auto_in_2_a_bits_data(xbar_auto_in_2_a_bits_data),
    .auto_in_2_a_bits_corrupt(xbar_auto_in_2_a_bits_corrupt),
    .auto_in_2_d_ready(xbar_auto_in_2_d_ready),
    .auto_in_2_d_valid(xbar_auto_in_2_d_valid),
    .auto_in_2_d_bits_opcode(xbar_auto_in_2_d_bits_opcode),
    .auto_in_2_d_bits_size(xbar_auto_in_2_d_bits_size),
    .auto_in_2_d_bits_source(xbar_auto_in_2_d_bits_source),
    .auto_in_2_d_bits_data(xbar_auto_in_2_d_bits_data),
    .auto_in_1_a_ready(xbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_size(xbar_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_user_reqSource(xbar_auto_in_1_a_bits_user_reqSource),
    .auto_in_1_a_bits_mask(xbar_auto_in_1_a_bits_mask),
    .auto_in_1_d_valid(xbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_source(xbar_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_data(xbar_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(xbar_auto_in_1_d_bits_corrupt),
    .auto_in_0_a_ready(xbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(xbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(xbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(xbar_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(xbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(xbar_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(xbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_vaddr(xbar_auto_in_0_a_bits_user_vaddr),
    .auto_in_0_a_bits_user_reqSource(xbar_auto_in_0_a_bits_user_reqSource),
    .auto_in_0_a_bits_user_needHint(xbar_auto_in_0_a_bits_user_needHint),
    .auto_in_0_a_bits_mask(xbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(xbar_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(xbar_auto_in_0_a_bits_corrupt),
    .auto_in_0_bready(xbar_auto_in_0_bready),
    .auto_in_0_bvalid(xbar_auto_in_0_bvalid),
    .auto_in_0_bopcode(xbar_auto_in_0_bopcode),
    .auto_in_0_bparam(xbar_auto_in_0_bparam),
    .auto_in_0_bsize(xbar_auto_in_0_bsize),
    .auto_in_0_bsource(xbar_auto_in_0_bsource),
    .auto_in_0_baddress(xbar_auto_in_0_baddress),
    .auto_in_0_bmask(xbar_auto_in_0_bmask),
    .auto_in_0_bdata(xbar_auto_in_0_bdata),
    .auto_in_0_c_ready(xbar_auto_in_0_c_ready),
    .auto_in_0_c_valid(xbar_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(xbar_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(xbar_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(xbar_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(xbar_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(xbar_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_user_vaddr(xbar_auto_in_0_c_bits_user_vaddr),
    .auto_in_0_c_bits_user_reqSource(xbar_auto_in_0_c_bits_user_reqSource),
    .auto_in_0_c_bits_user_needHint(xbar_auto_in_0_c_bits_user_needHint),
    .auto_in_0_c_bits_data(xbar_auto_in_0_c_bits_data),
    .auto_in_0_c_bits_corrupt(xbar_auto_in_0_c_bits_corrupt),
    .auto_in_0_d_ready(xbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(xbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(xbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(xbar_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(xbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(xbar_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(xbar_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(xbar_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(xbar_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(xbar_auto_in_0_d_bits_corrupt),
    .auto_in_0_e_ready(xbar_auto_in_0_e_ready),
    .auto_in_0_e_valid(xbar_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(xbar_auto_in_0_e_bits_sink),
    .auto_out_1_a_ready(xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_user_vaddr(xbar_auto_out_1_a_bits_user_vaddr),
    .auto_out_1_a_bits_user_reqSource(xbar_auto_out_1_a_bits_user_reqSource),
    .auto_out_1_a_bits_user_needHint(xbar_auto_out_1_a_bits_user_needHint),
    .auto_out_1_a_bits_mask(xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(xbar_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(xbar_auto_out_1_a_bits_corrupt),
    .auto_out_1_bready(xbar_auto_out_1_bready),
    .auto_out_1_bvalid(xbar_auto_out_1_bvalid),
    .auto_out_1_bopcode(xbar_auto_out_1_bopcode),
    .auto_out_1_bparam(xbar_auto_out_1_bparam),
    .auto_out_1_bsize(xbar_auto_out_1_bsize),
    .auto_out_1_bsource(xbar_auto_out_1_bsource),
    .auto_out_1_baddress(xbar_auto_out_1_baddress),
    .auto_out_1_bmask(xbar_auto_out_1_bmask),
    .auto_out_1_bdata(xbar_auto_out_1_bdata),
    .auto_out_1_c_ready(xbar_auto_out_1_c_ready),
    .auto_out_1_c_valid(xbar_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(xbar_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(xbar_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(xbar_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(xbar_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(xbar_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_user_vaddr(xbar_auto_out_1_c_bits_user_vaddr),
    .auto_out_1_c_bits_user_reqSource(xbar_auto_out_1_c_bits_user_reqSource),
    .auto_out_1_c_bits_user_needHint(xbar_auto_out_1_c_bits_user_needHint),
    .auto_out_1_c_bits_data(xbar_auto_out_1_c_bits_data),
    .auto_out_1_c_bits_corrupt(xbar_auto_out_1_c_bits_corrupt),
    .auto_out_1_d_ready(xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(xbar_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(xbar_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(xbar_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(xbar_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(xbar_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_ready(xbar_auto_out_1_e_ready),
    .auto_out_1_e_valid(xbar_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(xbar_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_user_vaddr(xbar_auto_out_0_a_bits_user_vaddr),
    .auto_out_0_a_bits_user_reqSource(xbar_auto_out_0_a_bits_user_reqSource),
    .auto_out_0_a_bits_user_needHint(xbar_auto_out_0_a_bits_user_needHint),
    .auto_out_0_a_bits_mask(xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(xbar_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_bready(xbar_auto_out_0_bready),
    .auto_out_0_bvalid(xbar_auto_out_0_bvalid),
    .auto_out_0_bopcode(xbar_auto_out_0_bopcode),
    .auto_out_0_bparam(xbar_auto_out_0_bparam),
    .auto_out_0_bsize(xbar_auto_out_0_bsize),
    .auto_out_0_bsource(xbar_auto_out_0_bsource),
    .auto_out_0_baddress(xbar_auto_out_0_baddress),
    .auto_out_0_bmask(xbar_auto_out_0_bmask),
    .auto_out_0_bdata(xbar_auto_out_0_bdata),
    .auto_out_0_c_ready(xbar_auto_out_0_c_ready),
    .auto_out_0_c_valid(xbar_auto_out_0_c_valid),
    .auto_out_0_c_bits_opcode(xbar_auto_out_0_c_bits_opcode),
    .auto_out_0_c_bits_param(xbar_auto_out_0_c_bits_param),
    .auto_out_0_c_bits_size(xbar_auto_out_0_c_bits_size),
    .auto_out_0_c_bits_source(xbar_auto_out_0_c_bits_source),
    .auto_out_0_c_bits_address(xbar_auto_out_0_c_bits_address),
    .auto_out_0_c_bits_user_vaddr(xbar_auto_out_0_c_bits_user_vaddr),
    .auto_out_0_c_bits_user_reqSource(xbar_auto_out_0_c_bits_user_reqSource),
    .auto_out_0_c_bits_user_needHint(xbar_auto_out_0_c_bits_user_needHint),
    .auto_out_0_c_bits_data(xbar_auto_out_0_c_bits_data),
    .auto_out_0_c_bits_corrupt(xbar_auto_out_0_c_bits_corrupt),
    .auto_out_0_d_ready(xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(xbar_auto_out_0_d_bits_corrupt),
    .auto_out_0_e_ready(xbar_auto_out_0_e_ready),
    .auto_out_0_e_valid(xbar_auto_out_0_e_valid),
    .auto_out_0_e_bits_sink(xbar_auto_out_0_e_bits_sink)
  );
  TLXbar_8 xbar_1 ( // @[Xbar.scala 142:26]
    .clock(xbar_1_clock),
    .reset(xbar_1_reset),
    .auto_in_1_a_ready(xbar_1_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_1_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_1_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_size(xbar_1_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_1_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_1_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(xbar_1_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(xbar_1_auto_in_1_a_bits_data),
    .auto_in_1_d_ready(xbar_1_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_1_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_1_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_data(xbar_1_auto_in_1_d_bits_data),
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
    .auto_in_0_d_bits_data(xbar_1_auto_in_0_d_bits_data),
    .auto_out_1_a_ready(xbar_1_auto_out_1_a_ready),
    .auto_out_1_a_valid(xbar_1_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(xbar_1_auto_out_1_a_bits_opcode),
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
    .auto_out_1_d_bits_data(xbar_1_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(xbar_1_auto_out_0_a_ready),
    .auto_out_0_a_valid(xbar_1_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(xbar_1_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_size(xbar_1_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(xbar_1_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(xbar_1_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(xbar_1_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(xbar_1_auto_out_0_a_bits_data),
    .auto_out_0_d_ready(xbar_1_auto_out_0_d_ready),
    .auto_out_0_d_valid(xbar_1_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(xbar_1_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_source(xbar_1_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_data(xbar_1_auto_out_0_d_bits_data)
  );
  BusErrorUnit beu ( // @[XSTile.scala 59:23]
    .clock(beu_clock),
    .reset(beu_reset),
    .auto_in_a_ready(beu_auto_in_a_ready),
    .auto_in_a_valid(beu_auto_in_a_valid),
    .auto_in_a_bits_opcode(beu_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(beu_auto_in_a_bits_size),
    .auto_in_a_bits_source(beu_auto_in_a_bits_source),
    .auto_in_a_bits_address(beu_auto_in_a_bits_address),
    .auto_in_a_bits_mask(beu_auto_in_a_bits_mask),
    .auto_in_a_bits_data(beu_auto_in_a_bits_data),
    .auto_in_d_ready(beu_auto_in_d_ready),
    .auto_in_d_valid(beu_auto_in_d_valid),
    .auto_in_d_bits_opcode(beu_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(beu_auto_in_d_bits_size),
    .auto_in_d_bits_source(beu_auto_in_d_bits_source),
    .auto_in_d_bits_data(beu_auto_in_d_bits_data),
    .auto_int_out_0(beu_auto_int_out_0),
    .io_errors_icache_ecc_error_valid(beu_io_errors_icache_ecc_error_valid),
    .io_errors_icache_ecc_error_bits(beu_io_errors_icache_ecc_error_bits),
    .io_errors_dcache_ecc_error_valid(beu_io_errors_dcache_ecc_error_valid),
    .io_errors_dcache_ecc_error_bits(beu_io_errors_dcache_ecc_error_bits)
  );
  BankBinder_1 binder ( // @[BankBinder.scala 67:28]
    .auto_in_1_a_ready(binder_auto_in_1_a_ready),
    .auto_in_1_a_valid(binder_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(binder_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(binder_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(binder_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(binder_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(binder_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(binder_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(binder_auto_in_1_a_bits_data),
    .auto_in_1_bready(binder_auto_in_1_bready),
    .auto_in_1_bvalid(binder_auto_in_1_bvalid),
    .auto_in_1_bopcode(binder_auto_in_1_bopcode),
    .auto_in_1_bparam(binder_auto_in_1_bparam),
    .auto_in_1_bsize(binder_auto_in_1_bsize),
    .auto_in_1_bsource(binder_auto_in_1_bsource),
    .auto_in_1_baddress(binder_auto_in_1_baddress),
    .auto_in_1_bmask(binder_auto_in_1_bmask),
    .auto_in_1_bdata(binder_auto_in_1_bdata),
    .auto_in_1_bcorrupt(binder_auto_in_1_bcorrupt),
    .auto_in_1_c_ready(binder_auto_in_1_c_ready),
    .auto_in_1_c_valid(binder_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(binder_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(binder_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(binder_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(binder_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(binder_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_echo_blockisdirty(binder_auto_in_1_c_bits_echo_blockisdirty),
    .auto_in_1_c_bits_data(binder_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(binder_auto_in_1_d_ready),
    .auto_in_1_d_valid(binder_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(binder_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(binder_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(binder_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(binder_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(binder_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(binder_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_echo_blockisdirty(binder_auto_in_1_d_bits_echo_blockisdirty),
    .auto_in_1_d_bits_data(binder_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(binder_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_ready(binder_auto_in_1_e_ready),
    .auto_in_1_e_valid(binder_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(binder_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(binder_auto_in_0_a_ready),
    .auto_in_0_a_valid(binder_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(binder_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(binder_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(binder_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(binder_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(binder_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(binder_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(binder_auto_in_0_a_bits_data),
    .auto_in_0_bready(binder_auto_in_0_bready),
    .auto_in_0_bvalid(binder_auto_in_0_bvalid),
    .auto_in_0_bopcode(binder_auto_in_0_bopcode),
    .auto_in_0_bparam(binder_auto_in_0_bparam),
    .auto_in_0_bsize(binder_auto_in_0_bsize),
    .auto_in_0_bsource(binder_auto_in_0_bsource),
    .auto_in_0_baddress(binder_auto_in_0_baddress),
    .auto_in_0_bmask(binder_auto_in_0_bmask),
    .auto_in_0_bdata(binder_auto_in_0_bdata),
    .auto_in_0_bcorrupt(binder_auto_in_0_bcorrupt),
    .auto_in_0_c_ready(binder_auto_in_0_c_ready),
    .auto_in_0_c_valid(binder_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(binder_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(binder_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(binder_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(binder_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(binder_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_echo_blockisdirty(binder_auto_in_0_c_bits_echo_blockisdirty),
    .auto_in_0_c_bits_data(binder_auto_in_0_c_bits_data),
    .auto_in_0_d_ready(binder_auto_in_0_d_ready),
    .auto_in_0_d_valid(binder_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(binder_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(binder_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(binder_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(binder_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(binder_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(binder_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_echo_blockisdirty(binder_auto_in_0_d_bits_echo_blockisdirty),
    .auto_in_0_d_bits_data(binder_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(binder_auto_in_0_d_bits_corrupt),
    .auto_in_0_e_ready(binder_auto_in_0_e_ready),
    .auto_in_0_e_valid(binder_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(binder_auto_in_0_e_bits_sink),
    .auto_out_1_a_ready(binder_auto_out_1_a_ready),
    .auto_out_1_a_valid(binder_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(binder_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(binder_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(binder_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(binder_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(binder_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(binder_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(binder_auto_out_1_a_bits_data),
    .auto_out_1_bready(binder_auto_out_1_bready),
    .auto_out_1_bvalid(binder_auto_out_1_bvalid),
    .auto_out_1_bopcode(binder_auto_out_1_bopcode),
    .auto_out_1_bparam(binder_auto_out_1_bparam),
    .auto_out_1_bsize(binder_auto_out_1_bsize),
    .auto_out_1_bsource(binder_auto_out_1_bsource),
    .auto_out_1_baddress(binder_auto_out_1_baddress),
    .auto_out_1_bmask(binder_auto_out_1_bmask),
    .auto_out_1_bdata(binder_auto_out_1_bdata),
    .auto_out_1_bcorrupt(binder_auto_out_1_bcorrupt),
    .auto_out_1_c_ready(binder_auto_out_1_c_ready),
    .auto_out_1_c_valid(binder_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(binder_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(binder_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(binder_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(binder_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(binder_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_echo_blockisdirty(binder_auto_out_1_c_bits_echo_blockisdirty),
    .auto_out_1_c_bits_data(binder_auto_out_1_c_bits_data),
    .auto_out_1_d_ready(binder_auto_out_1_d_ready),
    .auto_out_1_d_valid(binder_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(binder_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(binder_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(binder_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(binder_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(binder_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(binder_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_echo_blockisdirty(binder_auto_out_1_d_bits_echo_blockisdirty),
    .auto_out_1_d_bits_data(binder_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(binder_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_ready(binder_auto_out_1_e_ready),
    .auto_out_1_e_valid(binder_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(binder_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(binder_auto_out_0_a_ready),
    .auto_out_0_a_valid(binder_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(binder_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(binder_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(binder_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(binder_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(binder_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(binder_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(binder_auto_out_0_a_bits_data),
    .auto_out_0_bready(binder_auto_out_0_bready),
    .auto_out_0_bvalid(binder_auto_out_0_bvalid),
    .auto_out_0_bopcode(binder_auto_out_0_bopcode),
    .auto_out_0_bparam(binder_auto_out_0_bparam),
    .auto_out_0_bsize(binder_auto_out_0_bsize),
    .auto_out_0_bsource(binder_auto_out_0_bsource),
    .auto_out_0_baddress(binder_auto_out_0_baddress),
    .auto_out_0_bmask(binder_auto_out_0_bmask),
    .auto_out_0_bdata(binder_auto_out_0_bdata),
    .auto_out_0_bcorrupt(binder_auto_out_0_bcorrupt),
    .auto_out_0_c_ready(binder_auto_out_0_c_ready),
    .auto_out_0_c_valid(binder_auto_out_0_c_valid),
    .auto_out_0_c_bits_opcode(binder_auto_out_0_c_bits_opcode),
    .auto_out_0_c_bits_param(binder_auto_out_0_c_bits_param),
    .auto_out_0_c_bits_size(binder_auto_out_0_c_bits_size),
    .auto_out_0_c_bits_source(binder_auto_out_0_c_bits_source),
    .auto_out_0_c_bits_address(binder_auto_out_0_c_bits_address),
    .auto_out_0_c_bits_echo_blockisdirty(binder_auto_out_0_c_bits_echo_blockisdirty),
    .auto_out_0_c_bits_data(binder_auto_out_0_c_bits_data),
    .auto_out_0_d_ready(binder_auto_out_0_d_ready),
    .auto_out_0_d_valid(binder_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(binder_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(binder_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(binder_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(binder_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(binder_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(binder_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_echo_blockisdirty(binder_auto_out_0_d_bits_echo_blockisdirty),
    .auto_out_0_d_bits_data(binder_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(binder_auto_out_0_d_bits_corrupt),
    .auto_out_0_e_ready(binder_auto_out_0_e_ready),
    .auto_out_0_e_valid(binder_auto_out_0_e_valid),
    .auto_out_0_e_bits_sink(binder_auto_out_0_e_bits_sink)
  );
  TLClientsMerger_1 merger ( // @[TLClientsMerger.scala 66:28]
    .auto_in_a_ready(merger_auto_in_a_ready),
    .auto_in_a_valid(merger_auto_in_a_valid),
    .auto_in_a_bits_opcode(merger_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(merger_auto_in_a_bits_param),
    .auto_in_a_bits_size(merger_auto_in_a_bits_size),
    .auto_in_a_bits_source(merger_auto_in_a_bits_source),
    .auto_in_a_bits_address(merger_auto_in_a_bits_address),
    .auto_in_a_bits_mask(merger_auto_in_a_bits_mask),
    .auto_in_a_bits_data(merger_auto_in_a_bits_data),
    .auto_in_bready(merger_auto_in_bready),
    .auto_in_bvalid(merger_auto_in_bvalid),
    .auto_in_bopcode(merger_auto_in_bopcode),
    .auto_in_bparam(merger_auto_in_bparam),
    .auto_in_bsize(merger_auto_in_bsize),
    .auto_in_bsource(merger_auto_in_bsource),
    .auto_in_baddress(merger_auto_in_baddress),
    .auto_in_bmask(merger_auto_in_bmask),
    .auto_in_bdata(merger_auto_in_bdata),
    .auto_in_bcorrupt(merger_auto_in_bcorrupt),
    .auto_in_c_ready(merger_auto_in_c_ready),
    .auto_in_c_valid(merger_auto_in_c_valid),
    .auto_in_c_bits_opcode(merger_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(merger_auto_in_c_bits_param),
    .auto_in_c_bits_size(merger_auto_in_c_bits_size),
    .auto_in_c_bits_source(merger_auto_in_c_bits_source),
    .auto_in_c_bits_address(merger_auto_in_c_bits_address),
    .auto_in_c_bits_echo_blockisdirty(merger_auto_in_c_bits_echo_blockisdirty),
    .auto_in_c_bits_data(merger_auto_in_c_bits_data),
    .auto_in_d_ready(merger_auto_in_d_ready),
    .auto_in_d_valid(merger_auto_in_d_valid),
    .auto_in_d_bits_opcode(merger_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(merger_auto_in_d_bits_param),
    .auto_in_d_bits_size(merger_auto_in_d_bits_size),
    .auto_in_d_bits_source(merger_auto_in_d_bits_source),
    .auto_in_d_bits_sink(merger_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(merger_auto_in_d_bits_denied),
    .auto_in_d_bits_echo_blockisdirty(merger_auto_in_d_bits_echo_blockisdirty),
    .auto_in_d_bits_data(merger_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(merger_auto_in_d_bits_corrupt),
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
    .auto_out_bready(merger_auto_out_bready),
    .auto_out_bvalid(merger_auto_out_bvalid),
    .auto_out_bopcode(merger_auto_out_bopcode),
    .auto_out_bparam(merger_auto_out_bparam),
    .auto_out_bsize(merger_auto_out_bsize),
    .auto_out_baddress(merger_auto_out_baddress),
    .auto_out_bmask(merger_auto_out_bmask),
    .auto_out_bdata(merger_auto_out_bdata),
    .auto_out_bcorrupt(merger_auto_out_bcorrupt),
    .auto_out_c_ready(merger_auto_out_c_ready),
    .auto_out_c_valid(merger_auto_out_c_valid),
    .auto_out_c_bits_opcode(merger_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(merger_auto_out_c_bits_param),
    .auto_out_c_bits_size(merger_auto_out_c_bits_size),
    .auto_out_c_bits_source(merger_auto_out_c_bits_source),
    .auto_out_c_bits_address(merger_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(merger_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(merger_auto_out_c_bits_data),
    .auto_out_d_ready(merger_auto_out_d_ready),
    .auto_out_d_valid(merger_auto_out_d_valid),
    .auto_out_d_bits_opcode(merger_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(merger_auto_out_d_bits_param),
    .auto_out_d_bits_size(merger_auto_out_d_bits_size),
    .auto_out_d_bits_source(merger_auto_out_d_bits_source),
    .auto_out_d_bits_sink(merger_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(merger_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(merger_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(merger_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(merger_auto_out_d_bits_corrupt),
    .auto_out_e_ready(merger_auto_out_e_ready),
    .auto_out_e_valid(merger_auto_out_e_valid),
    .auto_out_e_bits_sink(merger_auto_out_e_bits_sink)
  );
  TLXbar_9 xbar_2 ( // @[Xbar.scala 142:26]
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
    .auto_in_1_bready(xbar_2_auto_in_1_bready),
    .auto_in_1_bvalid(xbar_2_auto_in_1_bvalid),
    .auto_in_1_bopcode(xbar_2_auto_in_1_bopcode),
    .auto_in_1_bparam(xbar_2_auto_in_1_bparam),
    .auto_in_1_bsize(xbar_2_auto_in_1_bsize),
    .auto_in_1_bsource(xbar_2_auto_in_1_bsource),
    .auto_in_1_baddress(xbar_2_auto_in_1_baddress),
    .auto_in_1_bmask(xbar_2_auto_in_1_bmask),
    .auto_in_1_bdata(xbar_2_auto_in_1_bdata),
    .auto_in_1_bcorrupt(xbar_2_auto_in_1_bcorrupt),
    .auto_in_1_c_ready(xbar_2_auto_in_1_c_ready),
    .auto_in_1_c_valid(xbar_2_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(xbar_2_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(xbar_2_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(xbar_2_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(xbar_2_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(xbar_2_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_echo_blockisdirty(xbar_2_auto_in_1_c_bits_echo_blockisdirty),
    .auto_in_1_c_bits_data(xbar_2_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(xbar_2_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_2_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_2_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(xbar_2_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(xbar_2_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(xbar_2_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(xbar_2_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(xbar_2_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_echo_blockisdirty(xbar_2_auto_in_1_d_bits_echo_blockisdirty),
    .auto_in_1_d_bits_data(xbar_2_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(xbar_2_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_ready(xbar_2_auto_in_1_e_ready),
    .auto_in_1_e_valid(xbar_2_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(xbar_2_auto_in_1_e_bits_sink),
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
    .auto_in_0_bopcode(xbar_2_auto_in_0_bopcode),
    .auto_in_0_bparam(xbar_2_auto_in_0_bparam),
    .auto_in_0_bsize(xbar_2_auto_in_0_bsize),
    .auto_in_0_bsource(xbar_2_auto_in_0_bsource),
    .auto_in_0_baddress(xbar_2_auto_in_0_baddress),
    .auto_in_0_bmask(xbar_2_auto_in_0_bmask),
    .auto_in_0_bdata(xbar_2_auto_in_0_bdata),
    .auto_in_0_bcorrupt(xbar_2_auto_in_0_bcorrupt),
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
    .auto_in_0_e_ready(xbar_2_auto_in_0_e_ready),
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
    .auto_out_bopcode(xbar_2_auto_out_bopcode),
    .auto_out_bparam(xbar_2_auto_out_bparam),
    .auto_out_bsize(xbar_2_auto_out_bsize),
    .auto_out_bsource(xbar_2_auto_out_bsource),
    .auto_out_baddress(xbar_2_auto_out_baddress),
    .auto_out_bmask(xbar_2_auto_out_bmask),
    .auto_out_bdata(xbar_2_auto_out_bdata),
    .auto_out_bcorrupt(xbar_2_auto_out_bcorrupt),
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
    .auto_out_e_ready(xbar_2_auto_out_e_ready),
    .auto_out_e_valid(xbar_2_auto_out_e_valid),
    .auto_out_e_bits_sink(xbar_2_auto_out_e_bits_sink)
  );
  TLBuffer_21 buffers ( // @[Buffer.scala 73:47]
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
    .auto_in_d_bits_source(buffers_auto_in_d_bits_source),
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
    .auto_out_d_bits_source(buffers_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_auto_out_d_bits_data)
  );
  TLBuffer_21 buffers_1 ( // @[Buffer.scala 73:47]
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
    .auto_in_d_bits_source(buffers_1_auto_in_d_bits_source),
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
    .auto_out_d_bits_source(buffers_1_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_1_auto_out_d_bits_data)
  );
  TLBuffer_23 buffers_2 ( // @[Buffer.scala 73:47]
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
    .auto_out_d_bits_data(buffers_2_auto_out_d_bits_data)
  );
  TLBuffer_23 buffers_3 ( // @[Buffer.scala 73:47]
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
    .auto_out_d_bits_data(buffers_3_auto_out_d_bits_data)
  );
  TLBuffer_16 buffers_4 ( // @[Buffer.scala 73:47]
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
  TLBuffer_2 buffer ( // @[Buffer.scala 68:28]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data)
  );
  assign auto_buffers_in_1_a_ready = buffers_3_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_1_d_valid = buffers_3_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_1_d_bits_opcode = buffers_3_auto_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_1_d_bits_data = buffers_3_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_a_ready = buffers_1_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_d_valid = buffers_1_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_d_bits_source = buffers_1_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_d_bits_data = buffers_1_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_a_ready = binder_auto_in_1_a_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bvalid = binder_auto_in_1_bvalid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bopcode = binder_auto_in_1_bopcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bparam = binder_auto_in_1_bparam; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bsize = binder_auto_in_1_bsize; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bsource = binder_auto_in_1_bsource; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_baddress = binder_auto_in_1_baddress; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bmask = binder_auto_in_1_bmask; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bdata = binder_auto_in_1_bdata; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bcorrupt = binder_auto_in_1_bcorrupt; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_c_ready = binder_auto_in_1_c_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_valid = binder_auto_in_1_d_valid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_opcode = binder_auto_in_1_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_param = binder_auto_in_1_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_size = binder_auto_in_1_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_source = binder_auto_in_1_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_sink = binder_auto_in_1_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_denied = binder_auto_in_1_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_echo_blockisdirty = binder_auto_in_1_d_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_data = binder_auto_in_1_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_corrupt = binder_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_e_ready = binder_auto_in_1_e_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_a_ready = binder_auto_in_0_a_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bvalid = binder_auto_in_0_bvalid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bopcode = binder_auto_in_0_bopcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bparam = binder_auto_in_0_bparam; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bsize = binder_auto_in_0_bsize; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bsource = binder_auto_in_0_bsource; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_baddress = binder_auto_in_0_baddress; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bmask = binder_auto_in_0_bmask; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bdata = binder_auto_in_0_bdata; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bcorrupt = binder_auto_in_0_bcorrupt; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_c_ready = binder_auto_in_0_c_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_valid = binder_auto_in_0_d_valid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_opcode = binder_auto_in_0_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_param = binder_auto_in_0_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_size = binder_auto_in_0_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_source = binder_auto_in_0_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_sink = binder_auto_in_0_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_denied = binder_auto_in_0_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_echo_blockisdirty = binder_auto_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_data = binder_auto_in_0_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_corrupt = binder_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_e_ready = binder_auto_in_0_e_ready; // @[LazyModule.scala 309:16]
  assign auto_beu_int_out_0 = beu_auto_int_out_0; // @[LazyModule.scala 311:12]
  assign auto_xbar_in_2_a_ready = xbar_auto_in_2_a_ready; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_2_d_valid = xbar_auto_in_2_d_valid; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_2_d_bits_opcode = xbar_auto_in_2_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_2_d_bits_size = xbar_auto_in_2_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_2_d_bits_source = xbar_auto_in_2_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_2_d_bits_data = xbar_auto_in_2_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_1_a_ready = xbar_auto_in_1_a_ready; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_1_d_valid = xbar_auto_in_1_d_valid; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_1_d_bits_opcode = xbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_1_d_bits_source = xbar_auto_in_1_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_1_d_bits_data = xbar_auto_in_1_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_1_d_bits_corrupt = xbar_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_a_ready = xbar_auto_in_0_a_ready; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bvalid = xbar_auto_in_0_bvalid; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bopcode = xbar_auto_in_0_bopcode; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bparam = xbar_auto_in_0_bparam; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bsize = xbar_auto_in_0_bsize; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bsource = xbar_auto_in_0_bsource; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_baddress = xbar_auto_in_0_baddress; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bmask = xbar_auto_in_0_bmask; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_bdata = xbar_auto_in_0_bdata; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_c_ready = xbar_auto_in_0_c_ready; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_valid = xbar_auto_in_0_d_valid; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_opcode = xbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_param = xbar_auto_in_0_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_size = xbar_auto_in_0_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_source = xbar_auto_in_0_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_sink = xbar_auto_in_0_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_denied = xbar_auto_in_0_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_data = xbar_auto_in_0_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_d_bits_corrupt = xbar_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 309:16]
  assign auto_xbar_in_0_e_ready = xbar_auto_in_0_e_ready; // @[LazyModule.scala 309:16]
  assign auto_xbar_out_1_a_valid = xbar_auto_out_1_a_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_opcode = xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_param = xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_size = xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_source = xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_address = xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_user_vaddr = xbar_auto_out_1_a_bits_user_vaddr; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_user_reqSource = xbar_auto_out_1_a_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_user_needHint = xbar_auto_out_1_a_bits_user_needHint; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_mask = xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_data = xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_a_bits_corrupt = xbar_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_bready = xbar_auto_out_1_bready; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_valid = xbar_auto_out_1_c_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_opcode = xbar_auto_out_1_c_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_param = xbar_auto_out_1_c_bits_param; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_size = xbar_auto_out_1_c_bits_size; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_source = xbar_auto_out_1_c_bits_source; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_address = xbar_auto_out_1_c_bits_address; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_user_vaddr = xbar_auto_out_1_c_bits_user_vaddr; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_user_reqSource = xbar_auto_out_1_c_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_user_needHint = xbar_auto_out_1_c_bits_user_needHint; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_data = xbar_auto_out_1_c_bits_data; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_c_bits_corrupt = xbar_auto_out_1_c_bits_corrupt; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_d_ready = xbar_auto_out_1_d_ready; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_e_valid = xbar_auto_out_1_e_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_1_e_bits_sink = xbar_auto_out_1_e_bits_sink; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_valid = xbar_auto_out_0_a_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_opcode = xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_param = xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_size = xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_source = xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_address = xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_user_vaddr = xbar_auto_out_0_a_bits_user_vaddr; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_user_reqSource = xbar_auto_out_0_a_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_user_needHint = xbar_auto_out_0_a_bits_user_needHint; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_mask = xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_data = xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_a_bits_corrupt = xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_bready = xbar_auto_out_0_bready; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_valid = xbar_auto_out_0_c_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_opcode = xbar_auto_out_0_c_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_param = xbar_auto_out_0_c_bits_param; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_size = xbar_auto_out_0_c_bits_size; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_source = xbar_auto_out_0_c_bits_source; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_address = xbar_auto_out_0_c_bits_address; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_user_vaddr = xbar_auto_out_0_c_bits_user_vaddr; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_user_reqSource = xbar_auto_out_0_c_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_user_needHint = xbar_auto_out_0_c_bits_user_needHint; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_data = xbar_auto_out_0_c_bits_data; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_c_bits_corrupt = xbar_auto_out_0_c_bits_corrupt; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_d_ready = xbar_auto_out_0_d_ready; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_e_valid = xbar_auto_out_0_e_valid; // @[LazyModule.scala 311:12]
  assign auto_xbar_out_0_e_bits_sink = xbar_auto_out_0_e_bits_sink; // @[LazyModule.scala 311:12]
  assign auto_memory_port_out_a_valid = merger_auto_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_opcode = merger_auto_out_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_param = merger_auto_out_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_size = merger_auto_out_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_source = merger_auto_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_address = merger_auto_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_mask = merger_auto_out_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_data = merger_auto_out_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_bready = merger_auto_out_bready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_valid = merger_auto_out_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_opcode = merger_auto_out_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_param = merger_auto_out_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_size = merger_auto_out_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_source = merger_auto_out_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_address = merger_auto_out_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_echo_blockisdirty = merger_auto_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_data = merger_auto_out_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_d_ready = merger_auto_out_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_e_valid = merger_auto_out_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_e_bits_sink = merger_auto_out_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_valid = buffer_auto_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_size = buffer_auto_out_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_source = buffer_auto_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_address = buffer_auto_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_data = buffer_auto_out_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_d_ready = buffer_auto_out_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign xbar_clock = clock;
  assign xbar_reset = reset;
  assign xbar_auto_in_2_a_valid = auto_xbar_in_2_a_valid; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_opcode = auto_xbar_in_2_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_param = auto_xbar_in_2_a_bits_param; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_size = auto_xbar_in_2_a_bits_size; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_source = auto_xbar_in_2_a_bits_source; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_address = auto_xbar_in_2_a_bits_address; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_user_reqSource = auto_xbar_in_2_a_bits_user_reqSource; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_mask = auto_xbar_in_2_a_bits_mask; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_data = auto_xbar_in_2_a_bits_data; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_a_bits_corrupt = auto_xbar_in_2_a_bits_corrupt; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_2_d_ready = auto_xbar_in_2_d_ready; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_valid = auto_xbar_in_1_a_valid; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_bits_opcode = auto_xbar_in_1_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_bits_size = auto_xbar_in_1_a_bits_size; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_bits_source = auto_xbar_in_1_a_bits_source; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_bits_address = auto_xbar_in_1_a_bits_address; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_bits_user_reqSource = auto_xbar_in_1_a_bits_user_reqSource; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_1_a_bits_mask = auto_xbar_in_1_a_bits_mask; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_valid = auto_xbar_in_0_a_valid; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_opcode = auto_xbar_in_0_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_param = auto_xbar_in_0_a_bits_param; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_size = auto_xbar_in_0_a_bits_size; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_source = auto_xbar_in_0_a_bits_source; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_address = auto_xbar_in_0_a_bits_address; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_user_vaddr = auto_xbar_in_0_a_bits_user_vaddr; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_user_reqSource = auto_xbar_in_0_a_bits_user_reqSource; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_user_needHint = auto_xbar_in_0_a_bits_user_needHint; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_mask = auto_xbar_in_0_a_bits_mask; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_data = auto_xbar_in_0_a_bits_data; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_a_bits_corrupt = auto_xbar_in_0_a_bits_corrupt; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_bready = auto_xbar_in_0_bready; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_valid = auto_xbar_in_0_c_valid; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_opcode = auto_xbar_in_0_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_param = auto_xbar_in_0_c_bits_param; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_size = auto_xbar_in_0_c_bits_size; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_source = auto_xbar_in_0_c_bits_source; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_address = auto_xbar_in_0_c_bits_address; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_user_vaddr = auto_xbar_in_0_c_bits_user_vaddr; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_user_reqSource = auto_xbar_in_0_c_bits_user_reqSource; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_user_needHint = auto_xbar_in_0_c_bits_user_needHint; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_data = auto_xbar_in_0_c_bits_data; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_c_bits_corrupt = auto_xbar_in_0_c_bits_corrupt; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_d_ready = auto_xbar_in_0_d_ready; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_e_valid = auto_xbar_in_0_e_valid; // @[LazyModule.scala 309:16]
  assign xbar_auto_in_0_e_bits_sink = auto_xbar_in_0_e_bits_sink; // @[LazyModule.scala 309:16]
  assign xbar_auto_out_1_a_ready = auto_xbar_out_1_a_ready; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bvalid = auto_xbar_out_1_bvalid; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bopcode = auto_xbar_out_1_bopcode; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bparam = auto_xbar_out_1_bparam; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bsize = auto_xbar_out_1_bsize; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bsource = auto_xbar_out_1_bsource; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_baddress = auto_xbar_out_1_baddress; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bmask = auto_xbar_out_1_bmask; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_bdata = auto_xbar_out_1_bdata; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_c_ready = auto_xbar_out_1_c_ready; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_valid = auto_xbar_out_1_d_valid; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_opcode = auto_xbar_out_1_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_param = auto_xbar_out_1_d_bits_param; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_size = auto_xbar_out_1_d_bits_size; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_source = auto_xbar_out_1_d_bits_source; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_sink = auto_xbar_out_1_d_bits_sink; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_denied = auto_xbar_out_1_d_bits_denied; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_data = auto_xbar_out_1_d_bits_data; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_d_bits_corrupt = auto_xbar_out_1_d_bits_corrupt; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_1_e_ready = auto_xbar_out_1_e_ready; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_a_ready = auto_xbar_out_0_a_ready; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bvalid = auto_xbar_out_0_bvalid; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bopcode = auto_xbar_out_0_bopcode; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bparam = auto_xbar_out_0_bparam; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bsize = auto_xbar_out_0_bsize; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bsource = auto_xbar_out_0_bsource; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_baddress = auto_xbar_out_0_baddress; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bmask = auto_xbar_out_0_bmask; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_bdata = auto_xbar_out_0_bdata; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_c_ready = auto_xbar_out_0_c_ready; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_valid = auto_xbar_out_0_d_valid; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_opcode = auto_xbar_out_0_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_param = auto_xbar_out_0_d_bits_param; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_size = auto_xbar_out_0_d_bits_size; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_source = auto_xbar_out_0_d_bits_source; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_sink = auto_xbar_out_0_d_bits_sink; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_denied = auto_xbar_out_0_d_bits_denied; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_data = auto_xbar_out_0_d_bits_data; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_d_bits_corrupt = auto_xbar_out_0_d_bits_corrupt; // @[LazyModule.scala 311:12]
  assign xbar_auto_out_0_e_ready = auto_xbar_out_0_e_ready; // @[LazyModule.scala 311:12]
  assign xbar_1_clock = clock;
  assign xbar_1_reset = reset;
  assign xbar_1_auto_in_1_a_valid = buffers_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_opcode = buffers_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_size = buffers_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_source = buffers_2_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_address = buffers_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_mask = buffers_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_a_bits_data = buffers_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_1_d_ready = buffers_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_valid = buffers_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_opcode = buffers_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_size = buffers_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_source = buffers_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_address = buffers_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_mask = buffers_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_a_bits_data = buffers_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_in_0_d_ready = buffers_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_1_auto_out_1_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_1_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_a_ready = buffers_4_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_valid = buffers_4_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_opcode = buffers_4_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_source = buffers_4_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_1_auto_out_0_d_bits_data = buffers_4_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign beu_clock = clock;
  assign beu_reset = reset;
  assign beu_auto_in_a_valid = buffers_4_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_opcode = buffers_4_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_size = buffers_4_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_source = buffers_4_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_address = buffers_4_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_mask = buffers_4_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_data = buffers_4_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign beu_auto_in_d_ready = buffers_4_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign beu_io_errors_icache_ecc_error_valid = beu_errors_icache_ecc_error_valid; // @[XSTile.scala 87:26]
  assign beu_io_errors_icache_ecc_error_bits = beu_errors_icache_ecc_error_bits; // @[XSTile.scala 87:26]
  assign beu_io_errors_dcache_ecc_error_valid = beu_errors_dcache_ecc_error_valid; // @[XSTile.scala 87:26]
  assign beu_io_errors_dcache_ecc_error_bits = beu_errors_dcache_ecc_error_bits; // @[XSTile.scala 87:26]
  assign binder_auto_in_1_a_valid = auto_binder_in_1_a_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_opcode = auto_binder_in_1_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_param = auto_binder_in_1_a_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_size = auto_binder_in_1_a_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_source = auto_binder_in_1_a_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_address = auto_binder_in_1_a_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_mask = auto_binder_in_1_a_bits_mask; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_data = auto_binder_in_1_a_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_bready = auto_binder_in_1_bready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_valid = auto_binder_in_1_c_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_opcode = auto_binder_in_1_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_param = auto_binder_in_1_c_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_size = auto_binder_in_1_c_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_source = auto_binder_in_1_c_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_address = auto_binder_in_1_c_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_echo_blockisdirty = auto_binder_in_1_c_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_data = auto_binder_in_1_c_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_d_ready = auto_binder_in_1_d_ready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_e_valid = auto_binder_in_1_e_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_e_bits_sink = auto_binder_in_1_e_bits_sink; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_valid = auto_binder_in_0_a_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_opcode = auto_binder_in_0_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_param = auto_binder_in_0_a_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_size = auto_binder_in_0_a_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_source = auto_binder_in_0_a_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_address = auto_binder_in_0_a_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_mask = auto_binder_in_0_a_bits_mask; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_data = auto_binder_in_0_a_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_bready = auto_binder_in_0_bready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_valid = auto_binder_in_0_c_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_opcode = auto_binder_in_0_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_param = auto_binder_in_0_c_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_size = auto_binder_in_0_c_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_source = auto_binder_in_0_c_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_address = auto_binder_in_0_c_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_echo_blockisdirty = auto_binder_in_0_c_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_data = auto_binder_in_0_c_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_d_ready = auto_binder_in_0_d_ready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_e_valid = auto_binder_in_0_e_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_e_bits_sink = auto_binder_in_0_e_bits_sink; // @[LazyModule.scala 309:16]
  assign binder_auto_out_1_a_ready = xbar_2_auto_in_1_a_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bvalid = xbar_2_auto_in_1_bvalid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bopcode = xbar_2_auto_in_1_bopcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bparam = xbar_2_auto_in_1_bparam; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bsize = xbar_2_auto_in_1_bsize; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bsource = xbar_2_auto_in_1_bsource; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_baddress = xbar_2_auto_in_1_baddress; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bmask = xbar_2_auto_in_1_bmask; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bdata = xbar_2_auto_in_1_bdata; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bcorrupt = xbar_2_auto_in_1_bcorrupt; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_c_ready = xbar_2_auto_in_1_c_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_valid = xbar_2_auto_in_1_d_valid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_opcode = xbar_2_auto_in_1_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_param = xbar_2_auto_in_1_d_bits_param; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_size = xbar_2_auto_in_1_d_bits_size; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_source = xbar_2_auto_in_1_d_bits_source; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_sink = xbar_2_auto_in_1_d_bits_sink; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_denied = xbar_2_auto_in_1_d_bits_denied; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_echo_blockisdirty = xbar_2_auto_in_1_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_data = xbar_2_auto_in_1_d_bits_data; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_corrupt = xbar_2_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_e_ready = xbar_2_auto_in_1_e_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_a_ready = xbar_2_auto_in_0_a_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bvalid = xbar_2_auto_in_0_bvalid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bopcode = xbar_2_auto_in_0_bopcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bparam = xbar_2_auto_in_0_bparam; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bsize = xbar_2_auto_in_0_bsize; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bsource = xbar_2_auto_in_0_bsource; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_baddress = xbar_2_auto_in_0_baddress; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bmask = xbar_2_auto_in_0_bmask; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bdata = xbar_2_auto_in_0_bdata; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bcorrupt = xbar_2_auto_in_0_bcorrupt; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_c_ready = xbar_2_auto_in_0_c_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_valid = xbar_2_auto_in_0_d_valid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_opcode = xbar_2_auto_in_0_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_param = xbar_2_auto_in_0_d_bits_param; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_size = xbar_2_auto_in_0_d_bits_size; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_source = xbar_2_auto_in_0_d_bits_source; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_sink = xbar_2_auto_in_0_d_bits_sink; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_denied = xbar_2_auto_in_0_d_bits_denied; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_echo_blockisdirty = xbar_2_auto_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_data = xbar_2_auto_in_0_d_bits_data; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_corrupt = xbar_2_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_e_ready = xbar_2_auto_in_0_e_ready; // @[LazyModule.scala 298:16]
  assign merger_auto_in_a_valid = xbar_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_opcode = xbar_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_param = xbar_2_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_size = xbar_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_source = xbar_2_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_address = xbar_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_mask = xbar_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_data = xbar_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_bready = xbar_2_auto_out_bready; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_valid = xbar_2_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_opcode = xbar_2_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_param = xbar_2_auto_out_c_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_size = xbar_2_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_source = xbar_2_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_address = xbar_2_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_echo_blockisdirty = xbar_2_auto_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_data = xbar_2_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_d_ready = xbar_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_in_e_valid = xbar_2_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_e_bits_sink = xbar_2_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign merger_auto_out_a_ready = auto_memory_port_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bvalid = auto_memory_port_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bopcode = auto_memory_port_out_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bparam = auto_memory_port_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bsize = auto_memory_port_out_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_baddress = auto_memory_port_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bmask = auto_memory_port_out_bmask; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bdata = auto_memory_port_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_bcorrupt = auto_memory_port_out_bcorrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_c_ready = auto_memory_port_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_valid = auto_memory_port_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_opcode = auto_memory_port_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_param = auto_memory_port_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_size = auto_memory_port_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_source = auto_memory_port_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_sink = auto_memory_port_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_denied = auto_memory_port_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_echo_blockisdirty = auto_memory_port_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_data = auto_memory_port_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_d_bits_corrupt = auto_memory_port_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign merger_auto_out_e_ready = auto_memory_port_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign xbar_2_clock = clock;
  assign xbar_2_reset = reset;
  assign xbar_2_auto_in_1_a_valid = binder_auto_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_opcode = binder_auto_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_param = binder_auto_out_1_a_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_size = binder_auto_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_source = binder_auto_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_address = binder_auto_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_mask = binder_auto_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_data = binder_auto_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_bready = binder_auto_out_1_bready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_valid = binder_auto_out_1_c_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_opcode = binder_auto_out_1_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_param = binder_auto_out_1_c_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_size = binder_auto_out_1_c_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_source = binder_auto_out_1_c_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_address = binder_auto_out_1_c_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_echo_blockisdirty = binder_auto_out_1_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_data = binder_auto_out_1_c_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_d_ready = binder_auto_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_e_valid = binder_auto_out_1_e_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_e_bits_sink = binder_auto_out_1_e_bits_sink; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_valid = binder_auto_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_opcode = binder_auto_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_param = binder_auto_out_0_a_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_size = binder_auto_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_source = binder_auto_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_address = binder_auto_out_0_a_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_mask = binder_auto_out_0_a_bits_mask; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_data = binder_auto_out_0_a_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_bready = binder_auto_out_0_bready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_valid = binder_auto_out_0_c_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_opcode = binder_auto_out_0_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_param = binder_auto_out_0_c_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_size = binder_auto_out_0_c_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_source = binder_auto_out_0_c_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_address = binder_auto_out_0_c_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_echo_blockisdirty = binder_auto_out_0_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_data = binder_auto_out_0_c_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_d_ready = binder_auto_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_e_valid = binder_auto_out_0_e_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_e_bits_sink = binder_auto_out_0_e_bits_sink; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_out_a_ready = merger_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bvalid = merger_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bopcode = merger_auto_in_bopcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bparam = merger_auto_in_bparam; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bsize = merger_auto_in_bsize; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bsource = merger_auto_in_bsource; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_baddress = merger_auto_in_baddress; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bmask = merger_auto_in_bmask; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bdata = merger_auto_in_bdata; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bcorrupt = merger_auto_in_bcorrupt; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_c_ready = merger_auto_in_c_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_valid = merger_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_opcode = merger_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_param = merger_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_size = merger_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_source = merger_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_sink = merger_auto_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_denied = merger_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_echo_blockisdirty = merger_auto_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_data = merger_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_corrupt = merger_auto_in_d_bits_corrupt; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_e_ready = merger_auto_in_e_ready; // @[LazyModule.scala 296:16]
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
  assign buffers_auto_out_a_ready = xbar_1_auto_in_0_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_valid = xbar_1_auto_in_0_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_source = 1'h0; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_d_bits_data = xbar_1_auto_in_0_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_1_clock = clock;
  assign buffers_1_reset = reset;
  assign buffers_1_auto_in_a_valid = auto_buffers_in_0_a_valid; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_a_bits_opcode = 3'h4; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_a_bits_size = 3'h3; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_a_bits_source = 1'h0; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_a_bits_address = auto_buffers_in_0_a_bits_address; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_a_bits_mask = 8'hff; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_a_bits_data = 64'h0; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_in_d_ready = auto_buffers_in_0_d_ready; // @[LazyModule.scala 309:16]
  assign buffers_1_auto_out_a_ready = buffers_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_valid = buffers_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_source = buffers_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_data = buffers_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
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
  assign buffers_2_auto_out_a_ready = xbar_1_auto_in_1_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_valid = xbar_1_auto_in_1_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_opcode = xbar_1_auto_in_1_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_data = xbar_1_auto_in_1_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_3_clock = clock;
  assign buffers_3_reset = reset;
  assign buffers_3_auto_in_a_valid = auto_buffers_in_1_a_valid; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_opcode = auto_buffers_in_1_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_size = auto_buffers_in_1_a_bits_size; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_source = auto_buffers_in_1_a_bits_source; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_address = auto_buffers_in_1_a_bits_address; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_mask = auto_buffers_in_1_a_bits_mask; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_data = auto_buffers_in_1_a_bits_data; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_d_ready = auto_buffers_in_1_d_ready; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_out_a_ready = buffers_2_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_valid = buffers_2_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_opcode = buffers_2_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_data = buffers_2_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_4_clock = clock;
  assign buffers_4_reset = reset;
  assign buffers_4_auto_in_a_valid = xbar_1_auto_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_a_bits_opcode = xbar_1_auto_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_a_bits_size = xbar_1_auto_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_a_bits_source = xbar_1_auto_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_a_bits_address = xbar_1_auto_out_0_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_a_bits_mask = xbar_1_auto_out_0_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_a_bits_data = xbar_1_auto_out_0_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_in_d_ready = xbar_1_auto_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign buffers_4_auto_out_a_ready = beu_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_valid = beu_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_opcode = beu_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_size = beu_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_source = beu_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_data = beu_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = xbar_1_auto_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_opcode = xbar_1_auto_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_size = xbar_1_auto_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_source = xbar_1_auto_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_address = xbar_1_auto_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_mask = xbar_1_auto_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_data = xbar_1_auto_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_d_ready = xbar_1_auto_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_a_ready = auto_mmio_port_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_valid = auto_mmio_port_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_opcode = auto_mmio_port_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_size = auto_mmio_port_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_source = auto_mmio_port_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_data = auto_mmio_port_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule

