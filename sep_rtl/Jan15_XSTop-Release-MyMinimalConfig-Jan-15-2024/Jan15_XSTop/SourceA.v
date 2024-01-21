module SourceA(
  input          clock,
  input          reset,
  input          io_a_ready,
  output         io_a_valid,
  output [2:0]   io_a_bits_opcode,
  output [2:0]   io_a_bits_param,
  output [2:0]   io_a_bits_size,
  output [3:0]   io_a_bits_source,
  output [35:0]  io_a_bits_address,
  output [31:0]  io_a_bits_mask,
  output [255:0] io_a_bits_data,
  output         io_task_ready,
  input          io_task_valid,
  input  [21:0]  io_task_bits_tag,
  input  [7:0]   io_task_bits_set,
  input  [5:0]   io_task_bits_off,
  input  [2:0]   io_task_bits_opcode,
  input  [2:0]   io_task_bits_param,
  input  [3:0]   io_task_bits_source,
  input  [2:0]   io_task_bits_bufIdx,
  input  [2:0]   io_task_bits_size,
  input          io_task_bits_putData,
  input          io_pb_pop_ready,
  output         io_pb_pop_valid,
  output [2:0]   io_pb_pop_bits_bufIdx,
  output         io_pb_pop_bits_count,
  output         io_pb_pop_bits_last,
  input  [255:0] io_pb_beat_data,
  input  [31:0]  io_pb_beat_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [255:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  reg  busy; // @[SourceA.scala 43:21]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  a_acquire_valid = io_task_valid & ~io_task_bits_putData; // @[SourceA.scala 63:36]
  reg  s1_full; // @[SourceA.scala 66:24]
  wire [1:0] _readys_T = {a_acquire_valid,s1_full}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_3 = _readys_T | _readys_T_1[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_7 = ~_readys_T_5[1:0]; // @[Arbiter.scala 16:61]
  wire  readys_1 = _readys_T_7[1]; // @[Arbiter.scala 95:86]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  out_1_ready = io_a_ready & allowed_1; // @[Arbiter.scala 123:31]
  wire  _T = io_task_ready & io_task_valid; // @[Decoupled.scala 50:35]
  wire  _T_1 = _T & io_task_bits_putData; // @[SourceA.scala 48:24]
  wire  _GEN_0 = _T & io_task_bits_putData | busy; // @[SourceA.scala 48:49 49:10 43:21]
  wire [35:0] a_acquire_bits_address = {io_task_bits_tag,io_task_bits_set,6'h0}; // @[Cat.scala 31:58]
  reg [21:0] s0_task_tag; // @[Reg.scala 16:16]
  reg [7:0] s0_task_set; // @[Reg.scala 16:16]
  reg [5:0] s0_task_off; // @[Reg.scala 16:16]
  reg [2:0] s0_task_opcode; // @[Reg.scala 16:16]
  reg [2:0] s0_task_param; // @[Reg.scala 16:16]
  reg [3:0] s0_task_source; // @[Reg.scala 16:16]
  reg [2:0] s0_task_bufIdx; // @[Reg.scala 16:16]
  reg [2:0] s0_task_size; // @[Reg.scala 16:16]
  reg  s0_count; // @[SourceA.scala 70:25]
  wire  s0_last = s0_task_size == 3'h6 ? s0_count : ~s0_count; // @[SourceA.scala 73:20]
  wire  s0_valid = io_pb_pop_ready & io_pb_pop_valid; // @[Decoupled.scala 50:35]
  wire  readys_0 = _readys_T_7[0]; // @[Arbiter.scala 95:86]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  out_ready = io_a_ready & allowed_0; // @[Arbiter.scala 123:31]
  wire  s1_cango = s1_full & out_ready; // @[SourceA.scala 93:21]
  wire  s1_ready = s1_cango | ~s1_full; // @[SourceA.scala 96:24]
  wire  s1_latch = s0_valid & s1_ready; // @[SourceA.scala 90:27]
  reg [21:0] s1_task_tag; // @[Reg.scala 16:16]
  reg [7:0] s1_task_set; // @[Reg.scala 16:16]
  reg [5:0] s1_task_off; // @[Reg.scala 16:16]
  reg [2:0] s1_task_opcode; // @[Reg.scala 16:16]
  reg [2:0] s1_task_param; // @[Reg.scala 16:16]
  reg [3:0] s1_task_source; // @[Reg.scala 16:16]
  reg [2:0] s1_task_size; // @[Reg.scala 16:16]
  reg  s1_pb_latch_REG; // @[SourceA.scala 94:51]
  reg [255:0] s1_pb_latch_rdata; // @[Reg.scala 28:20]
  reg [31:0] s1_pb_latch_rmask; // @[Reg.scala 28:20]
  wire [31:0] _GEN_31 = s1_pb_latch_REG ? io_pb_beat_mask : s1_pb_latch_rmask; // @[Reg.scala 29:18 28:20 29:22]
  wire [255:0] _GEN_32 = s1_pb_latch_REG ? io_pb_beat_data : s1_pb_latch_rdata; // @[Reg.scala 29:18 28:20 29:22]
  wire  _GEN_33 = s1_full & s1_cango ? 1'h0 : s1_full; // @[SourceA.scala 66:24 98:{29,39}]
  wire [35:0] a_put_bits_address = {s1_task_tag,s1_task_set,s1_task_off}; // @[Cat.scala 31:58]
  wire [12:0] _decode_T_1 = 13'h3f << s1_task_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_3 = ~_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  decode = _decode_T_3[5]; // @[Edges.scala 219:59]
  wire  opdata = ~s1_task_opcode[2]; // @[Edges.scala 91:28]
  wire  _T_4 = opdata & decode; // @[Edges.scala 220:14]
  wire  opdata_1 = ~io_task_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  latch = idle & io_a_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner_0 = readys_0 & s1_full; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & a_acquire_valid; // @[Arbiter.scala 97:79]
  wire  _T_16 = s1_full | a_acquire_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner_0 & _T_4; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner_1 & opdata_1; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state_0 & s1_full | state_1 & a_acquire_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_16 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_a_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [31:0] _T_36 = muxStateEarly_0 ? _GEN_31 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_37 = muxStateEarly_1 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_39 = muxStateEarly_0 ? a_put_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_40 = muxStateEarly_1 ? a_acquire_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_42 = muxStateEarly_0 ? s1_task_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_43 = muxStateEarly_1 ? io_task_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_45 = muxStateEarly_0 ? s1_task_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_46 = muxStateEarly_1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_48 = muxStateEarly_0 ? s1_task_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_49 = muxStateEarly_1 ? io_task_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_51 = muxStateEarly_0 ? s1_task_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_52 = muxStateEarly_1 ? io_task_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign io_a_valid = idle ? _T_16 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign io_a_bits_opcode = _T_51 | _T_52; // @[Mux.scala 27:73]
  assign io_a_bits_param = _T_48 | _T_49; // @[Mux.scala 27:73]
  assign io_a_bits_size = _T_45 | _T_46; // @[Mux.scala 27:73]
  assign io_a_bits_source = _T_42 | _T_43; // @[Mux.scala 27:73]
  assign io_a_bits_address = _T_39 | _T_40; // @[Mux.scala 27:73]
  assign io_a_bits_mask = _T_36 | _T_37; // @[Mux.scala 27:73]
  assign io_a_bits_data = muxStateEarly_0 ? _GEN_32 : 256'h0; // @[Mux.scala 27:73]
  assign io_task_ready = out_1_ready & ~busy; // @[SourceA.scala 46:36]
  assign io_pb_pop_valid = busy & s1_ready; // @[SourceA.scala 76:27]
  assign io_pb_pop_bits_bufIdx = s0_task_bufIdx; // @[SourceA.scala 77:25]
  assign io_pb_pop_bits_count = s0_count; // @[SourceA.scala 78:24]
  assign io_pb_pop_bits_last = s0_task_size == 3'h6 ? s0_count : ~s0_count; // @[SourceA.scala 73:20]
  always @(posedge clock) begin
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_tag <= io_task_bits_tag; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_set <= io_task_bits_set; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_off <= io_task_bits_off; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_opcode <= io_task_bits_opcode; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_param <= io_task_bits_param; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_source <= io_task_bits_source; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_bufIdx <= io_task_bits_bufIdx; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      s0_task_size <= io_task_bits_size; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_tag <= s0_task_tag; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_set <= s0_task_set; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_off <= s0_task_off; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_opcode <= s0_task_opcode; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_param <= s0_task_param; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_source <= s0_task_source; // @[Reg.scala 17:22]
    end
    if (s1_latch) begin // @[Reg.scala 17:18]
      s1_task_size <= s0_task_size; // @[Reg.scala 17:22]
    end
    s1_pb_latch_REG <= s0_valid & s1_ready; // @[SourceA.scala 90:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceA.scala 81:27]
      busy <= 1'h0; // @[SourceA.scala 83:20 84:12]
    end else if (s0_valid) begin
      if (s0_last) begin
        busy <= 1'h0;
      end else begin
        busy <= _GEN_0;
      end
    end else begin
      busy <= _GEN_0;
    end
  end
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
    if (reset) begin // @[SourceA.scala 99:18]
      s1_full <= 1'h0; // @[SourceA.scala 99:28]
    end else begin
      s1_full <= s1_latch | _GEN_33;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1 <= 1'h0;
    end else if (idle) begin
      state_1 <= earlyWinner_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceA.scala 81:27]
      s0_count <= 1'h0; // @[SourceA.scala 82:14 83:20 85:16]
    end else if (s0_valid) begin // @[SourceA.scala 70:25]
      if (s0_last) begin
        s0_count <= 1'h0;
      end else begin
        s0_count <= s0_count + 1'h1;
      end
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
    if (reset) begin // @[Reg.scala 29:18]
      s1_pb_latch_rdata <= 256'h0; // @[Reg.scala 29:22]
    end else if (s1_pb_latch_REG) begin // @[Reg.scala 28:20]
      s1_pb_latch_rdata <= io_pb_beat_data;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      s1_pb_latch_rmask <= 32'h0; // @[Reg.scala 29:22]
    end else if (s1_pb_latch_REG) begin // @[Reg.scala 28:20]
      s1_pb_latch_rmask <= io_pb_beat_mask;
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
  busy = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  beatsLeft = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_full = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s0_task_tag = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  s0_task_set = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  s0_task_off = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  s0_task_opcode = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  s0_task_param = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  s0_task_source = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  s0_task_bufIdx = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  s0_task_size = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  s0_count = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  state_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s1_task_tag = _RAND_14[21:0];
  _RAND_15 = {1{`RANDOM}};
  s1_task_set = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  s1_task_off = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  s1_task_opcode = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  s1_task_param = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  s1_task_source = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  s1_task_size = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  s1_pb_latch_REG = _RAND_21[0:0];
  _RAND_22 = {8{`RANDOM}};
  s1_pb_latch_rdata = _RAND_22[255:0];
  _RAND_23 = {1{`RANDOM}};
  s1_pb_latch_rmask = _RAND_23[31:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    busy = 1'h0;
  end
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    s1_full = 1'h0;
  end
  if (reset) begin
    state_1 = 1'h0;
  end
  if (reset) begin
    s0_count = 1'h0;
  end
  if (reset) begin
    state_0 = 1'h0;
  end
  if (reset) begin
    s1_pb_latch_rdata = 256'h0;
  end
  if (reset) begin
    s1_pb_latch_rmask = 32'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

