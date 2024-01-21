module DelayN_152(
  input   clock,
  input   io_in,
  output  io_out
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
`endif // RANDOMIZE_REG_INIT
  reg  REG; // @[Hold.scala 90:18]
  reg  REG_1; // @[Hold.scala 90:18]
  reg  REG_2; // @[Hold.scala 90:18]
  reg  REG_3; // @[Hold.scala 90:18]
  reg  REG_4; // @[Hold.scala 90:18]
  reg  REG_5; // @[Hold.scala 90:18]
  reg  REG_6; // @[Hold.scala 90:18]
  reg  REG_7; // @[Hold.scala 90:18]
  reg  REG_8; // @[Hold.scala 90:18]
  reg  out; // @[Hold.scala 90:18]
  assign io_out = out; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG <= io_in; // @[Hold.scala 90:18]
    REG_1 <= REG; // @[Hold.scala 90:18]
    REG_2 <= REG_1; // @[Hold.scala 90:18]
    REG_3 <= REG_2; // @[Hold.scala 90:18]
    REG_4 <= REG_3; // @[Hold.scala 90:18]
    REG_5 <= REG_4; // @[Hold.scala 90:18]
    REG_6 <= REG_5; // @[Hold.scala 90:18]
    REG_7 <= REG_6; // @[Hold.scala 90:18]
    REG_8 <= REG_7; // @[Hold.scala 90:18]
    out <= REG_8; // @[Hold.scala 90:18]
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
  REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  out = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

