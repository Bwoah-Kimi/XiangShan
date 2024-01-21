module TLError_1(
  input        clock,
  input        reset,
  output       auto_in_a_ready,
  input        auto_in_a_valid,
  input  [2:0] auto_in_a_bits_opcode,
  input        auto_in_d_ready,
  output       auto_in_d_valid,
  output [2:0] auto_in_d_bits_opcode,
  output       auto_in_d_bits_denied,
  output       auto_in_d_bits_corrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  idle; // @[Error.scala 24:23]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  da_valid = auto_in_a_valid & idle; // @[Error.scala 31:35]
  wire [1:0] _readys_T = {da_valid,1'h0}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_3 = _readys_T | _readys_T_1[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_7 = ~_readys_T_5[1:0]; // @[Arbiter.scala 16:61]
  wire  readys_1 = _readys_T_7[1]; // @[Arbiter.scala 95:86]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  allowed_1 = idle_1 ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  out_1_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 123:31]
  wire [2:0] _GEN_4 = 3'h2 == auto_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Error.scala 33:{21,21}]
  wire [2:0] _GEN_5 = 3'h3 == auto_in_a_bits_opcode ? 3'h1 : _GEN_4; // @[Error.scala 33:{21,21}]
  wire [2:0] _GEN_6 = 3'h4 == auto_in_a_bits_opcode ? 3'h1 : _GEN_5; // @[Error.scala 33:{21,21}]
  wire [2:0] _GEN_7 = 3'h5 == auto_in_a_bits_opcode ? 3'h2 : _GEN_6; // @[Error.scala 33:{21,21}]
  wire [2:0] _GEN_8 = 3'h6 == auto_in_a_bits_opcode ? 3'h4 : _GEN_7; // @[Error.scala 33:{21,21}]
  wire [2:0] da_bits_opcode = 3'h7 == auto_in_a_bits_opcode ? 3'h4 : _GEN_8; // @[Error.scala 33:{21,21}]
  wire  beats1_opdata = da_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  done = out_1_ready & da_valid; // @[Decoupled.scala 50:35]
  wire  latch = idle_1 & auto_in_d_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner_1 = readys_1 & da_valid; // @[Arbiter.scala 97:79]
  wire  muxStateEarly_1 = idle_1 ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_2 = state_1 & da_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle_1 ? da_valid : _sink_ACancel_earlyValid_T_2; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  assign auto_in_a_ready = out_1_ready & idle; // @[Error.scala 30:37]
  assign auto_in_d_valid = idle_1 ? da_valid : _sink_ACancel_earlyValid_T_2; // @[Arbiter.scala 125:29]
  assign auto_in_d_bits_opcode = muxStateEarly_1 ? da_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_in_d_bits_denied = idle_1 ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  assign auto_in_d_bits_corrupt = muxStateEarly_1 & beats1_opdata; // @[Mux.scala 27:73]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Error.scala 50:52]
      idle <= 1'h1; // @[Error.scala 50:59]
    end else if (done & da_bits_opcode == 3'h4) begin // @[Error.scala 24:23]
      idle <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 1'h0;
    end else if (latch) begin
      beatsLeft <= 1'h0;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1 <= 1'h0;
    end else if (idle_1) begin
      state_1 <= earlyWinner_1;
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
  idle = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  beatsLeft = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state_1 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    idle = 1'h1;
  end
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    state_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

