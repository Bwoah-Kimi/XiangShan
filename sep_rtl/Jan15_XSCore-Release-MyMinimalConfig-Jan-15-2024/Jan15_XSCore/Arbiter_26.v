module Arbiter_26(
  output         io_in_0_ready,
  input          io_in_0_valid,
  input          io_in_0_bits_miss,
  input  [1:0]   io_in_0_bits_miss_id,
  input  [1:0]   io_in_0_bits_miss_param,
  input  [7:0]   io_in_0_bits_miss_way_en,
  input  [3:0]   io_in_0_bits_source,
  input  [4:0]   io_in_0_bits_cmd,
  input  [38:0]  io_in_0_bits_vaddr,
  input  [35:0]  io_in_0_bits_addr,
  input  [511:0] io_in_0_bits_store_data,
  input  [63:0]  io_in_0_bits_store_mask,
  input  [2:0]   io_in_0_bits_word_idx,
  input  [63:0]  io_in_0_bits_amo_data,
  input  [7:0]   io_in_0_bits_amo_mask,
  input          io_in_0_bits_error,
  input  [3:0]   io_in_0_bits_id,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input  [4:0]   io_in_1_bits_cmd,
  input  [38:0]  io_in_1_bits_vaddr,
  input  [35:0]  io_in_1_bits_addr,
  input  [2:0]   io_in_1_bits_word_idx,
  input  [63:0]  io_in_1_bits_amo_data,
  input  [7:0]   io_in_1_bits_amo_mask,
  input          io_out_ready,
  output         io_out_valid,
  output         io_out_bits_miss,
  output [1:0]   io_out_bits_miss_id,
  output [1:0]   io_out_bits_miss_param,
  output [7:0]   io_out_bits_miss_way_en,
  output [3:0]   io_out_bits_source,
  output [4:0]   io_out_bits_cmd,
  output [38:0]  io_out_bits_vaddr,
  output [35:0]  io_out_bits_addr,
  output [511:0] io_out_bits_store_data,
  output [63:0]  io_out_bits_store_mask,
  output [2:0]   io_out_bits_word_idx,
  output [63:0]  io_out_bits_amo_data,
  output [7:0]   io_out_bits_amo_mask,
  output         io_out_bits_error,
  output [3:0]   io_out_bits_id
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_miss = io_in_0_valid & io_in_0_bits_miss; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_miss_id = io_in_0_valid ? io_in_0_bits_miss_id : 2'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_miss_param = io_in_0_valid ? io_in_0_bits_miss_param : 2'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_miss_way_en = io_in_0_valid ? io_in_0_bits_miss_way_en : 8'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : 4'h2; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_cmd = io_in_0_valid ? io_in_0_bits_cmd : io_in_1_bits_cmd; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_vaddr = io_in_0_valid ? io_in_0_bits_vaddr : io_in_1_bits_vaddr; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : io_in_1_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_store_data = io_in_0_valid ? io_in_0_bits_store_data : 512'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_store_mask = io_in_0_valid ? io_in_0_bits_store_mask : 64'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_word_idx = io_in_0_valid ? io_in_0_bits_word_idx : io_in_1_bits_word_idx; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_amo_data = io_in_0_valid ? io_in_0_bits_amo_data : io_in_1_bits_amo_data; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_amo_mask = io_in_0_valid ? io_in_0_bits_amo_mask : io_in_1_bits_amo_mask; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_error = io_in_0_valid & io_in_0_bits_error; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_id = io_in_0_valid ? io_in_0_bits_id : 4'h0; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

