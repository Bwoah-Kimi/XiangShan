module Arbiter_13(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [3:0]  io_in_0_bits_source,
  input  [35:0] io_in_0_bits_addr,
  input  [7:0]  io_in_0_bits_way_en,
  input  [1:0]  io_in_0_bits_alias,
  input  [1:0]  io_in_0_bits_miss_id,
  input  [3:0]  io_in_0_bits_id,
  input         io_in_0_bits_error,
  input  [7:0]  io_in_0_bits_wmask,
  input  [63:0] io_in_0_bits_data_0,
  input  [63:0] io_in_0_bits_data_1,
  input  [63:0] io_in_0_bits_data_2,
  input  [63:0] io_in_0_bits_data_3,
  input  [63:0] io_in_0_bits_data_4,
  input  [63:0] io_in_0_bits_data_5,
  input  [63:0] io_in_0_bits_data_6,
  input  [63:0] io_in_0_bits_data_7,
  input  [1:0]  io_in_0_bits_meta_coh_state,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [3:0]  io_in_1_bits_source,
  input  [35:0] io_in_1_bits_addr,
  input  [7:0]  io_in_1_bits_way_en,
  input  [1:0]  io_in_1_bits_alias,
  input  [1:0]  io_in_1_bits_miss_id,
  input  [3:0]  io_in_1_bits_id,
  input         io_in_1_bits_error,
  input  [7:0]  io_in_1_bits_wmask,
  input  [63:0] io_in_1_bits_data_0,
  input  [63:0] io_in_1_bits_data_1,
  input  [63:0] io_in_1_bits_data_2,
  input  [63:0] io_in_1_bits_data_3,
  input  [63:0] io_in_1_bits_data_4,
  input  [63:0] io_in_1_bits_data_5,
  input  [63:0] io_in_1_bits_data_6,
  input  [63:0] io_in_1_bits_data_7,
  input  [1:0]  io_in_1_bits_meta_coh_state,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [3:0]  io_in_2_bits_source,
  input  [35:0] io_in_2_bits_addr,
  input  [7:0]  io_in_2_bits_way_en,
  input  [1:0]  io_in_2_bits_alias,
  input  [1:0]  io_in_2_bits_miss_id,
  input  [3:0]  io_in_2_bits_id,
  input         io_in_2_bits_error,
  input  [7:0]  io_in_2_bits_wmask,
  input  [63:0] io_in_2_bits_data_0,
  input  [63:0] io_in_2_bits_data_1,
  input  [63:0] io_in_2_bits_data_2,
  input  [63:0] io_in_2_bits_data_3,
  input  [63:0] io_in_2_bits_data_4,
  input  [63:0] io_in_2_bits_data_5,
  input  [63:0] io_in_2_bits_data_6,
  input  [63:0] io_in_2_bits_data_7,
  input  [1:0]  io_in_2_bits_meta_coh_state,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [3:0]  io_in_3_bits_source,
  input  [35:0] io_in_3_bits_addr,
  input  [7:0]  io_in_3_bits_way_en,
  input  [1:0]  io_in_3_bits_alias,
  input  [1:0]  io_in_3_bits_miss_id,
  input  [3:0]  io_in_3_bits_id,
  input         io_in_3_bits_error,
  input  [7:0]  io_in_3_bits_wmask,
  input  [63:0] io_in_3_bits_data_0,
  input  [63:0] io_in_3_bits_data_1,
  input  [63:0] io_in_3_bits_data_2,
  input  [63:0] io_in_3_bits_data_3,
  input  [63:0] io_in_3_bits_data_4,
  input  [63:0] io_in_3_bits_data_5,
  input  [63:0] io_in_3_bits_data_6,
  input  [63:0] io_in_3_bits_data_7,
  input  [1:0]  io_in_3_bits_meta_coh_state,
  input         io_out_ready,
  output        io_out_valid,
  output [3:0]  io_out_bits_source,
  output [35:0] io_out_bits_addr,
  output [7:0]  io_out_bits_way_en,
  output [1:0]  io_out_bits_alias,
  output [1:0]  io_out_bits_miss_id,
  output [3:0]  io_out_bits_id,
  output        io_out_bits_error,
  output [7:0]  io_out_bits_wmask,
  output [63:0] io_out_bits_data_0,
  output [63:0] io_out_bits_data_1,
  output [63:0] io_out_bits_data_2,
  output [63:0] io_out_bits_data_3,
  output [63:0] io_out_bits_data_4,
  output [63:0] io_out_bits_data_5,
  output [63:0] io_out_bits_data_6,
  output [63:0] io_out_bits_data_7,
  output [1:0]  io_out_bits_meta_coh_state
);
  wire [3:0] _GEN_1 = io_in_2_valid ? io_in_2_bits_source : io_in_3_bits_source; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [35:0] _GEN_3 = io_in_2_valid ? io_in_2_bits_addr : io_in_3_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_4 = io_in_2_valid ? io_in_2_bits_way_en : io_in_3_bits_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_5 = io_in_2_valid ? io_in_2_bits_alias : io_in_3_bits_alias; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_6 = io_in_2_valid ? io_in_2_bits_miss_id : io_in_3_bits_miss_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_7 = io_in_2_valid ? io_in_2_bits_id : io_in_3_bits_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_8 = io_in_2_valid ? io_in_2_bits_error : io_in_3_bits_error; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_11 = io_in_2_valid ? io_in_2_bits_wmask : io_in_3_bits_wmask; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_12 = io_in_2_valid ? io_in_2_bits_data_0 : io_in_3_bits_data_0; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_13 = io_in_2_valid ? io_in_2_bits_data_1 : io_in_3_bits_data_1; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_14 = io_in_2_valid ? io_in_2_bits_data_2 : io_in_3_bits_data_2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_15 = io_in_2_valid ? io_in_2_bits_data_3 : io_in_3_bits_data_3; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_16 = io_in_2_valid ? io_in_2_bits_data_4 : io_in_3_bits_data_4; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_17 = io_in_2_valid ? io_in_2_bits_data_5 : io_in_3_bits_data_5; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_18 = io_in_2_valid ? io_in_2_bits_data_6 : io_in_3_bits_data_6; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_19 = io_in_2_valid ? io_in_2_bits_data_7 : io_in_3_bits_data_7; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_20 = io_in_2_valid ? io_in_2_bits_meta_coh_state : io_in_3_bits_meta_coh_state; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_22 = io_in_1_valid ? io_in_1_bits_source : _GEN_1; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_24 = io_in_1_valid ? io_in_1_bits_addr : _GEN_3; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_25 = io_in_1_valid ? io_in_1_bits_way_en : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_26 = io_in_1_valid ? io_in_1_bits_alias : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_27 = io_in_1_valid ? io_in_1_bits_miss_id : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_28 = io_in_1_valid ? io_in_1_bits_id : _GEN_7; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_29 = io_in_1_valid ? io_in_1_bits_error : _GEN_8; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_32 = io_in_1_valid ? io_in_1_bits_wmask : _GEN_11; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_33 = io_in_1_valid ? io_in_1_bits_data_0 : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_34 = io_in_1_valid ? io_in_1_bits_data_1 : _GEN_13; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_35 = io_in_1_valid ? io_in_1_bits_data_2 : _GEN_14; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_36 = io_in_1_valid ? io_in_1_bits_data_3 : _GEN_15; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_37 = io_in_1_valid ? io_in_1_bits_data_4 : _GEN_16; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_38 = io_in_1_valid ? io_in_1_bits_data_5 : _GEN_17; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_39 = io_in_1_valid ? io_in_1_bits_data_6 : _GEN_18; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_40 = io_in_1_valid ? io_in_1_bits_data_7 : _GEN_19; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_41 = io_in_1_valid ? io_in_1_bits_meta_coh_state : _GEN_20; // @[Arbiter.scala 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  grant_3 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_3 | io_in_3_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : _GEN_22; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_24; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_way_en = io_in_0_valid ? io_in_0_bits_way_en : _GEN_25; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_alias = io_in_0_valid ? io_in_0_bits_alias : _GEN_26; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_id = io_in_0_valid ? io_in_0_bits_miss_id : _GEN_27; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_id = io_in_0_valid ? io_in_0_bits_id : _GEN_28; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_error = io_in_0_valid ? io_in_0_bits_error : _GEN_29; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_wmask = io_in_0_valid ? io_in_0_bits_wmask : _GEN_32; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_0 = io_in_0_valid ? io_in_0_bits_data_0 : _GEN_33; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_1 = io_in_0_valid ? io_in_0_bits_data_1 : _GEN_34; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_2 = io_in_0_valid ? io_in_0_bits_data_2 : _GEN_35; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_3 = io_in_0_valid ? io_in_0_bits_data_3 : _GEN_36; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_4 = io_in_0_valid ? io_in_0_bits_data_4 : _GEN_37; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_5 = io_in_0_valid ? io_in_0_bits_data_5 : _GEN_38; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_6 = io_in_0_valid ? io_in_0_bits_data_6 : _GEN_39; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_7 = io_in_0_valid ? io_in_0_bits_data_7 : _GEN_40; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_meta_coh_state = io_in_0_valid ? io_in_0_bits_meta_coh_state : _GEN_41; // @[Arbiter.scala 141:26 143:19]
endmodule

