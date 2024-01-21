module Queue_183(
  input          clock,
  input          reset,
  output         io_enq_ready,
  input          io_enq_valid,
  input  [255:0] io_enq_bits_data,
  input  [31:0]  io_enq_bits_mask,
  input          io_deq_ready,
  output         io_deq_valid,
  output [255:0] io_deq_bits_data,
  output [31:0]  io_deq_bits_mask
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [255:0] _RAND_0;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [255:0] ram_data [0:5]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [255:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [255:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg [31:0] ram_mask [0:5]; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_mask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_mask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [2:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  wrap = enq_ptr_value == 3'h5; // @[Counter.scala 74:24]
  wire [2:0] _value_T_1 = enq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  wire  wrap_1 = deq_ptr_value == 3'h5; // @[Counter.scala 74:24]
  wire [2:0] _value_T_3 = deq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_data_io_deq_bits_MPORT_data = ram_data_io_deq_bits_MPORT_addr >= 3'h6 ? _RAND_1[255:0] :
    ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = enq_ptr_value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_mask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_mask_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask_io_deq_bits_MPORT_addr >= 3'h6 ? _RAND_3[31:0] :
    ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_mask_MPORT_data = io_enq_bits_mask;
  assign ram_mask_MPORT_addr = enq_ptr_value;
  assign ram_mask_MPORT_mask = 1'h1;
  assign ram_mask_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_mask = ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_mask_MPORT_en & ram_mask_MPORT_mask) begin
      ram_mask[ram_mask_MPORT_addr] <= ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= 3'h0; // @[Counter.scala 78:15 88:{20,28}]
    end else if (do_enq) begin // @[Counter.scala 62:40]
      if (wrap) begin
        enq_ptr_value <= 3'h0;
      end else begin
        enq_ptr_value <= _value_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= 3'h0; // @[Counter.scala 78:15 88:{20,28}]
    end else if (do_deq) begin // @[Counter.scala 62:40]
      if (wrap_1) begin
        deq_ptr_value <= 3'h0;
      end else begin
        deq_ptr_value <= _value_T_3;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 279:27]
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {8{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {8{`RANDOM}};
  for (initvar = 0; initvar < 6; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[255:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 6; initvar = initvar+1)
    ram_mask[initvar] = _RAND_2[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  enq_ptr_value = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  deq_ptr_value = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  maybe_full = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    enq_ptr_value = 3'h0;
  end
  if (reset) begin
    deq_ptr_value = 3'h0;
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

