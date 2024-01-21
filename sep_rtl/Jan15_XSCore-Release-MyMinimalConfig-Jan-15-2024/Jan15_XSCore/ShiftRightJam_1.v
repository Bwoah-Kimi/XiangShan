module ShiftRightJam_1(
  input  [107:0] io_in,
  input  [10:0]  io_shamt,
  output [107:0] io_out,
  output         io_sticky
);
  wire  exceed_max_shift = io_shamt > 11'h6c; // @[ShiftRightJam.scala 17:35]
  wire [6:0] shamt = io_shamt[6:0]; // @[ShiftRightJam.scala 18:23]
  wire [127:0] _sticky_mask_T = 128'h1 << shamt; // @[ShiftRightJam.scala 20:11]
  wire [127:0] _sticky_mask_T_2 = _sticky_mask_T - 128'h1; // @[ShiftRightJam.scala 20:30]
  wire [107:0] _sticky_mask_T_5 = exceed_max_shift ? 108'hfffffffffffffffffffffffffff : 108'h0; // @[Bitwise.scala 74:12]
  wire [107:0] sticky_mask = _sticky_mask_T_2[107:0] | _sticky_mask_T_5; // @[ShiftRightJam.scala 20:49]
  wire [107:0] _io_out_T = io_in >> io_shamt; // @[ShiftRightJam.scala 21:46]
  wire [107:0] _io_sticky_T = io_in & sticky_mask; // @[ShiftRightJam.scala 22:23]
  assign io_out = exceed_max_shift ? 108'h0 : _io_out_T; // @[ShiftRightJam.scala 21:16]
  assign io_sticky = |_io_sticky_T; // @[ShiftRightJam.scala 22:41]
endmodule

