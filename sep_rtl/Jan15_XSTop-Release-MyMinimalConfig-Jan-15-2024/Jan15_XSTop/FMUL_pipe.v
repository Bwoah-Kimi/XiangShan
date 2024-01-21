module FMUL_pipe(
  input          clock,
  input          reset,
  output         io_in_ready,
  input          io_in_valid,
  input  [63:0]  io_in_bits_src_0,
  input  [63:0]  io_in_bits_src_1,
  input  [63:0]  io_in_bits_src_2,
  input          io_in_bits_uop_ctrl_rfWen,
  input          io_in_bits_uop_ctrl_fpWen,
  input          io_in_bits_uop_ctrl_fpu_typeTagIn,
  input  [1:0]   io_in_bits_uop_ctrl_fpu_fmaCmd,
  input          io_in_bits_uop_ctrl_fpu_ren3,
  input  [5:0]   io_in_bits_uop_pdest,
  input          io_in_bits_uop_robIdx_flag,
  input  [4:0]   io_in_bits_uop_robIdx_value,
  input          io_in_bits_uop_lqIdx_flag,
  input  [3:0]   io_in_bits_uop_lqIdx_value,
  input          io_out_ready,
  output         io_out_valid,
  output [63:0]  io_out_bits_data,
  output         io_out_bits_uop_ctrl_rfWen,
  output         io_out_bits_uop_ctrl_fpWen,
  output         io_out_bits_uop_ctrl_fpu_typeTagIn,
  output         io_out_bits_uop_ctrl_fpu_ren3,
  output [5:0]   io_out_bits_uop_pdest,
  output         io_out_bits_uop_robIdx_flag,
  output [4:0]   io_out_bits_uop_robIdx_value,
  output         io_out_bits_uop_lqIdx_flag,
  output [3:0]   io_out_bits_uop_lqIdx_value,
  input          io_redirectIn_valid,
  input          io_redirectIn_bits_robIdx_flag,
  input  [4:0]   io_redirectIn_bits_robIdx_value,
  input          io_redirectIn_bits_level,
  input  [2:0]   rm,
  output [4:0]   fflags,
  output         toAdd_mul_out_1_fp_prod_sign,
  output [10:0]  toAdd_mul_out_1_fp_prod_exp,
  output [104:0] toAdd_mul_out_1_fp_prod_sig,
  output         toAdd_mul_out_1_inter_flags_isNaN,
  output         toAdd_mul_out_1_inter_flags_isInf,
  output         toAdd_mul_out_1_inter_flags_isInv,
  output         toAdd_mul_out_0_fp_prod_sign,
  output [7:0]   toAdd_mul_out_0_fp_prod_exp,
  output [46:0]  toAdd_mul_out_0_fp_prod_sig,
  output         toAdd_mul_out_0_inter_flags_isNaN,
  output         toAdd_mul_out_0_inter_flags_isInf,
  output         toAdd_mul_out_0_inter_flags_isInv,
  output [63:0]  toAdd_addend,
  output         toAdd_uop_ctrl_rfWen,
  output         toAdd_uop_ctrl_fpWen,
  output         toAdd_uop_ctrl_fpu_typeTagIn,
  output [1:0]   toAdd_uop_ctrl_fpu_fmaCmd,
  output [5:0]   toAdd_uop_pdest,
  output         toAdd_uop_robIdx_flag,
  output [4:0]   toAdd_uop_robIdx_value,
  output         toAdd_uop_lqIdx_flag,
  output [3:0]   toAdd_uop_lqIdx_value
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
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [95:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [191:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
`endif // RANDOMIZE_REG_INIT
  wire  multiplier_clock; // @[FMA.scala 55:26]
  wire [53:0] multiplier_io_a; // @[FMA.scala 55:26]
  wire [53:0] multiplier_io_b; // @[FMA.scala 55:26]
  wire  multiplier_io_regEnables_0; // @[FMA.scala 55:26]
  wire [107:0] multiplier_io_result; // @[FMA.scala 55:26]
  wire [31:0] s1_0_io_a; // @[FMA.scala 59:20]
  wire [31:0] s1_0_io_b; // @[FMA.scala 59:20]
  wire [2:0] s1_0_io_rm; // @[FMA.scala 59:20]
  wire  s1_0_io_out_special_case_valid; // @[FMA.scala 59:20]
  wire  s1_0_io_out_special_case_bits_nan; // @[FMA.scala 59:20]
  wire  s1_0_io_out_special_case_bits_inf; // @[FMA.scala 59:20]
  wire  s1_0_io_out_special_case_bits_inv; // @[FMA.scala 59:20]
  wire  s1_0_io_out_special_case_bits_hasZero; // @[FMA.scala 59:20]
  wire  s1_0_io_out_early_overflow; // @[FMA.scala 59:20]
  wire  s1_0_io_out_prod_sign; // @[FMA.scala 59:20]
  wire [8:0] s1_0_io_out_shift_amt; // @[FMA.scala 59:20]
  wire [8:0] s1_0_io_out_exp_shifted; // @[FMA.scala 59:20]
  wire  s1_0_io_out_may_be_subnormal; // @[FMA.scala 59:20]
  wire [2:0] s1_0_io_out_rm; // @[FMA.scala 59:20]
  wire  s2_0_io_in_special_case_valid; // @[FMA.scala 60:20]
  wire  s2_0_io_in_special_case_bits_nan; // @[FMA.scala 60:20]
  wire  s2_0_io_in_special_case_bits_inf; // @[FMA.scala 60:20]
  wire  s2_0_io_in_special_case_bits_inv; // @[FMA.scala 60:20]
  wire  s2_0_io_in_special_case_bits_hasZero; // @[FMA.scala 60:20]
  wire  s2_0_io_in_early_overflow; // @[FMA.scala 60:20]
  wire  s2_0_io_in_prod_sign; // @[FMA.scala 60:20]
  wire [8:0] s2_0_io_in_shift_amt; // @[FMA.scala 60:20]
  wire [8:0] s2_0_io_in_exp_shifted; // @[FMA.scala 60:20]
  wire  s2_0_io_in_may_be_subnormal; // @[FMA.scala 60:20]
  wire [2:0] s2_0_io_in_rm; // @[FMA.scala 60:20]
  wire [47:0] s2_0_io_prod; // @[FMA.scala 60:20]
  wire  s2_0_io_out_special_case_valid; // @[FMA.scala 60:20]
  wire  s2_0_io_out_special_case_bits_nan; // @[FMA.scala 60:20]
  wire  s2_0_io_out_special_case_bits_inf; // @[FMA.scala 60:20]
  wire  s2_0_io_out_special_case_bits_inv; // @[FMA.scala 60:20]
  wire  s2_0_io_out_special_case_bits_hasZero; // @[FMA.scala 60:20]
  wire  s2_0_io_out_raw_out_sign; // @[FMA.scala 60:20]
  wire [7:0] s2_0_io_out_raw_out_exp; // @[FMA.scala 60:20]
  wire [73:0] s2_0_io_out_raw_out_sig; // @[FMA.scala 60:20]
  wire  s2_0_io_out_early_overflow; // @[FMA.scala 60:20]
  wire [2:0] s2_0_io_out_rm; // @[FMA.scala 60:20]
  wire  s3_0_io_in_special_case_valid; // @[FMA.scala 61:20]
  wire  s3_0_io_in_special_case_bits_nan; // @[FMA.scala 61:20]
  wire  s3_0_io_in_special_case_bits_inf; // @[FMA.scala 61:20]
  wire  s3_0_io_in_special_case_bits_inv; // @[FMA.scala 61:20]
  wire  s3_0_io_in_special_case_bits_hasZero; // @[FMA.scala 61:20]
  wire  s3_0_io_in_raw_out_sign; // @[FMA.scala 61:20]
  wire [7:0] s3_0_io_in_raw_out_exp; // @[FMA.scala 61:20]
  wire [73:0] s3_0_io_in_raw_out_sig; // @[FMA.scala 61:20]
  wire  s3_0_io_in_early_overflow; // @[FMA.scala 61:20]
  wire [2:0] s3_0_io_in_rm; // @[FMA.scala 61:20]
  wire [31:0] s3_0_io_result; // @[FMA.scala 61:20]
  wire [4:0] s3_0_io_fflags; // @[FMA.scala 61:20]
  wire  s3_0_io_to_fadd_fp_prod_sign; // @[FMA.scala 61:20]
  wire [7:0] s3_0_io_to_fadd_fp_prod_exp; // @[FMA.scala 61:20]
  wire [46:0] s3_0_io_to_fadd_fp_prod_sig; // @[FMA.scala 61:20]
  wire  s3_0_io_to_fadd_inter_flags_isNaN; // @[FMA.scala 61:20]
  wire  s3_0_io_to_fadd_inter_flags_isInf; // @[FMA.scala 61:20]
  wire  s3_0_io_to_fadd_inter_flags_isInv; // @[FMA.scala 61:20]
  wire [63:0] s1_1_io_a; // @[FMA.scala 59:20]
  wire [63:0] s1_1_io_b; // @[FMA.scala 59:20]
  wire [2:0] s1_1_io_rm; // @[FMA.scala 59:20]
  wire  s1_1_io_out_special_case_valid; // @[FMA.scala 59:20]
  wire  s1_1_io_out_special_case_bits_nan; // @[FMA.scala 59:20]
  wire  s1_1_io_out_special_case_bits_inf; // @[FMA.scala 59:20]
  wire  s1_1_io_out_special_case_bits_inv; // @[FMA.scala 59:20]
  wire  s1_1_io_out_special_case_bits_hasZero; // @[FMA.scala 59:20]
  wire  s1_1_io_out_early_overflow; // @[FMA.scala 59:20]
  wire  s1_1_io_out_prod_sign; // @[FMA.scala 59:20]
  wire [11:0] s1_1_io_out_shift_amt; // @[FMA.scala 59:20]
  wire [11:0] s1_1_io_out_exp_shifted; // @[FMA.scala 59:20]
  wire  s1_1_io_out_may_be_subnormal; // @[FMA.scala 59:20]
  wire [2:0] s1_1_io_out_rm; // @[FMA.scala 59:20]
  wire  s2_1_io_in_special_case_valid; // @[FMA.scala 60:20]
  wire  s2_1_io_in_special_case_bits_nan; // @[FMA.scala 60:20]
  wire  s2_1_io_in_special_case_bits_inf; // @[FMA.scala 60:20]
  wire  s2_1_io_in_special_case_bits_inv; // @[FMA.scala 60:20]
  wire  s2_1_io_in_special_case_bits_hasZero; // @[FMA.scala 60:20]
  wire  s2_1_io_in_early_overflow; // @[FMA.scala 60:20]
  wire  s2_1_io_in_prod_sign; // @[FMA.scala 60:20]
  wire [11:0] s2_1_io_in_shift_amt; // @[FMA.scala 60:20]
  wire [11:0] s2_1_io_in_exp_shifted; // @[FMA.scala 60:20]
  wire  s2_1_io_in_may_be_subnormal; // @[FMA.scala 60:20]
  wire [2:0] s2_1_io_in_rm; // @[FMA.scala 60:20]
  wire [105:0] s2_1_io_prod; // @[FMA.scala 60:20]
  wire  s2_1_io_out_special_case_valid; // @[FMA.scala 60:20]
  wire  s2_1_io_out_special_case_bits_nan; // @[FMA.scala 60:20]
  wire  s2_1_io_out_special_case_bits_inf; // @[FMA.scala 60:20]
  wire  s2_1_io_out_special_case_bits_inv; // @[FMA.scala 60:20]
  wire  s2_1_io_out_special_case_bits_hasZero; // @[FMA.scala 60:20]
  wire  s2_1_io_out_raw_out_sign; // @[FMA.scala 60:20]
  wire [10:0] s2_1_io_out_raw_out_exp; // @[FMA.scala 60:20]
  wire [160:0] s2_1_io_out_raw_out_sig; // @[FMA.scala 60:20]
  wire  s2_1_io_out_early_overflow; // @[FMA.scala 60:20]
  wire [2:0] s2_1_io_out_rm; // @[FMA.scala 60:20]
  wire  s3_1_io_in_special_case_valid; // @[FMA.scala 61:20]
  wire  s3_1_io_in_special_case_bits_nan; // @[FMA.scala 61:20]
  wire  s3_1_io_in_special_case_bits_inf; // @[FMA.scala 61:20]
  wire  s3_1_io_in_special_case_bits_inv; // @[FMA.scala 61:20]
  wire  s3_1_io_in_special_case_bits_hasZero; // @[FMA.scala 61:20]
  wire  s3_1_io_in_raw_out_sign; // @[FMA.scala 61:20]
  wire [10:0] s3_1_io_in_raw_out_exp; // @[FMA.scala 61:20]
  wire [160:0] s3_1_io_in_raw_out_sig; // @[FMA.scala 61:20]
  wire  s3_1_io_in_early_overflow; // @[FMA.scala 61:20]
  wire [2:0] s3_1_io_in_rm; // @[FMA.scala 61:20]
  wire [63:0] s3_1_io_result; // @[FMA.scala 61:20]
  wire [4:0] s3_1_io_fflags; // @[FMA.scala 61:20]
  wire  s3_1_io_to_fadd_fp_prod_sign; // @[FMA.scala 61:20]
  wire [10:0] s3_1_io_to_fadd_fp_prod_exp; // @[FMA.scala 61:20]
  wire [104:0] s3_1_io_to_fadd_fp_prod_sig; // @[FMA.scala 61:20]
  wire  s3_1_io_to_fadd_inter_flags_isNaN; // @[FMA.scala 61:20]
  wire  s3_1_io_to_fadd_inter_flags_isInf; // @[FMA.scala 61:20]
  wire  s3_1_io_to_fadd_inter_flags_isInv; // @[FMA.scala 61:20]
  reg  REG; // @[FunctionUnit.scala 103:60]
  reg  REG_2_ctrl_rfWen; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpWen; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpu_typeTagIn; // @[FunctionUnit.scala 105:57]
  reg [1:0] REG_2_ctrl_fpu_fmaCmd; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpu_ren3; // @[FunctionUnit.scala 105:57]
  reg [5:0] REG_2_pdest; // @[FunctionUnit.scala 105:57]
  reg  REG_2_robIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [4:0] REG_2_robIdx_value; // @[FunctionUnit.scala 105:57]
  reg  REG_2_lqIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [3:0] REG_2_lqIdx_value; // @[FunctionUnit.scala 105:57]
  reg  REG_3_ctrl_rfWen; // @[FunctionUnit.scala 105:57]
  reg  REG_3_ctrl_fpWen; // @[FunctionUnit.scala 105:57]
  reg  REG_3_ctrl_fpu_typeTagIn; // @[FunctionUnit.scala 105:57]
  reg [1:0] REG_3_ctrl_fpu_fmaCmd; // @[FunctionUnit.scala 105:57]
  reg [5:0] REG_3_pdest; // @[FunctionUnit.scala 105:57]
  reg  REG_3_robIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [4:0] REG_3_robIdx_value; // @[FunctionUnit.scala 105:57]
  reg  REG_3_lqIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [3:0] REG_3_lqIdx_value; // @[FunctionUnit.scala 105:57]
  wire [5:0] _flushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _flushItself_T_2 = {io_redirectIn_bits_robIdx_flag,io_redirectIn_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirectIn_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = io_in_bits_uop_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = io_in_bits_uop_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_2 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_4 = io_redirectIn_valid & (flushItself | _T_2); // @[Rob.scala 143:20]
  wire  _T_5 = io_in_valid & _T_4; // @[FunctionUnit.scala 109:53]
  wire [5:0] _flushItself_T_5 = {REG_2_robIdx_flag,REG_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_7 = _flushItself_T_5 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_1 = io_redirectIn_bits_level & _flushItself_T_7; // @[Rob.scala 142:51]
  wire  differentFlag_1 = REG_2_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_1 = REG_2_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_6 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _T_8 = io_redirectIn_valid & (flushItself_1 | _T_6); // @[Rob.scala 143:20]
  wire  _T_9 = REG & _T_8; // @[FunctionUnit.scala 109:53]
  wire  _T_15 = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  wire  _T_17 = ~_T_5; // @[FunctionUnit.scala 116:46]
  wire  _T_21 = ~_T_9; // @[FunctionUnit.scala 116:46]
  wire  typeSel_0 = ~io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 50:60]
  wire  src1_isBoxed = &io_in_bits_src_0[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src1_T_4 = src1_isBoxed ? io_in_bits_src_0[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  wire [63:0] src1 = io_in_bits_uop_ctrl_fpu_typeTagIn ? io_in_bits_src_0 : {{32'd0}, _src1_T_4}; // @[FPU.scala 25:8]
  wire  src2_isBoxed = &io_in_bits_src_1[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src2_T_4 = src2_isBoxed ? io_in_bits_src_1[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  wire [63:0] src2 = io_in_bits_uop_ctrl_fpu_typeTagIn ? io_in_bits_src_1 : {{32'd0}, _src2_T_4}; // @[FPU.scala 25:8]
  wire  _in2_T_2 = ~src2[31]; // @[FPUSubModule.scala 63:7]
  wire [31:0] _in2_T_4 = {_in2_T_2,src2[30:0]}; // @[Cat.scala 31:58]
  wire [63:0] in2 = io_in_bits_uop_ctrl_fpu_fmaCmd[1] ? {{32'd0}, _in2_T_4} : src2; // @[FMA.scala 64:18]
  wire  _s2_io_in_T_2 = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  reg  s2_io_in_rspecial_case_valid; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_nan; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_inf; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_inv; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_hasZero; // @[Reg.scala 16:16]
  reg  s2_io_in_rearly_overflow; // @[Reg.scala 16:16]
  reg  s2_io_in_rprod_sign; // @[Reg.scala 16:16]
  reg [8:0] s2_io_in_rshift_amt; // @[Reg.scala 16:16]
  reg [8:0] s2_io_in_rexp_shifted; // @[Reg.scala 16:16]
  reg  s2_io_in_rmay_be_subnormal; // @[Reg.scala 16:16]
  reg [2:0] s2_io_in_rrm; // @[Reg.scala 16:16]
  wire  _s3_io_in_T_2 = REG & io_out_ready & _T_21; // @[FunctionUnit.scala 128:66]
  reg  s3_io_in_rspecial_case_valid; // @[Reg.scala 16:16]
  reg  s3_io_in_rspecial_case_bits_nan; // @[Reg.scala 16:16]
  reg  s3_io_in_rspecial_case_bits_inf; // @[Reg.scala 16:16]
  reg  s3_io_in_rspecial_case_bits_inv; // @[Reg.scala 16:16]
  reg  s3_io_in_rspecial_case_bits_hasZero; // @[Reg.scala 16:16]
  reg  s3_io_in_rraw_out_sign; // @[Reg.scala 16:16]
  reg [7:0] s3_io_in_rraw_out_exp; // @[Reg.scala 16:16]
  reg [73:0] s3_io_in_rraw_out_sig; // @[Reg.scala 16:16]
  reg  s3_io_in_rearly_overflow; // @[Reg.scala 16:16]
  reg [2:0] s3_io_in_rrm; // @[Reg.scala 16:16]
  wire  _in2_T_7 = ~src2[63]; // @[FPUSubModule.scala 63:7]
  wire [63:0] _in2_T_9 = {_in2_T_7,src2[62:0]}; // @[Cat.scala 31:58]
  reg  s2_io_in_r1_special_case_valid; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_nan; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_inf; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_inv; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_hasZero; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_early_overflow; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_prod_sign; // @[Reg.scala 16:16]
  reg [11:0] s2_io_in_r1_shift_amt; // @[Reg.scala 16:16]
  reg [11:0] s2_io_in_r1_exp_shifted; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_may_be_subnormal; // @[Reg.scala 16:16]
  reg [2:0] s2_io_in_r1_rm; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_special_case_valid; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_special_case_bits_nan; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_special_case_bits_inf; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_special_case_bits_inv; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_special_case_bits_hasZero; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_raw_out_sign; // @[Reg.scala 16:16]
  reg [10:0] s3_io_in_r1_raw_out_exp; // @[Reg.scala 16:16]
  reg [160:0] s3_io_in_r1_raw_out_sig; // @[Reg.scala 16:16]
  reg  s3_io_in_r1_early_overflow; // @[Reg.scala 16:16]
  reg [2:0] s3_io_in_r1_rm; // @[Reg.scala 16:16]
  wire [7:0] raw_a_fp_exp = s1_0_io_a[30:23]; // @[package.scala 60:18]
  wire [22:0] raw_a_fp_sig = s1_0_io_a[22:0]; // @[package.scala 61:18]
  wire  raw_a_raw_nz = |raw_a_fp_exp; // @[package.scala 81:72]
  wire [23:0] raw_a_sig = {raw_a_raw_nz,raw_a_fp_sig}; // @[Cat.scala 31:58]
  wire [7:0] raw_bfp_exp = s1_0_io_b[30:23]; // @[package.scala 60:18]
  wire [22:0] raw_bfp_sig = s1_0_io_b[22:0]; // @[package.scala 61:18]
  wire  raw_braw_nz = |raw_bfp_exp; // @[package.scala 81:72]
  wire [23:0] raw_bsig = {raw_braw_nz,raw_bfp_sig}; // @[Cat.scala 31:58]
  wire [10:0] raw_a_fp_1_exp = s1_1_io_a[62:52]; // @[package.scala 60:18]
  wire [51:0] raw_a_fp_1_sig = s1_1_io_a[51:0]; // @[package.scala 61:18]
  wire  raw_a_raw_nz_1 = |raw_a_fp_1_exp; // @[package.scala 81:72]
  wire [52:0] raw_a_1_sig = {raw_a_raw_nz_1,raw_a_fp_1_sig}; // @[Cat.scala 31:58]
  wire [10:0] raw_bfp_1_exp = s1_1_io_b[62:52]; // @[package.scala 60:18]
  wire [51:0] raw_bfp_1_sig = s1_1_io_b[51:0]; // @[package.scala 61:18]
  wire  raw_braw_nz_1 = |raw_bfp_1_exp; // @[package.scala 81:72]
  wire [52:0] raw_b1_sig = {raw_braw_nz_1,raw_bfp_1_sig}; // @[Cat.scala 31:58]
  wire [23:0] _multiplier_io_a_T = typeSel_0 ? raw_a_sig : 24'h0; // @[Mux.scala 27:73]
  wire [52:0] _multiplier_io_a_T_1 = io_in_bits_uop_ctrl_fpu_typeTagIn ? raw_a_1_sig : 53'h0; // @[Mux.scala 27:73]
  wire [52:0] _GEN_272 = {{29'd0}, _multiplier_io_a_T}; // @[Mux.scala 27:73]
  wire [52:0] _multiplier_io_a_T_2 = _GEN_272 | _multiplier_io_a_T_1; // @[Mux.scala 27:73]
  wire [23:0] _multiplier_io_bT = typeSel_0 ? raw_bsig : 24'h0; // @[Mux.scala 27:73]
  wire [52:0] _multiplier_io_bT_1 = io_in_bits_uop_ctrl_fpu_typeTagIn ? raw_b1_sig : 53'h0; // @[Mux.scala 27:73]
  wire [52:0] _GEN_273 = {{29'd0}, _multiplier_io_bT}; // @[Mux.scala 27:73]
  wire [52:0] _multiplier_io_bT_2 = _GEN_273 | _multiplier_io_bT_1; // @[Mux.scala 27:73]
  reg  outSel_r0; // @[Reg.scala 16:16]
  reg  outSel_r1; // @[Reg.scala 16:16]
  reg  outSel_0; // @[Reg.scala 16:16]
  reg  outSel_1; // @[Reg.scala 16:16]
  reg [63:0] toAdd_addend_r; // @[Reg.scala 16:16]
  reg [63:0] toAdd_addend_r1; // @[Reg.scala 16:16]
  wire [31:0] _io_out_bits_data_T_1 = s3_0_io_result; // @[FPU.scala 41:24]
  wire [63:0] _io_out_bits_data_T_2 = {32'hffffffff,_io_out_bits_data_T_1}; // @[Cat.scala 31:58]
  wire [63:0] _io_out_bits_data_T_3 = s3_1_io_result; // @[FPU.scala 43:8]
  wire [63:0] _io_out_bits_data_T_4 = outSel_0 ? _io_out_bits_data_T_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_data_T_5 = outSel_1 ? _io_out_bits_data_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [4:0] _fflags_T = outSel_0 ? s3_0_io_fflags : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _fflags_T_1 = outSel_1 ? s3_1_io_fflags : 5'h0; // @[Mux.scala 27:73]
  Multiplier multiplier ( // @[FMA.scala 55:26]
    .clock(multiplier_clock),
    .io_a(multiplier_io_a),
    .io_b(multiplier_io_b),
    .io_regEnables_0(multiplier_io_regEnables_0),
    .io_result(multiplier_io_result)
  );
  FMUL_s1 s1_0 ( // @[FMA.scala 59:20]
    .io_a(s1_0_io_a),
    .io_b(s1_0_io_b),
    .io_rm(s1_0_io_rm),
    .io_out_special_case_valid(s1_0_io_out_special_case_valid),
    .io_out_special_case_bits_nan(s1_0_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf(s1_0_io_out_special_case_bits_inf),
    .io_out_special_case_bits_inv(s1_0_io_out_special_case_bits_inv),
    .io_out_special_case_bits_hasZero(s1_0_io_out_special_case_bits_hasZero),
    .io_out_early_overflow(s1_0_io_out_early_overflow),
    .io_out_prod_sign(s1_0_io_out_prod_sign),
    .io_out_shift_amt(s1_0_io_out_shift_amt),
    .io_out_exp_shifted(s1_0_io_out_exp_shifted),
    .io_out_may_be_subnormal(s1_0_io_out_may_be_subnormal),
    .io_out_rm(s1_0_io_out_rm)
  );
  FMUL_s2 s2_0 ( // @[FMA.scala 60:20]
    .io_in_special_case_valid(s2_0_io_in_special_case_valid),
    .io_in_special_case_bits_nan(s2_0_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf(s2_0_io_in_special_case_bits_inf),
    .io_in_special_case_bits_inv(s2_0_io_in_special_case_bits_inv),
    .io_in_special_case_bits_hasZero(s2_0_io_in_special_case_bits_hasZero),
    .io_in_early_overflow(s2_0_io_in_early_overflow),
    .io_in_prod_sign(s2_0_io_in_prod_sign),
    .io_in_shift_amt(s2_0_io_in_shift_amt),
    .io_in_exp_shifted(s2_0_io_in_exp_shifted),
    .io_in_may_be_subnormal(s2_0_io_in_may_be_subnormal),
    .io_in_rm(s2_0_io_in_rm),
    .io_prod(s2_0_io_prod),
    .io_out_special_case_valid(s2_0_io_out_special_case_valid),
    .io_out_special_case_bits_nan(s2_0_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf(s2_0_io_out_special_case_bits_inf),
    .io_out_special_case_bits_inv(s2_0_io_out_special_case_bits_inv),
    .io_out_special_case_bits_hasZero(s2_0_io_out_special_case_bits_hasZero),
    .io_out_raw_out_sign(s2_0_io_out_raw_out_sign),
    .io_out_raw_out_exp(s2_0_io_out_raw_out_exp),
    .io_out_raw_out_sig(s2_0_io_out_raw_out_sig),
    .io_out_early_overflow(s2_0_io_out_early_overflow),
    .io_out_rm(s2_0_io_out_rm)
  );
  FMUL_s3 s3_0 ( // @[FMA.scala 61:20]
    .io_in_special_case_valid(s3_0_io_in_special_case_valid),
    .io_in_special_case_bits_nan(s3_0_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf(s3_0_io_in_special_case_bits_inf),
    .io_in_special_case_bits_inv(s3_0_io_in_special_case_bits_inv),
    .io_in_special_case_bits_hasZero(s3_0_io_in_special_case_bits_hasZero),
    .io_in_raw_out_sign(s3_0_io_in_raw_out_sign),
    .io_in_raw_out_exp(s3_0_io_in_raw_out_exp),
    .io_in_raw_out_sig(s3_0_io_in_raw_out_sig),
    .io_in_early_overflow(s3_0_io_in_early_overflow),
    .io_in_rm(s3_0_io_in_rm),
    .io_result(s3_0_io_result),
    .io_fflags(s3_0_io_fflags),
    .io_to_fadd_fp_prod_sign(s3_0_io_to_fadd_fp_prod_sign),
    .io_to_fadd_fp_prod_exp(s3_0_io_to_fadd_fp_prod_exp),
    .io_to_fadd_fp_prod_sig(s3_0_io_to_fadd_fp_prod_sig),
    .io_to_fadd_inter_flags_isNaN(s3_0_io_to_fadd_inter_flags_isNaN),
    .io_to_fadd_inter_flags_isInf(s3_0_io_to_fadd_inter_flags_isInf),
    .io_to_fadd_inter_flags_isInv(s3_0_io_to_fadd_inter_flags_isInv)
  );
  FMUL_s1_1 s1_1 ( // @[FMA.scala 59:20]
    .io_a(s1_1_io_a),
    .io_b(s1_1_io_b),
    .io_rm(s1_1_io_rm),
    .io_out_special_case_valid(s1_1_io_out_special_case_valid),
    .io_out_special_case_bits_nan(s1_1_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf(s1_1_io_out_special_case_bits_inf),
    .io_out_special_case_bits_inv(s1_1_io_out_special_case_bits_inv),
    .io_out_special_case_bits_hasZero(s1_1_io_out_special_case_bits_hasZero),
    .io_out_early_overflow(s1_1_io_out_early_overflow),
    .io_out_prod_sign(s1_1_io_out_prod_sign),
    .io_out_shift_amt(s1_1_io_out_shift_amt),
    .io_out_exp_shifted(s1_1_io_out_exp_shifted),
    .io_out_may_be_subnormal(s1_1_io_out_may_be_subnormal),
    .io_out_rm(s1_1_io_out_rm)
  );
  FMUL_s2_1 s2_1 ( // @[FMA.scala 60:20]
    .io_in_special_case_valid(s2_1_io_in_special_case_valid),
    .io_in_special_case_bits_nan(s2_1_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf(s2_1_io_in_special_case_bits_inf),
    .io_in_special_case_bits_inv(s2_1_io_in_special_case_bits_inv),
    .io_in_special_case_bits_hasZero(s2_1_io_in_special_case_bits_hasZero),
    .io_in_early_overflow(s2_1_io_in_early_overflow),
    .io_in_prod_sign(s2_1_io_in_prod_sign),
    .io_in_shift_amt(s2_1_io_in_shift_amt),
    .io_in_exp_shifted(s2_1_io_in_exp_shifted),
    .io_in_may_be_subnormal(s2_1_io_in_may_be_subnormal),
    .io_in_rm(s2_1_io_in_rm),
    .io_prod(s2_1_io_prod),
    .io_out_special_case_valid(s2_1_io_out_special_case_valid),
    .io_out_special_case_bits_nan(s2_1_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf(s2_1_io_out_special_case_bits_inf),
    .io_out_special_case_bits_inv(s2_1_io_out_special_case_bits_inv),
    .io_out_special_case_bits_hasZero(s2_1_io_out_special_case_bits_hasZero),
    .io_out_raw_out_sign(s2_1_io_out_raw_out_sign),
    .io_out_raw_out_exp(s2_1_io_out_raw_out_exp),
    .io_out_raw_out_sig(s2_1_io_out_raw_out_sig),
    .io_out_early_overflow(s2_1_io_out_early_overflow),
    .io_out_rm(s2_1_io_out_rm)
  );
  FMUL_s3_1 s3_1 ( // @[FMA.scala 61:20]
    .io_in_special_case_valid(s3_1_io_in_special_case_valid),
    .io_in_special_case_bits_nan(s3_1_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf(s3_1_io_in_special_case_bits_inf),
    .io_in_special_case_bits_inv(s3_1_io_in_special_case_bits_inv),
    .io_in_special_case_bits_hasZero(s3_1_io_in_special_case_bits_hasZero),
    .io_in_raw_out_sign(s3_1_io_in_raw_out_sign),
    .io_in_raw_out_exp(s3_1_io_in_raw_out_exp),
    .io_in_raw_out_sig(s3_1_io_in_raw_out_sig),
    .io_in_early_overflow(s3_1_io_in_early_overflow),
    .io_in_rm(s3_1_io_in_rm),
    .io_result(s3_1_io_result),
    .io_fflags(s3_1_io_fflags),
    .io_to_fadd_fp_prod_sign(s3_1_io_to_fadd_fp_prod_sign),
    .io_to_fadd_fp_prod_exp(s3_1_io_to_fadd_fp_prod_exp),
    .io_to_fadd_fp_prod_sig(s3_1_io_to_fadd_fp_prod_sig),
    .io_to_fadd_inter_flags_isNaN(s3_1_io_to_fadd_inter_flags_isNaN),
    .io_to_fadd_inter_flags_isInf(s3_1_io_to_fadd_inter_flags_isInf),
    .io_to_fadd_inter_flags_isInv(s3_1_io_to_fadd_inter_flags_isInv)
  );
  assign io_in_ready = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  assign io_out_valid = REG; // @[FunctionUnit.scala 125:16]
  assign io_out_bits_data = _io_out_bits_data_T_4 | _io_out_bits_data_T_5; // @[Mux.scala 27:73]
  assign io_out_bits_uop_ctrl_rfWen = REG_2_ctrl_rfWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpWen = REG_2_ctrl_fpWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpu_typeTagIn = REG_2_ctrl_fpu_typeTagIn; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpu_ren3 = REG_2_ctrl_fpu_ren3; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_pdest = REG_2_pdest; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_flag = REG_2_robIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_value = REG_2_robIdx_value; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_lqIdx_flag = REG_2_lqIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_lqIdx_value = REG_2_lqIdx_value; // @[FunctionUnit.scala 126:19]
  assign fflags = _fflags_T | _fflags_T_1; // @[Mux.scala 27:73]
  assign toAdd_mul_out_1_fp_prod_sign = s3_1_io_to_fadd_fp_prod_sign; // @[FMA.scala 92:61]
  assign toAdd_mul_out_1_fp_prod_exp = s3_1_io_to_fadd_fp_prod_exp; // @[FMA.scala 92:61]
  assign toAdd_mul_out_1_fp_prod_sig = s3_1_io_to_fadd_fp_prod_sig; // @[FMA.scala 92:61]
  assign toAdd_mul_out_1_inter_flags_isNaN = s3_1_io_to_fadd_inter_flags_isNaN; // @[FMA.scala 92:61]
  assign toAdd_mul_out_1_inter_flags_isInf = s3_1_io_to_fadd_inter_flags_isInf; // @[FMA.scala 92:61]
  assign toAdd_mul_out_1_inter_flags_isInv = s3_1_io_to_fadd_inter_flags_isInv; // @[FMA.scala 92:61]
  assign toAdd_mul_out_0_fp_prod_sign = s3_0_io_to_fadd_fp_prod_sign; // @[FMA.scala 92:61]
  assign toAdd_mul_out_0_fp_prod_exp = s3_0_io_to_fadd_fp_prod_exp; // @[FMA.scala 92:61]
  assign toAdd_mul_out_0_fp_prod_sig = s3_0_io_to_fadd_fp_prod_sig; // @[FMA.scala 92:61]
  assign toAdd_mul_out_0_inter_flags_isNaN = s3_0_io_to_fadd_inter_flags_isNaN; // @[FMA.scala 92:61]
  assign toAdd_mul_out_0_inter_flags_isInf = s3_0_io_to_fadd_inter_flags_isInf; // @[FMA.scala 92:61]
  assign toAdd_mul_out_0_inter_flags_isInv = s3_0_io_to_fadd_inter_flags_isInv; // @[FMA.scala 92:61]
  assign toAdd_addend = toAdd_addend_r1; // @[FMA.scala 91:16]
  assign toAdd_uop_ctrl_rfWen = REG_3_ctrl_rfWen; // @[FMA.scala 93:13]
  assign toAdd_uop_ctrl_fpWen = REG_3_ctrl_fpWen; // @[FMA.scala 93:13]
  assign toAdd_uop_ctrl_fpu_typeTagIn = REG_3_ctrl_fpu_typeTagIn; // @[FMA.scala 93:13]
  assign toAdd_uop_ctrl_fpu_fmaCmd = REG_3_ctrl_fpu_fmaCmd; // @[FMA.scala 93:13]
  assign toAdd_uop_pdest = REG_3_pdest; // @[FMA.scala 93:13]
  assign toAdd_uop_robIdx_flag = REG_3_robIdx_flag; // @[FMA.scala 93:13]
  assign toAdd_uop_robIdx_value = REG_3_robIdx_value; // @[FMA.scala 93:13]
  assign toAdd_uop_lqIdx_flag = REG_3_lqIdx_flag; // @[FMA.scala 93:13]
  assign toAdd_uop_lqIdx_value = REG_3_lqIdx_value; // @[FMA.scala 93:13]
  assign multiplier_clock = clock;
  assign multiplier_io_a = {{1'd0}, _multiplier_io_a_T_2}; // @[FMA.scala 85:19]
  assign multiplier_io_b = {{1'd0}, _multiplier_io_bT_2}; // @[FMA.scala 86:19]
  assign multiplier_io_regEnables_0 = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  assign s1_0_io_a = src1[31:0]; // @[FMA.scala 65:13]
  assign s1_0_io_b = in2[31:0]; // @[FMA.scala 66:13]
  assign s1_0_io_rm = rm; // @[FMA.scala 67:14]
  assign s2_0_io_in_special_case_valid = s2_io_in_rspecial_case_valid; // @[FMA.scala 69:14]
  assign s2_0_io_in_special_case_bits_nan = s2_io_in_rspecial_case_bits_nan; // @[FMA.scala 69:14]
  assign s2_0_io_in_special_case_bits_inf = s2_io_in_rspecial_case_bits_inf; // @[FMA.scala 69:14]
  assign s2_0_io_in_special_case_bits_inv = s2_io_in_rspecial_case_bits_inv; // @[FMA.scala 69:14]
  assign s2_0_io_in_special_case_bits_hasZero = s2_io_in_rspecial_case_bits_hasZero; // @[FMA.scala 69:14]
  assign s2_0_io_in_early_overflow = s2_io_in_rearly_overflow; // @[FMA.scala 69:14]
  assign s2_0_io_in_prod_sign = s2_io_in_rprod_sign; // @[FMA.scala 69:14]
  assign s2_0_io_in_shift_amt = s2_io_in_rshift_amt; // @[FMA.scala 69:14]
  assign s2_0_io_in_exp_shifted = s2_io_in_rexp_shifted; // @[FMA.scala 69:14]
  assign s2_0_io_in_may_be_subnormal = s2_io_in_rmay_be_subnormal; // @[FMA.scala 69:14]
  assign s2_0_io_in_rm = s2_io_in_rrm; // @[FMA.scala 69:14]
  assign s2_0_io_prod = multiplier_io_result[47:0]; // @[FMA.scala 70:16]
  assign s3_0_io_in_special_case_valid = s3_io_in_rspecial_case_valid; // @[FMA.scala 71:14]
  assign s3_0_io_in_special_case_bits_nan = s3_io_in_rspecial_case_bits_nan; // @[FMA.scala 71:14]
  assign s3_0_io_in_special_case_bits_inf = s3_io_in_rspecial_case_bits_inf; // @[FMA.scala 71:14]
  assign s3_0_io_in_special_case_bits_inv = s3_io_in_rspecial_case_bits_inv; // @[FMA.scala 71:14]
  assign s3_0_io_in_special_case_bits_hasZero = s3_io_in_rspecial_case_bits_hasZero; // @[FMA.scala 71:14]
  assign s3_0_io_in_raw_out_sign = s3_io_in_rraw_out_sign; // @[FMA.scala 71:14]
  assign s3_0_io_in_raw_out_exp = s3_io_in_rraw_out_exp; // @[FMA.scala 71:14]
  assign s3_0_io_in_raw_out_sig = s3_io_in_rraw_out_sig; // @[FMA.scala 71:14]
  assign s3_0_io_in_early_overflow = s3_io_in_rearly_overflow; // @[FMA.scala 71:14]
  assign s3_0_io_in_rm = s3_io_in_rrm; // @[FMA.scala 71:14]
  assign s1_1_io_a = io_in_bits_uop_ctrl_fpu_typeTagIn ? io_in_bits_src_0 : {{32'd0}, _src1_T_4}; // @[FPU.scala 25:8]
  assign s1_1_io_b = io_in_bits_uop_ctrl_fpu_fmaCmd[1] ? _in2_T_9 : src2; // @[FMA.scala 64:18]
  assign s1_1_io_rm = rm; // @[FMA.scala 67:14]
  assign s2_1_io_in_special_case_valid = s2_io_in_r1_special_case_valid; // @[FMA.scala 69:14]
  assign s2_1_io_in_special_case_bits_nan = s2_io_in_r1_special_case_bits_nan; // @[FMA.scala 69:14]
  assign s2_1_io_in_special_case_bits_inf = s2_io_in_r1_special_case_bits_inf; // @[FMA.scala 69:14]
  assign s2_1_io_in_special_case_bits_inv = s2_io_in_r1_special_case_bits_inv; // @[FMA.scala 69:14]
  assign s2_1_io_in_special_case_bits_hasZero = s2_io_in_r1_special_case_bits_hasZero; // @[FMA.scala 69:14]
  assign s2_1_io_in_early_overflow = s2_io_in_r1_early_overflow; // @[FMA.scala 69:14]
  assign s2_1_io_in_prod_sign = s2_io_in_r1_prod_sign; // @[FMA.scala 69:14]
  assign s2_1_io_in_shift_amt = s2_io_in_r1_shift_amt; // @[FMA.scala 69:14]
  assign s2_1_io_in_exp_shifted = s2_io_in_r1_exp_shifted; // @[FMA.scala 69:14]
  assign s2_1_io_in_may_be_subnormal = s2_io_in_r1_may_be_subnormal; // @[FMA.scala 69:14]
  assign s2_1_io_in_rm = s2_io_in_r1_rm; // @[FMA.scala 69:14]
  assign s2_1_io_prod = multiplier_io_result[105:0]; // @[FMA.scala 70:16]
  assign s3_1_io_in_special_case_valid = s3_io_in_r1_special_case_valid; // @[FMA.scala 71:14]
  assign s3_1_io_in_special_case_bits_nan = s3_io_in_r1_special_case_bits_nan; // @[FMA.scala 71:14]
  assign s3_1_io_in_special_case_bits_inf = s3_io_in_r1_special_case_bits_inf; // @[FMA.scala 71:14]
  assign s3_1_io_in_special_case_bits_inv = s3_io_in_r1_special_case_bits_inv; // @[FMA.scala 71:14]
  assign s3_1_io_in_special_case_bits_hasZero = s3_io_in_r1_special_case_bits_hasZero; // @[FMA.scala 71:14]
  assign s3_1_io_in_raw_out_sign = s3_io_in_r1_raw_out_sign; // @[FMA.scala 71:14]
  assign s3_1_io_in_raw_out_exp = s3_io_in_r1_raw_out_exp; // @[FMA.scala 71:14]
  assign s3_1_io_in_raw_out_sig = s3_io_in_r1_raw_out_sig; // @[FMA.scala 71:14]
  assign s3_1_io_in_early_overflow = s3_io_in_r1_early_overflow; // @[FMA.scala 71:14]
  assign s3_1_io_in_rm = s3_io_in_r1_rm; // @[FMA.scala 71:14]
  always @(posedge clock) begin
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpu_fmaCmd <= io_in_bits_uop_ctrl_fpu_fmaCmd; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpu_ren3 <= io_in_bits_uop_ctrl_fpu_ren3; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_pdest <= io_in_bits_uop_pdest; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_value <= io_in_bits_uop_robIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_ctrl_rfWen <= REG_2_ctrl_rfWen; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_ctrl_fpWen <= REG_2_ctrl_fpWen; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_ctrl_fpu_typeTagIn <= REG_2_ctrl_fpu_typeTagIn; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_ctrl_fpu_fmaCmd <= REG_2_ctrl_fpu_fmaCmd; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_pdest <= REG_2_pdest; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_robIdx_flag <= REG_2_robIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_robIdx_value <= REG_2_robIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_lqIdx_flag <= REG_2_lqIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (io_out_ready & REG & ~_T_9) begin // @[FunctionUnit.scala 116:63]
      REG_3_lqIdx_value <= REG_2_lqIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_valid <= s1_0_io_out_special_case_valid; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_nan <= s1_0_io_out_special_case_bits_nan; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_inf <= s1_0_io_out_special_case_bits_inf; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_inv <= s1_0_io_out_special_case_bits_inv; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_hasZero <= s1_0_io_out_special_case_bits_hasZero; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rearly_overflow <= s1_0_io_out_early_overflow; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rprod_sign <= s1_0_io_out_prod_sign; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rshift_amt <= s1_0_io_out_shift_amt; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rexp_shifted <= s1_0_io_out_exp_shifted; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rmay_be_subnormal <= s1_0_io_out_may_be_subnormal; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_rrm <= s1_0_io_out_rm; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rspecial_case_valid <= s2_0_io_out_special_case_valid; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rspecial_case_bits_nan <= s2_0_io_out_special_case_bits_nan; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rspecial_case_bits_inf <= s2_0_io_out_special_case_bits_inf; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rspecial_case_bits_inv <= s2_0_io_out_special_case_bits_inv; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rspecial_case_bits_hasZero <= s2_0_io_out_special_case_bits_hasZero; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rraw_out_sign <= s2_0_io_out_raw_out_sign; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rraw_out_exp <= s2_0_io_out_raw_out_exp; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rraw_out_sig <= s2_0_io_out_raw_out_sig; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rearly_overflow <= s2_0_io_out_early_overflow; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_rrm <= s2_0_io_out_rm; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_valid <= s1_1_io_out_special_case_valid; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_nan <= s1_1_io_out_special_case_bits_nan; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_inf <= s1_1_io_out_special_case_bits_inf; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_inv <= s1_1_io_out_special_case_bits_inv; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_hasZero <= s1_1_io_out_special_case_bits_hasZero; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_early_overflow <= s1_1_io_out_early_overflow; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_prod_sign <= s1_1_io_out_prod_sign; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_shift_amt <= s1_1_io_out_shift_amt; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_exp_shifted <= s1_1_io_out_exp_shifted; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_may_be_subnormal <= s1_1_io_out_may_be_subnormal; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      s2_io_in_r1_rm <= s1_1_io_out_rm; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_special_case_valid <= s2_1_io_out_special_case_valid; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_special_case_bits_nan <= s2_1_io_out_special_case_bits_nan; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_special_case_bits_inf <= s2_1_io_out_special_case_bits_inf; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_special_case_bits_inv <= s2_1_io_out_special_case_bits_inv; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_special_case_bits_hasZero <= s2_1_io_out_special_case_bits_hasZero; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_raw_out_sign <= s2_1_io_out_raw_out_sign; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_raw_out_exp <= s2_1_io_out_raw_out_exp; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_raw_out_sig <= s2_1_io_out_raw_out_sig; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_early_overflow <= s2_1_io_out_early_overflow; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      s3_io_in_r1_rm <= s2_1_io_out_rm; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      outSel_r0 <= typeSel_0; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      outSel_r1 <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      outSel_0 <= outSel_r0; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      outSel_1 <= outSel_r1; // @[Reg.scala 17:22]
    end
    if (_s2_io_in_T_2) begin // @[Reg.scala 17:18]
      toAdd_addend_r <= io_in_bits_src_2; // @[Reg.scala 17:22]
    end
    if (_s3_io_in_T_2) begin // @[Reg.scala 17:18]
      toAdd_addend_r1 <= toAdd_addend_r; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FunctionUnit.scala 116:63]
      REG <= 1'h0; // @[FunctionUnit.scala 117:19]
    end else if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 119:41]
      REG <= io_in_valid; // @[FunctionUnit.scala 120:19]
    end else if (_T_9 | io_out_ready) begin // @[FunctionUnit.scala 103:60]
      REG <= 1'h0;
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
  REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_2_ctrl_rfWen = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_2_ctrl_fpWen = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_2_ctrl_fpu_typeTagIn = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_2_ctrl_fpu_fmaCmd = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  REG_2_ctrl_fpu_ren3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_pdest = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_robIdx_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_robIdx_value = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_lqIdx_flag = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_lqIdx_value = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  REG_3_ctrl_rfWen = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_3_ctrl_fpWen = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_3_ctrl_fpu_typeTagIn = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  REG_3_ctrl_fpu_fmaCmd = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  REG_3_pdest = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  REG_3_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  REG_3_robIdx_value = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  REG_3_lqIdx_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  REG_3_lqIdx_value = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  s2_io_in_rspecial_case_valid = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_nan = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_inf = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_inv = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_hasZero = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s2_io_in_rearly_overflow = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s2_io_in_rprod_sign = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  s2_io_in_rshift_amt = _RAND_27[8:0];
  _RAND_28 = {1{`RANDOM}};
  s2_io_in_rexp_shifted = _RAND_28[8:0];
  _RAND_29 = {1{`RANDOM}};
  s2_io_in_rmay_be_subnormal = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s2_io_in_rrm = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  s3_io_in_rspecial_case_valid = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s3_io_in_rspecial_case_bits_nan = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s3_io_in_rspecial_case_bits_inf = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  s3_io_in_rspecial_case_bits_inv = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s3_io_in_rspecial_case_bits_hasZero = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s3_io_in_rraw_out_sign = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s3_io_in_rraw_out_exp = _RAND_37[7:0];
  _RAND_38 = {3{`RANDOM}};
  s3_io_in_rraw_out_sig = _RAND_38[73:0];
  _RAND_39 = {1{`RANDOM}};
  s3_io_in_rearly_overflow = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s3_io_in_rrm = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  s2_io_in_r1_special_case_valid = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_nan = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_inf = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_inv = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_hasZero = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s2_io_in_r1_early_overflow = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s2_io_in_r1_prod_sign = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s2_io_in_r1_shift_amt = _RAND_48[11:0];
  _RAND_49 = {1{`RANDOM}};
  s2_io_in_r1_exp_shifted = _RAND_49[11:0];
  _RAND_50 = {1{`RANDOM}};
  s2_io_in_r1_may_be_subnormal = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s2_io_in_r1_rm = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  s3_io_in_r1_special_case_valid = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s3_io_in_r1_special_case_bits_nan = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s3_io_in_r1_special_case_bits_inf = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s3_io_in_r1_special_case_bits_inv = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s3_io_in_r1_special_case_bits_hasZero = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s3_io_in_r1_raw_out_sign = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s3_io_in_r1_raw_out_exp = _RAND_58[10:0];
  _RAND_59 = {6{`RANDOM}};
  s3_io_in_r1_raw_out_sig = _RAND_59[160:0];
  _RAND_60 = {1{`RANDOM}};
  s3_io_in_r1_early_overflow = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s3_io_in_r1_rm = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  outSel_r0 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  outSel_r1 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  outSel_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  outSel_1 = _RAND_65[0:0];
  _RAND_66 = {2{`RANDOM}};
  toAdd_addend_r = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  toAdd_addend_r1 = _RAND_67[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

