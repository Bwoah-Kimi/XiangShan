module DelayN_26(
  input         clock,
  input         io_in_wvalid,
  input  [11:0] io_in_waddr,
  input  [63:0] io_in_wdata,
  output        io_out_wvalid,
  output [11:0] io_out_waddr,
  output [63:0] io_out_wdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  REG_wvalid; // @[Hold.scala 90:18]
  reg [11:0] REG_waddr; // @[Hold.scala 90:18]
  reg [63:0] REG_wdata; // @[Hold.scala 90:18]
  reg  out_wvalid; // @[Hold.scala 90:18]
  reg [11:0] out_waddr; // @[Hold.scala 90:18]
  reg [63:0] out_wdata; // @[Hold.scala 90:18]
  assign io_out_wvalid = out_wvalid; // @[Hold.scala 92:10]
  assign io_out_waddr = out_waddr; // @[Hold.scala 92:10]
  assign io_out_wdata = out_wdata; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_wvalid <= io_in_wvalid; // @[Hold.scala 90:18]
    REG_waddr <= io_in_waddr; // @[Hold.scala 90:18]
    REG_wdata <= io_in_wdata; // @[Hold.scala 90:18]
    out_wvalid <= REG_wvalid; // @[Hold.scala 90:18]
    out_waddr <= REG_waddr; // @[Hold.scala 90:18]
    out_wdata <= REG_wdata; // @[Hold.scala 90:18]
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
  REG_wvalid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_waddr = _RAND_1[11:0];
  _RAND_2 = {2{`RANDOM}};
  REG_wdata = _RAND_2[63:0];
  _RAND_3 = {1{`RANDOM}};
  out_wvalid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_waddr = _RAND_4[11:0];
  _RAND_5 = {2{`RANDOM}};
  out_wdata = _RAND_5[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

