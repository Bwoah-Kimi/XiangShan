module AluExeUnit(
  input         io_fromInt_valid,
  input         io_fromInt_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_fromInt_bits_uop_cf_pd_brType,
  input         io_fromInt_bits_uop_cf_pd_isCall,
  input         io_fromInt_bits_uop_cf_pd_isRet,
  input         io_fromInt_bits_uop_cf_pred_taken,
  input         io_fromInt_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_fromInt_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_fromInt_bits_uop_cf_ftqOffset,
  input  [3:0]  io_fromInt_bits_uop_ctrl_fuType,
  input  [6:0]  io_fromInt_bits_uop_ctrl_fuOpType,
  input  [19:0] io_fromInt_bits_uop_ctrl_imm,
  input         io_fromInt_bits_uop_robIdx_flag,
  input  [4:0]  io_fromInt_bits_uop_robIdx_value,
  input  [63:0] io_fromInt_bits_src_0,
  input  [63:0] io_fromInt_bits_src_1,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output [63:0] io_out_bits_data,
  output        io_out_bits_redirectValid,
  output        io_out_bits_redirect_robIdx_flag,
  output [4:0]  io_out_bits_redirect_robIdx_value,
  output        io_out_bits_redirect_ftqIdx_flag,
  output [2:0]  io_out_bits_redirect_ftqIdx_value,
  output [2:0]  io_out_bits_redirect_ftqOffset,
  output        io_out_bits_redirect_cfiUpdate_taken,
  output        io_out_bits_redirect_cfiUpdate_isMisPred
);
  wire  alu_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] alu_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] alu_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire  alu_io_in_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] alu_io_in_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  alu_io_in_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  alu_io_in_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire  alu_io_in_bits_uop_cf_pred_taken; // @[Exu.scala 129:21]
  wire  alu_io_in_bits_uop_cf_ftqPtr_flag; // @[Exu.scala 129:21]
  wire [2:0] alu_io_in_bits_uop_cf_ftqPtr_value; // @[Exu.scala 129:21]
  wire [2:0] alu_io_in_bits_uop_cf_ftqOffset; // @[Exu.scala 129:21]
  wire [6:0] alu_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 129:21]
  wire [19:0] alu_io_in_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire  alu_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] alu_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  alu_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] alu_io_out_bits_data; // @[Exu.scala 129:21]
  wire  alu_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 129:21]
  wire [1:0] alu_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 129:21]
  wire  alu_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 129:21]
  wire  alu_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 129:21]
  wire [19:0] alu_io_out_bits_uop_ctrl_imm; // @[Exu.scala 129:21]
  wire  alu_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] alu_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  alu_redirectOutValid; // @[Exu.scala 129:21]
  wire  alu_redirectOut_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] alu_redirectOut_robIdx_value; // @[Exu.scala 129:21]
  wire  alu_redirectOut_ftqIdx_flag; // @[Exu.scala 129:21]
  wire [2:0] alu_redirectOut_ftqIdx_value; // @[Exu.scala 129:21]
  wire [2:0] alu_redirectOut_ftqOffset; // @[Exu.scala 129:21]
  wire  alu_redirectOut_cfiUpdate_taken; // @[Exu.scala 129:21]
  wire  alu_redirectOut_cfiUpdate_isMisPred; // @[Exu.scala 129:21]
  wire  fuSel_0 = io_fromInt_bits_uop_ctrl_fuType == 4'h6; // @[package.scala 602:47]
  Alu alu ( // @[Exu.scala 129:21]
    .io_in_valid(alu_io_in_valid),
    .io_in_bits_src_0(alu_io_in_bits_src_0),
    .io_in_bits_src_1(alu_io_in_bits_src_1),
    .io_in_bits_uop_cf_pd_isRVC(alu_io_in_bits_uop_cf_pd_isRVC),
    .io_in_bits_uop_cf_pd_brType(alu_io_in_bits_uop_cf_pd_brType),
    .io_in_bits_uop_cf_pd_isCall(alu_io_in_bits_uop_cf_pd_isCall),
    .io_in_bits_uop_cf_pd_isRet(alu_io_in_bits_uop_cf_pd_isRet),
    .io_in_bits_uop_cf_pred_taken(alu_io_in_bits_uop_cf_pred_taken),
    .io_in_bits_uop_cf_ftqPtr_flag(alu_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(alu_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(alu_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(alu_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_imm(alu_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_robIdx_flag(alu_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(alu_io_in_bits_uop_robIdx_value),
    .io_out_valid(alu_io_out_valid),
    .io_out_bits_data(alu_io_out_bits_data),
    .io_out_bits_uop_cf_pd_isRVC(alu_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(alu_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(alu_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(alu_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(alu_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(alu_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(alu_io_out_bits_uop_robIdx_value),
    .redirectOutValid(alu_redirectOutValid),
    .redirectOut_robIdx_flag(alu_redirectOut_robIdx_flag),
    .redirectOut_robIdx_value(alu_redirectOut_robIdx_value),
    .redirectOut_ftqIdx_flag(alu_redirectOut_ftqIdx_flag),
    .redirectOut_ftqIdx_value(alu_redirectOut_ftqIdx_value),
    .redirectOut_ftqOffset(alu_redirectOut_ftqOffset),
    .redirectOut_cfiUpdate_taken(alu_redirectOut_cfiUpdate_taken),
    .redirectOut_cfiUpdate_isMisPred(alu_redirectOut_cfiUpdate_isMisPred)
  );
  assign io_out_valid = alu_io_out_valid; // @[Exu.scala 189:17]
  assign io_out_bits_uop_cf_pd_isRVC = alu_io_out_bits_uop_cf_pd_isRVC; // @[Exu.scala 188:20]
  assign io_out_bits_uop_cf_pd_brType = alu_io_out_bits_uop_cf_pd_brType; // @[Exu.scala 188:20]
  assign io_out_bits_uop_cf_pd_isCall = alu_io_out_bits_uop_cf_pd_isCall; // @[Exu.scala 188:20]
  assign io_out_bits_uop_cf_pd_isRet = alu_io_out_bits_uop_cf_pd_isRet; // @[Exu.scala 188:20]
  assign io_out_bits_uop_ctrl_imm = alu_io_out_bits_uop_ctrl_imm; // @[Exu.scala 188:20]
  assign io_out_bits_uop_robIdx_flag = alu_io_out_bits_uop_robIdx_flag; // @[Exu.scala 188:20]
  assign io_out_bits_uop_robIdx_value = alu_io_out_bits_uop_robIdx_value; // @[Exu.scala 188:20]
  assign io_out_bits_data = alu_io_out_bits_data; // @[Exu.scala 187:21]
  assign io_out_bits_redirectValid = alu_redirectOutValid; // @[ExeUnit.scala 46:31]
  assign io_out_bits_redirect_robIdx_flag = alu_redirectOut_robIdx_flag; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_robIdx_value = alu_redirectOut_robIdx_value; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_ftqIdx_flag = alu_redirectOut_ftqIdx_flag; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_ftqIdx_value = alu_redirectOut_ftqIdx_value; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_ftqOffset = alu_redirectOut_ftqOffset; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_cfiUpdate_taken = alu_redirectOut_cfiUpdate_taken; // @[ExeUnit.scala 47:26]
  assign io_out_bits_redirect_cfiUpdate_isMisPred = alu_redirectOut_cfiUpdate_isMisPred; // @[ExeUnit.scala 47:26]
  assign alu_io_in_valid = io_fromInt_valid & fuSel_0; // @[Exu.scala 158:34]
  assign alu_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 160:25]
  assign alu_io_in_bits_src_1 = io_fromInt_bits_src_1; // @[Exu.scala 160:25]
  assign alu_io_in_bits_uop_cf_pd_isRVC = io_fromInt_bits_uop_cf_pd_isRVC; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_pd_brType = io_fromInt_bits_uop_cf_pd_brType; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_pd_isCall = io_fromInt_bits_uop_cf_pd_isCall; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_pd_isRet = io_fromInt_bits_uop_cf_pd_isRet; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_pred_taken = io_fromInt_bits_uop_cf_pred_taken; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_ftqPtr_flag = io_fromInt_bits_uop_cf_ftqPtr_flag; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_ftqPtr_value = io_fromInt_bits_uop_cf_ftqPtr_value; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_cf_ftqOffset = io_fromInt_bits_uop_cf_ftqOffset; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_ctrl_imm = io_fromInt_bits_uop_ctrl_imm; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign alu_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 159:25]
endmodule

