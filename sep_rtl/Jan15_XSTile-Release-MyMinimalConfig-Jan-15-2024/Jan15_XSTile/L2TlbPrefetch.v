module L2TlbPrefetch(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  input         io_in_valid,
  input  [26:0] io_in_bits_vpn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_vpn
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
`endif // RANDOMIZE_REG_INIT
  reg [26:0] old_reqs_0; // @[L2TlbPrefetch.scala 39:21]
  reg [26:0] old_reqs_1; // @[L2TlbPrefetch.scala 39:21]
  reg [26:0] old_reqs_2; // @[L2TlbPrefetch.scala 39:21]
  reg [26:0] old_reqs_3; // @[L2TlbPrefetch.scala 39:21]
  reg  old_v_0; // @[L2TlbPrefetch.scala 40:22]
  reg  old_v_1; // @[L2TlbPrefetch.scala 40:22]
  reg  old_v_2; // @[L2TlbPrefetch.scala 40:22]
  reg  old_v_3; // @[L2TlbPrefetch.scala 40:22]
  reg [1:0] old_index; // @[L2TlbPrefetch.scala 41:26]
  wire  flush = io_sfence_valid | io_csr_satp_changed; // @[L2TlbPrefetch.scala 47:31]
  wire [23:0] _next_line_T_2 = io_in_bits_vpn[26:3] + 24'h1; // @[MMUConst.scala 251:31]
  wire [26:0] next_line = {_next_line_T_2,3'h0}; // @[Cat.scala 31:58]
  reg [26:0] next_req; // @[Reg.scala 16:16]
  wire  _input_valid_T_4 = old_reqs_0[26:3] == next_line[26:3]; // @[MMUConst.scala 269:28]
  wire  _input_valid_T_5 = _input_valid_T_4 & old_v_0; // @[L2TlbPrefetch.scala 44:59]
  wire  _input_valid_T_8 = old_reqs_1[26:3] == next_line[26:3]; // @[MMUConst.scala 269:28]
  wire  _input_valid_T_9 = _input_valid_T_8 & old_v_1; // @[L2TlbPrefetch.scala 44:59]
  wire  _input_valid_T_12 = old_reqs_2[26:3] == next_line[26:3]; // @[MMUConst.scala 269:28]
  wire  _input_valid_T_13 = _input_valid_T_12 & old_v_2; // @[L2TlbPrefetch.scala 44:59]
  wire  _input_valid_T_16 = old_reqs_3[26:3] == next_line[26:3]; // @[MMUConst.scala 269:28]
  wire  _input_valid_T_17 = _input_valid_T_16 & old_v_3; // @[L2TlbPrefetch.scala 44:59]
  wire [3:0] _input_valid_T_18 = {_input_valid_T_5,_input_valid_T_9,_input_valid_T_13,_input_valid_T_17}; // @[Cat.scala 31:58]
  wire  _input_valid_T_19 = |_input_valid_T_18; // @[L2TlbPrefetch.scala 44:66]
  wire  input_valid = io_in_valid & ~flush & ~_input_valid_T_19; // @[L2TlbPrefetch.scala 50:43]
  wire  _v_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg  v; // @[Hold.scala 40:24]
  wire  _GEN_1 = _v_T ? 1'h0 : v; // @[Hold.scala 41:20 40:24 41:28]
  wire  _GEN_2 = input_valid | _GEN_1; // @[Hold.scala 42:{19,27}]
  wire  _GEN_4 = 2'h0 == old_index | old_v_0; // @[L2TlbPrefetch.scala 40:22 58:{22,22}]
  wire  _GEN_5 = 2'h1 == old_index | old_v_1; // @[L2TlbPrefetch.scala 40:22 58:{22,22}]
  wire  _GEN_6 = 2'h2 == old_index | old_v_2; // @[L2TlbPrefetch.scala 40:22 58:{22,22}]
  wire  _GEN_7 = 2'h3 == old_index | old_v_3; // @[L2TlbPrefetch.scala 40:22 58:{22,22}]
  wire [1:0] _old_index_T_2 = old_index + 2'h1; // @[L2TlbPrefetch.scala 60:74]
  assign io_out_valid = v; // @[L2TlbPrefetch.scala 53:16]
  assign io_out_bits_vpn = next_req; // @[L2TlbPrefetch.scala 54:19]
  always @(posedge clock) begin
    if (_v_T) begin // @[L2TlbPrefetch.scala 57:22]
      if (2'h0 == old_index) begin // @[L2TlbPrefetch.scala 59:25]
        old_reqs_0 <= next_req; // @[L2TlbPrefetch.scala 59:25]
      end
    end
    if (_v_T) begin // @[L2TlbPrefetch.scala 57:22]
      if (2'h1 == old_index) begin // @[L2TlbPrefetch.scala 59:25]
        old_reqs_1 <= next_req; // @[L2TlbPrefetch.scala 59:25]
      end
    end
    if (_v_T) begin // @[L2TlbPrefetch.scala 57:22]
      if (2'h2 == old_index) begin // @[L2TlbPrefetch.scala 59:25]
        old_reqs_2 <= next_req; // @[L2TlbPrefetch.scala 59:25]
      end
    end
    if (_v_T) begin // @[L2TlbPrefetch.scala 57:22]
      if (2'h3 == old_index) begin // @[L2TlbPrefetch.scala 59:25]
        old_reqs_3 <= next_req; // @[L2TlbPrefetch.scala 59:25]
      end
    end
    if (io_in_valid) begin // @[Reg.scala 17:18]
      next_req <= next_line; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[L2TlbPrefetch.scala 63:16]
      old_v_0 <= 1'h0; // @[L2TlbPrefetch.scala 64:17]
    end else if (flush) begin // @[L2TlbPrefetch.scala 57:22]
      old_v_0 <= 1'h0;
    end else if (_v_T) begin // @[L2TlbPrefetch.scala 40:22]
      old_v_0 <= _GEN_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[L2TlbPrefetch.scala 63:16]
      old_v_1 <= 1'h0; // @[L2TlbPrefetch.scala 64:17]
    end else if (flush) begin // @[L2TlbPrefetch.scala 57:22]
      old_v_1 <= 1'h0;
    end else if (_v_T) begin // @[L2TlbPrefetch.scala 40:22]
      old_v_1 <= _GEN_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[L2TlbPrefetch.scala 63:16]
      old_v_2 <= 1'h0; // @[L2TlbPrefetch.scala 64:17]
    end else if (flush) begin // @[L2TlbPrefetch.scala 57:22]
      old_v_2 <= 1'h0;
    end else if (_v_T) begin // @[L2TlbPrefetch.scala 40:22]
      old_v_2 <= _GEN_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[L2TlbPrefetch.scala 63:16]
      old_v_3 <= 1'h0; // @[L2TlbPrefetch.scala 64:17]
    end else if (flush) begin // @[L2TlbPrefetch.scala 57:22]
      old_v_3 <= 1'h0;
    end else if (_v_T) begin // @[L2TlbPrefetch.scala 40:22]
      old_v_3 <= _GEN_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[L2TlbPrefetch.scala 57:22]
      old_index <= 2'h0; // @[L2TlbPrefetch.scala 60:21]
    end else if (_v_T) begin // @[L2TlbPrefetch.scala 41:26]
      if (old_index == 2'h3) begin
        old_index <= 2'h0;
      end else begin
        old_index <= _old_index_T_2;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Hold.scala 43:18]
      v <= 1'h0; // @[Hold.scala 43:26]
    end else if (flush) begin
      v <= 1'h0;
    end else begin
      v <= _GEN_2;
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
  old_reqs_0 = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  old_reqs_1 = _RAND_1[26:0];
  _RAND_2 = {1{`RANDOM}};
  old_reqs_2 = _RAND_2[26:0];
  _RAND_3 = {1{`RANDOM}};
  old_reqs_3 = _RAND_3[26:0];
  _RAND_4 = {1{`RANDOM}};
  old_v_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  old_v_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  old_v_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  old_v_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  old_index = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  next_req = _RAND_9[26:0];
  _RAND_10 = {1{`RANDOM}};
  v = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    old_v_0 = 1'h0;
  end
  if (reset) begin
    old_v_1 = 1'h0;
  end
  if (reset) begin
    old_v_2 = 1'h0;
  end
  if (reset) begin
    old_v_3 = 1'h0;
  end
  if (reset) begin
    old_index = 2'h0;
  end
  if (reset) begin
    v = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

