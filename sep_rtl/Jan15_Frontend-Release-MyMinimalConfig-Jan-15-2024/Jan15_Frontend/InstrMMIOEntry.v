module InstrMMIOEntry(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [35:0] io_req_bits_addr,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  input         io_mmio_acquire_ready,
  output        io_mmio_acquire_valid,
  output [35:0] io_mmio_acquire_bits_address,
  output        io_mmio_grant_ready,
  input         io_mmio_grant_valid,
  input  [63:0] io_mmio_grant_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[InstrUncache.scala 57:22]
  reg [35:0] req_addr; // @[InstrUncache.scala 59:22]
  reg [63:0] respDataReg; // @[InstrUncache.scala 60:24]
  wire  _T_4 = state == 2'h3; // @[InstrUncache.scala 75:19]
  wire  _T_7 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_3 = _T_7 ? 2'h1 : state; // @[InstrUncache.scala 82:26 84:13 57:22]
  wire [1:0] _GEN_6 = state == 2'h0 ? _GEN_3 : state; // @[InstrUncache.scala 57:22 79:30]
  wire [32:0] address_aligned = req_addr[35:3]; // @[InstrUncache.scala 90:35]
  wire  _T_9 = io_mmio_acquire_ready & io_mmio_acquire_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_7 = _T_9 ? 2'h2 : _GEN_6; // @[InstrUncache.scala 98:35 99:13]
  wire [1:0] _GEN_17 = state == 2'h1 ? _GEN_7 : _GEN_6; // @[InstrUncache.scala 89:33]
  wire  _refill_done_T = io_mmio_grant_ready & io_mmio_grant_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_20 = _refill_done_T ? 2'h3 : _GEN_17; // @[InstrUncache.scala 108:33 110:13]
  wire [1:0] _GEN_23 = state == 2'h2 ? _GEN_20 : _GEN_17; // @[InstrUncache.scala 105:34]
  wire [16:0] _io_resp_bits_data_respData_T_10 = {1'h0,respDataReg[63:48]}; // @[Cat.scala 31:58]
  wire [31:0] _io_resp_bits_data_respData_T_11 = req_addr[2:1] == 2'h2 ? respDataReg[63:32] : {{15'd0},
    _io_resp_bits_data_respData_T_10}; // @[InstrUncache.scala 118:14]
  wire [31:0] _io_resp_bits_data_respData_T_12 = req_addr[2:1] == 2'h1 ? respDataReg[47:16] :
    _io_resp_bits_data_respData_T_11; // @[InstrUncache.scala 117:12]
  assign io_req_ready = state == 2'h0; // @[InstrUncache.scala 79:15]
  assign io_resp_valid = state == 2'h3; // @[InstrUncache.scala 126:15]
  assign io_resp_bits_data = req_addr[2:1] == 2'h0 ? respDataReg[31:0] : _io_resp_bits_data_respData_T_12; // @[InstrUncache.scala 116:20]
  assign io_mmio_acquire_valid = state == 2'h1; // @[InstrUncache.scala 89:15]
  assign io_mmio_acquire_bits_address = {address_aligned,3'h0}; // @[Cat.scala 31:58]
  assign io_mmio_grant_ready = state == 2'h2; // @[InstrUncache.scala 105:15]
  always @(posedge clock) begin
    if (state == 2'h0) begin // @[InstrUncache.scala 79:30]
      if (_T_7) begin // @[InstrUncache.scala 82:26]
        req_addr <= io_req_bits_addr; // @[InstrUncache.scala 83:13]
      end
    end
    if (state == 2'h2) begin // @[InstrUncache.scala 105:34]
      if (_refill_done_T) begin // @[InstrUncache.scala 108:33]
        respDataReg <= io_mmio_grant_bits_data; // @[InstrUncache.scala 109:19]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InstrUncache.scala 126:32]
      state <= 2'h0; // @[InstrUncache.scala 130:40 131:13]
    end else if (_T_4) begin
      if (io_resp_valid) begin
        state <= 2'h0;
      end else begin
        state <= _GEN_23;
      end
    end else begin
      state <= _GEN_23;
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
  respDataReg = _RAND_2[63:0];
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

