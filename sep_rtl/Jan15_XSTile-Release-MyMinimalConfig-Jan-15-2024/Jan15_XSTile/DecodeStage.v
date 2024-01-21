module DecodeStage(
  input         clock,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits_instr,
  input  [9:0]  io_in_0_bits_foldpc,
  input         io_in_0_bits_exceptionVec_1,
  input         io_in_0_bits_exceptionVec_12,
  input         io_in_0_bits_trigger_frontendHit_0,
  input         io_in_0_bits_trigger_frontendHit_1,
  input         io_in_0_bits_trigger_frontendHit_2,
  input         io_in_0_bits_trigger_frontendHit_3,
  input         io_in_0_bits_trigger_backendEn_0,
  input         io_in_0_bits_trigger_backendEn_1,
  input         io_in_0_bits_pd_isRVC,
  input  [1:0]  io_in_0_bits_pd_brType,
  input         io_in_0_bits_pd_isCall,
  input         io_in_0_bits_pd_isRet,
  input         io_in_0_bits_pred_taken,
  input         io_in_0_bits_crossPageIPFFix,
  input         io_in_0_bits_ftqPtr_flag,
  input  [2:0]  io_in_0_bits_ftqPtr_value,
  input  [2:0]  io_in_0_bits_ftqOffset,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [31:0] io_in_1_bits_instr,
  input  [9:0]  io_in_1_bits_foldpc,
  input         io_in_1_bits_exceptionVec_1,
  input         io_in_1_bits_exceptionVec_12,
  input         io_in_1_bits_trigger_frontendHit_0,
  input         io_in_1_bits_trigger_frontendHit_1,
  input         io_in_1_bits_trigger_frontendHit_2,
  input         io_in_1_bits_trigger_frontendHit_3,
  input         io_in_1_bits_trigger_backendEn_0,
  input         io_in_1_bits_trigger_backendEn_1,
  input         io_in_1_bits_pd_isRVC,
  input  [1:0]  io_in_1_bits_pd_brType,
  input         io_in_1_bits_pd_isCall,
  input         io_in_1_bits_pd_isRet,
  input         io_in_1_bits_pred_taken,
  input         io_in_1_bits_crossPageIPFFix,
  input         io_in_1_bits_ftqPtr_flag,
  input  [2:0]  io_in_1_bits_ftqPtr_value,
  input  [2:0]  io_in_1_bits_ftqOffset,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output [9:0]  io_out_0_bits_cf_foldpc,
  output        io_out_0_bits_cf_exceptionVec_1,
  output        io_out_0_bits_cf_exceptionVec_2,
  output        io_out_0_bits_cf_exceptionVec_12,
  output        io_out_0_bits_cf_trigger_frontendHit_0,
  output        io_out_0_bits_cf_trigger_frontendHit_1,
  output        io_out_0_bits_cf_trigger_frontendHit_2,
  output        io_out_0_bits_cf_trigger_frontendHit_3,
  output        io_out_0_bits_cf_trigger_backendEn_0,
  output        io_out_0_bits_cf_trigger_backendEn_1,
  output        io_out_0_bits_cf_pd_isRVC,
  output [1:0]  io_out_0_bits_cf_pd_brType,
  output        io_out_0_bits_cf_pd_isCall,
  output        io_out_0_bits_cf_pd_isRet,
  output        io_out_0_bits_cf_pred_taken,
  output        io_out_0_bits_cf_crossPageIPFFix,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
  output [1:0]  io_out_0_bits_ctrl_srcType_1,
  output [1:0]  io_out_0_bits_ctrl_srcType_2,
  output [4:0]  io_out_0_bits_ctrl_lsrc_0,
  output [4:0]  io_out_0_bits_ctrl_lsrc_1,
  output [4:0]  io_out_0_bits_ctrl_ldest,
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output        io_out_0_bits_ctrl_isXSTrap,
  output        io_out_0_bits_ctrl_noSpecExec,
  output        io_out_0_bits_ctrl_blockBackward,
  output        io_out_0_bits_ctrl_flushPipe,
  output [3:0]  io_out_0_bits_ctrl_selImm,
  output [19:0] io_out_0_bits_ctrl_imm,
  output        io_out_0_bits_ctrl_fpu_isAddSub,
  output        io_out_0_bits_ctrl_fpu_typeTagIn,
  output        io_out_0_bits_ctrl_fpu_typeTagOut,
  output        io_out_0_bits_ctrl_fpu_fromInt,
  output        io_out_0_bits_ctrl_fpu_wflags,
  output        io_out_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmaCmd,
  output        io_out_0_bits_ctrl_fpu_div,
  output        io_out_0_bits_ctrl_fpu_sqrt,
  output        io_out_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_0_bits_ctrl_fpu_typ,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmt,
  output        io_out_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_0_bits_ctrl_fpu_rm,
  output        io_out_0_bits_ctrl_isMove,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output [9:0]  io_out_1_bits_cf_foldpc,
  output        io_out_1_bits_cf_exceptionVec_1,
  output        io_out_1_bits_cf_exceptionVec_2,
  output        io_out_1_bits_cf_exceptionVec_12,
  output        io_out_1_bits_cf_trigger_frontendHit_0,
  output        io_out_1_bits_cf_trigger_frontendHit_1,
  output        io_out_1_bits_cf_trigger_frontendHit_2,
  output        io_out_1_bits_cf_trigger_frontendHit_3,
  output        io_out_1_bits_cf_trigger_backendEn_0,
  output        io_out_1_bits_cf_trigger_backendEn_1,
  output        io_out_1_bits_cf_pd_isRVC,
  output [1:0]  io_out_1_bits_cf_pd_brType,
  output        io_out_1_bits_cf_pd_isCall,
  output        io_out_1_bits_cf_pd_isRet,
  output        io_out_1_bits_cf_pred_taken,
  output        io_out_1_bits_cf_crossPageIPFFix,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
  output [1:0]  io_out_1_bits_ctrl_srcType_1,
  output [1:0]  io_out_1_bits_ctrl_srcType_2,
  output [4:0]  io_out_1_bits_ctrl_lsrc_0,
  output [4:0]  io_out_1_bits_ctrl_lsrc_1,
  output [4:0]  io_out_1_bits_ctrl_lsrc_2,
  output [4:0]  io_out_1_bits_ctrl_ldest,
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output        io_out_1_bits_ctrl_isXSTrap,
  output        io_out_1_bits_ctrl_noSpecExec,
  output        io_out_1_bits_ctrl_blockBackward,
  output        io_out_1_bits_ctrl_flushPipe,
  output [3:0]  io_out_1_bits_ctrl_selImm,
  output [19:0] io_out_1_bits_ctrl_imm,
  output        io_out_1_bits_ctrl_fpu_isAddSub,
  output        io_out_1_bits_ctrl_fpu_typeTagIn,
  output        io_out_1_bits_ctrl_fpu_typeTagOut,
  output        io_out_1_bits_ctrl_fpu_fromInt,
  output        io_out_1_bits_ctrl_fpu_wflags,
  output        io_out_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmaCmd,
  output        io_out_1_bits_ctrl_fpu_div,
  output        io_out_1_bits_ctrl_fpu_sqrt,
  output        io_out_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_1_bits_ctrl_fpu_typ,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmt,
  output        io_out_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_1_bits_ctrl_fpu_rm,
  output        io_out_1_bits_ctrl_isMove,
  output        io_intRat_0_0_hold,
  output [4:0]  io_intRat_0_0_addr,
  output        io_intRat_0_1_hold,
  output [4:0]  io_intRat_0_1_addr,
  output        io_intRat_1_0_hold,
  output [4:0]  io_intRat_1_0_addr,
  output        io_intRat_1_1_hold,
  output [4:0]  io_intRat_1_1_addr,
  output        io_fpRat_0_0_hold,
  output [4:0]  io_fpRat_0_0_addr,
  output        io_fpRat_0_1_hold,
  output [4:0]  io_fpRat_0_1_addr,
  output        io_fpRat_0_2_hold,
  output [4:0]  io_fpRat_0_2_addr,
  output        io_fpRat_1_0_hold,
  output [4:0]  io_fpRat_1_0_addr,
  output        io_fpRat_1_1_hold,
  output [4:0]  io_fpRat_1_1_addr,
  output        io_fpRat_1_2_hold,
  output [4:0]  io_fpRat_1_2_addr,
  input         io_csrCtrl_fusion_enable,
  input         io_csrCtrl_wfi_enable,
  input         io_csrCtrl_svinval_enable,
  input         io_csrCtrl_singlestep,
  input         io_fusion_0,
  output        io_stallReason_in_backReason_valid,
  output [5:0]  io_stallReason_in_backReason_bits,
  input         io_stallReason_out_backReason_valid,
  input  [5:0]  io_stallReason_out_backReason_bits,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] decoders_0_io_enq_ctrl_flow_instr; // @[DecodeStage.scala 46:46]
  wire [9:0] decoders_0_io_enq_ctrl_flow_foldpc; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_exceptionVec_1; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_exceptionVec_12; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_pd_isRVC; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_enq_ctrl_flow_pd_brType; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_pd_isCall; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_pd_isRet; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_pred_taken; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_0_io_enq_ctrl_flow_ftqPtr_value; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_0_io_enq_ctrl_flow_ftqOffset; // @[DecodeStage.scala 46:46]
  wire [9:0] decoders_0_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_0_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_0_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 46:46]
  wire [3:0] decoders_0_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 46:46]
  wire [6:0] decoders_0_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_isXSTrap; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 46:46]
  wire [3:0] decoders_0_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 46:46]
  wire [19:0] decoders_0_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 46:46]
  wire  decoders_0_io_csrCtrl_svinval_enable; // @[DecodeStage.scala 46:46]
  wire [31:0] decoders_1_io_enq_ctrl_flow_instr; // @[DecodeStage.scala 46:46]
  wire [9:0] decoders_1_io_enq_ctrl_flow_foldpc; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_exceptionVec_1; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_exceptionVec_12; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_pd_isRVC; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_enq_ctrl_flow_pd_brType; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_pd_isCall; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_pd_isRet; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_pred_taken; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_1_io_enq_ctrl_flow_ftqPtr_value; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_1_io_enq_ctrl_flow_ftqOffset; // @[DecodeStage.scala 46:46]
  wire [9:0] decoders_1_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_1_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_1_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 46:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 46:46]
  wire [3:0] decoders_1_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 46:46]
  wire [6:0] decoders_1_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_isXSTrap; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 46:46]
  wire [3:0] decoders_1_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 46:46]
  wire [19:0] decoders_1_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 46:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 46:46]
  wire [2:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 46:46]
  wire  decoders_1_io_csrCtrl_svinval_enable; // @[DecodeStage.scala 46:46]
  wire  _io_intRat_0_0_hold_T = ~io_out_0_ready; // @[DecodeStage.scala 65:36]
  wire [1:0] _hasValid_T = {io_in_1_valid,io_in_0_valid}; // @[DecodeStage.scala 75:46]
  wire  hasValid = |_hasValid_T; // @[DecodeStage.scala 75:53]
  wire  _T_2 = ~io_in_0_ready; // @[DecodeStage.scala 87:91]
  wire  _T_4 = ~io_in_1_ready; // @[DecodeStage.scala 87:91]
  reg  fusionValid_0; // @[DecodeStage.scala 94:28]
  reg  inFire_0; // @[DecodeStage.scala 95:39]
  reg  inFire_1; // @[DecodeStage.scala 95:39]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  DecodeUnit decoders_0 ( // @[DecodeStage.scala 46:46]
    .io_enq_ctrl_flow_instr(decoders_0_io_enq_ctrl_flow_instr),
    .io_enq_ctrl_flow_foldpc(decoders_0_io_enq_ctrl_flow_foldpc),
    .io_enq_ctrl_flow_exceptionVec_1(decoders_0_io_enq_ctrl_flow_exceptionVec_1),
    .io_enq_ctrl_flow_exceptionVec_12(decoders_0_io_enq_ctrl_flow_exceptionVec_12),
    .io_enq_ctrl_flow_trigger_frontendHit_0(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_0),
    .io_enq_ctrl_flow_trigger_frontendHit_1(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_1),
    .io_enq_ctrl_flow_trigger_frontendHit_2(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_2),
    .io_enq_ctrl_flow_trigger_frontendHit_3(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_3),
    .io_enq_ctrl_flow_trigger_backendEn_0(decoders_0_io_enq_ctrl_flow_trigger_backendEn_0),
    .io_enq_ctrl_flow_trigger_backendEn_1(decoders_0_io_enq_ctrl_flow_trigger_backendEn_1),
    .io_enq_ctrl_flow_pd_isRVC(decoders_0_io_enq_ctrl_flow_pd_isRVC),
    .io_enq_ctrl_flow_pd_brType(decoders_0_io_enq_ctrl_flow_pd_brType),
    .io_enq_ctrl_flow_pd_isCall(decoders_0_io_enq_ctrl_flow_pd_isCall),
    .io_enq_ctrl_flow_pd_isRet(decoders_0_io_enq_ctrl_flow_pd_isRet),
    .io_enq_ctrl_flow_pred_taken(decoders_0_io_enq_ctrl_flow_pred_taken),
    .io_enq_ctrl_flow_crossPageIPFFix(decoders_0_io_enq_ctrl_flow_crossPageIPFFix),
    .io_enq_ctrl_flow_ftqPtr_flag(decoders_0_io_enq_ctrl_flow_ftqPtr_flag),
    .io_enq_ctrl_flow_ftqPtr_value(decoders_0_io_enq_ctrl_flow_ftqPtr_value),
    .io_enq_ctrl_flow_ftqOffset(decoders_0_io_enq_ctrl_flow_ftqOffset),
    .io_deq_cf_ctrl_cf_foldpc(decoders_0_io_deq_cf_ctrl_cf_foldpc),
    .io_deq_cf_ctrl_cf_exceptionVec_1(decoders_0_io_deq_cf_ctrl_cf_exceptionVec_1),
    .io_deq_cf_ctrl_cf_exceptionVec_2(decoders_0_io_deq_cf_ctrl_cf_exceptionVec_2),
    .io_deq_cf_ctrl_cf_exceptionVec_12(decoders_0_io_deq_cf_ctrl_cf_exceptionVec_12),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_0(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_0),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_1(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_1),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_2(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_2),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_3(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendEn_0(decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_0),
    .io_deq_cf_ctrl_cf_trigger_backendEn_1(decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_1),
    .io_deq_cf_ctrl_cf_pd_isRVC(decoders_0_io_deq_cf_ctrl_cf_pd_isRVC),
    .io_deq_cf_ctrl_cf_pd_brType(decoders_0_io_deq_cf_ctrl_cf_pd_brType),
    .io_deq_cf_ctrl_cf_pd_isCall(decoders_0_io_deq_cf_ctrl_cf_pd_isCall),
    .io_deq_cf_ctrl_cf_pd_isRet(decoders_0_io_deq_cf_ctrl_cf_pd_isRet),
    .io_deq_cf_ctrl_cf_pred_taken(decoders_0_io_deq_cf_ctrl_cf_pred_taken),
    .io_deq_cf_ctrl_cf_crossPageIPFFix(decoders_0_io_deq_cf_ctrl_cf_crossPageIPFFix),
    .io_deq_cf_ctrl_cf_ftqPtr_flag(decoders_0_io_deq_cf_ctrl_cf_ftqPtr_flag),
    .io_deq_cf_ctrl_cf_ftqPtr_value(decoders_0_io_deq_cf_ctrl_cf_ftqPtr_value),
    .io_deq_cf_ctrl_cf_ftqOffset(decoders_0_io_deq_cf_ctrl_cf_ftqOffset),
    .io_deq_cf_ctrl_ctrl_srcType_0(decoders_0_io_deq_cf_ctrl_ctrl_srcType_0),
    .io_deq_cf_ctrl_ctrl_srcType_1(decoders_0_io_deq_cf_ctrl_ctrl_srcType_1),
    .io_deq_cf_ctrl_ctrl_srcType_2(decoders_0_io_deq_cf_ctrl_ctrl_srcType_2),
    .io_deq_cf_ctrl_ctrl_lsrc_0(decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0),
    .io_deq_cf_ctrl_ctrl_lsrc_1(decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1),
    .io_deq_cf_ctrl_ctrl_lsrc_2(decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2),
    .io_deq_cf_ctrl_ctrl_ldest(decoders_0_io_deq_cf_ctrl_ctrl_ldest),
    .io_deq_cf_ctrl_ctrl_fuType(decoders_0_io_deq_cf_ctrl_ctrl_fuType),
    .io_deq_cf_ctrl_ctrl_fuOpType(decoders_0_io_deq_cf_ctrl_ctrl_fuOpType),
    .io_deq_cf_ctrl_ctrl_rfWen(decoders_0_io_deq_cf_ctrl_ctrl_rfWen),
    .io_deq_cf_ctrl_ctrl_fpWen(decoders_0_io_deq_cf_ctrl_ctrl_fpWen),
    .io_deq_cf_ctrl_ctrl_isXSTrap(decoders_0_io_deq_cf_ctrl_ctrl_isXSTrap),
    .io_deq_cf_ctrl_ctrl_noSpecExec(decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec),
    .io_deq_cf_ctrl_ctrl_blockBackward(decoders_0_io_deq_cf_ctrl_ctrl_blockBackward),
    .io_deq_cf_ctrl_ctrl_flushPipe(decoders_0_io_deq_cf_ctrl_ctrl_flushPipe),
    .io_deq_cf_ctrl_ctrl_selImm(decoders_0_io_deq_cf_ctrl_ctrl_selImm),
    .io_deq_cf_ctrl_ctrl_imm(decoders_0_io_deq_cf_ctrl_ctrl_imm),
    .io_deq_cf_ctrl_ctrl_fpu_isAddSub(decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagIn(decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagOut(decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut),
    .io_deq_cf_ctrl_ctrl_fpu_fromInt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt),
    .io_deq_cf_ctrl_ctrl_fpu_wflags(decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags),
    .io_deq_cf_ctrl_ctrl_fpu_fpWen(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen),
    .io_deq_cf_ctrl_ctrl_fpu_fmaCmd(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd),
    .io_deq_cf_ctrl_ctrl_fpu_div(decoders_0_io_deq_cf_ctrl_ctrl_fpu_div),
    .io_deq_cf_ctrl_ctrl_fpu_sqrt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt),
    .io_deq_cf_ctrl_ctrl_fpu_fcvt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt),
    .io_deq_cf_ctrl_ctrl_fpu_typ(decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ),
    .io_deq_cf_ctrl_ctrl_fpu_fmt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt),
    .io_deq_cf_ctrl_ctrl_fpu_ren3(decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3),
    .io_deq_cf_ctrl_ctrl_fpu_rm(decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm),
    .io_deq_cf_ctrl_ctrl_isMove(decoders_0_io_deq_cf_ctrl_ctrl_isMove),
    .io_csrCtrl_svinval_enable(decoders_0_io_csrCtrl_svinval_enable)
  );
  DecodeUnit decoders_1 ( // @[DecodeStage.scala 46:46]
    .io_enq_ctrl_flow_instr(decoders_1_io_enq_ctrl_flow_instr),
    .io_enq_ctrl_flow_foldpc(decoders_1_io_enq_ctrl_flow_foldpc),
    .io_enq_ctrl_flow_exceptionVec_1(decoders_1_io_enq_ctrl_flow_exceptionVec_1),
    .io_enq_ctrl_flow_exceptionVec_12(decoders_1_io_enq_ctrl_flow_exceptionVec_12),
    .io_enq_ctrl_flow_trigger_frontendHit_0(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_0),
    .io_enq_ctrl_flow_trigger_frontendHit_1(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_1),
    .io_enq_ctrl_flow_trigger_frontendHit_2(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_2),
    .io_enq_ctrl_flow_trigger_frontendHit_3(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_3),
    .io_enq_ctrl_flow_trigger_backendEn_0(decoders_1_io_enq_ctrl_flow_trigger_backendEn_0),
    .io_enq_ctrl_flow_trigger_backendEn_1(decoders_1_io_enq_ctrl_flow_trigger_backendEn_1),
    .io_enq_ctrl_flow_pd_isRVC(decoders_1_io_enq_ctrl_flow_pd_isRVC),
    .io_enq_ctrl_flow_pd_brType(decoders_1_io_enq_ctrl_flow_pd_brType),
    .io_enq_ctrl_flow_pd_isCall(decoders_1_io_enq_ctrl_flow_pd_isCall),
    .io_enq_ctrl_flow_pd_isRet(decoders_1_io_enq_ctrl_flow_pd_isRet),
    .io_enq_ctrl_flow_pred_taken(decoders_1_io_enq_ctrl_flow_pred_taken),
    .io_enq_ctrl_flow_crossPageIPFFix(decoders_1_io_enq_ctrl_flow_crossPageIPFFix),
    .io_enq_ctrl_flow_ftqPtr_flag(decoders_1_io_enq_ctrl_flow_ftqPtr_flag),
    .io_enq_ctrl_flow_ftqPtr_value(decoders_1_io_enq_ctrl_flow_ftqPtr_value),
    .io_enq_ctrl_flow_ftqOffset(decoders_1_io_enq_ctrl_flow_ftqOffset),
    .io_deq_cf_ctrl_cf_foldpc(decoders_1_io_deq_cf_ctrl_cf_foldpc),
    .io_deq_cf_ctrl_cf_exceptionVec_1(decoders_1_io_deq_cf_ctrl_cf_exceptionVec_1),
    .io_deq_cf_ctrl_cf_exceptionVec_2(decoders_1_io_deq_cf_ctrl_cf_exceptionVec_2),
    .io_deq_cf_ctrl_cf_exceptionVec_12(decoders_1_io_deq_cf_ctrl_cf_exceptionVec_12),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_0(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_0),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_1(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_1),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_2(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_2),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_3(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendEn_0(decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_0),
    .io_deq_cf_ctrl_cf_trigger_backendEn_1(decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_1),
    .io_deq_cf_ctrl_cf_pd_isRVC(decoders_1_io_deq_cf_ctrl_cf_pd_isRVC),
    .io_deq_cf_ctrl_cf_pd_brType(decoders_1_io_deq_cf_ctrl_cf_pd_brType),
    .io_deq_cf_ctrl_cf_pd_isCall(decoders_1_io_deq_cf_ctrl_cf_pd_isCall),
    .io_deq_cf_ctrl_cf_pd_isRet(decoders_1_io_deq_cf_ctrl_cf_pd_isRet),
    .io_deq_cf_ctrl_cf_pred_taken(decoders_1_io_deq_cf_ctrl_cf_pred_taken),
    .io_deq_cf_ctrl_cf_crossPageIPFFix(decoders_1_io_deq_cf_ctrl_cf_crossPageIPFFix),
    .io_deq_cf_ctrl_cf_ftqPtr_flag(decoders_1_io_deq_cf_ctrl_cf_ftqPtr_flag),
    .io_deq_cf_ctrl_cf_ftqPtr_value(decoders_1_io_deq_cf_ctrl_cf_ftqPtr_value),
    .io_deq_cf_ctrl_cf_ftqOffset(decoders_1_io_deq_cf_ctrl_cf_ftqOffset),
    .io_deq_cf_ctrl_ctrl_srcType_0(decoders_1_io_deq_cf_ctrl_ctrl_srcType_0),
    .io_deq_cf_ctrl_ctrl_srcType_1(decoders_1_io_deq_cf_ctrl_ctrl_srcType_1),
    .io_deq_cf_ctrl_ctrl_srcType_2(decoders_1_io_deq_cf_ctrl_ctrl_srcType_2),
    .io_deq_cf_ctrl_ctrl_lsrc_0(decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0),
    .io_deq_cf_ctrl_ctrl_lsrc_1(decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1),
    .io_deq_cf_ctrl_ctrl_lsrc_2(decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2),
    .io_deq_cf_ctrl_ctrl_ldest(decoders_1_io_deq_cf_ctrl_ctrl_ldest),
    .io_deq_cf_ctrl_ctrl_fuType(decoders_1_io_deq_cf_ctrl_ctrl_fuType),
    .io_deq_cf_ctrl_ctrl_fuOpType(decoders_1_io_deq_cf_ctrl_ctrl_fuOpType),
    .io_deq_cf_ctrl_ctrl_rfWen(decoders_1_io_deq_cf_ctrl_ctrl_rfWen),
    .io_deq_cf_ctrl_ctrl_fpWen(decoders_1_io_deq_cf_ctrl_ctrl_fpWen),
    .io_deq_cf_ctrl_ctrl_isXSTrap(decoders_1_io_deq_cf_ctrl_ctrl_isXSTrap),
    .io_deq_cf_ctrl_ctrl_noSpecExec(decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec),
    .io_deq_cf_ctrl_ctrl_blockBackward(decoders_1_io_deq_cf_ctrl_ctrl_blockBackward),
    .io_deq_cf_ctrl_ctrl_flushPipe(decoders_1_io_deq_cf_ctrl_ctrl_flushPipe),
    .io_deq_cf_ctrl_ctrl_selImm(decoders_1_io_deq_cf_ctrl_ctrl_selImm),
    .io_deq_cf_ctrl_ctrl_imm(decoders_1_io_deq_cf_ctrl_ctrl_imm),
    .io_deq_cf_ctrl_ctrl_fpu_isAddSub(decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagIn(decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagOut(decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut),
    .io_deq_cf_ctrl_ctrl_fpu_fromInt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt),
    .io_deq_cf_ctrl_ctrl_fpu_wflags(decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags),
    .io_deq_cf_ctrl_ctrl_fpu_fpWen(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen),
    .io_deq_cf_ctrl_ctrl_fpu_fmaCmd(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd),
    .io_deq_cf_ctrl_ctrl_fpu_div(decoders_1_io_deq_cf_ctrl_ctrl_fpu_div),
    .io_deq_cf_ctrl_ctrl_fpu_sqrt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt),
    .io_deq_cf_ctrl_ctrl_fpu_fcvt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt),
    .io_deq_cf_ctrl_ctrl_fpu_typ(decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ),
    .io_deq_cf_ctrl_ctrl_fpu_fmt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt),
    .io_deq_cf_ctrl_ctrl_fpu_ren3(decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3),
    .io_deq_cf_ctrl_ctrl_fpu_rm(decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm),
    .io_deq_cf_ctrl_ctrl_isMove(decoders_1_io_deq_cf_ctrl_ctrl_isMove),
    .io_csrCtrl_svinval_enable(decoders_1_io_csrCtrl_svinval_enable)
  );
  assign io_in_0_ready = io_out_0_ready; // @[DecodeStage.scala 59:26]
  assign io_in_1_ready = io_out_1_ready; // @[DecodeStage.scala 59:26]
  assign io_out_0_valid = io_in_0_valid; // @[DecodeStage.scala 56:26]
  assign io_out_0_bits_cf_foldpc = decoders_0_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_exceptionVec_1 = decoders_0_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_exceptionVec_2 = decoders_0_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_exceptionVec_12 = decoders_0_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_trigger_frontendHit_0 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_trigger_frontendHit_1 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_trigger_frontendHit_2 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_trigger_frontendHit_3 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_trigger_backendEn_0 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_trigger_backendEn_1 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_pd_isRVC = decoders_0_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_pd_brType = decoders_0_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_pd_isCall = decoders_0_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_pd_isRet = decoders_0_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_pred_taken = decoders_0_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_crossPageIPFFix = decoders_0_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_ftqPtr_flag = decoders_0_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_ftqPtr_value = decoders_0_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_cf_ftqOffset = decoders_0_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_srcType_0 = decoders_0_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_srcType_1 = decoders_0_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_srcType_2 = decoders_0_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_lsrc_0 = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_lsrc_1 = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_ldest = decoders_0_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fuType = decoders_0_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fuOpType = decoders_0_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_rfWen = decoders_0_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpWen = decoders_0_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_isXSTrap = decoders_0_io_deq_cf_ctrl_ctrl_isXSTrap; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_noSpecExec = decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_blockBackward = decoders_0_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_flushPipe = decoders_0_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_selImm = decoders_0_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_imm = decoders_0_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_isAddSub = decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_fromInt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_wflags = decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_fpWen = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_div = decoders_0_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_sqrt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_fcvt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_typ = decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_fmt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_ren3 = decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_fpu_rm = decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 57:26]
  assign io_out_0_bits_ctrl_isMove = decoders_0_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 57:26]
  assign io_out_1_valid = io_in_1_valid; // @[DecodeStage.scala 56:26]
  assign io_out_1_bits_cf_foldpc = decoders_1_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_exceptionVec_1 = decoders_1_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_exceptionVec_2 = decoders_1_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_exceptionVec_12 = decoders_1_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_trigger_frontendHit_0 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_trigger_frontendHit_1 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_trigger_frontendHit_2 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_trigger_frontendHit_3 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_trigger_backendEn_0 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_trigger_backendEn_1 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_pd_isRVC = decoders_1_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_pd_brType = decoders_1_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_pd_isCall = decoders_1_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_pd_isRet = decoders_1_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_pred_taken = decoders_1_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_crossPageIPFFix = decoders_1_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_ftqPtr_flag = decoders_1_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_ftqPtr_value = decoders_1_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_cf_ftqOffset = decoders_1_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_srcType_0 = decoders_1_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_srcType_1 = decoders_1_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_srcType_2 = decoders_1_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_lsrc_0 = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_lsrc_1 = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_lsrc_2 = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_ldest = decoders_1_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fuType = decoders_1_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fuOpType = decoders_1_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_rfWen = decoders_1_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpWen = decoders_1_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_isXSTrap = decoders_1_io_deq_cf_ctrl_ctrl_isXSTrap; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_noSpecExec = decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_blockBackward = decoders_1_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_flushPipe = decoders_1_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_selImm = decoders_1_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_imm = decoders_1_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_isAddSub = decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_fromInt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_wflags = decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_fpWen = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_div = decoders_1_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_sqrt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_fcvt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_typ = decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_fmt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_ren3 = decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_fpu_rm = decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 57:26]
  assign io_out_1_bits_ctrl_isMove = decoders_1_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 57:26]
  assign io_intRat_0_0_hold = ~io_out_0_ready; // @[DecodeStage.scala 65:36]
  assign io_intRat_0_0_addr = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 62:26]
  assign io_intRat_0_1_hold = ~io_out_0_ready; // @[DecodeStage.scala 65:36]
  assign io_intRat_0_1_addr = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 63:26]
  assign io_intRat_1_0_hold = ~io_out_1_ready; // @[DecodeStage.scala 65:36]
  assign io_intRat_1_0_addr = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 62:26]
  assign io_intRat_1_1_hold = ~io_out_1_ready; // @[DecodeStage.scala 65:36]
  assign io_intRat_1_1_addr = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 63:26]
  assign io_fpRat_0_0_hold = ~io_out_0_ready; // @[DecodeStage.scala 72:35]
  assign io_fpRat_0_0_addr = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 68:25]
  assign io_fpRat_0_1_hold = ~io_out_0_ready; // @[DecodeStage.scala 72:35]
  assign io_fpRat_0_1_addr = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 69:25]
  assign io_fpRat_0_2_hold = ~io_out_0_ready; // @[DecodeStage.scala 72:35]
  assign io_fpRat_0_2_addr = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 70:25]
  assign io_fpRat_1_0_hold = ~io_out_1_ready; // @[DecodeStage.scala 72:35]
  assign io_fpRat_1_0_addr = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 68:25]
  assign io_fpRat_1_1_hold = ~io_out_1_ready; // @[DecodeStage.scala 72:35]
  assign io_fpRat_1_1_addr = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 69:25]
  assign io_fpRat_1_2_hold = ~io_out_1_ready; // @[DecodeStage.scala 72:35]
  assign io_fpRat_1_2_addr = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 70:25]
  assign io_stallReason_in_backReason_valid = io_stallReason_out_backReason_valid; // @[DecodeStage.scala 79:32]
  assign io_stallReason_in_backReason_bits = io_stallReason_out_backReason_bits; // @[DecodeStage.scala 79:32]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{4'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{4'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign decoders_0_io_enq_ctrl_flow_instr = io_in_0_bits_instr; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_foldpc = io_in_0_bits_foldpc; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_exceptionVec_1 = io_in_0_bits_exceptionVec_1; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_exceptionVec_12 = io_in_0_bits_exceptionVec_12; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_0 = io_in_0_bits_trigger_frontendHit_0; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_1 = io_in_0_bits_trigger_frontendHit_1; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_2 = io_in_0_bits_trigger_frontendHit_2; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_3 = io_in_0_bits_trigger_frontendHit_3; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendEn_0 = io_in_0_bits_trigger_backendEn_0; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendEn_1 = io_in_0_bits_trigger_backendEn_1; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_pd_isRVC = io_in_0_bits_pd_isRVC; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_pd_brType = io_in_0_bits_pd_brType; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_pd_isCall = io_in_0_bits_pd_isCall; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_pd_isRet = io_in_0_bits_pd_isRet; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_pred_taken = io_in_0_bits_pred_taken; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_crossPageIPFFix = io_in_0_bits_crossPageIPFFix; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_ftqPtr_flag = io_in_0_bits_ftqPtr_flag; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_ftqPtr_value = io_in_0_bits_ftqPtr_value; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_enq_ctrl_flow_ftqOffset = io_in_0_bits_ftqOffset; // @[DecodeStage.scala 50:34]
  assign decoders_0_io_csrCtrl_svinval_enable = io_csrCtrl_svinval_enable; // @[DecodeStage.scala 53:28]
  assign decoders_1_io_enq_ctrl_flow_instr = io_in_1_bits_instr; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_foldpc = io_in_1_bits_foldpc; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_exceptionVec_1 = io_in_1_bits_exceptionVec_1; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_exceptionVec_12 = io_in_1_bits_exceptionVec_12; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_0 = io_in_1_bits_trigger_frontendHit_0; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_1 = io_in_1_bits_trigger_frontendHit_1; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_2 = io_in_1_bits_trigger_frontendHit_2; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_3 = io_in_1_bits_trigger_frontendHit_3; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendEn_0 = io_in_1_bits_trigger_backendEn_0; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendEn_1 = io_in_1_bits_trigger_backendEn_1; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_pd_isRVC = io_in_1_bits_pd_isRVC; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_pd_brType = io_in_1_bits_pd_brType; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_pd_isCall = io_in_1_bits_pd_isCall; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_pd_isRet = io_in_1_bits_pd_isRet; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_pred_taken = io_in_1_bits_pred_taken; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_crossPageIPFFix = io_in_1_bits_crossPageIPFFix; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_ftqPtr_flag = io_in_1_bits_ftqPtr_flag; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_ftqPtr_value = io_in_1_bits_ftqPtr_value; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_enq_ctrl_flow_ftqOffset = io_in_1_bits_ftqOffset; // @[DecodeStage.scala 50:34]
  assign decoders_1_io_csrCtrl_svinval_enable = io_csrCtrl_svinval_enable; // @[DecodeStage.scala 53:28]
  always @(posedge clock) begin
    fusionValid_0 <= io_fusion_0; // @[DecodeStage.scala 94:28]
    inFire_0 <= io_in_0_valid & _T_2; // @[DecodeStage.scala 95:49]
    inFire_1 <= io_in_1_valid & _T_4; // @[DecodeStage.scala 95:49]
    io_perf_0_value_REG <= fusionValid_0; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= inFire_0 + inFire_1; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= hasValid & _io_intRat_0_0_hold_T; // @[DecodeStage.scala 99:38]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= io_in_0_valid + io_in_1_valid; // @[Bitwise.scala 48:55]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
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
  fusionValid_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  inFire_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  inFire_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_10[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

