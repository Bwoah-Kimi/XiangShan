module FMA(
  input          clock,
  input          reset,
  output         io_in_ready,
  input          io_in_valid,
  input  [63:0]  io_in_bits_src_0,
  input  [63:0]  io_in_bits_src_1,
  input  [63:0]  io_in_bits_src_2,
  input          io_in_bits_uop_ctrl_rfWen,
  input          io_in_bits_uop_ctrl_fpWen,
  input          io_in_bits_uop_ctrl_fpu_isAddSub,
  input          io_in_bits_uop_ctrl_fpu_typeTagIn,
  input  [1:0]   io_in_bits_uop_ctrl_fpu_fmaCmd,
  input          io_in_bits_uop_ctrl_fpu_ren3,
  input  [2:0]   io_in_bits_uop_ctrl_fpu_rm,
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
  input          midResult_in_valid,
  input          midResult_in_bits_fp_prod_sign,
  input  [10:0]  midResult_in_bits_fp_prod_exp,
  input  [104:0] midResult_in_bits_fp_prod_sig,
  input          midResult_in_bits_inter_flags_isNaN,
  input          midResult_in_bits_inter_flags_isInf,
  input          midResult_in_bits_inter_flags_isInv,
  input          midResult_in_bits_inter_flags_overflow,
  output         midResult_out_bits_fp_prod_sign,
  output [10:0]  midResult_out_bits_fp_prod_exp,
  output [104:0] midResult_out_bits_fp_prod_sig,
  output         midResult_out_bits_inter_flags_isNaN,
  output         midResult_out_bits_inter_flags_isInf,
  output         midResult_out_bits_inter_flags_isInv,
  input          midResult_waitForAdd
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  mul_pipe_clock; // @[FMA.scala 182:24]
  wire  mul_pipe_reset; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_ready; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_valid; // @[FMA.scala 182:24]
  wire [63:0] mul_pipe_io_in_bits_src_0; // @[FMA.scala 182:24]
  wire [63:0] mul_pipe_io_in_bits_src_1; // @[FMA.scala 182:24]
  wire [63:0] mul_pipe_io_in_bits_src_2; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_bits_uop_ctrl_rfWen; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_bits_uop_ctrl_fpWen; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 182:24]
  wire [1:0] mul_pipe_io_in_bits_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_bits_uop_ctrl_fpu_ren3; // @[FMA.scala 182:24]
  wire [5:0] mul_pipe_io_in_bits_uop_pdest; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_bits_uop_robIdx_flag; // @[FMA.scala 182:24]
  wire [4:0] mul_pipe_io_in_bits_uop_robIdx_value; // @[FMA.scala 182:24]
  wire  mul_pipe_io_in_bits_uop_lqIdx_flag; // @[FMA.scala 182:24]
  wire [3:0] mul_pipe_io_in_bits_uop_lqIdx_value; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_ready; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_valid; // @[FMA.scala 182:24]
  wire [63:0] mul_pipe_io_out_bits_data; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_bits_uop_ctrl_rfWen; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_bits_uop_ctrl_fpWen; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_bits_uop_ctrl_fpu_ren3; // @[FMA.scala 182:24]
  wire [5:0] mul_pipe_io_out_bits_uop_pdest; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_bits_uop_robIdx_flag; // @[FMA.scala 182:24]
  wire [4:0] mul_pipe_io_out_bits_uop_robIdx_value; // @[FMA.scala 182:24]
  wire  mul_pipe_io_out_bits_uop_lqIdx_flag; // @[FMA.scala 182:24]
  wire [3:0] mul_pipe_io_out_bits_uop_lqIdx_value; // @[FMA.scala 182:24]
  wire  mul_pipe_io_redirectIn_valid; // @[FMA.scala 182:24]
  wire  mul_pipe_io_redirectIn_bits_robIdx_flag; // @[FMA.scala 182:24]
  wire [4:0] mul_pipe_io_redirectIn_bits_robIdx_value; // @[FMA.scala 182:24]
  wire  mul_pipe_io_redirectIn_bits_level; // @[FMA.scala 182:24]
  wire [2:0] mul_pipe_rm; // @[FMA.scala 182:24]
  wire [4:0] mul_pipe_fflags; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_1_fp_prod_sign; // @[FMA.scala 182:24]
  wire [10:0] mul_pipe_toAdd_mul_out_1_fp_prod_exp; // @[FMA.scala 182:24]
  wire [104:0] mul_pipe_toAdd_mul_out_1_fp_prod_sig; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_1_inter_flags_isNaN; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_1_inter_flags_isInf; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_1_inter_flags_isInv; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_0_fp_prod_sign; // @[FMA.scala 182:24]
  wire [7:0] mul_pipe_toAdd_mul_out_0_fp_prod_exp; // @[FMA.scala 182:24]
  wire [46:0] mul_pipe_toAdd_mul_out_0_fp_prod_sig; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_0_inter_flags_isNaN; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_0_inter_flags_isInf; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_mul_out_0_inter_flags_isInv; // @[FMA.scala 182:24]
  wire [63:0] mul_pipe_toAdd_addend; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_uop_ctrl_rfWen; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_uop_ctrl_fpWen; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 182:24]
  wire [1:0] mul_pipe_toAdd_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 182:24]
  wire [5:0] mul_pipe_toAdd_uop_pdest; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_uop_robIdx_flag; // @[FMA.scala 182:24]
  wire [4:0] mul_pipe_toAdd_uop_robIdx_value; // @[FMA.scala 182:24]
  wire  mul_pipe_toAdd_uop_lqIdx_flag; // @[FMA.scala 182:24]
  wire [3:0] mul_pipe_toAdd_uop_lqIdx_value; // @[FMA.scala 182:24]
  wire  add_pipe_clock; // @[FMA.scala 183:24]
  wire  add_pipe_reset; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_valid; // @[FMA.scala 183:24]
  wire [63:0] add_pipe_io_in_bits_src_0; // @[FMA.scala 183:24]
  wire [63:0] add_pipe_io_in_bits_src_1; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_cf_trigger_backendHit_0; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_cf_trigger_backendHit_1; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_cf_trigger_backendHit_2; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_cf_trigger_backendHit_3; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_cf_trigger_backendHit_4; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_cf_trigger_backendHit_5; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_ctrl_rfWen; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_ctrl_fpWen; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 183:24]
  wire [1:0] add_pipe_io_in_bits_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 183:24]
  wire [5:0] add_pipe_io_in_bits_uop_pdest; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_robIdx_flag; // @[FMA.scala 183:24]
  wire [4:0] add_pipe_io_in_bits_uop_robIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_io_in_bits_uop_lqIdx_flag; // @[FMA.scala 183:24]
  wire [3:0] add_pipe_io_in_bits_uop_lqIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_valid; // @[FMA.scala 183:24]
  wire [63:0] add_pipe_io_out_bits_data; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_cf_trigger_backendHit_0; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_cf_trigger_backendHit_1; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_cf_trigger_backendHit_2; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_cf_trigger_backendHit_3; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_cf_trigger_backendHit_4; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_cf_trigger_backendHit_5; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_ctrl_rfWen; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_ctrl_fpWen; // @[FMA.scala 183:24]
  wire [5:0] add_pipe_io_out_bits_uop_pdest; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_robIdx_flag; // @[FMA.scala 183:24]
  wire [4:0] add_pipe_io_out_bits_uop_robIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_io_out_bits_uop_lqIdx_flag; // @[FMA.scala 183:24]
  wire [3:0] add_pipe_io_out_bits_uop_lqIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_io_redirectIn_valid; // @[FMA.scala 183:24]
  wire  add_pipe_io_redirectIn_bits_robIdx_flag; // @[FMA.scala 183:24]
  wire [4:0] add_pipe_io_redirectIn_bits_robIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_io_redirectIn_bits_level; // @[FMA.scala 183:24]
  wire [2:0] add_pipe_rm; // @[FMA.scala 183:24]
  wire [4:0] add_pipe_fflags; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_1_fp_prod_sign; // @[FMA.scala 183:24]
  wire [10:0] add_pipe_mulToAdd_mul_out_1_fp_prod_exp; // @[FMA.scala 183:24]
  wire [104:0] add_pipe_mulToAdd_mul_out_1_fp_prod_sig; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_1_inter_flags_isNaN; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_1_inter_flags_isInf; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_1_inter_flags_isInv; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_1_inter_flags_overflow; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_0_fp_prod_sign; // @[FMA.scala 183:24]
  wire [7:0] add_pipe_mulToAdd_mul_out_0_fp_prod_exp; // @[FMA.scala 183:24]
  wire [46:0] add_pipe_mulToAdd_mul_out_0_fp_prod_sig; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_0_inter_flags_isNaN; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_0_inter_flags_isInf; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_0_inter_flags_isInv; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_mul_out_0_inter_flags_overflow; // @[FMA.scala 183:24]
  wire [63:0] add_pipe_mulToAdd_addend; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_cf_trigger_backendHit_0; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_cf_trigger_backendHit_1; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_cf_trigger_backendHit_2; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_cf_trigger_backendHit_3; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_cf_trigger_backendHit_4; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_cf_trigger_backendHit_5; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_ctrl_rfWen; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_ctrl_fpWen; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 183:24]
  wire [1:0] add_pipe_mulToAdd_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 183:24]
  wire [5:0] add_pipe_mulToAdd_uop_pdest; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_robIdx_flag; // @[FMA.scala 183:24]
  wire [4:0] add_pipe_mulToAdd_uop_robIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_mulToAdd_uop_lqIdx_flag; // @[FMA.scala 183:24]
  wire [3:0] add_pipe_mulToAdd_uop_lqIdx_value; // @[FMA.scala 183:24]
  wire  add_pipe_isFMA; // @[FMA.scala 183:24]
  wire  _waitAddOperand_T_1 = ~mul_pipe_io_out_valid | mul_pipe_io_out_ready; // @[FMA.scala 197:79]
  reg  waitAddOperand; // @[Reg.scala 16:16]
  wire  _isFMA_T_1 = ~waitAddOperand; // @[FMA.scala 198:82]
  wire  isFMA = mul_pipe_io_out_valid & mul_pipe_io_out_bits_uop_ctrl_fpu_ren3 & ~waitAddOperand; // @[FMA.scala 198:79]
  wire [5:0] _mulFlushed_flushItself_T_1 = {mul_pipe_io_out_bits_uop_robIdx_flag,mul_pipe_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _mulFlushed_flushItself_T_2 = {io_redirectIn_bits_robIdx_flag,io_redirectIn_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _mulFlushed_flushItself_T_3 = _mulFlushed_flushItself_T_1 == _mulFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  mulFlushed_flushItself = io_redirectIn_bits_level & _mulFlushed_flushItself_T_3; // @[Rob.scala 142:51]
  wire  mulFlushed_differentFlag = mul_pipe_io_out_bits_uop_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  mulFlushed_compare = mul_pipe_io_out_bits_uop_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _mulFlushed_T = mulFlushed_differentFlag ^ mulFlushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  mulFlushed = io_redirectIn_valid & (mulFlushed_flushItself | _mulFlushed_T); // @[Rob.scala 143:20]
  reg  isFMAReg; // @[FMA.scala 201:25]
  reg  REG; // @[FMA.scala 206:16]
  wire  _T_3 = ~isFMAReg; // @[FMA.scala 209:31]
  wire [46:0] add_pipe_mulToAdd_mul_out_0_floatMidResult_fp_prod_sig = midResult_in_bits_fp_prod_sig[46:0]; // @[FMA.scala 155:30 158:32]
  wire [7:0] add_pipe_mulToAdd_mul_out_0_floatMidResult_fp_prod_exp = midResult_in_bits_fp_prod_exp[7:0]; // @[FMA.scala 155:30 157:32]
  wire  _add_pipe_io_in_valid_T = io_in_bits_uop_ctrl_fpu_isAddSub | midResult_in_valid; // @[FMA.scala 219:59]
  reg  io_out_bits_data_REG; // @[FMA.scala 241:34]
  reg  fflags_REG; // @[FMA.scala 245:24]
  FMUL_pipe mul_pipe ( // @[FMA.scala 182:24]
    .clock(mul_pipe_clock),
    .reset(mul_pipe_reset),
    .io_in_ready(mul_pipe_io_in_ready),
    .io_in_valid(mul_pipe_io_in_valid),
    .io_in_bits_src_0(mul_pipe_io_in_bits_src_0),
    .io_in_bits_src_1(mul_pipe_io_in_bits_src_1),
    .io_in_bits_src_2(mul_pipe_io_in_bits_src_2),
    .io_in_bits_uop_ctrl_rfWen(mul_pipe_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(mul_pipe_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(mul_pipe_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_fmaCmd(mul_pipe_io_in_bits_uop_ctrl_fpu_fmaCmd),
    .io_in_bits_uop_ctrl_fpu_ren3(mul_pipe_io_in_bits_uop_ctrl_fpu_ren3),
    .io_in_bits_uop_pdest(mul_pipe_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(mul_pipe_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(mul_pipe_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(mul_pipe_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(mul_pipe_io_in_bits_uop_lqIdx_value),
    .io_out_ready(mul_pipe_io_out_ready),
    .io_out_valid(mul_pipe_io_out_valid),
    .io_out_bits_data(mul_pipe_io_out_bits_data),
    .io_out_bits_uop_ctrl_rfWen(mul_pipe_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(mul_pipe_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_fpu_typeTagIn(mul_pipe_io_out_bits_uop_ctrl_fpu_typeTagIn),
    .io_out_bits_uop_ctrl_fpu_ren3(mul_pipe_io_out_bits_uop_ctrl_fpu_ren3),
    .io_out_bits_uop_pdest(mul_pipe_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(mul_pipe_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(mul_pipe_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(mul_pipe_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(mul_pipe_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(mul_pipe_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(mul_pipe_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(mul_pipe_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(mul_pipe_io_redirectIn_bits_level),
    .rm(mul_pipe_rm),
    .fflags(mul_pipe_fflags),
    .toAdd_mul_out_1_fp_prod_sign(mul_pipe_toAdd_mul_out_1_fp_prod_sign),
    .toAdd_mul_out_1_fp_prod_exp(mul_pipe_toAdd_mul_out_1_fp_prod_exp),
    .toAdd_mul_out_1_fp_prod_sig(mul_pipe_toAdd_mul_out_1_fp_prod_sig),
    .toAdd_mul_out_1_inter_flags_isNaN(mul_pipe_toAdd_mul_out_1_inter_flags_isNaN),
    .toAdd_mul_out_1_inter_flags_isInf(mul_pipe_toAdd_mul_out_1_inter_flags_isInf),
    .toAdd_mul_out_1_inter_flags_isInv(mul_pipe_toAdd_mul_out_1_inter_flags_isInv),
    .toAdd_mul_out_0_fp_prod_sign(mul_pipe_toAdd_mul_out_0_fp_prod_sign),
    .toAdd_mul_out_0_fp_prod_exp(mul_pipe_toAdd_mul_out_0_fp_prod_exp),
    .toAdd_mul_out_0_fp_prod_sig(mul_pipe_toAdd_mul_out_0_fp_prod_sig),
    .toAdd_mul_out_0_inter_flags_isNaN(mul_pipe_toAdd_mul_out_0_inter_flags_isNaN),
    .toAdd_mul_out_0_inter_flags_isInf(mul_pipe_toAdd_mul_out_0_inter_flags_isInf),
    .toAdd_mul_out_0_inter_flags_isInv(mul_pipe_toAdd_mul_out_0_inter_flags_isInv),
    .toAdd_addend(mul_pipe_toAdd_addend),
    .toAdd_uop_ctrl_rfWen(mul_pipe_toAdd_uop_ctrl_rfWen),
    .toAdd_uop_ctrl_fpWen(mul_pipe_toAdd_uop_ctrl_fpWen),
    .toAdd_uop_ctrl_fpu_typeTagIn(mul_pipe_toAdd_uop_ctrl_fpu_typeTagIn),
    .toAdd_uop_ctrl_fpu_fmaCmd(mul_pipe_toAdd_uop_ctrl_fpu_fmaCmd),
    .toAdd_uop_pdest(mul_pipe_toAdd_uop_pdest),
    .toAdd_uop_robIdx_flag(mul_pipe_toAdd_uop_robIdx_flag),
    .toAdd_uop_robIdx_value(mul_pipe_toAdd_uop_robIdx_value),
    .toAdd_uop_lqIdx_flag(mul_pipe_toAdd_uop_lqIdx_flag),
    .toAdd_uop_lqIdx_value(mul_pipe_toAdd_uop_lqIdx_value)
  );
  FADD_pipe add_pipe ( // @[FMA.scala 183:24]
    .clock(add_pipe_clock),
    .reset(add_pipe_reset),
    .io_in_valid(add_pipe_io_in_valid),
    .io_in_bits_src_0(add_pipe_io_in_bits_src_0),
    .io_in_bits_src_1(add_pipe_io_in_bits_src_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(add_pipe_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(add_pipe_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(add_pipe_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(add_pipe_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(add_pipe_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(add_pipe_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_ctrl_rfWen(add_pipe_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(add_pipe_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(add_pipe_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_fmaCmd(add_pipe_io_in_bits_uop_ctrl_fpu_fmaCmd),
    .io_in_bits_uop_pdest(add_pipe_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(add_pipe_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(add_pipe_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(add_pipe_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(add_pipe_io_in_bits_uop_lqIdx_value),
    .io_out_valid(add_pipe_io_out_valid),
    .io_out_bits_data(add_pipe_io_out_bits_data),
    .io_out_bits_uop_cf_trigger_backendHit_0(add_pipe_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(add_pipe_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(add_pipe_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(add_pipe_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(add_pipe_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(add_pipe_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(add_pipe_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(add_pipe_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(add_pipe_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(add_pipe_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(add_pipe_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(add_pipe_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(add_pipe_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(add_pipe_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(add_pipe_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(add_pipe_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(add_pipe_io_redirectIn_bits_level),
    .rm(add_pipe_rm),
    .fflags(add_pipe_fflags),
    .mulToAdd_mul_out_1_fp_prod_sign(add_pipe_mulToAdd_mul_out_1_fp_prod_sign),
    .mulToAdd_mul_out_1_fp_prod_exp(add_pipe_mulToAdd_mul_out_1_fp_prod_exp),
    .mulToAdd_mul_out_1_fp_prod_sig(add_pipe_mulToAdd_mul_out_1_fp_prod_sig),
    .mulToAdd_mul_out_1_inter_flags_isNaN(add_pipe_mulToAdd_mul_out_1_inter_flags_isNaN),
    .mulToAdd_mul_out_1_inter_flags_isInf(add_pipe_mulToAdd_mul_out_1_inter_flags_isInf),
    .mulToAdd_mul_out_1_inter_flags_isInv(add_pipe_mulToAdd_mul_out_1_inter_flags_isInv),
    .mulToAdd_mul_out_1_inter_flags_overflow(add_pipe_mulToAdd_mul_out_1_inter_flags_overflow),
    .mulToAdd_mul_out_0_fp_prod_sign(add_pipe_mulToAdd_mul_out_0_fp_prod_sign),
    .mulToAdd_mul_out_0_fp_prod_exp(add_pipe_mulToAdd_mul_out_0_fp_prod_exp),
    .mulToAdd_mul_out_0_fp_prod_sig(add_pipe_mulToAdd_mul_out_0_fp_prod_sig),
    .mulToAdd_mul_out_0_inter_flags_isNaN(add_pipe_mulToAdd_mul_out_0_inter_flags_isNaN),
    .mulToAdd_mul_out_0_inter_flags_isInf(add_pipe_mulToAdd_mul_out_0_inter_flags_isInf),
    .mulToAdd_mul_out_0_inter_flags_isInv(add_pipe_mulToAdd_mul_out_0_inter_flags_isInv),
    .mulToAdd_mul_out_0_inter_flags_overflow(add_pipe_mulToAdd_mul_out_0_inter_flags_overflow),
    .mulToAdd_addend(add_pipe_mulToAdd_addend),
    .mulToAdd_uop_cf_trigger_backendHit_0(add_pipe_mulToAdd_uop_cf_trigger_backendHit_0),
    .mulToAdd_uop_cf_trigger_backendHit_1(add_pipe_mulToAdd_uop_cf_trigger_backendHit_1),
    .mulToAdd_uop_cf_trigger_backendHit_2(add_pipe_mulToAdd_uop_cf_trigger_backendHit_2),
    .mulToAdd_uop_cf_trigger_backendHit_3(add_pipe_mulToAdd_uop_cf_trigger_backendHit_3),
    .mulToAdd_uop_cf_trigger_backendHit_4(add_pipe_mulToAdd_uop_cf_trigger_backendHit_4),
    .mulToAdd_uop_cf_trigger_backendHit_5(add_pipe_mulToAdd_uop_cf_trigger_backendHit_5),
    .mulToAdd_uop_ctrl_rfWen(add_pipe_mulToAdd_uop_ctrl_rfWen),
    .mulToAdd_uop_ctrl_fpWen(add_pipe_mulToAdd_uop_ctrl_fpWen),
    .mulToAdd_uop_ctrl_fpu_typeTagIn(add_pipe_mulToAdd_uop_ctrl_fpu_typeTagIn),
    .mulToAdd_uop_ctrl_fpu_fmaCmd(add_pipe_mulToAdd_uop_ctrl_fpu_fmaCmd),
    .mulToAdd_uop_pdest(add_pipe_mulToAdd_uop_pdest),
    .mulToAdd_uop_robIdx_flag(add_pipe_mulToAdd_uop_robIdx_flag),
    .mulToAdd_uop_robIdx_value(add_pipe_mulToAdd_uop_robIdx_value),
    .mulToAdd_uop_lqIdx_flag(add_pipe_mulToAdd_uop_lqIdx_flag),
    .mulToAdd_uop_lqIdx_value(add_pipe_mulToAdd_uop_lqIdx_value),
    .isFMA(add_pipe_isFMA)
  );
  assign io_in_ready = _add_pipe_io_in_valid_T ? _T_3 : mul_pipe_io_in_ready; // @[FMA.scala 225:21]
  assign io_out_valid = add_pipe_io_out_valid | mul_pipe_io_out_valid & ~isFMA & _isFMA_T_1; // @[FMA.scala 249:41]
  assign io_out_bits_data = io_out_bits_data_REG ? add_pipe_io_out_bits_data : mul_pipe_io_out_bits_data; // @[FMA.scala 241:26]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = add_pipe_io_out_valid &
    add_pipe_io_out_bits_uop_cf_trigger_backendHit_0; // @[FMA.scala 237:25]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = add_pipe_io_out_valid &
    add_pipe_io_out_bits_uop_cf_trigger_backendHit_1; // @[FMA.scala 237:25]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = add_pipe_io_out_valid &
    add_pipe_io_out_bits_uop_cf_trigger_backendHit_2; // @[FMA.scala 237:25]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = add_pipe_io_out_valid &
    add_pipe_io_out_bits_uop_cf_trigger_backendHit_3; // @[FMA.scala 237:25]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = add_pipe_io_out_valid &
    add_pipe_io_out_bits_uop_cf_trigger_backendHit_4; // @[FMA.scala 237:25]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = add_pipe_io_out_valid &
    add_pipe_io_out_bits_uop_cf_trigger_backendHit_5; // @[FMA.scala 237:25]
  assign io_out_bits_uop_ctrl_rfWen = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_ctrl_rfWen :
    mul_pipe_io_out_bits_uop_ctrl_rfWen; // @[FMA.scala 237:25]
  assign io_out_bits_uop_ctrl_fpWen = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_ctrl_fpWen :
    mul_pipe_io_out_bits_uop_ctrl_fpWen; // @[FMA.scala 237:25]
  assign io_out_bits_uop_pdest = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_pdest : mul_pipe_io_out_bits_uop_pdest
    ; // @[FMA.scala 237:25]
  assign io_out_bits_uop_robIdx_flag = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_robIdx_flag :
    mul_pipe_io_out_bits_uop_robIdx_flag; // @[FMA.scala 237:25]
  assign io_out_bits_uop_robIdx_value = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_robIdx_value :
    mul_pipe_io_out_bits_uop_robIdx_value; // @[FMA.scala 237:25]
  assign io_out_bits_uop_lqIdx_flag = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_lqIdx_flag :
    mul_pipe_io_out_bits_uop_lqIdx_flag; // @[FMA.scala 237:25]
  assign io_out_bits_uop_lqIdx_value = add_pipe_io_out_valid ? add_pipe_io_out_bits_uop_lqIdx_value :
    mul_pipe_io_out_bits_uop_lqIdx_value; // @[FMA.scala 237:25]
  assign fflags = fflags_REG ? add_pipe_fflags : mul_pipe_fflags; // @[FMA.scala 245:16]
  assign midResult_out_bits_fp_prod_sign = REG ? mul_pipe_toAdd_mul_out_0_fp_prod_sign :
    mul_pipe_toAdd_mul_out_1_fp_prod_sign; // @[FMA.scala 164:18 205:22 206:73]
  assign midResult_out_bits_fp_prod_exp = REG ? {{3'd0}, mul_pipe_toAdd_mul_out_0_fp_prod_exp} :
    mul_pipe_toAdd_mul_out_1_fp_prod_exp; // @[FMA.scala 165:17 205:22 206:73]
  assign midResult_out_bits_fp_prod_sig = REG ? {{58'd0}, mul_pipe_toAdd_mul_out_0_fp_prod_sig} :
    mul_pipe_toAdd_mul_out_1_fp_prod_sig; // @[FMA.scala 166:17 205:22 206:73]
  assign midResult_out_bits_inter_flags_isNaN = REG ? mul_pipe_toAdd_mul_out_0_inter_flags_isNaN :
    mul_pipe_toAdd_mul_out_1_inter_flags_isNaN; // @[FMA.scala 167:17 205:22 206:73]
  assign midResult_out_bits_inter_flags_isInf = REG ? mul_pipe_toAdd_mul_out_0_inter_flags_isInf :
    mul_pipe_toAdd_mul_out_1_inter_flags_isInf; // @[FMA.scala 167:17 205:22 206:73]
  assign midResult_out_bits_inter_flags_isInv = REG ? mul_pipe_toAdd_mul_out_0_inter_flags_isInv :
    mul_pipe_toAdd_mul_out_1_inter_flags_isInv; // @[FMA.scala 167:17 205:22 206:73]
  assign mul_pipe_clock = clock;
  assign mul_pipe_reset = reset;
  assign mul_pipe_io_in_valid = io_in_valid & ~io_in_bits_uop_ctrl_fpu_isAddSub & ~midResult_in_valid; // @[FMA.scala 194:59]
  assign mul_pipe_io_in_bits_src_0 = io_in_bits_src_0; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_src_1 = io_in_bits_src_1; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_src_2 = io_in_bits_src_2; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_ctrl_fpu_typeTagIn = io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_ctrl_fpu_fmaCmd = io_in_bits_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_ctrl_fpu_ren3 = io_in_bits_uop_ctrl_fpu_ren3; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_pdest = io_in_bits_uop_pdest; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[FMA.scala 193:18]
  assign mul_pipe_io_in_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[FMA.scala 193:18]
  assign mul_pipe_io_out_ready = isFMA | ~add_pipe_io_out_valid | waitAddOperand; // @[FMA.scala 234:78]
  assign mul_pipe_io_redirectIn_valid = io_redirectIn_valid; // @[FMA.scala 186:26]
  assign mul_pipe_io_redirectIn_bits_robIdx_flag = io_redirectIn_bits_robIdx_flag; // @[FMA.scala 186:26]
  assign mul_pipe_io_redirectIn_bits_robIdx_value = io_redirectIn_bits_robIdx_value; // @[FMA.scala 186:26]
  assign mul_pipe_io_redirectIn_bits_level = io_redirectIn_bits_level; // @[FMA.scala 186:26]
  assign mul_pipe_rm = rm; // @[FMA.scala 187:15]
  assign add_pipe_clock = clock;
  assign add_pipe_reset = reset;
  assign add_pipe_io_in_valid = io_in_valid & (io_in_bits_uop_ctrl_fpu_isAddSub | midResult_in_valid) | isFMAReg; // @[FMA.scala 219:82]
  assign add_pipe_io_in_bits_src_0 = io_in_bits_src_0; // @[FMA.scala 220:27]
  assign add_pipe_io_in_bits_src_1 = io_in_bits_src_1; // @[FMA.scala 220:27]
  assign add_pipe_io_in_bits_uop_cf_trigger_backendHit_0 = isFMAReg & add_pipe_mulToAdd_uop_cf_trigger_backendHit_0; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_cf_trigger_backendHit_1 = isFMAReg & add_pipe_mulToAdd_uop_cf_trigger_backendHit_1; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_cf_trigger_backendHit_2 = isFMAReg & add_pipe_mulToAdd_uop_cf_trigger_backendHit_2; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_cf_trigger_backendHit_3 = isFMAReg & add_pipe_mulToAdd_uop_cf_trigger_backendHit_3; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_cf_trigger_backendHit_4 = isFMAReg & add_pipe_mulToAdd_uop_cf_trigger_backendHit_4; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_cf_trigger_backendHit_5 = isFMAReg & add_pipe_mulToAdd_uop_cf_trigger_backendHit_5; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_ctrl_rfWen = isFMAReg ? add_pipe_mulToAdd_uop_ctrl_rfWen : io_in_bits_uop_ctrl_rfWen; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_ctrl_fpWen = isFMAReg ? add_pipe_mulToAdd_uop_ctrl_fpWen : io_in_bits_uop_ctrl_fpWen; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_ctrl_fpu_typeTagIn = isFMAReg ? add_pipe_mulToAdd_uop_ctrl_fpu_typeTagIn :
    io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_ctrl_fpu_fmaCmd = isFMAReg ? add_pipe_mulToAdd_uop_ctrl_fpu_fmaCmd :
    io_in_bits_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_pdest = isFMAReg ? add_pipe_mulToAdd_uop_pdest : io_in_bits_uop_pdest; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_robIdx_flag = isFMAReg ? add_pipe_mulToAdd_uop_robIdx_flag : io_in_bits_uop_robIdx_flag
    ; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_robIdx_value = isFMAReg ? add_pipe_mulToAdd_uop_robIdx_value :
    io_in_bits_uop_robIdx_value; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_lqIdx_flag = isFMAReg ? add_pipe_mulToAdd_uop_lqIdx_flag : io_in_bits_uop_lqIdx_flag; // @[FMA.scala 221:33]
  assign add_pipe_io_in_bits_uop_lqIdx_value = isFMAReg ? add_pipe_mulToAdd_uop_lqIdx_value : io_in_bits_uop_lqIdx_value
    ; // @[FMA.scala 221:33]
  assign add_pipe_io_redirectIn_valid = io_redirectIn_valid; // @[FMA.scala 189:26]
  assign add_pipe_io_redirectIn_bits_robIdx_flag = io_redirectIn_bits_robIdx_flag; // @[FMA.scala 189:26]
  assign add_pipe_io_redirectIn_bits_robIdx_value = io_redirectIn_bits_robIdx_value; // @[FMA.scala 189:26]
  assign add_pipe_io_redirectIn_bits_level = io_redirectIn_bits_level; // @[FMA.scala 189:26]
  assign add_pipe_rm = rm; // @[FMA.scala 190:15]
  assign add_pipe_mulToAdd_mul_out_1_fp_prod_sign = midResult_in_valid & ~isFMAReg ? midResult_in_bits_fp_prod_sign :
    mul_pipe_toAdd_mul_out_1_fp_prod_sign; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_1_fp_prod_exp = midResult_in_valid & ~isFMAReg ? midResult_in_bits_fp_prod_exp :
    mul_pipe_toAdd_mul_out_1_fp_prod_exp; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_1_fp_prod_sig = midResult_in_valid & ~isFMAReg ? midResult_in_bits_fp_prod_sig :
    mul_pipe_toAdd_mul_out_1_fp_prod_sig; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_1_inter_flags_isNaN = midResult_in_valid & ~isFMAReg ?
    midResult_in_bits_inter_flags_isNaN : mul_pipe_toAdd_mul_out_1_inter_flags_isNaN; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_1_inter_flags_isInf = midResult_in_valid & ~isFMAReg ?
    midResult_in_bits_inter_flags_isInf : mul_pipe_toAdd_mul_out_1_inter_flags_isInf; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_1_inter_flags_isInv = midResult_in_valid & ~isFMAReg ?
    midResult_in_bits_inter_flags_isInv : mul_pipe_toAdd_mul_out_1_inter_flags_isInv; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_1_inter_flags_overflow = midResult_in_valid & ~isFMAReg &
    midResult_in_bits_inter_flags_overflow; // @[FMA.scala 203:21 209:42 210:33]
  assign add_pipe_mulToAdd_mul_out_0_fp_prod_sign = midResult_in_valid & ~isFMAReg ? midResult_in_bits_fp_prod_sign :
    mul_pipe_toAdd_mul_out_0_fp_prod_sign; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_mul_out_0_fp_prod_exp = midResult_in_valid & ~isFMAReg ?
    add_pipe_mulToAdd_mul_out_0_floatMidResult_fp_prod_exp : mul_pipe_toAdd_mul_out_0_fp_prod_exp; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_mul_out_0_fp_prod_sig = midResult_in_valid & ~isFMAReg ?
    add_pipe_mulToAdd_mul_out_0_floatMidResult_fp_prod_sig : mul_pipe_toAdd_mul_out_0_fp_prod_sig; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_mul_out_0_inter_flags_isNaN = midResult_in_valid & ~isFMAReg ?
    midResult_in_bits_inter_flags_isNaN : mul_pipe_toAdd_mul_out_0_inter_flags_isNaN; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_mul_out_0_inter_flags_isInf = midResult_in_valid & ~isFMAReg ?
    midResult_in_bits_inter_flags_isInf : mul_pipe_toAdd_mul_out_0_inter_flags_isInf; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_mul_out_0_inter_flags_isInv = midResult_in_valid & ~isFMAReg ?
    midResult_in_bits_inter_flags_isInv : mul_pipe_toAdd_mul_out_0_inter_flags_isInv; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_mul_out_0_inter_flags_overflow = midResult_in_valid & ~isFMAReg &
    midResult_in_bits_inter_flags_overflow; // @[FMA.scala 203:21 209:42 211:32]
  assign add_pipe_mulToAdd_addend = midResult_in_valid & ~isFMAReg ? io_in_bits_src_2 : mul_pipe_toAdd_addend; // @[FMA.scala 203:21 209:42 212:30]
  assign add_pipe_mulToAdd_uop_cf_trigger_backendHit_0 = 1'h0; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_cf_trigger_backendHit_1 = 1'h0; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_cf_trigger_backendHit_2 = 1'h0; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_cf_trigger_backendHit_3 = 1'h0; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_cf_trigger_backendHit_4 = 1'h0; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_cf_trigger_backendHit_5 = 1'h0; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_ctrl_rfWen = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_ctrl_rfWen :
    mul_pipe_toAdd_uop_ctrl_rfWen; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_ctrl_fpWen = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_ctrl_fpWen :
    mul_pipe_toAdd_uop_ctrl_fpWen; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_ctrl_fpu_typeTagIn = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_ctrl_fpu_typeTagIn
     : mul_pipe_toAdd_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_ctrl_fpu_fmaCmd = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_ctrl_fpu_fmaCmd :
    mul_pipe_toAdd_uop_ctrl_fpu_fmaCmd; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_pdest = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_pdest : mul_pipe_toAdd_uop_pdest; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_robIdx_flag = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_robIdx_flag :
    mul_pipe_toAdd_uop_robIdx_flag; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_robIdx_value = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_robIdx_value :
    mul_pipe_toAdd_uop_robIdx_value; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_lqIdx_flag = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_lqIdx_flag :
    mul_pipe_toAdd_uop_lqIdx_flag; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_mulToAdd_uop_lqIdx_value = midResult_in_valid & ~isFMAReg ? io_in_bits_uop_lqIdx_value :
    mul_pipe_toAdd_uop_lqIdx_value; // @[FMA.scala 203:21 209:42 213:27]
  assign add_pipe_isFMA = io_in_valid & midResult_in_valid | isFMAReg; // @[FMA.scala 222:55]
  always @(posedge clock) begin
    if (_waitAddOperand_T_1) begin // @[Reg.scala 17:18]
      waitAddOperand <= midResult_waitForAdd; // @[Reg.scala 17:22]
    end
    isFMAReg <= isFMA & ~mulFlushed; // @[FMA.scala 201:32]
    REG <= ~mul_pipe_io_out_bits_uop_ctrl_fpu_typeTagIn; // @[FMA.scala 206:61]
    io_out_bits_data_REG <= add_pipe_io_out_valid; // @[FMA.scala 241:34]
    fflags_REG <= add_pipe_io_out_valid; // @[FMA.scala 245:24]
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
  waitAddOperand = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  isFMAReg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_data_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  fflags_REG = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

