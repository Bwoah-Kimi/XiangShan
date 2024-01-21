module FUBlock_1(
  input          clock,
  input          reset,
  input          io_redirect_valid,
  input          io_redirect_bits_robIdx_flag,
  input  [4:0]   io_redirect_bits_robIdx_value,
  input          io_redirect_bits_level,
  output         io_issue_0_ready,
  input          io_issue_0_valid,
  input          io_issue_0_bits_uop_ctrl_rfWen,
  input          io_issue_0_bits_uop_ctrl_fpWen,
  input          io_issue_0_bits_uop_ctrl_fpu_isAddSub,
  input          io_issue_0_bits_uop_ctrl_fpu_typeTagIn,
  input  [1:0]   io_issue_0_bits_uop_ctrl_fpu_fmaCmd,
  input          io_issue_0_bits_uop_ctrl_fpu_ren3,
  input  [2:0]   io_issue_0_bits_uop_ctrl_fpu_rm,
  input  [5:0]   io_issue_0_bits_uop_pdest,
  input          io_issue_0_bits_uop_robIdx_flag,
  input  [4:0]   io_issue_0_bits_uop_robIdx_value,
  input          io_issue_0_bits_uop_lqIdx_flag,
  input  [3:0]   io_issue_0_bits_uop_lqIdx_value,
  input  [63:0]  io_issue_0_bits_src_0,
  input  [63:0]  io_issue_0_bits_src_1,
  input  [63:0]  io_issue_0_bits_src_2,
  output         io_issue_1_ready,
  input          io_issue_1_valid,
  input          io_issue_1_bits_uop_ctrl_rfWen,
  input          io_issue_1_bits_uop_ctrl_fpWen,
  input          io_issue_1_bits_uop_ctrl_fpu_typeTagIn,
  input          io_issue_1_bits_uop_ctrl_fpu_typeTagOut,
  input          io_issue_1_bits_uop_ctrl_fpu_wflags,
  input          io_issue_1_bits_uop_ctrl_fpu_fpWen,
  input          io_issue_1_bits_uop_ctrl_fpu_div,
  input          io_issue_1_bits_uop_ctrl_fpu_sqrt,
  input          io_issue_1_bits_uop_ctrl_fpu_fcvt,
  input  [1:0]   io_issue_1_bits_uop_ctrl_fpu_typ,
  input  [1:0]   io_issue_1_bits_uop_ctrl_fpu_fmt,
  input  [2:0]   io_issue_1_bits_uop_ctrl_fpu_rm,
  input  [5:0]   io_issue_1_bits_uop_pdest,
  input          io_issue_1_bits_uop_robIdx_flag,
  input  [4:0]   io_issue_1_bits_uop_robIdx_value,
  input          io_issue_1_bits_uop_lqIdx_flag,
  input  [3:0]   io_issue_1_bits_uop_lqIdx_value,
  input  [63:0]  io_issue_1_bits_src_0,
  input  [63:0]  io_issue_1_bits_src_1,
  output         io_writeback_0_valid,
  output         io_writeback_0_bits_uop_cf_trigger_backendHit_0,
  output         io_writeback_0_bits_uop_cf_trigger_backendHit_1,
  output         io_writeback_0_bits_uop_cf_trigger_backendHit_2,
  output         io_writeback_0_bits_uop_cf_trigger_backendHit_3,
  output         io_writeback_0_bits_uop_cf_trigger_backendHit_4,
  output         io_writeback_0_bits_uop_cf_trigger_backendHit_5,
  output         io_writeback_0_bits_uop_ctrl_rfWen,
  output         io_writeback_0_bits_uop_ctrl_fpWen,
  output [5:0]   io_writeback_0_bits_uop_pdest,
  output         io_writeback_0_bits_uop_robIdx_flag,
  output [4:0]   io_writeback_0_bits_uop_robIdx_value,
  output         io_writeback_0_bits_uop_lqIdx_flag,
  output [3:0]   io_writeback_0_bits_uop_lqIdx_value,
  output [63:0]  io_writeback_0_bits_data,
  output [4:0]   io_writeback_0_bits_fflags,
  input          io_writeback_1_ready,
  output         io_writeback_1_valid,
  output         io_writeback_1_bits_uop_ctrl_rfWen,
  output         io_writeback_1_bits_uop_ctrl_fpWen,
  output [5:0]   io_writeback_1_bits_uop_pdest,
  output         io_writeback_1_bits_uop_robIdx_flag,
  output [4:0]   io_writeback_1_bits_uop_robIdx_value,
  output         io_writeback_1_bits_uop_lqIdx_flag,
  output [3:0]   io_writeback_1_bits_uop_lqIdx_value,
  output [63:0]  io_writeback_1_bits_data,
  output [4:0]   io_writeback_1_bits_fflags,
  input  [2:0]   io_extra_frm,
  input          io_fmaMid_0_in_valid,
  input          io_fmaMid_0_in_bits_fp_prod_sign,
  input  [10:0]  io_fmaMid_0_in_bits_fp_prod_exp,
  input  [104:0] io_fmaMid_0_in_bits_fp_prod_sig,
  input          io_fmaMid_0_in_bits_inter_flags_isNaN,
  input          io_fmaMid_0_in_bits_inter_flags_isInf,
  input          io_fmaMid_0_in_bits_inter_flags_isInv,
  input          io_fmaMid_0_in_bits_inter_flags_overflow,
  output         io_fmaMid_0_out_bits_fp_prod_sign,
  output [10:0]  io_fmaMid_0_out_bits_fp_prod_exp,
  output [104:0] io_fmaMid_0_out_bits_fp_prod_sig,
  output         io_fmaMid_0_out_bits_inter_flags_isNaN,
  output         io_fmaMid_0_out_bits_inter_flags_isInf,
  output         io_fmaMid_0_out_bits_inter_flags_isInv,
  input          io_fmaMid_0_waitForAdd
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  exeUnits_0_clock; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_reset; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_isAddSub; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_typeTagIn; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_fmaCmd; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_ren3; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_0_io_fromFp_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_fromFp_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromFp_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_0_io_fromFp_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromFp_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromFp_bits_src_1; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromFp_bits_src_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_redirect_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_redirect_bits_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_redirect_bits_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_redirect_bits_level; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_0_io_out_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_0_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_0_io_out_bits_fflags; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_frm; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_in_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_in_bits_fp_prod_sign; // @[FUBlock.scala 66:74]
  wire [10:0] exeUnits_0_fmaMid_in_bits_fp_prod_exp; // @[FUBlock.scala 66:74]
  wire [104:0] exeUnits_0_fmaMid_in_bits_fp_prod_sig; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_in_bits_inter_flags_isNaN; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_in_bits_inter_flags_isInf; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_in_bits_inter_flags_isInv; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_in_bits_inter_flags_overflow; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_out_bits_fp_prod_sign; // @[FUBlock.scala 66:74]
  wire [10:0] exeUnits_0_fmaMid_out_bits_fp_prod_exp; // @[FUBlock.scala 66:74]
  wire [104:0] exeUnits_0_fmaMid_out_bits_fp_prod_sig; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_out_bits_inter_flags_isNaN; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_out_bits_inter_flags_isInf; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_out_bits_inter_flags_isInv; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_fmaMid_waitForAdd; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_clock; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_reset; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typeTagIn; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typeTagOut; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_wflags; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fpWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_div; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_sqrt; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fcvt; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typ; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fmt; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_1_io_fromFp_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_fromFp_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromFp_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_1_io_fromFp_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_fromFp_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_fromFp_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_redirect_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_redirect_bits_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_redirect_bits_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_redirect_bits_level; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_1_io_out_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_1_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_1_io_out_bits_fflags; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_frm; // @[FUBlock.scala 66:74]
  reg  next_valid_REG; // @[BitUtils.scala 28:28]
  reg  next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  next_bits_rlevel; // @[Reg.scala 16:16]
  reg  next_valid_REG_1; // @[BitUtils.scala 28:28]
  reg  next_bits_r1_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] next_bits_r1_robIdx_value; // @[Reg.scala 16:16]
  reg  next_bits_r1_level; // @[Reg.scala 16:16]
  FmacExeUnit exeUnits_0 ( // @[FUBlock.scala 66:74]
    .clock(exeUnits_0_clock),
    .reset(exeUnits_0_reset),
    .io_fromFp_ready(exeUnits_0_io_fromFp_ready),
    .io_fromFp_valid(exeUnits_0_io_fromFp_valid),
    .io_fromFp_bits_uop_ctrl_rfWen(exeUnits_0_io_fromFp_bits_uop_ctrl_rfWen),
    .io_fromFp_bits_uop_ctrl_fpWen(exeUnits_0_io_fromFp_bits_uop_ctrl_fpWen),
    .io_fromFp_bits_uop_ctrl_fpu_isAddSub(exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_isAddSub),
    .io_fromFp_bits_uop_ctrl_fpu_typeTagIn(exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_typeTagIn),
    .io_fromFp_bits_uop_ctrl_fpu_fmaCmd(exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_fmaCmd),
    .io_fromFp_bits_uop_ctrl_fpu_ren3(exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_ren3),
    .io_fromFp_bits_uop_ctrl_fpu_rm(exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_rm),
    .io_fromFp_bits_uop_pdest(exeUnits_0_io_fromFp_bits_uop_pdest),
    .io_fromFp_bits_uop_robIdx_flag(exeUnits_0_io_fromFp_bits_uop_robIdx_flag),
    .io_fromFp_bits_uop_robIdx_value(exeUnits_0_io_fromFp_bits_uop_robIdx_value),
    .io_fromFp_bits_uop_lqIdx_flag(exeUnits_0_io_fromFp_bits_uop_lqIdx_flag),
    .io_fromFp_bits_uop_lqIdx_value(exeUnits_0_io_fromFp_bits_uop_lqIdx_value),
    .io_fromFp_bits_src_0(exeUnits_0_io_fromFp_bits_src_0),
    .io_fromFp_bits_src_1(exeUnits_0_io_fromFp_bits_src_1),
    .io_fromFp_bits_src_2(exeUnits_0_io_fromFp_bits_src_2),
    .io_redirect_valid(exeUnits_0_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exeUnits_0_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exeUnits_0_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exeUnits_0_io_redirect_bits_level),
    .io_out_valid(exeUnits_0_io_out_valid),
    .io_out_bits_uop_cf_trigger_backendHit_0(exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(exeUnits_0_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(exeUnits_0_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(exeUnits_0_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(exeUnits_0_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_0_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(exeUnits_0_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(exeUnits_0_io_out_bits_uop_lqIdx_value),
    .io_out_bits_data(exeUnits_0_io_out_bits_data),
    .io_out_bits_fflags(exeUnits_0_io_out_bits_fflags),
    .frm(exeUnits_0_frm),
    .fmaMid_in_valid(exeUnits_0_fmaMid_in_valid),
    .fmaMid_in_bits_fp_prod_sign(exeUnits_0_fmaMid_in_bits_fp_prod_sign),
    .fmaMid_in_bits_fp_prod_exp(exeUnits_0_fmaMid_in_bits_fp_prod_exp),
    .fmaMid_in_bits_fp_prod_sig(exeUnits_0_fmaMid_in_bits_fp_prod_sig),
    .fmaMid_in_bits_inter_flags_isNaN(exeUnits_0_fmaMid_in_bits_inter_flags_isNaN),
    .fmaMid_in_bits_inter_flags_isInf(exeUnits_0_fmaMid_in_bits_inter_flags_isInf),
    .fmaMid_in_bits_inter_flags_isInv(exeUnits_0_fmaMid_in_bits_inter_flags_isInv),
    .fmaMid_in_bits_inter_flags_overflow(exeUnits_0_fmaMid_in_bits_inter_flags_overflow),
    .fmaMid_out_bits_fp_prod_sign(exeUnits_0_fmaMid_out_bits_fp_prod_sign),
    .fmaMid_out_bits_fp_prod_exp(exeUnits_0_fmaMid_out_bits_fp_prod_exp),
    .fmaMid_out_bits_fp_prod_sig(exeUnits_0_fmaMid_out_bits_fp_prod_sig),
    .fmaMid_out_bits_inter_flags_isNaN(exeUnits_0_fmaMid_out_bits_inter_flags_isNaN),
    .fmaMid_out_bits_inter_flags_isInf(exeUnits_0_fmaMid_out_bits_inter_flags_isInf),
    .fmaMid_out_bits_inter_flags_isInv(exeUnits_0_fmaMid_out_bits_inter_flags_isInv),
    .fmaMid_waitForAdd(exeUnits_0_fmaMid_waitForAdd)
  );
  FmiscExeUnit exeUnits_1 ( // @[FUBlock.scala 66:74]
    .clock(exeUnits_1_clock),
    .reset(exeUnits_1_reset),
    .io_fromFp_ready(exeUnits_1_io_fromFp_ready),
    .io_fromFp_valid(exeUnits_1_io_fromFp_valid),
    .io_fromFp_bits_uop_ctrl_rfWen(exeUnits_1_io_fromFp_bits_uop_ctrl_rfWen),
    .io_fromFp_bits_uop_ctrl_fpWen(exeUnits_1_io_fromFp_bits_uop_ctrl_fpWen),
    .io_fromFp_bits_uop_ctrl_fpu_typeTagIn(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typeTagIn),
    .io_fromFp_bits_uop_ctrl_fpu_typeTagOut(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typeTagOut),
    .io_fromFp_bits_uop_ctrl_fpu_wflags(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_wflags),
    .io_fromFp_bits_uop_ctrl_fpu_fpWen(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fpWen),
    .io_fromFp_bits_uop_ctrl_fpu_div(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_div),
    .io_fromFp_bits_uop_ctrl_fpu_sqrt(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_sqrt),
    .io_fromFp_bits_uop_ctrl_fpu_fcvt(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fcvt),
    .io_fromFp_bits_uop_ctrl_fpu_typ(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typ),
    .io_fromFp_bits_uop_ctrl_fpu_fmt(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fmt),
    .io_fromFp_bits_uop_ctrl_fpu_rm(exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_rm),
    .io_fromFp_bits_uop_pdest(exeUnits_1_io_fromFp_bits_uop_pdest),
    .io_fromFp_bits_uop_robIdx_flag(exeUnits_1_io_fromFp_bits_uop_robIdx_flag),
    .io_fromFp_bits_uop_robIdx_value(exeUnits_1_io_fromFp_bits_uop_robIdx_value),
    .io_fromFp_bits_uop_lqIdx_flag(exeUnits_1_io_fromFp_bits_uop_lqIdx_flag),
    .io_fromFp_bits_uop_lqIdx_value(exeUnits_1_io_fromFp_bits_uop_lqIdx_value),
    .io_fromFp_bits_src_0(exeUnits_1_io_fromFp_bits_src_0),
    .io_fromFp_bits_src_1(exeUnits_1_io_fromFp_bits_src_1),
    .io_redirect_valid(exeUnits_1_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exeUnits_1_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exeUnits_1_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exeUnits_1_io_redirect_bits_level),
    .io_out_ready(exeUnits_1_io_out_ready),
    .io_out_valid(exeUnits_1_io_out_valid),
    .io_out_bits_uop_ctrl_rfWen(exeUnits_1_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(exeUnits_1_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(exeUnits_1_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(exeUnits_1_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_1_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(exeUnits_1_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(exeUnits_1_io_out_bits_uop_lqIdx_value),
    .io_out_bits_data(exeUnits_1_io_out_bits_data),
    .io_out_bits_fflags(exeUnits_1_io_out_bits_fflags),
    .frm(exeUnits_1_frm)
  );
  assign io_issue_0_ready = exeUnits_0_io_fromFp_ready; // @[FUBlock.scala 72:12]
  assign io_issue_1_ready = exeUnits_1_io_fromFp_ready; // @[FUBlock.scala 72:12]
  assign io_writeback_0_valid = exeUnits_0_io_out_valid; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_cf_trigger_backendHit_0 = exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_cf_trigger_backendHit_1 = exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_cf_trigger_backendHit_2 = exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_cf_trigger_backendHit_3 = exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_cf_trigger_backendHit_4 = exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_cf_trigger_backendHit_5 = exeUnits_0_io_out_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_ctrl_rfWen = exeUnits_0_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_ctrl_fpWen = exeUnits_0_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_pdest = exeUnits_0_io_out_bits_uop_pdest; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_robIdx_flag = exeUnits_0_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_robIdx_value = exeUnits_0_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_lqIdx_flag = exeUnits_0_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_uop_lqIdx_value = exeUnits_0_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_data = exeUnits_0_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_fflags = exeUnits_0_io_out_bits_fflags; // @[FUBlock.scala 73:16]
  assign io_writeback_1_valid = exeUnits_1_io_out_valid; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_ctrl_rfWen = exeUnits_1_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_ctrl_fpWen = exeUnits_1_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_pdest = exeUnits_1_io_out_bits_uop_pdest; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_robIdx_flag = exeUnits_1_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_robIdx_value = exeUnits_1_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_lqIdx_flag = exeUnits_1_io_out_bits_uop_lqIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_uop_lqIdx_value = exeUnits_1_io_out_bits_uop_lqIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_data = exeUnits_1_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_fflags = exeUnits_1_io_out_bits_fflags; // @[FUBlock.scala 73:16]
  assign io_fmaMid_0_out_bits_fp_prod_sign = exeUnits_0_fmaMid_out_bits_fp_prod_sign; // @[FUBlock.scala 105:19]
  assign io_fmaMid_0_out_bits_fp_prod_exp = exeUnits_0_fmaMid_out_bits_fp_prod_exp; // @[FUBlock.scala 105:19]
  assign io_fmaMid_0_out_bits_fp_prod_sig = exeUnits_0_fmaMid_out_bits_fp_prod_sig; // @[FUBlock.scala 105:19]
  assign io_fmaMid_0_out_bits_inter_flags_isNaN = exeUnits_0_fmaMid_out_bits_inter_flags_isNaN; // @[FUBlock.scala 105:19]
  assign io_fmaMid_0_out_bits_inter_flags_isInf = exeUnits_0_fmaMid_out_bits_inter_flags_isInf; // @[FUBlock.scala 105:19]
  assign io_fmaMid_0_out_bits_inter_flags_isInv = exeUnits_0_fmaMid_out_bits_inter_flags_isInv; // @[FUBlock.scala 105:19]
  assign exeUnits_0_clock = clock; // @[FUBlock.scala 66:74]
  assign exeUnits_0_reset = reset; // @[FUBlock.scala 66:74]
  assign exeUnits_0_io_fromFp_valid = io_issue_0_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_rfWen = io_issue_0_bits_uop_ctrl_rfWen; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_fpWen = io_issue_0_bits_uop_ctrl_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_isAddSub = io_issue_0_bits_uop_ctrl_fpu_isAddSub; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_typeTagIn = io_issue_0_bits_uop_ctrl_fpu_typeTagIn; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_fmaCmd = io_issue_0_bits_uop_ctrl_fpu_fmaCmd; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_ren3 = io_issue_0_bits_uop_ctrl_fpu_ren3; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_ctrl_fpu_rm = io_issue_0_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_pdest = io_issue_0_bits_uop_pdest; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_robIdx_flag = io_issue_0_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_robIdx_value = io_issue_0_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_lqIdx_flag = io_issue_0_bits_uop_lqIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_uop_lqIdx_value = io_issue_0_bits_uop_lqIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_src_0 = io_issue_0_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_src_1 = io_issue_0_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromFp_bits_src_2 = io_issue_0_bits_src_2; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_redirect_valid = next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign exeUnits_0_io_redirect_bits_robIdx_flag = next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_0_io_redirect_bits_robIdx_value = next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_0_io_redirect_bits_level = next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_0_frm = io_extra_frm; // @[FUBlock.scala 100:19]
  assign exeUnits_0_fmaMid_in_valid = io_fmaMid_0_in_valid; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_fp_prod_sign = io_fmaMid_0_in_bits_fp_prod_sign; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_fp_prod_exp = io_fmaMid_0_in_bits_fp_prod_exp; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_fp_prod_sig = io_fmaMid_0_in_bits_fp_prod_sig; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_inter_flags_isNaN = io_fmaMid_0_in_bits_inter_flags_isNaN; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_inter_flags_isInf = io_fmaMid_0_in_bits_inter_flags_isInf; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_inter_flags_isInv = io_fmaMid_0_in_bits_inter_flags_isInv; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_in_bits_inter_flags_overflow = io_fmaMid_0_in_bits_inter_flags_overflow; // @[FUBlock.scala 105:19]
  assign exeUnits_0_fmaMid_waitForAdd = io_fmaMid_0_waitForAdd; // @[FUBlock.scala 105:19]
  assign exeUnits_1_clock = clock; // @[FUBlock.scala 66:74]
  assign exeUnits_1_reset = reset; // @[FUBlock.scala 66:74]
  assign exeUnits_1_io_fromFp_valid = io_issue_1_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_rfWen = io_issue_1_bits_uop_ctrl_rfWen; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpWen = io_issue_1_bits_uop_ctrl_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typeTagIn = io_issue_1_bits_uop_ctrl_fpu_typeTagIn; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typeTagOut = io_issue_1_bits_uop_ctrl_fpu_typeTagOut; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_wflags = io_issue_1_bits_uop_ctrl_fpu_wflags; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fpWen = io_issue_1_bits_uop_ctrl_fpu_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_div = io_issue_1_bits_uop_ctrl_fpu_div; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_sqrt = io_issue_1_bits_uop_ctrl_fpu_sqrt; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fcvt = io_issue_1_bits_uop_ctrl_fpu_fcvt; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_typ = io_issue_1_bits_uop_ctrl_fpu_typ; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_fmt = io_issue_1_bits_uop_ctrl_fpu_fmt; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_ctrl_fpu_rm = io_issue_1_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_pdest = io_issue_1_bits_uop_pdest; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_robIdx_flag = io_issue_1_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_robIdx_value = io_issue_1_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_lqIdx_flag = io_issue_1_bits_uop_lqIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_uop_lqIdx_value = io_issue_1_bits_uop_lqIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_src_0 = io_issue_1_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromFp_bits_src_1 = io_issue_1_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_redirect_valid = next_valid_REG_1; // @[BitUtils.scala 26:20 28:18]
  assign exeUnits_1_io_redirect_bits_robIdx_flag = next_bits_r1_robIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_1_io_redirect_bits_robIdx_value = next_bits_r1_robIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_1_io_redirect_bits_level = next_bits_r1_level; // @[BitUtils.scala 26:20 33:15]
  assign exeUnits_1_io_out_ready = io_writeback_1_ready; // @[FUBlock.scala 73:16]
  assign exeUnits_1_frm = io_extra_frm; // @[FUBlock.scala 100:19]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r1_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r1_robIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      next_bits_r1_level <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      next_valid_REG_1 <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      next_valid_REG_1 <= io_redirect_valid; // @[BitUtils.scala 28:28]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  next_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  next_bits_rrobIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  next_bits_rrobIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  next_bits_rlevel = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  next_valid_REG_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  next_bits_r1_robIdx_flag = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  next_bits_r1_robIdx_value = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  next_bits_r1_level = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    next_valid_REG = 1'h0;
  end
  if (reset) begin
    next_valid_REG_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

