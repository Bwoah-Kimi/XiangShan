module DividerWrapper(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  input         io_redirectIn_valid,
  input         io_redirectIn_bits_robIdx_flag,
  input  [4:0]  io_redirectIn_bits_robIdx_value,
  input         io_redirectIn_bits_level
);
  wire  div_clock; // @[SRT16Divider.scala 472:19]
  wire  div_reset; // @[SRT16Divider.scala 472:19]
  wire  div_io_in_ready; // @[SRT16Divider.scala 472:19]
  wire  div_io_in_valid; // @[SRT16Divider.scala 472:19]
  wire [63:0] div_io_in_bits_src_0; // @[SRT16Divider.scala 472:19]
  wire [63:0] div_io_in_bits_src_1; // @[SRT16Divider.scala 472:19]
  wire  div_io_in_bits_uop_ctrl_rfWen; // @[SRT16Divider.scala 472:19]
  wire  div_io_in_bits_uop_ctrl_fpWen; // @[SRT16Divider.scala 472:19]
  wire [5:0] div_io_in_bits_uop_pdest; // @[SRT16Divider.scala 472:19]
  wire  div_io_in_bits_uop_robIdx_flag; // @[SRT16Divider.scala 472:19]
  wire [4:0] div_io_in_bits_uop_robIdx_value; // @[SRT16Divider.scala 472:19]
  wire  div_io_in_bits_uop_lqIdx_flag; // @[SRT16Divider.scala 472:19]
  wire [3:0] div_io_in_bits_uop_lqIdx_value; // @[SRT16Divider.scala 472:19]
  wire  div_io_out_ready; // @[SRT16Divider.scala 472:19]
  wire  div_io_out_valid; // @[SRT16Divider.scala 472:19]
  wire [63:0] div_io_out_bits_data; // @[SRT16Divider.scala 472:19]
  wire  div_io_out_bits_uop_ctrl_rfWen; // @[SRT16Divider.scala 472:19]
  wire  div_io_out_bits_uop_ctrl_fpWen; // @[SRT16Divider.scala 472:19]
  wire [5:0] div_io_out_bits_uop_pdest; // @[SRT16Divider.scala 472:19]
  wire  div_io_out_bits_uop_robIdx_flag; // @[SRT16Divider.scala 472:19]
  wire [4:0] div_io_out_bits_uop_robIdx_value; // @[SRT16Divider.scala 472:19]
  wire  div_io_out_bits_uop_lqIdx_flag; // @[SRT16Divider.scala 472:19]
  wire [3:0] div_io_out_bits_uop_lqIdx_value; // @[SRT16Divider.scala 472:19]
  wire  div_io_redirectIn_valid; // @[SRT16Divider.scala 472:19]
  wire  div_io_redirectIn_bits_robIdx_flag; // @[SRT16Divider.scala 472:19]
  wire [4:0] div_io_redirectIn_bits_robIdx_value; // @[SRT16Divider.scala 472:19]
  wire  div_io_redirectIn_bits_level; // @[SRT16Divider.scala 472:19]
  wire  div_ctrl_sign; // @[SRT16Divider.scala 472:19]
  wire  div_ctrl_isW; // @[SRT16Divider.scala 472:19]
  wire  div_ctrl_isHi; // @[SRT16Divider.scala 472:19]
  wire  isW = io_in_bits_uop_ctrl_fuOpType[2]; // @[package.scala 362:27]
  wire  _isH_T_4 = ~io_in_bits_uop_ctrl_fuOpType[4]; // @[package.scala 358:27]
  wire  isDivSign = io_in_bits_uop_ctrl_fuOpType[4] & ~io_in_bits_uop_ctrl_fuOpType[1]; // @[package.scala 361:41]
  wire  div_io_in_bits_src_0_signBit = io_in_bits_src_0[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _div_io_in_bits_src_0_T_2 = div_io_in_bits_src_0_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _div_io_in_bits_src_0_T_3 = {_div_io_in_bits_src_0_T_2,io_in_bits_src_0[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_0_T_5 = {32'h0,io_in_bits_src_0[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_0_T_6 = isDivSign ? _div_io_in_bits_src_0_T_3 : _div_io_in_bits_src_0_T_5; // @[SRT16Divider.scala 487:8]
  wire  div_io_in_bits_src_1_signBit = io_in_bits_src_1[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _div_io_in_bits_src_1_T_2 = div_io_in_bits_src_1_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _div_io_in_bits_src_1_T_3 = {_div_io_in_bits_src_1_T_2,io_in_bits_src_1[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_1_T_5 = {32'h0,io_in_bits_src_1[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_1_T_6 = isDivSign ? _div_io_in_bits_src_1_T_3 : _div_io_in_bits_src_1_T_5; // @[SRT16Divider.scala 487:8]
  SRT16Divider div ( // @[SRT16Divider.scala 472:19]
    .clock(div_clock),
    .reset(div_reset),
    .io_in_ready(div_io_in_ready),
    .io_in_valid(div_io_in_valid),
    .io_in_bits_src_0(div_io_in_bits_src_0),
    .io_in_bits_src_1(div_io_in_bits_src_1),
    .io_in_bits_uop_ctrl_rfWen(div_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(div_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(div_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(div_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(div_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(div_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(div_io_in_bits_uop_lqIdx_value),
    .io_out_ready(div_io_out_ready),
    .io_out_valid(div_io_out_valid),
    .io_out_bits_data(div_io_out_bits_data),
    .io_out_bits_uop_ctrl_rfWen(div_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(div_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(div_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(div_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(div_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(div_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(div_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(div_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(div_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(div_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(div_io_redirectIn_bits_level),
    .ctrl_sign(div_ctrl_sign),
    .ctrl_isW(div_ctrl_isW),
    .ctrl_isHi(div_ctrl_isHi)
  );
  assign io_in_ready = div_io_in_ready; // @[SRT16Divider.scala 474:10]
  assign io_out_valid = div_io_out_valid; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_data = div_io_out_bits_data; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_ctrl_rfWen = div_io_out_bits_uop_ctrl_rfWen; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_ctrl_fpWen = div_io_out_bits_uop_ctrl_fpWen; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_pdest = div_io_out_bits_uop_pdest; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_robIdx_flag = div_io_out_bits_uop_robIdx_flag; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_robIdx_value = div_io_out_bits_uop_robIdx_value; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_lqIdx_flag = div_io_out_bits_uop_lqIdx_flag; // @[SRT16Divider.scala 474:10]
  assign io_out_bits_uop_lqIdx_value = div_io_out_bits_uop_lqIdx_value; // @[SRT16Divider.scala 474:10]
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_in_valid = io_in_valid; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_src_0 = isW ? _div_io_in_bits_src_0_T_6 : io_in_bits_src_0; // @[SRT16Divider.scala 485:38]
  assign div_io_in_bits_src_1 = isW ? _div_io_in_bits_src_1_T_6 : io_in_bits_src_1; // @[SRT16Divider.scala 485:38]
  assign div_io_in_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_uop_pdest = io_in_bits_uop_pdest; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[SRT16Divider.scala 474:10]
  assign div_io_in_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[SRT16Divider.scala 474:10]
  assign div_io_out_ready = io_out_ready; // @[SRT16Divider.scala 474:10]
  assign div_io_redirectIn_valid = io_redirectIn_valid; // @[SRT16Divider.scala 474:10]
  assign div_io_redirectIn_bits_robIdx_flag = io_redirectIn_bits_robIdx_flag; // @[SRT16Divider.scala 474:10]
  assign div_io_redirectIn_bits_robIdx_value = io_redirectIn_bits_robIdx_value; // @[SRT16Divider.scala 474:10]
  assign div_io_redirectIn_bits_level = io_redirectIn_bits_level; // @[SRT16Divider.scala 474:10]
  assign div_ctrl_sign = io_in_bits_uop_ctrl_fuOpType[4] & ~io_in_bits_uop_ctrl_fuOpType[1]; // @[package.scala 361:41]
  assign div_ctrl_isW = io_in_bits_uop_ctrl_fuOpType[2]; // @[package.scala 362:27]
  assign div_ctrl_isHi = io_in_bits_uop_ctrl_fuOpType[4] & io_in_bits_uop_ctrl_fuOpType[0] | _isH_T_4 &
    io_in_bits_uop_ctrl_fuOpType[1:0] != 2'h0; // @[package.scala 363:46]
endmodule

