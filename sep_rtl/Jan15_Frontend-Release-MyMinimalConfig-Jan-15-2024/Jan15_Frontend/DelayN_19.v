module DelayN_19(
  input         clock,
  input         io_in_valid,
  input         io_in_bits_rs1,
  input         io_in_bits_rs2,
  input  [38:0] io_in_bits_addr,
  input  [15:0] io_in_bits_asid,
  output        io_out_valid,
  output        io_out_bits_rs1,
  output        io_out_bits_rs2,
  output [38:0] io_out_bits_addr,
  output [15:0] io_out_bits_asid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  reg  REG_valid; // @[Hold.scala 90:18]
  reg  REG_bits_rs1; // @[Hold.scala 90:18]
  reg  REG_bits_rs2; // @[Hold.scala 90:18]
  reg [38:0] REG_bits_addr; // @[Hold.scala 90:18]
  reg [15:0] REG_bits_asid; // @[Hold.scala 90:18]
  reg  out_valid; // @[Hold.scala 90:18]
  reg  out_bits_rs1; // @[Hold.scala 90:18]
  reg  out_bits_rs2; // @[Hold.scala 90:18]
  reg [38:0] out_bits_addr; // @[Hold.scala 90:18]
  reg [15:0] out_bits_asid; // @[Hold.scala 90:18]
  assign io_out_valid = out_valid; // @[Hold.scala 92:10]
  assign io_out_bits_rs1 = out_bits_rs1; // @[Hold.scala 92:10]
  assign io_out_bits_rs2 = out_bits_rs2; // @[Hold.scala 92:10]
  assign io_out_bits_addr = out_bits_addr; // @[Hold.scala 92:10]
  assign io_out_bits_asid = out_bits_asid; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_valid <= io_in_valid; // @[Hold.scala 90:18]
    REG_bits_rs1 <= io_in_bits_rs1; // @[Hold.scala 90:18]
    REG_bits_rs2 <= io_in_bits_rs2; // @[Hold.scala 90:18]
    REG_bits_addr <= io_in_bits_addr; // @[Hold.scala 90:18]
    REG_bits_asid <= io_in_bits_asid; // @[Hold.scala 90:18]
    out_valid <= REG_valid; // @[Hold.scala 90:18]
    out_bits_rs1 <= REG_bits_rs1; // @[Hold.scala 90:18]
    out_bits_rs2 <= REG_bits_rs2; // @[Hold.scala 90:18]
    out_bits_addr <= REG_bits_addr; // @[Hold.scala 90:18]
    out_bits_asid <= REG_bits_asid; // @[Hold.scala 90:18]
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
  REG_bits_rs1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_bits_rs2 = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  REG_bits_addr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  REG_bits_asid = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  out_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_bits_rs1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  out_bits_rs2 = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  out_bits_addr = _RAND_8[38:0];
  _RAND_9 = {1{`RANDOM}};
  out_bits_asid = _RAND_9[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

