module AcquireUnit(
  input          io_sourceA_ready,
  output         io_sourceA_valid,
  output [2:0]   io_sourceA_bits_opcode,
  output [2:0]   io_sourceA_bits_param,
  output [2:0]   io_sourceA_bits_size,
  output [7:0]   io_sourceA_bits_source,
  output [35:0]  io_sourceA_bits_address,
  output         io_sourceA_bits_echo_blockisdirty,
  output [31:0]  io_sourceA_bits_mask,
  output [255:0] io_sourceA_bits_data,
  output         io_sourceA_bits_corrupt,
  output         io_task_ready,
  input          io_task_valid,
  input  [21:0]  io_task_bits_tag,
  input  [6:0]   io_task_bits_set,
  input  [5:0]   io_task_bits_off,
  input  [2:0]   io_task_bits_opcode,
  input  [1:0]   io_task_bits_param,
  input  [2:0]   io_task_bits_size,
  input  [7:0]   io_task_bits_source,
  input  [3:0]   io_task_bits_reqSource
);
  wire [34:0] _io_sourceA_bits_address_T = {io_task_bits_tag,io_task_bits_set,6'h0}; // @[Cat.scala 31:58]
  assign io_sourceA_valid = io_task_valid; // @[AcquireUnit.scala 49:11]
  assign io_sourceA_bits_opcode = io_task_bits_opcode; // @[AcquireUnit.scala 37:17]
  assign io_sourceA_bits_param = {{1'd0}, io_task_bits_param}; // @[AcquireUnit.scala 38:16]
  assign io_sourceA_bits_size = 3'h6; // @[AcquireUnit.scala 39:15]
  assign io_sourceA_bits_source = io_task_bits_source; // @[AcquireUnit.scala 40:17]
  assign io_sourceA_bits_address = {{1'd0}, _io_sourceA_bits_address_T}; // @[AcquireUnit.scala 41:18]
  assign io_sourceA_bits_echo_blockisdirty = 1'h1; // @[AcquireUnit.scala 44:40]
  assign io_sourceA_bits_mask = 32'hffffffff; // @[Bitwise.scala 74:12]
  assign io_sourceA_bits_data = 256'h0;
  assign io_sourceA_bits_corrupt = 1'h0; // @[AcquireUnit.scala 47:18]
  assign io_task_ready = io_sourceA_ready; // @[AcquireUnit.scala 50:17]
endmodule

