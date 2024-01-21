module TLClientsMerger_1(
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
  output [8:0]   auto_in_bsource,
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
  input  [2:0]   auto_out_bopcode,
  input  [1:0]   auto_out_bparam,
  input  [2:0]   auto_out_bsize,
  input  [35:0]  auto_out_baddress,
  input  [31:0]  auto_out_bmask,
  input  [255:0] auto_out_bdata,
  input          auto_out_bcorrupt,
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
  input          auto_out_e_ready,
  output         auto_out_e_valid,
  output [3:0]   auto_out_e_bits_sink
);
  wire  bankIdx = auto_out_baddress[6]; // @[TLClientsMerger.scala 55:65]
  assign auto_in_a_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bvalid = auto_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bopcode = auto_out_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bparam = auto_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bsize = auto_out_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bsource = bankIdx ? 9'h0 : 9'h100; // @[TLClientsMerger.scala 57:{26,26}]
  assign auto_in_baddress = auto_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bmask = auto_out_bmask; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bdata = auto_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bcorrupt = auto_out_bcorrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_c_ready = auto_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_echo_blockisdirty = auto_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_e_ready = auto_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_a_valid = auto_in_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_bready = auto_in_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_valid = auto_in_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_echo_blockisdirty = auto_in_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_data = auto_in_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_d_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_e_valid = auto_in_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule

