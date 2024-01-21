module OldestSelection(
  input         io_in_1_valid,
  input  [15:0] io_in_1_bits,
  input         io_oldest_valid,
  input  [15:0] io_oldest_bits,
  output        io_isOverrided_0
);
  wire [15:0] _oldestMatchVec_T_3 = io_in_1_bits & io_oldest_bits; // @[SelectPolicy.scala 92:66]
  wire  oldestMatchVec_1 = io_in_1_valid & |_oldestMatchVec_T_3; // @[SelectPolicy.scala 92:55]
  wire  oldestMatchIn = |oldestMatchVec_1; // @[SelectPolicy.scala 97:82]
  assign io_isOverrided_0 = io_oldest_valid & ~oldestMatchIn; // @[SelectPolicy.scala 99:48]
endmodule

