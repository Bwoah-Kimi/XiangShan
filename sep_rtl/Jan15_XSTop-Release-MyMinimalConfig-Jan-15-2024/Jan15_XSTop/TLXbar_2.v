module TLXbar_2(
  input          clock,
  input          reset,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [2:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [2:0]   auto_in_1_d_bits_size,
  output [2:0]   auto_in_1_d_bits_source,
  output         auto_in_1_d_bits_denied,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [8:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [1:0]   auto_in_0_bparam,
  output [35:0]  auto_in_0_baddress,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [8:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input          auto_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [8:0]   auto_in_0_d_bits_source,
  output [3:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output         auto_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  input          auto_in_0_e_valid,
  input  [3:0]   auto_in_0_e_bits_sink,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_param,
  output [2:0]   auto_out_a_bits_size,
  output [9:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_bready,
  input          auto_out_bvalid,
  input  [1:0]   auto_out_bparam,
  input  [35:0]  auto_out_baddress,
  input  [255:0] auto_out_bdata,
  input          auto_out_c_ready,
  output         auto_out_c_valid,
  output [2:0]   auto_out_c_bits_opcode,
  output [2:0]   auto_out_c_bits_param,
  output [2:0]   auto_out_c_bits_size,
  output [9:0]   auto_out_c_bits_source,
  output [35:0]  auto_out_c_bits_address,
  output         auto_out_c_bits_echo_blockisdirty,
  output [255:0] auto_out_c_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [9:0]   auto_out_d_bits_source,
  input  [3:0]   auto_out_d_bits_sink,
  input          auto_out_d_bits_denied,
  input          auto_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_d_bits_corrupt,
  output         auto_out_e_valid,
  output [3:0]   auto_out_e_bits_sink
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [9:0] _GEN_1 = {{7'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 237:55]
  wire [9:0] in_1_a_bits_source = _GEN_1 | 10'h200; // @[Xbar.scala 237:55]
  wire  requestDOI_0_0 = ~auto_out_d_bits_source[9]; // @[Parameters.scala 54:32]
  wire  requestDOI_0_1 = auto_out_d_bits_source[9:3] == 7'h40; // @[Parameters.scala 54:32]
  wire [12:0] _beatsAI_decode_T_1 = 13'h3f << auto_in_0_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_3 = ~_beatsAI_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode = _beatsAI_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_0 = beatsAI_opdata & beatsAI_decode; // @[Edges.scala 220:14]
  wire [12:0] _beatsAI_decode_T_5 = 13'h3f << auto_in_1_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_7 = ~_beatsAI_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode_1 = _beatsAI_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_1 = ~auto_in_1_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_1 = beatsAI_opdata_1 & beatsAI_decode_1; // @[Edges.scala 220:14]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & auto_out_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] readys_valid = {auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {_readys_filter_T_1,auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_2 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_2; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_3 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_3 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire [1:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & auto_in_0_a_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & auto_in_1_a_valid; // @[Arbiter.scala 97:79]
  wire  _T_11 = auto_in_0_a_valid | auto_in_1_a_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_3 = state_0 & auto_in_0_a_valid | state_1 & auto_in_1_a_valid; // @[Mux.scala 27:73]
  wire  out_2_0_a_earlyValid = idle ? _T_11 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_a_ready & out_2_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire [255:0] _T_28 = muxStateEarly_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_29 = muxStateEarly_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_31 = muxStateEarly_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_32 = muxStateEarly_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_37 = muxStateEarly_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_38 = muxStateEarly_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [9:0] in_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 231:18 237:29]
  wire [9:0] _T_40 = muxStateEarly_0 ? in_0_a_bits_source : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _T_41 = muxStateEarly_1 ? in_1_a_bits_source : 10'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_43 = muxStateEarly_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_44 = muxStateEarly_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_46 = muxStateEarly_0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_47 = muxStateEarly_1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_49 = muxStateEarly_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_50 = muxStateEarly_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_in_1_a_ready = auto_out_a_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign auto_in_1_d_valid = auto_out_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  assign auto_in_1_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_source = auto_out_d_bits_source[2:0]; // @[Xbar.scala 228:69]
  assign auto_in_1_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_a_ready = auto_out_a_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign auto_in_0_bvalid = auto_out_bvalid; // @[Xbar.scala 179:40]
  assign auto_in_0_bparam = auto_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_baddress = auto_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_bdata = auto_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_c_ready = auto_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_valid = auto_out_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  assign auto_in_0_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_source = auto_out_d_bits_source[8:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_sink = auto_out_d_bits_sink; // @[Xbar.scala 323:53]
  assign auto_in_0_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_echo_blockisdirty = auto_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_a_valid = idle ? _T_11 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_a_bits_opcode = _T_49 | _T_50; // @[Mux.scala 27:73]
  assign auto_out_a_bits_param = _T_46 | _T_47; // @[Mux.scala 27:73]
  assign auto_out_a_bits_size = _T_43 | _T_44; // @[Mux.scala 27:73]
  assign auto_out_a_bits_source = _T_40 | _T_41; // @[Mux.scala 27:73]
  assign auto_out_a_bits_address = _T_37 | _T_38; // @[Mux.scala 27:73]
  assign auto_out_a_bits_mask = _T_31 | _T_32; // @[Mux.scala 27:73]
  assign auto_out_a_bits_data = _T_28 | _T_29; // @[Mux.scala 27:73]
  assign auto_out_bready = auto_in_0_bready; // @[Mux.scala 27:73]
  assign auto_out_c_valid = auto_in_0_c_valid; // @[ReadyValidCancel.scala 21:38]
  assign auto_out_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_d_ready = requestDOI_0_0 & auto_in_0_d_ready | requestDOI_0_1 & auto_in_1_d_ready; // @[Mux.scala 27:73]
  assign auto_out_e_valid = auto_in_0_e_valid; // @[ReadyValidCancel.scala 21:38]
  assign auto_out_e_bits_sink = auto_in_0_e_bits_sink; // @[Xbar.scala 228:69]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 1'h0;
    end else if (latch) begin
      beatsLeft <= initBeats;
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

