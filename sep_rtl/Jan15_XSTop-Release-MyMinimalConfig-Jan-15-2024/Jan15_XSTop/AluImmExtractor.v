module AluImmExtractor(
  input  [1:0]  io_uop_ctrl_srcType_1,
  input  [3:0]  io_uop_ctrl_selImm,
  input  [19:0] io_uop_ctrl_imm,
  input  [63:0] io_data_in_0,
  input  [63:0] io_data_in_1,
  output [63:0] io_data_out_0,
  output [63:0] io_data_out_1
);
  wire  _T = io_uop_ctrl_srcType_1 == 2'h1; // @[package.scala 39:39]
  wire [31:0] _imm32_T_3 = {io_uop_ctrl_imm,12'h0}; // @[Cat.scala 31:58]
  wire  imm32_signBit = io_uop_ctrl_imm[11]; // @[BitUtils.scala 80:20]
  wire [19:0] _imm32_T_7 = imm32_signBit ? 20'hfffff : 20'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _imm32_T_8 = {_imm32_T_7,io_uop_ctrl_imm[11:0]}; // @[Cat.scala 31:58]
  wire [31:0] imm32 = io_uop_ctrl_selImm == 4'h2 ? _imm32_T_3 : _imm32_T_8; // @[DataArray.scala 128:20]
  wire  io_data_out_1_signBit = imm32[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _io_data_out_1_T_1 = io_data_out_1_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _io_data_out_1_T_2 = {_io_data_out_1_T_1,imm32}; // @[Cat.scala 31:58]
  assign io_data_out_0 = io_data_in_0; // @[DataArray.scala 110:15]
  assign io_data_out_1 = _T ? _io_data_out_1_T_2 : io_data_in_1; // @[DataArray.scala 110:15 127:48 132:20]
endmodule

