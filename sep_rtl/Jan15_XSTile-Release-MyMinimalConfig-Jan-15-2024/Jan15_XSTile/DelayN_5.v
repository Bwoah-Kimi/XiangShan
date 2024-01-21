module DelayN_5(
  input         clock,
  input         io_in_valid,
  input  [2:0]  io_in_brSlots_0_offset,
  input  [11:0] io_in_brSlots_0_lower,
  input  [1:0]  io_in_brSlots_0_tarStat,
  input         io_in_brSlots_0_sharing,
  input         io_in_brSlots_0_valid,
  input         io_in_brSlots_0_sc,
  input  [2:0]  io_in_tailSlot_offset,
  input  [19:0] io_in_tailSlot_lower,
  input  [1:0]  io_in_tailSlot_tarStat,
  input         io_in_tailSlot_sharing,
  input         io_in_tailSlot_valid,
  input         io_in_tailSlot_sc,
  input  [2:0]  io_in_pftAddr,
  input         io_in_carry,
  input         io_in_isCall,
  input         io_in_isRet,
  input         io_in_isJalr,
  input         io_in_last_may_be_rvi_call,
  input         io_in_always_taken_0,
  input         io_in_always_taken_1,
  output        io_out_valid,
  output [2:0]  io_out_brSlots_0_offset,
  output [11:0] io_out_brSlots_0_lower,
  output [1:0]  io_out_brSlots_0_tarStat,
  output        io_out_brSlots_0_sharing,
  output        io_out_brSlots_0_valid,
  output        io_out_brSlots_0_sc,
  output [2:0]  io_out_tailSlot_offset,
  output [19:0] io_out_tailSlot_lower,
  output [1:0]  io_out_tailSlot_tarStat,
  output        io_out_tailSlot_sharing,
  output        io_out_tailSlot_valid,
  output        io_out_tailSlot_sc,
  output [2:0]  io_out_pftAddr,
  output        io_out_carry,
  output        io_out_isCall,
  output        io_out_isRet,
  output        io_out_isJalr,
  output        io_out_last_may_be_rvi_call,
  output        io_out_always_taken_0,
  output        io_out_always_taken_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
`endif // RANDOMIZE_REG_INIT
  reg  REG_valid; // @[Hold.scala 90:18]
  reg [2:0] REG_brSlots_0_offset; // @[Hold.scala 90:18]
  reg [11:0] REG_brSlots_0_lower; // @[Hold.scala 90:18]
  reg [1:0] REG_brSlots_0_tarStat; // @[Hold.scala 90:18]
  reg  REG_brSlots_0_sharing; // @[Hold.scala 90:18]
  reg  REG_brSlots_0_valid; // @[Hold.scala 90:18]
  reg  REG_brSlots_0_sc; // @[Hold.scala 90:18]
  reg [2:0] REG_tailSlot_offset; // @[Hold.scala 90:18]
  reg [19:0] REG_tailSlot_lower; // @[Hold.scala 90:18]
  reg [1:0] REG_tailSlot_tarStat; // @[Hold.scala 90:18]
  reg  REG_tailSlot_sharing; // @[Hold.scala 90:18]
  reg  REG_tailSlot_valid; // @[Hold.scala 90:18]
  reg  REG_tailSlot_sc; // @[Hold.scala 90:18]
  reg [2:0] REG_pftAddr; // @[Hold.scala 90:18]
  reg  REG_carry; // @[Hold.scala 90:18]
  reg  REG_isCall; // @[Hold.scala 90:18]
  reg  REG_isRet; // @[Hold.scala 90:18]
  reg  REG_isJalr; // @[Hold.scala 90:18]
  reg  REG_last_may_be_rvi_call; // @[Hold.scala 90:18]
  reg  REG_always_taken_0; // @[Hold.scala 90:18]
  reg  REG_always_taken_1; // @[Hold.scala 90:18]
  reg  out_valid; // @[Hold.scala 90:18]
  reg [2:0] out_brSlots_0_offset; // @[Hold.scala 90:18]
  reg [11:0] out_brSlots_0_lower; // @[Hold.scala 90:18]
  reg [1:0] out_brSlots_0_tarStat; // @[Hold.scala 90:18]
  reg  out_brSlots_0_sharing; // @[Hold.scala 90:18]
  reg  out_brSlots_0_valid; // @[Hold.scala 90:18]
  reg  out_brSlots_0_sc; // @[Hold.scala 90:18]
  reg [2:0] out_tailSlot_offset; // @[Hold.scala 90:18]
  reg [19:0] out_tailSlot_lower; // @[Hold.scala 90:18]
  reg [1:0] out_tailSlot_tarStat; // @[Hold.scala 90:18]
  reg  out_tailSlot_sharing; // @[Hold.scala 90:18]
  reg  out_tailSlot_valid; // @[Hold.scala 90:18]
  reg  out_tailSlot_sc; // @[Hold.scala 90:18]
  reg [2:0] out_pftAddr; // @[Hold.scala 90:18]
  reg  out_carry; // @[Hold.scala 90:18]
  reg  out_isCall; // @[Hold.scala 90:18]
  reg  out_isRet; // @[Hold.scala 90:18]
  reg  out_isJalr; // @[Hold.scala 90:18]
  reg  out_last_may_be_rvi_call; // @[Hold.scala 90:18]
  reg  out_always_taken_0; // @[Hold.scala 90:18]
  reg  out_always_taken_1; // @[Hold.scala 90:18]
  assign io_out_valid = out_valid; // @[Hold.scala 92:10]
  assign io_out_brSlots_0_offset = out_brSlots_0_offset; // @[Hold.scala 92:10]
  assign io_out_brSlots_0_lower = out_brSlots_0_lower; // @[Hold.scala 92:10]
  assign io_out_brSlots_0_tarStat = out_brSlots_0_tarStat; // @[Hold.scala 92:10]
  assign io_out_brSlots_0_sharing = out_brSlots_0_sharing; // @[Hold.scala 92:10]
  assign io_out_brSlots_0_valid = out_brSlots_0_valid; // @[Hold.scala 92:10]
  assign io_out_brSlots_0_sc = out_brSlots_0_sc; // @[Hold.scala 92:10]
  assign io_out_tailSlot_offset = out_tailSlot_offset; // @[Hold.scala 92:10]
  assign io_out_tailSlot_lower = out_tailSlot_lower; // @[Hold.scala 92:10]
  assign io_out_tailSlot_tarStat = out_tailSlot_tarStat; // @[Hold.scala 92:10]
  assign io_out_tailSlot_sharing = out_tailSlot_sharing; // @[Hold.scala 92:10]
  assign io_out_tailSlot_valid = out_tailSlot_valid; // @[Hold.scala 92:10]
  assign io_out_tailSlot_sc = out_tailSlot_sc; // @[Hold.scala 92:10]
  assign io_out_pftAddr = out_pftAddr; // @[Hold.scala 92:10]
  assign io_out_carry = out_carry; // @[Hold.scala 92:10]
  assign io_out_isCall = out_isCall; // @[Hold.scala 92:10]
  assign io_out_isRet = out_isRet; // @[Hold.scala 92:10]
  assign io_out_isJalr = out_isJalr; // @[Hold.scala 92:10]
  assign io_out_last_may_be_rvi_call = out_last_may_be_rvi_call; // @[Hold.scala 92:10]
  assign io_out_always_taken_0 = out_always_taken_0; // @[Hold.scala 92:10]
  assign io_out_always_taken_1 = out_always_taken_1; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_valid <= io_in_valid; // @[Hold.scala 90:18]
    REG_brSlots_0_offset <= io_in_brSlots_0_offset; // @[Hold.scala 90:18]
    REG_brSlots_0_lower <= io_in_brSlots_0_lower; // @[Hold.scala 90:18]
    REG_brSlots_0_tarStat <= io_in_brSlots_0_tarStat; // @[Hold.scala 90:18]
    REG_brSlots_0_sharing <= io_in_brSlots_0_sharing; // @[Hold.scala 90:18]
    REG_brSlots_0_valid <= io_in_brSlots_0_valid; // @[Hold.scala 90:18]
    REG_brSlots_0_sc <= io_in_brSlots_0_sc; // @[Hold.scala 90:18]
    REG_tailSlot_offset <= io_in_tailSlot_offset; // @[Hold.scala 90:18]
    REG_tailSlot_lower <= io_in_tailSlot_lower; // @[Hold.scala 90:18]
    REG_tailSlot_tarStat <= io_in_tailSlot_tarStat; // @[Hold.scala 90:18]
    REG_tailSlot_sharing <= io_in_tailSlot_sharing; // @[Hold.scala 90:18]
    REG_tailSlot_valid <= io_in_tailSlot_valid; // @[Hold.scala 90:18]
    REG_tailSlot_sc <= io_in_tailSlot_sc; // @[Hold.scala 90:18]
    REG_pftAddr <= io_in_pftAddr; // @[Hold.scala 90:18]
    REG_carry <= io_in_carry; // @[Hold.scala 90:18]
    REG_isCall <= io_in_isCall; // @[Hold.scala 90:18]
    REG_isRet <= io_in_isRet; // @[Hold.scala 90:18]
    REG_isJalr <= io_in_isJalr; // @[Hold.scala 90:18]
    REG_last_may_be_rvi_call <= io_in_last_may_be_rvi_call; // @[Hold.scala 90:18]
    REG_always_taken_0 <= io_in_always_taken_0; // @[Hold.scala 90:18]
    REG_always_taken_1 <= io_in_always_taken_1; // @[Hold.scala 90:18]
    out_valid <= REG_valid; // @[Hold.scala 90:18]
    out_brSlots_0_offset <= REG_brSlots_0_offset; // @[Hold.scala 90:18]
    out_brSlots_0_lower <= REG_brSlots_0_lower; // @[Hold.scala 90:18]
    out_brSlots_0_tarStat <= REG_brSlots_0_tarStat; // @[Hold.scala 90:18]
    out_brSlots_0_sharing <= REG_brSlots_0_sharing; // @[Hold.scala 90:18]
    out_brSlots_0_valid <= REG_brSlots_0_valid; // @[Hold.scala 90:18]
    out_brSlots_0_sc <= REG_brSlots_0_sc; // @[Hold.scala 90:18]
    out_tailSlot_offset <= REG_tailSlot_offset; // @[Hold.scala 90:18]
    out_tailSlot_lower <= REG_tailSlot_lower; // @[Hold.scala 90:18]
    out_tailSlot_tarStat <= REG_tailSlot_tarStat; // @[Hold.scala 90:18]
    out_tailSlot_sharing <= REG_tailSlot_sharing; // @[Hold.scala 90:18]
    out_tailSlot_valid <= REG_tailSlot_valid; // @[Hold.scala 90:18]
    out_tailSlot_sc <= REG_tailSlot_sc; // @[Hold.scala 90:18]
    out_pftAddr <= REG_pftAddr; // @[Hold.scala 90:18]
    out_carry <= REG_carry; // @[Hold.scala 90:18]
    out_isCall <= REG_isCall; // @[Hold.scala 90:18]
    out_isRet <= REG_isRet; // @[Hold.scala 90:18]
    out_isJalr <= REG_isJalr; // @[Hold.scala 90:18]
    out_last_may_be_rvi_call <= REG_last_may_be_rvi_call; // @[Hold.scala 90:18]
    out_always_taken_0 <= REG_always_taken_0; // @[Hold.scala 90:18]
    out_always_taken_1 <= REG_always_taken_1; // @[Hold.scala 90:18]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  REG_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_brSlots_0_offset = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  REG_brSlots_0_lower = _RAND_2[11:0];
  _RAND_3 = {1{`RANDOM}};
  REG_brSlots_0_tarStat = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  REG_brSlots_0_sharing = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_brSlots_0_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_brSlots_0_sc = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_tailSlot_offset = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  REG_tailSlot_lower = _RAND_8[19:0];
  _RAND_9 = {1{`RANDOM}};
  REG_tailSlot_tarStat = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  REG_tailSlot_sharing = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  REG_tailSlot_valid = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_tailSlot_sc = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_pftAddr = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  REG_carry = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  REG_isCall = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  REG_isRet = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  REG_isJalr = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  REG_last_may_be_rvi_call = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  REG_always_taken_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  REG_always_taken_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  out_valid = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  out_brSlots_0_offset = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  out_brSlots_0_lower = _RAND_23[11:0];
  _RAND_24 = {1{`RANDOM}};
  out_brSlots_0_tarStat = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  out_brSlots_0_sharing = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  out_brSlots_0_valid = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  out_brSlots_0_sc = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  out_tailSlot_offset = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  out_tailSlot_lower = _RAND_29[19:0];
  _RAND_30 = {1{`RANDOM}};
  out_tailSlot_tarStat = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  out_tailSlot_sharing = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  out_tailSlot_valid = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  out_tailSlot_sc = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  out_pftAddr = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  out_carry = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  out_isCall = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  out_isRet = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  out_isJalr = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  out_last_may_be_rvi_call = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  out_always_taken_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  out_always_taken_1 = _RAND_41[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

