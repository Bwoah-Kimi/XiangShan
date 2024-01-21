module MSHRSelector_2(
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
  output [13:0] io_out_bits
);
  wire  _io_out_valid_T_1 = io_idle_0 | (io_idle_1 | io_idle_2); // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_2 = io_idle_3 | io_idle_4; // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_5 = io_idle_0 | (io_idle_1 | io_idle_2) | (io_idle_3 | io_idle_4 | (io_idle_5 | io_idle_6)); // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_7 = io_idle_7 | (io_idle_8 | io_idle_9); // @[ParallelMux.scala 36:53]
  wire  _io_out_valid_T_8 = io_idle_10 | io_idle_11; // @[ParallelMux.scala 36:53]
  wire [2:0] _io_out_bits_T_1 = io_idle_1 ? 3'h2 : 3'h4; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_out_bits_T_3 = io_idle_0 ? 3'h1 : _io_out_bits_T_1; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_out_bits_T_5 = io_idle_3 ? 5'h8 : 5'h10; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_out_bits_T_7 = io_idle_5 ? 7'h20 : 7'h40; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_out_bits_T_9 = _io_out_valid_T_2 ? {{2'd0}, _io_out_bits_T_5} : _io_out_bits_T_7; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_out_bits_T_11 = _io_out_valid_T_1 ? {{4'd0}, _io_out_bits_T_3} : _io_out_bits_T_9; // @[ParallelMux.scala 90:77]
  wire [9:0] _io_out_bits_T_13 = io_idle_8 ? 10'h100 : 10'h200; // @[ParallelMux.scala 90:77]
  wire [9:0] _io_out_bits_T_15 = io_idle_7 ? 10'h80 : _io_out_bits_T_13; // @[ParallelMux.scala 90:77]
  wire [11:0] _io_out_bits_T_17 = io_idle_10 ? 12'h400 : 12'h800; // @[ParallelMux.scala 90:77]
  wire [13:0] _io_out_bits_T_19 = io_idle_12 ? 14'h1000 : 14'h2000; // @[ParallelMux.scala 90:77]
  wire [13:0] _io_out_bits_T_21 = _io_out_valid_T_8 ? {{2'd0}, _io_out_bits_T_17} : _io_out_bits_T_19; // @[ParallelMux.scala 90:77]
  wire [13:0] _io_out_bits_T_23 = _io_out_valid_T_7 ? {{4'd0}, _io_out_bits_T_15} : _io_out_bits_T_21; // @[ParallelMux.scala 90:77]
  assign io_out_bits = _io_out_valid_T_5 ? {{7'd0}, _io_out_bits_T_11} : _io_out_bits_T_23; // @[ParallelMux.scala 90:77]
endmodule

