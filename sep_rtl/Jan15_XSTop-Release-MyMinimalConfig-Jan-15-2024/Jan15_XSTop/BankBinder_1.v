module BankBinder_1(
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [7:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_bready,
  output         auto_in_1_bvalid,
  output [2:0]   auto_in_1_bopcode,
  output [1:0]   auto_in_1_bparam,
  output [2:0]   auto_in_1_bsize,
  output [7:0]   auto_in_1_bsource,
  output [35:0]  auto_in_1_baddress,
  output [31:0]  auto_in_1_bmask,
  output [255:0] auto_in_1_bdata,
  output         auto_in_1_bcorrupt,
  output         auto_in_1_c_ready,
  input          auto_in_1_c_valid,
  input  [2:0]   auto_in_1_c_bits_opcode,
  input  [2:0]   auto_in_1_c_bits_param,
  input  [2:0]   auto_in_1_c_bits_size,
  input  [7:0]   auto_in_1_c_bits_source,
  input  [35:0]  auto_in_1_c_bits_address,
  input          auto_in_1_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_1_c_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [2:0]   auto_in_1_d_bits_size,
  output [7:0]   auto_in_1_d_bits_source,
  output [3:0]   auto_in_1_d_bits_sink,
  output         auto_in_1_d_bits_denied,
  output         auto_in_1_d_bits_echo_blockisdirty,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_1_e_ready,
  input          auto_in_1_e_valid,
  input  [3:0]   auto_in_1_e_bits_sink,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [7:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [2:0]   auto_in_0_bopcode,
  output [1:0]   auto_in_0_bparam,
  output [2:0]   auto_in_0_bsize,
  output [7:0]   auto_in_0_bsource,
  output [35:0]  auto_in_0_baddress,
  output [31:0]  auto_in_0_bmask,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_bcorrupt,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [7:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input          auto_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [7:0]   auto_in_0_d_bits_source,
  output [3:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output         auto_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  output         auto_in_0_e_ready,
  input          auto_in_0_e_valid,
  input  [3:0]   auto_in_0_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [7:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [2:0]   auto_out_1_bopcode,
  input  [1:0]   auto_out_1_bparam,
  input  [2:0]   auto_out_1_bsize,
  input  [7:0]   auto_out_1_bsource,
  input  [35:0]  auto_out_1_baddress,
  input  [31:0]  auto_out_1_bmask,
  input  [255:0] auto_out_1_bdata,
  input          auto_out_1_bcorrupt,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_param,
  output [2:0]   auto_out_1_c_bits_size,
  output [7:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output         auto_out_1_c_bits_echo_blockisdirty,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [7:0]   auto_out_1_d_bits_source,
  input  [3:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input          auto_out_1_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_d_bits_corrupt,
  input          auto_out_1_e_ready,
  output         auto_out_1_e_valid,
  output [3:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [7:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [2:0]   auto_out_0_bopcode,
  input  [1:0]   auto_out_0_bparam,
  input  [2:0]   auto_out_0_bsize,
  input  [7:0]   auto_out_0_bsource,
  input  [35:0]  auto_out_0_baddress,
  input  [31:0]  auto_out_0_bmask,
  input  [255:0] auto_out_0_bdata,
  input          auto_out_0_bcorrupt,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_param,
  output [2:0]   auto_out_0_c_bits_size,
  output [7:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output         auto_out_0_c_bits_echo_blockisdirty,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [7:0]   auto_out_0_d_bits_source,
  input  [3:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input          auto_out_0_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_0_d_bits_data,
  input          auto_out_0_d_bits_corrupt,
  input          auto_out_0_e_ready,
  output         auto_out_0_e_valid,
  output [3:0]   auto_out_0_e_bits_sink
);
  assign auto_in_1_a_ready = auto_out_1_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bvalid = auto_out_1_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bopcode = auto_out_1_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bparam = auto_out_1_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bsize = auto_out_1_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bsource = auto_out_1_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_baddress = auto_out_1_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bmask = auto_out_1_bmask; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bdata = auto_out_1_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_bcorrupt = auto_out_1_bcorrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_c_ready = auto_out_1_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_valid = auto_out_1_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_opcode = auto_out_1_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_param = auto_out_1_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_size = auto_out_1_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_source = auto_out_1_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_sink = auto_out_1_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_denied = auto_out_1_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_echo_blockisdirty = auto_out_1_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_data = auto_out_1_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_corrupt = auto_out_1_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_e_ready = auto_out_1_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_a_ready = auto_out_0_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bvalid = auto_out_0_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bopcode = auto_out_0_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bparam = auto_out_0_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bsize = auto_out_0_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bsource = auto_out_0_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_baddress = auto_out_0_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bmask = auto_out_0_bmask; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bdata = auto_out_0_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bcorrupt = auto_out_0_bcorrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_c_ready = auto_out_0_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_valid = auto_out_0_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_opcode = auto_out_0_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_param = auto_out_0_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_size = auto_out_0_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_source = auto_out_0_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_sink = auto_out_0_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_denied = auto_out_0_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_echo_blockisdirty = auto_out_0_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_data = auto_out_0_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_corrupt = auto_out_0_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_e_ready = auto_out_0_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_1_a_valid = auto_in_1_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_mask = auto_in_1_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_data = auto_in_1_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_bready = auto_in_1_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_valid = auto_in_1_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_opcode = auto_in_1_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_param = auto_in_1_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_address = auto_in_1_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_echo_blockisdirty = auto_in_1_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_data = auto_in_1_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_d_ready = auto_in_1_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_e_valid = auto_in_1_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_e_bits_sink = auto_in_1_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_valid = auto_in_0_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_data = auto_in_0_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_bready = auto_in_0_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_valid = auto_in_0_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_d_ready = auto_in_0_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_e_valid = auto_in_0_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_e_bits_sink = auto_in_0_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule

