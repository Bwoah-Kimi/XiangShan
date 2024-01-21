module Arbiter_29(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [23:0] io_in_0_bits_entry_tag,
  input  [15:0] io_in_0_bits_entry_asid,
  input         io_in_0_bits_entry_perm_d,
  input         io_in_0_bits_entry_perm_a,
  input         io_in_0_bits_entry_perm_g,
  input         io_in_0_bits_entry_perm_u,
  input         io_in_0_bits_entry_perm_x,
  input         io_in_0_bits_entry_perm_w,
  input         io_in_0_bits_entry_perm_r,
  input  [1:0]  io_in_0_bits_entry_level,
  input  [20:0] io_in_0_bits_entry_ppn,
  input  [2:0]  io_in_0_bits_ppn_low_0,
  input  [2:0]  io_in_0_bits_ppn_low_1,
  input  [2:0]  io_in_0_bits_ppn_low_2,
  input  [2:0]  io_in_0_bits_ppn_low_3,
  input  [2:0]  io_in_0_bits_ppn_low_4,
  input  [2:0]  io_in_0_bits_ppn_low_5,
  input  [2:0]  io_in_0_bits_ppn_low_6,
  input  [2:0]  io_in_0_bits_ppn_low_7,
  input         io_in_0_bits_valididx_0,
  input         io_in_0_bits_valididx_1,
  input         io_in_0_bits_valididx_2,
  input         io_in_0_bits_valididx_3,
  input         io_in_0_bits_valididx_4,
  input         io_in_0_bits_valididx_5,
  input         io_in_0_bits_valididx_6,
  input         io_in_0_bits_valididx_7,
  input         io_in_0_bits_pteidx_0,
  input         io_in_0_bits_pteidx_1,
  input         io_in_0_bits_pteidx_2,
  input         io_in_0_bits_pteidx_3,
  input         io_in_0_bits_pteidx_4,
  input         io_in_0_bits_pteidx_5,
  input         io_in_0_bits_pteidx_6,
  input         io_in_0_bits_pteidx_7,
  input         io_in_0_bits_pf,
  input         io_in_0_bits_af,
  input         io_out_ready,
  output        io_out_valid,
  output [23:0] io_out_bits_entry_tag,
  output [15:0] io_out_bits_entry_asid,
  output        io_out_bits_entry_perm_d,
  output        io_out_bits_entry_perm_a,
  output        io_out_bits_entry_perm_g,
  output        io_out_bits_entry_perm_u,
  output        io_out_bits_entry_perm_x,
  output        io_out_bits_entry_perm_w,
  output        io_out_bits_entry_perm_r,
  output [1:0]  io_out_bits_entry_level,
  output [20:0] io_out_bits_entry_ppn,
  output [2:0]  io_out_bits_ppn_low_0,
  output [2:0]  io_out_bits_ppn_low_1,
  output [2:0]  io_out_bits_ppn_low_2,
  output [2:0]  io_out_bits_ppn_low_3,
  output [2:0]  io_out_bits_ppn_low_4,
  output [2:0]  io_out_bits_ppn_low_5,
  output [2:0]  io_out_bits_ppn_low_6,
  output [2:0]  io_out_bits_ppn_low_7,
  output        io_out_bits_valididx_0,
  output        io_out_bits_valididx_1,
  output        io_out_bits_valididx_2,
  output        io_out_bits_valididx_3,
  output        io_out_bits_valididx_4,
  output        io_out_bits_valididx_5,
  output        io_out_bits_valididx_6,
  output        io_out_bits_valididx_7,
  output        io_out_bits_pteidx_0,
  output        io_out_bits_pteidx_1,
  output        io_out_bits_pteidx_2,
  output        io_out_bits_pteidx_3,
  output        io_out_bits_pteidx_4,
  output        io_out_bits_pteidx_5,
  output        io_out_bits_pteidx_6,
  output        io_out_bits_pteidx_7,
  output        io_out_bits_pf,
  output        io_out_bits_af
);
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = io_in_0_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_entry_tag = io_in_0_bits_entry_tag; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_asid = io_in_0_bits_entry_asid; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_d = io_in_0_bits_entry_perm_d; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_a = io_in_0_bits_entry_perm_a; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_g = io_in_0_bits_entry_perm_g; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_u = io_in_0_bits_entry_perm_u; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_x = io_in_0_bits_entry_perm_x; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_w = io_in_0_bits_entry_perm_w; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_perm_r = io_in_0_bits_entry_perm_r; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_level = io_in_0_bits_entry_level; // @[Arbiter.scala 139:15]
  assign io_out_bits_entry_ppn = io_in_0_bits_entry_ppn; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_0 = io_in_0_bits_ppn_low_0; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_1 = io_in_0_bits_ppn_low_1; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_2 = io_in_0_bits_ppn_low_2; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_3 = io_in_0_bits_ppn_low_3; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_4 = io_in_0_bits_ppn_low_4; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_5 = io_in_0_bits_ppn_low_5; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_6 = io_in_0_bits_ppn_low_6; // @[Arbiter.scala 139:15]
  assign io_out_bits_ppn_low_7 = io_in_0_bits_ppn_low_7; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_0 = io_in_0_bits_valididx_0; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_1 = io_in_0_bits_valididx_1; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_2 = io_in_0_bits_valididx_2; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_3 = io_in_0_bits_valididx_3; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_4 = io_in_0_bits_valididx_4; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_5 = io_in_0_bits_valididx_5; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_6 = io_in_0_bits_valididx_6; // @[Arbiter.scala 139:15]
  assign io_out_bits_valididx_7 = io_in_0_bits_valididx_7; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_0 = io_in_0_bits_pteidx_0; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_1 = io_in_0_bits_pteidx_1; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_2 = io_in_0_bits_pteidx_2; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_3 = io_in_0_bits_pteidx_3; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_4 = io_in_0_bits_pteidx_4; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_5 = io_in_0_bits_pteidx_5; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_6 = io_in_0_bits_pteidx_6; // @[Arbiter.scala 139:15]
  assign io_out_bits_pteidx_7 = io_in_0_bits_pteidx_7; // @[Arbiter.scala 139:15]
  assign io_out_bits_pf = io_in_0_bits_pf; // @[Arbiter.scala 139:15]
  assign io_out_bits_af = io_in_0_bits_af; // @[Arbiter.scala 139:15]
endmodule

