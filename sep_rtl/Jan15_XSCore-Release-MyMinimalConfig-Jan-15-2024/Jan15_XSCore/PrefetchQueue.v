module PrefetchQueue(
  input        clock,
  input        reset,
  input        io_mem_acquire_ready,
  output       io_mem_acquire_valid,
  output       io_mem_grant_ready,
  input        io_mem_grant_valid,
  input  [2:0] io_mem_grant_bits_opcode
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  handleEntry_readBeatCnt; // @[IPrefetch.scala 649:28]
  wire  _T_30 = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire  beats1_opdata = io_mem_grant_bits_opcode[0]; // @[Edges.scala 105:36]
  reg [1:0] state; // @[IPrefetch.scala 804:22]
  wire  _state_T = io_mem_acquire_ready & io_mem_acquire_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_48 = handleEntry_readBeatCnt ? 2'h3 : state; // @[IPrefetch.scala 832:65 834:17 804:22]
  wire  _GEN_51 = beats1_opdata & _T_30 & handleEntry_readBeatCnt + 1'h1; // @[IPrefetch.scala 829:69 830:33]
  assign io_mem_acquire_valid = state == 2'h1; // @[IPrefetch.scala 816:35]
  assign io_mem_grant_ready = 1'h1; // @[IPrefetch.scala 815:25]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[IPrefetch.scala 818:17]
      handleEntry_readBeatCnt <= 1'h0;
    end else if (2'h0 == state) begin // @[IPrefetch.scala 818:17]
      handleEntry_readBeatCnt <= 1'h0;
    end else if (2'h1 == state) begin
      handleEntry_readBeatCnt <= 1'h0;
    end else begin
      handleEntry_readBeatCnt <= 2'h2 == state & _GEN_51;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[IPrefetch.scala 818:17]
      state <= 2'h0;
    end else if (!(2'h0 == state)) begin // @[IPrefetch.scala 818:17]
      if (2'h1 == state) begin // @[IPrefetch.scala 818:17]
        if (_state_T) begin // @[IPrefetch.scala 829:69]
          state <= 2'h2;
        end else begin
          state <= 2'h1; // @[IPrefetch.scala 804:22]
        end
      end else if (2'h2 == state) begin // @[IPrefetch.scala 818:17]
        if (beats1_opdata & _T_30) begin // @[IPrefetch.scala 843:25]
          state <= _GEN_48;
        end
      end else if (2'h3 == state) begin // @[IPrefetch.scala 804:22]
        state <= 2'h0;
      end
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
  handleEntry_readBeatCnt = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    handleEntry_readBeatCnt = 1'h0;
  end
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

