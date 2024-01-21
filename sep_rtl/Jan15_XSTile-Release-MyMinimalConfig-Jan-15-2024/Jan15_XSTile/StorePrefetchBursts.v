module StorePrefetchBursts(
  output [38:0] io_prefetch_req_0_bits_vaddr,
  output [38:0] io_prefetch_req_1_bits_vaddr
);
  wire [38:0] burst_engine_io_prefetch_req_0_bits_vaddr; // @[StorePrefetchBursts.scala 170:28]
  wire [38:0] burst_engine_io_prefetch_req_1_bits_vaddr; // @[StorePrefetchBursts.scala 170:28]
  PrefetchBurstGenerator burst_engine ( // @[StorePrefetchBursts.scala 170:28]
    .io_prefetch_req_0_bits_vaddr(burst_engine_io_prefetch_req_0_bits_vaddr),
    .io_prefetch_req_1_bits_vaddr(burst_engine_io_prefetch_req_1_bits_vaddr)
  );
  assign io_prefetch_req_0_bits_vaddr = burst_engine_io_prefetch_req_0_bits_vaddr; // @[StorePrefetchBursts.scala 195:32]
  assign io_prefetch_req_1_bits_vaddr = burst_engine_io_prefetch_req_1_bits_vaddr; // @[StorePrefetchBursts.scala 195:32]
endmodule

