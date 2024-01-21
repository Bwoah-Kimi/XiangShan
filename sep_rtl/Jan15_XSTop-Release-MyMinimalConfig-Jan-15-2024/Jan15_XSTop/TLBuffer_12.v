module TLBuffer_12(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_param,
  input  [2:0]   auto_in_a_bits_size,
  input  [8:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  input          auto_in_bready,
  output         auto_in_bvalid,
  output [2:0]   auto_in_bopcode,
  output [1:0]   auto_in_bparam,
  output [2:0]   auto_in_bsize,
  output [35:0]  auto_in_baddress,
  output [31:0]  auto_in_bmask,
  output [255:0] auto_in_bdata,
  output         auto_in_bcorrupt,
  output         auto_in_c_ready,
  input          auto_in_c_valid,
  input  [2:0]   auto_in_c_bits_opcode,
  input  [2:0]   auto_in_c_bits_param,
  input  [2:0]   auto_in_c_bits_size,
  input  [8:0]   auto_in_c_bits_source,
  input  [35:0]  auto_in_c_bits_address,
  input          auto_in_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_c_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [1:0]   auto_in_d_bits_param,
  output [2:0]   auto_in_d_bits_size,
  output [8:0]   auto_in_d_bits_source,
  output [3:0]   auto_in_d_bits_sink,
  output         auto_in_d_bits_denied,
  output         auto_in_d_bits_echo_blockisdirty,
  output [255:0] auto_in_d_bits_data,
  output         auto_in_d_bits_corrupt,
  output         auto_in_e_ready,
  input          auto_in_e_valid,
  input  [3:0]   auto_in_e_bits_sink,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_param,
  output [2:0]   auto_out_a_bits_size,
  output [8:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_bready,
  input          auto_out_bvalid,
  input  [1:0]   auto_out_bparam,
  input  [35:0]  auto_out_baddress,
  input  [255:0] auto_out_bdata,
  input          auto_out_c_ready,
  output         auto_out_c_valid,
  output [2:0]   auto_out_c_bits_opcode,
  output [2:0]   auto_out_c_bits_param,
  output [2:0]   auto_out_c_bits_size,
  output [8:0]   auto_out_c_bits_source,
  output [35:0]  auto_out_c_bits_address,
  output         auto_out_c_bits_echo_blockisdirty,
  output [255:0] auto_out_c_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [8:0]   auto_out_d_bits_source,
  input  [3:0]   auto_out_d_bits_sink,
  input          auto_out_d_bits_denied,
  input          auto_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_d_bits_corrupt,
  output         auto_out_e_valid,
  output [3:0]   auto_out_e_bits_sink
);
  wire  bundleOut_0_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [8:0] bundleOut_0_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [8:0] bundleOut_0_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [8:0] bundleIn_0_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [8:0] bundleIn_0_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_bq_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_0_bq_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_bq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_bq_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_bq_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_bq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_0_bq_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [31:0] bundleIn_0_bq_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_bq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [8:0] bundleOut_0_c_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_c_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_c_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [8:0] bundleOut_0_c_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_c_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_c_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_e_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_e_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  Queue_119 bundleOut_0_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_a_q_clock),
    .reset(bundleOut_0_a_q_reset),
    .io_enq_ready(bundleOut_0_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_0_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_0_a_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_0_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_0_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_0_a_q_io_enq_bits_address),
    .io_enq_bits_mask(bundleOut_0_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_0_a_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_0_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_0_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_0_a_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_0_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_0_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_0_a_q_io_deq_bits_address),
    .io_deq_bits_mask(bundleOut_0_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_0_a_q_io_deq_bits_data)
  );
  Queue_120 bundleIn_0_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_d_q_clock),
    .reset(bundleIn_0_d_q_reset),
    .io_enq_ready(bundleIn_0_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_0_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_0_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_0_d_q_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_0_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_0_d_q_io_enq_bits_source),
    .io_enq_bits_sink(bundleIn_0_d_q_io_enq_bits_sink),
    .io_enq_bits_denied(bundleIn_0_d_q_io_enq_bits_denied),
    .io_enq_bits_echo_blockisdirty(bundleIn_0_d_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleIn_0_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleIn_0_d_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleIn_0_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_0_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_0_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_0_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_0_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_0_d_q_io_deq_bits_source),
    .io_deq_bits_sink(bundleIn_0_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(bundleIn_0_d_q_io_deq_bits_denied),
    .io_deq_bits_echo_blockisdirty(bundleIn_0_d_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleIn_0_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_0_d_q_io_deq_bits_corrupt)
  );
  Queue_121 bundleIn_0_bq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_bq_clock),
    .reset(bundleIn_0_bq_reset),
    .io_enq_ready(bundleIn_0_bq_io_enq_ready),
    .io_enq_valid(bundleIn_0_bq_io_enq_valid),
    .io_enq_bits_param(bundleIn_0_bq_io_enq_bits_param),
    .io_enq_bits_address(bundleIn_0_bq_io_enq_bits_address),
    .io_enq_bits_data(bundleIn_0_bq_io_enq_bits_data),
    .io_deq_ready(bundleIn_0_bq_io_deq_ready),
    .io_deq_valid(bundleIn_0_bq_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_0_bq_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_0_bq_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_0_bq_io_deq_bits_size),
    .io_deq_bits_address(bundleIn_0_bq_io_deq_bits_address),
    .io_deq_bits_mask(bundleIn_0_bq_io_deq_bits_mask),
    .io_deq_bits_data(bundleIn_0_bq_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_0_bq_io_deq_bits_corrupt)
  );
  Queue_122 bundleOut_0_c_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_c_q_clock),
    .reset(bundleOut_0_c_q_reset),
    .io_enq_ready(bundleOut_0_c_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_c_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_0_c_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_0_c_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_0_c_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_0_c_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_0_c_q_io_enq_bits_address),
    .io_enq_bits_echo_blockisdirty(bundleOut_0_c_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleOut_0_c_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_0_c_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_c_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_0_c_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_0_c_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_0_c_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_0_c_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_0_c_q_io_deq_bits_address),
    .io_deq_bits_echo_blockisdirty(bundleOut_0_c_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleOut_0_c_q_io_deq_bits_data)
  );
  Queue_123 bundleOut_0_e_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_e_q_clock),
    .reset(bundleOut_0_e_q_reset),
    .io_enq_ready(bundleOut_0_e_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_e_q_io_enq_valid),
    .io_enq_bits_sink(bundleOut_0_e_q_io_enq_bits_sink),
    .io_deq_ready(bundleOut_0_e_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_e_q_io_deq_valid),
    .io_deq_bits_sink(bundleOut_0_e_q_io_deq_bits_sink)
  );
  assign auto_in_a_ready = bundleOut_0_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_bvalid = bundleIn_0_bq_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_bopcode = bundleIn_0_bq_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_bparam = bundleIn_0_bq_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_bsize = bundleIn_0_bq_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_baddress = bundleIn_0_bq_io_deq_bits_address; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_bmask = bundleIn_0_bq_io_deq_bits_mask; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_bdata = bundleIn_0_bq_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_bcorrupt = bundleIn_0_bq_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_c_ready = bundleOut_0_c_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_d_valid = bundleIn_0_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_opcode = bundleIn_0_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_param = bundleIn_0_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_size = bundleIn_0_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_source = bundleIn_0_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_sink = bundleIn_0_d_q_io_deq_bits_sink; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_denied = bundleIn_0_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_echo_blockisdirty = bundleIn_0_d_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_data = bundleIn_0_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_corrupt = bundleIn_0_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_e_ready = bundleOut_0_e_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_out_a_valid = bundleOut_0_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_opcode = bundleOut_0_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_param = bundleOut_0_a_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_size = bundleOut_0_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_source = bundleOut_0_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_address = bundleOut_0_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_mask = bundleOut_0_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_data = bundleOut_0_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_bready = bundleIn_0_bq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_c_valid = bundleOut_0_c_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_opcode = bundleOut_0_c_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_param = bundleOut_0_c_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_size = bundleOut_0_c_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_source = bundleOut_0_c_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_address = bundleOut_0_c_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_echo_blockisdirty = bundleOut_0_c_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_c_bits_data = bundleOut_0_c_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_d_ready = bundleIn_0_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_e_valid = bundleOut_0_e_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_e_bits_sink = bundleOut_0_e_q_io_deq_bits_sink; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign bundleOut_0_a_q_clock = clock;
  assign bundleOut_0_a_q_reset = reset;
  assign bundleOut_0_a_q_io_enq_valid = auto_in_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_clock = clock;
  assign bundleIn_0_d_q_reset = reset;
  assign bundleIn_0_d_q_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_echo_blockisdirty = auto_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_deq_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_bq_clock = clock;
  assign bundleIn_0_bq_reset = reset;
  assign bundleIn_0_bq_io_enq_valid = auto_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_param = auto_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_address = auto_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_data = auto_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_deq_ready = auto_in_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_clock = clock;
  assign bundleOut_0_c_q_reset = reset;
  assign bundleOut_0_c_q_io_enq_valid = auto_in_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_param = auto_in_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_size = auto_in_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_source = auto_in_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_address = auto_in_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_echo_blockisdirty = auto_in_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_data = auto_in_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_deq_ready = auto_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_e_q_clock = clock;
  assign bundleOut_0_e_q_reset = reset;
  assign bundleOut_0_e_q_io_enq_valid = auto_in_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_e_q_io_enq_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_e_q_io_deq_ready = 1'h1; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule

