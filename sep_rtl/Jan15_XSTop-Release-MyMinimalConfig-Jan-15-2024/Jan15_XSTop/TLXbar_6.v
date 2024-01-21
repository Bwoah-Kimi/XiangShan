module TLXbar_6(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [8:0]  auto_in_a_bits_address,
  input  [31:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output        auto_in_d_bits_denied,
  output [31:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [6:0]  auto_out_1_a_bits_address,
  output [31:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [31:0] auto_out_1_d_bits_data,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output [8:0]  auto_out_0_a_bits_address,
  output [31:0] auto_out_0_a_bits_data,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input         auto_out_0_d_bits_denied,
  input  [31:0] auto_out_0_d_bits_data,
  input         auto_out_0_d_bits_corrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [9:0] _requestAIO_T_1 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 10'sh1c0; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_4 = $signed(_requestAIO_T_3) == 10'sh0; // @[Parameters.scala 137:67]
  wire [8:0] _requestAIO_T_5 = auto_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 10'sh1f4; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_9 = $signed(_requestAIO_T_8) == 10'sh0; // @[Parameters.scala 137:67]
  wire [8:0] _requestAIO_T_10 = auto_in_a_bits_address ^ 9'h58; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 10'sh1f8; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_14 = $signed(_requestAIO_T_13) == 10'sh0; // @[Parameters.scala 137:67]
  wire [8:0] _requestAIO_T_15 = auto_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 10'sh1e0; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_19 = $signed(_requestAIO_T_18) == 10'sh0; // @[Parameters.scala 137:67]
  wire [8:0] _requestAIO_T_20 = auto_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 10'sh180; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_24 = $signed(_requestAIO_T_23) == 10'sh0; // @[Parameters.scala 137:67]
  wire [8:0] _requestAIO_T_25 = auto_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 10'sh100; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_29 = $signed(_requestAIO_T_28) == 10'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_0 = _requestAIO_T_4 | _requestAIO_T_9 | _requestAIO_T_14 | _requestAIO_T_19 | _requestAIO_T_24 |
    _requestAIO_T_29; // @[Xbar.scala 363:92]
  wire [8:0] _requestAIO_T_35 = auto_in_a_bits_address ^ 9'h40; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_36 = {1'b0,$signed(_requestAIO_T_35)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_38 = $signed(_requestAIO_T_36) & 10'sh1f4; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_39 = $signed(_requestAIO_T_38) == 10'sh0; // @[Parameters.scala 137:67]
  wire [8:0] _requestAIO_T_40 = auto_in_a_bits_address ^ 9'h50; // @[Parameters.scala 137:31]
  wire [9:0] _requestAIO_T_41 = {1'b0,$signed(_requestAIO_T_40)}; // @[Parameters.scala 137:49]
  wire [9:0] _requestAIO_T_43 = $signed(_requestAIO_T_41) & 10'sh1f8; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_44 = $signed(_requestAIO_T_43) == 10'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_1 = _requestAIO_T_39 | _requestAIO_T_44; // @[Xbar.scala 363:92]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & auto_in_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] readys_valid = {auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {_readys_filter_T_1,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_1 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_1; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_2 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_2 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire [1:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & auto_out_0_d_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & auto_out_1_d_valid; // @[Arbiter.scala 97:79]
  wire  _T_10 = auto_out_0_d_valid | auto_out_1_d_valid; // @[Arbiter.scala 107:36]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state_0 & auto_out_0_d_valid | state_1 & auto_out_1_d_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_5_earlyValid = idle ? _T_10 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_5_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire [31:0] _T_27 = muxStateEarly_0 ? auto_out_0_d_bits_data : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_28 = muxStateEarly_1 ? auto_out_1_d_bits_data : 32'h0; // @[Mux.scala 27:73]
  assign auto_in_a_ready = requestAIO_0_0 & auto_out_0_a_ready | requestAIO_0_1 & auto_out_1_a_ready; // @[Mux.scala 27:73]
  assign auto_in_d_valid = idle ? _T_10 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_in_d_bits_denied = muxStateEarly_0 & auto_out_0_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_d_bits_data = _T_27 | _T_28; // @[Mux.scala 27:73]
  assign auto_in_d_bits_corrupt = muxStateEarly_0 & auto_out_0_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_1_a_valid = auto_in_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[6:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_d_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign auto_out_0_a_valid = auto_in_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_d_ready = auto_in_d_ready & allowed_0; // @[Arbiter.scala 123:31]
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
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 23:23]
      readys_mask <= _readys_mask_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_0 <= 1'h0;
    end else if (idle) begin
      state_0 <= earlyWinner_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1 <= 1'h0;
    end else if (idle) begin
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
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    readys_mask = 2'h3;
  end
  if (reset) begin
    state_0 = 1'h0;
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

