module L2TlbMissQueue(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  output        io_in_ready,
  input         io_in_valid,
  input  [26:0] io_in_bits_vpn,
  input  [1:0]  io_in_bits_source,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_vpn,
  output [1:0]  io_out_bits_source
);
  wire  io_out_q_clock; // @[Decoupled.scala 361:21]
  wire  io_out_q_reset; // @[Decoupled.scala 361:21]
  wire  io_out_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  io_out_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [26:0] io_out_q_io_enq_bits_vpn; // @[Decoupled.scala 361:21]
  wire [1:0] io_out_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire  io_out_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  io_out_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [26:0] io_out_q_io_deq_bits_vpn; // @[Decoupled.scala 361:21]
  wire [1:0] io_out_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire  io_out_q_io_flush; // @[Decoupled.scala 361:21]
  Queue_142 io_out_q ( // @[Decoupled.scala 361:21]
    .clock(io_out_q_clock),
    .reset(io_out_q_reset),
    .io_enq_ready(io_out_q_io_enq_ready),
    .io_enq_valid(io_out_q_io_enq_valid),
    .io_enq_bits_vpn(io_out_q_io_enq_bits_vpn),
    .io_enq_bits_source(io_out_q_io_enq_bits_source),
    .io_deq_ready(io_out_q_io_deq_ready),
    .io_deq_valid(io_out_q_io_deq_valid),
    .io_deq_bits_vpn(io_out_q_io_deq_bits_vpn),
    .io_deq_bits_source(io_out_q_io_deq_bits_source),
    .io_flush(io_out_q_io_flush)
  );
  assign io_in_ready = io_out_q_io_enq_ready; // @[Decoupled.scala 365:17]
  assign io_out_valid = io_out_q_io_deq_valid; // @[L2TLBMissQueue.scala 45:10]
  assign io_out_bits_vpn = io_out_q_io_deq_bits_vpn; // @[L2TLBMissQueue.scala 45:10]
  assign io_out_bits_source = io_out_q_io_deq_bits_source; // @[L2TLBMissQueue.scala 45:10]
  assign io_out_q_clock = clock;
  assign io_out_q_reset = reset;
  assign io_out_q_io_enq_valid = io_in_valid; // @[Decoupled.scala 363:22]
  assign io_out_q_io_enq_bits_vpn = io_in_bits_vpn; // @[Decoupled.scala 364:21]
  assign io_out_q_io_enq_bits_source = io_in_bits_source; // @[Decoupled.scala 364:21]
  assign io_out_q_io_deq_ready = io_out_ready; // @[L2TLBMissQueue.scala 45:10]
  assign io_out_q_io_flush = io_sfence_valid | io_csr_satp_changed; // @[L2TLBMissQueue.scala 45:70]
endmodule

