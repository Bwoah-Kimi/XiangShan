module SinkA(
  output        io_a_ready,
  input         io_a_valid,
  input  [2:0]  io_a_bits_opcode,
  input  [2:0]  io_a_bits_param,
  input  [2:0]  io_a_bits_size,
  input  [4:0]  io_a_bits_source,
  input  [35:0] io_a_bits_address,
  input  [3:0]  io_a_bits_user_reqSource,
  input         io_task_ready,
  output        io_task_valid,
  output [6:0]  io_task_bits_set,
  output [21:0] io_task_bits_tag,
  output [5:0]  io_task_bits_off,
  output [2:0]  io_task_bits_opcode,
  output [2:0]  io_task_bits_param,
  output [2:0]  io_task_bits_size,
  output [4:0]  io_task_bits_sourceId,
  output [3:0]  io_task_bits_reqSource
);
  wire [28:0] commonReq_bits_task_tag_set = io_a_bits_address[35:7]; // @[CoupledL2.scala 134:22]
  assign io_a_ready = io_task_ready; // @[SinkA.scala 114:13 38:23]
  assign io_task_valid = io_a_valid; // @[SinkA.scala 106:19 38:23]
  assign io_task_bits_set = commonReq_bits_task_tag_set[6:0]; // @[CoupledL2.scala 136:30]
  assign io_task_bits_tag = commonReq_bits_task_tag_set[28:7]; // @[CoupledL2.scala 135:19]
  assign io_task_bits_off = io_a_bits_address[5:0]; // @[CoupledL2.scala 136:54]
  assign io_task_bits_opcode = io_a_bits_opcode; // @[SinkA.scala 44:20 50:17]
  assign io_task_bits_param = io_a_bits_param; // @[SinkA.scala 44:20 51:16]
  assign io_task_bits_size = io_a_bits_size; // @[SinkA.scala 44:20 52:15]
  assign io_task_bits_sourceId = io_a_bits_source; // @[SinkA.scala 44:20 53:19]
  assign io_task_bits_reqSource = io_a_bits_user_reqSource; // @[SinkA.scala 44:20 69:20]
endmodule

