module DelayN_17(
  input         clock,
  input  [3:0]  io_in_satp_mode,
  input  [15:0] io_in_satp_asid,
  input  [43:0] io_in_satp_ppn,
  input         io_in_satp_changed,
  input         io_in_priv_mxr,
  input         io_in_priv_sum,
  input  [1:0]  io_in_priv_imode,
  input  [1:0]  io_in_priv_dmode,
  output [3:0]  io_out_satp_mode,
  output [15:0] io_out_satp_asid,
  output [43:0] io_out_satp_ppn,
  output        io_out_satp_changed,
  output        io_out_priv_mxr,
  output        io_out_priv_sum,
  output [1:0]  io_out_priv_imode,
  output [1:0]  io_out_priv_dmode
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] REG_satp_mode; // @[Hold.scala 90:18]
  reg [15:0] REG_satp_asid; // @[Hold.scala 90:18]
  reg [43:0] REG_satp_ppn; // @[Hold.scala 90:18]
  reg  REG_satp_changed; // @[Hold.scala 90:18]
  reg  REG_priv_mxr; // @[Hold.scala 90:18]
  reg  REG_priv_sum; // @[Hold.scala 90:18]
  reg [1:0] REG_priv_imode; // @[Hold.scala 90:18]
  reg [1:0] REG_priv_dmode; // @[Hold.scala 90:18]
  reg [3:0] out_satp_mode; // @[Hold.scala 90:18]
  reg [15:0] out_satp_asid; // @[Hold.scala 90:18]
  reg [43:0] out_satp_ppn; // @[Hold.scala 90:18]
  reg  out_satp_changed; // @[Hold.scala 90:18]
  reg  out_priv_mxr; // @[Hold.scala 90:18]
  reg  out_priv_sum; // @[Hold.scala 90:18]
  reg [1:0] out_priv_imode; // @[Hold.scala 90:18]
  reg [1:0] out_priv_dmode; // @[Hold.scala 90:18]
  assign io_out_satp_mode = out_satp_mode; // @[Hold.scala 92:10]
  assign io_out_satp_asid = out_satp_asid; // @[Hold.scala 92:10]
  assign io_out_satp_ppn = out_satp_ppn; // @[Hold.scala 92:10]
  assign io_out_satp_changed = out_satp_changed; // @[Hold.scala 92:10]
  assign io_out_priv_mxr = out_priv_mxr; // @[Hold.scala 92:10]
  assign io_out_priv_sum = out_priv_sum; // @[Hold.scala 92:10]
  assign io_out_priv_imode = out_priv_imode; // @[Hold.scala 92:10]
  assign io_out_priv_dmode = out_priv_dmode; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_satp_mode <= io_in_satp_mode; // @[Hold.scala 90:18]
    REG_satp_asid <= io_in_satp_asid; // @[Hold.scala 90:18]
    REG_satp_ppn <= io_in_satp_ppn; // @[Hold.scala 90:18]
    REG_satp_changed <= io_in_satp_changed; // @[Hold.scala 90:18]
    REG_priv_mxr <= io_in_priv_mxr; // @[Hold.scala 90:18]
    REG_priv_sum <= io_in_priv_sum; // @[Hold.scala 90:18]
    REG_priv_imode <= io_in_priv_imode; // @[Hold.scala 90:18]
    REG_priv_dmode <= io_in_priv_dmode; // @[Hold.scala 90:18]
    out_satp_mode <= REG_satp_mode; // @[Hold.scala 90:18]
    out_satp_asid <= REG_satp_asid; // @[Hold.scala 90:18]
    out_satp_ppn <= REG_satp_ppn; // @[Hold.scala 90:18]
    out_satp_changed <= REG_satp_changed; // @[Hold.scala 90:18]
    out_priv_mxr <= REG_priv_mxr; // @[Hold.scala 90:18]
    out_priv_sum <= REG_priv_sum; // @[Hold.scala 90:18]
    out_priv_imode <= REG_priv_imode; // @[Hold.scala 90:18]
    out_priv_dmode <= REG_priv_dmode; // @[Hold.scala 90:18]
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
  REG_satp_mode = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  REG_satp_asid = _RAND_1[15:0];
  _RAND_2 = {2{`RANDOM}};
  REG_satp_ppn = _RAND_2[43:0];
  _RAND_3 = {1{`RANDOM}};
  REG_satp_changed = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_priv_mxr = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_priv_sum = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_priv_imode = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  REG_priv_dmode = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  out_satp_mode = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  out_satp_asid = _RAND_9[15:0];
  _RAND_10 = {2{`RANDOM}};
  out_satp_ppn = _RAND_10[43:0];
  _RAND_11 = {1{`RANDOM}};
  out_satp_changed = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  out_priv_mxr = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  out_priv_sum = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  out_priv_imode = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  out_priv_dmode = _RAND_15[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

