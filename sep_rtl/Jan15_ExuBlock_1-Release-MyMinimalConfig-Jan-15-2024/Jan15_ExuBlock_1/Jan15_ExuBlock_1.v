module Jan15_ExuBlock_1(
  input         clock,
  input         reset,
  input  [7:0]  io_hartId,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_allocPregs_0_isFp,
  input  [5:0]  io_allocPregs_0_preg,
  input         io_allocPregs_1_isFp,
  input  [5:0]  io_allocPregs_1_preg,
  input         io_in_0_valid,
  input         io_in_0_bits_cf_pd_isRVC,
  input  [1:0]  io_in_0_bits_cf_pd_brType,
  input         io_in_0_bits_cf_pd_isCall,
  input         io_in_0_bits_cf_pd_isRet,
  input         io_in_0_bits_cf_pred_taken,
  input         io_in_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_0_bits_cf_ftqOffset,
  input  [1:0]  io_in_0_bits_ctrl_srcType_0,
  input  [1:0]  io_in_0_bits_ctrl_srcType_1,
  input  [1:0]  io_in_0_bits_ctrl_srcType_2,
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input  [19:0] io_in_0_bits_ctrl_imm,
  input         io_in_0_bits_ctrl_fpu_isAddSub,
  input         io_in_0_bits_ctrl_fpu_typeTagIn,
  input         io_in_0_bits_ctrl_fpu_typeTagOut,
  input         io_in_0_bits_ctrl_fpu_fromInt,
  input         io_in_0_bits_ctrl_fpu_wflags,
  input         io_in_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_0_bits_ctrl_fpu_fmaCmd,
  input         io_in_0_bits_ctrl_fpu_div,
  input         io_in_0_bits_ctrl_fpu_sqrt,
  input         io_in_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_0_bits_ctrl_fpu_fmt,
  input         io_in_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_0_bits_ctrl_fpu_rm,
  input  [5:0]  io_in_0_bits_psrc_0,
  input  [5:0]  io_in_0_bits_psrc_1,
  input  [5:0]  io_in_0_bits_psrc_2,
  input  [5:0]  io_in_0_bits_pdest,
  input         io_in_0_bits_robIdx_flag,
  input  [4:0]  io_in_0_bits_robIdx_value,
  input         io_in_0_bits_lqIdx_flag,
  input  [3:0]  io_in_0_bits_lqIdx_value,
  output        io_fastUopOut_0_valid,
  output        io_fastUopOut_0_bits_ctrl_fpWen,
  output [5:0]  io_fastUopOut_0_bits_pdest,
  input         io_rfWriteback_6_valid,
  input         io_rfWriteback_6_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_6_bits_uop_pdest,
  input  [63:0] io_rfWriteback_6_bits_data,
  input         io_rfWriteback_7_valid,
  input         io_rfWriteback_7_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_7_bits_uop_pdest,
  input  [63:0] io_rfWriteback_7_bits_data,
  input         io_rfWriteback_8_valid,
  input         io_rfWriteback_8_bits_uop_ctrl_fpWen,
  input  [5:0]  io_rfWriteback_8_bits_uop_pdest,
  input  [63:0] io_rfWriteback_8_bits_data,
  input         io_fastUopIn_5_valid,
  input         io_fastUopIn_5_bits_ctrl_fpWen,
  input  [5:0]  io_fastUopIn_5_bits_pdest,
  input         io_fuWriteback_0_ready,
  output        io_fuWriteback_0_valid,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_0_bits_uop_ctrl_rfWen,
  output        io_fuWriteback_0_bits_uop_ctrl_fpWen,
  output [5:0]  io_fuWriteback_0_bits_uop_pdest,
  output        io_fuWriteback_0_bits_uop_robIdx_flag,
  output [4:0]  io_fuWriteback_0_bits_uop_robIdx_value,
  output        io_fuWriteback_0_bits_uop_lqIdx_flag,
  output [3:0]  io_fuWriteback_0_bits_uop_lqIdx_value,
  output [63:0] io_fuWriteback_0_bits_data,
  output [4:0]  io_fuWriteback_0_bits_fflags,
  input         io_fuWriteback_1_ready,
  output        io_fuWriteback_1_valid,
  output        io_fuWriteback_1_bits_uop_ctrl_rfWen,
  output        io_fuWriteback_1_bits_uop_ctrl_fpWen,
  output [5:0]  io_fuWriteback_1_bits_uop_pdest,
  output        io_fuWriteback_1_bits_uop_robIdx_flag,
  output [4:0]  io_fuWriteback_1_bits_uop_robIdx_value,
  output        io_fuWriteback_1_bits_uop_lqIdx_flag,
  output [3:0]  io_fuWriteback_1_bits_uop_lqIdx_value,
  output [63:0] io_fuWriteback_1_bits_data,
  output [4:0]  io_fuWriteback_1_bits_fflags,
  output        io_scheExtra_rsReady_0,
  input  [5:0]  io_scheExtra_fpRfReadOut_0_addr,
  output [63:0] io_scheExtra_fpRfReadOut_0_data,
  input  [5:0]  io_scheExtra_fpRfReadOut_1_addr,
  output [63:0] io_scheExtra_fpRfReadOut_1_data,
  input  [5:0]  io_scheExtra_debug_fp_rat_0,
  input  [5:0]  io_scheExtra_debug_fp_rat_1,
  input  [5:0]  io_scheExtra_debug_fp_rat_2,
  input  [5:0]  io_scheExtra_debug_fp_rat_3,
  input  [5:0]  io_scheExtra_debug_fp_rat_4,
  input  [5:0]  io_scheExtra_debug_fp_rat_5,
  input  [5:0]  io_scheExtra_debug_fp_rat_6,
  input  [5:0]  io_scheExtra_debug_fp_rat_7,
  input  [5:0]  io_scheExtra_debug_fp_rat_8,
  input  [5:0]  io_scheExtra_debug_fp_rat_9,
  input  [5:0]  io_scheExtra_debug_fp_rat_10,
  input  [5:0]  io_scheExtra_debug_fp_rat_11,
  input  [5:0]  io_scheExtra_debug_fp_rat_12,
  input  [5:0]  io_scheExtra_debug_fp_rat_13,
  input  [5:0]  io_scheExtra_debug_fp_rat_14,
  input  [5:0]  io_scheExtra_debug_fp_rat_15,
  input  [5:0]  io_scheExtra_debug_fp_rat_16,
  input  [5:0]  io_scheExtra_debug_fp_rat_17,
  input  [5:0]  io_scheExtra_debug_fp_rat_18,
  input  [5:0]  io_scheExtra_debug_fp_rat_19,
  input  [5:0]  io_scheExtra_debug_fp_rat_20,
  input  [5:0]  io_scheExtra_debug_fp_rat_21,
  input  [5:0]  io_scheExtra_debug_fp_rat_22,
  input  [5:0]  io_scheExtra_debug_fp_rat_23,
  input  [5:0]  io_scheExtra_debug_fp_rat_24,
  input  [5:0]  io_scheExtra_debug_fp_rat_25,
  input  [5:0]  io_scheExtra_debug_fp_rat_26,
  input  [5:0]  io_scheExtra_debug_fp_rat_27,
  input  [5:0]  io_scheExtra_debug_fp_rat_28,
  input  [5:0]  io_scheExtra_debug_fp_rat_29,
  input  [5:0]  io_scheExtra_debug_fp_rat_30,
  input  [5:0]  io_scheExtra_debug_fp_rat_31,
  input  [2:0]  io_fuExtra_frm,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value
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
`endif // RANDOMIZE_REG_INIT
  wire  scheduler_clock; // @[ExuBlock.scala 39:29]
  wire  scheduler_reset; // @[ExuBlock.scala 39:29]
  wire [7:0] scheduler_io_hartId; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_redirect_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_bits_level; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_0_isFp; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_allocPregs_0_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_1_isFp; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_allocPregs_1_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_2; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_0_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_psrc_2; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_0_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_0_bits_uop_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_0_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_0_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_0_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_1; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_1_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_1_bits_uop_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_1_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_1_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_1_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_1_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_1_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_5_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_5_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_6_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_6_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_7_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_7_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_writeback_8_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_8_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_5_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_fastUopIn_5_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_rsReady_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_fpRfReadOut_0_addr; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_extra_fpRfReadOut_0_data; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_fpRfReadOut_1_addr; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_extra_fpRfReadOut_1_data; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_0; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_1; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_2; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_3; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_4; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_5; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_6; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_7; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_8; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_9; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_10; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_11; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_12; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_13; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_14; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_15; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_16; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_17; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_18; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_19; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_20; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_21; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_22; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_23; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_24; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_25; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_26; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_27; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_28; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_29; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_30; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_debug_fp_rat_31; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_in_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_in_bits_fp_prod_sign; // @[ExuBlock.scala 39:29]
  wire [10:0] scheduler_io_fmaMid_0_in_bits_fp_prod_exp; // @[ExuBlock.scala 39:29]
  wire [104:0] scheduler_io_fmaMid_0_in_bits_fp_prod_sig; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_in_bits_inter_flags_isInf; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_in_bits_inter_flags_isInv; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_in_bits_inter_flags_overflow; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_out_bits_fp_prod_sign; // @[ExuBlock.scala 39:29]
  wire [10:0] scheduler_io_fmaMid_0_out_bits_fp_prod_exp; // @[ExuBlock.scala 39:29]
  wire [104:0] scheduler_io_fmaMid_0_out_bits_fp_prod_sig; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_out_bits_inter_flags_isNaN; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_out_bits_inter_flags_isInf; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_out_bits_inter_flags_isInv; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fmaMid_0_waitForAdd; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_0_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_1_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_2_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_3_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_4_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_5_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_6_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_7_value; // @[ExuBlock.scala 39:29]
  wire  fuBlock_clock; // @[ExuBlock.scala 62:23]
  wire  fuBlock_reset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_redirect_bits_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_bits_level; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_ctrl_fpu_isAddSub; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_0_bits_uop_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_ctrl_fpu_ren3; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_0_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_0_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_0_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_1; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_fpWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_div; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_sqrt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_ctrl_fpu_fcvt; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_1_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_1_bits_uop_ctrl_fpu_fmt; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_1_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_1_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_1_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_1_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_1_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_writeback_0_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_0_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_writeback_0_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_0_bits_fflags; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_writeback_1_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_1_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_uop_lqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_writeback_1_bits_uop_lqIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_1_bits_fflags; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_frm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_in_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_in_bits_fp_prod_sign; // @[ExuBlock.scala 62:23]
  wire [10:0] fuBlock_io_fmaMid_0_in_bits_fp_prod_exp; // @[ExuBlock.scala 62:23]
  wire [104:0] fuBlock_io_fmaMid_0_in_bits_fp_prod_sig; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_in_bits_inter_flags_isInf; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_in_bits_inter_flags_isInv; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_in_bits_inter_flags_overflow; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_out_bits_fp_prod_sign; // @[ExuBlock.scala 62:23]
  wire [10:0] fuBlock_io_fmaMid_0_out_bits_fp_prod_exp; // @[ExuBlock.scala 62:23]
  wire [104:0] fuBlock_io_fmaMid_0_out_bits_fp_prod_sig; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_out_bits_inter_flags_isNaN; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_out_bits_inter_flags_isInf; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_out_bits_inter_flags_isInv; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_fmaMid_0_waitForAdd; // @[ExuBlock.scala 62:23]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  wire [5:0] _isFlushed_flushItself_T_1 = {fuBlock_io_writeback_0_bits_uop_robIdx_flag,
    fuBlock_io_writeback_0_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _isFlushed_flushItself_T_2 = {redirect_next_bits_rrobIdx_flag,redirect_next_bits_rrobIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself = redirect_next_bits_rlevel & _isFlushed_flushItself_T_3; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag = fuBlock_io_writeback_0_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare = fuBlock_io_writeback_0_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed = redirect_next_valid_REG & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 143:20]
  reg  scheduler_io_writeback_5_valid_REG; // @[ExuBlock.scala 142:30]
  reg  scheduler_io_writeback_5_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 143:33]
  reg [5:0] scheduler_io_writeback_5_bits_uop_REG_pdest; // @[ExuBlock.scala 143:33]
  Scheduler_1 scheduler ( // @[ExuBlock.scala 39:29]
    .clock(scheduler_clock),
    .reset(scheduler_reset),
    .io_hartId(scheduler_io_hartId),
    .io_redirect_valid(scheduler_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(scheduler_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(scheduler_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(scheduler_io_redirect_bits_level),
    .io_allocPregs_0_isFp(scheduler_io_allocPregs_0_isFp),
    .io_allocPregs_0_preg(scheduler_io_allocPregs_0_preg),
    .io_allocPregs_1_isFp(scheduler_io_allocPregs_1_isFp),
    .io_allocPregs_1_preg(scheduler_io_allocPregs_1_preg),
    .io_in_0_valid(scheduler_io_in_0_valid),
    .io_in_0_bits_cf_pd_isRVC(scheduler_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(scheduler_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(scheduler_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(scheduler_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(scheduler_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_ftqPtr_flag(scheduler_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(scheduler_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(scheduler_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(scheduler_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(scheduler_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_srcType_2(scheduler_io_in_0_bits_ctrl_srcType_2),
    .io_in_0_bits_ctrl_fuType(scheduler_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(scheduler_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(scheduler_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(scheduler_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_imm(scheduler_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(scheduler_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(scheduler_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(scheduler_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(scheduler_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(scheduler_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(scheduler_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(scheduler_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(scheduler_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(scheduler_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(scheduler_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(scheduler_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(scheduler_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(scheduler_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(scheduler_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(scheduler_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(scheduler_io_in_0_bits_psrc_1),
    .io_in_0_bits_psrc_2(scheduler_io_in_0_bits_psrc_2),
    .io_in_0_bits_pdest(scheduler_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(scheduler_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(scheduler_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(scheduler_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(scheduler_io_in_0_bits_lqIdx_value),
    .io_issue_0_ready(scheduler_io_issue_0_ready),
    .io_issue_0_valid(scheduler_io_issue_0_valid),
    .io_issue_0_bits_uop_ctrl_rfWen(scheduler_io_issue_0_bits_uop_ctrl_rfWen),
    .io_issue_0_bits_uop_ctrl_fpWen(scheduler_io_issue_0_bits_uop_ctrl_fpWen),
    .io_issue_0_bits_uop_ctrl_fpu_isAddSub(scheduler_io_issue_0_bits_uop_ctrl_fpu_isAddSub),
    .io_issue_0_bits_uop_ctrl_fpu_typeTagIn(scheduler_io_issue_0_bits_uop_ctrl_fpu_typeTagIn),
    .io_issue_0_bits_uop_ctrl_fpu_fmaCmd(scheduler_io_issue_0_bits_uop_ctrl_fpu_fmaCmd),
    .io_issue_0_bits_uop_ctrl_fpu_ren3(scheduler_io_issue_0_bits_uop_ctrl_fpu_ren3),
    .io_issue_0_bits_uop_ctrl_fpu_rm(scheduler_io_issue_0_bits_uop_ctrl_fpu_rm),
    .io_issue_0_bits_uop_pdest(scheduler_io_issue_0_bits_uop_pdest),
    .io_issue_0_bits_uop_robIdx_flag(scheduler_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(scheduler_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_uop_lqIdx_flag(scheduler_io_issue_0_bits_uop_lqIdx_flag),
    .io_issue_0_bits_uop_lqIdx_value(scheduler_io_issue_0_bits_uop_lqIdx_value),
    .io_issue_0_bits_src_0(scheduler_io_issue_0_bits_src_0),
    .io_issue_0_bits_src_1(scheduler_io_issue_0_bits_src_1),
    .io_issue_0_bits_src_2(scheduler_io_issue_0_bits_src_2),
    .io_issue_1_ready(scheduler_io_issue_1_ready),
    .io_issue_1_valid(scheduler_io_issue_1_valid),
    .io_issue_1_bits_uop_ctrl_rfWen(scheduler_io_issue_1_bits_uop_ctrl_rfWen),
    .io_issue_1_bits_uop_ctrl_fpWen(scheduler_io_issue_1_bits_uop_ctrl_fpWen),
    .io_issue_1_bits_uop_ctrl_fpu_typeTagIn(scheduler_io_issue_1_bits_uop_ctrl_fpu_typeTagIn),
    .io_issue_1_bits_uop_ctrl_fpu_typeTagOut(scheduler_io_issue_1_bits_uop_ctrl_fpu_typeTagOut),
    .io_issue_1_bits_uop_ctrl_fpu_wflags(scheduler_io_issue_1_bits_uop_ctrl_fpu_wflags),
    .io_issue_1_bits_uop_ctrl_fpu_fpWen(scheduler_io_issue_1_bits_uop_ctrl_fpu_fpWen),
    .io_issue_1_bits_uop_ctrl_fpu_div(scheduler_io_issue_1_bits_uop_ctrl_fpu_div),
    .io_issue_1_bits_uop_ctrl_fpu_sqrt(scheduler_io_issue_1_bits_uop_ctrl_fpu_sqrt),
    .io_issue_1_bits_uop_ctrl_fpu_fcvt(scheduler_io_issue_1_bits_uop_ctrl_fpu_fcvt),
    .io_issue_1_bits_uop_ctrl_fpu_typ(scheduler_io_issue_1_bits_uop_ctrl_fpu_typ),
    .io_issue_1_bits_uop_ctrl_fpu_fmt(scheduler_io_issue_1_bits_uop_ctrl_fpu_fmt),
    .io_issue_1_bits_uop_ctrl_fpu_rm(scheduler_io_issue_1_bits_uop_ctrl_fpu_rm),
    .io_issue_1_bits_uop_pdest(scheduler_io_issue_1_bits_uop_pdest),
    .io_issue_1_bits_uop_robIdx_flag(scheduler_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(scheduler_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_uop_lqIdx_flag(scheduler_io_issue_1_bits_uop_lqIdx_flag),
    .io_issue_1_bits_uop_lqIdx_value(scheduler_io_issue_1_bits_uop_lqIdx_value),
    .io_issue_1_bits_src_0(scheduler_io_issue_1_bits_src_0),
    .io_issue_1_bits_src_1(scheduler_io_issue_1_bits_src_1),
    .io_writeback_5_valid(scheduler_io_writeback_5_valid),
    .io_writeback_5_bits_uop_ctrl_fpWen(scheduler_io_writeback_5_bits_uop_ctrl_fpWen),
    .io_writeback_5_bits_uop_pdest(scheduler_io_writeback_5_bits_uop_pdest),
    .io_writeback_5_bits_data(scheduler_io_writeback_5_bits_data),
    .io_writeback_6_valid(scheduler_io_writeback_6_valid),
    .io_writeback_6_bits_uop_ctrl_fpWen(scheduler_io_writeback_6_bits_uop_ctrl_fpWen),
    .io_writeback_6_bits_uop_pdest(scheduler_io_writeback_6_bits_uop_pdest),
    .io_writeback_6_bits_data(scheduler_io_writeback_6_bits_data),
    .io_writeback_7_valid(scheduler_io_writeback_7_valid),
    .io_writeback_7_bits_uop_ctrl_fpWen(scheduler_io_writeback_7_bits_uop_ctrl_fpWen),
    .io_writeback_7_bits_uop_pdest(scheduler_io_writeback_7_bits_uop_pdest),
    .io_writeback_7_bits_data(scheduler_io_writeback_7_bits_data),
    .io_writeback_8_valid(scheduler_io_writeback_8_valid),
    .io_writeback_8_bits_uop_ctrl_fpWen(scheduler_io_writeback_8_bits_uop_ctrl_fpWen),
    .io_writeback_8_bits_uop_pdest(scheduler_io_writeback_8_bits_uop_pdest),
    .io_writeback_8_bits_data(scheduler_io_writeback_8_bits_data),
    .io_fastUopIn_5_valid(scheduler_io_fastUopIn_5_valid),
    .io_fastUopIn_5_bits_ctrl_fpWen(scheduler_io_fastUopIn_5_bits_ctrl_fpWen),
    .io_fastUopIn_5_bits_pdest(scheduler_io_fastUopIn_5_bits_pdest),
    .io_extra_rsReady_0(scheduler_io_extra_rsReady_0),
    .io_extra_fpRfReadOut_0_addr(scheduler_io_extra_fpRfReadOut_0_addr),
    .io_extra_fpRfReadOut_0_data(scheduler_io_extra_fpRfReadOut_0_data),
    .io_extra_fpRfReadOut_1_addr(scheduler_io_extra_fpRfReadOut_1_addr),
    .io_extra_fpRfReadOut_1_data(scheduler_io_extra_fpRfReadOut_1_data),
    .io_extra_debug_fp_rat_0(scheduler_io_extra_debug_fp_rat_0),
    .io_extra_debug_fp_rat_1(scheduler_io_extra_debug_fp_rat_1),
    .io_extra_debug_fp_rat_2(scheduler_io_extra_debug_fp_rat_2),
    .io_extra_debug_fp_rat_3(scheduler_io_extra_debug_fp_rat_3),
    .io_extra_debug_fp_rat_4(scheduler_io_extra_debug_fp_rat_4),
    .io_extra_debug_fp_rat_5(scheduler_io_extra_debug_fp_rat_5),
    .io_extra_debug_fp_rat_6(scheduler_io_extra_debug_fp_rat_6),
    .io_extra_debug_fp_rat_7(scheduler_io_extra_debug_fp_rat_7),
    .io_extra_debug_fp_rat_8(scheduler_io_extra_debug_fp_rat_8),
    .io_extra_debug_fp_rat_9(scheduler_io_extra_debug_fp_rat_9),
    .io_extra_debug_fp_rat_10(scheduler_io_extra_debug_fp_rat_10),
    .io_extra_debug_fp_rat_11(scheduler_io_extra_debug_fp_rat_11),
    .io_extra_debug_fp_rat_12(scheduler_io_extra_debug_fp_rat_12),
    .io_extra_debug_fp_rat_13(scheduler_io_extra_debug_fp_rat_13),
    .io_extra_debug_fp_rat_14(scheduler_io_extra_debug_fp_rat_14),
    .io_extra_debug_fp_rat_15(scheduler_io_extra_debug_fp_rat_15),
    .io_extra_debug_fp_rat_16(scheduler_io_extra_debug_fp_rat_16),
    .io_extra_debug_fp_rat_17(scheduler_io_extra_debug_fp_rat_17),
    .io_extra_debug_fp_rat_18(scheduler_io_extra_debug_fp_rat_18),
    .io_extra_debug_fp_rat_19(scheduler_io_extra_debug_fp_rat_19),
    .io_extra_debug_fp_rat_20(scheduler_io_extra_debug_fp_rat_20),
    .io_extra_debug_fp_rat_21(scheduler_io_extra_debug_fp_rat_21),
    .io_extra_debug_fp_rat_22(scheduler_io_extra_debug_fp_rat_22),
    .io_extra_debug_fp_rat_23(scheduler_io_extra_debug_fp_rat_23),
    .io_extra_debug_fp_rat_24(scheduler_io_extra_debug_fp_rat_24),
    .io_extra_debug_fp_rat_25(scheduler_io_extra_debug_fp_rat_25),
    .io_extra_debug_fp_rat_26(scheduler_io_extra_debug_fp_rat_26),
    .io_extra_debug_fp_rat_27(scheduler_io_extra_debug_fp_rat_27),
    .io_extra_debug_fp_rat_28(scheduler_io_extra_debug_fp_rat_28),
    .io_extra_debug_fp_rat_29(scheduler_io_extra_debug_fp_rat_29),
    .io_extra_debug_fp_rat_30(scheduler_io_extra_debug_fp_rat_30),
    .io_extra_debug_fp_rat_31(scheduler_io_extra_debug_fp_rat_31),
    .io_fmaMid_0_in_valid(scheduler_io_fmaMid_0_in_valid),
    .io_fmaMid_0_in_bits_fp_prod_sign(scheduler_io_fmaMid_0_in_bits_fp_prod_sign),
    .io_fmaMid_0_in_bits_fp_prod_exp(scheduler_io_fmaMid_0_in_bits_fp_prod_exp),
    .io_fmaMid_0_in_bits_fp_prod_sig(scheduler_io_fmaMid_0_in_bits_fp_prod_sig),
    .io_fmaMid_0_in_bits_inter_flags_isNaN(scheduler_io_fmaMid_0_in_bits_inter_flags_isNaN),
    .io_fmaMid_0_in_bits_inter_flags_isInf(scheduler_io_fmaMid_0_in_bits_inter_flags_isInf),
    .io_fmaMid_0_in_bits_inter_flags_isInv(scheduler_io_fmaMid_0_in_bits_inter_flags_isInv),
    .io_fmaMid_0_in_bits_inter_flags_overflow(scheduler_io_fmaMid_0_in_bits_inter_flags_overflow),
    .io_fmaMid_0_out_bits_fp_prod_sign(scheduler_io_fmaMid_0_out_bits_fp_prod_sign),
    .io_fmaMid_0_out_bits_fp_prod_exp(scheduler_io_fmaMid_0_out_bits_fp_prod_exp),
    .io_fmaMid_0_out_bits_fp_prod_sig(scheduler_io_fmaMid_0_out_bits_fp_prod_sig),
    .io_fmaMid_0_out_bits_inter_flags_isNaN(scheduler_io_fmaMid_0_out_bits_inter_flags_isNaN),
    .io_fmaMid_0_out_bits_inter_flags_isInf(scheduler_io_fmaMid_0_out_bits_inter_flags_isInf),
    .io_fmaMid_0_out_bits_inter_flags_isInv(scheduler_io_fmaMid_0_out_bits_inter_flags_isInv),
    .io_fmaMid_0_waitForAdd(scheduler_io_fmaMid_0_waitForAdd),
    .io_perf_0_value(scheduler_io_perf_0_value),
    .io_perf_1_value(scheduler_io_perf_1_value),
    .io_perf_2_value(scheduler_io_perf_2_value),
    .io_perf_3_value(scheduler_io_perf_3_value),
    .io_perf_4_value(scheduler_io_perf_4_value),
    .io_perf_5_value(scheduler_io_perf_5_value),
    .io_perf_6_value(scheduler_io_perf_6_value),
    .io_perf_7_value(scheduler_io_perf_7_value)
  );
  FUBlock_1 fuBlock ( // @[ExuBlock.scala 62:23]
    .clock(fuBlock_clock),
    .reset(fuBlock_reset),
    .io_redirect_valid(fuBlock_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(fuBlock_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(fuBlock_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(fuBlock_io_redirect_bits_level),
    .io_issue_0_ready(fuBlock_io_issue_0_ready),
    .io_issue_0_valid(fuBlock_io_issue_0_valid),
    .io_issue_0_bits_uop_ctrl_rfWen(fuBlock_io_issue_0_bits_uop_ctrl_rfWen),
    .io_issue_0_bits_uop_ctrl_fpWen(fuBlock_io_issue_0_bits_uop_ctrl_fpWen),
    .io_issue_0_bits_uop_ctrl_fpu_isAddSub(fuBlock_io_issue_0_bits_uop_ctrl_fpu_isAddSub),
    .io_issue_0_bits_uop_ctrl_fpu_typeTagIn(fuBlock_io_issue_0_bits_uop_ctrl_fpu_typeTagIn),
    .io_issue_0_bits_uop_ctrl_fpu_fmaCmd(fuBlock_io_issue_0_bits_uop_ctrl_fpu_fmaCmd),
    .io_issue_0_bits_uop_ctrl_fpu_ren3(fuBlock_io_issue_0_bits_uop_ctrl_fpu_ren3),
    .io_issue_0_bits_uop_ctrl_fpu_rm(fuBlock_io_issue_0_bits_uop_ctrl_fpu_rm),
    .io_issue_0_bits_uop_pdest(fuBlock_io_issue_0_bits_uop_pdest),
    .io_issue_0_bits_uop_robIdx_flag(fuBlock_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(fuBlock_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_uop_lqIdx_flag(fuBlock_io_issue_0_bits_uop_lqIdx_flag),
    .io_issue_0_bits_uop_lqIdx_value(fuBlock_io_issue_0_bits_uop_lqIdx_value),
    .io_issue_0_bits_src_0(fuBlock_io_issue_0_bits_src_0),
    .io_issue_0_bits_src_1(fuBlock_io_issue_0_bits_src_1),
    .io_issue_0_bits_src_2(fuBlock_io_issue_0_bits_src_2),
    .io_issue_1_ready(fuBlock_io_issue_1_ready),
    .io_issue_1_valid(fuBlock_io_issue_1_valid),
    .io_issue_1_bits_uop_ctrl_rfWen(fuBlock_io_issue_1_bits_uop_ctrl_rfWen),
    .io_issue_1_bits_uop_ctrl_fpWen(fuBlock_io_issue_1_bits_uop_ctrl_fpWen),
    .io_issue_1_bits_uop_ctrl_fpu_typeTagIn(fuBlock_io_issue_1_bits_uop_ctrl_fpu_typeTagIn),
    .io_issue_1_bits_uop_ctrl_fpu_typeTagOut(fuBlock_io_issue_1_bits_uop_ctrl_fpu_typeTagOut),
    .io_issue_1_bits_uop_ctrl_fpu_wflags(fuBlock_io_issue_1_bits_uop_ctrl_fpu_wflags),
    .io_issue_1_bits_uop_ctrl_fpu_fpWen(fuBlock_io_issue_1_bits_uop_ctrl_fpu_fpWen),
    .io_issue_1_bits_uop_ctrl_fpu_div(fuBlock_io_issue_1_bits_uop_ctrl_fpu_div),
    .io_issue_1_bits_uop_ctrl_fpu_sqrt(fuBlock_io_issue_1_bits_uop_ctrl_fpu_sqrt),
    .io_issue_1_bits_uop_ctrl_fpu_fcvt(fuBlock_io_issue_1_bits_uop_ctrl_fpu_fcvt),
    .io_issue_1_bits_uop_ctrl_fpu_typ(fuBlock_io_issue_1_bits_uop_ctrl_fpu_typ),
    .io_issue_1_bits_uop_ctrl_fpu_fmt(fuBlock_io_issue_1_bits_uop_ctrl_fpu_fmt),
    .io_issue_1_bits_uop_ctrl_fpu_rm(fuBlock_io_issue_1_bits_uop_ctrl_fpu_rm),
    .io_issue_1_bits_uop_pdest(fuBlock_io_issue_1_bits_uop_pdest),
    .io_issue_1_bits_uop_robIdx_flag(fuBlock_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(fuBlock_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_uop_lqIdx_flag(fuBlock_io_issue_1_bits_uop_lqIdx_flag),
    .io_issue_1_bits_uop_lqIdx_value(fuBlock_io_issue_1_bits_uop_lqIdx_value),
    .io_issue_1_bits_src_0(fuBlock_io_issue_1_bits_src_0),
    .io_issue_1_bits_src_1(fuBlock_io_issue_1_bits_src_1),
    .io_writeback_0_valid(fuBlock_io_writeback_0_valid),
    .io_writeback_0_bits_uop_cf_trigger_backendHit_0(fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_0_bits_uop_cf_trigger_backendHit_1(fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_0_bits_uop_cf_trigger_backendHit_2(fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_0_bits_uop_cf_trigger_backendHit_3(fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_0_bits_uop_cf_trigger_backendHit_4(fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_0_bits_uop_cf_trigger_backendHit_5(fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_0_bits_uop_ctrl_rfWen(fuBlock_io_writeback_0_bits_uop_ctrl_rfWen),
    .io_writeback_0_bits_uop_ctrl_fpWen(fuBlock_io_writeback_0_bits_uop_ctrl_fpWen),
    .io_writeback_0_bits_uop_pdest(fuBlock_io_writeback_0_bits_uop_pdest),
    .io_writeback_0_bits_uop_robIdx_flag(fuBlock_io_writeback_0_bits_uop_robIdx_flag),
    .io_writeback_0_bits_uop_robIdx_value(fuBlock_io_writeback_0_bits_uop_robIdx_value),
    .io_writeback_0_bits_uop_lqIdx_flag(fuBlock_io_writeback_0_bits_uop_lqIdx_flag),
    .io_writeback_0_bits_uop_lqIdx_value(fuBlock_io_writeback_0_bits_uop_lqIdx_value),
    .io_writeback_0_bits_data(fuBlock_io_writeback_0_bits_data),
    .io_writeback_0_bits_fflags(fuBlock_io_writeback_0_bits_fflags),
    .io_writeback_1_ready(fuBlock_io_writeback_1_ready),
    .io_writeback_1_valid(fuBlock_io_writeback_1_valid),
    .io_writeback_1_bits_uop_ctrl_rfWen(fuBlock_io_writeback_1_bits_uop_ctrl_rfWen),
    .io_writeback_1_bits_uop_ctrl_fpWen(fuBlock_io_writeback_1_bits_uop_ctrl_fpWen),
    .io_writeback_1_bits_uop_pdest(fuBlock_io_writeback_1_bits_uop_pdest),
    .io_writeback_1_bits_uop_robIdx_flag(fuBlock_io_writeback_1_bits_uop_robIdx_flag),
    .io_writeback_1_bits_uop_robIdx_value(fuBlock_io_writeback_1_bits_uop_robIdx_value),
    .io_writeback_1_bits_uop_lqIdx_flag(fuBlock_io_writeback_1_bits_uop_lqIdx_flag),
    .io_writeback_1_bits_uop_lqIdx_value(fuBlock_io_writeback_1_bits_uop_lqIdx_value),
    .io_writeback_1_bits_data(fuBlock_io_writeback_1_bits_data),
    .io_writeback_1_bits_fflags(fuBlock_io_writeback_1_bits_fflags),
    .io_extra_frm(fuBlock_io_extra_frm),
    .io_fmaMid_0_in_valid(fuBlock_io_fmaMid_0_in_valid),
    .io_fmaMid_0_in_bits_fp_prod_sign(fuBlock_io_fmaMid_0_in_bits_fp_prod_sign),
    .io_fmaMid_0_in_bits_fp_prod_exp(fuBlock_io_fmaMid_0_in_bits_fp_prod_exp),
    .io_fmaMid_0_in_bits_fp_prod_sig(fuBlock_io_fmaMid_0_in_bits_fp_prod_sig),
    .io_fmaMid_0_in_bits_inter_flags_isNaN(fuBlock_io_fmaMid_0_in_bits_inter_flags_isNaN),
    .io_fmaMid_0_in_bits_inter_flags_isInf(fuBlock_io_fmaMid_0_in_bits_inter_flags_isInf),
    .io_fmaMid_0_in_bits_inter_flags_isInv(fuBlock_io_fmaMid_0_in_bits_inter_flags_isInv),
    .io_fmaMid_0_in_bits_inter_flags_overflow(fuBlock_io_fmaMid_0_in_bits_inter_flags_overflow),
    .io_fmaMid_0_out_bits_fp_prod_sign(fuBlock_io_fmaMid_0_out_bits_fp_prod_sign),
    .io_fmaMid_0_out_bits_fp_prod_exp(fuBlock_io_fmaMid_0_out_bits_fp_prod_exp),
    .io_fmaMid_0_out_bits_fp_prod_sig(fuBlock_io_fmaMid_0_out_bits_fp_prod_sig),
    .io_fmaMid_0_out_bits_inter_flags_isNaN(fuBlock_io_fmaMid_0_out_bits_inter_flags_isNaN),
    .io_fmaMid_0_out_bits_inter_flags_isInf(fuBlock_io_fmaMid_0_out_bits_inter_flags_isInf),
    .io_fmaMid_0_out_bits_inter_flags_isInv(fuBlock_io_fmaMid_0_out_bits_inter_flags_isInv),
    .io_fmaMid_0_waitForAdd(fuBlock_io_fmaMid_0_waitForAdd)
  );
  assign io_fastUopOut_0_valid = fuBlock_io_writeback_0_valid; // @[ExuBlock.scala 118:21]
  assign io_fastUopOut_0_bits_ctrl_fpWen = fuBlock_io_writeback_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 119:20]
  assign io_fastUopOut_0_bits_pdest = fuBlock_io_writeback_0_bits_uop_pdest; // @[ExuBlock.scala 119:20]
  assign io_fuWriteback_0_valid = fuBlock_io_writeback_0_valid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0 = fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1 = fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2 = fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3 = fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4 = fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5 = fuBlock_io_writeback_0_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_ctrl_rfWen = fuBlock_io_writeback_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_ctrl_fpWen = fuBlock_io_writeback_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_pdest = fuBlock_io_writeback_0_bits_uop_pdest; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_robIdx_flag = fuBlock_io_writeback_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_robIdx_value = fuBlock_io_writeback_0_bits_uop_robIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_lqIdx_flag = fuBlock_io_writeback_0_bits_uop_lqIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_uop_lqIdx_value = fuBlock_io_writeback_0_bits_uop_lqIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_data = fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_fflags = fuBlock_io_writeback_0_bits_fflags; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_valid = fuBlock_io_writeback_1_valid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_ctrl_rfWen = fuBlock_io_writeback_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_ctrl_fpWen = fuBlock_io_writeback_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_pdest = fuBlock_io_writeback_1_bits_uop_pdest; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_robIdx_flag = fuBlock_io_writeback_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_robIdx_value = fuBlock_io_writeback_1_bits_uop_robIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_lqIdx_flag = fuBlock_io_writeback_1_bits_uop_lqIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_uop_lqIdx_value = fuBlock_io_writeback_1_bits_uop_lqIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_data = fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_fflags = fuBlock_io_writeback_1_bits_fflags; // @[ExuBlock.scala 106:24]
  assign io_scheExtra_rsReady_0 = scheduler_io_extra_rsReady_0; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_fpRfReadOut_0_data = scheduler_io_extra_fpRfReadOut_0_data; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_fpRfReadOut_1_data = scheduler_io_extra_fpRfReadOut_1_data; // @[ExuBlock.scala 93:22]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign scheduler_clock = clock;
  assign scheduler_reset = reset;
  assign scheduler_io_hartId = io_hartId; // @[ExuBlock.scala 86:23]
  assign scheduler_io_redirect_valid = io_redirect_valid; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_level = io_redirect_bits_level; // @[ExuBlock.scala 87:25]
  assign scheduler_io_allocPregs_0_isFp = io_allocPregs_0_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_0_preg = io_allocPregs_0_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_isFp = io_allocPregs_1_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_preg = io_allocPregs_1_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_in_0_valid = io_in_0_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_2 = io_in_0_bits_ctrl_srcType_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_imm = io_in_0_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_0 = io_in_0_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_1 = io_in_0_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_2 = io_in_0_bits_psrc_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_pdest = io_in_0_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_lqIdx_flag = io_in_0_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_lqIdx_value = io_in_0_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_issue_0_ready = fuBlock_io_issue_0_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_1_ready = fuBlock_io_issue_1_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_writeback_5_valid = scheduler_io_writeback_5_valid_REG; // @[ExuBlock.scala 142:20]
  assign scheduler_io_writeback_5_bits_uop_ctrl_fpWen = scheduler_io_writeback_5_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 143:23]
  assign scheduler_io_writeback_5_bits_uop_pdest = scheduler_io_writeback_5_bits_uop_REG_pdest; // @[ExuBlock.scala 143:23]
  assign scheduler_io_writeback_5_bits_data = fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 139:17]
  assign scheduler_io_writeback_6_valid = io_rfWriteback_6_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_ctrl_fpWen = io_rfWriteback_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_pdest = io_rfWriteback_6_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_data = io_rfWriteback_6_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_valid = io_rfWriteback_7_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_ctrl_fpWen = io_rfWriteback_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_pdest = io_rfWriteback_7_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_data = io_rfWriteback_7_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_valid = io_rfWriteback_8_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_ctrl_fpWen = io_rfWriteback_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_pdest = io_rfWriteback_8_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_data = io_rfWriteback_8_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_fastUopIn_5_valid = io_fastUopIn_5_valid; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_5_bits_ctrl_fpWen = io_fastUopIn_5_bits_ctrl_fpWen; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_5_bits_pdest = io_fastUopIn_5_bits_pdest; // @[ExuBlock.scala 92:26]
  assign scheduler_io_extra_fpRfReadOut_0_addr = io_scheExtra_fpRfReadOut_0_addr; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_fpRfReadOut_1_addr = io_scheExtra_fpRfReadOut_1_addr; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_0 = io_scheExtra_debug_fp_rat_0; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_1 = io_scheExtra_debug_fp_rat_1; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_2 = io_scheExtra_debug_fp_rat_2; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_3 = io_scheExtra_debug_fp_rat_3; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_4 = io_scheExtra_debug_fp_rat_4; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_5 = io_scheExtra_debug_fp_rat_5; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_6 = io_scheExtra_debug_fp_rat_6; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_7 = io_scheExtra_debug_fp_rat_7; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_8 = io_scheExtra_debug_fp_rat_8; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_9 = io_scheExtra_debug_fp_rat_9; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_10 = io_scheExtra_debug_fp_rat_10; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_11 = io_scheExtra_debug_fp_rat_11; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_12 = io_scheExtra_debug_fp_rat_12; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_13 = io_scheExtra_debug_fp_rat_13; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_14 = io_scheExtra_debug_fp_rat_14; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_15 = io_scheExtra_debug_fp_rat_15; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_16 = io_scheExtra_debug_fp_rat_16; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_17 = io_scheExtra_debug_fp_rat_17; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_18 = io_scheExtra_debug_fp_rat_18; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_19 = io_scheExtra_debug_fp_rat_19; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_20 = io_scheExtra_debug_fp_rat_20; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_21 = io_scheExtra_debug_fp_rat_21; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_22 = io_scheExtra_debug_fp_rat_22; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_23 = io_scheExtra_debug_fp_rat_23; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_24 = io_scheExtra_debug_fp_rat_24; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_25 = io_scheExtra_debug_fp_rat_25; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_26 = io_scheExtra_debug_fp_rat_26; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_27 = io_scheExtra_debug_fp_rat_27; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_28 = io_scheExtra_debug_fp_rat_28; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_29 = io_scheExtra_debug_fp_rat_29; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_30 = io_scheExtra_debug_fp_rat_30; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_fp_rat_31 = io_scheExtra_debug_fp_rat_31; // @[ExuBlock.scala 93:22]
  assign scheduler_io_fmaMid_0_out_bits_fp_prod_sign = fuBlock_io_fmaMid_0_out_bits_fp_prod_sign; // @[ExuBlock.scala 101:29]
  assign scheduler_io_fmaMid_0_out_bits_fp_prod_exp = fuBlock_io_fmaMid_0_out_bits_fp_prod_exp; // @[ExuBlock.scala 101:29]
  assign scheduler_io_fmaMid_0_out_bits_fp_prod_sig = fuBlock_io_fmaMid_0_out_bits_fp_prod_sig; // @[ExuBlock.scala 101:29]
  assign scheduler_io_fmaMid_0_out_bits_inter_flags_isNaN = fuBlock_io_fmaMid_0_out_bits_inter_flags_isNaN; // @[ExuBlock.scala 101:29]
  assign scheduler_io_fmaMid_0_out_bits_inter_flags_isInf = fuBlock_io_fmaMid_0_out_bits_inter_flags_isInf; // @[ExuBlock.scala 101:29]
  assign scheduler_io_fmaMid_0_out_bits_inter_flags_isInv = fuBlock_io_fmaMid_0_out_bits_inter_flags_isInv; // @[ExuBlock.scala 101:29]
  assign fuBlock_clock = clock;
  assign fuBlock_reset = reset;
  assign fuBlock_io_redirect_valid = io_redirect_valid; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_level = io_redirect_bits_level; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_issue_0_valid = scheduler_io_issue_0_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_rfWen = scheduler_io_issue_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fpWen = scheduler_io_issue_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fpu_isAddSub = scheduler_io_issue_0_bits_uop_ctrl_fpu_isAddSub; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fpu_typeTagIn = scheduler_io_issue_0_bits_uop_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fpu_fmaCmd = scheduler_io_issue_0_bits_uop_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fpu_ren3 = scheduler_io_issue_0_bits_uop_ctrl_fpu_ren3; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fpu_rm = scheduler_io_issue_0_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_pdest = scheduler_io_issue_0_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_robIdx_flag = scheduler_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_robIdx_value = scheduler_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_lqIdx_flag = scheduler_io_issue_0_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_lqIdx_value = scheduler_io_issue_0_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_0 = scheduler_io_issue_0_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_1 = scheduler_io_issue_0_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_2 = scheduler_io_issue_0_bits_src_2; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_valid = scheduler_io_issue_1_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_rfWen = scheduler_io_issue_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpWen = scheduler_io_issue_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_typeTagIn = scheduler_io_issue_1_bits_uop_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_typeTagOut = scheduler_io_issue_1_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_wflags = scheduler_io_issue_1_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_fpWen = scheduler_io_issue_1_bits_uop_ctrl_fpu_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_div = scheduler_io_issue_1_bits_uop_ctrl_fpu_div; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_sqrt = scheduler_io_issue_1_bits_uop_ctrl_fpu_sqrt; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_fcvt = scheduler_io_issue_1_bits_uop_ctrl_fpu_fcvt; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_typ = scheduler_io_issue_1_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_fmt = scheduler_io_issue_1_bits_uop_ctrl_fpu_fmt; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fpu_rm = scheduler_io_issue_1_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_pdest = scheduler_io_issue_1_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_robIdx_flag = scheduler_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_robIdx_value = scheduler_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_lqIdx_flag = scheduler_io_issue_1_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_lqIdx_value = scheduler_io_issue_1_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_src_0 = scheduler_io_issue_1_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_src_1 = scheduler_io_issue_1_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_writeback_1_ready = io_fuWriteback_1_ready; // @[ExuBlock.scala 106:24]
  assign fuBlock_io_extra_frm = io_fuExtra_frm; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_fmaMid_0_in_valid = scheduler_io_fmaMid_0_in_valid; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_fp_prod_sign = scheduler_io_fmaMid_0_in_bits_fp_prod_sign; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_fp_prod_exp = scheduler_io_fmaMid_0_in_bits_fp_prod_exp; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_fp_prod_sig = scheduler_io_fmaMid_0_in_bits_fp_prod_sig; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_inter_flags_isNaN = scheduler_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_inter_flags_isInf = scheduler_io_fmaMid_0_in_bits_inter_flags_isInf; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_inter_flags_isInv = scheduler_io_fmaMid_0_in_bits_inter_flags_isInv; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_in_bits_inter_flags_overflow = scheduler_io_fmaMid_0_in_bits_inter_flags_overflow; // @[ExuBlock.scala 101:29]
  assign fuBlock_io_fmaMid_0_waitForAdd = scheduler_io_fmaMid_0_waitForAdd; // @[ExuBlock.scala 101:29]
  always @(posedge clock) begin
    io_perf_0_value_REG <= scheduler_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= scheduler_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= scheduler_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= scheduler_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= scheduler_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= scheduler_io_perf_5_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= scheduler_io_perf_6_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= scheduler_io_perf_7_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    scheduler_io_writeback_5_valid_REG <= fuBlock_io_writeback_0_valid & ~isFlushed; // @[ExuBlock.scala 142:40]
    scheduler_io_writeback_5_bits_uop_REG_ctrl_fpWen <= fuBlock_io_writeback_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 143:33]
    scheduler_io_writeback_5_bits_uop_REG_pdest <= fuBlock_io_writeback_0_bits_uop_pdest; // @[ExuBlock.scala 143:33]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      redirect_next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      redirect_next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  redirect_next_valid_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_value = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  redirect_next_bits_rlevel = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  scheduler_io_writeback_5_valid_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  scheduler_io_writeback_5_bits_uop_REG_ctrl_fpWen = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  scheduler_io_writeback_5_bits_uop_REG_pdest = _RAND_22[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    redirect_next_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

