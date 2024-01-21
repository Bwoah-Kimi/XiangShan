module MSHRSelector(
  input         io_idle_0,
  input         io_idle_1,
  input         io_idle_2,
  input         io_idle_3,
  input         io_idle_4,
  input         io_idle_5,
  input         io_idle_6,
  input         io_idle_7,
  input         io_idle_8,
  input         io_idle_9,
  input         io_idle_10,
  input         io_idle_11,
  input         io_idle_12,
  input         io_idle_13,
  input         io_idle_14,
  output [15:0] io_out_bits
);
  wire  _io_out_valid_T = io_idle_0 | io_idle_1; // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_2 = io_idle_0 | io_idle_1 | (io_idle_2 | io_idle_3); // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_3 = io_idle_4 | io_idle_5; // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_6 = io_idle_0 | io_idle_1 | (io_idle_2 | io_idle_3) | (io_idle_4 | io_idle_5 | (io_idle_6 |
    io_idle_7)); // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_7 = io_idle_8 | io_idle_9; // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_9 = io_idle_8 | io_idle_9 | (io_idle_10 | io_idle_11); // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_10 = io_idle_12 | io_idle_13; // @[ParallelMux.scala 36:53]
  wire [1:0] _io_out_bits_T_1 = io_idle_0 ? 2'h1 : 2'h2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_out_bits_T_3 = io_idle_2 ? 4'h4 : 4'h8; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_out_bits_T_5 = _io_out_valid_T ? {{2'd0}, _io_out_bits_T_1} : _io_out_bits_T_3; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_out_bits_T_7 = io_idle_4 ? 6'h10 : 6'h20; // @[ParallelMux.scala 90:77]
  wire [7:0] _io_out_bits_T_9 = io_idle_6 ? 8'h40 : 8'h80; // @[ParallelMux.scala 90:77]
  wire [7:0] _io_out_bits_T_11 = _io_out_valid_T_3 ? {{2'd0}, _io_out_bits_T_7} : _io_out_bits_T_9; // @[ParallelMux.scala 90:77]
  wire [7:0] _io_out_bits_T_13 = _io_out_valid_T_2 ? {{4'd0}, _io_out_bits_T_5} : _io_out_bits_T_11; // @[ParallelMux.scala 90:77]
  wire [9:0] _io_out_bits_T_15 = io_idle_8 ? 10'h100 : 10'h200; // @[ParallelMux.scala 90:77]
  wire [11:0] _io_out_bits_T_17 = io_idle_10 ? 12'h400 : 12'h800; // @[ParallelMux.scala 90:77]
  wire [11:0] _io_out_bits_T_19 = _io_out_valid_T_7 ? {{2'd0}, _io_out_bits_T_15} : _io_out_bits_T_17; // @[ParallelMux.scala 90:77]
  wire [13:0] _io_out_bits_T_21 = io_idle_12 ? 14'h1000 : 14'h2000; // @[ParallelMux.scala 90:77]
  wire [15:0] _io_out_bits_T_23 = io_idle_14 ? 16'h4000 : 16'h8000; // @[ParallelMux.scala 90:77]
  wire [15:0] _io_out_bits_T_25 = _io_out_valid_T_10 ? {{2'd0}, _io_out_bits_T_21} : _io_out_bits_T_23; // @[ParallelMux.scala 90:77]
  wire [15:0] _io_out_bits_T_27 = _io_out_valid_T_9 ? {{4'd0}, _io_out_bits_T_19} : _io_out_bits_T_25; // @[ParallelMux.scala 90:77]
  assign io_out_bits = _io_out_valid_T_6 ? {{8'd0}, _io_out_bits_T_13} : _io_out_bits_T_27; // @[ParallelMux.scala 90:77]
endmodule

