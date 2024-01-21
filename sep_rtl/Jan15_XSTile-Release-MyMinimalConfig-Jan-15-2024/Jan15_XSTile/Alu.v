module Alu(
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input         io_in_bits_uop_cf_pred_taken,
  input         io_in_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_in_bits_uop_cf_ftqOffset,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        redirectOutValid,
  output        redirectOut_robIdx_flag,
  output [4:0]  redirectOut_robIdx_value,
  output        redirectOut_ftqIdx_flag,
  output [2:0]  redirectOut_ftqIdx_value,
  output [2:0]  redirectOut_ftqOffset,
  output        redirectOut_cfiUpdate_taken,
  output        redirectOut_cfiUpdate_isMisPred
);
  wire [63:0] dataModule_io_src_0; // @[Alu.scala 375:26]
  wire [63:0] dataModule_io_src_1; // @[Alu.scala 375:26]
  wire [6:0] dataModule_io_func; // @[Alu.scala 375:26]
  wire  dataModule_io_pred_taken; // @[Alu.scala 375:26]
  wire  dataModule_io_isBranch; // @[Alu.scala 375:26]
  wire [63:0] dataModule_io_result; // @[Alu.scala 375:26]
  wire  dataModule_io_taken; // @[Alu.scala 375:26]
  wire  dataModule_io_mispredict; // @[Alu.scala 375:26]
  wire  isBranch = io_in_bits_uop_ctrl_fuOpType[6:4] == 3'h7; // @[package.scala 328:43]
  AluDataModule dataModule ( // @[Alu.scala 375:26]
    .io_src_0(dataModule_io_src_0),
    .io_src_1(dataModule_io_src_1),
    .io_func(dataModule_io_func),
    .io_pred_taken(dataModule_io_pred_taken),
    .io_isBranch(dataModule_io_isBranch),
    .io_result(dataModule_io_result),
    .io_taken(dataModule_io_taken),
    .io_mispredict(dataModule_io_mispredict)
  );
  assign io_out_valid = io_in_valid; // @[Alu.scala 393:16]
  assign io_out_bits_data = dataModule_io_result; // @[Alu.scala 395:20]
  assign io_out_bits_uop_cf_pd_isRVC = io_in_bits_uop_cf_pd_isRVC; // @[Alu.scala 394:19]
  assign io_out_bits_uop_cf_pd_brType = io_in_bits_uop_cf_pd_brType; // @[Alu.scala 394:19]
  assign io_out_bits_uop_cf_pd_isCall = io_in_bits_uop_cf_pd_isCall; // @[Alu.scala 394:19]
  assign io_out_bits_uop_cf_pd_isRet = io_in_bits_uop_cf_pd_isRet; // @[Alu.scala 394:19]
  assign io_out_bits_uop_ctrl_imm = io_in_bits_uop_ctrl_imm; // @[Alu.scala 394:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[Alu.scala 394:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[Alu.scala 394:19]
  assign redirectOutValid = io_out_valid & isBranch; // @[Alu.scala 382:36]
  assign redirectOut_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[Alu.scala 385:22]
  assign redirectOut_robIdx_value = io_in_bits_uop_robIdx_value; // @[Alu.scala 385:22]
  assign redirectOut_ftqIdx_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[Alu.scala 386:22]
  assign redirectOut_ftqIdx_value = io_in_bits_uop_cf_ftqPtr_value; // @[Alu.scala 386:22]
  assign redirectOut_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[Alu.scala 387:25]
  assign redirectOut_cfiUpdate_taken = dataModule_io_taken; // @[Alu.scala 389:31]
  assign redirectOut_cfiUpdate_isMisPred = dataModule_io_mispredict; // @[Alu.scala 388:35]
  assign dataModule_io_src_0 = io_in_bits_src_0; // @[Alu.scala 377:21]
  assign dataModule_io_src_1 = io_in_bits_src_1; // @[Alu.scala 377:21]
  assign dataModule_io_func = io_in_bits_uop_ctrl_fuOpType; // @[Alu.scala 378:22]
  assign dataModule_io_pred_taken = io_in_bits_uop_cf_pred_taken; // @[Alu.scala 379:28]
  assign dataModule_io_isBranch = io_in_bits_uop_ctrl_fuOpType[6:4] == 3'h7; // @[package.scala 328:43]
endmodule

