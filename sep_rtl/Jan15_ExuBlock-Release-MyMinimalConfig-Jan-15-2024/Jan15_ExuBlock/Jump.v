module Jump(
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input  [38:0] io_in_bits_uop_cf_pc,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input         io_in_bits_uop_cf_pred_taken,
  input         io_in_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_in_bits_uop_cf_ftqOffset,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  output        redirectOutValid,
  output        redirectOut_robIdx_flag,
  output [4:0]  redirectOut_robIdx_value,
  output        redirectOut_ftqIdx_flag,
  output [2:0]  redirectOut_ftqIdx_value,
  output [2:0]  redirectOut_ftqOffset,
  output [38:0] redirectOut_cfiUpdate_target,
  output        redirectOut_cfiUpdate_isMisPred
);
  wire [63:0] jumpDataModule_io_src; // @[Jump.scala 80:30]
  wire [63:0] jumpDataModule_io_pc; // @[Jump.scala 80:30]
  wire [19:0] jumpDataModule_io_immMin; // @[Jump.scala 80:30]
  wire [6:0] jumpDataModule_io_func; // @[Jump.scala 80:30]
  wire  jumpDataModule_io_isRVC; // @[Jump.scala 80:30]
  wire [63:0] jumpDataModule_io_result; // @[Jump.scala 80:30]
  wire [63:0] jumpDataModule_io_target; // @[Jump.scala 80:30]
  wire  jumpDataModule_io_isAuipc; // @[Jump.scala 80:30]
  wire [38:0] jalr_target = io_in_bits_src_1[38:0]; // @[Jump.scala 69:22]
  wire  signBit = io_in_bits_uop_cf_pc[38]; // @[BitUtils.scala 80:20]
  wire [24:0] _T_3 = signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  JumpDataModule jumpDataModule ( // @[Jump.scala 80:30]
    .io_src(jumpDataModule_io_src),
    .io_pc(jumpDataModule_io_pc),
    .io_immMin(jumpDataModule_io_immMin),
    .io_func(jumpDataModule_io_func),
    .io_isRVC(jumpDataModule_io_isRVC),
    .io_result(jumpDataModule_io_result),
    .io_target(jumpDataModule_io_target),
    .io_isAuipc(jumpDataModule_io_isAuipc)
  );
  assign io_in_ready = io_out_ready; // @[Jump.scala 99:15]
  assign io_out_valid = io_in_valid; // @[Jump.scala 100:16]
  assign io_out_bits_data = jumpDataModule_io_result; // @[Jump.scala 102:20]
  assign io_out_bits_uop_cf_pd_isRVC = io_in_bits_uop_cf_pd_isRVC; // @[Jump.scala 101:19]
  assign io_out_bits_uop_cf_pd_brType = io_in_bits_uop_cf_pd_brType; // @[Jump.scala 101:19]
  assign io_out_bits_uop_cf_pd_isCall = io_in_bits_uop_cf_pd_isCall; // @[Jump.scala 101:19]
  assign io_out_bits_uop_cf_pd_isRet = io_in_bits_uop_cf_pd_isRet; // @[Jump.scala 101:19]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[Jump.scala 101:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[Jump.scala 101:19]
  assign io_out_bits_uop_ctrl_imm = io_in_bits_uop_ctrl_imm; // @[Jump.scala 101:19]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[Jump.scala 101:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[Jump.scala 101:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[Jump.scala 101:19]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[Jump.scala 101:19]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[Jump.scala 101:19]
  assign redirectOutValid = io_in_valid & ~jumpDataModule_io_isAuipc; // @[Jump.scala 87:29]
  assign redirectOut_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[Jump.scala 90:22]
  assign redirectOut_robIdx_value = io_in_bits_uop_robIdx_value; // @[Jump.scala 90:22]
  assign redirectOut_ftqIdx_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[Jump.scala 91:22]
  assign redirectOut_ftqIdx_value = io_in_bits_uop_cf_ftqPtr_value; // @[Jump.scala 91:22]
  assign redirectOut_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[Jump.scala 92:25]
  assign redirectOut_cfiUpdate_target = jumpDataModule_io_target[38:0]; // @[Jump.scala 95:32]
  assign redirectOut_cfiUpdate_isMisPred = jumpDataModule_io_target[38:0] != jalr_target | ~io_in_bits_uop_cf_pred_taken
    ; // @[Jump.scala 96:97]
  assign jumpDataModule_io_src = io_in_bits_src_0; // @[Jump.scala 81:25]
  assign jumpDataModule_io_pc = {_T_3,io_in_bits_uop_cf_pc}; // @[Cat.scala 31:58]
  assign jumpDataModule_io_immMin = io_in_bits_uop_ctrl_imm; // @[Jump.scala 83:28]
  assign jumpDataModule_io_func = io_in_bits_uop_ctrl_fuOpType; // @[Jump.scala 84:26]
  assign jumpDataModule_io_isRVC = io_in_bits_uop_cf_pd_isRVC; // @[Jump.scala 85:27]
endmodule

