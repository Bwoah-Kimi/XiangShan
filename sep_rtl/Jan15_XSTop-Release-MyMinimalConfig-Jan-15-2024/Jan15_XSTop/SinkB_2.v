module SinkB_2(
  output         io_bready,
  input          io_bvalid,
  input  [2:0]   io_bopcode,
  input  [1:0]   io_bparam,
  input  [2:0]   io_bsize,
  input  [3:0]   io_bsource,
  input  [35:0]  io_baddress,
  input  [31:0]  io_bmask,
  input  [255:0] io_bdata,
  input          io_alloc_ready,
  output         io_alloc_valid,
  output [2:0]   io_alloc_bits_opcode,
  output [2:0]   io_alloc_bits_param,
  output [2:0]   io_alloc_bits_size,
  output [9:0]   io_alloc_bits_source,
  output [7:0]   io_alloc_bits_set,
  output [21:0]  io_alloc_bits_tag,
  output [5:0]   io_alloc_bits_off,
  output [31:0]  io_alloc_bits_mask,
  output         io_alloc_bits_needProbeAckData
);
  wire [29:0] set = io_baddress[35:6]; // @[HuanCun.scala 145:22]
  assign io_bready = io_alloc_ready; // @[SinkB.scala 34:14]
  assign io_alloc_valid = io_bvalid; // @[SinkB.scala 35:18]
  assign io_alloc_bits_opcode = io_bopcode; // @[SinkB.scala 39:24]
  assign io_alloc_bits_param = {{1'd0}, io_bparam}; // @[SinkB.scala 40:23]
  assign io_alloc_bits_size = io_bsize; // @[SinkB.scala 42:22]
  assign io_alloc_bits_source = {{6'd0}, io_bsource}; // @[SinkB.scala 43:24]
  assign io_alloc_bits_set = set[7:0]; // @[HuanCun.scala 147:30]
  assign io_alloc_bits_tag = set[29:8]; // @[HuanCun.scala 146:19]
  assign io_alloc_bits_off = io_baddress[5:0]; // @[HuanCun.scala 147:54]
  assign io_alloc_bits_mask = io_bmask; // @[SinkB.scala 47:22]
  assign io_alloc_bits_needProbeAckData = io_bdata[0]; // @[SinkB.scala 58:61]
endmodule

