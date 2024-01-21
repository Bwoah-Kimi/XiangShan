module WordResultSelect(
  input  [6:0]  io_func,
  input  [31:0] io_sllw,
  input  [31:0] io_srlw,
  input  [31:0] io_sraw,
  input  [31:0] io_rolw,
  input  [31:0] io_rorw,
  input  [31:0] io_addw,
  input  [31:0] io_subw,
  output [63:0] io_wordRes
);
  wire [31:0] addsubRes = ~io_func[2] & io_func[1] ? io_subw : io_addw; // @[Alu.scala 160:22]
  wire [31:0] _shiftRes_T_2 = io_func[0] ? io_rorw : io_rolw; // @[Alu.scala 161:37]
  wire [31:0] _shiftRes_T_5 = io_func[0] ? io_srlw : io_sllw; // @[Alu.scala 162:47]
  wire [31:0] _shiftRes_T_6 = io_func[1] ? io_sraw : _shiftRes_T_5; // @[Alu.scala 162:22]
  wire [31:0] shiftRes = io_func[2] ? _shiftRes_T_2 : _shiftRes_T_6; // @[Alu.scala 161:21]
  wire [31:0] wordRes = io_func[3] ? shiftRes : addsubRes; // @[Alu.scala 163:20]
  wire  io_wordRes_signBit = wordRes[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _io_wordRes_T_1 = io_wordRes_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  assign io_wordRes = {_io_wordRes_T_1,wordRes}; // @[Cat.scala 31:58]
endmodule

