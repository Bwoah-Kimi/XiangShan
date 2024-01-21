module MiscResultSelect(
  input  [5:0]  io_func,
  input  [63:0] io_and,
  input  [63:0] io_or,
  input  [63:0] io_xor,
  input  [63:0] io_orcb,
  input  [63:0] io_orh48,
  input  [63:0] io_sextb,
  input  [63:0] io_packh,
  input  [63:0] io_sexth,
  input  [63:0] io_packw,
  input  [63:0] io_revb,
  input  [63:0] io_rev8,
  input  [63:0] io_pack,
  input  [63:0] io_src,
  output [63:0] io_miscRes
);
  wire [63:0] _GEN_1 = 2'h1 == io_func[1:0] ? io_packh : io_sextb; // @[Alu.scala 112:{22,22}]
  wire [63:0] _GEN_2 = 2'h2 == io_func[1:0] ? io_sexth : _GEN_1; // @[Alu.scala 112:{22,22}]
  wire [63:0] _GEN_3 = 2'h3 == io_func[1:0] ? io_packw : _GEN_2; // @[Alu.scala 112:{22,22}]
  wire [63:0] _GEN_5 = 2'h1 == io_func[2:1] ? io_or : io_and; // @[Alu.scala 112:{22,22}]
  wire [63:0] _GEN_6 = 2'h2 == io_func[2:1] ? io_xor : _GEN_5; // @[Alu.scala 112:{22,22}]
  wire [63:0] _GEN_7 = 2'h3 == io_func[2:1] ? io_orcb : _GEN_6; // @[Alu.scala 112:{22,22}]
  wire [63:0] logicBase = io_func[3] ? _GEN_3 : _GEN_7; // @[Alu.scala 112:22]
  wire [63:0] _customRes_T_1 = {31'h0,io_src[31:0],1'h0}; // @[Cat.scala 31:58]
  wire [63:0] _customRes_T_3 = {30'h0,io_src[31:0],2'h0}; // @[Cat.scala 31:58]
  wire [63:0] _customRes_T_5 = {29'h0,io_src[31:0],3'h0}; // @[Cat.scala 31:58]
  wire [63:0] _customRes_T_7 = {56'h0,io_src[15:8]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_9 = 2'h1 == io_func[1:0] ? _customRes_T_3 : _customRes_T_1; // @[Alu.scala 120:{21,21}]
  wire [63:0] _GEN_10 = 2'h2 == io_func[1:0] ? _customRes_T_5 : _GEN_9; // @[Alu.scala 120:{21,21}]
  wire [63:0] _GEN_11 = 2'h3 == io_func[1:0] ? _customRes_T_7 : _GEN_10; // @[Alu.scala 120:{21,21}]
  wire [63:0] _GEN_13 = 2'h1 == io_func[1:0] ? io_rev8 : io_revb; // @[Alu.scala 120:{21,21}]
  wire [63:0] _GEN_14 = 2'h2 == io_func[1:0] ? io_pack : _GEN_13; // @[Alu.scala 120:{21,21}]
  wire [63:0] _GEN_15 = 2'h3 == io_func[1:0] ? io_orh48 : _GEN_14; // @[Alu.scala 120:{21,21}]
  wire [63:0] logicAdv = io_func[3] ? _GEN_11 : _GEN_15; // @[Alu.scala 120:21]
  wire [14:0] _mask_T_2 = io_func[0] ? 15'h7fff : 15'h0; // @[Bitwise.scala 74:12]
  wire [15:0] mask = {_mask_T_2,1'h1}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_16 = {{48'd0}, mask}; // @[Alu.scala 123:29]
  wire [63:0] maskedLogicRes = _GEN_16 & _GEN_7; // @[Alu.scala 123:29]
  wire [63:0] _io_miscRes_T_2 = io_func[4] ? logicAdv : logicBase; // @[Alu.scala 125:52]
  assign io_miscRes = io_func[5] ? maskedLogicRes : _io_miscRes_T_2; // @[Alu.scala 125:20]
endmodule

