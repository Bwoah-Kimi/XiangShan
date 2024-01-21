module FDIPPrefetch(
  input         clock,
  input         reset,
  input  [38:0] io_ftqReq_req_bits_target,
  output [5:0]  io_metaReadReq_bits_idx,
  output [3:0]  io_metaWrite_bits_waymask,
  output [3:0]  io_dataWrite_bits_waymask,
  input  [3:0]  io_IPFReplacer_waymask,
  input         io_mem_acquire_ready,
  output        io_mem_acquire_valid,
  input         io_mem_grant_valid,
  input  [2:0]  io_mem_grant_bits_opcode
);
  wire [38:0] prefetchPipe_io_ftqReq_req_bits_target; // @[IPrefetch.scala 889:31]
  wire [5:0] prefetchPipe_io_metaReadReq_bits_idx; // @[IPrefetch.scala 889:31]
  wire  prefetchQueue_clock; // @[IPrefetch.scala 890:31]
  wire  prefetchQueue_reset; // @[IPrefetch.scala 890:31]
  wire  prefetchQueue_io_mem_acquire_ready; // @[IPrefetch.scala 890:31]
  wire  prefetchQueue_io_mem_acquire_valid; // @[IPrefetch.scala 890:31]
  wire  prefetchQueue_io_mem_grant_ready; // @[IPrefetch.scala 890:31]
  wire  prefetchQueue_io_mem_grant_valid; // @[IPrefetch.scala 890:31]
  wire [2:0] prefetchQueue_io_mem_grant_bits_opcode; // @[IPrefetch.scala 890:31]
  wire  prefetchBuffer_clock; // @[IPrefetch.scala 891:31]
  wire  prefetchBuffer_reset; // @[IPrefetch.scala 891:31]
  wire [3:0] prefetchBuffer_io_metaWrite_bits_waymask; // @[IPrefetch.scala 891:31]
  wire [3:0] prefetchBuffer_io_dataWrite_bits_waymask; // @[IPrefetch.scala 891:31]
  wire [3:0] prefetchBuffer_io_IPFReplacer_waymask; // @[IPrefetch.scala 891:31]
  IPrefetchPipe prefetchPipe ( // @[IPrefetch.scala 889:31]
    .io_ftqReq_req_bits_target(prefetchPipe_io_ftqReq_req_bits_target),
    .io_metaReadReq_bits_idx(prefetchPipe_io_metaReadReq_bits_idx)
  );
  PrefetchQueue prefetchQueue ( // @[IPrefetch.scala 890:31]
    .clock(prefetchQueue_clock),
    .reset(prefetchQueue_reset),
    .io_mem_acquire_ready(prefetchQueue_io_mem_acquire_ready),
    .io_mem_acquire_valid(prefetchQueue_io_mem_acquire_valid),
    .io_mem_grant_ready(prefetchQueue_io_mem_grant_ready),
    .io_mem_grant_valid(prefetchQueue_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(prefetchQueue_io_mem_grant_bits_opcode)
  );
  PrefetchBuffer prefetchBuffer ( // @[IPrefetch.scala 891:31]
    .clock(prefetchBuffer_clock),
    .reset(prefetchBuffer_reset),
    .io_metaWrite_bits_waymask(prefetchBuffer_io_metaWrite_bits_waymask),
    .io_dataWrite_bits_waymask(prefetchBuffer_io_dataWrite_bits_waymask),
    .io_IPFReplacer_waymask(prefetchBuffer_io_IPFReplacer_waymask)
  );
  assign io_metaReadReq_bits_idx = prefetchPipe_io_metaReadReq_bits_idx; // @[IPrefetch.scala 893:21]
  assign io_metaWrite_bits_waymask = prefetchBuffer_io_metaWrite_bits_waymask; // @[IPrefetch.scala 894:21]
  assign io_dataWrite_bits_waymask = prefetchBuffer_io_dataWrite_bits_waymask; // @[IPrefetch.scala 895:21]
  assign io_mem_acquire_valid = prefetchQueue_io_mem_acquire_valid; // @[IPrefetch.scala 897:21]
  assign prefetchPipe_io_ftqReq_req_bits_target = io_ftqReq_req_bits_target; // @[IPrefetch.scala 902:37]
  assign prefetchQueue_clock = clock;
  assign prefetchQueue_reset = reset;
  assign prefetchQueue_io_mem_acquire_ready = io_mem_acquire_ready; // @[IPrefetch.scala 897:21]
  assign prefetchQueue_io_mem_grant_valid = io_mem_grant_valid; // @[IPrefetch.scala 898:21]
  assign prefetchQueue_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[IPrefetch.scala 898:21]
  assign prefetchBuffer_clock = clock;
  assign prefetchBuffer_reset = reset;
  assign prefetchBuffer_io_IPFReplacer_waymask = io_IPFReplacer_waymask; // @[IPrefetch.scala 896:21]
endmodule

