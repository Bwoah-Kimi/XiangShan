module InstrUncache(
  input         clock,
  input         reset,
  input         auto_client_out_a_ready,
  output        auto_client_out_a_valid,
  output [35:0] auto_client_out_a_bits_address,
  output        auto_client_out_d_ready,
  input         auto_client_out_d_valid,
  input         auto_client_out_d_bits_source,
  input  [63:0] auto_client_out_d_bits_data,
  output        io_req_ready,
  input         io_req_valid,
  input  [35:0] io_req_bits_addr,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data
);
  wire  resp_arb_io_in_0_valid; // @[InstrUncache.scala 165:24]
  wire [31:0] resp_arb_io_in_0_bits_data; // @[InstrUncache.scala 165:24]
  wire  resp_arb_io_out_valid; // @[InstrUncache.scala 165:24]
  wire [31:0] resp_arb_io_out_bits_data; // @[InstrUncache.scala 165:24]
  wire  entries_0_clock; // @[InstrUncache.scala 184:23]
  wire  entries_0_reset; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_req_ready; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_req_valid; // @[InstrUncache.scala 184:23]
  wire [35:0] entries_0_io_req_bits_addr; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_resp_valid; // @[InstrUncache.scala 184:23]
  wire [31:0] entries_0_io_resp_bits_data; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_mmio_acquire_ready; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_mmio_acquire_valid; // @[InstrUncache.scala 184:23]
  wire [35:0] entries_0_io_mmio_acquire_bits_address; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_mmio_grant_ready; // @[InstrUncache.scala 184:23]
  wire  entries_0_io_mmio_grant_valid; // @[InstrUncache.scala 184:23]
  wire [63:0] entries_0_io_mmio_grant_bits_data; // @[InstrUncache.scala 184:23]
  Arbiter resp_arb ( // @[InstrUncache.scala 165:24]
    .io_in_0_valid(resp_arb_io_in_0_valid),
    .io_in_0_bits_data(resp_arb_io_in_0_bits_data),
    .io_out_valid(resp_arb_io_out_valid),
    .io_out_bits_data(resp_arb_io_out_bits_data)
  );
  InstrMMIOEntry entries_0 ( // @[InstrUncache.scala 184:23]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_req_ready(entries_0_io_req_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_resp_valid(entries_0_io_resp_valid),
    .io_resp_bits_data(entries_0_io_resp_bits_data),
    .io_mmio_acquire_ready(entries_0_io_mmio_acquire_ready),
    .io_mmio_acquire_valid(entries_0_io_mmio_acquire_valid),
    .io_mmio_acquire_bits_address(entries_0_io_mmio_acquire_bits_address),
    .io_mmio_grant_ready(entries_0_io_mmio_grant_ready),
    .io_mmio_grant_valid(entries_0_io_mmio_grant_valid),
    .io_mmio_grant_bits_data(entries_0_io_mmio_grant_bits_data)
  );
  assign auto_client_out_a_valid = entries_0_io_mmio_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  assign auto_client_out_a_bits_address = entries_0_io_mmio_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  assign auto_client_out_d_ready = ~auto_client_out_d_bits_source & entries_0_io_mmio_grant_ready; // @[InstrUncache.scala 179:15 201:43 202:27]
  assign io_req_ready = entries_0_io_req_ready; // @[InstrUncache.scala 192:36 193:17]
  assign io_resp_valid = resp_arb_io_out_valid; // @[InstrUncache.scala 210:17]
  assign io_resp_bits_data = resp_arb_io_out_bits_data; // @[InstrUncache.scala 210:17]
  assign resp_arb_io_in_0_valid = entries_0_io_resp_valid; // @[InstrUncache.scala 197:23]
  assign resp_arb_io_in_0_bits_data = entries_0_io_resp_bits_data; // @[InstrUncache.scala 197:23]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_req_valid = io_req_valid; // @[InstrUncache.scala 190:53]
  assign entries_0_io_req_bits_addr = io_req_bits_addr; // @[InstrUncache.scala 191:24]
  assign entries_0_io_mmio_acquire_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign entries_0_io_mmio_grant_valid = ~auto_client_out_d_bits_source & auto_client_out_d_valid; // @[InstrUncache.scala 201:43 202:27 199:31]
  assign entries_0_io_mmio_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule

