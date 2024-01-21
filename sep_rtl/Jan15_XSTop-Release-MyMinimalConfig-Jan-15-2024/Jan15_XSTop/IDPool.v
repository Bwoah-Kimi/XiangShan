module IDPool(
  input        clock,
  input        reset,
  input        io_free_valid,
  input  [2:0] io_free_bits,
  input        io_alloc_ready,
  output       io_alloc_valid,
  output [2:0] io_alloc_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] bitmap; // @[IDPool.scala 18:23]
  reg [2:0] select; // @[IDPool.scala 19:23]
  reg  valid; // @[IDPool.scala 20:23]
  wire [7:0] _taken_T = 8'h1 << io_alloc_bits; // @[OneHot.scala 64:12]
  wire [7:0] taken = io_alloc_ready ? _taken_T : 8'h0; // @[IDPool.scala 25:19]
  wire [7:0] _given_T = 8'h1 << io_free_bits; // @[OneHot.scala 64:12]
  wire [7:0] given = io_free_valid ? _given_T : 8'h0; // @[IDPool.scala 26:19]
  wire [7:0] _bitmap1_T = ~taken; // @[IDPool.scala 27:27]
  wire [7:0] _bitmap1_T_1 = bitmap & _bitmap1_T; // @[IDPool.scala 27:25]
  wire [7:0] bitmap1 = _bitmap1_T_1 | given; // @[IDPool.scala 27:35]
  wire [2:0] _select1_T_8 = bitmap1[6] ? 3'h6 : 3'h7; // @[Mux.scala 47:70]
  wire [2:0] _select1_T_9 = bitmap1[5] ? 3'h5 : _select1_T_8; // @[Mux.scala 47:70]
  wire [2:0] _select1_T_10 = bitmap1[4] ? 3'h4 : _select1_T_9; // @[Mux.scala 47:70]
  wire [2:0] _select1_T_11 = bitmap1[3] ? 3'h3 : _select1_T_10; // @[Mux.scala 47:70]
  wire [1:0] _valid1_T_9 = bitmap[0] + bitmap[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _valid1_T_11 = bitmap[2] + bitmap[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _valid1_T_13 = _valid1_T_9 + _valid1_T_11; // @[Bitwise.scala 48:55]
  wire [1:0] _valid1_T_15 = bitmap[4] + bitmap[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _valid1_T_17 = bitmap[6] + bitmap[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _valid1_T_19 = _valid1_T_15 + _valid1_T_17; // @[Bitwise.scala 48:55]
  wire [3:0] _valid1_T_21 = _valid1_T_13 + _valid1_T_19; // @[Bitwise.scala 48:55]
  wire  _valid1_T_26 = |bitmap & ~(_valid1_T_21 == 4'h1 & io_alloc_ready); // @[IDPool.scala 29:32]
  wire  valid1 = _valid1_T_26 | io_free_valid; // @[IDPool.scala 30:17]
  assign io_alloc_valid = valid; // @[IDPool.scala 22:18]
  assign io_alloc_bits = select; // @[IDPool.scala 23:18]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[IDPool.scala 33:42]
      bitmap <= 8'hff; // @[IDPool.scala 34:12]
    end else if (io_alloc_ready | io_free_valid) begin // @[IDPool.scala 18:23]
      bitmap <= bitmap1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[IDPool.scala 39:63]
      select <= 3'h0; // @[Mux.scala 47:{70,70,70}]
    end else if (io_alloc_ready | ~io_alloc_valid & io_free_valid) begin // @[IDPool.scala 19:23]
      if (bitmap1[0]) begin
        select <= 3'h0;
      end else if (bitmap1[1]) begin
        select <= 3'h1;
      end else if (bitmap1[2]) begin
        select <= 3'h2;
      end else begin
        select <= _select1_T_11;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[IDPool.scala 33:42]
      valid <= 1'h1; // @[IDPool.scala 35:12]
    end else if (io_alloc_ready | io_free_valid) begin // @[IDPool.scala 20:23]
      valid <= valid1;
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
  bitmap = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  select = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  valid = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    bitmap = 8'hff;
  end
  if (reset) begin
    select = 3'h0;
  end
  if (reset) begin
    valid = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

