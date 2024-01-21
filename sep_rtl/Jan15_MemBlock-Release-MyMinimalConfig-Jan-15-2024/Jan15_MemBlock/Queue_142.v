module Queue_142(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [26:0] io_enq_bits_vpn,
  input  [1:0]  io_enq_bits_source,
  input         io_deq_ready,
  output        io_deq_valid,
  output [26:0] io_deq_bits_vpn,
  output [1:0]  io_deq_bits_source,
  input         io_flush
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [26:0] ram_vpn [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_vpn_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_vpn_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [26:0] ram_vpn_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [26:0] ram_vpn_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_vpn_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_vpn_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_vpn_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_source [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] value; // @[Counter.scala 62:40]
  reg [3:0] value_1; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire [3:0] _value_T_1 = value + 4'h1; // @[Counter.scala 78:24]
  wire [3:0] _value_T_3 = value_1 + 4'h1; // @[Counter.scala 78:24]
  assign ram_vpn_io_deq_bits_MPORT_en = 1'h1;
  assign ram_vpn_io_deq_bits_MPORT_addr = value_1;
  assign ram_vpn_io_deq_bits_MPORT_data = ram_vpn[ram_vpn_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_vpn_MPORT_data = io_enq_bits_vpn;
  assign ram_vpn_MPORT_addr = value;
  assign ram_vpn_MPORT_mask = 1'h1;
  assign ram_vpn_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = value_1;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = value;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_vpn = ram_vpn_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_source = ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_vpn_MPORT_en & ram_vpn_MPORT_mask) begin
      ram_vpn[ram_vpn_MPORT_addr] <= ram_vpn_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_source_MPORT_en & ram_source_MPORT_mask) begin
      ram_source[ram_source_MPORT_addr] <= ram_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 282:15]
      value <= 4'h0; // @[Counter.scala 99:11]
    end else if (io_flush) begin // @[Decoupled.scala 272:16]
      value <= 4'h0; // @[Counter.scala 78:15]
    end else if (do_enq) begin // @[Counter.scala 62:40]
      value <= _value_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 282:15]
      value_1 <= 4'h0; // @[Counter.scala 99:11]
    end else if (io_flush) begin // @[Decoupled.scala 276:16]
      value_1 <= 4'h0; // @[Counter.scala 78:15]
    end else if (do_deq) begin // @[Counter.scala 62:40]
      value_1 <= _value_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 282:15]
      maybe_full <= 1'h0; // @[Decoupled.scala 285:16]
    end else if (io_flush) begin // @[Decoupled.scala 279:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 280:16]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 262:27]
      maybe_full <= do_enq;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_vpn[initvar] = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_source[initvar] = _RAND_1[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  value_1 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  maybe_full = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    value = 4'h0;
  end
  if (reset) begin
    value_1 = 4'h0;
  end
  if (reset) begin
    maybe_full = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

