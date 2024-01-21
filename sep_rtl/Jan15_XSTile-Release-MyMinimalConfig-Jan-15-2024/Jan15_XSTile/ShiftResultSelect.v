module ShiftResultSelect(
  input  [3:0]  io_func,
  input  [63:0] io_sll,
  input  [63:0] io_srl,
  input  [63:0] io_sra,
  input  [63:0] io_rol,
  input  [63:0] io_ror,
  input  [63:0] io_bclr,
  input  [63:0] io_bset,
  input  [63:0] io_binv,
  input  [63:0] io_bext,
  output [63:0] io_shiftRes
);
  wire [63:0] _io_shiftRes_T_2 = io_func[1] ? io_ror : io_rol; // @[Alu.scala 150:37]
  wire [63:0] _GEN_2 = 3'h2 == io_func[2:0] ? io_bclr : io_sll; // @[Alu.scala 150:{21,21}]
  wire [63:0] _GEN_3 = 3'h3 == io_func[2:0] ? io_bset : _GEN_2; // @[Alu.scala 150:{21,21}]
  wire [63:0] _GEN_4 = 3'h4 == io_func[2:0] ? io_binv : _GEN_3; // @[Alu.scala 150:{21,21}]
  wire [63:0] _GEN_5 = 3'h5 == io_func[2:0] ? io_srl : _GEN_4; // @[Alu.scala 150:{21,21}]
  wire [63:0] _GEN_6 = 3'h6 == io_func[2:0] ? io_bext : _GEN_5; // @[Alu.scala 150:{21,21}]
  wire [63:0] _GEN_7 = 3'h7 == io_func[2:0] ? io_sra : _GEN_6; // @[Alu.scala 150:{21,21}]
  assign io_shiftRes = io_func[3] ? _io_shiftRes_T_2 : _GEN_7; // @[Alu.scala 150:21]
endmodule

