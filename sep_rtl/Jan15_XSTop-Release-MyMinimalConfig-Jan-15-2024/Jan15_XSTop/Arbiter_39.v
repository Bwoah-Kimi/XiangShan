module Arbiter_39(
  input          io_in_0_valid,
  input  [6:0]   io_in_0_bits_task_set,
  input  [21:0]  io_in_0_bits_task_tag,
  input  [5:0]   io_in_0_bits_task_off,
  input  [2:0]   io_in_0_bits_task_opcode,
  input  [2:0]   io_in_0_bits_task_param,
  input  [4:0]   io_in_0_bits_task_sourceId,
  input  [7:0]   io_in_0_bits_task_mshrId,
  input          io_in_0_bits_task_dirty,
  input  [511:0] io_in_0_bits_data_data,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input  [6:0]   io_in_1_bits_task_set,
  input  [21:0]  io_in_1_bits_task_tag,
  input  [5:0]   io_in_1_bits_task_off,
  input  [2:0]   io_in_1_bits_task_opcode,
  input  [2:0]   io_in_1_bits_task_param,
  input  [4:0]   io_in_1_bits_task_sourceId,
  input  [7:0]   io_in_1_bits_task_mshrId,
  input          io_in_1_bits_task_dirty,
  input  [511:0] io_in_1_bits_data_data,
  output         io_in_2_ready,
  input          io_in_2_valid,
  input  [6:0]   io_in_2_bits_task_set,
  input  [21:0]  io_in_2_bits_task_tag,
  input  [5:0]   io_in_2_bits_task_off,
  input  [2:0]   io_in_2_bits_task_opcode,
  input  [2:0]   io_in_2_bits_task_param,
  input  [4:0]   io_in_2_bits_task_sourceId,
  input  [7:0]   io_in_2_bits_task_mshrId,
  input          io_in_2_bits_task_dirty,
  input  [511:0] io_in_2_bits_data_data,
  input          io_out_ready,
  output         io_out_valid,
  output [6:0]   io_out_bits_task_set,
  output [21:0]  io_out_bits_task_tag,
  output [5:0]   io_out_bits_task_off,
  output [2:0]   io_out_bits_task_opcode,
  output [2:0]   io_out_bits_task_param,
  output [4:0]   io_out_bits_task_sourceId,
  output [7:0]   io_out_bits_task_mshrId,
  output         io_out_bits_task_dirty,
  output [511:0] io_out_bits_data_data
);
  wire [6:0] _GEN_2 = io_in_1_valid ? io_in_1_bits_task_set : io_in_2_bits_task_set; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [21:0] _GEN_3 = io_in_1_valid ? io_in_1_bits_task_tag : io_in_2_bits_task_tag; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [5:0] _GEN_4 = io_in_1_valid ? io_in_1_bits_task_off : io_in_2_bits_task_off; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [2:0] _GEN_5 = io_in_1_valid ? io_in_1_bits_task_opcode : io_in_2_bits_task_opcode; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [2:0] _GEN_6 = io_in_1_valid ? io_in_1_bits_task_param : io_in_2_bits_task_param; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [4:0] _GEN_8 = io_in_1_valid ? io_in_1_bits_task_sourceId : io_in_2_bits_task_sourceId; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_12 = io_in_1_valid ? io_in_1_bits_task_mshrId : io_in_2_bits_task_mshrId; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_14 = io_in_1_valid ? io_in_1_bits_task_dirty : io_in_2_bits_task_dirty; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [511:0] _GEN_26 = io_in_1_valid ? io_in_1_bits_data_data : io_in_2_bits_data_data; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_2 | io_in_2_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_task_set = io_in_0_valid ? io_in_0_bits_task_set : _GEN_2; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_tag = io_in_0_valid ? io_in_0_bits_task_tag : _GEN_3; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_off = io_in_0_valid ? io_in_0_bits_task_off : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_opcode = io_in_0_valid ? io_in_0_bits_task_opcode : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_param = io_in_0_valid ? io_in_0_bits_task_param : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_sourceId = io_in_0_valid ? io_in_0_bits_task_sourceId : _GEN_8; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_mshrId = io_in_0_valid ? io_in_0_bits_task_mshrId : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_task_dirty = io_in_0_valid ? io_in_0_bits_task_dirty : _GEN_14; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_data = io_in_0_valid ? io_in_0_bits_data_data : _GEN_26; // @[Arbiter.scala 141:26 143:19]
endmodule

