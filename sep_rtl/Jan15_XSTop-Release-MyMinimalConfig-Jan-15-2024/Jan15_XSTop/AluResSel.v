module AluResSel(
  input  [2:0]  io_func,
  input  [63:0] io_addRes,
  input  [63:0] io_shiftRes,
  input  [63:0] io_miscRes,
  input  [63:0] io_compareRes,
  input  [63:0] io_wordRes,
  output [63:0] io_aluRes
);
  wire [63:0] _res_T_3 = io_func[0] ? io_wordRes : io_shiftRes; // @[Alu.scala 175:43]
  wire [63:0] _res_T_7 = io_func[0] ? io_compareRes : io_addRes; // @[Alu.scala 176:33]
  wire [63:0] _res_T_8 = ~io_func[2] ? _res_T_7 : io_miscRes; // @[Alu.scala 176:16]
  assign io_aluRes = io_func[2:1] == 2'h0 ? _res_T_3 : _res_T_8; // @[Alu.scala 175:16]
endmodule

