module FastArbiter_2(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [21:0] io_in_0_bits_tag,
  input  [6:0]  io_in_0_bits_set,
  input  [2:0]  io_in_0_bits_opcode,
  input  [1:0]  io_in_0_bits_param,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [21:0] io_in_1_bits_tag,
  input  [6:0]  io_in_1_bits_set,
  input  [2:0]  io_in_1_bits_opcode,
  input  [1:0]  io_in_1_bits_param,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [21:0] io_in_2_bits_tag,
  input  [6:0]  io_in_2_bits_set,
  input  [2:0]  io_in_2_bits_opcode,
  input  [1:0]  io_in_2_bits_param,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [21:0] io_in_3_bits_tag,
  input  [6:0]  io_in_3_bits_set,
  input  [2:0]  io_in_3_bits_opcode,
  input  [1:0]  io_in_3_bits_param,
  input         io_out_ready,
  output        io_out_valid,
  output [21:0] io_out_bits_tag,
  output [6:0]  io_out_bits_set,
  output [2:0]  io_out_bits_opcode,
  output [1:0]  io_out_bits_param
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] valids = {io_in_3_valid,io_in_2_valid,io_in_1_valid,io_in_0_valid}; // @[FastArbiter.scala 36:50]
  reg [3:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [3:0] pendingMask; // @[Reg.scala 28:20]
  wire [3:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 51:47]
  wire [1:0] rrSelOH_hi = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [2:0] _rrSelOH_T_12 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_15 = _rrSelOH_T[3] & ~(|_rrSelOH_T_12); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_11 = _rrSelOH_T[2] & ~(|rrSelOH_hi); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_7 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 28:24]
  wire [3:0] rrSelOH = {_rrSelOH_T_15,_rrSelOH_T_11,_rrSelOH_T_7,_rrSelOH_T[0]}; // @[FastArbiter.scala 51:80]
  wire [3:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 53:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 53:39]
  wire [1:0] firstOneOH_hi = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [2:0] _firstOneOH_T_11 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_14 = valids[3] & ~(|_firstOneOH_T_11); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_10 = valids[2] & ~(|firstOneOH_hi); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_6 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 28:24]
  wire [3:0] firstOneOH = {_firstOneOH_T_14,_firstOneOH_T_10,_firstOneOH_T_6,valids[0]}; // @[FastArbiter.scala 52:62]
  wire [3:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 54:18]
  wire [3:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 39:15]
  wire [3:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 39:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 49:51]
  wire [3:0] _rrGrantMask_T_6 = {_rrGrantMask_T_5,_rrGrantMask_T_3,_rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 50:12]
  wire [1:0] _io_out_bits_T_4 = chosenOH[0] ? io_in_0_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_5 = chosenOH[1] ? io_in_1_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_6 = chosenOH[2] ? io_in_2_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_7 = chosenOH[3] ? io_in_3_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_8 = _io_out_bits_T_4 | _io_out_bits_T_5; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_9 = _io_out_bits_T_8 | _io_out_bits_T_6; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_11 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_12 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_13 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_14 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_15 = _io_out_bits_T_11 | _io_out_bits_T_12; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_16 = _io_out_bits_T_15 | _io_out_bits_T_13; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_25 = chosenOH[0] ? io_in_0_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_26 = chosenOH[1] ? io_in_1_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_27 = chosenOH[2] ? io_in_2_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_28 = chosenOH[3] ? io_in_3_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_29 = _io_out_bits_T_25 | _io_out_bits_T_26; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_30 = _io_out_bits_T_29 | _io_out_bits_T_27; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_32 = chosenOH[0] ? io_in_0_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_33 = chosenOH[1] ? io_in_1_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_34 = chosenOH[2] ? io_in_2_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_35 = chosenOH[3] ? io_in_3_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_36 = _io_out_bits_T_32 | _io_out_bits_T_33; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_37 = _io_out_bits_T_36 | _io_out_bits_T_34; // @[Mux.scala 27:73]
  assign io_in_0_ready = chosenOH[0] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_1_ready = chosenOH[1] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_2_ready = chosenOH[2] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_3_ready = chosenOH[3] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 56:29]
  assign io_out_bits_tag = _io_out_bits_T_37 | _io_out_bits_T_35; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_30 | _io_out_bits_T_28; // @[Mux.scala 27:73]
  assign io_out_bits_opcode = _io_out_bits_T_16 | _io_out_bits_T_14; // @[Mux.scala 27:73]
  assign io_out_bits_param = _io_out_bits_T_9 | _io_out_bits_T_7; // @[Mux.scala 27:73]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      rrGrantMask <= 4'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      rrGrantMask <= _rrGrantMask_T_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      pendingMask <= 4'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      pendingMask <= _pendingMask_T_1;
    end
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
  rrGrantMask = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rrGrantMask = 4'h0;
  end
  if (reset) begin
    pendingMask = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

