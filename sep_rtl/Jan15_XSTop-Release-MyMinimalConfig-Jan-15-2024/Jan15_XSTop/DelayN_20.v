module DelayN_20(
  input         clock,
  input  [3:0]  io_in_mode,
  input  [15:0] io_in_asid,
  output [3:0]  io_out_mode,
  output [15:0] io_out_asid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] REG_mode; // @[Hold.scala 90:18]
  reg [15:0] REG_asid; // @[Hold.scala 90:18]
  reg [3:0] out_mode; // @[Hold.scala 90:18]
  reg [15:0] out_asid; // @[Hold.scala 90:18]
  assign io_out_mode = out_mode; // @[Hold.scala 92:10]
  assign io_out_asid = out_asid; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_mode <= io_in_mode; // @[Hold.scala 90:18]
    REG_asid <= io_in_asid; // @[Hold.scala 90:18]
    out_mode <= REG_mode; // @[Hold.scala 90:18]
    out_asid <= REG_asid; // @[Hold.scala 90:18]
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
  REG_mode = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  REG_asid = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  out_mode = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  out_asid = _RAND_3[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

