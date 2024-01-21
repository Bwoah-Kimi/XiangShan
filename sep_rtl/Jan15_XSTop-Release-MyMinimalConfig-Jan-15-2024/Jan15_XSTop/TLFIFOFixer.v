module TLFIFOFixer(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_size,
  input  [1:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [2:0]   auto_in_d_bits_size,
  output [1:0]   auto_in_d_bits_source,
  output         auto_in_d_bits_denied,
  output [255:0] auto_in_d_bits_data,
  output         auto_in_d_bits_corrupt,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [1:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [2:0]   auto_out_d_bits_size,
  input  [1:0]   auto_out_d_bits_source,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_d_bits_corrupt
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
`endif // RANDOMIZE_REG_INIT
  wire [36:0] _a_notFIFO_T_1 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _a_id_T_3 = $signed(_a_notFIFO_T_1) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  a_id = $signed(_a_id_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire  a_noDomain = ~a_id; // @[FIFOFixer.scala 55:29]
  wire  stalls_a_sel = ~auto_in_a_bits_source[1]; // @[Parameters.scala 54:32]
  reg  a_first_counter; // @[Edges.scala 228:27]
  wire  a_first = ~a_first_counter; // @[Edges.scala 230:25]
  reg  flight_0; // @[FIFOFixer.scala 71:27]
  reg  flight_1; // @[FIFOFixer.scala 71:27]
  reg  stalls_id; // @[Reg.scala 16:16]
  wire  stalls_0 = stalls_a_sel & a_first & (flight_0 | flight_1) & (a_noDomain | stalls_id != a_id); // @[FIFOFixer.scala 80:50]
  reg  flight_2; // @[FIFOFixer.scala 71:27]
  reg  flight_3; // @[FIFOFixer.scala 71:27]
  reg  stalls_id_1; // @[Reg.scala 16:16]
  wire  stalls_1 = auto_in_a_bits_source[1] & a_first & (flight_2 | flight_3) & (a_noDomain | stalls_id_1 != a_id); // @[FIFOFixer.scala 80:50]
  wire  stall = stalls_0 | stalls_1; // @[FIFOFixer.scala 83:49]
  wire  _bundleIn_0_a_ready_T = ~stall; // @[FIFOFixer.scala 88:50]
  wire  bundleIn_0_a_ready = auto_out_a_ready & ~stall; // @[FIFOFixer.scala 88:33]
  wire  _a_first_T = bundleIn_0_a_ready & auto_in_a_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _a_first_beats1_decode_T_1 = 13'h3f << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _a_first_beats1_decode_T_3 = ~_a_first_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  a_first_beats1_decode = _a_first_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  a_first_beats1_opdata = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  a_first_beats1 = a_first_beats1_opdata & a_first_beats1_decode; // @[Edges.scala 220:14]
  wire  a_first_counter1 = a_first_counter - 1'h1; // @[Edges.scala 229:28]
  wire  _d_first_T = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _d_first_beats1_decode_T_1 = 13'h3f << auto_out_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_first_beats1_decode_T_3 = ~_d_first_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  d_first_beats1_decode = _d_first_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  d_first_beats1_opdata = auto_out_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_first_beats1 = d_first_beats1_opdata & d_first_beats1_decode; // @[Edges.scala 220:14]
  reg  d_first_counter; // @[Edges.scala 228:27]
  wire  d_first_counter1 = d_first_counter - 1'h1; // @[Edges.scala 229:28]
  wire  d_first_first = ~d_first_counter; // @[Edges.scala 230:25]
  wire  d_first = d_first_first & auto_out_d_bits_opcode != 3'h6; // @[FIFOFixer.scala 67:42]
  wire  _GEN_6 = a_first & _a_first_T ? 2'h0 == auto_in_a_bits_source | flight_0 : flight_0; // @[FIFOFixer.scala 71:27 72:37]
  wire  _GEN_7 = a_first & _a_first_T ? 2'h1 == auto_in_a_bits_source | flight_1 : flight_1; // @[FIFOFixer.scala 71:27 72:37]
  wire  _GEN_8 = a_first & _a_first_T ? 2'h2 == auto_in_a_bits_source | flight_2 : flight_2; // @[FIFOFixer.scala 71:27 72:37]
  wire  _GEN_9 = a_first & _a_first_T ? 2'h3 == auto_in_a_bits_source | flight_3 : flight_3; // @[FIFOFixer.scala 71:27 72:37]
  wire  _stalls_id_T_1 = _a_first_T & stalls_a_sel; // @[FIFOFixer.scala 77:49]
  wire  _stalls_id_T_5 = _a_first_T & auto_in_a_bits_source[1]; // @[FIFOFixer.scala 77:49]
  assign auto_in_a_ready = auto_out_a_ready & ~stall; // @[FIFOFixer.scala 88:33]
  assign auto_in_d_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_a_valid = auto_in_a_valid & _bundleIn_0_a_ready_T; // @[FIFOFixer.scala 87:33]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_d_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  always @(posedge clock) begin
    if (_stalls_id_T_1) begin // @[Reg.scala 17:18]
      stalls_id <= a_id; // @[Reg.scala 17:22]
    end
    if (_stalls_id_T_5) begin // @[Reg.scala 17:18]
      stalls_id_1 <= a_id; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      a_first_counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_a_first_T) begin // @[Edges.scala 228:27]
      if (a_first) begin
        a_first_counter <= a_first_beats1;
      end else begin
        a_first_counter <= a_first_counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FIFOFixer.scala 73:37]
      flight_0 <= 1'h0; // @[FIFOFixer.scala 73:{64,64}]
    end else if (d_first & _d_first_T) begin
      if (2'h0 == auto_out_d_bits_source) begin
        flight_0 <= 1'h0;
      end else begin
        flight_0 <= _GEN_6;
      end
    end else begin
      flight_0 <= _GEN_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FIFOFixer.scala 73:37]
      flight_1 <= 1'h0; // @[FIFOFixer.scala 73:{64,64}]
    end else if (d_first & _d_first_T) begin
      if (2'h1 == auto_out_d_bits_source) begin
        flight_1 <= 1'h0;
      end else begin
        flight_1 <= _GEN_7;
      end
    end else begin
      flight_1 <= _GEN_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FIFOFixer.scala 73:37]
      flight_2 <= 1'h0; // @[FIFOFixer.scala 73:{64,64}]
    end else if (d_first & _d_first_T) begin
      if (2'h2 == auto_out_d_bits_source) begin
        flight_2 <= 1'h0;
      end else begin
        flight_2 <= _GEN_8;
      end
    end else begin
      flight_2 <= _GEN_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FIFOFixer.scala 73:37]
      flight_3 <= 1'h0; // @[FIFOFixer.scala 73:{64,64}]
    end else if (d_first & _d_first_T) begin
      if (2'h3 == auto_out_d_bits_source) begin
        flight_3 <= 1'h0;
      end else begin
        flight_3 <= _GEN_9;
      end
    end else begin
      flight_3 <= _GEN_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      d_first_counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_d_first_T) begin // @[Edges.scala 228:27]
      if (d_first_first) begin
        d_first_counter <= d_first_beats1;
      end else begin
        d_first_counter <= d_first_counter1;
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
  a_first_counter = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  flight_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  flight_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  stalls_id = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  flight_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  flight_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  stalls_id_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  d_first_counter = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    a_first_counter = 1'h0;
  end
  if (reset) begin
    flight_0 = 1'h0;
  end
  if (reset) begin
    flight_1 = 1'h0;
  end
  if (reset) begin
    flight_2 = 1'h0;
  end
  if (reset) begin
    flight_3 = 1'h0;
  end
  if (reset) begin
    d_first_counter = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

