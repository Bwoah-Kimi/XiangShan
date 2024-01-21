module Arbiter_12(
  output         io_in_0_ready,
  input          io_in_0_valid,
  input          io_in_0_bits_miss,
  input  [1:0]   io_in_0_bits_miss_id,
  input  [1:0]   io_in_0_bits_miss_param,
  input          io_in_0_bits_miss_dirty,
  input  [7:0]   io_in_0_bits_miss_way_en,
  input          io_in_0_bits_probe,
  input  [1:0]   io_in_0_bits_probe_param,
  input          io_in_0_bits_probe_need_data,
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
  input          io_in_0_bits_replace,
  input  [7:0]   io_in_0_bits_replace_way_en,
  input  [3:0]   io_in_0_bits_id,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input          io_in_1_bits_miss,
  input  [1:0]   io_in_1_bits_miss_id,
  input  [1:0]   io_in_1_bits_miss_param,
  input          io_in_1_bits_miss_dirty,
  input  [7:0]   io_in_1_bits_miss_way_en,
  input          io_in_1_bits_probe,
  input  [1:0]   io_in_1_bits_probe_param,
  input          io_in_1_bits_probe_need_data,
  input  [3:0]   io_in_1_bits_source,
  input  [4:0]   io_in_1_bits_cmd,
  input  [38:0]  io_in_1_bits_vaddr,
  input  [35:0]  io_in_1_bits_addr,
  input  [511:0] io_in_1_bits_store_data,
  input  [63:0]  io_in_1_bits_store_mask,
  input  [2:0]   io_in_1_bits_word_idx,
  input  [63:0]  io_in_1_bits_amo_data,
  input  [7:0]   io_in_1_bits_amo_mask,
  input          io_in_1_bits_error,
  input          io_in_1_bits_replace,
  input  [7:0]   io_in_1_bits_replace_way_en,
  input  [3:0]   io_in_1_bits_id,
  output         io_in_2_ready,
  input          io_in_2_valid,
  input  [1:0]   io_in_2_bits_miss_id,
  input          io_in_2_bits_probe,
  input  [1:0]   io_in_2_bits_probe_param,
  input          io_in_2_bits_probe_need_data,
  input  [3:0]   io_in_2_bits_source,
  input  [4:0]   io_in_2_bits_cmd,
  input  [38:0]  io_in_2_bits_vaddr,
  input  [35:0]  io_in_2_bits_addr,
  input  [511:0] io_in_2_bits_store_data,
  input  [63:0]  io_in_2_bits_store_mask,
  input          io_in_2_bits_replace,
  input  [7:0]   io_in_2_bits_replace_way_en,
  input  [3:0]   io_in_2_bits_id,
  output         io_in_3_ready,
  input          io_in_3_valid,
  input          io_in_3_bits_miss,
  input  [1:0]   io_in_3_bits_miss_id,
  input  [1:0]   io_in_3_bits_miss_param,
  input          io_in_3_bits_miss_dirty,
  input  [7:0]   io_in_3_bits_miss_way_en,
  input          io_in_3_bits_probe,
  input  [1:0]   io_in_3_bits_probe_param,
  input          io_in_3_bits_probe_need_data,
  input  [3:0]   io_in_3_bits_source,
  input  [4:0]   io_in_3_bits_cmd,
  input  [38:0]  io_in_3_bits_vaddr,
  input  [35:0]  io_in_3_bits_addr,
  input  [511:0] io_in_3_bits_store_data,
  input  [63:0]  io_in_3_bits_store_mask,
  input  [2:0]   io_in_3_bits_word_idx,
  input  [63:0]  io_in_3_bits_amo_data,
  input  [7:0]   io_in_3_bits_amo_mask,
  input          io_in_3_bits_error,
  input          io_in_3_bits_replace,
  input  [7:0]   io_in_3_bits_replace_way_en,
  input  [3:0]   io_in_3_bits_id,
  input          io_out_ready,
  output         io_out_valid,
  output         io_out_bits_miss,
  output [1:0]   io_out_bits_miss_id,
  output [1:0]   io_out_bits_miss_param,
  output         io_out_bits_miss_dirty,
  output [7:0]   io_out_bits_miss_way_en,
  output         io_out_bits_probe,
  output [1:0]   io_out_bits_probe_param,
  output         io_out_bits_probe_need_data,
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
  output         io_out_bits_replace,
  output [7:0]   io_out_bits_replace_way_en,
  output [3:0]   io_out_bits_id
);
  wire  _GEN_1 = io_in_2_valid ? 1'h0 : io_in_3_bits_miss; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_2 = io_in_2_valid ? io_in_2_bits_miss_id : io_in_3_bits_miss_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_3 = io_in_2_valid ? 2'h0 : io_in_3_bits_miss_param; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_4 = io_in_2_valid ? 1'h0 : io_in_3_bits_miss_dirty; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_5 = io_in_2_valid ? 8'h0 : io_in_3_bits_miss_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_6 = io_in_2_valid ? io_in_2_bits_probe : io_in_3_bits_probe; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_7 = io_in_2_valid ? io_in_2_bits_probe_param : io_in_3_bits_probe_param; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_8 = io_in_2_valid ? io_in_2_bits_probe_need_data : io_in_3_bits_probe_need_data; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_9 = io_in_2_valid ? io_in_2_bits_source : io_in_3_bits_source; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [4:0] _GEN_10 = io_in_2_valid ? io_in_2_bits_cmd : io_in_3_bits_cmd; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [38:0] _GEN_11 = io_in_2_valid ? io_in_2_bits_vaddr : io_in_3_bits_vaddr; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [35:0] _GEN_12 = io_in_2_valid ? io_in_2_bits_addr : io_in_3_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [511:0] _GEN_13 = io_in_2_valid ? io_in_2_bits_store_data : io_in_3_bits_store_data; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_14 = io_in_2_valid ? io_in_2_bits_store_mask : io_in_3_bits_store_mask; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [2:0] _GEN_15 = io_in_2_valid ? 3'h0 : io_in_3_bits_word_idx; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_16 = io_in_2_valid ? 64'h0 : io_in_3_bits_amo_data; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_17 = io_in_2_valid ? 8'h0 : io_in_3_bits_amo_mask; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_18 = io_in_2_valid ? 1'h0 : io_in_3_bits_error; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_19 = io_in_2_valid ? io_in_2_bits_replace : io_in_3_bits_replace; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_20 = io_in_2_valid ? io_in_2_bits_replace_way_en : io_in_3_bits_replace_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_21 = io_in_2_valid ? io_in_2_bits_id : io_in_3_bits_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_23 = io_in_1_valid ? io_in_1_bits_miss : _GEN_1; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_24 = io_in_1_valid ? io_in_1_bits_miss_id : _GEN_2; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_25 = io_in_1_valid ? io_in_1_bits_miss_param : _GEN_3; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_26 = io_in_1_valid ? io_in_1_bits_miss_dirty : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_27 = io_in_1_valid ? io_in_1_bits_miss_way_en : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_28 = io_in_1_valid ? io_in_1_bits_probe : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_29 = io_in_1_valid ? io_in_1_bits_probe_param : _GEN_7; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_30 = io_in_1_valid ? io_in_1_bits_probe_need_data : _GEN_8; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_31 = io_in_1_valid ? io_in_1_bits_source : _GEN_9; // @[Arbiter.scala 141:26 143:19]
  wire [4:0] _GEN_32 = io_in_1_valid ? io_in_1_bits_cmd : _GEN_10; // @[Arbiter.scala 141:26 143:19]
  wire [38:0] _GEN_33 = io_in_1_valid ? io_in_1_bits_vaddr : _GEN_11; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_34 = io_in_1_valid ? io_in_1_bits_addr : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  wire [511:0] _GEN_35 = io_in_1_valid ? io_in_1_bits_store_data : _GEN_13; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_36 = io_in_1_valid ? io_in_1_bits_store_mask : _GEN_14; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_37 = io_in_1_valid ? io_in_1_bits_word_idx : _GEN_15; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_38 = io_in_1_valid ? io_in_1_bits_amo_data : _GEN_16; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_39 = io_in_1_valid ? io_in_1_bits_amo_mask : _GEN_17; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_40 = io_in_1_valid ? io_in_1_bits_error : _GEN_18; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_41 = io_in_1_valid ? io_in_1_bits_replace : _GEN_19; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_42 = io_in_1_valid ? io_in_1_bits_replace_way_en : _GEN_20; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_43 = io_in_1_valid ? io_in_1_bits_id : _GEN_21; // @[Arbiter.scala 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  grant_3 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_3 | io_in_3_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_miss = io_in_0_valid ? io_in_0_bits_miss : _GEN_23; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_id = io_in_0_valid ? io_in_0_bits_miss_id : _GEN_24; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_param = io_in_0_valid ? io_in_0_bits_miss_param : _GEN_25; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_dirty = io_in_0_valid ? io_in_0_bits_miss_dirty : _GEN_26; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_way_en = io_in_0_valid ? io_in_0_bits_miss_way_en : _GEN_27; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_probe = io_in_0_valid ? io_in_0_bits_probe : _GEN_28; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_probe_param = io_in_0_valid ? io_in_0_bits_probe_param : _GEN_29; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_probe_need_data = io_in_0_valid ? io_in_0_bits_probe_need_data : _GEN_30; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : _GEN_31; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_cmd = io_in_0_valid ? io_in_0_bits_cmd : _GEN_32; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_vaddr = io_in_0_valid ? io_in_0_bits_vaddr : _GEN_33; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_34; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_store_data = io_in_0_valid ? io_in_0_bits_store_data : _GEN_35; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_store_mask = io_in_0_valid ? io_in_0_bits_store_mask : _GEN_36; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_word_idx = io_in_0_valid ? io_in_0_bits_word_idx : _GEN_37; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_amo_data = io_in_0_valid ? io_in_0_bits_amo_data : _GEN_38; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_amo_mask = io_in_0_valid ? io_in_0_bits_amo_mask : _GEN_39; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_error = io_in_0_valid ? io_in_0_bits_error : _GEN_40; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_replace = io_in_0_valid ? io_in_0_bits_replace : _GEN_41; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_replace_way_en = io_in_0_valid ? io_in_0_bits_replace_way_en : _GEN_42; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_id = io_in_0_valid ? io_in_0_bits_id : _GEN_43; // @[Arbiter.scala 141:26 143:19]
endmodule

