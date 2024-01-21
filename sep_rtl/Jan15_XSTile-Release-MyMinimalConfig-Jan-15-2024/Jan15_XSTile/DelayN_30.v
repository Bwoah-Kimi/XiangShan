module DelayN_30(
  input         clock,
  input         io_in_valid,
  input  [38:0] io_in_bits_uop_cf_pc,
  input         io_in_bits_uop_cf_exceptionVec_0,
  input         io_in_bits_uop_cf_exceptionVec_1,
  input         io_in_bits_uop_cf_exceptionVec_2,
  input         io_in_bits_uop_cf_exceptionVec_3,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_5,
  input         io_in_bits_uop_cf_exceptionVec_6,
  input         io_in_bits_uop_cf_exceptionVec_7,
  input         io_in_bits_uop_cf_exceptionVec_8,
  input         io_in_bits_uop_cf_exceptionVec_9,
  input         io_in_bits_uop_cf_exceptionVec_11,
  input         io_in_bits_uop_cf_exceptionVec_12,
  input         io_in_bits_uop_cf_exceptionVec_13,
  input         io_in_bits_uop_cf_exceptionVec_15,
  input         io_in_bits_uop_cf_trigger_frontendHit_0,
  input         io_in_bits_uop_cf_trigger_frontendHit_1,
  input         io_in_bits_uop_cf_trigger_frontendHit_2,
  input         io_in_bits_uop_cf_trigger_frontendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_cf_crossPageIPFFix,
  input         io_in_bits_uop_ctrl_singleStep,
  input         io_in_bits_isInterrupt,
  output        io_out_valid,
  output [38:0] io_out_bits_uop_cf_pc,
  output        io_out_bits_uop_cf_exceptionVec_0,
  output        io_out_bits_uop_cf_exceptionVec_1,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_4,
  output        io_out_bits_uop_cf_exceptionVec_5,
  output        io_out_bits_uop_cf_exceptionVec_6,
  output        io_out_bits_uop_cf_exceptionVec_7,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_cf_exceptionVec_12,
  output        io_out_bits_uop_cf_exceptionVec_13,
  output        io_out_bits_uop_cf_exceptionVec_15,
  output        io_out_bits_uop_cf_trigger_frontendHit_0,
  output        io_out_bits_uop_cf_trigger_frontendHit_1,
  output        io_out_bits_uop_cf_trigger_frontendHit_2,
  output        io_out_bits_uop_cf_trigger_frontendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_cf_crossPageIPFFix,
  output        io_out_bits_uop_ctrl_singleStep,
  output        io_out_bits_isInterrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
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
  reg [63:0] _RAND_30;
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
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
`endif // RANDOMIZE_REG_INIT
  reg  REG_valid; // @[Hold.scala 90:18]
  reg [38:0] REG_bits_uop_cf_pc; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_0; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_1; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_2; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_3; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_4; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_5; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_6; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_7; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_8; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_9; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_11; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_12; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_13; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_exceptionVec_15; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 90:18]
  reg  REG_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 90:18]
  reg  REG_bits_uop_ctrl_singleStep; // @[Hold.scala 90:18]
  reg  REG_bits_isInterrupt; // @[Hold.scala 90:18]
  reg  out_valid; // @[Hold.scala 90:18]
  reg [38:0] out_bits_uop_cf_pc; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_0; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_1; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_2; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_3; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_4; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_5; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_6; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_7; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_8; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_9; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_11; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_12; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_13; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_exceptionVec_15; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 90:18]
  reg  out_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 90:18]
  reg  out_bits_uop_ctrl_singleStep; // @[Hold.scala 90:18]
  reg  out_bits_isInterrupt; // @[Hold.scala 90:18]
  assign io_out_valid = out_valid; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_pc = out_bits_uop_cf_pc; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_0 = out_bits_uop_cf_exceptionVec_0; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_1 = out_bits_uop_cf_exceptionVec_1; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_2 = out_bits_uop_cf_exceptionVec_2; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_3 = out_bits_uop_cf_exceptionVec_3; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_4 = out_bits_uop_cf_exceptionVec_4; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_5 = out_bits_uop_cf_exceptionVec_5; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_6 = out_bits_uop_cf_exceptionVec_6; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_7 = out_bits_uop_cf_exceptionVec_7; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_8 = out_bits_uop_cf_exceptionVec_8; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_9 = out_bits_uop_cf_exceptionVec_9; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_11 = out_bits_uop_cf_exceptionVec_11; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_12 = out_bits_uop_cf_exceptionVec_12; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_13 = out_bits_uop_cf_exceptionVec_13; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_exceptionVec_15 = out_bits_uop_cf_exceptionVec_15; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_frontendHit_0 = out_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_frontendHit_1 = out_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_frontendHit_2 = out_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_frontendHit_3 = out_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = out_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = out_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = out_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = out_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = out_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = out_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 92:10]
  assign io_out_bits_uop_cf_crossPageIPFFix = out_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 92:10]
  assign io_out_bits_uop_ctrl_singleStep = out_bits_uop_ctrl_singleStep; // @[Hold.scala 92:10]
  assign io_out_bits_isInterrupt = out_bits_isInterrupt; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_valid <= io_in_valid; // @[Hold.scala 90:18]
    REG_bits_uop_cf_pc <= io_in_bits_uop_cf_pc; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_0 <= io_in_bits_uop_cf_exceptionVec_0; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_1 <= io_in_bits_uop_cf_exceptionVec_1; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_2 <= io_in_bits_uop_cf_exceptionVec_2; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_3 <= io_in_bits_uop_cf_exceptionVec_3; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_4 <= io_in_bits_uop_cf_exceptionVec_4; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_5 <= io_in_bits_uop_cf_exceptionVec_5; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_6 <= io_in_bits_uop_cf_exceptionVec_6; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_7 <= io_in_bits_uop_cf_exceptionVec_7; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_8 <= io_in_bits_uop_cf_exceptionVec_8; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_9 <= io_in_bits_uop_cf_exceptionVec_9; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_11 <= io_in_bits_uop_cf_exceptionVec_11; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_12 <= io_in_bits_uop_cf_exceptionVec_12; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_13 <= io_in_bits_uop_cf_exceptionVec_13; // @[Hold.scala 90:18]
    REG_bits_uop_cf_exceptionVec_15 <= io_in_bits_uop_cf_exceptionVec_15; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_frontendHit_0 <= io_in_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_frontendHit_1 <= io_in_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_frontendHit_2 <= io_in_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_frontendHit_3 <= io_in_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 90:18]
    REG_bits_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 90:18]
    REG_bits_uop_cf_crossPageIPFFix <= io_in_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 90:18]
    REG_bits_uop_ctrl_singleStep <= io_in_bits_uop_ctrl_singleStep; // @[Hold.scala 90:18]
    REG_bits_isInterrupt <= io_in_bits_isInterrupt; // @[Hold.scala 90:18]
    out_valid <= REG_valid; // @[Hold.scala 90:18]
    out_bits_uop_cf_pc <= REG_bits_uop_cf_pc; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_0 <= REG_bits_uop_cf_exceptionVec_0; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_1 <= REG_bits_uop_cf_exceptionVec_1; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_2 <= REG_bits_uop_cf_exceptionVec_2; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_3 <= REG_bits_uop_cf_exceptionVec_3; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_4 <= REG_bits_uop_cf_exceptionVec_4; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_5 <= REG_bits_uop_cf_exceptionVec_5; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_6 <= REG_bits_uop_cf_exceptionVec_6; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_7 <= REG_bits_uop_cf_exceptionVec_7; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_8 <= REG_bits_uop_cf_exceptionVec_8; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_9 <= REG_bits_uop_cf_exceptionVec_9; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_11 <= REG_bits_uop_cf_exceptionVec_11; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_12 <= REG_bits_uop_cf_exceptionVec_12; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_13 <= REG_bits_uop_cf_exceptionVec_13; // @[Hold.scala 90:18]
    out_bits_uop_cf_exceptionVec_15 <= REG_bits_uop_cf_exceptionVec_15; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_frontendHit_0 <= REG_bits_uop_cf_trigger_frontendHit_0; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_frontendHit_1 <= REG_bits_uop_cf_trigger_frontendHit_1; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_frontendHit_2 <= REG_bits_uop_cf_trigger_frontendHit_2; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_frontendHit_3 <= REG_bits_uop_cf_trigger_frontendHit_3; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_backendHit_0 <= REG_bits_uop_cf_trigger_backendHit_0; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_backendHit_1 <= REG_bits_uop_cf_trigger_backendHit_1; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_backendHit_2 <= REG_bits_uop_cf_trigger_backendHit_2; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_backendHit_3 <= REG_bits_uop_cf_trigger_backendHit_3; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_backendHit_4 <= REG_bits_uop_cf_trigger_backendHit_4; // @[Hold.scala 90:18]
    out_bits_uop_cf_trigger_backendHit_5 <= REG_bits_uop_cf_trigger_backendHit_5; // @[Hold.scala 90:18]
    out_bits_uop_cf_crossPageIPFFix <= REG_bits_uop_cf_crossPageIPFFix; // @[Hold.scala 90:18]
    out_bits_uop_ctrl_singleStep <= REG_bits_uop_ctrl_singleStep; // @[Hold.scala 90:18]
    out_bits_isInterrupt <= REG_bits_isInterrupt; // @[Hold.scala 90:18]
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
  _RAND_1 = {2{`RANDOM}};
  REG_bits_uop_cf_pc = _RAND_1[38:0];
  _RAND_2 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_7 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_11 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_12 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_13 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  REG_bits_uop_cf_exceptionVec_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_frontendHit_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_frontendHit_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_frontendHit_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_frontendHit_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_backendHit_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_backendHit_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_backendHit_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_backendHit_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_backendHit_4 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  REG_bits_uop_cf_trigger_backendHit_5 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  REG_bits_uop_cf_crossPageIPFFix = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  REG_bits_uop_ctrl_singleStep = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  REG_bits_isInterrupt = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  out_valid = _RAND_29[0:0];
  _RAND_30 = {2{`RANDOM}};
  out_bits_uop_cf_pc = _RAND_30[38:0];
  _RAND_31 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_1 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_2 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_3 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_4 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_5 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_6 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_7 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_8 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_9 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_11 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_12 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_13 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  out_bits_uop_cf_exceptionVec_15 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_frontendHit_0 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_frontendHit_1 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_frontendHit_2 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_frontendHit_3 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_backendHit_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_backendHit_1 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_backendHit_2 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_backendHit_3 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_backendHit_4 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  out_bits_uop_cf_trigger_backendHit_5 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  out_bits_uop_cf_crossPageIPFFix = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  out_bits_uop_ctrl_singleStep = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  out_bits_isInterrupt = _RAND_57[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

