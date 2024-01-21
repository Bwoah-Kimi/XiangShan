module FmacExeUnit(
  input          clock,
  input          reset,
  output         io_fromFp_ready,
  input          io_fromFp_valid,
  input          io_fromFp_bits_uop_ctrl_rfWen,
  input          io_fromFp_bits_uop_ctrl_fpWen,
  input          io_fromFp_bits_uop_ctrl_fpu_isAddSub,
  input          io_fromFp_bits_uop_ctrl_fpu_typeTagIn,
  input  [1:0]   io_fromFp_bits_uop_ctrl_fpu_fmaCmd,
  input          io_fromFp_bits_uop_ctrl_fpu_ren3,
  input  [2:0]   io_fromFp_bits_uop_ctrl_fpu_rm,
  input  [5:0]   io_fromFp_bits_uop_pdest,
  input          io_fromFp_bits_uop_robIdx_flag,
  input  [4:0]   io_fromFp_bits_uop_robIdx_value,
  input          io_fromFp_bits_uop_lqIdx_flag,
  input  [3:0]   io_fromFp_bits_uop_lqIdx_value,
  input  [63:0]  io_fromFp_bits_src_0,
  input  [63:0]  io_fromFp_bits_src_1,
  input  [63:0]  io_fromFp_bits_src_2,
  input          io_redirect_valid,
  input          io_redirect_bits_robIdx_flag,
  input  [4:0]   io_redirect_bits_robIdx_value,
  input          io_redirect_bits_level,
  output         io_out_valid,
  output         io_out_bits_uop_cf_trigger_backendHit_0,
  output         io_out_bits_uop_cf_trigger_backendHit_1,
  output         io_out_bits_uop_cf_trigger_backendHit_2,
  output         io_out_bits_uop_cf_trigger_backendHit_3,
  output         io_out_bits_uop_cf_trigger_backendHit_4,
  output         io_out_bits_uop_cf_trigger_backendHit_5,
  output         io_out_bits_uop_ctrl_rfWen,
  output         io_out_bits_uop_ctrl_fpWen,
  output [5:0]   io_out_bits_uop_pdest,
  output         io_out_bits_uop_robIdx_flag,
  output [4:0]   io_out_bits_uop_robIdx_value,
  output         io_out_bits_uop_lqIdx_flag,
  output [3:0]   io_out_bits_uop_lqIdx_value,
  output [63:0]  io_out_bits_data,
  output [4:0]   io_out_bits_fflags,
  input  [2:0]   frm,
  input          fmaMid_in_valid,
  input          fmaMid_in_bits_fp_prod_sign,
  input  [10:0]  fmaMid_in_bits_fp_prod_exp,
  input  [104:0] fmaMid_in_bits_fp_prod_sig,
  input          fmaMid_in_bits_inter_flags_isNaN,
  input          fmaMid_in_bits_inter_flags_isInf,
  input          fmaMid_in_bits_inter_flags_isInv,
  input          fmaMid_in_bits_inter_flags_overflow,
  output         fmaMid_out_bits_fp_prod_sign,
  output [10:0]  fmaMid_out_bits_fp_prod_exp,
  output [104:0] fmaMid_out_bits_fp_prod_sig,
  output         fmaMid_out_bits_inter_flags_isNaN,
  output         fmaMid_out_bits_inter_flags_isInf,
  output         fmaMid_out_bits_inter_flags_isInv,
  input          fmaMid_waitForAdd
);
  wire  fmac_clock; // @[Exu.scala 129:21]
  wire  fmac_reset; // @[Exu.scala 129:21]
  wire  fmac_io_in_ready; // @[Exu.scala 129:21]
  wire  fmac_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] fmac_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] fmac_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire [63:0] fmac_io_in_bits_src_2; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_ctrl_fpu_isAddSub; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 129:21]
  wire [1:0] fmac_io_in_bits_uop_ctrl_fpu_fmaCmd; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_ctrl_fpu_ren3; // @[Exu.scala 129:21]
  wire [2:0] fmac_io_in_bits_uop_ctrl_fpu_rm; // @[Exu.scala 129:21]
  wire [5:0] fmac_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fmac_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  fmac_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] fmac_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  fmac_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] fmac_io_out_bits_data; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [5:0] fmac_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fmac_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  fmac_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] fmac_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  fmac_io_redirectIn_valid; // @[Exu.scala 129:21]
  wire  fmac_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fmac_io_redirectIn_bits_robIdx_value; // @[Exu.scala 129:21]
  wire  fmac_io_redirectIn_bits_level; // @[Exu.scala 129:21]
  wire [2:0] fmac_rm; // @[Exu.scala 129:21]
  wire [4:0] fmac_fflags; // @[Exu.scala 129:21]
  wire  fmac_midResult_in_valid; // @[Exu.scala 129:21]
  wire  fmac_midResult_in_bits_fp_prod_sign; // @[Exu.scala 129:21]
  wire [10:0] fmac_midResult_in_bits_fp_prod_exp; // @[Exu.scala 129:21]
  wire [104:0] fmac_midResult_in_bits_fp_prod_sig; // @[Exu.scala 129:21]
  wire  fmac_midResult_in_bits_inter_flags_isNaN; // @[Exu.scala 129:21]
  wire  fmac_midResult_in_bits_inter_flags_isInf; // @[Exu.scala 129:21]
  wire  fmac_midResult_in_bits_inter_flags_isInv; // @[Exu.scala 129:21]
  wire  fmac_midResult_in_bits_inter_flags_overflow; // @[Exu.scala 129:21]
  wire  fmac_midResult_out_bits_fp_prod_sign; // @[Exu.scala 129:21]
  wire [10:0] fmac_midResult_out_bits_fp_prod_exp; // @[Exu.scala 129:21]
  wire [104:0] fmac_midResult_out_bits_fp_prod_sig; // @[Exu.scala 129:21]
  wire  fmac_midResult_out_bits_inter_flags_isNaN; // @[Exu.scala 129:21]
  wire  fmac_midResult_out_bits_inter_flags_isInf; // @[Exu.scala 129:21]
  wire  fmac_midResult_out_bits_inter_flags_isInv; // @[Exu.scala 129:21]
  wire  fmac_midResult_waitForAdd; // @[Exu.scala 129:21]
  FMA fmac ( // @[Exu.scala 129:21]
    .clock(fmac_clock),
    .reset(fmac_reset),
    .io_in_ready(fmac_io_in_ready),
    .io_in_valid(fmac_io_in_valid),
    .io_in_bits_src_0(fmac_io_in_bits_src_0),
    .io_in_bits_src_1(fmac_io_in_bits_src_1),
    .io_in_bits_src_2(fmac_io_in_bits_src_2),
    .io_in_bits_uop_ctrl_rfWen(fmac_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(fmac_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_isAddSub(fmac_io_in_bits_uop_ctrl_fpu_isAddSub),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(fmac_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_fmaCmd(fmac_io_in_bits_uop_ctrl_fpu_fmaCmd),
    .io_in_bits_uop_ctrl_fpu_ren3(fmac_io_in_bits_uop_ctrl_fpu_ren3),
    .io_in_bits_uop_ctrl_fpu_rm(fmac_io_in_bits_uop_ctrl_fpu_rm),
    .io_in_bits_uop_pdest(fmac_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(fmac_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(fmac_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(fmac_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(fmac_io_in_bits_uop_lqIdx_value),
    .io_out_valid(fmac_io_out_valid),
    .io_out_bits_data(fmac_io_out_bits_data),
    .io_out_bits_uop_cf_trigger_backendHit_0(fmac_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(fmac_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(fmac_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(fmac_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(fmac_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(fmac_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(fmac_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(fmac_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(fmac_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(fmac_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(fmac_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(fmac_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(fmac_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(fmac_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(fmac_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(fmac_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(fmac_io_redirectIn_bits_level),
    .rm(fmac_rm),
    .fflags(fmac_fflags),
    .midResult_in_valid(fmac_midResult_in_valid),
    .midResult_in_bits_fp_prod_sign(fmac_midResult_in_bits_fp_prod_sign),
    .midResult_in_bits_fp_prod_exp(fmac_midResult_in_bits_fp_prod_exp),
    .midResult_in_bits_fp_prod_sig(fmac_midResult_in_bits_fp_prod_sig),
    .midResult_in_bits_inter_flags_isNaN(fmac_midResult_in_bits_inter_flags_isNaN),
    .midResult_in_bits_inter_flags_isInf(fmac_midResult_in_bits_inter_flags_isInf),
    .midResult_in_bits_inter_flags_isInv(fmac_midResult_in_bits_inter_flags_isInv),
    .midResult_in_bits_inter_flags_overflow(fmac_midResult_in_bits_inter_flags_overflow),
    .midResult_out_bits_fp_prod_sign(fmac_midResult_out_bits_fp_prod_sign),
    .midResult_out_bits_fp_prod_exp(fmac_midResult_out_bits_fp_prod_exp),
    .midResult_out_bits_fp_prod_sig(fmac_midResult_out_bits_fp_prod_sig),
    .midResult_out_bits_inter_flags_isNaN(fmac_midResult_out_bits_inter_flags_isNaN),
    .midResult_out_bits_inter_flags_isInf(fmac_midResult_out_bits_inter_flags_isInf),
    .midResult_out_bits_inter_flags_isInv(fmac_midResult_out_bits_inter_flags_isInv),
    .midResult_waitForAdd(fmac_midResult_waitForAdd)
  );
  assign io_fromFp_ready = ~io_fromFp_valid | fmac_io_in_ready; // @[Exu.scala 240:41]
  assign io_out_valid = fmac_io_out_valid; // @[Exu.scala 172:19]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = fmac_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 171:22]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = fmac_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 171:22]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = fmac_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 171:22]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = fmac_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 171:22]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = fmac_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 171:22]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = fmac_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 171:22]
  assign io_out_bits_uop_ctrl_rfWen = fmac_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 171:22]
  assign io_out_bits_uop_ctrl_fpWen = fmac_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 171:22]
  assign io_out_bits_uop_pdest = fmac_io_out_bits_uop_pdest; // @[Exu.scala 171:22]
  assign io_out_bits_uop_robIdx_flag = fmac_io_out_bits_uop_robIdx_flag; // @[Exu.scala 171:22]
  assign io_out_bits_uop_robIdx_value = fmac_io_out_bits_uop_robIdx_value; // @[Exu.scala 171:22]
  assign io_out_bits_uop_lqIdx_flag = fmac_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 171:22]
  assign io_out_bits_uop_lqIdx_value = fmac_io_out_bits_uop_lqIdx_value; // @[Exu.scala 171:22]
  assign io_out_bits_data = fmac_io_out_bits_data; // @[Exu.scala 206:22]
  assign io_out_bits_fflags = fmac_fflags; // @[ExeUnit.scala 92:24]
  assign fmaMid_out_bits_fp_prod_sign = fmac_midResult_out_bits_fp_prod_sign; // @[ExeUnit.scala 98:31]
  assign fmaMid_out_bits_fp_prod_exp = fmac_midResult_out_bits_fp_prod_exp; // @[ExeUnit.scala 98:31]
  assign fmaMid_out_bits_fp_prod_sig = fmac_midResult_out_bits_fp_prod_sig; // @[ExeUnit.scala 98:31]
  assign fmaMid_out_bits_inter_flags_isNaN = fmac_midResult_out_bits_inter_flags_isNaN; // @[ExeUnit.scala 98:31]
  assign fmaMid_out_bits_inter_flags_isInf = fmac_midResult_out_bits_inter_flags_isInf; // @[ExeUnit.scala 98:31]
  assign fmaMid_out_bits_inter_flags_isInv = fmac_midResult_out_bits_inter_flags_isInv; // @[ExeUnit.scala 98:31]
  assign fmac_clock = clock;
  assign fmac_reset = reset;
  assign fmac_io_in_valid = io_fromFp_valid; // @[Exu.scala 158:34]
  assign fmac_io_in_bits_src_0 = io_fromFp_bits_src_0; // @[Exu.scala 160:25]
  assign fmac_io_in_bits_src_1 = io_fromFp_bits_src_1; // @[Exu.scala 160:25]
  assign fmac_io_in_bits_src_2 = io_fromFp_bits_src_2; // @[Exu.scala 160:25]
  assign fmac_io_in_bits_uop_ctrl_rfWen = io_fromFp_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_ctrl_fpWen = io_fromFp_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_ctrl_fpu_isAddSub = io_fromFp_bits_uop_ctrl_fpu_isAddSub; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_ctrl_fpu_typeTagIn = io_fromFp_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_ctrl_fpu_fmaCmd = io_fromFp_bits_uop_ctrl_fpu_fmaCmd; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_ctrl_fpu_ren3 = io_fromFp_bits_uop_ctrl_fpu_ren3; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_ctrl_fpu_rm = io_fromFp_bits_uop_ctrl_fpu_rm; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_pdest = io_fromFp_bits_uop_pdest; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_robIdx_flag = io_fromFp_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_robIdx_value = io_fromFp_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_lqIdx_flag = io_fromFp_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign fmac_io_in_bits_uop_lqIdx_value = io_fromFp_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign fmac_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 146:22]
  assign fmac_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 146:22]
  assign fmac_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 146:22]
  assign fmac_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 146:22]
  assign fmac_rm = fmac_io_in_bits_uop_ctrl_fpu_rm != 3'h7 ? fmac_io_in_bits_uop_ctrl_fpu_rm : frm; // @[ExeUnit.scala 82:20]
  assign fmac_midResult_in_valid = fmaMid_in_valid; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_fp_prod_sign = fmaMid_in_bits_fp_prod_sign; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_fp_prod_exp = fmaMid_in_bits_fp_prod_exp; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_fp_prod_sig = fmaMid_in_bits_fp_prod_sig; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_inter_flags_isNaN = fmaMid_in_bits_inter_flags_isNaN; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_inter_flags_isInf = fmaMid_in_bits_inter_flags_isInf; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_inter_flags_isInv = fmaMid_in_bits_inter_flags_isInv; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_in_bits_inter_flags_overflow = fmaMid_in_bits_inter_flags_overflow; // @[ExeUnit.scala 98:31]
  assign fmac_midResult_waitForAdd = fmaMid_waitForAdd; // @[ExeUnit.scala 98:31]
endmodule

