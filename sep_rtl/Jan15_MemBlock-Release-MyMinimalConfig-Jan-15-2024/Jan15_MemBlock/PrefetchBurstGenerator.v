module PrefetchBurstGenerator(
  output [38:0] io_prefetch_req_0_bits_vaddr,
  output [38:0] io_prefetch_req_1_bits_vaddr
);
  wire [38:0] spb_deq_arb0_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [38:0] spb_deq_arb0_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [38:0] spb_deq_arb1_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [38:0] spb_deq_arb1_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  Arbiter_37 spb_deq_arb0_arb ( // @[DCacheWrapper.scala 250:21]
    .io_in_1_bits_vaddr(spb_deq_arb0_arb_io_in_1_bits_vaddr),
    .io_out_bits_vaddr(spb_deq_arb0_arb_io_out_bits_vaddr)
  );
  Arbiter_37 spb_deq_arb1_arb ( // @[DCacheWrapper.scala 250:21]
    .io_in_1_bits_vaddr(spb_deq_arb1_arb_io_in_1_bits_vaddr),
    .io_out_bits_vaddr(spb_deq_arb1_arb_io_out_bits_vaddr)
  );
  assign io_prefetch_req_0_bits_vaddr = spb_deq_arb0_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 255:9]
  assign io_prefetch_req_1_bits_vaddr = spb_deq_arb1_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 255:9]
  assign spb_deq_arb0_arb_io_in_1_bits_vaddr = 39'h0; // @[StorePrefetchBursts.scala 123:27 128:32]
  assign spb_deq_arb1_arb_io_in_1_bits_vaddr = 39'h40; // @[StorePrefetchBursts.scala 115:29]
endmodule

