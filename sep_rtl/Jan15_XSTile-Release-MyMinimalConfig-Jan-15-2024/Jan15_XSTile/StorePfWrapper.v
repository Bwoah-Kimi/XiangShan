module StorePfWrapper(
  output [38:0] io_prefetch_req_0_bits_vaddr,
  output [38:0] io_prefetch_req_1_bits_vaddr
);
  wire [38:0] spb_io_prefetch_req_0_bits_vaddr; // @[StorePrefetchBursts.scala 267:19]
  wire [38:0] spb_io_prefetch_req_1_bits_vaddr; // @[StorePrefetchBursts.scala 267:19]
  StorePrefetchBursts spb ( // @[StorePrefetchBursts.scala 267:19]
    .io_prefetch_req_0_bits_vaddr(spb_io_prefetch_req_0_bits_vaddr),
    .io_prefetch_req_1_bits_vaddr(spb_io_prefetch_req_1_bits_vaddr)
  );
  assign io_prefetch_req_0_bits_vaddr = spb_io_prefetch_req_0_bits_vaddr; // @[StorePrefetchBursts.scala 284:19]
  assign io_prefetch_req_1_bits_vaddr = spb_io_prefetch_req_1_bits_vaddr; // @[StorePrefetchBursts.scala 284:19]
endmodule

