module Arbiter_28(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [26:0] io_in_0_bits_vpn,
  input  [1:0]  io_in_0_bits_source,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [26:0] io_in_1_bits_vpn,
  input  [1:0]  io_in_1_bits_source,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [26:0] io_in_2_bits_vpn,
  input  [1:0]  io_in_2_bits_source,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [26:0] io_in_3_bits_vpn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_vpn,
  output [1:0]  io_out_bits_source,
  output [1:0]  io_chosen
);
  wire [1:0] _GEN_0 = io_in_2_valid ? 2'h2 : 2'h3; // @[Arbiter.scala 138:13 141:26 142:17]
  wire [26:0] _GEN_1 = io_in_2_valid ? io_in_2_bits_vpn : io_in_3_bits_vpn; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_2 = io_in_2_valid ? io_in_2_bits_source : 2'h2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_3 = io_in_1_valid ? 2'h1 : _GEN_0; // @[Arbiter.scala 141:26 142:17]
  wire [26:0] _GEN_4 = io_in_1_valid ? io_in_1_bits_vpn : _GEN_1; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_5 = io_in_1_valid ? io_in_1_bits_source : _GEN_2; // @[Arbiter.scala 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  grant_3 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_3 | io_in_3_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_vpn = io_in_0_valid ? io_in_0_bits_vpn : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  assign io_chosen = io_in_0_valid ? 2'h0 : _GEN_3; // @[Arbiter.scala 141:26 142:17]
endmodule

