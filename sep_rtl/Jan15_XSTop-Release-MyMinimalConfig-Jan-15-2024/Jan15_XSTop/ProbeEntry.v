module ProbeEntry(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [35:0] io_req_bits_addr,
  input  [38:0] io_req_bits_vaddr,
  input  [1:0]  io_req_bits_param,
  input         io_req_bits_needData,
  input         io_pipe_req_ready,
  output        io_pipe_req_valid,
  output [1:0]  io_pipe_req_bits_probe_param,
  output        io_pipe_req_bits_probe_need_data,
  output [38:0] io_pipe_req_bits_vaddr,
  output [35:0] io_pipe_req_bits_addr,
  output [3:0]  io_pipe_req_bits_id,
  input         io_pipe_resp_valid,
  input  [1:0]  io_pipe_resp_bits_id,
  input         io_lrsc_locked_block_valid,
  input  [35:0] io_lrsc_locked_block_bits,
  input  [1:0]  io_id,
  output        io_block_addr_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[Probe.scala 62:22]
  reg [35:0] req_addr; // @[Probe.scala 64:16]
  reg [38:0] req_vaddr; // @[Probe.scala 64:16]
  reg [1:0] req_param; // @[Probe.scala 64:16]
  reg  req_needData; // @[Probe.scala 64:16]
  wire  _T_3 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_7 = _T_3 ? 2'h1 : state; // @[Probe.scala 84:26 86:13 62:22]
  wire [1:0] _GEN_16 = state == 2'h0 ? _GEN_7 : state; // @[Probe.scala 62:22 82:30]
  wire  _lrsc_blocked_T_4 = io_lrsc_locked_block_valid & io_lrsc_locked_block_bits[35:6] == io_req_bits_addr[35:6]; // @[Probe.scala 92:32]
  wire  _lrsc_blocked_T_8 = io_lrsc_locked_block_valid & io_lrsc_locked_block_bits[35:6] == req_addr[35:6]; // @[Probe.scala 93:32]
  reg  io_pipe_req_valid_REG; // @[Probe.scala 99:34]
  wire  _T_5 = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_17 = _T_5 ? 2'h2 : _GEN_16; // @[Probe.scala 112:31 113:13]
  wire [1:0] _GEN_26 = state == 2'h1 ? _GEN_17 : _GEN_16; // @[Probe.scala 96:31]
  assign io_req_ready = state == 2'h0; // @[Probe.scala 82:15]
  assign io_pipe_req_valid = state == 2'h1 & ~io_pipe_req_valid_REG; // @[Probe.scala 68:21 96:31 99:23]
  assign io_pipe_req_bits_probe_param = req_param; // @[Probe.scala 105:26 96:31]
  assign io_pipe_req_bits_probe_need_data = req_needData; // @[Probe.scala 108:30 96:31]
  assign io_pipe_req_bits_vaddr = req_vaddr; // @[Probe.scala 107:21 96:31]
  assign io_pipe_req_bits_addr = req_addr; // @[Probe.scala 106:21 96:31]
  assign io_pipe_req_bits_id = {{2'd0}, io_id};
  assign io_block_addr_valid = state != 2'h0; // @[Probe.scala 71:32]
  always @(posedge clock) begin
    if (state == 2'h0) begin // @[Probe.scala 82:30]
      if (_T_3) begin // @[Probe.scala 84:26]
        req_addr <= io_req_bits_addr; // @[Probe.scala 85:11]
      end
    end
    if (state == 2'h0) begin // @[Probe.scala 82:30]
      if (_T_3) begin // @[Probe.scala 84:26]
        req_vaddr <= io_req_bits_vaddr; // @[Probe.scala 85:11]
      end
    end
    if (state == 2'h0) begin // @[Probe.scala 82:30]
      if (_T_3) begin // @[Probe.scala 84:26]
        req_param <= io_req_bits_param; // @[Probe.scala 85:11]
      end
    end
    if (state == 2'h0) begin // @[Probe.scala 82:30]
      if (_T_3) begin // @[Probe.scala 84:26]
        req_needData <= io_req_bits_needData; // @[Probe.scala 85:11]
      end
    end
    if (_T_3) begin // @[Probe.scala 90:25]
      io_pipe_req_valid_REG <= _lrsc_blocked_T_4;
    end else begin
      io_pipe_req_valid_REG <= _lrsc_blocked_T_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Probe.scala 117:32]
      state <= 2'h0; // @[Probe.scala 118:65 119:13]
    end else if (state == 2'h2) begin
      if (io_pipe_resp_valid & io_id == io_pipe_resp_bits_id) begin
        state <= 2'h0;
      end else begin
        state <= _GEN_26;
      end
    end else begin
      state <= _GEN_26;
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
  state = _RAND_0[1:0];
  _RAND_1 = {2{`RANDOM}};
  req_addr = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  req_vaddr = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  req_param = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  req_needData = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_pipe_req_valid_REG = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

