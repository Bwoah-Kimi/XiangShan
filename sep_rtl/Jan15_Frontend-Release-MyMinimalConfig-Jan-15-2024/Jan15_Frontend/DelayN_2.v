module DelayN_2(
  input         clock,
  input  [35:0] io_in,
  output [35:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [35:0] REG; // @[Hold.scala 90:18]
  reg [35:0] REG_1; // @[Hold.scala 90:18]
  reg [35:0] REG_2; // @[Hold.scala 90:18]
  reg [35:0] REG_3; // @[Hold.scala 90:18]
  reg [35:0] out; // @[Hold.scala 90:18]
  assign io_out = out; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG <= io_in; // @[Hold.scala 90:18]
    REG_1 <= REG; // @[Hold.scala 90:18]
    REG_2 <= REG_1; // @[Hold.scala 90:18]
    REG_3 <= REG_2; // @[Hold.scala 90:18]
    out <= REG_3; // @[Hold.scala 90:18]
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
  _RAND_0 = {2{`RANDOM}};
  REG = _RAND_0[35:0];
  _RAND_1 = {2{`RANDOM}};
  REG_1 = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  REG_2 = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  REG_3 = _RAND_3[35:0];
  _RAND_4 = {2{`RANDOM}};
  out = _RAND_4[35:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

