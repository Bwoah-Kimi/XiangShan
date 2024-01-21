module FADD_pipe(
  input          clock,
  input          reset,
  input          io_in_valid,
  input  [63:0]  io_in_bits_src_0,
  input  [63:0]  io_in_bits_src_1,
  input          io_in_bits_uop_cf_trigger_backendHit_0,
  input          io_in_bits_uop_cf_trigger_backendHit_1,
  input          io_in_bits_uop_cf_trigger_backendHit_2,
  input          io_in_bits_uop_cf_trigger_backendHit_3,
  input          io_in_bits_uop_cf_trigger_backendHit_4,
  input          io_in_bits_uop_cf_trigger_backendHit_5,
  input          io_in_bits_uop_ctrl_rfWen,
  input          io_in_bits_uop_ctrl_fpWen,
  input          io_in_bits_uop_ctrl_fpu_typeTagIn,
  input  [1:0]   io_in_bits_uop_ctrl_fpu_fmaCmd,
  input  [5:0]   io_in_bits_uop_pdest,
  input          io_in_bits_uop_robIdx_flag,
  input  [4:0]   io_in_bits_uop_robIdx_value,
  input          io_in_bits_uop_lqIdx_flag,
  input  [3:0]   io_in_bits_uop_lqIdx_value,
  output         io_out_valid,
  output [63:0]  io_out_bits_data,
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
  input          io_redirectIn_valid,
  input          io_redirectIn_bits_robIdx_flag,
  input  [4:0]   io_redirectIn_bits_robIdx_value,
  input          io_redirectIn_bits_level,
  input  [2:0]   rm,
  output [4:0]   fflags,
  input          mulToAdd_mul_out_1_fp_prod_sign,
  input  [10:0]  mulToAdd_mul_out_1_fp_prod_exp,
  input  [104:0] mulToAdd_mul_out_1_fp_prod_sig,
  input          mulToAdd_mul_out_1_inter_flags_isNaN,
  input          mulToAdd_mul_out_1_inter_flags_isInf,
  input          mulToAdd_mul_out_1_inter_flags_isInv,
  input          mulToAdd_mul_out_1_inter_flags_overflow,
  input          mulToAdd_mul_out_0_fp_prod_sign,
  input  [7:0]   mulToAdd_mul_out_0_fp_prod_exp,
  input  [46:0]  mulToAdd_mul_out_0_fp_prod_sig,
  input          mulToAdd_mul_out_0_inter_flags_isNaN,
  input          mulToAdd_mul_out_0_inter_flags_isInf,
  input          mulToAdd_mul_out_0_inter_flags_isInv,
  input          mulToAdd_mul_out_0_inter_flags_overflow,
  input  [63:0]  mulToAdd_addend,
  input          mulToAdd_uop_cf_trigger_backendHit_0,
  input          mulToAdd_uop_cf_trigger_backendHit_1,
  input          mulToAdd_uop_cf_trigger_backendHit_2,
  input          mulToAdd_uop_cf_trigger_backendHit_3,
  input          mulToAdd_uop_cf_trigger_backendHit_4,
  input          mulToAdd_uop_cf_trigger_backendHit_5,
  input          mulToAdd_uop_ctrl_rfWen,
  input          mulToAdd_uop_ctrl_fpWen,
  input          mulToAdd_uop_ctrl_fpu_typeTagIn,
  input  [1:0]   mulToAdd_uop_ctrl_fpu_fmaCmd,
  input  [5:0]   mulToAdd_uop_pdest,
  input          mulToAdd_uop_robIdx_flag,
  input  [4:0]   mulToAdd_uop_robIdx_value,
  input          mulToAdd_uop_lqIdx_flag,
  input  [3:0]   mulToAdd_uop_lqIdx_value,
  input          isFMA
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
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [127:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [127:0] _RAND_66;
  reg [127:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [127:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
`endif // RANDOMIZE_REG_INIT
  wire [55:0] s1_0_io_a; // @[FMA.scala 121:22]
  wire [55:0] s1_0_io_b; // @[FMA.scala 121:22]
  wire  s1_0_io_binter_valid; // @[FMA.scala 121:22]
  wire  s1_0_io_binter_flags_isNaN; // @[FMA.scala 121:22]
  wire  s1_0_io_binter_flags_isInf; // @[FMA.scala 121:22]
  wire  s1_0_io_binter_flags_isInv; // @[FMA.scala 121:22]
  wire  s1_0_io_binter_flags_overflow; // @[FMA.scala 121:22]
  wire [2:0] s1_0_io_rm; // @[FMA.scala 121:22]
  wire [2:0] s1_0_io_out_rm; // @[FMA.scala 121:22]
  wire  s1_0_io_out_far_path_out_sign; // @[FMA.scala 121:22]
  wire  s1_0_io_out_near_path_out_sign; // @[FMA.scala 121:22]
  wire [7:0] s1_0_io_out_near_path_out_exp; // @[FMA.scala 121:22]
  wire  s1_0_io_out_special_case_valid; // @[FMA.scala 121:22]
  wire  s1_0_io_out_special_case_bits_iv; // @[FMA.scala 121:22]
  wire  s1_0_io_out_special_case_bits_nan; // @[FMA.scala 121:22]
  wire  s1_0_io_out_special_case_bits_inf_sign; // @[FMA.scala 121:22]
  wire  s1_0_io_out_small_add; // @[FMA.scala 121:22]
  wire  s1_0_io_out_far_path_mul_of; // @[FMA.scala 121:22]
  wire [47:0] s1_0_io_out_far_sig_a; // @[FMA.scala 121:22]
  wire [51:0] s1_0_io_out_far_sig_b; // @[FMA.scala 121:22]
  wire [7:0] s1_0_io_out_far_exp_a_vec_0; // @[FMA.scala 121:22]
  wire [7:0] s1_0_io_out_far_exp_a_vec_1; // @[FMA.scala 121:22]
  wire [7:0] s1_0_io_out_far_exp_a_vec_2; // @[FMA.scala 121:22]
  wire  s1_0_io_out_near_path_sig_is_zero; // @[FMA.scala 121:22]
  wire  s1_0_io_out_near_path_lza_error; // @[FMA.scala 121:22]
  wire  s1_0_io_out_near_path_int_bit; // @[FMA.scala 121:22]
  wire [48:0] s1_0_io_out_near_path_sig_raw; // @[FMA.scala 121:22]
  wire [5:0] s1_0_io_out_near_path_lzc; // @[FMA.scala 121:22]
  wire  s1_0_io_out_sel_far_path; // @[FMA.scala 121:22]
  wire [2:0] s2_0_io_in_rm; // @[FMA.scala 122:22]
  wire  s2_0_io_in_far_path_out_sign; // @[FMA.scala 122:22]
  wire  s2_0_io_in_near_path_out_sign; // @[FMA.scala 122:22]
  wire [7:0] s2_0_io_in_near_path_out_exp; // @[FMA.scala 122:22]
  wire  s2_0_io_in_special_case_valid; // @[FMA.scala 122:22]
  wire  s2_0_io_in_special_case_bits_iv; // @[FMA.scala 122:22]
  wire  s2_0_io_in_special_case_bits_nan; // @[FMA.scala 122:22]
  wire  s2_0_io_in_special_case_bits_inf_sign; // @[FMA.scala 122:22]
  wire  s2_0_io_in_small_add; // @[FMA.scala 122:22]
  wire  s2_0_io_in_far_path_mul_of; // @[FMA.scala 122:22]
  wire [47:0] s2_0_io_in_far_sig_a; // @[FMA.scala 122:22]
  wire [51:0] s2_0_io_in_far_sig_b; // @[FMA.scala 122:22]
  wire [7:0] s2_0_io_in_far_exp_a_vec_0; // @[FMA.scala 122:22]
  wire [7:0] s2_0_io_in_far_exp_a_vec_1; // @[FMA.scala 122:22]
  wire [7:0] s2_0_io_in_far_exp_a_vec_2; // @[FMA.scala 122:22]
  wire  s2_0_io_in_near_path_sig_is_zero; // @[FMA.scala 122:22]
  wire  s2_0_io_in_near_path_lza_error; // @[FMA.scala 122:22]
  wire  s2_0_io_in_near_path_int_bit; // @[FMA.scala 122:22]
  wire [48:0] s2_0_io_in_near_path_sig_raw; // @[FMA.scala 122:22]
  wire [5:0] s2_0_io_in_near_path_lzc; // @[FMA.scala 122:22]
  wire  s2_0_io_in_sel_far_path; // @[FMA.scala 122:22]
  wire [31:0] s2_0_io_result; // @[FMA.scala 122:22]
  wire [4:0] s2_0_io_fflags; // @[FMA.scala 122:22]
  wire [116:0] s1_1_io_a; // @[FMA.scala 121:22]
  wire [116:0] s1_1_io_b; // @[FMA.scala 121:22]
  wire  s1_1_io_binter_valid; // @[FMA.scala 121:22]
  wire  s1_1_io_binter_flags_isNaN; // @[FMA.scala 121:22]
  wire  s1_1_io_binter_flags_isInf; // @[FMA.scala 121:22]
  wire  s1_1_io_binter_flags_isInv; // @[FMA.scala 121:22]
  wire  s1_1_io_binter_flags_overflow; // @[FMA.scala 121:22]
  wire [2:0] s1_1_io_rm; // @[FMA.scala 121:22]
  wire [2:0] s1_1_io_out_rm; // @[FMA.scala 121:22]
  wire  s1_1_io_out_far_path_out_sign; // @[FMA.scala 121:22]
  wire  s1_1_io_out_near_path_out_sign; // @[FMA.scala 121:22]
  wire [10:0] s1_1_io_out_near_path_out_exp; // @[FMA.scala 121:22]
  wire  s1_1_io_out_special_case_valid; // @[FMA.scala 121:22]
  wire  s1_1_io_out_special_case_bits_iv; // @[FMA.scala 121:22]
  wire  s1_1_io_out_special_case_bits_nan; // @[FMA.scala 121:22]
  wire  s1_1_io_out_special_case_bits_inf_sign; // @[FMA.scala 121:22]
  wire  s1_1_io_out_small_add; // @[FMA.scala 121:22]
  wire  s1_1_io_out_far_path_mul_of; // @[FMA.scala 121:22]
  wire [105:0] s1_1_io_out_far_sig_a; // @[FMA.scala 121:22]
  wire [109:0] s1_1_io_out_far_sig_b; // @[FMA.scala 121:22]
  wire [10:0] s1_1_io_out_far_exp_a_vec_0; // @[FMA.scala 121:22]
  wire [10:0] s1_1_io_out_far_exp_a_vec_1; // @[FMA.scala 121:22]
  wire [10:0] s1_1_io_out_far_exp_a_vec_2; // @[FMA.scala 121:22]
  wire  s1_1_io_out_near_path_sig_is_zero; // @[FMA.scala 121:22]
  wire  s1_1_io_out_near_path_lza_error; // @[FMA.scala 121:22]
  wire  s1_1_io_out_near_path_int_bit; // @[FMA.scala 121:22]
  wire [106:0] s1_1_io_out_near_path_sig_raw; // @[FMA.scala 121:22]
  wire [6:0] s1_1_io_out_near_path_lzc; // @[FMA.scala 121:22]
  wire  s1_1_io_out_sel_far_path; // @[FMA.scala 121:22]
  wire [2:0] s2_1_io_in_rm; // @[FMA.scala 122:22]
  wire  s2_1_io_in_far_path_out_sign; // @[FMA.scala 122:22]
  wire  s2_1_io_in_near_path_out_sign; // @[FMA.scala 122:22]
  wire [10:0] s2_1_io_in_near_path_out_exp; // @[FMA.scala 122:22]
  wire  s2_1_io_in_special_case_valid; // @[FMA.scala 122:22]
  wire  s2_1_io_in_special_case_bits_iv; // @[FMA.scala 122:22]
  wire  s2_1_io_in_special_case_bits_nan; // @[FMA.scala 122:22]
  wire  s2_1_io_in_special_case_bits_inf_sign; // @[FMA.scala 122:22]
  wire  s2_1_io_in_small_add; // @[FMA.scala 122:22]
  wire  s2_1_io_in_far_path_mul_of; // @[FMA.scala 122:22]
  wire [105:0] s2_1_io_in_far_sig_a; // @[FMA.scala 122:22]
  wire [109:0] s2_1_io_in_far_sig_b; // @[FMA.scala 122:22]
  wire [10:0] s2_1_io_in_far_exp_a_vec_0; // @[FMA.scala 122:22]
  wire [10:0] s2_1_io_in_far_exp_a_vec_1; // @[FMA.scala 122:22]
  wire [10:0] s2_1_io_in_far_exp_a_vec_2; // @[FMA.scala 122:22]
  wire  s2_1_io_in_near_path_sig_is_zero; // @[FMA.scala 122:22]
  wire  s2_1_io_in_near_path_lza_error; // @[FMA.scala 122:22]
  wire  s2_1_io_in_near_path_int_bit; // @[FMA.scala 122:22]
  wire [106:0] s2_1_io_in_near_path_sig_raw; // @[FMA.scala 122:22]
  wire [6:0] s2_1_io_in_near_path_lzc; // @[FMA.scala 122:22]
  wire  s2_1_io_in_sel_far_path; // @[FMA.scala 122:22]
  wire [63:0] s2_1_io_result; // @[FMA.scala 122:22]
  wire [4:0] s2_1_io_fflags; // @[FMA.scala 122:22]
  reg  REG; // @[FunctionUnit.scala 103:60]
  reg  REG_2_cf_trigger_backendHit_0; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_1; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_2; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_3; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_4; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_5; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_rfWen; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpWen; // @[FunctionUnit.scala 105:57]
  reg [5:0] REG_2_pdest; // @[FunctionUnit.scala 105:57]
  reg  REG_2_robIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [4:0] REG_2_robIdx_value; // @[FunctionUnit.scala 105:57]
  reg  REG_2_lqIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [3:0] REG_2_lqIdx_value; // @[FunctionUnit.scala 105:57]
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
  wire  _T_18 = io_in_valid & ~_T_5; // @[FunctionUnit.scala 116:43]
  wire  _T_22 = REG & ~_T_9; // @[FunctionUnit.scala 116:43]
  wire  src1_isBoxed = &io_in_bits_src_0[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src1_T_4 = src1_isBoxed ? io_in_bits_src_0[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  reg [63:0] src1; // @[Reg.scala 16:16]
  wire [63:0] _src2_T = isFMA ? mulToAdd_addend : io_in_bits_src_1; // @[FMA.scala 109:8]
  wire  src2_isBoxed = &_src2_T[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src2_T_5 = src2_isBoxed ? _src2_T[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  reg [63:0] src2; // @[Reg.scala 16:16]
  reg  uopIn_ctrl_fpu_typeTagIn; // @[Reg.scala 16:16]
  reg [1:0] uopIn_ctrl_fpu_fmaCmd; // @[Reg.scala 16:16]
  reg  fma; // @[Reg.scala 16:16]
  reg  mulProd_1_fp_prod_sign; // @[Reg.scala 16:16]
  reg [10:0] mulProd_1_fp_prod_exp; // @[Reg.scala 16:16]
  reg [104:0] mulProd_1_fp_prod_sig; // @[Reg.scala 16:16]
  reg  mulProd_1_inter_flags_isNaN; // @[Reg.scala 16:16]
  reg  mulProd_1_inter_flags_isInf; // @[Reg.scala 16:16]
  reg  mulProd_1_inter_flags_isInv; // @[Reg.scala 16:16]
  reg  mulProd_1_inter_flags_overflow; // @[Reg.scala 16:16]
  reg  mulProd_0_fp_prod_sign; // @[Reg.scala 16:16]
  reg [7:0] mulProd_0_fp_prod_exp; // @[Reg.scala 16:16]
  reg [46:0] mulProd_0_fp_prod_sig; // @[Reg.scala 16:16]
  reg  mulProd_0_inter_flags_isNaN; // @[Reg.scala 16:16]
  reg  mulProd_0_inter_flags_isInf; // @[Reg.scala 16:16]
  reg  mulProd_0_inter_flags_isInv; // @[Reg.scala 16:16]
  reg  mulProd_0_inter_flags_overflow; // @[Reg.scala 16:16]
  wire [55:0] _in1_T = {mulProd_0_fp_prod_sign,mulProd_0_fp_prod_exp,mulProd_0_fp_prod_sig}; // @[FMA.scala 124:28]
  wire [55:0] _in1_T_2 = {src1[31:0],24'h0}; // @[Cat.scala 31:58]
  wire  _in2_T_2 = ~src2[31]; // @[FPUSubModule.scala 63:7]
  wire [31:0] _in2_T_4 = {_in2_T_2,src2[30:0]}; // @[Cat.scala 31:58]
  wire [31:0] _in2_T_6 = uopIn_ctrl_fpu_fmaCmd[0] ? _in2_T_4 : src2[31:0]; // @[FMA.scala 128:12]
  reg [2:0] s1_io_rm_r; // @[Reg.scala 16:16]
  reg [2:0] s2_io_in_rrm; // @[Reg.scala 16:16]
  reg  s2_io_in_rfar_path_out_sign; // @[Reg.scala 16:16]
  reg  s2_io_in_rnear_path_out_sign; // @[Reg.scala 16:16]
  reg [7:0] s2_io_in_rnear_path_out_exp; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_valid; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_iv; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_nan; // @[Reg.scala 16:16]
  reg  s2_io_in_rspecial_case_bits_inf_sign; // @[Reg.scala 16:16]
  reg  s2_io_in_rsmall_add; // @[Reg.scala 16:16]
  reg  s2_io_in_rfar_path_mul_of; // @[Reg.scala 16:16]
  reg [47:0] s2_io_in_rfar_sig_a; // @[Reg.scala 16:16]
  reg [51:0] s2_io_in_rfar_sig_b; // @[Reg.scala 16:16]
  reg [7:0] s2_io_in_rfar_exp_a_vec_0; // @[Reg.scala 16:16]
  reg [7:0] s2_io_in_rfar_exp_a_vec_1; // @[Reg.scala 16:16]
  reg [7:0] s2_io_in_rfar_exp_a_vec_2; // @[Reg.scala 16:16]
  reg  s2_io_in_rnear_path_sig_is_zero; // @[Reg.scala 16:16]
  reg  s2_io_in_rnear_path_lza_error; // @[Reg.scala 16:16]
  reg  s2_io_in_rnear_path_int_bit; // @[Reg.scala 16:16]
  reg [48:0] s2_io_in_rnear_path_sig_raw; // @[Reg.scala 16:16]
  reg [5:0] s2_io_in_rnear_path_lzc; // @[Reg.scala 16:16]
  reg  s2_io_in_rsel_far_path; // @[Reg.scala 16:16]
  wire [116:0] _in1_T_3 = {mulProd_1_fp_prod_sign,mulProd_1_fp_prod_exp,mulProd_1_fp_prod_sig}; // @[FMA.scala 124:28]
  wire [116:0] _in1_T_5 = {src1,53'h0}; // @[Cat.scala 31:58]
  wire  _in2_T_9 = ~src2[63]; // @[FPUSubModule.scala 63:7]
  wire [63:0] _in2_T_11 = {_in2_T_9,src2[62:0]}; // @[Cat.scala 31:58]
  wire [63:0] _in2_T_13 = uopIn_ctrl_fpu_fmaCmd[0] ? _in2_T_11 : src2; // @[FMA.scala 128:12]
  reg [2:0] s1_io_rm_r1; // @[Reg.scala 16:16]
  reg [2:0] s2_io_in_r1_rm; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_far_path_out_sign; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_near_path_out_sign; // @[Reg.scala 16:16]
  reg [10:0] s2_io_in_r1_near_path_out_exp; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_valid; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_iv; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_nan; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_special_case_bits_inf_sign; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_small_add; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_far_path_mul_of; // @[Reg.scala 16:16]
  reg [105:0] s2_io_in_r1_far_sig_a; // @[Reg.scala 16:16]
  reg [109:0] s2_io_in_r1_far_sig_b; // @[Reg.scala 16:16]
  reg [10:0] s2_io_in_r1_far_exp_a_vec_0; // @[Reg.scala 16:16]
  reg [10:0] s2_io_in_r1_far_exp_a_vec_1; // @[Reg.scala 16:16]
  reg [10:0] s2_io_in_r1_far_exp_a_vec_2; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_near_path_sig_is_zero; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_near_path_lza_error; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_near_path_int_bit; // @[Reg.scala 16:16]
  reg [106:0] s2_io_in_r1_near_path_sig_raw; // @[Reg.scala 16:16]
  reg [6:0] s2_io_in_r1_near_path_lzc; // @[Reg.scala 16:16]
  reg  s2_io_in_r1_sel_far_path; // @[Reg.scala 16:16]
  wire  _outSel_T = ~uopIn_ctrl_fpu_typeTagIn; // @[FMA.scala 145:65]
  reg  outSel_0; // @[Reg.scala 16:16]
  reg  outSel_1; // @[Reg.scala 16:16]
  wire [31:0] _io_out_bits_data_T_1 = s2_0_io_result; // @[FPU.scala 41:24]
  wire [63:0] _io_out_bits_data_T_2 = {32'hffffffff,_io_out_bits_data_T_1}; // @[Cat.scala 31:58]
  wire [63:0] _io_out_bits_data_T_3 = s2_1_io_result; // @[FPU.scala 43:8]
  wire [63:0] _io_out_bits_data_T_4 = outSel_0 ? _io_out_bits_data_T_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_data_T_5 = outSel_1 ? _io_out_bits_data_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [4:0] _fflags_T = outSel_0 ? s2_0_io_fflags : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _fflags_T_1 = outSel_1 ? s2_1_io_fflags : 5'h0; // @[Mux.scala 27:73]
  FCMA_ADD_s1 s1_0 ( // @[FMA.scala 121:22]
    .io_a(s1_0_io_a),
    .io_b(s1_0_io_b),
    .io_binter_valid(s1_0_io_binter_valid),
    .io_binter_flags_isNaN(s1_0_io_binter_flags_isNaN),
    .io_binter_flags_isInf(s1_0_io_binter_flags_isInf),
    .io_binter_flags_isInv(s1_0_io_binter_flags_isInv),
    .io_binter_flags_overflow(s1_0_io_binter_flags_overflow),
    .io_rm(s1_0_io_rm),
    .io_out_rm(s1_0_io_out_rm),
    .io_out_far_path_out_sign(s1_0_io_out_far_path_out_sign),
    .io_out_near_path_out_sign(s1_0_io_out_near_path_out_sign),
    .io_out_near_path_out_exp(s1_0_io_out_near_path_out_exp),
    .io_out_special_case_valid(s1_0_io_out_special_case_valid),
    .io_out_special_case_bits_iv(s1_0_io_out_special_case_bits_iv),
    .io_out_special_case_bits_nan(s1_0_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf_sign(s1_0_io_out_special_case_bits_inf_sign),
    .io_out_small_add(s1_0_io_out_small_add),
    .io_out_far_path_mul_of(s1_0_io_out_far_path_mul_of),
    .io_out_far_sig_a(s1_0_io_out_far_sig_a),
    .io_out_far_sig_b(s1_0_io_out_far_sig_b),
    .io_out_far_exp_a_vec_0(s1_0_io_out_far_exp_a_vec_0),
    .io_out_far_exp_a_vec_1(s1_0_io_out_far_exp_a_vec_1),
    .io_out_far_exp_a_vec_2(s1_0_io_out_far_exp_a_vec_2),
    .io_out_near_path_sig_is_zero(s1_0_io_out_near_path_sig_is_zero),
    .io_out_near_path_lza_error(s1_0_io_out_near_path_lza_error),
    .io_out_near_path_int_bit(s1_0_io_out_near_path_int_bit),
    .io_out_near_path_sig_raw(s1_0_io_out_near_path_sig_raw),
    .io_out_near_path_lzc(s1_0_io_out_near_path_lzc),
    .io_out_sel_far_path(s1_0_io_out_sel_far_path)
  );
  FCMA_ADD_s2 s2_0 ( // @[FMA.scala 122:22]
    .io_in_rm(s2_0_io_in_rm),
    .io_in_far_path_out_sign(s2_0_io_in_far_path_out_sign),
    .io_in_near_path_out_sign(s2_0_io_in_near_path_out_sign),
    .io_in_near_path_out_exp(s2_0_io_in_near_path_out_exp),
    .io_in_special_case_valid(s2_0_io_in_special_case_valid),
    .io_in_special_case_bits_iv(s2_0_io_in_special_case_bits_iv),
    .io_in_special_case_bits_nan(s2_0_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf_sign(s2_0_io_in_special_case_bits_inf_sign),
    .io_in_small_add(s2_0_io_in_small_add),
    .io_in_far_path_mul_of(s2_0_io_in_far_path_mul_of),
    .io_in_far_sig_a(s2_0_io_in_far_sig_a),
    .io_in_far_sig_b(s2_0_io_in_far_sig_b),
    .io_in_far_exp_a_vec_0(s2_0_io_in_far_exp_a_vec_0),
    .io_in_far_exp_a_vec_1(s2_0_io_in_far_exp_a_vec_1),
    .io_in_far_exp_a_vec_2(s2_0_io_in_far_exp_a_vec_2),
    .io_in_near_path_sig_is_zero(s2_0_io_in_near_path_sig_is_zero),
    .io_in_near_path_lza_error(s2_0_io_in_near_path_lza_error),
    .io_in_near_path_int_bit(s2_0_io_in_near_path_int_bit),
    .io_in_near_path_sig_raw(s2_0_io_in_near_path_sig_raw),
    .io_in_near_path_lzc(s2_0_io_in_near_path_lzc),
    .io_in_sel_far_path(s2_0_io_in_sel_far_path),
    .io_result(s2_0_io_result),
    .io_fflags(s2_0_io_fflags)
  );
  FCMA_ADD_s1_1 s1_1 ( // @[FMA.scala 121:22]
    .io_a(s1_1_io_a),
    .io_b(s1_1_io_b),
    .io_binter_valid(s1_1_io_binter_valid),
    .io_binter_flags_isNaN(s1_1_io_binter_flags_isNaN),
    .io_binter_flags_isInf(s1_1_io_binter_flags_isInf),
    .io_binter_flags_isInv(s1_1_io_binter_flags_isInv),
    .io_binter_flags_overflow(s1_1_io_binter_flags_overflow),
    .io_rm(s1_1_io_rm),
    .io_out_rm(s1_1_io_out_rm),
    .io_out_far_path_out_sign(s1_1_io_out_far_path_out_sign),
    .io_out_near_path_out_sign(s1_1_io_out_near_path_out_sign),
    .io_out_near_path_out_exp(s1_1_io_out_near_path_out_exp),
    .io_out_special_case_valid(s1_1_io_out_special_case_valid),
    .io_out_special_case_bits_iv(s1_1_io_out_special_case_bits_iv),
    .io_out_special_case_bits_nan(s1_1_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf_sign(s1_1_io_out_special_case_bits_inf_sign),
    .io_out_small_add(s1_1_io_out_small_add),
    .io_out_far_path_mul_of(s1_1_io_out_far_path_mul_of),
    .io_out_far_sig_a(s1_1_io_out_far_sig_a),
    .io_out_far_sig_b(s1_1_io_out_far_sig_b),
    .io_out_far_exp_a_vec_0(s1_1_io_out_far_exp_a_vec_0),
    .io_out_far_exp_a_vec_1(s1_1_io_out_far_exp_a_vec_1),
    .io_out_far_exp_a_vec_2(s1_1_io_out_far_exp_a_vec_2),
    .io_out_near_path_sig_is_zero(s1_1_io_out_near_path_sig_is_zero),
    .io_out_near_path_lza_error(s1_1_io_out_near_path_lza_error),
    .io_out_near_path_int_bit(s1_1_io_out_near_path_int_bit),
    .io_out_near_path_sig_raw(s1_1_io_out_near_path_sig_raw),
    .io_out_near_path_lzc(s1_1_io_out_near_path_lzc),
    .io_out_sel_far_path(s1_1_io_out_sel_far_path)
  );
  FCMA_ADD_s2_1 s2_1 ( // @[FMA.scala 122:22]
    .io_in_rm(s2_1_io_in_rm),
    .io_in_far_path_out_sign(s2_1_io_in_far_path_out_sign),
    .io_in_near_path_out_sign(s2_1_io_in_near_path_out_sign),
    .io_in_near_path_out_exp(s2_1_io_in_near_path_out_exp),
    .io_in_special_case_valid(s2_1_io_in_special_case_valid),
    .io_in_special_case_bits_iv(s2_1_io_in_special_case_bits_iv),
    .io_in_special_case_bits_nan(s2_1_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf_sign(s2_1_io_in_special_case_bits_inf_sign),
    .io_in_small_add(s2_1_io_in_small_add),
    .io_in_far_path_mul_of(s2_1_io_in_far_path_mul_of),
    .io_in_far_sig_a(s2_1_io_in_far_sig_a),
    .io_in_far_sig_b(s2_1_io_in_far_sig_b),
    .io_in_far_exp_a_vec_0(s2_1_io_in_far_exp_a_vec_0),
    .io_in_far_exp_a_vec_1(s2_1_io_in_far_exp_a_vec_1),
    .io_in_far_exp_a_vec_2(s2_1_io_in_far_exp_a_vec_2),
    .io_in_near_path_sig_is_zero(s2_1_io_in_near_path_sig_is_zero),
    .io_in_near_path_lza_error(s2_1_io_in_near_path_lza_error),
    .io_in_near_path_int_bit(s2_1_io_in_near_path_int_bit),
    .io_in_near_path_sig_raw(s2_1_io_in_near_path_sig_raw),
    .io_in_near_path_lzc(s2_1_io_in_near_path_lzc),
    .io_in_sel_far_path(s2_1_io_in_sel_far_path),
    .io_result(s2_1_io_result),
    .io_fflags(s2_1_io_fflags)
  );
  assign io_out_valid = REG; // @[FunctionUnit.scala 125:16]
  assign io_out_bits_data = _io_out_bits_data_T_4 | _io_out_bits_data_T_5; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = REG_2_cf_trigger_backendHit_0; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = REG_2_cf_trigger_backendHit_1; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = REG_2_cf_trigger_backendHit_2; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = REG_2_cf_trigger_backendHit_3; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = REG_2_cf_trigger_backendHit_4; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = REG_2_cf_trigger_backendHit_5; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_rfWen = REG_2_ctrl_rfWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpWen = REG_2_ctrl_fpWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_pdest = REG_2_pdest; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_flag = REG_2_robIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_value = REG_2_robIdx_value; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_lqIdx_flag = REG_2_lqIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_lqIdx_value = REG_2_lqIdx_value; // @[FunctionUnit.scala 126:19]
  assign fflags = _fflags_T | _fflags_T_1; // @[Mux.scala 27:73]
  assign s1_0_io_a = fma ? _in1_T : _in1_T_2; // @[FMA.scala 123:20]
  assign s1_0_io_b = {_in2_T_6,24'h0}; // @[Cat.scala 31:58]
  assign s1_0_io_binter_valid = fma; // @[FMA.scala 133:27]
  assign s1_0_io_binter_flags_isNaN = fma & mulProd_0_inter_flags_isNaN; // @[FMA.scala 134:33]
  assign s1_0_io_binter_flags_isInf = fma & mulProd_0_inter_flags_isInf; // @[FMA.scala 134:33]
  assign s1_0_io_binter_flags_isInv = fma & mulProd_0_inter_flags_isInv; // @[FMA.scala 134:33]
  assign s1_0_io_binter_flags_overflow = fma & mulProd_0_inter_flags_overflow; // @[FMA.scala 134:33]
  assign s1_0_io_rm = s1_io_rm_r; // @[FMA.scala 138:16]
  assign s2_0_io_in_rm = s2_io_in_rrm; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_path_out_sign = s2_io_in_rfar_path_out_sign; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_out_sign = s2_io_in_rnear_path_out_sign; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_out_exp = s2_io_in_rnear_path_out_exp; // @[FMA.scala 139:16]
  assign s2_0_io_in_special_case_valid = s2_io_in_rspecial_case_valid; // @[FMA.scala 139:16]
  assign s2_0_io_in_special_case_bits_iv = s2_io_in_rspecial_case_bits_iv; // @[FMA.scala 139:16]
  assign s2_0_io_in_special_case_bits_nan = s2_io_in_rspecial_case_bits_nan; // @[FMA.scala 139:16]
  assign s2_0_io_in_special_case_bits_inf_sign = s2_io_in_rspecial_case_bits_inf_sign; // @[FMA.scala 139:16]
  assign s2_0_io_in_small_add = s2_io_in_rsmall_add; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_path_mul_of = s2_io_in_rfar_path_mul_of; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_sig_a = s2_io_in_rfar_sig_a; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_sig_b = s2_io_in_rfar_sig_b; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_exp_a_vec_0 = s2_io_in_rfar_exp_a_vec_0; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_exp_a_vec_1 = s2_io_in_rfar_exp_a_vec_1; // @[FMA.scala 139:16]
  assign s2_0_io_in_far_exp_a_vec_2 = s2_io_in_rfar_exp_a_vec_2; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_sig_is_zero = s2_io_in_rnear_path_sig_is_zero; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_lza_error = s2_io_in_rnear_path_lza_error; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_int_bit = s2_io_in_rnear_path_int_bit; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_sig_raw = s2_io_in_rnear_path_sig_raw; // @[FMA.scala 139:16]
  assign s2_0_io_in_near_path_lzc = s2_io_in_rnear_path_lzc; // @[FMA.scala 139:16]
  assign s2_0_io_in_sel_far_path = s2_io_in_rsel_far_path; // @[FMA.scala 139:16]
  assign s1_1_io_a = fma ? _in1_T_3 : _in1_T_5; // @[FMA.scala 123:20]
  assign s1_1_io_b = {_in2_T_13,53'h0}; // @[Cat.scala 31:58]
  assign s1_1_io_binter_valid = fma; // @[FMA.scala 133:27]
  assign s1_1_io_binter_flags_isNaN = fma & mulProd_1_inter_flags_isNaN; // @[FMA.scala 134:33]
  assign s1_1_io_binter_flags_isInf = fma & mulProd_1_inter_flags_isInf; // @[FMA.scala 134:33]
  assign s1_1_io_binter_flags_isInv = fma & mulProd_1_inter_flags_isInv; // @[FMA.scala 134:33]
  assign s1_1_io_binter_flags_overflow = fma & mulProd_1_inter_flags_overflow; // @[FMA.scala 134:33]
  assign s1_1_io_rm = s1_io_rm_r1; // @[FMA.scala 138:16]
  assign s2_1_io_in_rm = s2_io_in_r1_rm; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_path_out_sign = s2_io_in_r1_far_path_out_sign; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_out_sign = s2_io_in_r1_near_path_out_sign; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_out_exp = s2_io_in_r1_near_path_out_exp; // @[FMA.scala 139:16]
  assign s2_1_io_in_special_case_valid = s2_io_in_r1_special_case_valid; // @[FMA.scala 139:16]
  assign s2_1_io_in_special_case_bits_iv = s2_io_in_r1_special_case_bits_iv; // @[FMA.scala 139:16]
  assign s2_1_io_in_special_case_bits_nan = s2_io_in_r1_special_case_bits_nan; // @[FMA.scala 139:16]
  assign s2_1_io_in_special_case_bits_inf_sign = s2_io_in_r1_special_case_bits_inf_sign; // @[FMA.scala 139:16]
  assign s2_1_io_in_small_add = s2_io_in_r1_small_add; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_path_mul_of = s2_io_in_r1_far_path_mul_of; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_sig_a = s2_io_in_r1_far_sig_a; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_sig_b = s2_io_in_r1_far_sig_b; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_exp_a_vec_0 = s2_io_in_r1_far_exp_a_vec_0; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_exp_a_vec_1 = s2_io_in_r1_far_exp_a_vec_1; // @[FMA.scala 139:16]
  assign s2_1_io_in_far_exp_a_vec_2 = s2_io_in_r1_far_exp_a_vec_2; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_sig_is_zero = s2_io_in_r1_near_path_sig_is_zero; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_lza_error = s2_io_in_r1_near_path_lza_error; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_int_bit = s2_io_in_r1_near_path_int_bit; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_sig_raw = s2_io_in_r1_near_path_sig_raw; // @[FMA.scala 139:16]
  assign s2_1_io_in_near_path_lzc = s2_io_in_r1_near_path_lzc; // @[FMA.scala 139:16]
  assign s2_1_io_in_sel_far_path = s2_io_in_r1_sel_far_path; // @[FMA.scala 139:16]
  always @(posedge clock) begin
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_pdest <= io_in_bits_uop_pdest; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_value <= io_in_bits_uop_robIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      if (io_in_bits_uop_ctrl_fpu_typeTagIn) begin // @[FPU.scala 25:8]
        src1 <= io_in_bits_src_0;
      end else begin
        src1 <= {{32'd0}, _src1_T_4};
      end
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      if (io_in_bits_uop_ctrl_fpu_typeTagIn) begin // @[FPU.scala 25:8]
        if (isFMA) begin // @[FMA.scala 109:8]
          src2 <= mulToAdd_addend;
        end else begin
          src2 <= io_in_bits_src_1;
        end
      end else begin
        src2 <= {{32'd0}, _src2_T_5};
      end
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      if (isFMA) begin // @[FMA.scala 112:24]
        uopIn_ctrl_fpu_typeTagIn <= mulToAdd_uop_ctrl_fpu_typeTagIn;
      end else begin
        uopIn_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn;
      end
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      if (isFMA) begin // @[FMA.scala 112:24]
        uopIn_ctrl_fpu_fmaCmd <= mulToAdd_uop_ctrl_fpu_fmaCmd;
      end else begin
        uopIn_ctrl_fpu_fmaCmd <= io_in_bits_uop_ctrl_fpu_fmaCmd;
      end
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      fma <= isFMA; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_fp_prod_sign <= mulToAdd_mul_out_1_fp_prod_sign; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_fp_prod_exp <= mulToAdd_mul_out_1_fp_prod_exp; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_fp_prod_sig <= mulToAdd_mul_out_1_fp_prod_sig; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_inter_flags_isNaN <= mulToAdd_mul_out_1_inter_flags_isNaN; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_inter_flags_isInf <= mulToAdd_mul_out_1_inter_flags_isInf; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_inter_flags_isInv <= mulToAdd_mul_out_1_inter_flags_isInv; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_1_inter_flags_overflow <= mulToAdd_mul_out_1_inter_flags_overflow; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_fp_prod_sign <= mulToAdd_mul_out_0_fp_prod_sign; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_fp_prod_exp <= mulToAdd_mul_out_0_fp_prod_exp; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_fp_prod_sig <= mulToAdd_mul_out_0_fp_prod_sig; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_inter_flags_isNaN <= mulToAdd_mul_out_0_inter_flags_isNaN; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_inter_flags_isInf <= mulToAdd_mul_out_0_inter_flags_isInf; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_inter_flags_isInv <= mulToAdd_mul_out_0_inter_flags_isInv; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      mulProd_0_inter_flags_overflow <= mulToAdd_mul_out_0_inter_flags_overflow; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      s1_io_rm_r <= rm; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rrm <= s1_0_io_out_rm; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_path_out_sign <= s1_0_io_out_far_path_out_sign; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_out_sign <= s1_0_io_out_near_path_out_sign; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_out_exp <= s1_0_io_out_near_path_out_exp; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_valid <= s1_0_io_out_special_case_valid; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_iv <= s1_0_io_out_special_case_bits_iv; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_nan <= s1_0_io_out_special_case_bits_nan; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rspecial_case_bits_inf_sign <= s1_0_io_out_special_case_bits_inf_sign; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rsmall_add <= s1_0_io_out_small_add; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_path_mul_of <= s1_0_io_out_far_path_mul_of; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_sig_a <= s1_0_io_out_far_sig_a; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_sig_b <= s1_0_io_out_far_sig_b; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_exp_a_vec_0 <= s1_0_io_out_far_exp_a_vec_0; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_exp_a_vec_1 <= s1_0_io_out_far_exp_a_vec_1; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rfar_exp_a_vec_2 <= s1_0_io_out_far_exp_a_vec_2; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_sig_is_zero <= s1_0_io_out_near_path_sig_is_zero; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_lza_error <= s1_0_io_out_near_path_lza_error; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_int_bit <= s1_0_io_out_near_path_int_bit; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_sig_raw <= s1_0_io_out_near_path_sig_raw; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rnear_path_lzc <= s1_0_io_out_near_path_lzc; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_rsel_far_path <= s1_0_io_out_sel_far_path; // @[Reg.scala 17:22]
    end
    if (_T_18) begin // @[Reg.scala 17:18]
      s1_io_rm_r1 <= rm; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_rm <= s1_1_io_out_rm; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_path_out_sign <= s1_1_io_out_far_path_out_sign; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_out_sign <= s1_1_io_out_near_path_out_sign; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_out_exp <= s1_1_io_out_near_path_out_exp; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_valid <= s1_1_io_out_special_case_valid; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_iv <= s1_1_io_out_special_case_bits_iv; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_nan <= s1_1_io_out_special_case_bits_nan; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_special_case_bits_inf_sign <= s1_1_io_out_special_case_bits_inf_sign; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_small_add <= s1_1_io_out_small_add; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_path_mul_of <= s1_1_io_out_far_path_mul_of; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_sig_a <= s1_1_io_out_far_sig_a; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_sig_b <= s1_1_io_out_far_sig_b; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_exp_a_vec_0 <= s1_1_io_out_far_exp_a_vec_0; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_exp_a_vec_1 <= s1_1_io_out_far_exp_a_vec_1; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_far_exp_a_vec_2 <= s1_1_io_out_far_exp_a_vec_2; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_sig_is_zero <= s1_1_io_out_near_path_sig_is_zero; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_lza_error <= s1_1_io_out_near_path_lza_error; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_int_bit <= s1_1_io_out_near_path_int_bit; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_sig_raw <= s1_1_io_out_near_path_sig_raw; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_near_path_lzc <= s1_1_io_out_near_path_lzc; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      s2_io_in_r1_sel_far_path <= s1_1_io_out_sel_far_path; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      outSel_0 <= _outSel_T; // @[Reg.scala 17:22]
    end
    if (_T_22) begin // @[Reg.scala 17:18]
      outSel_1 <= uopIn_ctrl_fpu_typeTagIn; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FunctionUnit.scala 116:63]
      REG <= 1'h0; // @[FunctionUnit.scala 117:19]
    end else begin
      REG <= io_in_valid & ~_T_5 & io_in_valid;
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
  REG_2_cf_trigger_backendHit_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_ctrl_rfWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_ctrl_fpWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_pdest = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_robIdx_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  REG_2_robIdx_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  REG_2_lqIdx_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_2_lqIdx_value = _RAND_13[3:0];
  _RAND_14 = {2{`RANDOM}};
  src1 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  src2 = _RAND_15[63:0];
  _RAND_16 = {1{`RANDOM}};
  uopIn_ctrl_fpu_typeTagIn = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  uopIn_ctrl_fpu_fmaCmd = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  fma = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  mulProd_1_fp_prod_sign = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mulProd_1_fp_prod_exp = _RAND_20[10:0];
  _RAND_21 = {4{`RANDOM}};
  mulProd_1_fp_prod_sig = _RAND_21[104:0];
  _RAND_22 = {1{`RANDOM}};
  mulProd_1_inter_flags_isNaN = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mulProd_1_inter_flags_isInf = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mulProd_1_inter_flags_isInv = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mulProd_1_inter_flags_overflow = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  mulProd_0_fp_prod_sign = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mulProd_0_fp_prod_exp = _RAND_27[7:0];
  _RAND_28 = {2{`RANDOM}};
  mulProd_0_fp_prod_sig = _RAND_28[46:0];
  _RAND_29 = {1{`RANDOM}};
  mulProd_0_inter_flags_isNaN = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  mulProd_0_inter_flags_isInf = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  mulProd_0_inter_flags_isInv = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  mulProd_0_inter_flags_overflow = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s1_io_rm_r = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  s2_io_in_rrm = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  s2_io_in_rfar_path_out_sign = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s2_io_in_rnear_path_out_sign = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s2_io_in_rnear_path_out_exp = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  s2_io_in_rspecial_case_valid = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_iv = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_nan = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s2_io_in_rspecial_case_bits_inf_sign = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s2_io_in_rsmall_add = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s2_io_in_rfar_path_mul_of = _RAND_43[0:0];
  _RAND_44 = {2{`RANDOM}};
  s2_io_in_rfar_sig_a = _RAND_44[47:0];
  _RAND_45 = {2{`RANDOM}};
  s2_io_in_rfar_sig_b = _RAND_45[51:0];
  _RAND_46 = {1{`RANDOM}};
  s2_io_in_rfar_exp_a_vec_0 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  s2_io_in_rfar_exp_a_vec_1 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  s2_io_in_rfar_exp_a_vec_2 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  s2_io_in_rnear_path_sig_is_zero = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s2_io_in_rnear_path_lza_error = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s2_io_in_rnear_path_int_bit = _RAND_51[0:0];
  _RAND_52 = {2{`RANDOM}};
  s2_io_in_rnear_path_sig_raw = _RAND_52[48:0];
  _RAND_53 = {1{`RANDOM}};
  s2_io_in_rnear_path_lzc = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  s2_io_in_rsel_far_path = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s1_io_rm_r1 = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  s2_io_in_r1_rm = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  s2_io_in_r1_far_path_out_sign = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s2_io_in_r1_near_path_out_sign = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s2_io_in_r1_near_path_out_exp = _RAND_59[10:0];
  _RAND_60 = {1{`RANDOM}};
  s2_io_in_r1_special_case_valid = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_iv = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_nan = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s2_io_in_r1_special_case_bits_inf_sign = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s2_io_in_r1_small_add = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s2_io_in_r1_far_path_mul_of = _RAND_65[0:0];
  _RAND_66 = {4{`RANDOM}};
  s2_io_in_r1_far_sig_a = _RAND_66[105:0];
  _RAND_67 = {4{`RANDOM}};
  s2_io_in_r1_far_sig_b = _RAND_67[109:0];
  _RAND_68 = {1{`RANDOM}};
  s2_io_in_r1_far_exp_a_vec_0 = _RAND_68[10:0];
  _RAND_69 = {1{`RANDOM}};
  s2_io_in_r1_far_exp_a_vec_1 = _RAND_69[10:0];
  _RAND_70 = {1{`RANDOM}};
  s2_io_in_r1_far_exp_a_vec_2 = _RAND_70[10:0];
  _RAND_71 = {1{`RANDOM}};
  s2_io_in_r1_near_path_sig_is_zero = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  s2_io_in_r1_near_path_lza_error = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s2_io_in_r1_near_path_int_bit = _RAND_73[0:0];
  _RAND_74 = {4{`RANDOM}};
  s2_io_in_r1_near_path_sig_raw = _RAND_74[106:0];
  _RAND_75 = {1{`RANDOM}};
  s2_io_in_r1_near_path_lzc = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  s2_io_in_r1_sel_far_path = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  outSel_0 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  outSel_1 = _RAND_78[0:0];
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

