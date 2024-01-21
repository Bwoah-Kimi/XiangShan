module DelayN_108(
  input        clock,
  input  [2:0] io_in_value,
  output [2:0] io_out_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] REG_value; // @[Hold.scala 90:18]
  reg [2:0] REG_1_value; // @[Hold.scala 90:18]
  reg [2:0] out_value; // @[Hold.scala 90:18]
  assign io_out_value = out_value; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_value <= io_in_value; // @[Hold.scala 90:18]
    REG_1_value <= REG_value; // @[Hold.scala 90:18]
    out_value <= REG_1_value; // @[Hold.scala 90:18]
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
  REG_value = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  REG_1_value = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  out_value = _RAND_2[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

