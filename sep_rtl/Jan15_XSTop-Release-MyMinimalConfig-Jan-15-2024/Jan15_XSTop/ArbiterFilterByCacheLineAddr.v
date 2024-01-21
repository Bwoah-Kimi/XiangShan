module ArbiterFilterByCacheLineAddr(
  output         io_in_0_ready,
  input          io_in_0_valid,
  input  [3:0]   io_in_0_bits_source,
  input  [4:0]   io_in_0_bits_cmd,
  input  [35:0]  io_in_0_bits_addr,
  input  [38:0]  io_in_0_bits_vaddr,
  input  [7:0]   io_in_0_bits_way_en,
  input  [2:0]   io_in_0_bits_word_idx,
  input  [63:0]  io_in_0_bits_amo_data,
  input  [7:0]   io_in_0_bits_amo_mask,
  input  [1:0]   io_in_0_bits_req_coh_state,
  input  [1:0]   io_in_0_bits_replace_coh_state,
  input  [23:0]  io_in_0_bits_replace_tag,
  input  [3:0]   io_in_0_bits_id,
  input  [511:0] io_in_0_bits_store_data,
  input  [63:0]  io_in_0_bits_store_mask,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input  [3:0]   io_in_1_bits_source,
  input  [4:0]   io_in_1_bits_cmd,
  input  [35:0]  io_in_1_bits_addr,
  input  [38:0]  io_in_1_bits_vaddr,
  input  [7:0]   io_in_1_bits_way_en,
  input  [1:0]   io_in_1_bits_req_coh_state,
  input  [1:0]   io_in_1_bits_replace_coh_state,
  input  [23:0]  io_in_1_bits_replace_tag,
  input          io_in_1_bits_cancel,
  output         io_in_2_ready,
  input          io_in_2_valid,
  input  [3:0]   io_in_2_bits_source,
  input  [4:0]   io_in_2_bits_cmd,
  input  [35:0]  io_in_2_bits_addr,
  input  [38:0]  io_in_2_bits_vaddr,
  input  [7:0]   io_in_2_bits_way_en,
  input  [1:0]   io_in_2_bits_req_coh_state,
  input  [1:0]   io_in_2_bits_replace_coh_state,
  input  [23:0]  io_in_2_bits_replace_tag,
  input          io_in_2_bits_cancel,
  input          io_out_ready,
  output         io_out_valid,
  output [3:0]   io_out_bits_source,
  output [4:0]   io_out_bits_cmd,
  output [35:0]  io_out_bits_addr,
  output [38:0]  io_out_bits_vaddr,
  output [7:0]   io_out_bits_way_en,
  output [2:0]   io_out_bits_word_idx,
  output [63:0]  io_out_bits_amo_data,
  output [7:0]   io_out_bits_amo_mask,
  output [1:0]   io_out_bits_req_coh_state,
  output [1:0]   io_out_bits_replace_coh_state,
  output [23:0]  io_out_bits_replace_tag,
  output [3:0]   io_out_bits_id,
  output         io_out_bits_cancel,
  output [511:0] io_out_bits_store_data,
  output [63:0]  io_out_bits_store_mask
);
  wire [3:0] _GEN_1 = io_in_1_valid ? io_in_1_bits_source : io_in_2_bits_source; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [4:0] _GEN_3 = io_in_1_valid ? io_in_1_bits_cmd : io_in_2_bits_cmd; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [35:0] _GEN_4 = io_in_1_valid ? io_in_1_bits_addr : io_in_2_bits_addr; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [38:0] _GEN_5 = io_in_1_valid ? io_in_1_bits_vaddr : io_in_2_bits_vaddr; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [7:0] _GEN_6 = io_in_1_valid ? io_in_1_bits_way_en : io_in_2_bits_way_en; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [1:0] _GEN_12 = io_in_1_valid ? io_in_1_bits_req_coh_state : io_in_2_bits_req_coh_state; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [1:0] _GEN_13 = io_in_1_valid ? io_in_1_bits_replace_coh_state : io_in_2_bits_replace_coh_state; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire [23:0] _GEN_14 = io_in_1_valid ? io_in_1_bits_replace_tag : io_in_2_bits_replace_tag; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire  _GEN_17 = io_in_1_valid ? io_in_1_bits_cancel : io_in_2_bits_cancel; // @[ArbiterHelper.scala 54:15 56:26 58:19]
  wire  grant_1 = ~io_in_0_valid; // @[ArbiterHelper.scala 29:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[ArbiterHelper.scala 29:78]
  assign io_in_0_ready = io_out_ready; // @[ArbiterHelper.scala 64:120]
  assign io_in_1_ready = (grant_1 | io_in_1_bits_addr[35:6] == io_out_bits_addr[35:6]) & io_out_ready; // @[ArbiterHelper.scala 64:120]
  assign io_in_2_ready = (grant_2 | io_in_2_bits_addr[35:6] == io_out_bits_addr[35:6]) & io_out_ready; // @[ArbiterHelper.scala 64:120]
  assign io_out_valid = ~grant_2 | io_in_2_valid; // @[ArbiterHelper.scala 65:31]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : _GEN_1; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_cmd = io_in_0_valid ? io_in_0_bits_cmd : _GEN_3; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_4; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_vaddr = io_in_0_valid ? io_in_0_bits_vaddr : _GEN_5; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_way_en = io_in_0_valid ? io_in_0_bits_way_en : _GEN_6; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_word_idx = io_in_0_valid ? io_in_0_bits_word_idx : 3'h0; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_amo_data = io_in_0_valid ? io_in_0_bits_amo_data : 64'h0; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_amo_mask = io_in_0_valid ? io_in_0_bits_amo_mask : 8'h0; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_req_coh_state = io_in_0_valid ? io_in_0_bits_req_coh_state : _GEN_12; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_replace_coh_state = io_in_0_valid ? io_in_0_bits_replace_coh_state : _GEN_13; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_replace_tag = io_in_0_valid ? io_in_0_bits_replace_tag : _GEN_14; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_id = io_in_0_valid ? io_in_0_bits_id : 4'h0; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_cancel = io_in_0_valid ? 1'h0 : _GEN_17; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_store_data = io_in_0_valid ? io_in_0_bits_store_data : 512'h0; // @[ArbiterHelper.scala 56:26 58:19]
  assign io_out_bits_store_mask = io_in_0_valid ? io_in_0_bits_store_mask : 64'h0; // @[ArbiterHelper.scala 56:26 58:19]
endmodule

