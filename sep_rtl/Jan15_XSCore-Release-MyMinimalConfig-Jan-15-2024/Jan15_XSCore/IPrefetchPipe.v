module IPrefetchPipe(
  input  [38:0] io_ftqReq_req_bits_target,
  output [5:0]  io_metaReadReq_bits_idx
);
  wire [38:0] p0_vaddr = {io_ftqReq_req_bits_target[38:6],6'h0}; // @[Cat.scala 31:58]
  assign io_metaReadReq_bits_idx = p0_vaddr[11:6]; // @[L1Cache.scala 83:33]
endmodule

