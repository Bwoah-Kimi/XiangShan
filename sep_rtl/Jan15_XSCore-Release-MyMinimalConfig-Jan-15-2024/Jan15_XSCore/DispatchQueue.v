module DispatchQueue(
  input         clock,
  input         reset,
  output        io_enq_canAccept,
  input         io_enq_needAlloc_0,
  input         io_enq_needAlloc_1,
  input         io_enq_req_0_valid,
  input         io_enq_req_0_bits_cf_trigger_backendEn_0,
  input         io_enq_req_0_bits_cf_trigger_backendEn_1,
  input         io_enq_req_0_bits_cf_pd_isRVC,
  input  [1:0]  io_enq_req_0_bits_cf_pd_brType,
  input         io_enq_req_0_bits_cf_pd_isCall,
  input         io_enq_req_0_bits_cf_pd_isRet,
  input         io_enq_req_0_bits_cf_pred_taken,
  input         io_enq_req_0_bits_cf_storeSetHit,
  input         io_enq_req_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_enq_req_0_bits_cf_ssid,
  input         io_enq_req_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_enq_req_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_enq_req_0_bits_cf_ftqOffset,
  input  [1:0]  io_enq_req_0_bits_ctrl_srcType_0,
  input  [1:0]  io_enq_req_0_bits_ctrl_srcType_1,
  input  [1:0]  io_enq_req_0_bits_ctrl_srcType_2,
  input  [3:0]  io_enq_req_0_bits_ctrl_fuType,
  input  [6:0]  io_enq_req_0_bits_ctrl_fuOpType,
  input         io_enq_req_0_bits_ctrl_rfWen,
  input         io_enq_req_0_bits_ctrl_fpWen,
  input  [3:0]  io_enq_req_0_bits_ctrl_selImm,
  input  [19:0] io_enq_req_0_bits_ctrl_imm,
  input         io_enq_req_0_bits_ctrl_fpu_isAddSub,
  input         io_enq_req_0_bits_ctrl_fpu_typeTagIn,
  input         io_enq_req_0_bits_ctrl_fpu_typeTagOut,
  input         io_enq_req_0_bits_ctrl_fpu_fromInt,
  input         io_enq_req_0_bits_ctrl_fpu_wflags,
  input         io_enq_req_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_enq_req_0_bits_ctrl_fpu_fmaCmd,
  input         io_enq_req_0_bits_ctrl_fpu_div,
  input         io_enq_req_0_bits_ctrl_fpu_sqrt,
  input         io_enq_req_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_enq_req_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_enq_req_0_bits_ctrl_fpu_fmt,
  input         io_enq_req_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_enq_req_0_bits_ctrl_fpu_rm,
  input  [5:0]  io_enq_req_0_bits_psrc_0,
  input  [5:0]  io_enq_req_0_bits_psrc_1,
  input  [5:0]  io_enq_req_0_bits_psrc_2,
  input  [5:0]  io_enq_req_0_bits_pdest,
  input         io_enq_req_0_bits_robIdx_flag,
  input  [4:0]  io_enq_req_0_bits_robIdx_value,
  input         io_enq_req_1_valid,
  input         io_enq_req_1_bits_cf_trigger_backendEn_0,
  input         io_enq_req_1_bits_cf_trigger_backendEn_1,
  input         io_enq_req_1_bits_cf_pd_isRVC,
  input  [1:0]  io_enq_req_1_bits_cf_pd_brType,
  input         io_enq_req_1_bits_cf_pd_isCall,
  input         io_enq_req_1_bits_cf_pd_isRet,
  input         io_enq_req_1_bits_cf_pred_taken,
  input         io_enq_req_1_bits_cf_storeSetHit,
  input         io_enq_req_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_enq_req_1_bits_cf_ssid,
  input         io_enq_req_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_enq_req_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_enq_req_1_bits_cf_ftqOffset,
  input  [1:0]  io_enq_req_1_bits_ctrl_srcType_0,
  input  [1:0]  io_enq_req_1_bits_ctrl_srcType_1,
  input  [1:0]  io_enq_req_1_bits_ctrl_srcType_2,
  input  [3:0]  io_enq_req_1_bits_ctrl_fuType,
  input  [6:0]  io_enq_req_1_bits_ctrl_fuOpType,
  input         io_enq_req_1_bits_ctrl_rfWen,
  input         io_enq_req_1_bits_ctrl_fpWen,
  input  [3:0]  io_enq_req_1_bits_ctrl_selImm,
  input  [19:0] io_enq_req_1_bits_ctrl_imm,
  input         io_enq_req_1_bits_ctrl_fpu_isAddSub,
  input         io_enq_req_1_bits_ctrl_fpu_typeTagIn,
  input         io_enq_req_1_bits_ctrl_fpu_typeTagOut,
  input         io_enq_req_1_bits_ctrl_fpu_fromInt,
  input         io_enq_req_1_bits_ctrl_fpu_wflags,
  input         io_enq_req_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_enq_req_1_bits_ctrl_fpu_fmaCmd,
  input         io_enq_req_1_bits_ctrl_fpu_div,
  input         io_enq_req_1_bits_ctrl_fpu_sqrt,
  input         io_enq_req_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_enq_req_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_enq_req_1_bits_ctrl_fpu_fmt,
  input         io_enq_req_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_enq_req_1_bits_ctrl_fpu_rm,
  input  [5:0]  io_enq_req_1_bits_psrc_0,
  input  [5:0]  io_enq_req_1_bits_psrc_1,
  input  [5:0]  io_enq_req_1_bits_psrc_2,
  input  [5:0]  io_enq_req_1_bits_pdest,
  input         io_enq_req_1_bits_robIdx_flag,
  input  [4:0]  io_enq_req_1_bits_robIdx_value,
  input         io_deq_0_ready,
  output        io_deq_0_valid,
  output        io_deq_0_bits_cf_trigger_backendEn_0,
  output        io_deq_0_bits_cf_trigger_backendEn_1,
  output        io_deq_0_bits_cf_pd_isRVC,
  output [1:0]  io_deq_0_bits_cf_pd_brType,
  output        io_deq_0_bits_cf_pd_isCall,
  output        io_deq_0_bits_cf_pd_isRet,
  output        io_deq_0_bits_cf_pred_taken,
  output        io_deq_0_bits_cf_storeSetHit,
  output        io_deq_0_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_0_bits_cf_ssid,
  output        io_deq_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_deq_0_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_0_bits_cf_ftqOffset,
  output [1:0]  io_deq_0_bits_ctrl_srcType_0,
  output [1:0]  io_deq_0_bits_ctrl_srcType_1,
  output [1:0]  io_deq_0_bits_ctrl_srcType_2,
  output [3:0]  io_deq_0_bits_ctrl_fuType,
  output [6:0]  io_deq_0_bits_ctrl_fuOpType,
  output        io_deq_0_bits_ctrl_rfWen,
  output        io_deq_0_bits_ctrl_fpWen,
  output [3:0]  io_deq_0_bits_ctrl_selImm,
  output [19:0] io_deq_0_bits_ctrl_imm,
  output        io_deq_0_bits_ctrl_fpu_isAddSub,
  output        io_deq_0_bits_ctrl_fpu_typeTagIn,
  output        io_deq_0_bits_ctrl_fpu_typeTagOut,
  output        io_deq_0_bits_ctrl_fpu_fromInt,
  output        io_deq_0_bits_ctrl_fpu_wflags,
  output        io_deq_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_deq_0_bits_ctrl_fpu_fmaCmd,
  output        io_deq_0_bits_ctrl_fpu_div,
  output        io_deq_0_bits_ctrl_fpu_sqrt,
  output        io_deq_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_deq_0_bits_ctrl_fpu_typ,
  output [1:0]  io_deq_0_bits_ctrl_fpu_fmt,
  output        io_deq_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_deq_0_bits_ctrl_fpu_rm,
  output [5:0]  io_deq_0_bits_psrc_0,
  output [5:0]  io_deq_0_bits_psrc_1,
  output [5:0]  io_deq_0_bits_psrc_2,
  output [5:0]  io_deq_0_bits_pdest,
  output        io_deq_0_bits_robIdx_flag,
  output [4:0]  io_deq_0_bits_robIdx_value,
  output        io_deq_0_bits_lqIdx_flag,
  output [3:0]  io_deq_0_bits_lqIdx_value,
  output        io_deq_0_bits_sqIdx_flag,
  output [3:0]  io_deq_0_bits_sqIdx_value,
  input         io_deq_1_ready,
  output        io_deq_1_valid,
  output        io_deq_1_bits_cf_trigger_backendEn_0,
  output        io_deq_1_bits_cf_trigger_backendEn_1,
  output        io_deq_1_bits_cf_pd_isRVC,
  output [1:0]  io_deq_1_bits_cf_pd_brType,
  output        io_deq_1_bits_cf_pd_isCall,
  output        io_deq_1_bits_cf_pd_isRet,
  output        io_deq_1_bits_cf_pred_taken,
  output        io_deq_1_bits_cf_storeSetHit,
  output        io_deq_1_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_1_bits_cf_ssid,
  output        io_deq_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_deq_1_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_1_bits_cf_ftqOffset,
  output [1:0]  io_deq_1_bits_ctrl_srcType_0,
  output [1:0]  io_deq_1_bits_ctrl_srcType_1,
  output [3:0]  io_deq_1_bits_ctrl_fuType,
  output [6:0]  io_deq_1_bits_ctrl_fuOpType,
  output        io_deq_1_bits_ctrl_rfWen,
  output        io_deq_1_bits_ctrl_fpWen,
  output [3:0]  io_deq_1_bits_ctrl_selImm,
  output [19:0] io_deq_1_bits_ctrl_imm,
  output [5:0]  io_deq_1_bits_psrc_0,
  output [5:0]  io_deq_1_bits_psrc_1,
  output [5:0]  io_deq_1_bits_pdest,
  output        io_deq_1_bits_robIdx_flag,
  output [4:0]  io_deq_1_bits_robIdx_value,
  output        io_deq_1_bits_lqIdx_flag,
  output [3:0]  io_deq_1_bits_lqIdx_value,
  output        io_deq_1_bits_sqIdx_flag,
  output [3:0]  io_deq_1_bits_sqIdx_value,
  input         io_deq_2_ready,
  output        io_deq_2_valid,
  output        io_deq_2_bits_cf_trigger_backendEn_0,
  output        io_deq_2_bits_cf_trigger_backendEn_1,
  output        io_deq_2_bits_cf_pd_isRVC,
  output [1:0]  io_deq_2_bits_cf_pd_brType,
  output        io_deq_2_bits_cf_pd_isCall,
  output        io_deq_2_bits_cf_pd_isRet,
  output        io_deq_2_bits_cf_pred_taken,
  output        io_deq_2_bits_cf_storeSetHit,
  output        io_deq_2_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_2_bits_cf_ssid,
  output        io_deq_2_bits_cf_ftqPtr_flag,
  output [2:0]  io_deq_2_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_2_bits_cf_ftqOffset,
  output [1:0]  io_deq_2_bits_ctrl_srcType_0,
  output [1:0]  io_deq_2_bits_ctrl_srcType_1,
  output [3:0]  io_deq_2_bits_ctrl_fuType,
  output [6:0]  io_deq_2_bits_ctrl_fuOpType,
  output        io_deq_2_bits_ctrl_rfWen,
  output        io_deq_2_bits_ctrl_fpWen,
  output [19:0] io_deq_2_bits_ctrl_imm,
  output [5:0]  io_deq_2_bits_psrc_0,
  output [5:0]  io_deq_2_bits_psrc_1,
  output [5:0]  io_deq_2_bits_pdest,
  output        io_deq_2_bits_robIdx_flag,
  output [4:0]  io_deq_2_bits_robIdx_value,
  input         io_deq_3_ready,
  output        io_deq_3_valid,
  output        io_deq_3_bits_cf_trigger_backendEn_0,
  output        io_deq_3_bits_cf_trigger_backendEn_1,
  output        io_deq_3_bits_cf_pd_isRVC,
  output [1:0]  io_deq_3_bits_cf_pd_brType,
  output        io_deq_3_bits_cf_pd_isCall,
  output        io_deq_3_bits_cf_pd_isRet,
  output        io_deq_3_bits_cf_pred_taken,
  output        io_deq_3_bits_cf_storeSetHit,
  output        io_deq_3_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_3_bits_cf_ssid,
  output        io_deq_3_bits_cf_ftqPtr_flag,
  output [2:0]  io_deq_3_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_3_bits_cf_ftqOffset,
  output [1:0]  io_deq_3_bits_ctrl_srcType_0,
  output [1:0]  io_deq_3_bits_ctrl_srcType_1,
  output [3:0]  io_deq_3_bits_ctrl_fuType,
  output [6:0]  io_deq_3_bits_ctrl_fuOpType,
  output        io_deq_3_bits_ctrl_rfWen,
  output        io_deq_3_bits_ctrl_fpWen,
  output [19:0] io_deq_3_bits_ctrl_imm,
  output [5:0]  io_deq_3_bits_psrc_0,
  output [5:0]  io_deq_3_bits_psrc_1,
  output [5:0]  io_deq_3_bits_pdest,
  output        io_deq_3_bits_robIdx_flag,
  output [4:0]  io_deq_3_bits_robIdx_value,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [2:0]  io_deqNext_0_cf_ftqPtr_value,
  output [2:0]  io_deqNext_0_cf_ftqOffset,
  output [1:0]  io_deqNext_0_ctrl_srcType_0,
  output [1:0]  io_deqNext_0_ctrl_srcType_1,
  output [1:0]  io_deqNext_0_ctrl_srcType_2,
  output [3:0]  io_deqNext_0_ctrl_fuType,
  output [6:0]  io_deqNext_0_ctrl_fuOpType,
  output        io_deqNext_0_ctrl_rfWen,
  output        io_deqNext_0_ctrl_fpWen,
  output [3:0]  io_deqNext_0_ctrl_selImm,
  output [19:0] io_deqNext_0_ctrl_imm,
  output [5:0]  io_deqNext_0_psrc_0,
  output [5:0]  io_deqNext_0_psrc_1,
  output [5:0]  io_deqNext_0_psrc_2,
  output [5:0]  io_deqNext_0_pdest,
  output        io_deqNext_0_robIdx_flag,
  output [4:0]  io_deqNext_0_robIdx_value,
  output        io_deqNext_0_lqIdx_flag,
  output [3:0]  io_deqNext_0_lqIdx_value,
  output        io_deqNext_0_sqIdx_flag,
  output [3:0]  io_deqNext_0_sqIdx_value,
  output [2:0]  io_deqNext_1_cf_ftqPtr_value,
  output [2:0]  io_deqNext_1_cf_ftqOffset,
  output [1:0]  io_deqNext_1_ctrl_srcType_0,
  output [1:0]  io_deqNext_1_ctrl_srcType_1,
  output [1:0]  io_deqNext_1_ctrl_srcType_2,
  output [3:0]  io_deqNext_1_ctrl_fuType,
  output [6:0]  io_deqNext_1_ctrl_fuOpType,
  output        io_deqNext_1_ctrl_rfWen,
  output        io_deqNext_1_ctrl_fpWen,
  output [3:0]  io_deqNext_1_ctrl_selImm,
  output [19:0] io_deqNext_1_ctrl_imm,
  output [5:0]  io_deqNext_1_psrc_0,
  output [5:0]  io_deqNext_1_psrc_1,
  output [5:0]  io_deqNext_1_psrc_2,
  output [5:0]  io_deqNext_1_pdest,
  output        io_deqNext_1_robIdx_flag,
  output [4:0]  io_deqNext_1_robIdx_value,
  output        io_deqNext_1_lqIdx_flag,
  output [3:0]  io_deqNext_1_lqIdx_value,
  output        io_deqNext_1_sqIdx_flag,
  output [3:0]  io_deqNext_1_sqIdx_value,
  output [2:0]  io_deqNext_2_cf_ftqPtr_value,
  output [2:0]  io_deqNext_2_cf_ftqOffset,
  output [1:0]  io_deqNext_2_ctrl_srcType_0,
  output [1:0]  io_deqNext_2_ctrl_srcType_1,
  output [1:0]  io_deqNext_2_ctrl_srcType_2,
  output [3:0]  io_deqNext_2_ctrl_fuType,
  output [6:0]  io_deqNext_2_ctrl_fuOpType,
  output        io_deqNext_2_ctrl_rfWen,
  output        io_deqNext_2_ctrl_fpWen,
  output [3:0]  io_deqNext_2_ctrl_selImm,
  output [19:0] io_deqNext_2_ctrl_imm,
  output [5:0]  io_deqNext_2_psrc_0,
  output [5:0]  io_deqNext_2_psrc_1,
  output [5:0]  io_deqNext_2_psrc_2,
  output [5:0]  io_deqNext_2_pdest,
  output        io_deqNext_2_robIdx_flag,
  output [4:0]  io_deqNext_2_robIdx_value,
  output        io_deqNext_2_lqIdx_flag,
  output [3:0]  io_deqNext_2_lqIdx_value,
  output        io_deqNext_2_sqIdx_flag,
  output [3:0]  io_deqNext_2_sqIdx_value,
  output [2:0]  io_deqNext_3_cf_ftqPtr_value,
  output [2:0]  io_deqNext_3_cf_ftqOffset,
  output [1:0]  io_deqNext_3_ctrl_srcType_0,
  output [1:0]  io_deqNext_3_ctrl_srcType_1,
  output [1:0]  io_deqNext_3_ctrl_srcType_2,
  output [3:0]  io_deqNext_3_ctrl_fuType,
  output [6:0]  io_deqNext_3_ctrl_fuOpType,
  output        io_deqNext_3_ctrl_rfWen,
  output        io_deqNext_3_ctrl_fpWen,
  output [3:0]  io_deqNext_3_ctrl_selImm,
  output [19:0] io_deqNext_3_ctrl_imm,
  output [5:0]  io_deqNext_3_psrc_0,
  output [5:0]  io_deqNext_3_psrc_1,
  output [5:0]  io_deqNext_3_psrc_2,
  output [5:0]  io_deqNext_3_pdest,
  output        io_deqNext_3_robIdx_flag,
  output [4:0]  io_deqNext_3_robIdx_value,
  output        io_deqNext_3_lqIdx_flag,
  output [3:0]  io_deqNext_3_lqIdx_value,
  output        io_deqNext_3_sqIdx_flag,
  output [3:0]  io_deqNext_3_sqIdx_value,
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
  reg [31:0] _RAND_38;
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
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_0; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_1; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_3; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_4; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_5; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_6; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_raddr_7; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendEn_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendEn_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_pd_isRVC; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_0_cf_pd_brType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_pd_isCall; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_pd_isRet; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_pred_taken; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_storeSetHit; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_loadWaitStrict; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_0_cf_ssid; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_cf_ftqPtr_flag; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_0_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_0_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_fromInt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_wflags; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_fpWen; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_div; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_sqrt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_fcvt; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_fpu_typ; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_fpu_fmt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_ren3; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_0_ctrl_fpu_rm; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendEn_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendEn_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_pd_isRVC; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_1_cf_pd_brType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_pd_isCall; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_pd_isRet; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_pred_taken; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_storeSetHit; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_loadWaitStrict; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_1_cf_ssid; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_1_cf_ftqPtr_flag; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_1_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_1_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendEn_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendEn_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_pd_isRVC; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_2_cf_pd_brType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_pd_isCall; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_pd_isRet; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_pred_taken; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_storeSetHit; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_loadWaitStrict; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_2_cf_ssid; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_2_cf_ftqPtr_flag; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_2_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_2_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendEn_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendEn_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_pd_isRVC; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_3_cf_pd_brType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_pd_isCall; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_pd_isRet; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_pred_taken; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_storeSetHit; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_loadWaitStrict; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_3_cf_ssid; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_3_cf_ftqPtr_flag; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_3_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_3_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_4_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_4_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_4_ctrl_srcType_0; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_4_ctrl_srcType_1; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_4_ctrl_srcType_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_4_ctrl_fuType; // @[DispatchQueue.scala 50:26]
  wire [6:0] dataModule_io_rdata_4_ctrl_fuOpType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_4_ctrl_rfWen; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_4_ctrl_fpWen; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_4_ctrl_selImm; // @[DispatchQueue.scala 50:26]
  wire [19:0] dataModule_io_rdata_4_ctrl_imm; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_4_psrc_0; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_4_psrc_1; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_4_psrc_2; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_4_pdest; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_4_robIdx_flag; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_4_robIdx_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_5_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_5_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_5_ctrl_srcType_0; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_5_ctrl_srcType_1; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_5_ctrl_srcType_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_5_ctrl_fuType; // @[DispatchQueue.scala 50:26]
  wire [6:0] dataModule_io_rdata_5_ctrl_fuOpType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_5_ctrl_rfWen; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_5_ctrl_fpWen; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_5_ctrl_selImm; // @[DispatchQueue.scala 50:26]
  wire [19:0] dataModule_io_rdata_5_ctrl_imm; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_5_psrc_0; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_5_psrc_1; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_5_psrc_2; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_5_pdest; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_5_robIdx_flag; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_5_robIdx_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_6_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_6_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_6_ctrl_srcType_0; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_6_ctrl_srcType_1; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_6_ctrl_srcType_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_6_ctrl_fuType; // @[DispatchQueue.scala 50:26]
  wire [6:0] dataModule_io_rdata_6_ctrl_fuOpType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_6_ctrl_rfWen; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_6_ctrl_fpWen; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_6_ctrl_selImm; // @[DispatchQueue.scala 50:26]
  wire [19:0] dataModule_io_rdata_6_ctrl_imm; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_6_psrc_0; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_6_psrc_1; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_6_psrc_2; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_6_pdest; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_6_robIdx_flag; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_6_robIdx_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_7_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_rdata_7_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_7_ctrl_srcType_0; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_7_ctrl_srcType_1; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_rdata_7_ctrl_srcType_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_7_ctrl_fuType; // @[DispatchQueue.scala 50:26]
  wire [6:0] dataModule_io_rdata_7_ctrl_fuOpType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_7_ctrl_rfWen; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_7_ctrl_fpWen; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_rdata_7_ctrl_selImm; // @[DispatchQueue.scala 50:26]
  wire [19:0] dataModule_io_rdata_7_ctrl_imm; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_7_psrc_0; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_7_psrc_1; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_7_psrc_2; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_rdata_7_pdest; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_rdata_7_robIdx_flag; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_rdata_7_robIdx_value; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wen_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wen_1; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_waddr_0; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_waddr_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendEn_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendEn_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_pd_isRVC; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_cf_pd_brType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_pd_isCall; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_pd_isRet; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_pred_taken; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_storeSetHit; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_loadWaitStrict; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_wdata_0_cf_ssid; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_cf_ftqPtr_flag; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_wdata_0_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_wdata_0_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_srcType_0; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_srcType_1; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_srcType_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_wdata_0_ctrl_fuType; // @[DispatchQueue.scala 50:26]
  wire [6:0] dataModule_io_wdata_0_ctrl_fuOpType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_rfWen; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpWen; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_wdata_0_ctrl_selImm; // @[DispatchQueue.scala 50:26]
  wire [19:0] dataModule_io_wdata_0_ctrl_imm; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_fromInt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_wflags; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_fpWen; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_div; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_sqrt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_fcvt; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_fpu_typ; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_fpu_fmt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_ren3; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_wdata_0_ctrl_fpu_rm; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_0_psrc_0; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_0_psrc_1; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_0_psrc_2; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_0_pdest; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_0_robIdx_flag; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_wdata_0_robIdx_value; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendEn_0; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendEn_1; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_pd_isRVC; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_cf_pd_brType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_pd_isCall; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_pd_isRet; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_pred_taken; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_storeSetHit; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_loadWaitStrict; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_wdata_1_cf_ssid; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_cf_ftqPtr_flag; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_wdata_1_cf_ftqPtr_value; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_wdata_1_cf_ftqOffset; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_srcType_0; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_srcType_1; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_srcType_2; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_wdata_1_ctrl_fuType; // @[DispatchQueue.scala 50:26]
  wire [6:0] dataModule_io_wdata_1_ctrl_fuOpType; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_rfWen; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpWen; // @[DispatchQueue.scala 50:26]
  wire [3:0] dataModule_io_wdata_1_ctrl_selImm; // @[DispatchQueue.scala 50:26]
  wire [19:0] dataModule_io_wdata_1_ctrl_imm; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_fromInt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_wflags; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_fpWen; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_div; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_sqrt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_fcvt; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_fpu_typ; // @[DispatchQueue.scala 50:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_fpu_fmt; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_ren3; // @[DispatchQueue.scala 50:26]
  wire [2:0] dataModule_io_wdata_1_ctrl_fpu_rm; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_1_psrc_0; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_1_psrc_1; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_1_psrc_2; // @[DispatchQueue.scala 50:26]
  wire [5:0] dataModule_io_wdata_1_pdest; // @[DispatchQueue.scala 50:26]
  wire  dataModule_io_wdata_1_robIdx_flag; // @[DispatchQueue.scala 50:26]
  wire [4:0] dataModule_io_wdata_1_robIdx_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_0_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_0_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_1_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_1_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_2_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_2_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_3_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_3_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_4_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_4_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_5_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_5_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_6_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_6_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_7_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_7_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_8_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_8_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_9_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_9_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_10_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_10_value; // @[DispatchQueue.scala 51:26]
  reg  robIdxEntries_11_flag; // @[DispatchQueue.scala 51:26]
  reg [4:0] robIdxEntries_11_value; // @[DispatchQueue.scala 51:26]
  reg  stateEntries_0; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_1; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_2; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_3; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_4; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_5; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_6; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_7; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_8; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_9; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_10; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_11; // @[DispatchQueue.scala 52:29]
  reg  headPtr_0_flag; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_0_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_1_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_2_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_3_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_4_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_5_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_6_value; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_7_value; // @[DispatchQueue.scala 57:24]
  wire [15:0] _headPtrMask_T = 16'h1 << headPtr_0_value; // @[OneHot.scala 57:35]
  wire [11:0] headPtrMask = _headPtrMask_T[11:0] - 12'h1; // @[BitUtils.scala 180:75]
  reg [11:0] headPtrOH; // @[DispatchQueue.scala 60:26]
  wire [11:0] headPtrOHVec_1 = {headPtrOH[10:0],headPtrOH[11]}; // @[Cat.scala 31:58]
  wire [11:0] headPtrOHVec_2 = {headPtrOH[9:0],headPtrOH[11:10]}; // @[Cat.scala 31:58]
  wire [11:0] headPtrOHVec_3 = {headPtrOH[8:0],headPtrOH[11:9]}; // @[Cat.scala 31:58]
  wire [11:0] headPtrOHVec_4 = {headPtrOH[7:0],headPtrOH[11:8]}; // @[Cat.scala 31:58]
  reg  tailPtr_0_flag; // @[DispatchQueue.scala 64:24]
  reg [3:0] tailPtr_0_value; // @[DispatchQueue.scala 64:24]
  reg [3:0] tailPtr_1_value; // @[DispatchQueue.scala 64:24]
  wire [15:0] _tailPtrMask_T = 16'h1 << tailPtr_0_value; // @[OneHot.scala 57:35]
  reg [11:0] tailPtrOH; // @[DispatchQueue.scala 66:26]
  wire [11:0] tailPtrOHVec_1 = {tailPtrOH[10:0],tailPtrOH[11]}; // @[Cat.scala 31:58]
  wire [11:0] tailPtrOHVec_2 = {tailPtrOH[9:0],tailPtrOH[11:10]}; // @[Cat.scala 31:58]
  reg  allowEnqueue; // @[DispatchQueue.scala 71:29]
  wire [5:0] isTrueEmpty_lo = {stateEntries_5,stateEntries_4,stateEntries_3,stateEntries_2,stateEntries_1,stateEntries_0
    }; // @[DispatchQueue.scala 73:63]
  wire [11:0] _isTrueEmpty_T_12 = {stateEntries_11,stateEntries_10,stateEntries_9,stateEntries_8,stateEntries_7,
    stateEntries_6,isTrueEmpty_lo}; // @[DispatchQueue.scala 73:63]
  wire  isTrueEmpty = ~(|_isTrueEmpty_T_12); // @[DispatchQueue.scala 73:21]
  wire  validVec_0 = io_enq_req_0_valid & tailPtrOH[0]; // @[DispatchQueue.scala 93:83]
  wire [11:0] _GEN_1 = io_enq_needAlloc_0 ? tailPtrOHVec_1 : tailPtrOH; // @[DispatchQueue.scala 93:{88,88}]
  wire [1:0] _GEN_552 = {{1'd0}, io_enq_needAlloc_0}; // @[DispatchQueue.scala 93:{88,88}]
  wire [11:0] _GEN_2 = 2'h2 == _GEN_552 ? tailPtrOHVec_2 : _GEN_1; // @[DispatchQueue.scala 93:{88,88}]
  wire  validVec_1 = io_enq_req_1_valid & _GEN_2[0]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T = {validVec_1,validVec_0}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_0_T = validVec_0 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_0_T_1 = validVec_1 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_0_T_2 = _robIdxEntries_0_T | _robIdxEntries_0_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_0_T_5 = validVec_0 & io_enq_req_0_bits_robIdx_flag | validVec_1 & io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_5 = |_T & allowEnqueue | stateEntries_0; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_1 = io_enq_req_0_valid & tailPtrOH[1]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_1 = io_enq_req_1_valid & _GEN_2[1]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_3 = {validVec_1_1,validVec_0_1}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_1_T = validVec_0_1 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_1_T_1 = validVec_1_1 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_1_T_2 = _robIdxEntries_1_T | _robIdxEntries_1_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_1_T_5 = validVec_0_1 & io_enq_req_0_bits_robIdx_flag | validVec_1_1 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_8 = |_T_3 & allowEnqueue | stateEntries_1; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_2 = io_enq_req_0_valid & tailPtrOH[2]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_2 = io_enq_req_1_valid & _GEN_2[2]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_6 = {validVec_1_2,validVec_0_2}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_2_T = validVec_0_2 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_2_T_1 = validVec_1_2 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_2_T_2 = _robIdxEntries_2_T | _robIdxEntries_2_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_2_T_5 = validVec_0_2 & io_enq_req_0_bits_robIdx_flag | validVec_1_2 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_11 = |_T_6 & allowEnqueue | stateEntries_2; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_3 = io_enq_req_0_valid & tailPtrOH[3]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_3 = io_enq_req_1_valid & _GEN_2[3]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_9 = {validVec_1_3,validVec_0_3}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_3_T = validVec_0_3 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_3_T_1 = validVec_1_3 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_3_T_2 = _robIdxEntries_3_T | _robIdxEntries_3_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_3_T_5 = validVec_0_3 & io_enq_req_0_bits_robIdx_flag | validVec_1_3 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_14 = |_T_9 & allowEnqueue | stateEntries_3; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_4 = io_enq_req_0_valid & tailPtrOH[4]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_4 = io_enq_req_1_valid & _GEN_2[4]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_12 = {validVec_1_4,validVec_0_4}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_4_T = validVec_0_4 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_4_T_1 = validVec_1_4 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_4_T_2 = _robIdxEntries_4_T | _robIdxEntries_4_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_4_T_5 = validVec_0_4 & io_enq_req_0_bits_robIdx_flag | validVec_1_4 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_17 = |_T_12 & allowEnqueue | stateEntries_4; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_5 = io_enq_req_0_valid & tailPtrOH[5]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_5 = io_enq_req_1_valid & _GEN_2[5]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_15 = {validVec_1_5,validVec_0_5}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_5_T = validVec_0_5 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_5_T_1 = validVec_1_5 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_5_T_2 = _robIdxEntries_5_T | _robIdxEntries_5_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_5_T_5 = validVec_0_5 & io_enq_req_0_bits_robIdx_flag | validVec_1_5 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_20 = |_T_15 & allowEnqueue | stateEntries_5; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_6 = io_enq_req_0_valid & tailPtrOH[6]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_6 = io_enq_req_1_valid & _GEN_2[6]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_18 = {validVec_1_6,validVec_0_6}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_6_T = validVec_0_6 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_6_T_1 = validVec_1_6 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_6_T_2 = _robIdxEntries_6_T | _robIdxEntries_6_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_6_T_5 = validVec_0_6 & io_enq_req_0_bits_robIdx_flag | validVec_1_6 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_23 = |_T_18 & allowEnqueue | stateEntries_6; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_7 = io_enq_req_0_valid & tailPtrOH[7]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_7 = io_enq_req_1_valid & _GEN_2[7]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_21 = {validVec_1_7,validVec_0_7}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_7_T = validVec_0_7 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_7_T_1 = validVec_1_7 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_7_T_2 = _robIdxEntries_7_T | _robIdxEntries_7_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_7_T_5 = validVec_0_7 & io_enq_req_0_bits_robIdx_flag | validVec_1_7 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_26 = |_T_21 & allowEnqueue | stateEntries_7; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_8 = io_enq_req_0_valid & tailPtrOH[8]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_8 = io_enq_req_1_valid & _GEN_2[8]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_24 = {validVec_1_8,validVec_0_8}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_8_T = validVec_0_8 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_8_T_1 = validVec_1_8 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_8_T_2 = _robIdxEntries_8_T | _robIdxEntries_8_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_8_T_5 = validVec_0_8 & io_enq_req_0_bits_robIdx_flag | validVec_1_8 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_29 = |_T_24 & allowEnqueue | stateEntries_8; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_9 = io_enq_req_0_valid & tailPtrOH[9]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_9 = io_enq_req_1_valid & _GEN_2[9]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_27 = {validVec_1_9,validVec_0_9}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_9_T = validVec_0_9 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_9_T_1 = validVec_1_9 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_9_T_2 = _robIdxEntries_9_T | _robIdxEntries_9_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_9_T_5 = validVec_0_9 & io_enq_req_0_bits_robIdx_flag | validVec_1_9 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_32 = |_T_27 & allowEnqueue | stateEntries_9; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_10 = io_enq_req_0_valid & tailPtrOH[10]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_10 = io_enq_req_1_valid & _GEN_2[10]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_30 = {validVec_1_10,validVec_0_10}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_10_T = validVec_0_10 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_10_T_1 = validVec_1_10 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_10_T_2 = _robIdxEntries_10_T | _robIdxEntries_10_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_10_T_5 = validVec_0_10 & io_enq_req_0_bits_robIdx_flag | validVec_1_10 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_35 = |_T_30 & allowEnqueue | stateEntries_10; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  validVec_0_11 = io_enq_req_0_valid & tailPtrOH[11]; // @[DispatchQueue.scala 93:83]
  wire  validVec_1_11 = io_enq_req_1_valid & _GEN_2[11]; // @[DispatchQueue.scala 93:83]
  wire [1:0] _T_33 = {validVec_1_11,validVec_0_11}; // @[DispatchQueue.scala 94:29]
  wire [4:0] _robIdxEntries_11_T = validVec_0_11 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_11_T_1 = validVec_1_11 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _robIdxEntries_11_T_2 = _robIdxEntries_11_T | _robIdxEntries_11_T_1; // @[Mux.scala 27:73]
  wire  _robIdxEntries_11_T_5 = validVec_0_11 & io_enq_req_0_bits_robIdx_flag | validVec_1_11 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire  _GEN_38 = |_T_33 & allowEnqueue | stateEntries_11; // @[DispatchQueue.scala 94:55 96:23 52:29]
  wire  _validVec_T_24 = io_deq_0_ready & io_deq_0_valid; // @[Decoupled.scala 50:35]
  wire  _validVec_T_25 = io_deq_1_ready & io_deq_1_valid; // @[Decoupled.scala 50:35]
  wire  _validVec_T_26 = io_deq_2_ready & io_deq_2_valid; // @[Decoupled.scala 50:35]
  wire  _validVec_T_27 = io_deq_3_ready & io_deq_3_valid; // @[Decoupled.scala 50:35]
  wire  validVec_0_12 = _validVec_T_24 & headPtrOH[0]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_12 = _validVec_T_25 & headPtrOHVec_1[0]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2 = _validVec_T_26 & headPtrOHVec_2[0]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3 = _validVec_T_27 & headPtrOHVec_3[0]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_36 = {validVec_3,validVec_2,validVec_1_12,validVec_0_12}; // @[DispatchQueue.scala 108:29]
  wire  _T_38 = ~io_redirect_valid; // @[DispatchQueue.scala 108:43]
  wire  validVec_0_13 = _validVec_T_24 & headPtrOH[1]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_13 = _validVec_T_25 & headPtrOHVec_1[1]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_1 = _validVec_T_26 & headPtrOHVec_2[1]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_1 = _validVec_T_27 & headPtrOHVec_3[1]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_40 = {validVec_3_1,validVec_2_1,validVec_1_13,validVec_0_13}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_14 = _validVec_T_24 & headPtrOH[2]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_14 = _validVec_T_25 & headPtrOHVec_1[2]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_2 = _validVec_T_26 & headPtrOHVec_2[2]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_2 = _validVec_T_27 & headPtrOHVec_3[2]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_44 = {validVec_3_2,validVec_2_2,validVec_1_14,validVec_0_14}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_15 = _validVec_T_24 & headPtrOH[3]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_15 = _validVec_T_25 & headPtrOHVec_1[3]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_3 = _validVec_T_26 & headPtrOHVec_2[3]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_3 = _validVec_T_27 & headPtrOHVec_3[3]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_48 = {validVec_3_3,validVec_2_3,validVec_1_15,validVec_0_15}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_16 = _validVec_T_24 & headPtrOH[4]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_16 = _validVec_T_25 & headPtrOHVec_1[4]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_4 = _validVec_T_26 & headPtrOHVec_2[4]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_4 = _validVec_T_27 & headPtrOHVec_3[4]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_52 = {validVec_3_4,validVec_2_4,validVec_1_16,validVec_0_16}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_17 = _validVec_T_24 & headPtrOH[5]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_17 = _validVec_T_25 & headPtrOHVec_1[5]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_5 = _validVec_T_26 & headPtrOHVec_2[5]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_5 = _validVec_T_27 & headPtrOHVec_3[5]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_56 = {validVec_3_5,validVec_2_5,validVec_1_17,validVec_0_17}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_18 = _validVec_T_24 & headPtrOH[6]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_18 = _validVec_T_25 & headPtrOHVec_1[6]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_6 = _validVec_T_26 & headPtrOHVec_2[6]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_6 = _validVec_T_27 & headPtrOHVec_3[6]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_60 = {validVec_3_6,validVec_2_6,validVec_1_18,validVec_0_18}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_19 = _validVec_T_24 & headPtrOH[7]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_19 = _validVec_T_25 & headPtrOHVec_1[7]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_7 = _validVec_T_26 & headPtrOHVec_2[7]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_7 = _validVec_T_27 & headPtrOHVec_3[7]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_64 = {validVec_3_7,validVec_2_7,validVec_1_19,validVec_0_19}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_20 = _validVec_T_24 & headPtrOH[8]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_20 = _validVec_T_25 & headPtrOHVec_1[8]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_8 = _validVec_T_26 & headPtrOHVec_2[8]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_8 = _validVec_T_27 & headPtrOHVec_3[8]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_68 = {validVec_3_8,validVec_2_8,validVec_1_20,validVec_0_20}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_21 = _validVec_T_24 & headPtrOH[9]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_21 = _validVec_T_25 & headPtrOHVec_1[9]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_9 = _validVec_T_26 & headPtrOHVec_2[9]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_9 = _validVec_T_27 & headPtrOHVec_3[9]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_72 = {validVec_3_9,validVec_2_9,validVec_1_21,validVec_0_21}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_22 = _validVec_T_24 & headPtrOH[10]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_22 = _validVec_T_25 & headPtrOHVec_1[10]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_10 = _validVec_T_26 & headPtrOHVec_2[10]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_10 = _validVec_T_27 & headPtrOHVec_3[10]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_76 = {validVec_3_10,validVec_2_10,validVec_1_22,validVec_0_22}; // @[DispatchQueue.scala 108:29]
  wire  validVec_0_23 = _validVec_T_24 & headPtrOH[11]; // @[DispatchQueue.scala 107:80]
  wire  validVec_1_23 = _validVec_T_25 & headPtrOHVec_1[11]; // @[DispatchQueue.scala 107:80]
  wire  validVec_2_11 = _validVec_T_26 & headPtrOHVec_2[11]; // @[DispatchQueue.scala 107:80]
  wire  validVec_3_11 = _validVec_T_27 & headPtrOHVec_3[11]; // @[DispatchQueue.scala 107:80]
  wire [3:0] _T_80 = {validVec_3_11,validVec_2_11,validVec_1_23,validVec_0_23}; // @[DispatchQueue.scala 108:29]
  wire [5:0] _needCancel_0_flushItself_T_1 = {robIdxEntries_0_flag,robIdxEntries_0_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _needCancel_0_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _needCancel_0_flushItself_T_3 = _needCancel_0_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_0_flushItself = io_redirect_bits_level & _needCancel_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_0_differentFlag = robIdxEntries_0_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_0_compare = robIdxEntries_0_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_0_T_1 = needCancel_0_differentFlag ^ needCancel_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_0_T_3 = io_redirect_valid & (needCancel_0_flushItself | _needCancel_0_T_1); // @[Rob.scala 143:20]
  wire  needCancel_0 = stateEntries_0 & _needCancel_0_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_1_flushItself_T_1 = {robIdxEntries_1_flag,robIdxEntries_1_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_1_flushItself_T_3 = _needCancel_1_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_1_flushItself = io_redirect_bits_level & _needCancel_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_1_differentFlag = robIdxEntries_1_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_1_compare = robIdxEntries_1_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_1_T_1 = needCancel_1_differentFlag ^ needCancel_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_1_T_3 = io_redirect_valid & (needCancel_1_flushItself | _needCancel_1_T_1); // @[Rob.scala 143:20]
  wire  needCancel_1 = stateEntries_1 & _needCancel_1_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_2_flushItself_T_1 = {robIdxEntries_2_flag,robIdxEntries_2_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_2_flushItself_T_3 = _needCancel_2_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_2_flushItself = io_redirect_bits_level & _needCancel_2_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_2_differentFlag = robIdxEntries_2_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_2_compare = robIdxEntries_2_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_2_T_1 = needCancel_2_differentFlag ^ needCancel_2_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_2_T_3 = io_redirect_valid & (needCancel_2_flushItself | _needCancel_2_T_1); // @[Rob.scala 143:20]
  wire  needCancel_2 = stateEntries_2 & _needCancel_2_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_3_flushItself_T_1 = {robIdxEntries_3_flag,robIdxEntries_3_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_3_flushItself_T_3 = _needCancel_3_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_3_flushItself = io_redirect_bits_level & _needCancel_3_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_3_differentFlag = robIdxEntries_3_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_3_compare = robIdxEntries_3_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_3_T_1 = needCancel_3_differentFlag ^ needCancel_3_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_3_T_3 = io_redirect_valid & (needCancel_3_flushItself | _needCancel_3_T_1); // @[Rob.scala 143:20]
  wire  needCancel_3 = stateEntries_3 & _needCancel_3_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_4_flushItself_T_1 = {robIdxEntries_4_flag,robIdxEntries_4_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_4_flushItself_T_3 = _needCancel_4_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_4_flushItself = io_redirect_bits_level & _needCancel_4_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_4_differentFlag = robIdxEntries_4_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_4_compare = robIdxEntries_4_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_4_T_1 = needCancel_4_differentFlag ^ needCancel_4_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_4_T_3 = io_redirect_valid & (needCancel_4_flushItself | _needCancel_4_T_1); // @[Rob.scala 143:20]
  wire  needCancel_4 = stateEntries_4 & _needCancel_4_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_5_flushItself_T_1 = {robIdxEntries_5_flag,robIdxEntries_5_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_5_flushItself_T_3 = _needCancel_5_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_5_flushItself = io_redirect_bits_level & _needCancel_5_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_5_differentFlag = robIdxEntries_5_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_5_compare = robIdxEntries_5_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_5_T_1 = needCancel_5_differentFlag ^ needCancel_5_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_5_T_3 = io_redirect_valid & (needCancel_5_flushItself | _needCancel_5_T_1); // @[Rob.scala 143:20]
  wire  needCancel_5 = stateEntries_5 & _needCancel_5_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_6_flushItself_T_1 = {robIdxEntries_6_flag,robIdxEntries_6_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_6_flushItself_T_3 = _needCancel_6_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_6_flushItself = io_redirect_bits_level & _needCancel_6_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_6_differentFlag = robIdxEntries_6_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_6_compare = robIdxEntries_6_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_6_T_1 = needCancel_6_differentFlag ^ needCancel_6_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_6_T_3 = io_redirect_valid & (needCancel_6_flushItself | _needCancel_6_T_1); // @[Rob.scala 143:20]
  wire  needCancel_6 = stateEntries_6 & _needCancel_6_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_7_flushItself_T_1 = {robIdxEntries_7_flag,robIdxEntries_7_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_7_flushItself_T_3 = _needCancel_7_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_7_flushItself = io_redirect_bits_level & _needCancel_7_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_7_differentFlag = robIdxEntries_7_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_7_compare = robIdxEntries_7_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_7_T_1 = needCancel_7_differentFlag ^ needCancel_7_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_7_T_3 = io_redirect_valid & (needCancel_7_flushItself | _needCancel_7_T_1); // @[Rob.scala 143:20]
  wire  needCancel_7 = stateEntries_7 & _needCancel_7_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_8_flushItself_T_1 = {robIdxEntries_8_flag,robIdxEntries_8_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_8_flushItself_T_3 = _needCancel_8_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_8_flushItself = io_redirect_bits_level & _needCancel_8_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_8_differentFlag = robIdxEntries_8_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_8_compare = robIdxEntries_8_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_8_T_1 = needCancel_8_differentFlag ^ needCancel_8_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_8_T_3 = io_redirect_valid & (needCancel_8_flushItself | _needCancel_8_T_1); // @[Rob.scala 143:20]
  wire  needCancel_8 = stateEntries_8 & _needCancel_8_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_9_flushItself_T_1 = {robIdxEntries_9_flag,robIdxEntries_9_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_9_flushItself_T_3 = _needCancel_9_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_9_flushItself = io_redirect_bits_level & _needCancel_9_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_9_differentFlag = robIdxEntries_9_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_9_compare = robIdxEntries_9_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_9_T_1 = needCancel_9_differentFlag ^ needCancel_9_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_9_T_3 = io_redirect_valid & (needCancel_9_flushItself | _needCancel_9_T_1); // @[Rob.scala 143:20]
  wire  needCancel_9 = stateEntries_9 & _needCancel_9_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_10_flushItself_T_1 = {robIdxEntries_10_flag,robIdxEntries_10_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_10_flushItself_T_3 = _needCancel_10_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_10_flushItself = io_redirect_bits_level & _needCancel_10_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_10_differentFlag = robIdxEntries_10_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_10_compare = robIdxEntries_10_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_10_T_1 = needCancel_10_differentFlag ^ needCancel_10_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_10_T_3 = io_redirect_valid & (needCancel_10_flushItself | _needCancel_10_T_1); // @[Rob.scala 143:20]
  wire  needCancel_10 = stateEntries_10 & _needCancel_10_T_3; // @[DispatchQueue.scala 116:52]
  wire [5:0] _needCancel_11_flushItself_T_1 = {robIdxEntries_11_flag,robIdxEntries_11_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_11_flushItself_T_3 = _needCancel_11_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_11_flushItself = io_redirect_bits_level & _needCancel_11_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_11_differentFlag = robIdxEntries_11_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_11_compare = robIdxEntries_11_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_11_T_1 = needCancel_11_differentFlag ^ needCancel_11_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_11_T_3 = io_redirect_valid & (needCancel_11_flushItself | _needCancel_11_T_1); // @[Rob.scala 143:20]
  wire  needCancel_11 = stateEntries_11 & _needCancel_11_T_3; // @[DispatchQueue.scala 116:52]
  wire [3:0] _currentValidCounter_T_2 = tailPtr_0_value - headPtr_0_value; // @[CircularQueuePtr.scala 105:21]
  wire [3:0] _currentValidCounter_T_4 = 4'hc + tailPtr_0_value; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _currentValidCounter_T_6 = _currentValidCounter_T_4 - headPtr_0_value; // @[CircularQueuePtr.scala 106:41]
  wire [3:0] currentValidCounter = tailPtr_0_flag == headPtr_0_flag ? _currentValidCounter_T_2 :
    _currentValidCounter_T_6; // @[CircularQueuePtr.scala 104:8]
  wire [1:0] numDeqTryMask_shiftAmount = currentValidCounter[1:0]; // @[OneHot.scala 63:49]
  wire [3:0] _numDeqTryMask_T_1 = 4'h1 << numDeqTryMask_shiftAmount; // @[OneHot.scala 64:12]
  wire [4:0] numDeqTryMask = currentValidCounter >= 4'h4 ? 5'h10 : {{1'd0}, _numDeqTryMask_T_1}; // @[DispatchQueue.scala 135:26]
  wire  deqEnable_n_0 = ~_validVec_T_24 | numDeqTryMask[0]; // @[DispatchQueue.scala 145:27]
  wire  _GEN_66 = 4'h1 == headPtr_1_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_67 = 4'h2 == headPtr_1_value ? stateEntries_2 : _GEN_66; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_68 = 4'h3 == headPtr_1_value ? stateEntries_3 : _GEN_67; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_69 = 4'h4 == headPtr_1_value ? stateEntries_4 : _GEN_68; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_70 = 4'h5 == headPtr_1_value ? stateEntries_5 : _GEN_69; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_71 = 4'h6 == headPtr_1_value ? stateEntries_6 : _GEN_70; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_72 = 4'h7 == headPtr_1_value ? stateEntries_7 : _GEN_71; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_73 = 4'h8 == headPtr_1_value ? stateEntries_8 : _GEN_72; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_74 = 4'h9 == headPtr_1_value ? stateEntries_9 : _GEN_73; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_75 = 4'ha == headPtr_1_value ? stateEntries_10 : _GEN_74; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_76 = 4'hb == headPtr_1_value ? stateEntries_11 : _GEN_75; // @[DispatchQueue.scala 148:{55,55}]
  wire  deqEnable_n_1 = ~_validVec_T_25 & _GEN_76 | numDeqTryMask[1]; // @[DispatchQueue.scala 148:70]
  wire  _GEN_78 = 4'h1 == headPtr_2_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_79 = 4'h2 == headPtr_2_value ? stateEntries_2 : _GEN_78; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_80 = 4'h3 == headPtr_2_value ? stateEntries_3 : _GEN_79; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_81 = 4'h4 == headPtr_2_value ? stateEntries_4 : _GEN_80; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_82 = 4'h5 == headPtr_2_value ? stateEntries_5 : _GEN_81; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_83 = 4'h6 == headPtr_2_value ? stateEntries_6 : _GEN_82; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_84 = 4'h7 == headPtr_2_value ? stateEntries_7 : _GEN_83; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_85 = 4'h8 == headPtr_2_value ? stateEntries_8 : _GEN_84; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_86 = 4'h9 == headPtr_2_value ? stateEntries_9 : _GEN_85; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_87 = 4'ha == headPtr_2_value ? stateEntries_10 : _GEN_86; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_88 = 4'hb == headPtr_2_value ? stateEntries_11 : _GEN_87; // @[DispatchQueue.scala 148:{55,55}]
  wire  deqEnable_n_2 = ~_validVec_T_26 & _GEN_88 | numDeqTryMask[2]; // @[DispatchQueue.scala 148:70]
  wire  _GEN_90 = 4'h1 == headPtr_3_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_91 = 4'h2 == headPtr_3_value ? stateEntries_2 : _GEN_90; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_92 = 4'h3 == headPtr_3_value ? stateEntries_3 : _GEN_91; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_93 = 4'h4 == headPtr_3_value ? stateEntries_4 : _GEN_92; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_94 = 4'h5 == headPtr_3_value ? stateEntries_5 : _GEN_93; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_95 = 4'h6 == headPtr_3_value ? stateEntries_6 : _GEN_94; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_96 = 4'h7 == headPtr_3_value ? stateEntries_7 : _GEN_95; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_97 = 4'h8 == headPtr_3_value ? stateEntries_8 : _GEN_96; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_98 = 4'h9 == headPtr_3_value ? stateEntries_9 : _GEN_97; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_99 = 4'ha == headPtr_3_value ? stateEntries_10 : _GEN_98; // @[DispatchQueue.scala 148:{55,55}]
  wire  _GEN_100 = 4'hb == headPtr_3_value ? stateEntries_11 : _GEN_99; // @[DispatchQueue.scala 148:{55,55}]
  wire  deqEnable_n_3 = ~_validVec_T_27 & _GEN_100 | numDeqTryMask[3]; // @[DispatchQueue.scala 148:70]
  wire [2:0] _numDeq_T = deqEnable_n_3 ? 3'h3 : 3'h4; // @[Mux.scala 47:70]
  wire [2:0] _numDeq_T_1 = deqEnable_n_2 ? 3'h2 : _numDeq_T; // @[Mux.scala 47:70]
  wire [2:0] _numDeq_T_2 = deqEnable_n_1 ? 3'h1 : _numDeq_T_1; // @[Mux.scala 47:70]
  wire [2:0] numDeq = deqEnable_n_0 ? 3'h0 : _numDeq_T_2; // @[Mux.scala 47:70]
  wire [3:0] _GEN_553 = {{1'd0}, numDeq}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] headPtrNext_0_new_value = headPtr_0_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_0_diff_T_1 = {1'h0,headPtrNext_0_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_0_diff = $signed(_headPtrNext_0_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_0_reverse_flag = $signed(headPtrNext_0_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_0_new_ptr_value_T = $signed(_headPtrNext_0_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_0_new_ptr_value_T_1 = headPtrNext_0_reverse_flag ? _headPtrNext_0_new_ptr_value_T : {{1'd0},
    headPtrNext_0_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_0_new_ptr_value = _headPtrNext_0_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_1_new_value = headPtr_1_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_1_diff_T_1 = {1'h0,headPtrNext_1_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_1_diff = $signed(_headPtrNext_1_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_1_reverse_flag = $signed(headPtrNext_1_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_1_new_ptr_value_T = $signed(_headPtrNext_1_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_1_new_ptr_value_T_1 = headPtrNext_1_reverse_flag ? _headPtrNext_1_new_ptr_value_T : {{1'd0},
    headPtrNext_1_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_1_new_ptr_value = _headPtrNext_1_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_2_new_value = headPtr_2_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_2_diff_T_1 = {1'h0,headPtrNext_2_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_2_diff = $signed(_headPtrNext_2_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_2_reverse_flag = $signed(headPtrNext_2_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_2_new_ptr_value_T = $signed(_headPtrNext_2_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_2_new_ptr_value_T_1 = headPtrNext_2_reverse_flag ? _headPtrNext_2_new_ptr_value_T : {{1'd0},
    headPtrNext_2_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_2_new_ptr_value = _headPtrNext_2_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_3_new_value = headPtr_3_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_3_diff_T_1 = {1'h0,headPtrNext_3_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_3_diff = $signed(_headPtrNext_3_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_3_reverse_flag = $signed(headPtrNext_3_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_3_new_ptr_value_T = $signed(_headPtrNext_3_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_3_new_ptr_value_T_1 = headPtrNext_3_reverse_flag ? _headPtrNext_3_new_ptr_value_T : {{1'd0},
    headPtrNext_3_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_3_new_ptr_value = _headPtrNext_3_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_4_new_value = headPtr_4_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_4_diff_T_1 = {1'h0,headPtrNext_4_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_4_diff = $signed(_headPtrNext_4_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_4_reverse_flag = $signed(headPtrNext_4_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_4_new_ptr_value_T = $signed(_headPtrNext_4_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_4_new_ptr_value_T_1 = headPtrNext_4_reverse_flag ? _headPtrNext_4_new_ptr_value_T : {{1'd0},
    headPtrNext_4_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_4_new_ptr_value = _headPtrNext_4_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_5_new_value = headPtr_5_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_5_diff_T_1 = {1'h0,headPtrNext_5_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_5_diff = $signed(_headPtrNext_5_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_5_reverse_flag = $signed(headPtrNext_5_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_5_new_ptr_value_T = $signed(_headPtrNext_5_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_5_new_ptr_value_T_1 = headPtrNext_5_reverse_flag ? _headPtrNext_5_new_ptr_value_T : {{1'd0},
    headPtrNext_5_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_5_new_ptr_value = _headPtrNext_5_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_6_new_value = headPtr_6_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_6_diff_T_1 = {1'h0,headPtrNext_6_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_6_diff = $signed(_headPtrNext_6_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_6_reverse_flag = $signed(headPtrNext_6_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_6_new_ptr_value_T = $signed(_headPtrNext_6_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_6_new_ptr_value_T_1 = headPtrNext_6_reverse_flag ? _headPtrNext_6_new_ptr_value_T : {{1'd0},
    headPtrNext_6_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_6_new_ptr_value = _headPtrNext_6_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] headPtrNext_7_new_value = headPtr_7_value + _GEN_553; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _headPtrNext_7_diff_T_1 = {1'h0,headPtrNext_7_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] headPtrNext_7_diff = $signed(_headPtrNext_7_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  headPtrNext_7_reverse_flag = $signed(headPtrNext_7_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _headPtrNext_7_new_ptr_value_T = $signed(_headPtrNext_7_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _headPtrNext_7_new_ptr_value_T_1 = headPtrNext_7_reverse_flag ? _headPtrNext_7_new_ptr_value_T : {{1'd0},
    headPtrNext_7_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] headPtrNext_7_new_ptr_value = _headPtrNext_7_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  reg  lastCycleMisprediction; // @[DispatchQueue.scala 162:39]
  wire  _loValidBitVec_T_1 = stateEntries_0 & headPtrMask[0]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_3 = stateEntries_1 & headPtrMask[1]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_5 = stateEntries_2 & headPtrMask[2]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_7 = stateEntries_3 & headPtrMask[3]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_9 = stateEntries_4 & headPtrMask[4]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_11 = stateEntries_5 & headPtrMask[5]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_13 = stateEntries_6 & headPtrMask[6]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_15 = stateEntries_7 & headPtrMask[7]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_17 = stateEntries_8 & headPtrMask[8]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_19 = stateEntries_9 & headPtrMask[9]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_21 = stateEntries_10 & headPtrMask[10]; // @[DispatchQueue.scala 165:66]
  wire  _loValidBitVec_T_23 = stateEntries_11 & headPtrMask[11]; // @[DispatchQueue.scala 165:66]
  wire [5:0] loValidBitVec_lo = {_loValidBitVec_T_13,_loValidBitVec_T_15,_loValidBitVec_T_17,_loValidBitVec_T_19,
    _loValidBitVec_T_21,_loValidBitVec_T_23}; // @[Cat.scala 31:58]
  wire [11:0] loValidBitVec = {_loValidBitVec_T_1,_loValidBitVec_T_3,_loValidBitVec_T_5,_loValidBitVec_T_7,
    _loValidBitVec_T_9,_loValidBitVec_T_11,loValidBitVec_lo}; // @[Cat.scala 31:58]
  wire  _hiValidBitVec_T_2 = stateEntries_0 & ~headPtrMask[0]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_5 = stateEntries_1 & ~headPtrMask[1]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_8 = stateEntries_2 & ~headPtrMask[2]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_11 = stateEntries_3 & ~headPtrMask[3]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_14 = stateEntries_4 & ~headPtrMask[4]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_17 = stateEntries_5 & ~headPtrMask[5]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_20 = stateEntries_6 & ~headPtrMask[6]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_23 = stateEntries_7 & ~headPtrMask[7]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_26 = stateEntries_8 & ~headPtrMask[8]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_29 = stateEntries_9 & ~headPtrMask[9]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_32 = stateEntries_10 & ~headPtrMask[10]; // @[DispatchQueue.scala 166:66]
  wire  _hiValidBitVec_T_35 = stateEntries_11 & ~headPtrMask[11]; // @[DispatchQueue.scala 166:66]
  wire [5:0] hiValidBitVec_lo = {_hiValidBitVec_T_20,_hiValidBitVec_T_23,_hiValidBitVec_T_26,_hiValidBitVec_T_29,
    _hiValidBitVec_T_32,_hiValidBitVec_T_35}; // @[Cat.scala 31:58]
  wire [11:0] hiValidBitVec = {_hiValidBitVec_T_2,_hiValidBitVec_T_5,_hiValidBitVec_T_8,_hiValidBitVec_T_11,
    _hiValidBitVec_T_14,_hiValidBitVec_T_17,hiValidBitVec_lo}; // @[Cat.scala 31:58]
  wire  _flippedFlag_T = |loValidBitVec; // @[DispatchQueue.scala 167:35]
  wire  flippedFlag = |loValidBitVec | stateEntries_11; // @[DispatchQueue.scala 167:39]
  wire [11:0] _leadingZeros_T_1 = _flippedFlag_T ? loValidBitVec : hiValidBitVec; // @[DispatchQueue.scala 168:41]
  wire [3:0] _leadingZeros_T_14 = _leadingZeros_T_1[10] ? 4'ha : 4'hb; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_15 = _leadingZeros_T_1[9] ? 4'h9 : _leadingZeros_T_14; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_16 = _leadingZeros_T_1[8] ? 4'h8 : _leadingZeros_T_15; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_17 = _leadingZeros_T_1[7] ? 4'h7 : _leadingZeros_T_16; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_18 = _leadingZeros_T_1[6] ? 4'h6 : _leadingZeros_T_17; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_19 = _leadingZeros_T_1[5] ? 4'h5 : _leadingZeros_T_18; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_20 = _leadingZeros_T_1[4] ? 4'h4 : _leadingZeros_T_19; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_21 = _leadingZeros_T_1[3] ? 4'h3 : _leadingZeros_T_20; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_22 = _leadingZeros_T_1[2] ? 4'h2 : _leadingZeros_T_21; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_23 = _leadingZeros_T_1[1] ? 4'h1 : _leadingZeros_T_22; // @[Mux.scala 47:70]
  wire [3:0] leadingZeros = _leadingZeros_T_1[0] ? 4'h0 : _leadingZeros_T_23; // @[Mux.scala 47:70]
  wire [3:0] _lastOneIndex_T_2 = 4'hc - leadingZeros; // @[DispatchQueue.scala 169:60]
  wire  walkedTailPtr_flag = flippedFlag ^ headPtr_0_flag; // @[DispatchQueue.scala 171:37]
  wire [1:0] _numEnq_T = io_enq_req_0_valid + io_enq_req_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] numEnq = io_enq_canAccept ? _numEnq_T : 2'h0; // @[DispatchQueue.scala 175:19]
  wire [3:0] _GEN_561 = {{2'd0}, numEnq}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] tailPtr_0_new_value = tailPtr_0_value + _GEN_561; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _tailPtr_0_diff_T_1 = {1'h0,tailPtr_0_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] tailPtr_0_diff = $signed(_tailPtr_0_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  tailPtr_0_reverse_flag = $signed(tailPtr_0_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _tailPtr_0_new_ptr_value_T = $signed(_tailPtr_0_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _tailPtr_0_new_ptr_value_T_1 = tailPtr_0_reverse_flag ? _tailPtr_0_new_ptr_value_T : {{1'd0},
    tailPtr_0_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] tailPtr_0_new_ptr_value = _tailPtr_0_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  reg  lastLastCycleMisprediction; // @[DispatchQueue.scala 182:43]
  wire [4:0] tailPtr_1_new_value = tailPtr_0_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _tailPtr_1_diff_T_1 = {1'h0,tailPtr_1_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] tailPtr_1_diff = $signed(_tailPtr_1_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  tailPtr_1_reverse_flag = $signed(tailPtr_1_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _tailPtr_1_new_ptr_value_T = $signed(_tailPtr_1_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _tailPtr_1_new_ptr_value_T_1 = tailPtr_1_reverse_flag ? _tailPtr_1_new_ptr_value_T : {{1'd0},
    tailPtr_1_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] tailPtr_1_new_value_1 = tailPtr_1_value + _GEN_561; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _tailPtr_1_diff_T_7 = {1'h0,tailPtr_1_new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] tailPtr_1_diff_1 = $signed(_tailPtr_1_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  tailPtr_1_reverse_flag_1 = $signed(tailPtr_1_diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _tailPtr_1_new_ptr_value_T_2 = $signed(_tailPtr_1_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _tailPtr_1_new_ptr_value_T_3 = tailPtr_1_reverse_flag_1 ? _tailPtr_1_new_ptr_value_T_2 : {{1'd0},
    tailPtr_1_new_value_1}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] tailPtr_1_new_ptr_value = _tailPtr_1_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] tailPtr_1_new_ptr_1_value = _tailPtr_1_new_ptr_value_T_3[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _tailPtrOHAccurate_T = ~lastCycleMisprediction; // @[DispatchQueue.scala 192:27]
  wire [3:0] _allowEnqueue_T_2 = 4'ha - currentValidCounter; // @[DispatchQueue.scala 202:101]
  reg [2:0] deqData_0_cf_ftqPtr_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_0_cf_ftqOffset; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_0_ctrl_srcType_0; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_0_ctrl_srcType_1; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_0_ctrl_srcType_2; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_0_ctrl_fuType; // @[DispatchQueue.scala 207:20]
  reg [6:0] deqData_0_ctrl_fuOpType; // @[DispatchQueue.scala 207:20]
  reg  deqData_0_ctrl_rfWen; // @[DispatchQueue.scala 207:20]
  reg  deqData_0_ctrl_fpWen; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_0_ctrl_selImm; // @[DispatchQueue.scala 207:20]
  reg [19:0] deqData_0_ctrl_imm; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_0_psrc_0; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_0_psrc_1; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_0_psrc_2; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_0_pdest; // @[DispatchQueue.scala 207:20]
  reg  deqData_0_robIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [4:0] deqData_0_robIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_0_lqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_0_lqIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_0_sqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_0_sqIdx_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_1_cf_ftqPtr_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_1_cf_ftqOffset; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_1_ctrl_srcType_0; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_1_ctrl_srcType_1; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_1_ctrl_srcType_2; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_1_ctrl_fuType; // @[DispatchQueue.scala 207:20]
  reg [6:0] deqData_1_ctrl_fuOpType; // @[DispatchQueue.scala 207:20]
  reg  deqData_1_ctrl_rfWen; // @[DispatchQueue.scala 207:20]
  reg  deqData_1_ctrl_fpWen; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_1_ctrl_selImm; // @[DispatchQueue.scala 207:20]
  reg [19:0] deqData_1_ctrl_imm; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_1_psrc_0; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_1_psrc_1; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_1_psrc_2; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_1_pdest; // @[DispatchQueue.scala 207:20]
  reg  deqData_1_robIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [4:0] deqData_1_robIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_1_lqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_1_lqIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_1_sqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_1_sqIdx_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_2_cf_ftqPtr_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_2_cf_ftqOffset; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_2_ctrl_srcType_0; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_2_ctrl_srcType_1; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_2_ctrl_srcType_2; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_2_ctrl_fuType; // @[DispatchQueue.scala 207:20]
  reg [6:0] deqData_2_ctrl_fuOpType; // @[DispatchQueue.scala 207:20]
  reg  deqData_2_ctrl_rfWen; // @[DispatchQueue.scala 207:20]
  reg  deqData_2_ctrl_fpWen; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_2_ctrl_selImm; // @[DispatchQueue.scala 207:20]
  reg [19:0] deqData_2_ctrl_imm; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_2_psrc_0; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_2_psrc_1; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_2_psrc_2; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_2_pdest; // @[DispatchQueue.scala 207:20]
  reg  deqData_2_robIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [4:0] deqData_2_robIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_2_lqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_2_lqIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_2_sqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_2_sqIdx_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_3_cf_ftqPtr_value; // @[DispatchQueue.scala 207:20]
  reg [2:0] deqData_3_cf_ftqOffset; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_3_ctrl_srcType_0; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_3_ctrl_srcType_1; // @[DispatchQueue.scala 207:20]
  reg [1:0] deqData_3_ctrl_srcType_2; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_3_ctrl_fuType; // @[DispatchQueue.scala 207:20]
  reg [6:0] deqData_3_ctrl_fuOpType; // @[DispatchQueue.scala 207:20]
  reg  deqData_3_ctrl_rfWen; // @[DispatchQueue.scala 207:20]
  reg  deqData_3_ctrl_fpWen; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_3_ctrl_selImm; // @[DispatchQueue.scala 207:20]
  reg [19:0] deqData_3_ctrl_imm; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_3_psrc_0; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_3_psrc_1; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_3_psrc_2; // @[DispatchQueue.scala 207:20]
  reg [5:0] deqData_3_pdest; // @[DispatchQueue.scala 207:20]
  reg  deqData_3_robIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [4:0] deqData_3_robIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_3_lqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_3_lqIdx_value; // @[DispatchQueue.scala 207:20]
  reg  deqData_3_sqIdx_flag; // @[DispatchQueue.scala 207:20]
  reg [3:0] deqData_3_sqIdx_value; // @[DispatchQueue.scala 207:20]
  wire  _io_deq_0_valid_T_34 = headPtrOH[0] & stateEntries_0 | headPtrOH[1] & stateEntries_1 | headPtrOH[2] &
    stateEntries_2 | headPtrOH[3] & stateEntries_3 | headPtrOH[4] & stateEntries_4 | headPtrOH[5] & stateEntries_5 |
    headPtrOH[6] & stateEntries_6 | headPtrOH[7] & stateEntries_7 | headPtrOH[8] & stateEntries_8 | headPtrOH[9] &
    stateEntries_9 | headPtrOH[10] & stateEntries_10 | headPtrOH[11] & stateEntries_11; // @[Mux.scala 27:73]
  wire  _io_deq_1_valid_T_34 = headPtrOHVec_1[0] & stateEntries_0 | headPtrOHVec_1[1] & stateEntries_1 | headPtrOHVec_1[
    2] & stateEntries_2 | headPtrOHVec_1[3] & stateEntries_3 | headPtrOHVec_1[4] & stateEntries_4 | headPtrOHVec_1[5] &
    stateEntries_5 | headPtrOHVec_1[6] & stateEntries_6 | headPtrOHVec_1[7] & stateEntries_7 | headPtrOHVec_1[8] &
    stateEntries_8 | headPtrOHVec_1[9] & stateEntries_9 | headPtrOHVec_1[10] & stateEntries_10 | headPtrOHVec_1[11] &
    stateEntries_11; // @[Mux.scala 27:73]
  wire  _io_deq_2_valid_T_34 = headPtrOHVec_2[0] & stateEntries_0 | headPtrOHVec_2[1] & stateEntries_1 | headPtrOHVec_2[
    2] & stateEntries_2 | headPtrOHVec_2[3] & stateEntries_3 | headPtrOHVec_2[4] & stateEntries_4 | headPtrOHVec_2[5] &
    stateEntries_5 | headPtrOHVec_2[6] & stateEntries_6 | headPtrOHVec_2[7] & stateEntries_7 | headPtrOHVec_2[8] &
    stateEntries_8 | headPtrOHVec_2[9] & stateEntries_9 | headPtrOHVec_2[10] & stateEntries_10 | headPtrOHVec_2[11] &
    stateEntries_11; // @[Mux.scala 27:73]
  wire  _io_deq_3_valid_T_34 = headPtrOHVec_3[0] & stateEntries_0 | headPtrOHVec_3[1] & stateEntries_1 | headPtrOHVec_3[
    2] & stateEntries_2 | headPtrOHVec_3[3] & stateEntries_3 | headPtrOHVec_3[4] & stateEntries_4 | headPtrOHVec_3[5] &
    stateEntries_5 | headPtrOHVec_3[6] & stateEntries_6 | headPtrOHVec_3[7] & stateEntries_7 | headPtrOHVec_3[8] &
    stateEntries_8 | headPtrOHVec_3[9] & stateEntries_9 | headPtrOHVec_3[10] & stateEntries_10 | headPtrOHVec_3[11] &
    stateEntries_11; // @[Mux.scala 27:73]
  wire  matrix_0_0 = tailPtr_0_value == headPtr_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_1 = tailPtr_1_value == headPtr_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_1_0 = tailPtr_0_value == headPtr_1_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_2_0 = tailPtr_0_value == headPtr_2_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_3_0 = tailPtr_0_value == headPtr_3_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_4_0 = tailPtr_0_value == headPtr_4_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_5_0 = tailPtr_0_value == headPtr_5_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_6_0 = tailPtr_0_value == headPtr_6_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_7_0 = tailPtr_0_value == headPtr_7_value; // @[CircularQueuePtr.scala 120:48]
  wire  enqBypassEnVec_0 = io_enq_needAlloc_0 & matrix_0_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_105 = io_enq_needAlloc_0 ? matrix_0_1 : matrix_0_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1 = io_enq_needAlloc_1 & _GEN_105; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T = {enqBypassEnVec_1,enqBypassEnVec_0}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn = io_enq_canAccept & |_enqBypassEn_T; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_48 = enqBypassEnVec_0 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_49 = enqBypassEnVec_1 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_robIdx_value = _enqBypassData_T_48 | _enqBypassData_T_49; // @[Mux.scala 27:73]
  wire  enqBypassData_robIdx_flag = enqBypassEnVec_0 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_54 = enqBypassEnVec_0 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_55 = enqBypassEnVec_1 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_pdest = _enqBypassData_T_54 | _enqBypassData_T_55; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_57 = enqBypassEnVec_0 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_58 = enqBypassEnVec_1 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_psrc_0 = _enqBypassData_T_57 | _enqBypassData_T_58; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_60 = enqBypassEnVec_0 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_61 = enqBypassEnVec_1 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_psrc_1 = _enqBypassData_T_60 | _enqBypassData_T_61; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_63 = enqBypassEnVec_0 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_64 = enqBypassEnVec_1 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_psrc_2 = _enqBypassData_T_63 | _enqBypassData_T_64; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_129 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_130 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_ctrl_imm = _enqBypassData_T_129 | _enqBypassData_T_130; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_132 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_133 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_ctrl_selImm = _enqBypassData_T_132 | _enqBypassData_T_133; // @[Mux.scala 27:73]
  wire  enqBypassData_ctrl_fpWen = enqBypassEnVec_0 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_ctrl_rfWen = enqBypassEnVec_0 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_153 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_154 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_ctrl_fuOpType = _enqBypassData_T_153 | _enqBypassData_T_154; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_156 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_157 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_ctrl_fuType = _enqBypassData_T_156 | _enqBypassData_T_157; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_171 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_172 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_ctrl_srcType_0 = _enqBypassData_T_171 | _enqBypassData_T_172; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_174 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_175 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_ctrl_srcType_1 = _enqBypassData_T_174 | _enqBypassData_T_175; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_177 = enqBypassEnVec_0 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_178 = enqBypassEnVec_1 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_ctrl_srcType_2 = _enqBypassData_T_177 | _enqBypassData_T_178; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_183 = enqBypassEnVec_0 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_184 = enqBypassEnVec_1 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_cf_ftqOffset = _enqBypassData_T_183 | _enqBypassData_T_184; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_186 = enqBypassEnVec_0 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_187 = enqBypassEnVec_1 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_cf_ftqPtr_value = _enqBypassData_T_186 | _enqBypassData_T_187; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_0_cf_ftqPtr_value = enqBypassEn ? enqBypassData_cf_ftqPtr_value : deqData_0_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_0_cf_ftqOffset = enqBypassEn ? enqBypassData_cf_ftqOffset : deqData_0_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_0_ctrl_srcType_0 = enqBypassEn ? enqBypassData_ctrl_srcType_0 : deqData_0_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_0_ctrl_srcType_1 = enqBypassEn ? enqBypassData_ctrl_srcType_1 : deqData_0_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_0_ctrl_srcType_2 = enqBypassEn ? enqBypassData_ctrl_srcType_2 : deqData_0_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_0_ctrl_fuType = enqBypassEn ? enqBypassData_ctrl_fuType : deqData_0_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_0_ctrl_fuOpType = enqBypassEn ? enqBypassData_ctrl_fuOpType : deqData_0_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_0_ctrl_rfWen = enqBypassEn ? enqBypassData_ctrl_rfWen : deqData_0_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_0_ctrl_fpWen = enqBypassEn ? enqBypassData_ctrl_fpWen : deqData_0_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_0_ctrl_selImm = enqBypassEn ? enqBypassData_ctrl_selImm : deqData_0_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_0_ctrl_imm = enqBypassEn ? enqBypassData_ctrl_imm : deqData_0_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_0_psrc_0 = enqBypassEn ? enqBypassData_psrc_0 : deqData_0_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_0_psrc_1 = enqBypassEn ? enqBypassData_psrc_1 : deqData_0_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_0_psrc_2 = enqBypassEn ? enqBypassData_psrc_2 : deqData_0_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_0_pdest = enqBypassEn ? enqBypassData_pdest : deqData_0_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_0_robIdx_flag = enqBypassEn ? enqBypassData_robIdx_flag : deqData_0_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_0_robIdx_value = enqBypassEn ? enqBypassData_robIdx_value : deqData_0_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_0_lqIdx_flag = enqBypassEn ? 1'h0 : deqData_0_lqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_0_lqIdx_value = enqBypassEn ? 4'h0 : deqData_0_lqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_0_sqIdx_flag = enqBypassEn ? 1'h0 : deqData_0_sqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_0_sqIdx_value = enqBypassEn ? 4'h0 : deqData_0_sqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_1 = io_enq_needAlloc_0 & matrix_1_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_107 = io_enq_needAlloc_0 ? matrix_0_0 : matrix_1_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_1 = io_enq_needAlloc_1 & _GEN_107; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_2 = {enqBypassEnVec_1_1,enqBypassEnVec_0_1}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_1 = io_enq_canAccept & |_enqBypassEn_T_2; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_372 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_373 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_1_robIdx_value = _enqBypassData_T_372 | _enqBypassData_T_373; // @[Mux.scala 27:73]
  wire  enqBypassData_1_robIdx_flag = enqBypassEnVec_0_1 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_1 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_378 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_379 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_1_pdest = _enqBypassData_T_378 | _enqBypassData_T_379; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_381 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_382 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_1_psrc_0 = _enqBypassData_T_381 | _enqBypassData_T_382; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_384 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_385 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_1_psrc_1 = _enqBypassData_T_384 | _enqBypassData_T_385; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_387 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_388 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_1_psrc_2 = _enqBypassData_T_387 | _enqBypassData_T_388; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_453 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_454 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_1_ctrl_imm = _enqBypassData_T_453 | _enqBypassData_T_454; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_456 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_457 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_1_ctrl_selImm = _enqBypassData_T_456 | _enqBypassData_T_457; // @[Mux.scala 27:73]
  wire  enqBypassData_1_ctrl_fpWen = enqBypassEnVec_0_1 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_1 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_1_ctrl_rfWen = enqBypassEnVec_0_1 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_1 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_477 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_478 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_1_ctrl_fuOpType = _enqBypassData_T_477 | _enqBypassData_T_478; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_480 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_481 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_1_ctrl_fuType = _enqBypassData_T_480 | _enqBypassData_T_481; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_495 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_496 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_1_ctrl_srcType_0 = _enqBypassData_T_495 | _enqBypassData_T_496; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_498 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_499 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_1_ctrl_srcType_1 = _enqBypassData_T_498 | _enqBypassData_T_499; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_501 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_502 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_1_ctrl_srcType_2 = _enqBypassData_T_501 | _enqBypassData_T_502; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_507 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_508 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_1_cf_ftqOffset = _enqBypassData_T_507 | _enqBypassData_T_508; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_510 = enqBypassEnVec_0_1 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_511 = enqBypassEnVec_1_1 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_1_cf_ftqPtr_value = _enqBypassData_T_510 | _enqBypassData_T_511; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_1_cf_ftqPtr_value = enqBypassEn_1 ? enqBypassData_1_cf_ftqPtr_value :
    deqData_1_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_1_cf_ftqOffset = enqBypassEn_1 ? enqBypassData_1_cf_ftqOffset : deqData_1_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_1_ctrl_srcType_0 = enqBypassEn_1 ? enqBypassData_1_ctrl_srcType_0 : deqData_1_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_1_ctrl_srcType_1 = enqBypassEn_1 ? enqBypassData_1_ctrl_srcType_1 : deqData_1_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_1_ctrl_srcType_2 = enqBypassEn_1 ? enqBypassData_1_ctrl_srcType_2 : deqData_1_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_1_ctrl_fuType = enqBypassEn_1 ? enqBypassData_1_ctrl_fuType : deqData_1_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_1_ctrl_fuOpType = enqBypassEn_1 ? enqBypassData_1_ctrl_fuOpType : deqData_1_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_1_ctrl_rfWen = enqBypassEn_1 ? enqBypassData_1_ctrl_rfWen : deqData_1_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_1_ctrl_fpWen = enqBypassEn_1 ? enqBypassData_1_ctrl_fpWen : deqData_1_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_1_ctrl_selImm = enqBypassEn_1 ? enqBypassData_1_ctrl_selImm : deqData_1_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_1_ctrl_imm = enqBypassEn_1 ? enqBypassData_1_ctrl_imm : deqData_1_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_1_psrc_0 = enqBypassEn_1 ? enqBypassData_1_psrc_0 : deqData_1_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_1_psrc_1 = enqBypassEn_1 ? enqBypassData_1_psrc_1 : deqData_1_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_1_psrc_2 = enqBypassEn_1 ? enqBypassData_1_psrc_2 : deqData_1_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_1_pdest = enqBypassEn_1 ? enqBypassData_1_pdest : deqData_1_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_1_robIdx_flag = enqBypassEn_1 ? enqBypassData_1_robIdx_flag : deqData_1_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_1_robIdx_value = enqBypassEn_1 ? enqBypassData_1_robIdx_value : deqData_1_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_1_lqIdx_flag = enqBypassEn_1 ? 1'h0 : deqData_1_lqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_1_lqIdx_value = enqBypassEn_1 ? 4'h0 : deqData_1_lqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_1_sqIdx_flag = enqBypassEn_1 ? 1'h0 : deqData_1_sqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_1_sqIdx_value = enqBypassEn_1 ? 4'h0 : deqData_1_sqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_2 = io_enq_needAlloc_0 & matrix_2_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_109 = io_enq_needAlloc_0 ? matrix_1_0 : matrix_2_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_2 = io_enq_needAlloc_1 & _GEN_109; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_4 = {enqBypassEnVec_1_2,enqBypassEnVec_0_2}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_2 = io_enq_canAccept & |_enqBypassEn_T_4; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_696 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_697 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_2_robIdx_value = _enqBypassData_T_696 | _enqBypassData_T_697; // @[Mux.scala 27:73]
  wire  enqBypassData_2_robIdx_flag = enqBypassEnVec_0_2 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_2 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_702 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_703 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_2_pdest = _enqBypassData_T_702 | _enqBypassData_T_703; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_705 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_706 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_2_psrc_0 = _enqBypassData_T_705 | _enqBypassData_T_706; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_708 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_709 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_2_psrc_1 = _enqBypassData_T_708 | _enqBypassData_T_709; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_711 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_712 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_2_psrc_2 = _enqBypassData_T_711 | _enqBypassData_T_712; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_777 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_778 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_2_ctrl_imm = _enqBypassData_T_777 | _enqBypassData_T_778; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_780 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_781 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_2_ctrl_selImm = _enqBypassData_T_780 | _enqBypassData_T_781; // @[Mux.scala 27:73]
  wire  enqBypassData_2_ctrl_fpWen = enqBypassEnVec_0_2 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_2 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_2_ctrl_rfWen = enqBypassEnVec_0_2 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_2 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_801 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_802 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_2_ctrl_fuOpType = _enqBypassData_T_801 | _enqBypassData_T_802; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_804 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_805 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_2_ctrl_fuType = _enqBypassData_T_804 | _enqBypassData_T_805; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_819 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_820 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_2_ctrl_srcType_0 = _enqBypassData_T_819 | _enqBypassData_T_820; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_822 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_823 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_2_ctrl_srcType_1 = _enqBypassData_T_822 | _enqBypassData_T_823; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_825 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_826 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_2_ctrl_srcType_2 = _enqBypassData_T_825 | _enqBypassData_T_826; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_831 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_832 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_2_cf_ftqOffset = _enqBypassData_T_831 | _enqBypassData_T_832; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_834 = enqBypassEnVec_0_2 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_835 = enqBypassEnVec_1_2 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_2_cf_ftqPtr_value = _enqBypassData_T_834 | _enqBypassData_T_835; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_2_cf_ftqPtr_value = enqBypassEn_2 ? enqBypassData_2_cf_ftqPtr_value :
    deqData_2_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_2_cf_ftqOffset = enqBypassEn_2 ? enqBypassData_2_cf_ftqOffset : deqData_2_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_2_ctrl_srcType_0 = enqBypassEn_2 ? enqBypassData_2_ctrl_srcType_0 : deqData_2_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_2_ctrl_srcType_1 = enqBypassEn_2 ? enqBypassData_2_ctrl_srcType_1 : deqData_2_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_2_ctrl_srcType_2 = enqBypassEn_2 ? enqBypassData_2_ctrl_srcType_2 : deqData_2_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_2_ctrl_fuType = enqBypassEn_2 ? enqBypassData_2_ctrl_fuType : deqData_2_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_2_ctrl_fuOpType = enqBypassEn_2 ? enqBypassData_2_ctrl_fuOpType : deqData_2_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_2_ctrl_rfWen = enqBypassEn_2 ? enqBypassData_2_ctrl_rfWen : deqData_2_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_2_ctrl_fpWen = enqBypassEn_2 ? enqBypassData_2_ctrl_fpWen : deqData_2_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_2_ctrl_selImm = enqBypassEn_2 ? enqBypassData_2_ctrl_selImm : deqData_2_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_2_ctrl_imm = enqBypassEn_2 ? enqBypassData_2_ctrl_imm : deqData_2_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_2_psrc_0 = enqBypassEn_2 ? enqBypassData_2_psrc_0 : deqData_2_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_2_psrc_1 = enqBypassEn_2 ? enqBypassData_2_psrc_1 : deqData_2_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_2_psrc_2 = enqBypassEn_2 ? enqBypassData_2_psrc_2 : deqData_2_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_2_pdest = enqBypassEn_2 ? enqBypassData_2_pdest : deqData_2_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_2_robIdx_flag = enqBypassEn_2 ? enqBypassData_2_robIdx_flag : deqData_2_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_2_robIdx_value = enqBypassEn_2 ? enqBypassData_2_robIdx_value : deqData_2_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_2_lqIdx_flag = enqBypassEn_2 ? 1'h0 : deqData_2_lqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_2_lqIdx_value = enqBypassEn_2 ? 4'h0 : deqData_2_lqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_2_sqIdx_flag = enqBypassEn_2 ? 1'h0 : deqData_2_sqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_2_sqIdx_value = enqBypassEn_2 ? 4'h0 : deqData_2_sqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_3 = io_enq_needAlloc_0 & matrix_3_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_111 = io_enq_needAlloc_0 ? matrix_2_0 : matrix_3_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_3 = io_enq_needAlloc_1 & _GEN_111; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_6 = {enqBypassEnVec_1_3,enqBypassEnVec_0_3}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_3 = io_enq_canAccept & |_enqBypassEn_T_6; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_1020 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_1021 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_3_robIdx_value = _enqBypassData_T_1020 | _enqBypassData_T_1021; // @[Mux.scala 27:73]
  wire  enqBypassData_3_robIdx_flag = enqBypassEnVec_0_3 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_3 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1026 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1027 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_3_pdest = _enqBypassData_T_1026 | _enqBypassData_T_1027; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1029 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1030 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_3_psrc_0 = _enqBypassData_T_1029 | _enqBypassData_T_1030; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1032 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1033 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_3_psrc_1 = _enqBypassData_T_1032 | _enqBypassData_T_1033; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1035 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1036 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_3_psrc_2 = _enqBypassData_T_1035 | _enqBypassData_T_1036; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_1101 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_1102 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_3_ctrl_imm = _enqBypassData_T_1101 | _enqBypassData_T_1102; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1104 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1105 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_3_ctrl_selImm = _enqBypassData_T_1104 | _enqBypassData_T_1105; // @[Mux.scala 27:73]
  wire  enqBypassData_3_ctrl_fpWen = enqBypassEnVec_0_3 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_3 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_3_ctrl_rfWen = enqBypassEnVec_0_3 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_3 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_1125 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_1126 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_3_ctrl_fuOpType = _enqBypassData_T_1125 | _enqBypassData_T_1126; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1128 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1129 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_3_ctrl_fuType = _enqBypassData_T_1128 | _enqBypassData_T_1129; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1143 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1144 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_3_ctrl_srcType_0 = _enqBypassData_T_1143 | _enqBypassData_T_1144; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1146 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1147 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_3_ctrl_srcType_1 = _enqBypassData_T_1146 | _enqBypassData_T_1147; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1149 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1150 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_3_ctrl_srcType_2 = _enqBypassData_T_1149 | _enqBypassData_T_1150; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1155 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1156 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_3_cf_ftqOffset = _enqBypassData_T_1155 | _enqBypassData_T_1156; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1158 = enqBypassEnVec_0_3 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1159 = enqBypassEnVec_1_3 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_3_cf_ftqPtr_value = _enqBypassData_T_1158 | _enqBypassData_T_1159; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_3_cf_ftqPtr_value = enqBypassEn_3 ? enqBypassData_3_cf_ftqPtr_value :
    deqData_3_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_3_cf_ftqOffset = enqBypassEn_3 ? enqBypassData_3_cf_ftqOffset : deqData_3_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_3_ctrl_srcType_0 = enqBypassEn_3 ? enqBypassData_3_ctrl_srcType_0 : deqData_3_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_3_ctrl_srcType_1 = enqBypassEn_3 ? enqBypassData_3_ctrl_srcType_1 : deqData_3_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_3_ctrl_srcType_2 = enqBypassEn_3 ? enqBypassData_3_ctrl_srcType_2 : deqData_3_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_3_ctrl_fuType = enqBypassEn_3 ? enqBypassData_3_ctrl_fuType : deqData_3_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_3_ctrl_fuOpType = enqBypassEn_3 ? enqBypassData_3_ctrl_fuOpType : deqData_3_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_3_ctrl_rfWen = enqBypassEn_3 ? enqBypassData_3_ctrl_rfWen : deqData_3_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_3_ctrl_fpWen = enqBypassEn_3 ? enqBypassData_3_ctrl_fpWen : deqData_3_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_3_ctrl_selImm = enqBypassEn_3 ? enqBypassData_3_ctrl_selImm : deqData_3_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_3_ctrl_imm = enqBypassEn_3 ? enqBypassData_3_ctrl_imm : deqData_3_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_3_psrc_0 = enqBypassEn_3 ? enqBypassData_3_psrc_0 : deqData_3_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_3_psrc_1 = enqBypassEn_3 ? enqBypassData_3_psrc_1 : deqData_3_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_3_psrc_2 = enqBypassEn_3 ? enqBypassData_3_psrc_2 : deqData_3_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_3_pdest = enqBypassEn_3 ? enqBypassData_3_pdest : deqData_3_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_3_robIdx_flag = enqBypassEn_3 ? enqBypassData_3_robIdx_flag : deqData_3_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_3_robIdx_value = enqBypassEn_3 ? enqBypassData_3_robIdx_value : deqData_3_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_3_lqIdx_flag = enqBypassEn_3 ? 1'h0 : deqData_3_lqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_3_lqIdx_value = enqBypassEn_3 ? 4'h0 : deqData_3_lqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_3_sqIdx_flag = enqBypassEn_3 ? 1'h0 : deqData_3_sqIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_3_sqIdx_value = enqBypassEn_3 ? 4'h0 : deqData_3_sqIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_4 = io_enq_needAlloc_0 & matrix_4_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_113 = io_enq_needAlloc_0 ? matrix_3_0 : matrix_4_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_4 = io_enq_needAlloc_1 & _GEN_113; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_8 = {enqBypassEnVec_1_4,enqBypassEnVec_0_4}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_4 = io_enq_canAccept & |_enqBypassEn_T_8; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_1344 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_1345 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_4_robIdx_value = _enqBypassData_T_1344 | _enqBypassData_T_1345; // @[Mux.scala 27:73]
  wire  enqBypassData_4_robIdx_flag = enqBypassEnVec_0_4 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_4 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1350 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1351 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_4_pdest = _enqBypassData_T_1350 | _enqBypassData_T_1351; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1353 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1354 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_4_psrc_0 = _enqBypassData_T_1353 | _enqBypassData_T_1354; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1356 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1357 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_4_psrc_1 = _enqBypassData_T_1356 | _enqBypassData_T_1357; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1359 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1360 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_4_psrc_2 = _enqBypassData_T_1359 | _enqBypassData_T_1360; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_1425 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_1426 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_4_ctrl_imm = _enqBypassData_T_1425 | _enqBypassData_T_1426; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1428 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1429 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_4_ctrl_selImm = _enqBypassData_T_1428 | _enqBypassData_T_1429; // @[Mux.scala 27:73]
  wire  enqBypassData_4_ctrl_fpWen = enqBypassEnVec_0_4 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_4 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_4_ctrl_rfWen = enqBypassEnVec_0_4 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_4 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_1449 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_1450 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_4_ctrl_fuOpType = _enqBypassData_T_1449 | _enqBypassData_T_1450; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1452 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1453 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_4_ctrl_fuType = _enqBypassData_T_1452 | _enqBypassData_T_1453; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1467 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1468 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_4_ctrl_srcType_0 = _enqBypassData_T_1467 | _enqBypassData_T_1468; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1470 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1471 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_4_ctrl_srcType_1 = _enqBypassData_T_1470 | _enqBypassData_T_1471; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1473 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1474 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_4_ctrl_srcType_2 = _enqBypassData_T_1473 | _enqBypassData_T_1474; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1479 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1480 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_4_cf_ftqOffset = _enqBypassData_T_1479 | _enqBypassData_T_1480; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1482 = enqBypassEnVec_0_4 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1483 = enqBypassEnVec_1_4 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_4_cf_ftqPtr_value = _enqBypassData_T_1482 | _enqBypassData_T_1483; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_4_cf_ftqPtr_value = enqBypassEn_4 ? enqBypassData_4_cf_ftqPtr_value :
    dataModule_io_rdata_4_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_4_cf_ftqOffset = enqBypassEn_4 ? enqBypassData_4_cf_ftqOffset :
    dataModule_io_rdata_4_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_4_ctrl_srcType_0 = enqBypassEn_4 ? enqBypassData_4_ctrl_srcType_0 :
    dataModule_io_rdata_4_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_4_ctrl_srcType_1 = enqBypassEn_4 ? enqBypassData_4_ctrl_srcType_1 :
    dataModule_io_rdata_4_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_4_ctrl_srcType_2 = enqBypassEn_4 ? enqBypassData_4_ctrl_srcType_2 :
    dataModule_io_rdata_4_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_4_ctrl_fuType = enqBypassEn_4 ? enqBypassData_4_ctrl_fuType :
    dataModule_io_rdata_4_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_4_ctrl_fuOpType = enqBypassEn_4 ? enqBypassData_4_ctrl_fuOpType :
    dataModule_io_rdata_4_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_4_ctrl_rfWen = enqBypassEn_4 ? enqBypassData_4_ctrl_rfWen : dataModule_io_rdata_4_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_4_ctrl_fpWen = enqBypassEn_4 ? enqBypassData_4_ctrl_fpWen : dataModule_io_rdata_4_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_4_ctrl_selImm = enqBypassEn_4 ? enqBypassData_4_ctrl_selImm :
    dataModule_io_rdata_4_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_4_ctrl_imm = enqBypassEn_4 ? enqBypassData_4_ctrl_imm : dataModule_io_rdata_4_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_4_psrc_0 = enqBypassEn_4 ? enqBypassData_4_psrc_0 : dataModule_io_rdata_4_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_4_psrc_1 = enqBypassEn_4 ? enqBypassData_4_psrc_1 : dataModule_io_rdata_4_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_4_psrc_2 = enqBypassEn_4 ? enqBypassData_4_psrc_2 : dataModule_io_rdata_4_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_4_pdest = enqBypassEn_4 ? enqBypassData_4_pdest : dataModule_io_rdata_4_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_4_robIdx_flag = enqBypassEn_4 ? enqBypassData_4_robIdx_flag : dataModule_io_rdata_4_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_4_robIdx_value = enqBypassEn_4 ? enqBypassData_4_robIdx_value :
    dataModule_io_rdata_4_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_5 = io_enq_needAlloc_0 & matrix_5_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_115 = io_enq_needAlloc_0 ? matrix_4_0 : matrix_5_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_5 = io_enq_needAlloc_1 & _GEN_115; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_10 = {enqBypassEnVec_1_5,enqBypassEnVec_0_5}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_5 = io_enq_canAccept & |_enqBypassEn_T_10; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_1668 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_1669 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_5_robIdx_value = _enqBypassData_T_1668 | _enqBypassData_T_1669; // @[Mux.scala 27:73]
  wire  enqBypassData_5_robIdx_flag = enqBypassEnVec_0_5 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_5 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1674 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1675 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_5_pdest = _enqBypassData_T_1674 | _enqBypassData_T_1675; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1677 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1678 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_5_psrc_0 = _enqBypassData_T_1677 | _enqBypassData_T_1678; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1680 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1681 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_5_psrc_1 = _enqBypassData_T_1680 | _enqBypassData_T_1681; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1683 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1684 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_5_psrc_2 = _enqBypassData_T_1683 | _enqBypassData_T_1684; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_1749 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_1750 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_5_ctrl_imm = _enqBypassData_T_1749 | _enqBypassData_T_1750; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1752 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1753 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_5_ctrl_selImm = _enqBypassData_T_1752 | _enqBypassData_T_1753; // @[Mux.scala 27:73]
  wire  enqBypassData_5_ctrl_fpWen = enqBypassEnVec_0_5 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_5 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_5_ctrl_rfWen = enqBypassEnVec_0_5 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_5 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_1773 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_1774 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_5_ctrl_fuOpType = _enqBypassData_T_1773 | _enqBypassData_T_1774; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1776 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_1777 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_5_ctrl_fuType = _enqBypassData_T_1776 | _enqBypassData_T_1777; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1791 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1792 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_5_ctrl_srcType_0 = _enqBypassData_T_1791 | _enqBypassData_T_1792; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1794 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1795 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_5_ctrl_srcType_1 = _enqBypassData_T_1794 | _enqBypassData_T_1795; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1797 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_1798 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_5_ctrl_srcType_2 = _enqBypassData_T_1797 | _enqBypassData_T_1798; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1803 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1804 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_5_cf_ftqOffset = _enqBypassData_T_1803 | _enqBypassData_T_1804; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1806 = enqBypassEnVec_0_5 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_1807 = enqBypassEnVec_1_5 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_5_cf_ftqPtr_value = _enqBypassData_T_1806 | _enqBypassData_T_1807; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_5_cf_ftqPtr_value = enqBypassEn_5 ? enqBypassData_5_cf_ftqPtr_value :
    dataModule_io_rdata_5_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_5_cf_ftqOffset = enqBypassEn_5 ? enqBypassData_5_cf_ftqOffset :
    dataModule_io_rdata_5_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_5_ctrl_srcType_0 = enqBypassEn_5 ? enqBypassData_5_ctrl_srcType_0 :
    dataModule_io_rdata_5_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_5_ctrl_srcType_1 = enqBypassEn_5 ? enqBypassData_5_ctrl_srcType_1 :
    dataModule_io_rdata_5_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_5_ctrl_srcType_2 = enqBypassEn_5 ? enqBypassData_5_ctrl_srcType_2 :
    dataModule_io_rdata_5_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_5_ctrl_fuType = enqBypassEn_5 ? enqBypassData_5_ctrl_fuType :
    dataModule_io_rdata_5_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_5_ctrl_fuOpType = enqBypassEn_5 ? enqBypassData_5_ctrl_fuOpType :
    dataModule_io_rdata_5_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_5_ctrl_rfWen = enqBypassEn_5 ? enqBypassData_5_ctrl_rfWen : dataModule_io_rdata_5_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_5_ctrl_fpWen = enqBypassEn_5 ? enqBypassData_5_ctrl_fpWen : dataModule_io_rdata_5_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_5_ctrl_selImm = enqBypassEn_5 ? enqBypassData_5_ctrl_selImm :
    dataModule_io_rdata_5_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_5_ctrl_imm = enqBypassEn_5 ? enqBypassData_5_ctrl_imm : dataModule_io_rdata_5_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_5_psrc_0 = enqBypassEn_5 ? enqBypassData_5_psrc_0 : dataModule_io_rdata_5_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_5_psrc_1 = enqBypassEn_5 ? enqBypassData_5_psrc_1 : dataModule_io_rdata_5_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_5_psrc_2 = enqBypassEn_5 ? enqBypassData_5_psrc_2 : dataModule_io_rdata_5_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_5_pdest = enqBypassEn_5 ? enqBypassData_5_pdest : dataModule_io_rdata_5_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_5_robIdx_flag = enqBypassEn_5 ? enqBypassData_5_robIdx_flag : dataModule_io_rdata_5_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_5_robIdx_value = enqBypassEn_5 ? enqBypassData_5_robIdx_value :
    dataModule_io_rdata_5_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_6 = io_enq_needAlloc_0 & matrix_6_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_117 = io_enq_needAlloc_0 ? matrix_5_0 : matrix_6_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_6 = io_enq_needAlloc_1 & _GEN_117; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_12 = {enqBypassEnVec_1_6,enqBypassEnVec_0_6}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_6 = io_enq_canAccept & |_enqBypassEn_T_12; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_1992 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_1993 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_6_robIdx_value = _enqBypassData_T_1992 | _enqBypassData_T_1993; // @[Mux.scala 27:73]
  wire  enqBypassData_6_robIdx_flag = enqBypassEnVec_0_6 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_6 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1998 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_1999 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_6_pdest = _enqBypassData_T_1998 | _enqBypassData_T_1999; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2001 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2002 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_6_psrc_0 = _enqBypassData_T_2001 | _enqBypassData_T_2002; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2004 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2005 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_6_psrc_1 = _enqBypassData_T_2004 | _enqBypassData_T_2005; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2007 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2008 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_6_psrc_2 = _enqBypassData_T_2007 | _enqBypassData_T_2008; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_2073 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_2074 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_6_ctrl_imm = _enqBypassData_T_2073 | _enqBypassData_T_2074; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2076 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2077 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_6_ctrl_selImm = _enqBypassData_T_2076 | _enqBypassData_T_2077; // @[Mux.scala 27:73]
  wire  enqBypassData_6_ctrl_fpWen = enqBypassEnVec_0_6 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_6 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_6_ctrl_rfWen = enqBypassEnVec_0_6 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_6 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_2097 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_2098 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_6_ctrl_fuOpType = _enqBypassData_T_2097 | _enqBypassData_T_2098; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2100 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2101 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_6_ctrl_fuType = _enqBypassData_T_2100 | _enqBypassData_T_2101; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2115 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2116 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_6_ctrl_srcType_0 = _enqBypassData_T_2115 | _enqBypassData_T_2116; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2118 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2119 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_6_ctrl_srcType_1 = _enqBypassData_T_2118 | _enqBypassData_T_2119; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2121 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2122 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_6_ctrl_srcType_2 = _enqBypassData_T_2121 | _enqBypassData_T_2122; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2127 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2128 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_6_cf_ftqOffset = _enqBypassData_T_2127 | _enqBypassData_T_2128; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2130 = enqBypassEnVec_0_6 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2131 = enqBypassEnVec_1_6 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_6_cf_ftqPtr_value = _enqBypassData_T_2130 | _enqBypassData_T_2131; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_6_cf_ftqPtr_value = enqBypassEn_6 ? enqBypassData_6_cf_ftqPtr_value :
    dataModule_io_rdata_6_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_6_cf_ftqOffset = enqBypassEn_6 ? enqBypassData_6_cf_ftqOffset :
    dataModule_io_rdata_6_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_6_ctrl_srcType_0 = enqBypassEn_6 ? enqBypassData_6_ctrl_srcType_0 :
    dataModule_io_rdata_6_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_6_ctrl_srcType_1 = enqBypassEn_6 ? enqBypassData_6_ctrl_srcType_1 :
    dataModule_io_rdata_6_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_6_ctrl_srcType_2 = enqBypassEn_6 ? enqBypassData_6_ctrl_srcType_2 :
    dataModule_io_rdata_6_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_6_ctrl_fuType = enqBypassEn_6 ? enqBypassData_6_ctrl_fuType :
    dataModule_io_rdata_6_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_6_ctrl_fuOpType = enqBypassEn_6 ? enqBypassData_6_ctrl_fuOpType :
    dataModule_io_rdata_6_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_6_ctrl_rfWen = enqBypassEn_6 ? enqBypassData_6_ctrl_rfWen : dataModule_io_rdata_6_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_6_ctrl_fpWen = enqBypassEn_6 ? enqBypassData_6_ctrl_fpWen : dataModule_io_rdata_6_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_6_ctrl_selImm = enqBypassEn_6 ? enqBypassData_6_ctrl_selImm :
    dataModule_io_rdata_6_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_6_ctrl_imm = enqBypassEn_6 ? enqBypassData_6_ctrl_imm : dataModule_io_rdata_6_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_6_psrc_0 = enqBypassEn_6 ? enqBypassData_6_psrc_0 : dataModule_io_rdata_6_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_6_psrc_1 = enqBypassEn_6 ? enqBypassData_6_psrc_1 : dataModule_io_rdata_6_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_6_psrc_2 = enqBypassEn_6 ? enqBypassData_6_psrc_2 : dataModule_io_rdata_6_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_6_pdest = enqBypassEn_6 ? enqBypassData_6_pdest : dataModule_io_rdata_6_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_6_robIdx_flag = enqBypassEn_6 ? enqBypassData_6_robIdx_flag : dataModule_io_rdata_6_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_6_robIdx_value = enqBypassEn_6 ? enqBypassData_6_robIdx_value :
    dataModule_io_rdata_6_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire  enqBypassEnVec_0_7 = io_enq_needAlloc_0 & matrix_7_0; // @[DispatchQueue.scala 226:80]
  wire  _GEN_119 = io_enq_needAlloc_0 ? matrix_6_0 : matrix_7_0; // @[DispatchQueue.scala 226:{80,80}]
  wire  enqBypassEnVec_1_7 = io_enq_needAlloc_1 & _GEN_119; // @[DispatchQueue.scala 226:80]
  wire [1:0] _enqBypassEn_T_14 = {enqBypassEnVec_1_7,enqBypassEnVec_0_7}; // @[DispatchQueue.scala 227:67]
  wire  enqBypassEn_7 = io_enq_canAccept & |_enqBypassEn_T_14; // @[DispatchQueue.scala 227:40]
  wire [4:0] _enqBypassData_T_2316 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _enqBypassData_T_2317 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] enqBypassData_7_robIdx_value = _enqBypassData_T_2316 | _enqBypassData_T_2317; // @[Mux.scala 27:73]
  wire  enqBypassData_7_robIdx_flag = enqBypassEnVec_0_7 & io_enq_req_0_bits_robIdx_flag | enqBypassEnVec_1_7 &
    io_enq_req_1_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2322 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2323 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_7_pdest = _enqBypassData_T_2322 | _enqBypassData_T_2323; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2325 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2326 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_7_psrc_0 = _enqBypassData_T_2325 | _enqBypassData_T_2326; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2328 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2329 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_7_psrc_1 = _enqBypassData_T_2328 | _enqBypassData_T_2329; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2331 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _enqBypassData_T_2332 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] enqBypassData_7_psrc_2 = _enqBypassData_T_2331 | _enqBypassData_T_2332; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_2397 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _enqBypassData_T_2398 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] enqBypassData_7_ctrl_imm = _enqBypassData_T_2397 | _enqBypassData_T_2398; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2400 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2401 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_7_ctrl_selImm = _enqBypassData_T_2400 | _enqBypassData_T_2401; // @[Mux.scala 27:73]
  wire  enqBypassData_7_ctrl_fpWen = enqBypassEnVec_0_7 & io_enq_req_0_bits_ctrl_fpWen | enqBypassEnVec_1_7 &
    io_enq_req_1_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  enqBypassData_7_ctrl_rfWen = enqBypassEnVec_0_7 & io_enq_req_0_bits_ctrl_rfWen | enqBypassEnVec_1_7 &
    io_enq_req_1_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_2421 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _enqBypassData_T_2422 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] enqBypassData_7_ctrl_fuOpType = _enqBypassData_T_2421 | _enqBypassData_T_2422; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2424 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _enqBypassData_T_2425 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] enqBypassData_7_ctrl_fuType = _enqBypassData_T_2424 | _enqBypassData_T_2425; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2439 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2440 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_7_ctrl_srcType_0 = _enqBypassData_T_2439 | _enqBypassData_T_2440; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2442 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2443 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_7_ctrl_srcType_1 = _enqBypassData_T_2442 | _enqBypassData_T_2443; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2445 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _enqBypassData_T_2446 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] enqBypassData_7_ctrl_srcType_2 = _enqBypassData_T_2445 | _enqBypassData_T_2446; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2451 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2452 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_7_cf_ftqOffset = _enqBypassData_T_2451 | _enqBypassData_T_2452; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2454 = enqBypassEnVec_0_7 ? io_enq_req_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _enqBypassData_T_2455 = enqBypassEnVec_1_7 ? io_enq_req_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] enqBypassData_7_cf_ftqPtr_value = _enqBypassData_T_2454 | _enqBypassData_T_2455; // @[Mux.scala 27:73]
  wire [2:0] nextStepData_7_cf_ftqPtr_value = enqBypassEn_7 ? enqBypassData_7_cf_ftqPtr_value :
    dataModule_io_rdata_7_cf_ftqPtr_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] nextStepData_7_cf_ftqOffset = enqBypassEn_7 ? enqBypassData_7_cf_ftqOffset :
    dataModule_io_rdata_7_cf_ftqOffset; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_7_ctrl_srcType_0 = enqBypassEn_7 ? enqBypassData_7_ctrl_srcType_0 :
    dataModule_io_rdata_7_ctrl_srcType_0; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_7_ctrl_srcType_1 = enqBypassEn_7 ? enqBypassData_7_ctrl_srcType_1 :
    dataModule_io_rdata_7_ctrl_srcType_1; // @[DispatchQueue.scala 230:27]
  wire [1:0] nextStepData_7_ctrl_srcType_2 = enqBypassEn_7 ? enqBypassData_7_ctrl_srcType_2 :
    dataModule_io_rdata_7_ctrl_srcType_2; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_7_ctrl_fuType = enqBypassEn_7 ? enqBypassData_7_ctrl_fuType :
    dataModule_io_rdata_7_ctrl_fuType; // @[DispatchQueue.scala 230:27]
  wire [6:0] nextStepData_7_ctrl_fuOpType = enqBypassEn_7 ? enqBypassData_7_ctrl_fuOpType :
    dataModule_io_rdata_7_ctrl_fuOpType; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_7_ctrl_rfWen = enqBypassEn_7 ? enqBypassData_7_ctrl_rfWen : dataModule_io_rdata_7_ctrl_rfWen; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_7_ctrl_fpWen = enqBypassEn_7 ? enqBypassData_7_ctrl_fpWen : dataModule_io_rdata_7_ctrl_fpWen; // @[DispatchQueue.scala 230:27]
  wire [3:0] nextStepData_7_ctrl_selImm = enqBypassEn_7 ? enqBypassData_7_ctrl_selImm :
    dataModule_io_rdata_7_ctrl_selImm; // @[DispatchQueue.scala 230:27]
  wire [19:0] nextStepData_7_ctrl_imm = enqBypassEn_7 ? enqBypassData_7_ctrl_imm : dataModule_io_rdata_7_ctrl_imm; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_7_psrc_0 = enqBypassEn_7 ? enqBypassData_7_psrc_0 : dataModule_io_rdata_7_psrc_0; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_7_psrc_1 = enqBypassEn_7 ? enqBypassData_7_psrc_1 : dataModule_io_rdata_7_psrc_1; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_7_psrc_2 = enqBypassEn_7 ? enqBypassData_7_psrc_2 : dataModule_io_rdata_7_psrc_2; // @[DispatchQueue.scala 230:27]
  wire [5:0] nextStepData_7_pdest = enqBypassEn_7 ? enqBypassData_7_pdest : dataModule_io_rdata_7_pdest; // @[DispatchQueue.scala 230:27]
  wire  nextStepData_7_robIdx_flag = enqBypassEn_7 ? enqBypassData_7_robIdx_flag : dataModule_io_rdata_7_robIdx_flag; // @[DispatchQueue.scala 230:27]
  wire [4:0] nextStepData_7_robIdx_value = enqBypassEn_7 ? enqBypassData_7_robIdx_value :
    dataModule_io_rdata_7_robIdx_value; // @[DispatchQueue.scala 230:27]
  wire [2:0] _io_deqNext_0_T_1_cf_ftqPtr_value = deqEnable_n_0 ? nextStepData_0_cf_ftqPtr_value :
    nextStepData_1_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_1_cf_ftqOffset = deqEnable_n_0 ? nextStepData_0_cf_ftqOffset : nextStepData_1_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_1_ctrl_srcType_0 = deqEnable_n_0 ? nextStepData_0_ctrl_srcType_0 :
    nextStepData_1_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_1_ctrl_srcType_1 = deqEnable_n_0 ? nextStepData_0_ctrl_srcType_1 :
    nextStepData_1_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_1_ctrl_srcType_2 = deqEnable_n_0 ? nextStepData_0_ctrl_srcType_2 :
    nextStepData_1_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_1_ctrl_fuType = deqEnable_n_0 ? nextStepData_0_ctrl_fuType : nextStepData_1_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_0_T_1_ctrl_fuOpType = deqEnable_n_0 ? nextStepData_0_ctrl_fuOpType :
    nextStepData_1_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_1_ctrl_rfWen = deqEnable_n_0 ? nextStepData_0_ctrl_rfWen : nextStepData_1_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_1_ctrl_fpWen = deqEnable_n_0 ? nextStepData_0_ctrl_fpWen : nextStepData_1_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_1_ctrl_selImm = deqEnable_n_0 ? nextStepData_0_ctrl_selImm : nextStepData_1_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_0_T_1_ctrl_imm = deqEnable_n_0 ? nextStepData_0_ctrl_imm : nextStepData_1_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_1_psrc_0 = deqEnable_n_0 ? nextStepData_0_psrc_0 : nextStepData_1_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_1_psrc_1 = deqEnable_n_0 ? nextStepData_0_psrc_1 : nextStepData_1_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_1_psrc_2 = deqEnable_n_0 ? nextStepData_0_psrc_2 : nextStepData_1_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_1_pdest = deqEnable_n_0 ? nextStepData_0_pdest : nextStepData_1_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_1_robIdx_flag = deqEnable_n_0 ? nextStepData_0_robIdx_flag : nextStepData_1_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_0_T_1_robIdx_value = deqEnable_n_0 ? nextStepData_0_robIdx_value : nextStepData_1_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_1_lqIdx_flag = deqEnable_n_0 ? nextStepData_0_lqIdx_flag : nextStepData_1_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_1_lqIdx_value = deqEnable_n_0 ? nextStepData_0_lqIdx_value : nextStepData_1_lqIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_1_sqIdx_flag = deqEnable_n_0 ? nextStepData_0_sqIdx_flag : nextStepData_1_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_1_sqIdx_value = deqEnable_n_0 ? nextStepData_0_sqIdx_value : nextStepData_1_sqIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_3_cf_ftqPtr_value = deqEnable_n_3 ? nextStepData_3_cf_ftqPtr_value :
    nextStepData_4_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_3_cf_ftqOffset = deqEnable_n_3 ? nextStepData_3_cf_ftqOffset : nextStepData_4_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_3_ctrl_srcType_0 = deqEnable_n_3 ? nextStepData_3_ctrl_srcType_0 :
    nextStepData_4_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_3_ctrl_srcType_1 = deqEnable_n_3 ? nextStepData_3_ctrl_srcType_1 :
    nextStepData_4_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_3_ctrl_srcType_2 = deqEnable_n_3 ? nextStepData_3_ctrl_srcType_2 :
    nextStepData_4_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_3_ctrl_fuType = deqEnable_n_3 ? nextStepData_3_ctrl_fuType : nextStepData_4_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_0_T_3_ctrl_fuOpType = deqEnable_n_3 ? nextStepData_3_ctrl_fuOpType :
    nextStepData_4_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_3_ctrl_rfWen = deqEnable_n_3 ? nextStepData_3_ctrl_rfWen : nextStepData_4_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_3_ctrl_fpWen = deqEnable_n_3 ? nextStepData_3_ctrl_fpWen : nextStepData_4_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_3_ctrl_selImm = deqEnable_n_3 ? nextStepData_3_ctrl_selImm : nextStepData_4_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_0_T_3_ctrl_imm = deqEnable_n_3 ? nextStepData_3_ctrl_imm : nextStepData_4_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_3_psrc_0 = deqEnable_n_3 ? nextStepData_3_psrc_0 : nextStepData_4_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_3_psrc_1 = deqEnable_n_3 ? nextStepData_3_psrc_1 : nextStepData_4_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_3_psrc_2 = deqEnable_n_3 ? nextStepData_3_psrc_2 : nextStepData_4_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_3_pdest = deqEnable_n_3 ? nextStepData_3_pdest : nextStepData_4_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_3_robIdx_flag = deqEnable_n_3 ? nextStepData_3_robIdx_flag : nextStepData_4_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_0_T_3_robIdx_value = deqEnable_n_3 ? nextStepData_3_robIdx_value : nextStepData_4_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_3_lqIdx_value = deqEnable_n_3 ? nextStepData_3_lqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_3_sqIdx_value = deqEnable_n_3 ? nextStepData_3_sqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_5_cf_ftqPtr_value = deqEnable_n_2 ? nextStepData_2_cf_ftqPtr_value :
    _io_deqNext_0_T_3_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_5_cf_ftqOffset = deqEnable_n_2 ? nextStepData_2_cf_ftqOffset :
    _io_deqNext_0_T_3_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_5_ctrl_srcType_0 = deqEnable_n_2 ? nextStepData_2_ctrl_srcType_0 :
    _io_deqNext_0_T_3_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_5_ctrl_srcType_1 = deqEnable_n_2 ? nextStepData_2_ctrl_srcType_1 :
    _io_deqNext_0_T_3_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_5_ctrl_srcType_2 = deqEnable_n_2 ? nextStepData_2_ctrl_srcType_2 :
    _io_deqNext_0_T_3_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_5_ctrl_fuType = deqEnable_n_2 ? nextStepData_2_ctrl_fuType : _io_deqNext_0_T_3_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_0_T_5_ctrl_fuOpType = deqEnable_n_2 ? nextStepData_2_ctrl_fuOpType :
    _io_deqNext_0_T_3_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_5_ctrl_rfWen = deqEnable_n_2 ? nextStepData_2_ctrl_rfWen : _io_deqNext_0_T_3_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_5_ctrl_fpWen = deqEnable_n_2 ? nextStepData_2_ctrl_fpWen : _io_deqNext_0_T_3_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_5_ctrl_selImm = deqEnable_n_2 ? nextStepData_2_ctrl_selImm : _io_deqNext_0_T_3_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_0_T_5_ctrl_imm = deqEnable_n_2 ? nextStepData_2_ctrl_imm : _io_deqNext_0_T_3_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_5_psrc_0 = deqEnable_n_2 ? nextStepData_2_psrc_0 : _io_deqNext_0_T_3_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_5_psrc_1 = deqEnable_n_2 ? nextStepData_2_psrc_1 : _io_deqNext_0_T_3_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_5_psrc_2 = deqEnable_n_2 ? nextStepData_2_psrc_2 : _io_deqNext_0_T_3_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_5_pdest = deqEnable_n_2 ? nextStepData_2_pdest : _io_deqNext_0_T_3_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_5_robIdx_flag = deqEnable_n_2 ? nextStepData_2_robIdx_flag : _io_deqNext_0_T_3_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_0_T_5_robIdx_value = deqEnable_n_2 ? nextStepData_2_robIdx_value :
    _io_deqNext_0_T_3_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_5_lqIdx_flag = deqEnable_n_2 ? nextStepData_2_lqIdx_flag : deqEnable_n_3 &
    nextStepData_3_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_5_lqIdx_value = deqEnable_n_2 ? nextStepData_2_lqIdx_value : _io_deqNext_0_T_3_lqIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_5_sqIdx_flag = deqEnable_n_2 ? nextStepData_2_sqIdx_flag : deqEnable_n_3 &
    nextStepData_3_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_5_sqIdx_value = deqEnable_n_2 ? nextStepData_2_sqIdx_value : _io_deqNext_0_T_3_sqIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_7_cf_ftqPtr_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_cf_ftqPtr_value :
    _io_deqNext_0_T_5_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_0_T_7_cf_ftqOffset = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_cf_ftqOffset :
    _io_deqNext_0_T_5_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_7_ctrl_srcType_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_srcType_0 :
    _io_deqNext_0_T_5_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_7_ctrl_srcType_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_srcType_1 :
    _io_deqNext_0_T_5_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_0_T_7_ctrl_srcType_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_srcType_2 :
    _io_deqNext_0_T_5_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_7_ctrl_fuType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_fuType :
    _io_deqNext_0_T_5_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_0_T_7_ctrl_fuOpType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_fuOpType :
    _io_deqNext_0_T_5_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_7_ctrl_rfWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_rfWen :
    _io_deqNext_0_T_5_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_7_ctrl_fpWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_fpWen :
    _io_deqNext_0_T_5_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_7_ctrl_selImm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_selImm :
    _io_deqNext_0_T_5_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_0_T_7_ctrl_imm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_ctrl_imm :
    _io_deqNext_0_T_5_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_7_psrc_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_psrc_0 :
    _io_deqNext_0_T_5_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_7_psrc_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_psrc_1 :
    _io_deqNext_0_T_5_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_7_psrc_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_psrc_2 :
    _io_deqNext_0_T_5_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_0_T_7_pdest = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_pdest : _io_deqNext_0_T_5_pdest
    ; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_7_robIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_robIdx_flag :
    _io_deqNext_0_T_5_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_0_T_7_robIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_robIdx_value :
    _io_deqNext_0_T_5_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_7_lqIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_lqIdx_flag :
    _io_deqNext_0_T_5_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_7_lqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_lqIdx_value :
    _io_deqNext_0_T_5_lqIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_0_T_7_sqIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_sqIdx_flag :
    _io_deqNext_0_T_5_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_0_T_7_sqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_0_T_1_sqIdx_value :
    _io_deqNext_0_T_5_sqIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_1_cf_ftqPtr_value = deqEnable_n_0 ? nextStepData_1_cf_ftqPtr_value :
    nextStepData_2_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_1_cf_ftqOffset = deqEnable_n_0 ? nextStepData_1_cf_ftqOffset : nextStepData_2_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_1_ctrl_srcType_0 = deqEnable_n_0 ? nextStepData_1_ctrl_srcType_0 :
    nextStepData_2_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_1_ctrl_srcType_1 = deqEnable_n_0 ? nextStepData_1_ctrl_srcType_1 :
    nextStepData_2_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_1_ctrl_srcType_2 = deqEnable_n_0 ? nextStepData_1_ctrl_srcType_2 :
    nextStepData_2_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_1_ctrl_fuType = deqEnable_n_0 ? nextStepData_1_ctrl_fuType : nextStepData_2_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_1_T_1_ctrl_fuOpType = deqEnable_n_0 ? nextStepData_1_ctrl_fuOpType :
    nextStepData_2_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_1_ctrl_rfWen = deqEnable_n_0 ? nextStepData_1_ctrl_rfWen : nextStepData_2_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_1_ctrl_fpWen = deqEnable_n_0 ? nextStepData_1_ctrl_fpWen : nextStepData_2_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_1_ctrl_selImm = deqEnable_n_0 ? nextStepData_1_ctrl_selImm : nextStepData_2_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_1_T_1_ctrl_imm = deqEnable_n_0 ? nextStepData_1_ctrl_imm : nextStepData_2_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_1_psrc_0 = deqEnable_n_0 ? nextStepData_1_psrc_0 : nextStepData_2_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_1_psrc_1 = deqEnable_n_0 ? nextStepData_1_psrc_1 : nextStepData_2_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_1_psrc_2 = deqEnable_n_0 ? nextStepData_1_psrc_2 : nextStepData_2_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_1_pdest = deqEnable_n_0 ? nextStepData_1_pdest : nextStepData_2_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_1_robIdx_flag = deqEnable_n_0 ? nextStepData_1_robIdx_flag : nextStepData_2_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_1_T_1_robIdx_value = deqEnable_n_0 ? nextStepData_1_robIdx_value : nextStepData_2_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_1_lqIdx_flag = deqEnable_n_0 ? nextStepData_1_lqIdx_flag : nextStepData_2_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_1_lqIdx_value = deqEnable_n_0 ? nextStepData_1_lqIdx_value : nextStepData_2_lqIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_1_sqIdx_flag = deqEnable_n_0 ? nextStepData_1_sqIdx_flag : nextStepData_2_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_1_sqIdx_value = deqEnable_n_0 ? nextStepData_1_sqIdx_value : nextStepData_2_sqIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_3_cf_ftqPtr_value = deqEnable_n_3 ? nextStepData_4_cf_ftqPtr_value :
    nextStepData_5_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_3_cf_ftqOffset = deqEnable_n_3 ? nextStepData_4_cf_ftqOffset : nextStepData_5_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_3_ctrl_srcType_0 = deqEnable_n_3 ? nextStepData_4_ctrl_srcType_0 :
    nextStepData_5_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_3_ctrl_srcType_1 = deqEnable_n_3 ? nextStepData_4_ctrl_srcType_1 :
    nextStepData_5_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_3_ctrl_srcType_2 = deqEnable_n_3 ? nextStepData_4_ctrl_srcType_2 :
    nextStepData_5_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_3_ctrl_fuType = deqEnable_n_3 ? nextStepData_4_ctrl_fuType : nextStepData_5_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_1_T_3_ctrl_fuOpType = deqEnable_n_3 ? nextStepData_4_ctrl_fuOpType :
    nextStepData_5_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_3_ctrl_rfWen = deqEnable_n_3 ? nextStepData_4_ctrl_rfWen : nextStepData_5_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_3_ctrl_fpWen = deqEnable_n_3 ? nextStepData_4_ctrl_fpWen : nextStepData_5_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_3_ctrl_selImm = deqEnable_n_3 ? nextStepData_4_ctrl_selImm : nextStepData_5_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_1_T_3_ctrl_imm = deqEnable_n_3 ? nextStepData_4_ctrl_imm : nextStepData_5_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_3_psrc_0 = deqEnable_n_3 ? nextStepData_4_psrc_0 : nextStepData_5_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_3_psrc_1 = deqEnable_n_3 ? nextStepData_4_psrc_1 : nextStepData_5_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_3_psrc_2 = deqEnable_n_3 ? nextStepData_4_psrc_2 : nextStepData_5_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_3_pdest = deqEnable_n_3 ? nextStepData_4_pdest : nextStepData_5_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_3_robIdx_flag = deqEnable_n_3 ? nextStepData_4_robIdx_flag : nextStepData_5_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_1_T_3_robIdx_value = deqEnable_n_3 ? nextStepData_4_robIdx_value : nextStepData_5_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_5_cf_ftqPtr_value = deqEnable_n_2 ? nextStepData_3_cf_ftqPtr_value :
    _io_deqNext_1_T_3_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_5_cf_ftqOffset = deqEnable_n_2 ? nextStepData_3_cf_ftqOffset :
    _io_deqNext_1_T_3_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_5_ctrl_srcType_0 = deqEnable_n_2 ? nextStepData_3_ctrl_srcType_0 :
    _io_deqNext_1_T_3_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_5_ctrl_srcType_1 = deqEnable_n_2 ? nextStepData_3_ctrl_srcType_1 :
    _io_deqNext_1_T_3_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_5_ctrl_srcType_2 = deqEnable_n_2 ? nextStepData_3_ctrl_srcType_2 :
    _io_deqNext_1_T_3_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_5_ctrl_fuType = deqEnable_n_2 ? nextStepData_3_ctrl_fuType : _io_deqNext_1_T_3_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_1_T_5_ctrl_fuOpType = deqEnable_n_2 ? nextStepData_3_ctrl_fuOpType :
    _io_deqNext_1_T_3_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_5_ctrl_rfWen = deqEnable_n_2 ? nextStepData_3_ctrl_rfWen : _io_deqNext_1_T_3_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_5_ctrl_fpWen = deqEnable_n_2 ? nextStepData_3_ctrl_fpWen : _io_deqNext_1_T_3_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_5_ctrl_selImm = deqEnable_n_2 ? nextStepData_3_ctrl_selImm : _io_deqNext_1_T_3_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_1_T_5_ctrl_imm = deqEnable_n_2 ? nextStepData_3_ctrl_imm : _io_deqNext_1_T_3_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_5_psrc_0 = deqEnable_n_2 ? nextStepData_3_psrc_0 : _io_deqNext_1_T_3_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_5_psrc_1 = deqEnable_n_2 ? nextStepData_3_psrc_1 : _io_deqNext_1_T_3_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_5_psrc_2 = deqEnable_n_2 ? nextStepData_3_psrc_2 : _io_deqNext_1_T_3_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_5_pdest = deqEnable_n_2 ? nextStepData_3_pdest : _io_deqNext_1_T_3_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_5_robIdx_flag = deqEnable_n_2 ? nextStepData_3_robIdx_flag : _io_deqNext_1_T_3_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_1_T_5_robIdx_value = deqEnable_n_2 ? nextStepData_3_robIdx_value :
    _io_deqNext_1_T_3_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_5_lqIdx_value = deqEnable_n_2 ? nextStepData_3_lqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_5_sqIdx_value = deqEnable_n_2 ? nextStepData_3_sqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_7_cf_ftqPtr_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_cf_ftqPtr_value :
    _io_deqNext_1_T_5_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_1_T_7_cf_ftqOffset = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_cf_ftqOffset :
    _io_deqNext_1_T_5_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_7_ctrl_srcType_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_srcType_0 :
    _io_deqNext_1_T_5_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_7_ctrl_srcType_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_srcType_1 :
    _io_deqNext_1_T_5_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_1_T_7_ctrl_srcType_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_srcType_2 :
    _io_deqNext_1_T_5_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_7_ctrl_fuType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_fuType :
    _io_deqNext_1_T_5_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_1_T_7_ctrl_fuOpType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_fuOpType :
    _io_deqNext_1_T_5_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_7_ctrl_rfWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_rfWen :
    _io_deqNext_1_T_5_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_7_ctrl_fpWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_fpWen :
    _io_deqNext_1_T_5_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_7_ctrl_selImm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_selImm :
    _io_deqNext_1_T_5_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_1_T_7_ctrl_imm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_ctrl_imm :
    _io_deqNext_1_T_5_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_7_psrc_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_psrc_0 :
    _io_deqNext_1_T_5_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_7_psrc_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_psrc_1 :
    _io_deqNext_1_T_5_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_7_psrc_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_psrc_2 :
    _io_deqNext_1_T_5_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_1_T_7_pdest = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_pdest : _io_deqNext_1_T_5_pdest
    ; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_7_robIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_robIdx_flag :
    _io_deqNext_1_T_5_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_1_T_7_robIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_robIdx_value :
    _io_deqNext_1_T_5_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_7_lqIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_lqIdx_flag : deqEnable_n_2 &
    nextStepData_3_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_7_lqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_lqIdx_value :
    _io_deqNext_1_T_5_lqIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_1_T_7_sqIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_sqIdx_flag : deqEnable_n_2 &
    nextStepData_3_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_1_T_7_sqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_1_T_1_sqIdx_value :
    _io_deqNext_1_T_5_sqIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_1_cf_ftqPtr_value = deqEnable_n_0 ? nextStepData_2_cf_ftqPtr_value :
    nextStepData_3_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_1_cf_ftqOffset = deqEnable_n_0 ? nextStepData_2_cf_ftqOffset : nextStepData_3_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_1_ctrl_srcType_0 = deqEnable_n_0 ? nextStepData_2_ctrl_srcType_0 :
    nextStepData_3_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_1_ctrl_srcType_1 = deqEnable_n_0 ? nextStepData_2_ctrl_srcType_1 :
    nextStepData_3_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_1_ctrl_srcType_2 = deqEnable_n_0 ? nextStepData_2_ctrl_srcType_2 :
    nextStepData_3_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_1_ctrl_fuType = deqEnable_n_0 ? nextStepData_2_ctrl_fuType : nextStepData_3_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_2_T_1_ctrl_fuOpType = deqEnable_n_0 ? nextStepData_2_ctrl_fuOpType :
    nextStepData_3_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_1_ctrl_rfWen = deqEnable_n_0 ? nextStepData_2_ctrl_rfWen : nextStepData_3_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_1_ctrl_fpWen = deqEnable_n_0 ? nextStepData_2_ctrl_fpWen : nextStepData_3_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_1_ctrl_selImm = deqEnable_n_0 ? nextStepData_2_ctrl_selImm : nextStepData_3_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_2_T_1_ctrl_imm = deqEnable_n_0 ? nextStepData_2_ctrl_imm : nextStepData_3_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_1_psrc_0 = deqEnable_n_0 ? nextStepData_2_psrc_0 : nextStepData_3_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_1_psrc_1 = deqEnable_n_0 ? nextStepData_2_psrc_1 : nextStepData_3_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_1_psrc_2 = deqEnable_n_0 ? nextStepData_2_psrc_2 : nextStepData_3_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_1_pdest = deqEnable_n_0 ? nextStepData_2_pdest : nextStepData_3_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_1_robIdx_flag = deqEnable_n_0 ? nextStepData_2_robIdx_flag : nextStepData_3_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_2_T_1_robIdx_value = deqEnable_n_0 ? nextStepData_2_robIdx_value : nextStepData_3_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_1_lqIdx_flag = deqEnable_n_0 ? nextStepData_2_lqIdx_flag : nextStepData_3_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_1_lqIdx_value = deqEnable_n_0 ? nextStepData_2_lqIdx_value : nextStepData_3_lqIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_1_sqIdx_flag = deqEnable_n_0 ? nextStepData_2_sqIdx_flag : nextStepData_3_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_1_sqIdx_value = deqEnable_n_0 ? nextStepData_2_sqIdx_value : nextStepData_3_sqIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_3_cf_ftqPtr_value = deqEnable_n_3 ? nextStepData_5_cf_ftqPtr_value :
    nextStepData_6_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_3_cf_ftqOffset = deqEnable_n_3 ? nextStepData_5_cf_ftqOffset : nextStepData_6_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_3_ctrl_srcType_0 = deqEnable_n_3 ? nextStepData_5_ctrl_srcType_0 :
    nextStepData_6_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_3_ctrl_srcType_1 = deqEnable_n_3 ? nextStepData_5_ctrl_srcType_1 :
    nextStepData_6_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_3_ctrl_srcType_2 = deqEnable_n_3 ? nextStepData_5_ctrl_srcType_2 :
    nextStepData_6_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_3_ctrl_fuType = deqEnable_n_3 ? nextStepData_5_ctrl_fuType : nextStepData_6_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_2_T_3_ctrl_fuOpType = deqEnable_n_3 ? nextStepData_5_ctrl_fuOpType :
    nextStepData_6_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_3_ctrl_rfWen = deqEnable_n_3 ? nextStepData_5_ctrl_rfWen : nextStepData_6_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_3_ctrl_fpWen = deqEnable_n_3 ? nextStepData_5_ctrl_fpWen : nextStepData_6_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_3_ctrl_selImm = deqEnable_n_3 ? nextStepData_5_ctrl_selImm : nextStepData_6_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_2_T_3_ctrl_imm = deqEnable_n_3 ? nextStepData_5_ctrl_imm : nextStepData_6_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_3_psrc_0 = deqEnable_n_3 ? nextStepData_5_psrc_0 : nextStepData_6_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_3_psrc_1 = deqEnable_n_3 ? nextStepData_5_psrc_1 : nextStepData_6_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_3_psrc_2 = deqEnable_n_3 ? nextStepData_5_psrc_2 : nextStepData_6_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_3_pdest = deqEnable_n_3 ? nextStepData_5_pdest : nextStepData_6_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_3_robIdx_flag = deqEnable_n_3 ? nextStepData_5_robIdx_flag : nextStepData_6_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_2_T_3_robIdx_value = deqEnable_n_3 ? nextStepData_5_robIdx_value : nextStepData_6_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_5_cf_ftqPtr_value = deqEnable_n_2 ? nextStepData_4_cf_ftqPtr_value :
    _io_deqNext_2_T_3_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_5_cf_ftqOffset = deqEnable_n_2 ? nextStepData_4_cf_ftqOffset :
    _io_deqNext_2_T_3_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_5_ctrl_srcType_0 = deqEnable_n_2 ? nextStepData_4_ctrl_srcType_0 :
    _io_deqNext_2_T_3_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_5_ctrl_srcType_1 = deqEnable_n_2 ? nextStepData_4_ctrl_srcType_1 :
    _io_deqNext_2_T_3_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_5_ctrl_srcType_2 = deqEnable_n_2 ? nextStepData_4_ctrl_srcType_2 :
    _io_deqNext_2_T_3_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_5_ctrl_fuType = deqEnable_n_2 ? nextStepData_4_ctrl_fuType : _io_deqNext_2_T_3_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_2_T_5_ctrl_fuOpType = deqEnable_n_2 ? nextStepData_4_ctrl_fuOpType :
    _io_deqNext_2_T_3_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_5_ctrl_rfWen = deqEnable_n_2 ? nextStepData_4_ctrl_rfWen : _io_deqNext_2_T_3_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_5_ctrl_fpWen = deqEnable_n_2 ? nextStepData_4_ctrl_fpWen : _io_deqNext_2_T_3_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_5_ctrl_selImm = deqEnable_n_2 ? nextStepData_4_ctrl_selImm : _io_deqNext_2_T_3_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_2_T_5_ctrl_imm = deqEnable_n_2 ? nextStepData_4_ctrl_imm : _io_deqNext_2_T_3_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_5_psrc_0 = deqEnable_n_2 ? nextStepData_4_psrc_0 : _io_deqNext_2_T_3_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_5_psrc_1 = deqEnable_n_2 ? nextStepData_4_psrc_1 : _io_deqNext_2_T_3_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_5_psrc_2 = deqEnable_n_2 ? nextStepData_4_psrc_2 : _io_deqNext_2_T_3_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_5_pdest = deqEnable_n_2 ? nextStepData_4_pdest : _io_deqNext_2_T_3_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_5_robIdx_flag = deqEnable_n_2 ? nextStepData_4_robIdx_flag : _io_deqNext_2_T_3_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_2_T_5_robIdx_value = deqEnable_n_2 ? nextStepData_4_robIdx_value :
    _io_deqNext_2_T_3_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_7_cf_ftqPtr_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_cf_ftqPtr_value :
    _io_deqNext_2_T_5_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_2_T_7_cf_ftqOffset = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_cf_ftqOffset :
    _io_deqNext_2_T_5_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_7_ctrl_srcType_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_srcType_0 :
    _io_deqNext_2_T_5_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_7_ctrl_srcType_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_srcType_1 :
    _io_deqNext_2_T_5_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_2_T_7_ctrl_srcType_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_srcType_2 :
    _io_deqNext_2_T_5_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_7_ctrl_fuType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_fuType :
    _io_deqNext_2_T_5_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_2_T_7_ctrl_fuOpType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_fuOpType :
    _io_deqNext_2_T_5_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_7_ctrl_rfWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_rfWen :
    _io_deqNext_2_T_5_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_7_ctrl_fpWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_fpWen :
    _io_deqNext_2_T_5_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_7_ctrl_selImm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_selImm :
    _io_deqNext_2_T_5_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_2_T_7_ctrl_imm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_ctrl_imm :
    _io_deqNext_2_T_5_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_7_psrc_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_psrc_0 :
    _io_deqNext_2_T_5_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_7_psrc_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_psrc_1 :
    _io_deqNext_2_T_5_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_7_psrc_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_psrc_2 :
    _io_deqNext_2_T_5_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_2_T_7_pdest = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_pdest : _io_deqNext_2_T_5_pdest
    ; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_7_robIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_robIdx_flag :
    _io_deqNext_2_T_5_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_2_T_7_robIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_robIdx_value :
    _io_deqNext_2_T_5_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_7_lqIdx_flag = (deqEnable_n_0 | deqEnable_n_1) & _io_deqNext_2_T_1_lqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_7_lqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_lqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_2_T_7_sqIdx_flag = (deqEnable_n_0 | deqEnable_n_1) & _io_deqNext_2_T_1_sqIdx_flag; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_2_T_7_sqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_2_T_1_sqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_1_cf_ftqPtr_value = deqEnable_n_0 ? nextStepData_3_cf_ftqPtr_value :
    nextStepData_4_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_1_cf_ftqOffset = deqEnable_n_0 ? nextStepData_3_cf_ftqOffset : nextStepData_4_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_1_ctrl_srcType_0 = deqEnable_n_0 ? nextStepData_3_ctrl_srcType_0 :
    nextStepData_4_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_1_ctrl_srcType_1 = deqEnable_n_0 ? nextStepData_3_ctrl_srcType_1 :
    nextStepData_4_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_1_ctrl_srcType_2 = deqEnable_n_0 ? nextStepData_3_ctrl_srcType_2 :
    nextStepData_4_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_1_ctrl_fuType = deqEnable_n_0 ? nextStepData_3_ctrl_fuType : nextStepData_4_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_3_T_1_ctrl_fuOpType = deqEnable_n_0 ? nextStepData_3_ctrl_fuOpType :
    nextStepData_4_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_1_ctrl_rfWen = deqEnable_n_0 ? nextStepData_3_ctrl_rfWen : nextStepData_4_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_1_ctrl_fpWen = deqEnable_n_0 ? nextStepData_3_ctrl_fpWen : nextStepData_4_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_1_ctrl_selImm = deqEnable_n_0 ? nextStepData_3_ctrl_selImm : nextStepData_4_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_3_T_1_ctrl_imm = deqEnable_n_0 ? nextStepData_3_ctrl_imm : nextStepData_4_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_1_psrc_0 = deqEnable_n_0 ? nextStepData_3_psrc_0 : nextStepData_4_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_1_psrc_1 = deqEnable_n_0 ? nextStepData_3_psrc_1 : nextStepData_4_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_1_psrc_2 = deqEnable_n_0 ? nextStepData_3_psrc_2 : nextStepData_4_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_1_pdest = deqEnable_n_0 ? nextStepData_3_pdest : nextStepData_4_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_1_robIdx_flag = deqEnable_n_0 ? nextStepData_3_robIdx_flag : nextStepData_4_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_3_T_1_robIdx_value = deqEnable_n_0 ? nextStepData_3_robIdx_value : nextStepData_4_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_1_lqIdx_value = deqEnable_n_0 ? nextStepData_3_lqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_1_sqIdx_value = deqEnable_n_0 ? nextStepData_3_sqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_3_cf_ftqPtr_value = deqEnable_n_3 ? nextStepData_6_cf_ftqPtr_value :
    nextStepData_7_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_3_cf_ftqOffset = deqEnable_n_3 ? nextStepData_6_cf_ftqOffset : nextStepData_7_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_3_ctrl_srcType_0 = deqEnable_n_3 ? nextStepData_6_ctrl_srcType_0 :
    nextStepData_7_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_3_ctrl_srcType_1 = deqEnable_n_3 ? nextStepData_6_ctrl_srcType_1 :
    nextStepData_7_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_3_ctrl_srcType_2 = deqEnable_n_3 ? nextStepData_6_ctrl_srcType_2 :
    nextStepData_7_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_3_ctrl_fuType = deqEnable_n_3 ? nextStepData_6_ctrl_fuType : nextStepData_7_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_3_T_3_ctrl_fuOpType = deqEnable_n_3 ? nextStepData_6_ctrl_fuOpType :
    nextStepData_7_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_3_ctrl_rfWen = deqEnable_n_3 ? nextStepData_6_ctrl_rfWen : nextStepData_7_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_3_ctrl_fpWen = deqEnable_n_3 ? nextStepData_6_ctrl_fpWen : nextStepData_7_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_3_ctrl_selImm = deqEnable_n_3 ? nextStepData_6_ctrl_selImm : nextStepData_7_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_3_T_3_ctrl_imm = deqEnable_n_3 ? nextStepData_6_ctrl_imm : nextStepData_7_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_3_psrc_0 = deqEnable_n_3 ? nextStepData_6_psrc_0 : nextStepData_7_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_3_psrc_1 = deqEnable_n_3 ? nextStepData_6_psrc_1 : nextStepData_7_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_3_psrc_2 = deqEnable_n_3 ? nextStepData_6_psrc_2 : nextStepData_7_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_3_pdest = deqEnable_n_3 ? nextStepData_6_pdest : nextStepData_7_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_3_robIdx_flag = deqEnable_n_3 ? nextStepData_6_robIdx_flag : nextStepData_7_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_3_T_3_robIdx_value = deqEnable_n_3 ? nextStepData_6_robIdx_value : nextStepData_7_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_5_cf_ftqPtr_value = deqEnable_n_2 ? nextStepData_5_cf_ftqPtr_value :
    _io_deqNext_3_T_3_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_5_cf_ftqOffset = deqEnable_n_2 ? nextStepData_5_cf_ftqOffset :
    _io_deqNext_3_T_3_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_5_ctrl_srcType_0 = deqEnable_n_2 ? nextStepData_5_ctrl_srcType_0 :
    _io_deqNext_3_T_3_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_5_ctrl_srcType_1 = deqEnable_n_2 ? nextStepData_5_ctrl_srcType_1 :
    _io_deqNext_3_T_3_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_5_ctrl_srcType_2 = deqEnable_n_2 ? nextStepData_5_ctrl_srcType_2 :
    _io_deqNext_3_T_3_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_5_ctrl_fuType = deqEnable_n_2 ? nextStepData_5_ctrl_fuType : _io_deqNext_3_T_3_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_3_T_5_ctrl_fuOpType = deqEnable_n_2 ? nextStepData_5_ctrl_fuOpType :
    _io_deqNext_3_T_3_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_5_ctrl_rfWen = deqEnable_n_2 ? nextStepData_5_ctrl_rfWen : _io_deqNext_3_T_3_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_5_ctrl_fpWen = deqEnable_n_2 ? nextStepData_5_ctrl_fpWen : _io_deqNext_3_T_3_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_5_ctrl_selImm = deqEnable_n_2 ? nextStepData_5_ctrl_selImm : _io_deqNext_3_T_3_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_3_T_5_ctrl_imm = deqEnable_n_2 ? nextStepData_5_ctrl_imm : _io_deqNext_3_T_3_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_5_psrc_0 = deqEnable_n_2 ? nextStepData_5_psrc_0 : _io_deqNext_3_T_3_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_5_psrc_1 = deqEnable_n_2 ? nextStepData_5_psrc_1 : _io_deqNext_3_T_3_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_5_psrc_2 = deqEnable_n_2 ? nextStepData_5_psrc_2 : _io_deqNext_3_T_3_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_5_pdest = deqEnable_n_2 ? nextStepData_5_pdest : _io_deqNext_3_T_3_pdest; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_5_robIdx_flag = deqEnable_n_2 ? nextStepData_5_robIdx_flag : _io_deqNext_3_T_3_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_3_T_5_robIdx_value = deqEnable_n_2 ? nextStepData_5_robIdx_value :
    _io_deqNext_3_T_3_robIdx_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_7_cf_ftqPtr_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_cf_ftqPtr_value :
    _io_deqNext_3_T_5_cf_ftqPtr_value; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_deqNext_3_T_7_cf_ftqOffset = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_cf_ftqOffset :
    _io_deqNext_3_T_5_cf_ftqOffset; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_7_ctrl_srcType_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_srcType_0 :
    _io_deqNext_3_T_5_ctrl_srcType_0; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_7_ctrl_srcType_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_srcType_1 :
    _io_deqNext_3_T_5_ctrl_srcType_1; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_deqNext_3_T_7_ctrl_srcType_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_srcType_2 :
    _io_deqNext_3_T_5_ctrl_srcType_2; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_7_ctrl_fuType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_fuType :
    _io_deqNext_3_T_5_ctrl_fuType; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_deqNext_3_T_7_ctrl_fuOpType = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_fuOpType :
    _io_deqNext_3_T_5_ctrl_fuOpType; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_7_ctrl_rfWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_rfWen :
    _io_deqNext_3_T_5_ctrl_rfWen; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_7_ctrl_fpWen = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_fpWen :
    _io_deqNext_3_T_5_ctrl_fpWen; // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_7_ctrl_selImm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_selImm :
    _io_deqNext_3_T_5_ctrl_selImm; // @[ParallelMux.scala 90:77]
  wire [19:0] _io_deqNext_3_T_7_ctrl_imm = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_ctrl_imm :
    _io_deqNext_3_T_5_ctrl_imm; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_7_psrc_0 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_psrc_0 :
    _io_deqNext_3_T_5_psrc_0; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_7_psrc_1 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_psrc_1 :
    _io_deqNext_3_T_5_psrc_1; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_7_psrc_2 = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_psrc_2 :
    _io_deqNext_3_T_5_psrc_2; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_deqNext_3_T_7_pdest = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_pdest : _io_deqNext_3_T_5_pdest
    ; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_7_robIdx_flag = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_robIdx_flag :
    _io_deqNext_3_T_5_robIdx_flag; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_deqNext_3_T_7_robIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_robIdx_value :
    _io_deqNext_3_T_5_robIdx_value; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_7_lqIdx_flag = (deqEnable_n_0 | deqEnable_n_1) & (deqEnable_n_0 & nextStepData_3_lqIdx_flag); // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_7_lqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_lqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire  _io_deqNext_3_T_7_sqIdx_flag = (deqEnable_n_0 | deqEnable_n_1) & (deqEnable_n_0 & nextStepData_3_sqIdx_flag); // @[ParallelMux.scala 90:77]
  wire [3:0] _io_deqNext_3_T_7_sqIdx_value = deqEnable_n_0 | deqEnable_n_1 ? _io_deqNext_3_T_1_sqIdx_value : 4'h0; // @[ParallelMux.scala 90:77]
  wire [1:0] _T_155 = stateEntries_1 + stateEntries_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_566 = {{1'd0}, stateEntries_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_157 = _GEN_566 + _T_155; // @[Bitwise.scala 48:55]
  wire [1:0] _T_159 = stateEntries_4 + stateEntries_5; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_567 = {{1'd0}, stateEntries_3}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_161 = _GEN_567 + _T_159; // @[Bitwise.scala 48:55]
  wire [2:0] _T_163 = _T_157[1:0] + _T_161[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_165 = stateEntries_7 + stateEntries_8; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_568 = {{1'd0}, stateEntries_6}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_167 = _GEN_568 + _T_165; // @[Bitwise.scala 48:55]
  wire [1:0] _T_169 = stateEntries_10 + stateEntries_11; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_569 = {{1'd0}, stateEntries_9}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_171 = _GEN_569 + _T_169; // @[Bitwise.scala 48:55]
  wire [2:0] _T_173 = _T_167[1:0] + _T_171[1:0]; // @[Bitwise.scala 48:55]
  wire  _T_177 = ~allowEnqueue; // @[DispatchQueue.scala 259:64]
  wire [1:0] _T_182 = _validVec_T_24 + _validVec_T_25; // @[Bitwise.scala 48:55]
  wire [1:0] _T_184 = _validVec_T_26 + _validVec_T_27; // @[Bitwise.scala 48:55]
  wire [1:0] _T_188 = io_deq_0_valid + io_deq_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_190 = io_deq_2_valid + io_deq_3_valid; // @[Bitwise.scala 48:55]
  reg [3:0] validEntries; // @[DispatchQueue.scala 267:29]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [2:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [2:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [2:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [2:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  SyncDataModuleTemplate__12entry dataModule ( // @[DispatchQueue.scala 50:26]
    .clock(dataModule_clock),
    .io_raddr_0(dataModule_io_raddr_0),
    .io_raddr_1(dataModule_io_raddr_1),
    .io_raddr_2(dataModule_io_raddr_2),
    .io_raddr_3(dataModule_io_raddr_3),
    .io_raddr_4(dataModule_io_raddr_4),
    .io_raddr_5(dataModule_io_raddr_5),
    .io_raddr_6(dataModule_io_raddr_6),
    .io_raddr_7(dataModule_io_raddr_7),
    .io_rdata_0_cf_trigger_backendEn_0(dataModule_io_rdata_0_cf_trigger_backendEn_0),
    .io_rdata_0_cf_trigger_backendEn_1(dataModule_io_rdata_0_cf_trigger_backendEn_1),
    .io_rdata_0_cf_pd_isRVC(dataModule_io_rdata_0_cf_pd_isRVC),
    .io_rdata_0_cf_pd_brType(dataModule_io_rdata_0_cf_pd_brType),
    .io_rdata_0_cf_pd_isCall(dataModule_io_rdata_0_cf_pd_isCall),
    .io_rdata_0_cf_pd_isRet(dataModule_io_rdata_0_cf_pd_isRet),
    .io_rdata_0_cf_pred_taken(dataModule_io_rdata_0_cf_pred_taken),
    .io_rdata_0_cf_storeSetHit(dataModule_io_rdata_0_cf_storeSetHit),
    .io_rdata_0_cf_loadWaitStrict(dataModule_io_rdata_0_cf_loadWaitStrict),
    .io_rdata_0_cf_ssid(dataModule_io_rdata_0_cf_ssid),
    .io_rdata_0_cf_ftqPtr_flag(dataModule_io_rdata_0_cf_ftqPtr_flag),
    .io_rdata_0_cf_ftqPtr_value(dataModule_io_rdata_0_cf_ftqPtr_value),
    .io_rdata_0_cf_ftqOffset(dataModule_io_rdata_0_cf_ftqOffset),
    .io_rdata_0_ctrl_fpu_isAddSub(dataModule_io_rdata_0_ctrl_fpu_isAddSub),
    .io_rdata_0_ctrl_fpu_typeTagIn(dataModule_io_rdata_0_ctrl_fpu_typeTagIn),
    .io_rdata_0_ctrl_fpu_typeTagOut(dataModule_io_rdata_0_ctrl_fpu_typeTagOut),
    .io_rdata_0_ctrl_fpu_fromInt(dataModule_io_rdata_0_ctrl_fpu_fromInt),
    .io_rdata_0_ctrl_fpu_wflags(dataModule_io_rdata_0_ctrl_fpu_wflags),
    .io_rdata_0_ctrl_fpu_fpWen(dataModule_io_rdata_0_ctrl_fpu_fpWen),
    .io_rdata_0_ctrl_fpu_fmaCmd(dataModule_io_rdata_0_ctrl_fpu_fmaCmd),
    .io_rdata_0_ctrl_fpu_div(dataModule_io_rdata_0_ctrl_fpu_div),
    .io_rdata_0_ctrl_fpu_sqrt(dataModule_io_rdata_0_ctrl_fpu_sqrt),
    .io_rdata_0_ctrl_fpu_fcvt(dataModule_io_rdata_0_ctrl_fpu_fcvt),
    .io_rdata_0_ctrl_fpu_typ(dataModule_io_rdata_0_ctrl_fpu_typ),
    .io_rdata_0_ctrl_fpu_fmt(dataModule_io_rdata_0_ctrl_fpu_fmt),
    .io_rdata_0_ctrl_fpu_ren3(dataModule_io_rdata_0_ctrl_fpu_ren3),
    .io_rdata_0_ctrl_fpu_rm(dataModule_io_rdata_0_ctrl_fpu_rm),
    .io_rdata_1_cf_trigger_backendEn_0(dataModule_io_rdata_1_cf_trigger_backendEn_0),
    .io_rdata_1_cf_trigger_backendEn_1(dataModule_io_rdata_1_cf_trigger_backendEn_1),
    .io_rdata_1_cf_pd_isRVC(dataModule_io_rdata_1_cf_pd_isRVC),
    .io_rdata_1_cf_pd_brType(dataModule_io_rdata_1_cf_pd_brType),
    .io_rdata_1_cf_pd_isCall(dataModule_io_rdata_1_cf_pd_isCall),
    .io_rdata_1_cf_pd_isRet(dataModule_io_rdata_1_cf_pd_isRet),
    .io_rdata_1_cf_pred_taken(dataModule_io_rdata_1_cf_pred_taken),
    .io_rdata_1_cf_storeSetHit(dataModule_io_rdata_1_cf_storeSetHit),
    .io_rdata_1_cf_loadWaitStrict(dataModule_io_rdata_1_cf_loadWaitStrict),
    .io_rdata_1_cf_ssid(dataModule_io_rdata_1_cf_ssid),
    .io_rdata_1_cf_ftqPtr_flag(dataModule_io_rdata_1_cf_ftqPtr_flag),
    .io_rdata_1_cf_ftqPtr_value(dataModule_io_rdata_1_cf_ftqPtr_value),
    .io_rdata_1_cf_ftqOffset(dataModule_io_rdata_1_cf_ftqOffset),
    .io_rdata_2_cf_trigger_backendEn_0(dataModule_io_rdata_2_cf_trigger_backendEn_0),
    .io_rdata_2_cf_trigger_backendEn_1(dataModule_io_rdata_2_cf_trigger_backendEn_1),
    .io_rdata_2_cf_pd_isRVC(dataModule_io_rdata_2_cf_pd_isRVC),
    .io_rdata_2_cf_pd_brType(dataModule_io_rdata_2_cf_pd_brType),
    .io_rdata_2_cf_pd_isCall(dataModule_io_rdata_2_cf_pd_isCall),
    .io_rdata_2_cf_pd_isRet(dataModule_io_rdata_2_cf_pd_isRet),
    .io_rdata_2_cf_pred_taken(dataModule_io_rdata_2_cf_pred_taken),
    .io_rdata_2_cf_storeSetHit(dataModule_io_rdata_2_cf_storeSetHit),
    .io_rdata_2_cf_loadWaitStrict(dataModule_io_rdata_2_cf_loadWaitStrict),
    .io_rdata_2_cf_ssid(dataModule_io_rdata_2_cf_ssid),
    .io_rdata_2_cf_ftqPtr_flag(dataModule_io_rdata_2_cf_ftqPtr_flag),
    .io_rdata_2_cf_ftqPtr_value(dataModule_io_rdata_2_cf_ftqPtr_value),
    .io_rdata_2_cf_ftqOffset(dataModule_io_rdata_2_cf_ftqOffset),
    .io_rdata_3_cf_trigger_backendEn_0(dataModule_io_rdata_3_cf_trigger_backendEn_0),
    .io_rdata_3_cf_trigger_backendEn_1(dataModule_io_rdata_3_cf_trigger_backendEn_1),
    .io_rdata_3_cf_pd_isRVC(dataModule_io_rdata_3_cf_pd_isRVC),
    .io_rdata_3_cf_pd_brType(dataModule_io_rdata_3_cf_pd_brType),
    .io_rdata_3_cf_pd_isCall(dataModule_io_rdata_3_cf_pd_isCall),
    .io_rdata_3_cf_pd_isRet(dataModule_io_rdata_3_cf_pd_isRet),
    .io_rdata_3_cf_pred_taken(dataModule_io_rdata_3_cf_pred_taken),
    .io_rdata_3_cf_storeSetHit(dataModule_io_rdata_3_cf_storeSetHit),
    .io_rdata_3_cf_loadWaitStrict(dataModule_io_rdata_3_cf_loadWaitStrict),
    .io_rdata_3_cf_ssid(dataModule_io_rdata_3_cf_ssid),
    .io_rdata_3_cf_ftqPtr_flag(dataModule_io_rdata_3_cf_ftqPtr_flag),
    .io_rdata_3_cf_ftqPtr_value(dataModule_io_rdata_3_cf_ftqPtr_value),
    .io_rdata_3_cf_ftqOffset(dataModule_io_rdata_3_cf_ftqOffset),
    .io_rdata_4_cf_ftqPtr_value(dataModule_io_rdata_4_cf_ftqPtr_value),
    .io_rdata_4_cf_ftqOffset(dataModule_io_rdata_4_cf_ftqOffset),
    .io_rdata_4_ctrl_srcType_0(dataModule_io_rdata_4_ctrl_srcType_0),
    .io_rdata_4_ctrl_srcType_1(dataModule_io_rdata_4_ctrl_srcType_1),
    .io_rdata_4_ctrl_srcType_2(dataModule_io_rdata_4_ctrl_srcType_2),
    .io_rdata_4_ctrl_fuType(dataModule_io_rdata_4_ctrl_fuType),
    .io_rdata_4_ctrl_fuOpType(dataModule_io_rdata_4_ctrl_fuOpType),
    .io_rdata_4_ctrl_rfWen(dataModule_io_rdata_4_ctrl_rfWen),
    .io_rdata_4_ctrl_fpWen(dataModule_io_rdata_4_ctrl_fpWen),
    .io_rdata_4_ctrl_selImm(dataModule_io_rdata_4_ctrl_selImm),
    .io_rdata_4_ctrl_imm(dataModule_io_rdata_4_ctrl_imm),
    .io_rdata_4_psrc_0(dataModule_io_rdata_4_psrc_0),
    .io_rdata_4_psrc_1(dataModule_io_rdata_4_psrc_1),
    .io_rdata_4_psrc_2(dataModule_io_rdata_4_psrc_2),
    .io_rdata_4_pdest(dataModule_io_rdata_4_pdest),
    .io_rdata_4_robIdx_flag(dataModule_io_rdata_4_robIdx_flag),
    .io_rdata_4_robIdx_value(dataModule_io_rdata_4_robIdx_value),
    .io_rdata_5_cf_ftqPtr_value(dataModule_io_rdata_5_cf_ftqPtr_value),
    .io_rdata_5_cf_ftqOffset(dataModule_io_rdata_5_cf_ftqOffset),
    .io_rdata_5_ctrl_srcType_0(dataModule_io_rdata_5_ctrl_srcType_0),
    .io_rdata_5_ctrl_srcType_1(dataModule_io_rdata_5_ctrl_srcType_1),
    .io_rdata_5_ctrl_srcType_2(dataModule_io_rdata_5_ctrl_srcType_2),
    .io_rdata_5_ctrl_fuType(dataModule_io_rdata_5_ctrl_fuType),
    .io_rdata_5_ctrl_fuOpType(dataModule_io_rdata_5_ctrl_fuOpType),
    .io_rdata_5_ctrl_rfWen(dataModule_io_rdata_5_ctrl_rfWen),
    .io_rdata_5_ctrl_fpWen(dataModule_io_rdata_5_ctrl_fpWen),
    .io_rdata_5_ctrl_selImm(dataModule_io_rdata_5_ctrl_selImm),
    .io_rdata_5_ctrl_imm(dataModule_io_rdata_5_ctrl_imm),
    .io_rdata_5_psrc_0(dataModule_io_rdata_5_psrc_0),
    .io_rdata_5_psrc_1(dataModule_io_rdata_5_psrc_1),
    .io_rdata_5_psrc_2(dataModule_io_rdata_5_psrc_2),
    .io_rdata_5_pdest(dataModule_io_rdata_5_pdest),
    .io_rdata_5_robIdx_flag(dataModule_io_rdata_5_robIdx_flag),
    .io_rdata_5_robIdx_value(dataModule_io_rdata_5_robIdx_value),
    .io_rdata_6_cf_ftqPtr_value(dataModule_io_rdata_6_cf_ftqPtr_value),
    .io_rdata_6_cf_ftqOffset(dataModule_io_rdata_6_cf_ftqOffset),
    .io_rdata_6_ctrl_srcType_0(dataModule_io_rdata_6_ctrl_srcType_0),
    .io_rdata_6_ctrl_srcType_1(dataModule_io_rdata_6_ctrl_srcType_1),
    .io_rdata_6_ctrl_srcType_2(dataModule_io_rdata_6_ctrl_srcType_2),
    .io_rdata_6_ctrl_fuType(dataModule_io_rdata_6_ctrl_fuType),
    .io_rdata_6_ctrl_fuOpType(dataModule_io_rdata_6_ctrl_fuOpType),
    .io_rdata_6_ctrl_rfWen(dataModule_io_rdata_6_ctrl_rfWen),
    .io_rdata_6_ctrl_fpWen(dataModule_io_rdata_6_ctrl_fpWen),
    .io_rdata_6_ctrl_selImm(dataModule_io_rdata_6_ctrl_selImm),
    .io_rdata_6_ctrl_imm(dataModule_io_rdata_6_ctrl_imm),
    .io_rdata_6_psrc_0(dataModule_io_rdata_6_psrc_0),
    .io_rdata_6_psrc_1(dataModule_io_rdata_6_psrc_1),
    .io_rdata_6_psrc_2(dataModule_io_rdata_6_psrc_2),
    .io_rdata_6_pdest(dataModule_io_rdata_6_pdest),
    .io_rdata_6_robIdx_flag(dataModule_io_rdata_6_robIdx_flag),
    .io_rdata_6_robIdx_value(dataModule_io_rdata_6_robIdx_value),
    .io_rdata_7_cf_ftqPtr_value(dataModule_io_rdata_7_cf_ftqPtr_value),
    .io_rdata_7_cf_ftqOffset(dataModule_io_rdata_7_cf_ftqOffset),
    .io_rdata_7_ctrl_srcType_0(dataModule_io_rdata_7_ctrl_srcType_0),
    .io_rdata_7_ctrl_srcType_1(dataModule_io_rdata_7_ctrl_srcType_1),
    .io_rdata_7_ctrl_srcType_2(dataModule_io_rdata_7_ctrl_srcType_2),
    .io_rdata_7_ctrl_fuType(dataModule_io_rdata_7_ctrl_fuType),
    .io_rdata_7_ctrl_fuOpType(dataModule_io_rdata_7_ctrl_fuOpType),
    .io_rdata_7_ctrl_rfWen(dataModule_io_rdata_7_ctrl_rfWen),
    .io_rdata_7_ctrl_fpWen(dataModule_io_rdata_7_ctrl_fpWen),
    .io_rdata_7_ctrl_selImm(dataModule_io_rdata_7_ctrl_selImm),
    .io_rdata_7_ctrl_imm(dataModule_io_rdata_7_ctrl_imm),
    .io_rdata_7_psrc_0(dataModule_io_rdata_7_psrc_0),
    .io_rdata_7_psrc_1(dataModule_io_rdata_7_psrc_1),
    .io_rdata_7_psrc_2(dataModule_io_rdata_7_psrc_2),
    .io_rdata_7_pdest(dataModule_io_rdata_7_pdest),
    .io_rdata_7_robIdx_flag(dataModule_io_rdata_7_robIdx_flag),
    .io_rdata_7_robIdx_value(dataModule_io_rdata_7_robIdx_value),
    .io_wen_0(dataModule_io_wen_0),
    .io_wen_1(dataModule_io_wen_1),
    .io_waddr_0(dataModule_io_waddr_0),
    .io_waddr_1(dataModule_io_waddr_1),
    .io_wdata_0_cf_trigger_backendEn_0(dataModule_io_wdata_0_cf_trigger_backendEn_0),
    .io_wdata_0_cf_trigger_backendEn_1(dataModule_io_wdata_0_cf_trigger_backendEn_1),
    .io_wdata_0_cf_pd_isRVC(dataModule_io_wdata_0_cf_pd_isRVC),
    .io_wdata_0_cf_pd_brType(dataModule_io_wdata_0_cf_pd_brType),
    .io_wdata_0_cf_pd_isCall(dataModule_io_wdata_0_cf_pd_isCall),
    .io_wdata_0_cf_pd_isRet(dataModule_io_wdata_0_cf_pd_isRet),
    .io_wdata_0_cf_pred_taken(dataModule_io_wdata_0_cf_pred_taken),
    .io_wdata_0_cf_storeSetHit(dataModule_io_wdata_0_cf_storeSetHit),
    .io_wdata_0_cf_loadWaitStrict(dataModule_io_wdata_0_cf_loadWaitStrict),
    .io_wdata_0_cf_ssid(dataModule_io_wdata_0_cf_ssid),
    .io_wdata_0_cf_ftqPtr_flag(dataModule_io_wdata_0_cf_ftqPtr_flag),
    .io_wdata_0_cf_ftqPtr_value(dataModule_io_wdata_0_cf_ftqPtr_value),
    .io_wdata_0_cf_ftqOffset(dataModule_io_wdata_0_cf_ftqOffset),
    .io_wdata_0_ctrl_srcType_0(dataModule_io_wdata_0_ctrl_srcType_0),
    .io_wdata_0_ctrl_srcType_1(dataModule_io_wdata_0_ctrl_srcType_1),
    .io_wdata_0_ctrl_srcType_2(dataModule_io_wdata_0_ctrl_srcType_2),
    .io_wdata_0_ctrl_fuType(dataModule_io_wdata_0_ctrl_fuType),
    .io_wdata_0_ctrl_fuOpType(dataModule_io_wdata_0_ctrl_fuOpType),
    .io_wdata_0_ctrl_rfWen(dataModule_io_wdata_0_ctrl_rfWen),
    .io_wdata_0_ctrl_fpWen(dataModule_io_wdata_0_ctrl_fpWen),
    .io_wdata_0_ctrl_selImm(dataModule_io_wdata_0_ctrl_selImm),
    .io_wdata_0_ctrl_imm(dataModule_io_wdata_0_ctrl_imm),
    .io_wdata_0_ctrl_fpu_isAddSub(dataModule_io_wdata_0_ctrl_fpu_isAddSub),
    .io_wdata_0_ctrl_fpu_typeTagIn(dataModule_io_wdata_0_ctrl_fpu_typeTagIn),
    .io_wdata_0_ctrl_fpu_typeTagOut(dataModule_io_wdata_0_ctrl_fpu_typeTagOut),
    .io_wdata_0_ctrl_fpu_fromInt(dataModule_io_wdata_0_ctrl_fpu_fromInt),
    .io_wdata_0_ctrl_fpu_wflags(dataModule_io_wdata_0_ctrl_fpu_wflags),
    .io_wdata_0_ctrl_fpu_fpWen(dataModule_io_wdata_0_ctrl_fpu_fpWen),
    .io_wdata_0_ctrl_fpu_fmaCmd(dataModule_io_wdata_0_ctrl_fpu_fmaCmd),
    .io_wdata_0_ctrl_fpu_div(dataModule_io_wdata_0_ctrl_fpu_div),
    .io_wdata_0_ctrl_fpu_sqrt(dataModule_io_wdata_0_ctrl_fpu_sqrt),
    .io_wdata_0_ctrl_fpu_fcvt(dataModule_io_wdata_0_ctrl_fpu_fcvt),
    .io_wdata_0_ctrl_fpu_typ(dataModule_io_wdata_0_ctrl_fpu_typ),
    .io_wdata_0_ctrl_fpu_fmt(dataModule_io_wdata_0_ctrl_fpu_fmt),
    .io_wdata_0_ctrl_fpu_ren3(dataModule_io_wdata_0_ctrl_fpu_ren3),
    .io_wdata_0_ctrl_fpu_rm(dataModule_io_wdata_0_ctrl_fpu_rm),
    .io_wdata_0_psrc_0(dataModule_io_wdata_0_psrc_0),
    .io_wdata_0_psrc_1(dataModule_io_wdata_0_psrc_1),
    .io_wdata_0_psrc_2(dataModule_io_wdata_0_psrc_2),
    .io_wdata_0_pdest(dataModule_io_wdata_0_pdest),
    .io_wdata_0_robIdx_flag(dataModule_io_wdata_0_robIdx_flag),
    .io_wdata_0_robIdx_value(dataModule_io_wdata_0_robIdx_value),
    .io_wdata_1_cf_trigger_backendEn_0(dataModule_io_wdata_1_cf_trigger_backendEn_0),
    .io_wdata_1_cf_trigger_backendEn_1(dataModule_io_wdata_1_cf_trigger_backendEn_1),
    .io_wdata_1_cf_pd_isRVC(dataModule_io_wdata_1_cf_pd_isRVC),
    .io_wdata_1_cf_pd_brType(dataModule_io_wdata_1_cf_pd_brType),
    .io_wdata_1_cf_pd_isCall(dataModule_io_wdata_1_cf_pd_isCall),
    .io_wdata_1_cf_pd_isRet(dataModule_io_wdata_1_cf_pd_isRet),
    .io_wdata_1_cf_pred_taken(dataModule_io_wdata_1_cf_pred_taken),
    .io_wdata_1_cf_storeSetHit(dataModule_io_wdata_1_cf_storeSetHit),
    .io_wdata_1_cf_loadWaitStrict(dataModule_io_wdata_1_cf_loadWaitStrict),
    .io_wdata_1_cf_ssid(dataModule_io_wdata_1_cf_ssid),
    .io_wdata_1_cf_ftqPtr_flag(dataModule_io_wdata_1_cf_ftqPtr_flag),
    .io_wdata_1_cf_ftqPtr_value(dataModule_io_wdata_1_cf_ftqPtr_value),
    .io_wdata_1_cf_ftqOffset(dataModule_io_wdata_1_cf_ftqOffset),
    .io_wdata_1_ctrl_srcType_0(dataModule_io_wdata_1_ctrl_srcType_0),
    .io_wdata_1_ctrl_srcType_1(dataModule_io_wdata_1_ctrl_srcType_1),
    .io_wdata_1_ctrl_srcType_2(dataModule_io_wdata_1_ctrl_srcType_2),
    .io_wdata_1_ctrl_fuType(dataModule_io_wdata_1_ctrl_fuType),
    .io_wdata_1_ctrl_fuOpType(dataModule_io_wdata_1_ctrl_fuOpType),
    .io_wdata_1_ctrl_rfWen(dataModule_io_wdata_1_ctrl_rfWen),
    .io_wdata_1_ctrl_fpWen(dataModule_io_wdata_1_ctrl_fpWen),
    .io_wdata_1_ctrl_selImm(dataModule_io_wdata_1_ctrl_selImm),
    .io_wdata_1_ctrl_imm(dataModule_io_wdata_1_ctrl_imm),
    .io_wdata_1_ctrl_fpu_isAddSub(dataModule_io_wdata_1_ctrl_fpu_isAddSub),
    .io_wdata_1_ctrl_fpu_typeTagIn(dataModule_io_wdata_1_ctrl_fpu_typeTagIn),
    .io_wdata_1_ctrl_fpu_typeTagOut(dataModule_io_wdata_1_ctrl_fpu_typeTagOut),
    .io_wdata_1_ctrl_fpu_fromInt(dataModule_io_wdata_1_ctrl_fpu_fromInt),
    .io_wdata_1_ctrl_fpu_wflags(dataModule_io_wdata_1_ctrl_fpu_wflags),
    .io_wdata_1_ctrl_fpu_fpWen(dataModule_io_wdata_1_ctrl_fpu_fpWen),
    .io_wdata_1_ctrl_fpu_fmaCmd(dataModule_io_wdata_1_ctrl_fpu_fmaCmd),
    .io_wdata_1_ctrl_fpu_div(dataModule_io_wdata_1_ctrl_fpu_div),
    .io_wdata_1_ctrl_fpu_sqrt(dataModule_io_wdata_1_ctrl_fpu_sqrt),
    .io_wdata_1_ctrl_fpu_fcvt(dataModule_io_wdata_1_ctrl_fpu_fcvt),
    .io_wdata_1_ctrl_fpu_typ(dataModule_io_wdata_1_ctrl_fpu_typ),
    .io_wdata_1_ctrl_fpu_fmt(dataModule_io_wdata_1_ctrl_fpu_fmt),
    .io_wdata_1_ctrl_fpu_ren3(dataModule_io_wdata_1_ctrl_fpu_ren3),
    .io_wdata_1_ctrl_fpu_rm(dataModule_io_wdata_1_ctrl_fpu_rm),
    .io_wdata_1_psrc_0(dataModule_io_wdata_1_psrc_0),
    .io_wdata_1_psrc_1(dataModule_io_wdata_1_psrc_1),
    .io_wdata_1_psrc_2(dataModule_io_wdata_1_psrc_2),
    .io_wdata_1_pdest(dataModule_io_wdata_1_pdest),
    .io_wdata_1_robIdx_flag(dataModule_io_wdata_1_robIdx_flag),
    .io_wdata_1_robIdx_value(dataModule_io_wdata_1_robIdx_value)
  );
  assign io_enq_canAccept = allowEnqueue; // @[DispatchQueue.scala 89:20]
  assign io_deq_0_valid = _io_deq_0_valid_T_34 & _tailPtrOHAccurate_T; // @[DispatchQueue.scala 217:73]
  assign io_deq_0_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_0_cf_trigger_backendEn_0; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_0_cf_trigger_backendEn_1; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_pd_isRVC = dataModule_io_rdata_0_cf_pd_isRVC; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_pd_brType = dataModule_io_rdata_0_cf_pd_brType; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_pd_isCall = dataModule_io_rdata_0_cf_pd_isCall; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_pd_isRet = dataModule_io_rdata_0_cf_pd_isRet; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_pred_taken = dataModule_io_rdata_0_cf_pred_taken; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_storeSetHit = dataModule_io_rdata_0_cf_storeSetHit; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_loadWaitStrict = dataModule_io_rdata_0_cf_loadWaitStrict; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_ssid = dataModule_io_rdata_0_cf_ssid; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_ftqPtr_flag = dataModule_io_rdata_0_cf_ftqPtr_flag; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_ftqPtr_value = dataModule_io_rdata_0_cf_ftqPtr_value; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_cf_ftqOffset = dataModule_io_rdata_0_cf_ftqOffset; // @[DispatchQueue.scala 214:23]
  assign io_deq_0_bits_ctrl_srcType_0 = deqData_0_ctrl_srcType_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_srcType_1 = deqData_0_ctrl_srcType_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_srcType_2 = deqData_0_ctrl_srcType_2; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_fuType = deqData_0_ctrl_fuType; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_fuOpType = deqData_0_ctrl_fuOpType; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_rfWen = deqData_0_ctrl_rfWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_fpWen = deqData_0_ctrl_fpWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_selImm = deqData_0_ctrl_selImm; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_imm = deqData_0_ctrl_imm; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_ctrl_fpu_isAddSub = dataModule_io_rdata_0_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_typeTagIn = dataModule_io_rdata_0_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_typeTagOut = dataModule_io_rdata_0_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_fromInt = dataModule_io_rdata_0_ctrl_fpu_fromInt; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_wflags = dataModule_io_rdata_0_ctrl_fpu_wflags; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_fpWen = dataModule_io_rdata_0_ctrl_fpu_fpWen; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_fmaCmd = dataModule_io_rdata_0_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_div = dataModule_io_rdata_0_ctrl_fpu_div; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_sqrt = dataModule_io_rdata_0_ctrl_fpu_sqrt; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_fcvt = dataModule_io_rdata_0_ctrl_fpu_fcvt; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_typ = dataModule_io_rdata_0_ctrl_fpu_typ; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_fmt = dataModule_io_rdata_0_ctrl_fpu_fmt; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_ren3 = dataModule_io_rdata_0_ctrl_fpu_ren3; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_ctrl_fpu_rm = dataModule_io_rdata_0_ctrl_fpu_rm; // @[DispatchQueue.scala 215:29]
  assign io_deq_0_bits_psrc_0 = deqData_0_psrc_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_psrc_1 = deqData_0_psrc_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_psrc_2 = deqData_0_psrc_2; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_pdest = deqData_0_pdest; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_robIdx_flag = deqData_0_robIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_robIdx_value = deqData_0_robIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_lqIdx_flag = deqData_0_lqIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_lqIdx_value = deqData_0_lqIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_sqIdx_flag = deqData_0_sqIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_0_bits_sqIdx_value = deqData_0_sqIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_valid = _io_deq_1_valid_T_34 & _tailPtrOHAccurate_T; // @[DispatchQueue.scala 217:73]
  assign io_deq_1_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_1_cf_trigger_backendEn_0; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_1_cf_trigger_backendEn_1; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_pd_isRVC = dataModule_io_rdata_1_cf_pd_isRVC; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_pd_brType = dataModule_io_rdata_1_cf_pd_brType; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_pd_isCall = dataModule_io_rdata_1_cf_pd_isCall; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_pd_isRet = dataModule_io_rdata_1_cf_pd_isRet; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_pred_taken = dataModule_io_rdata_1_cf_pred_taken; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_storeSetHit = dataModule_io_rdata_1_cf_storeSetHit; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_loadWaitStrict = dataModule_io_rdata_1_cf_loadWaitStrict; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_ssid = dataModule_io_rdata_1_cf_ssid; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_ftqPtr_flag = dataModule_io_rdata_1_cf_ftqPtr_flag; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_ftqPtr_value = dataModule_io_rdata_1_cf_ftqPtr_value; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_cf_ftqOffset = dataModule_io_rdata_1_cf_ftqOffset; // @[DispatchQueue.scala 214:23]
  assign io_deq_1_bits_ctrl_srcType_0 = deqData_1_ctrl_srcType_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_srcType_1 = deqData_1_ctrl_srcType_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_fuType = deqData_1_ctrl_fuType; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_fuOpType = deqData_1_ctrl_fuOpType; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_rfWen = deqData_1_ctrl_rfWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_fpWen = deqData_1_ctrl_fpWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_selImm = deqData_1_ctrl_selImm; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_ctrl_imm = deqData_1_ctrl_imm; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_psrc_0 = deqData_1_psrc_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_psrc_1 = deqData_1_psrc_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_pdest = deqData_1_pdest; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_robIdx_flag = deqData_1_robIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_robIdx_value = deqData_1_robIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_lqIdx_flag = deqData_1_lqIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_lqIdx_value = deqData_1_lqIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_sqIdx_flag = deqData_1_sqIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_1_bits_sqIdx_value = deqData_1_sqIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_valid = _io_deq_2_valid_T_34 & _tailPtrOHAccurate_T; // @[DispatchQueue.scala 217:73]
  assign io_deq_2_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_2_cf_trigger_backendEn_0; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_2_cf_trigger_backendEn_1; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_pd_isRVC = dataModule_io_rdata_2_cf_pd_isRVC; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_pd_brType = dataModule_io_rdata_2_cf_pd_brType; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_pd_isCall = dataModule_io_rdata_2_cf_pd_isCall; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_pd_isRet = dataModule_io_rdata_2_cf_pd_isRet; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_pred_taken = dataModule_io_rdata_2_cf_pred_taken; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_storeSetHit = dataModule_io_rdata_2_cf_storeSetHit; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_loadWaitStrict = dataModule_io_rdata_2_cf_loadWaitStrict; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_ssid = dataModule_io_rdata_2_cf_ssid; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_ftqPtr_flag = dataModule_io_rdata_2_cf_ftqPtr_flag; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_ftqPtr_value = dataModule_io_rdata_2_cf_ftqPtr_value; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_cf_ftqOffset = dataModule_io_rdata_2_cf_ftqOffset; // @[DispatchQueue.scala 214:23]
  assign io_deq_2_bits_ctrl_srcType_0 = deqData_2_ctrl_srcType_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_ctrl_srcType_1 = deqData_2_ctrl_srcType_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_ctrl_fuType = deqData_2_ctrl_fuType; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_ctrl_fuOpType = deqData_2_ctrl_fuOpType; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_ctrl_rfWen = deqData_2_ctrl_rfWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_ctrl_fpWen = deqData_2_ctrl_fpWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_ctrl_imm = deqData_2_ctrl_imm; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_psrc_0 = deqData_2_psrc_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_psrc_1 = deqData_2_psrc_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_pdest = deqData_2_pdest; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_robIdx_flag = deqData_2_robIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_2_bits_robIdx_value = deqData_2_robIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_valid = _io_deq_3_valid_T_34 & _tailPtrOHAccurate_T; // @[DispatchQueue.scala 217:73]
  assign io_deq_3_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_3_cf_trigger_backendEn_0; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_3_cf_trigger_backendEn_1; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_pd_isRVC = dataModule_io_rdata_3_cf_pd_isRVC; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_pd_brType = dataModule_io_rdata_3_cf_pd_brType; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_pd_isCall = dataModule_io_rdata_3_cf_pd_isCall; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_pd_isRet = dataModule_io_rdata_3_cf_pd_isRet; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_pred_taken = dataModule_io_rdata_3_cf_pred_taken; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_storeSetHit = dataModule_io_rdata_3_cf_storeSetHit; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_loadWaitStrict = dataModule_io_rdata_3_cf_loadWaitStrict; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_ssid = dataModule_io_rdata_3_cf_ssid; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_ftqPtr_flag = dataModule_io_rdata_3_cf_ftqPtr_flag; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_ftqPtr_value = dataModule_io_rdata_3_cf_ftqPtr_value; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_cf_ftqOffset = dataModule_io_rdata_3_cf_ftqOffset; // @[DispatchQueue.scala 214:23]
  assign io_deq_3_bits_ctrl_srcType_0 = deqData_3_ctrl_srcType_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_ctrl_srcType_1 = deqData_3_ctrl_srcType_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_ctrl_fuType = deqData_3_ctrl_fuType; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_ctrl_fuOpType = deqData_3_ctrl_fuOpType; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_ctrl_rfWen = deqData_3_ctrl_rfWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_ctrl_fpWen = deqData_3_ctrl_fpWen; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_ctrl_imm = deqData_3_ctrl_imm; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_psrc_0 = deqData_3_psrc_0; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_psrc_1 = deqData_3_psrc_1; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_pdest = deqData_3_pdest; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_robIdx_flag = deqData_3_robIdx_flag; // @[DispatchQueue.scala 211:20]
  assign io_deq_3_bits_robIdx_value = deqData_3_robIdx_value; // @[DispatchQueue.scala 211:20]
  assign io_deqNext_0_cf_ftqPtr_value = _T_38 ? _io_deqNext_0_T_7_cf_ftqPtr_value : deqData_0_cf_ftqPtr_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_cf_ftqOffset = _T_38 ? _io_deqNext_0_T_7_cf_ftqOffset : deqData_0_cf_ftqOffset; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_srcType_0 = _T_38 ? _io_deqNext_0_T_7_ctrl_srcType_0 : deqData_0_ctrl_srcType_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_srcType_1 = _T_38 ? _io_deqNext_0_T_7_ctrl_srcType_1 : deqData_0_ctrl_srcType_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_srcType_2 = _T_38 ? _io_deqNext_0_T_7_ctrl_srcType_2 : deqData_0_ctrl_srcType_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_fuType = _T_38 ? _io_deqNext_0_T_7_ctrl_fuType : deqData_0_ctrl_fuType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_fuOpType = _T_38 ? _io_deqNext_0_T_7_ctrl_fuOpType : deqData_0_ctrl_fuOpType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_rfWen = _T_38 ? _io_deqNext_0_T_7_ctrl_rfWen : deqData_0_ctrl_rfWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_fpWen = _T_38 ? _io_deqNext_0_T_7_ctrl_fpWen : deqData_0_ctrl_fpWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_selImm = _T_38 ? _io_deqNext_0_T_7_ctrl_selImm : deqData_0_ctrl_selImm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_ctrl_imm = _T_38 ? _io_deqNext_0_T_7_ctrl_imm : deqData_0_ctrl_imm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_psrc_0 = _T_38 ? _io_deqNext_0_T_7_psrc_0 : deqData_0_psrc_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_psrc_1 = _T_38 ? _io_deqNext_0_T_7_psrc_1 : deqData_0_psrc_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_psrc_2 = _T_38 ? _io_deqNext_0_T_7_psrc_2 : deqData_0_psrc_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_pdest = _T_38 ? _io_deqNext_0_T_7_pdest : deqData_0_pdest; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_robIdx_flag = _T_38 ? _io_deqNext_0_T_7_robIdx_flag : deqData_0_robIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_robIdx_value = _T_38 ? _io_deqNext_0_T_7_robIdx_value : deqData_0_robIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_lqIdx_flag = _T_38 ? _io_deqNext_0_T_7_lqIdx_flag : deqData_0_lqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_lqIdx_value = _T_38 ? _io_deqNext_0_T_7_lqIdx_value : deqData_0_lqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_sqIdx_flag = _T_38 ? _io_deqNext_0_T_7_sqIdx_flag : deqData_0_sqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_0_sqIdx_value = _T_38 ? _io_deqNext_0_T_7_sqIdx_value : deqData_0_sqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_cf_ftqPtr_value = _T_38 ? _io_deqNext_1_T_7_cf_ftqPtr_value : deqData_1_cf_ftqPtr_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_cf_ftqOffset = _T_38 ? _io_deqNext_1_T_7_cf_ftqOffset : deqData_1_cf_ftqOffset; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_srcType_0 = _T_38 ? _io_deqNext_1_T_7_ctrl_srcType_0 : deqData_1_ctrl_srcType_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_srcType_1 = _T_38 ? _io_deqNext_1_T_7_ctrl_srcType_1 : deqData_1_ctrl_srcType_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_srcType_2 = _T_38 ? _io_deqNext_1_T_7_ctrl_srcType_2 : deqData_1_ctrl_srcType_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_fuType = _T_38 ? _io_deqNext_1_T_7_ctrl_fuType : deqData_1_ctrl_fuType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_fuOpType = _T_38 ? _io_deqNext_1_T_7_ctrl_fuOpType : deqData_1_ctrl_fuOpType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_rfWen = _T_38 ? _io_deqNext_1_T_7_ctrl_rfWen : deqData_1_ctrl_rfWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_fpWen = _T_38 ? _io_deqNext_1_T_7_ctrl_fpWen : deqData_1_ctrl_fpWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_selImm = _T_38 ? _io_deqNext_1_T_7_ctrl_selImm : deqData_1_ctrl_selImm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_ctrl_imm = _T_38 ? _io_deqNext_1_T_7_ctrl_imm : deqData_1_ctrl_imm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_psrc_0 = _T_38 ? _io_deqNext_1_T_7_psrc_0 : deqData_1_psrc_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_psrc_1 = _T_38 ? _io_deqNext_1_T_7_psrc_1 : deqData_1_psrc_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_psrc_2 = _T_38 ? _io_deqNext_1_T_7_psrc_2 : deqData_1_psrc_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_pdest = _T_38 ? _io_deqNext_1_T_7_pdest : deqData_1_pdest; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_robIdx_flag = _T_38 ? _io_deqNext_1_T_7_robIdx_flag : deqData_1_robIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_robIdx_value = _T_38 ? _io_deqNext_1_T_7_robIdx_value : deqData_1_robIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_lqIdx_flag = _T_38 ? _io_deqNext_1_T_7_lqIdx_flag : deqData_1_lqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_lqIdx_value = _T_38 ? _io_deqNext_1_T_7_lqIdx_value : deqData_1_lqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_sqIdx_flag = _T_38 ? _io_deqNext_1_T_7_sqIdx_flag : deqData_1_sqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_1_sqIdx_value = _T_38 ? _io_deqNext_1_T_7_sqIdx_value : deqData_1_sqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_cf_ftqPtr_value = _T_38 ? _io_deqNext_2_T_7_cf_ftqPtr_value : deqData_2_cf_ftqPtr_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_cf_ftqOffset = _T_38 ? _io_deqNext_2_T_7_cf_ftqOffset : deqData_2_cf_ftqOffset; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_srcType_0 = _T_38 ? _io_deqNext_2_T_7_ctrl_srcType_0 : deqData_2_ctrl_srcType_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_srcType_1 = _T_38 ? _io_deqNext_2_T_7_ctrl_srcType_1 : deqData_2_ctrl_srcType_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_srcType_2 = _T_38 ? _io_deqNext_2_T_7_ctrl_srcType_2 : deqData_2_ctrl_srcType_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_fuType = _T_38 ? _io_deqNext_2_T_7_ctrl_fuType : deqData_2_ctrl_fuType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_fuOpType = _T_38 ? _io_deqNext_2_T_7_ctrl_fuOpType : deqData_2_ctrl_fuOpType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_rfWen = _T_38 ? _io_deqNext_2_T_7_ctrl_rfWen : deqData_2_ctrl_rfWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_fpWen = _T_38 ? _io_deqNext_2_T_7_ctrl_fpWen : deqData_2_ctrl_fpWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_selImm = _T_38 ? _io_deqNext_2_T_7_ctrl_selImm : deqData_2_ctrl_selImm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_ctrl_imm = _T_38 ? _io_deqNext_2_T_7_ctrl_imm : deqData_2_ctrl_imm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_psrc_0 = _T_38 ? _io_deqNext_2_T_7_psrc_0 : deqData_2_psrc_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_psrc_1 = _T_38 ? _io_deqNext_2_T_7_psrc_1 : deqData_2_psrc_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_psrc_2 = _T_38 ? _io_deqNext_2_T_7_psrc_2 : deqData_2_psrc_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_pdest = _T_38 ? _io_deqNext_2_T_7_pdest : deqData_2_pdest; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_robIdx_flag = _T_38 ? _io_deqNext_2_T_7_robIdx_flag : deqData_2_robIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_robIdx_value = _T_38 ? _io_deqNext_2_T_7_robIdx_value : deqData_2_robIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_lqIdx_flag = _T_38 ? _io_deqNext_2_T_7_lqIdx_flag : deqData_2_lqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_lqIdx_value = _T_38 ? _io_deqNext_2_T_7_lqIdx_value : deqData_2_lqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_sqIdx_flag = _T_38 ? _io_deqNext_2_T_7_sqIdx_flag : deqData_2_sqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_2_sqIdx_value = _T_38 ? _io_deqNext_2_T_7_sqIdx_value : deqData_2_sqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_cf_ftqPtr_value = _T_38 ? _io_deqNext_3_T_7_cf_ftqPtr_value : deqData_3_cf_ftqPtr_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_cf_ftqOffset = _T_38 ? _io_deqNext_3_T_7_cf_ftqOffset : deqData_3_cf_ftqOffset; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_srcType_0 = _T_38 ? _io_deqNext_3_T_7_ctrl_srcType_0 : deqData_3_ctrl_srcType_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_srcType_1 = _T_38 ? _io_deqNext_3_T_7_ctrl_srcType_1 : deqData_3_ctrl_srcType_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_srcType_2 = _T_38 ? _io_deqNext_3_T_7_ctrl_srcType_2 : deqData_3_ctrl_srcType_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_fuType = _T_38 ? _io_deqNext_3_T_7_ctrl_fuType : deqData_3_ctrl_fuType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_fuOpType = _T_38 ? _io_deqNext_3_T_7_ctrl_fuOpType : deqData_3_ctrl_fuOpType; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_rfWen = _T_38 ? _io_deqNext_3_T_7_ctrl_rfWen : deqData_3_ctrl_rfWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_fpWen = _T_38 ? _io_deqNext_3_T_7_ctrl_fpWen : deqData_3_ctrl_fpWen; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_selImm = _T_38 ? _io_deqNext_3_T_7_ctrl_selImm : deqData_3_ctrl_selImm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_ctrl_imm = _T_38 ? _io_deqNext_3_T_7_ctrl_imm : deqData_3_ctrl_imm; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_psrc_0 = _T_38 ? _io_deqNext_3_T_7_psrc_0 : deqData_3_psrc_0; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_psrc_1 = _T_38 ? _io_deqNext_3_T_7_psrc_1 : deqData_3_psrc_1; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_psrc_2 = _T_38 ? _io_deqNext_3_T_7_psrc_2 : deqData_3_psrc_2; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_pdest = _T_38 ? _io_deqNext_3_T_7_pdest : deqData_3_pdest; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_robIdx_flag = _T_38 ? _io_deqNext_3_T_7_robIdx_flag : deqData_3_robIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_robIdx_value = _T_38 ? _io_deqNext_3_T_7_robIdx_value : deqData_3_robIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_lqIdx_flag = _T_38 ? _io_deqNext_3_T_7_lqIdx_flag : deqData_3_lqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_lqIdx_value = _T_38 ? _io_deqNext_3_T_7_lqIdx_value : deqData_3_lqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_sqIdx_flag = _T_38 ? _io_deqNext_3_T_7_sqIdx_flag : deqData_3_sqIdx_flag; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_deqNext_3_sqIdx_value = _T_38 ? _io_deqNext_3_T_7_sqIdx_value : deqData_3_sqIdx_value; // @[DispatchQueue.scala 233:19 234:31 235:21]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{3'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{3'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign dataModule_clock = clock;
  assign dataModule_io_raddr_0 = io_redirect_valid ? headPtr_0_value : headPtrNext_0_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_1 = io_redirect_valid ? headPtr_1_value : headPtrNext_1_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_2 = io_redirect_valid ? headPtr_2_value : headPtrNext_2_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_3 = io_redirect_valid ? headPtr_3_value : headPtrNext_3_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_4 = io_redirect_valid ? headPtr_4_value : headPtrNext_4_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_5 = io_redirect_valid ? headPtr_5_value : headPtrNext_5_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_6 = io_redirect_valid ? headPtr_6_value : headPtrNext_6_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_raddr_7 = io_redirect_valid ? headPtr_7_value : headPtrNext_7_new_ptr_value; // @[DispatchQueue.scala 153:26]
  assign dataModule_io_wen_0 = allowEnqueue & io_enq_req_0_valid; // @[DispatchQueue.scala 100:40]
  assign dataModule_io_wen_1 = allowEnqueue & io_enq_req_1_valid; // @[DispatchQueue.scala 100:40]
  assign dataModule_io_waddr_0 = tailPtr_0_value; // @[DispatchQueue.scala 101:28]
  assign dataModule_io_waddr_1 = io_enq_needAlloc_0 ? tailPtr_1_value : tailPtr_0_value; // @[DispatchQueue.scala 101:{28,28}]
  assign dataModule_io_wdata_0_cf_trigger_backendEn_0 = io_enq_req_0_bits_cf_trigger_backendEn_0; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_trigger_backendEn_1 = io_enq_req_0_bits_cf_trigger_backendEn_1; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_pd_isRVC = io_enq_req_0_bits_cf_pd_isRVC; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_pd_brType = io_enq_req_0_bits_cf_pd_brType; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_pd_isCall = io_enq_req_0_bits_cf_pd_isCall; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_pd_isRet = io_enq_req_0_bits_cf_pd_isRet; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_pred_taken = io_enq_req_0_bits_cf_pred_taken; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_storeSetHit = io_enq_req_0_bits_cf_storeSetHit; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_loadWaitStrict = io_enq_req_0_bits_cf_loadWaitStrict; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_ssid = io_enq_req_0_bits_cf_ssid; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_ftqPtr_flag = io_enq_req_0_bits_cf_ftqPtr_flag; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_ftqPtr_value = io_enq_req_0_bits_cf_ftqPtr_value; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_cf_ftqOffset = io_enq_req_0_bits_cf_ftqOffset; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_srcType_0 = io_enq_req_0_bits_ctrl_srcType_0; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_srcType_1 = io_enq_req_0_bits_ctrl_srcType_1; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_srcType_2 = io_enq_req_0_bits_ctrl_srcType_2; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fuType = io_enq_req_0_bits_ctrl_fuType; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fuOpType = io_enq_req_0_bits_ctrl_fuOpType; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_rfWen = io_enq_req_0_bits_ctrl_rfWen; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpWen = io_enq_req_0_bits_ctrl_fpWen; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_selImm = io_enq_req_0_bits_ctrl_selImm; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_imm = io_enq_req_0_bits_ctrl_imm; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_isAddSub = io_enq_req_0_bits_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_typeTagIn = io_enq_req_0_bits_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_typeTagOut = io_enq_req_0_bits_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_fromInt = io_enq_req_0_bits_ctrl_fpu_fromInt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_wflags = io_enq_req_0_bits_ctrl_fpu_wflags; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_fpWen = io_enq_req_0_bits_ctrl_fpu_fpWen; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_fmaCmd = io_enq_req_0_bits_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_div = io_enq_req_0_bits_ctrl_fpu_div; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_sqrt = io_enq_req_0_bits_ctrl_fpu_sqrt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_fcvt = io_enq_req_0_bits_ctrl_fpu_fcvt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_typ = io_enq_req_0_bits_ctrl_fpu_typ; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_fmt = io_enq_req_0_bits_ctrl_fpu_fmt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_ren3 = io_enq_req_0_bits_ctrl_fpu_ren3; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_ctrl_fpu_rm = io_enq_req_0_bits_ctrl_fpu_rm; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_psrc_0 = io_enq_req_0_bits_psrc_0; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_psrc_1 = io_enq_req_0_bits_psrc_1; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_psrc_2 = io_enq_req_0_bits_psrc_2; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_pdest = io_enq_req_0_bits_pdest; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_robIdx_flag = io_enq_req_0_bits_robIdx_flag; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_0_robIdx_value = io_enq_req_0_bits_robIdx_value; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_trigger_backendEn_0 = io_enq_req_1_bits_cf_trigger_backendEn_0; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_trigger_backendEn_1 = io_enq_req_1_bits_cf_trigger_backendEn_1; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_pd_isRVC = io_enq_req_1_bits_cf_pd_isRVC; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_pd_brType = io_enq_req_1_bits_cf_pd_brType; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_pd_isCall = io_enq_req_1_bits_cf_pd_isCall; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_pd_isRet = io_enq_req_1_bits_cf_pd_isRet; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_pred_taken = io_enq_req_1_bits_cf_pred_taken; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_storeSetHit = io_enq_req_1_bits_cf_storeSetHit; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_loadWaitStrict = io_enq_req_1_bits_cf_loadWaitStrict; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_ssid = io_enq_req_1_bits_cf_ssid; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_ftqPtr_flag = io_enq_req_1_bits_cf_ftqPtr_flag; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_ftqPtr_value = io_enq_req_1_bits_cf_ftqPtr_value; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_cf_ftqOffset = io_enq_req_1_bits_cf_ftqOffset; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_srcType_0 = io_enq_req_1_bits_ctrl_srcType_0; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_srcType_1 = io_enq_req_1_bits_ctrl_srcType_1; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_srcType_2 = io_enq_req_1_bits_ctrl_srcType_2; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fuType = io_enq_req_1_bits_ctrl_fuType; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fuOpType = io_enq_req_1_bits_ctrl_fuOpType; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_rfWen = io_enq_req_1_bits_ctrl_rfWen; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpWen = io_enq_req_1_bits_ctrl_fpWen; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_selImm = io_enq_req_1_bits_ctrl_selImm; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_imm = io_enq_req_1_bits_ctrl_imm; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_isAddSub = io_enq_req_1_bits_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_typeTagIn = io_enq_req_1_bits_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_typeTagOut = io_enq_req_1_bits_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_fromInt = io_enq_req_1_bits_ctrl_fpu_fromInt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_wflags = io_enq_req_1_bits_ctrl_fpu_wflags; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_fpWen = io_enq_req_1_bits_ctrl_fpu_fpWen; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_fmaCmd = io_enq_req_1_bits_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_div = io_enq_req_1_bits_ctrl_fpu_div; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_sqrt = io_enq_req_1_bits_ctrl_fpu_sqrt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_fcvt = io_enq_req_1_bits_ctrl_fpu_fcvt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_typ = io_enq_req_1_bits_ctrl_fpu_typ; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_fmt = io_enq_req_1_bits_ctrl_fpu_fmt; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_ren3 = io_enq_req_1_bits_ctrl_fpu_ren3; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_ctrl_fpu_rm = io_enq_req_1_bits_ctrl_fpu_rm; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_psrc_0 = io_enq_req_1_bits_psrc_0; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_psrc_1 = io_enq_req_1_bits_psrc_1; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_psrc_2 = io_enq_req_1_bits_psrc_2; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_pdest = io_enq_req_1_bits_pdest; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_robIdx_flag = io_enq_req_1_bits_robIdx_flag; // @[DispatchQueue.scala 102:28]
  assign dataModule_io_wdata_1_robIdx_value = io_enq_req_1_bits_robIdx_value; // @[DispatchQueue.scala 102:28]
  always @(posedge clock) begin
    if (|_T & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_0_flag <= _robIdxEntries_0_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_0_value <= _robIdxEntries_0_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_3 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_1_flag <= _robIdxEntries_1_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_3 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_1_value <= _robIdxEntries_1_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_6 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_2_flag <= _robIdxEntries_2_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_6 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_2_value <= _robIdxEntries_2_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_9 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_3_flag <= _robIdxEntries_3_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_9 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_3_value <= _robIdxEntries_3_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_12 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_4_flag <= _robIdxEntries_4_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_12 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_4_value <= _robIdxEntries_4_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_15 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_5_flag <= _robIdxEntries_5_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_15 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_5_value <= _robIdxEntries_5_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_18 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_6_flag <= _robIdxEntries_6_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_18 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_6_value <= _robIdxEntries_6_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_21 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_7_flag <= _robIdxEntries_7_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_21 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_7_value <= _robIdxEntries_7_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_24 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_8_flag <= _robIdxEntries_8_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_24 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_8_value <= _robIdxEntries_8_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_27 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_9_flag <= _robIdxEntries_9_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_27 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_9_value <= _robIdxEntries_9_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_30 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_10_flag <= _robIdxEntries_10_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_30 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_10_value <= _robIdxEntries_10_T_2; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_33 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_11_flag <= _robIdxEntries_11_T_5; // @[DispatchQueue.scala 95:24]
    end
    if (|_T_33 & allowEnqueue) begin // @[DispatchQueue.scala 94:55]
      robIdxEntries_11_value <= _robIdxEntries_11_T_2; // @[DispatchQueue.scala 95:24]
    end
    lastCycleMisprediction <= io_redirect_valid; // @[DispatchQueue.scala 162:39]
    lastLastCycleMisprediction <= lastCycleMisprediction; // @[DispatchQueue.scala 182:43]
    deqData_0_cf_ftqPtr_value <= io_deqNext_0_cf_ftqPtr_value; // @[DispatchQueue.scala 238:11]
    deqData_0_cf_ftqOffset <= io_deqNext_0_cf_ftqOffset; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_srcType_0 <= io_deqNext_0_ctrl_srcType_0; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_srcType_1 <= io_deqNext_0_ctrl_srcType_1; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_srcType_2 <= io_deqNext_0_ctrl_srcType_2; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_fuType <= io_deqNext_0_ctrl_fuType; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_fuOpType <= io_deqNext_0_ctrl_fuOpType; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_rfWen <= io_deqNext_0_ctrl_rfWen; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_fpWen <= io_deqNext_0_ctrl_fpWen; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_selImm <= io_deqNext_0_ctrl_selImm; // @[DispatchQueue.scala 238:11]
    deqData_0_ctrl_imm <= io_deqNext_0_ctrl_imm; // @[DispatchQueue.scala 238:11]
    deqData_0_psrc_0 <= io_deqNext_0_psrc_0; // @[DispatchQueue.scala 238:11]
    deqData_0_psrc_1 <= io_deqNext_0_psrc_1; // @[DispatchQueue.scala 238:11]
    deqData_0_psrc_2 <= io_deqNext_0_psrc_2; // @[DispatchQueue.scala 238:11]
    deqData_0_pdest <= io_deqNext_0_pdest; // @[DispatchQueue.scala 238:11]
    deqData_0_robIdx_flag <= io_deqNext_0_robIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_0_robIdx_value <= io_deqNext_0_robIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_0_lqIdx_flag <= io_deqNext_0_lqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_0_lqIdx_value <= io_deqNext_0_lqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_0_sqIdx_flag <= io_deqNext_0_sqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_0_sqIdx_value <= io_deqNext_0_sqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_1_cf_ftqPtr_value <= io_deqNext_1_cf_ftqPtr_value; // @[DispatchQueue.scala 238:11]
    deqData_1_cf_ftqOffset <= io_deqNext_1_cf_ftqOffset; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_srcType_0 <= io_deqNext_1_ctrl_srcType_0; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_srcType_1 <= io_deqNext_1_ctrl_srcType_1; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_srcType_2 <= io_deqNext_1_ctrl_srcType_2; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_fuType <= io_deqNext_1_ctrl_fuType; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_fuOpType <= io_deqNext_1_ctrl_fuOpType; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_rfWen <= io_deqNext_1_ctrl_rfWen; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_fpWen <= io_deqNext_1_ctrl_fpWen; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_selImm <= io_deqNext_1_ctrl_selImm; // @[DispatchQueue.scala 238:11]
    deqData_1_ctrl_imm <= io_deqNext_1_ctrl_imm; // @[DispatchQueue.scala 238:11]
    deqData_1_psrc_0 <= io_deqNext_1_psrc_0; // @[DispatchQueue.scala 238:11]
    deqData_1_psrc_1 <= io_deqNext_1_psrc_1; // @[DispatchQueue.scala 238:11]
    deqData_1_psrc_2 <= io_deqNext_1_psrc_2; // @[DispatchQueue.scala 238:11]
    deqData_1_pdest <= io_deqNext_1_pdest; // @[DispatchQueue.scala 238:11]
    deqData_1_robIdx_flag <= io_deqNext_1_robIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_1_robIdx_value <= io_deqNext_1_robIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_1_lqIdx_flag <= io_deqNext_1_lqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_1_lqIdx_value <= io_deqNext_1_lqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_1_sqIdx_flag <= io_deqNext_1_sqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_1_sqIdx_value <= io_deqNext_1_sqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_2_cf_ftqPtr_value <= io_deqNext_2_cf_ftqPtr_value; // @[DispatchQueue.scala 238:11]
    deqData_2_cf_ftqOffset <= io_deqNext_2_cf_ftqOffset; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_srcType_0 <= io_deqNext_2_ctrl_srcType_0; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_srcType_1 <= io_deqNext_2_ctrl_srcType_1; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_srcType_2 <= io_deqNext_2_ctrl_srcType_2; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_fuType <= io_deqNext_2_ctrl_fuType; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_fuOpType <= io_deqNext_2_ctrl_fuOpType; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_rfWen <= io_deqNext_2_ctrl_rfWen; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_fpWen <= io_deqNext_2_ctrl_fpWen; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_selImm <= io_deqNext_2_ctrl_selImm; // @[DispatchQueue.scala 238:11]
    deqData_2_ctrl_imm <= io_deqNext_2_ctrl_imm; // @[DispatchQueue.scala 238:11]
    deqData_2_psrc_0 <= io_deqNext_2_psrc_0; // @[DispatchQueue.scala 238:11]
    deqData_2_psrc_1 <= io_deqNext_2_psrc_1; // @[DispatchQueue.scala 238:11]
    deqData_2_psrc_2 <= io_deqNext_2_psrc_2; // @[DispatchQueue.scala 238:11]
    deqData_2_pdest <= io_deqNext_2_pdest; // @[DispatchQueue.scala 238:11]
    deqData_2_robIdx_flag <= io_deqNext_2_robIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_2_robIdx_value <= io_deqNext_2_robIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_2_lqIdx_flag <= io_deqNext_2_lqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_2_lqIdx_value <= io_deqNext_2_lqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_2_sqIdx_flag <= io_deqNext_2_sqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_2_sqIdx_value <= io_deqNext_2_sqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_3_cf_ftqPtr_value <= io_deqNext_3_cf_ftqPtr_value; // @[DispatchQueue.scala 238:11]
    deqData_3_cf_ftqOffset <= io_deqNext_3_cf_ftqOffset; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_srcType_0 <= io_deqNext_3_ctrl_srcType_0; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_srcType_1 <= io_deqNext_3_ctrl_srcType_1; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_srcType_2 <= io_deqNext_3_ctrl_srcType_2; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_fuType <= io_deqNext_3_ctrl_fuType; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_fuOpType <= io_deqNext_3_ctrl_fuOpType; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_rfWen <= io_deqNext_3_ctrl_rfWen; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_fpWen <= io_deqNext_3_ctrl_fpWen; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_selImm <= io_deqNext_3_ctrl_selImm; // @[DispatchQueue.scala 238:11]
    deqData_3_ctrl_imm <= io_deqNext_3_ctrl_imm; // @[DispatchQueue.scala 238:11]
    deqData_3_psrc_0 <= io_deqNext_3_psrc_0; // @[DispatchQueue.scala 238:11]
    deqData_3_psrc_1 <= io_deqNext_3_psrc_1; // @[DispatchQueue.scala 238:11]
    deqData_3_psrc_2 <= io_deqNext_3_psrc_2; // @[DispatchQueue.scala 238:11]
    deqData_3_pdest <= io_deqNext_3_pdest; // @[DispatchQueue.scala 238:11]
    deqData_3_robIdx_flag <= io_deqNext_3_robIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_3_robIdx_value <= io_deqNext_3_robIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_3_lqIdx_flag <= io_deqNext_3_lqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_3_lqIdx_value <= io_deqNext_3_lqIdx_value; // @[DispatchQueue.scala 238:11]
    deqData_3_sqIdx_flag <= io_deqNext_3_sqIdx_flag; // @[DispatchQueue.scala 238:11]
    deqData_3_sqIdx_value <= io_deqNext_3_sqIdx_value; // @[DispatchQueue.scala 238:11]
    validEntries <= _T_163 + _T_173; // @[Bitwise.scala 48:55]
    if (io_enq_canAccept) begin // @[DispatchQueue.scala 175:19]
      io_perf_0_value_REG <= _numEnq_T;
    end else begin
      io_perf_0_value_REG <= 2'h0;
    end
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= _T_182 + _T_184; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= _T_188 + _T_190; // @[Bitwise.scala 48:55]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= currentValidCounter <= 4'ha & _T_177; // @[DispatchQueue.scala 264:61]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= validEntries < 4'h3; // @[DispatchQueue.scala 273:43]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= validEntries >= 4'h3 & validEntries <= 4'h6; // @[DispatchQueue.scala 274:59]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= validEntries >= 4'h6 & validEntries <= 4'h9; // @[DispatchQueue.scala 275:59]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= validEntries >= 4'h9; // @[DispatchQueue.scala 276:43]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_0 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_0) begin // @[DispatchQueue.scala 108:63]
      stateEntries_0 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_36 & ~io_redirect_valid) begin
      stateEntries_0 <= 1'h0;
    end else begin
      stateEntries_0 <= _GEN_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_1 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_1) begin // @[DispatchQueue.scala 108:63]
      stateEntries_1 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_40 & ~io_redirect_valid) begin
      stateEntries_1 <= 1'h0;
    end else begin
      stateEntries_1 <= _GEN_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_2 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_2) begin // @[DispatchQueue.scala 108:63]
      stateEntries_2 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_44 & ~io_redirect_valid) begin
      stateEntries_2 <= 1'h0;
    end else begin
      stateEntries_2 <= _GEN_11;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_3 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_3) begin // @[DispatchQueue.scala 108:63]
      stateEntries_3 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_48 & ~io_redirect_valid) begin
      stateEntries_3 <= 1'h0;
    end else begin
      stateEntries_3 <= _GEN_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_4 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_4) begin // @[DispatchQueue.scala 108:63]
      stateEntries_4 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_52 & ~io_redirect_valid) begin
      stateEntries_4 <= 1'h0;
    end else begin
      stateEntries_4 <= _GEN_17;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_5 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_5) begin // @[DispatchQueue.scala 108:63]
      stateEntries_5 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_56 & ~io_redirect_valid) begin
      stateEntries_5 <= 1'h0;
    end else begin
      stateEntries_5 <= _GEN_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_6 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_6) begin // @[DispatchQueue.scala 108:63]
      stateEntries_6 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_60 & ~io_redirect_valid) begin
      stateEntries_6 <= 1'h0;
    end else begin
      stateEntries_6 <= _GEN_23;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_7 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_7) begin // @[DispatchQueue.scala 108:63]
      stateEntries_7 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_64 & ~io_redirect_valid) begin
      stateEntries_7 <= 1'h0;
    end else begin
      stateEntries_7 <= _GEN_26;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_8 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_8) begin // @[DispatchQueue.scala 108:63]
      stateEntries_8 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_68 & ~io_redirect_valid) begin
      stateEntries_8 <= 1'h0;
    end else begin
      stateEntries_8 <= _GEN_29;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_9 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_9) begin // @[DispatchQueue.scala 108:63]
      stateEntries_9 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_72 & ~io_redirect_valid) begin
      stateEntries_9 <= 1'h0;
    end else begin
      stateEntries_9 <= _GEN_32;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_10 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_10) begin // @[DispatchQueue.scala 108:63]
      stateEntries_10 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_76 & ~io_redirect_valid) begin
      stateEntries_10 <= 1'h0;
    end else begin
      stateEntries_10 <= _GEN_35;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 118:25]
      stateEntries_11 <= 1'h0; // @[DispatchQueue.scala 119:23]
    end else if (needCancel_11) begin // @[DispatchQueue.scala 108:63]
      stateEntries_11 <= 1'h0; // @[DispatchQueue.scala 109:23]
    end else if (|_T_80 & ~io_redirect_valid) begin
      stateEntries_11 <= 1'h0;
    end else begin
      stateEntries_11 <= _GEN_38;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_0_flag <= 1'h0;
    end else if (!(io_redirect_valid)) begin // @[CircularQueuePtr.scala 44:26]
      if (headPtrNext_0_reverse_flag) begin
        headPtr_0_flag <= ~headPtr_0_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_0_value <= 4'h0;
    end else if (!(io_redirect_valid)) begin
      headPtr_0_value <= headPtrNext_0_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_1_value <= 4'h1;
    end else if (!(io_redirect_valid)) begin
      headPtr_1_value <= headPtrNext_1_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_2_value <= 4'h2;
    end else if (!(io_redirect_valid)) begin
      headPtr_2_value <= headPtrNext_2_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_3_value <= 4'h3;
    end else if (!(io_redirect_valid)) begin
      headPtr_3_value <= headPtrNext_3_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_4_value <= 4'h4;
    end else if (!(io_redirect_valid)) begin
      headPtr_4_value <= headPtrNext_4_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_5_value <= 4'h5;
    end else if (!(io_redirect_valid)) begin
      headPtr_5_value <= headPtrNext_5_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_6_value <= 4'h6;
    end else if (!(io_redirect_valid)) begin
      headPtr_6_value <= headPtrNext_6_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 153:26]
      headPtr_7_value <= 4'h7;
    end else if (!(io_redirect_valid)) begin
      headPtr_7_value <= headPtrNext_7_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 156:19]
      headPtrOH <= 12'h1;
    end else if (!(io_redirect_valid)) begin // @[ParallelMux.scala 90:77]
      if (deqEnable_n_0 | deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
        if (!(deqEnable_n_0)) begin
          headPtrOH <= headPtrOHVec_1;
        end
      end else if (deqEnable_n_2) begin // @[ParallelMux.scala 90:77]
        headPtrOH <= headPtrOHVec_2;
      end else if (deqEnable_n_3) begin
        headPtrOH <= headPtrOHVec_3;
      end else begin
        headPtrOH <= headPtrOHVec_4;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 176:20]
      tailPtr_0_flag <= 1'h0;
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 178:8]
      if (lastCycleMisprediction) begin // @[CircularQueuePtr.scala 44:26]
        if (isTrueEmpty) begin
          tailPtr_0_flag <= headPtr_0_flag;
        end else begin
          tailPtr_0_flag <= walkedTailPtr_flag;
        end
      end else if (tailPtr_0_reverse_flag) begin
        tailPtr_0_flag <= ~tailPtr_0_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 176:20]
      tailPtr_0_value <= 4'h0;
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 178:8]
      if (lastCycleMisprediction) begin
        if (isTrueEmpty) begin
          tailPtr_0_value <= headPtr_0_value;
        end else if (leadingZeros == 4'h0) begin
          tailPtr_0_value <= 4'h0;
        end else begin
          tailPtr_0_value <= _lastOneIndex_T_2;
        end
      end else begin
        tailPtr_0_value <= tailPtr_0_new_ptr_value;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 184:22]
      tailPtr_1_value <= 4'h1;
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 186:10]
      if (lastLastCycleMisprediction) begin
        tailPtr_1_value <= tailPtr_1_new_ptr_value;
      end else begin
        tailPtr_1_value <= tailPtr_1_new_ptr_1_value;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 191:19]
      tailPtrOH <= 12'h1;
    end else if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 191:19]
      tailPtrOH <= _tailPtrMask_T[11:0]; // @[DispatchQueue.scala 191:19]
    end else if (2'h2 == numEnq) begin // @[DispatchQueue.scala 191:19]
      tailPtrOH <= tailPtrOHVec_2; // @[DispatchQueue.scala 191:19]
    end else if (2'h1 == numEnq) begin
      tailPtrOH <= tailPtrOHVec_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DispatchQueue.scala 202:22]
      allowEnqueue <= 1'h1;
    end else if (currentValidCounter > 4'ha) begin
      allowEnqueue <= 1'h0;
    end else begin
      allowEnqueue <= _GEN_561 <= _allowEnqueue_T_2;
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
  robIdxEntries_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  robIdxEntries_0_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  robIdxEntries_1_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  robIdxEntries_1_value = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  robIdxEntries_2_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  robIdxEntries_2_value = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  robIdxEntries_3_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  robIdxEntries_3_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  robIdxEntries_4_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  robIdxEntries_4_value = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  robIdxEntries_5_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  robIdxEntries_5_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  robIdxEntries_6_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  robIdxEntries_6_value = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  robIdxEntries_7_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  robIdxEntries_7_value = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  robIdxEntries_8_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  robIdxEntries_8_value = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  robIdxEntries_9_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  robIdxEntries_9_value = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  robIdxEntries_10_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  robIdxEntries_10_value = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  robIdxEntries_11_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  robIdxEntries_11_value = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  stateEntries_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  stateEntries_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  stateEntries_2 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  stateEntries_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  stateEntries_4 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  stateEntries_5 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  stateEntries_6 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  stateEntries_7 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  stateEntries_8 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  stateEntries_9 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  stateEntries_10 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  stateEntries_11 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  headPtr_0_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  headPtr_0_value = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  headPtr_1_value = _RAND_38[3:0];
  _RAND_39 = {1{`RANDOM}};
  headPtr_2_value = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  headPtr_3_value = _RAND_40[3:0];
  _RAND_41 = {1{`RANDOM}};
  headPtr_4_value = _RAND_41[3:0];
  _RAND_42 = {1{`RANDOM}};
  headPtr_5_value = _RAND_42[3:0];
  _RAND_43 = {1{`RANDOM}};
  headPtr_6_value = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  headPtr_7_value = _RAND_44[3:0];
  _RAND_45 = {1{`RANDOM}};
  headPtrOH = _RAND_45[11:0];
  _RAND_46 = {1{`RANDOM}};
  tailPtr_0_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  tailPtr_0_value = _RAND_47[3:0];
  _RAND_48 = {1{`RANDOM}};
  tailPtr_1_value = _RAND_48[3:0];
  _RAND_49 = {1{`RANDOM}};
  tailPtrOH = _RAND_49[11:0];
  _RAND_50 = {1{`RANDOM}};
  allowEnqueue = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  lastCycleMisprediction = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  lastLastCycleMisprediction = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  deqData_0_cf_ftqPtr_value = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  deqData_0_cf_ftqOffset = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  deqData_0_ctrl_srcType_0 = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  deqData_0_ctrl_srcType_1 = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  deqData_0_ctrl_srcType_2 = _RAND_57[1:0];
  _RAND_58 = {1{`RANDOM}};
  deqData_0_ctrl_fuType = _RAND_58[3:0];
  _RAND_59 = {1{`RANDOM}};
  deqData_0_ctrl_fuOpType = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  deqData_0_ctrl_rfWen = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  deqData_0_ctrl_fpWen = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  deqData_0_ctrl_selImm = _RAND_62[3:0];
  _RAND_63 = {1{`RANDOM}};
  deqData_0_ctrl_imm = _RAND_63[19:0];
  _RAND_64 = {1{`RANDOM}};
  deqData_0_psrc_0 = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  deqData_0_psrc_1 = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  deqData_0_psrc_2 = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  deqData_0_pdest = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  deqData_0_robIdx_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  deqData_0_robIdx_value = _RAND_69[4:0];
  _RAND_70 = {1{`RANDOM}};
  deqData_0_lqIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  deqData_0_lqIdx_value = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  deqData_0_sqIdx_flag = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  deqData_0_sqIdx_value = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  deqData_1_cf_ftqPtr_value = _RAND_74[2:0];
  _RAND_75 = {1{`RANDOM}};
  deqData_1_cf_ftqOffset = _RAND_75[2:0];
  _RAND_76 = {1{`RANDOM}};
  deqData_1_ctrl_srcType_0 = _RAND_76[1:0];
  _RAND_77 = {1{`RANDOM}};
  deqData_1_ctrl_srcType_1 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  deqData_1_ctrl_srcType_2 = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  deqData_1_ctrl_fuType = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  deqData_1_ctrl_fuOpType = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  deqData_1_ctrl_rfWen = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  deqData_1_ctrl_fpWen = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  deqData_1_ctrl_selImm = _RAND_83[3:0];
  _RAND_84 = {1{`RANDOM}};
  deqData_1_ctrl_imm = _RAND_84[19:0];
  _RAND_85 = {1{`RANDOM}};
  deqData_1_psrc_0 = _RAND_85[5:0];
  _RAND_86 = {1{`RANDOM}};
  deqData_1_psrc_1 = _RAND_86[5:0];
  _RAND_87 = {1{`RANDOM}};
  deqData_1_psrc_2 = _RAND_87[5:0];
  _RAND_88 = {1{`RANDOM}};
  deqData_1_pdest = _RAND_88[5:0];
  _RAND_89 = {1{`RANDOM}};
  deqData_1_robIdx_flag = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  deqData_1_robIdx_value = _RAND_90[4:0];
  _RAND_91 = {1{`RANDOM}};
  deqData_1_lqIdx_flag = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  deqData_1_lqIdx_value = _RAND_92[3:0];
  _RAND_93 = {1{`RANDOM}};
  deqData_1_sqIdx_flag = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  deqData_1_sqIdx_value = _RAND_94[3:0];
  _RAND_95 = {1{`RANDOM}};
  deqData_2_cf_ftqPtr_value = _RAND_95[2:0];
  _RAND_96 = {1{`RANDOM}};
  deqData_2_cf_ftqOffset = _RAND_96[2:0];
  _RAND_97 = {1{`RANDOM}};
  deqData_2_ctrl_srcType_0 = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  deqData_2_ctrl_srcType_1 = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  deqData_2_ctrl_srcType_2 = _RAND_99[1:0];
  _RAND_100 = {1{`RANDOM}};
  deqData_2_ctrl_fuType = _RAND_100[3:0];
  _RAND_101 = {1{`RANDOM}};
  deqData_2_ctrl_fuOpType = _RAND_101[6:0];
  _RAND_102 = {1{`RANDOM}};
  deqData_2_ctrl_rfWen = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  deqData_2_ctrl_fpWen = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  deqData_2_ctrl_selImm = _RAND_104[3:0];
  _RAND_105 = {1{`RANDOM}};
  deqData_2_ctrl_imm = _RAND_105[19:0];
  _RAND_106 = {1{`RANDOM}};
  deqData_2_psrc_0 = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  deqData_2_psrc_1 = _RAND_107[5:0];
  _RAND_108 = {1{`RANDOM}};
  deqData_2_psrc_2 = _RAND_108[5:0];
  _RAND_109 = {1{`RANDOM}};
  deqData_2_pdest = _RAND_109[5:0];
  _RAND_110 = {1{`RANDOM}};
  deqData_2_robIdx_flag = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  deqData_2_robIdx_value = _RAND_111[4:0];
  _RAND_112 = {1{`RANDOM}};
  deqData_2_lqIdx_flag = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  deqData_2_lqIdx_value = _RAND_113[3:0];
  _RAND_114 = {1{`RANDOM}};
  deqData_2_sqIdx_flag = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  deqData_2_sqIdx_value = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  deqData_3_cf_ftqPtr_value = _RAND_116[2:0];
  _RAND_117 = {1{`RANDOM}};
  deqData_3_cf_ftqOffset = _RAND_117[2:0];
  _RAND_118 = {1{`RANDOM}};
  deqData_3_ctrl_srcType_0 = _RAND_118[1:0];
  _RAND_119 = {1{`RANDOM}};
  deqData_3_ctrl_srcType_1 = _RAND_119[1:0];
  _RAND_120 = {1{`RANDOM}};
  deqData_3_ctrl_srcType_2 = _RAND_120[1:0];
  _RAND_121 = {1{`RANDOM}};
  deqData_3_ctrl_fuType = _RAND_121[3:0];
  _RAND_122 = {1{`RANDOM}};
  deqData_3_ctrl_fuOpType = _RAND_122[6:0];
  _RAND_123 = {1{`RANDOM}};
  deqData_3_ctrl_rfWen = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  deqData_3_ctrl_fpWen = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  deqData_3_ctrl_selImm = _RAND_125[3:0];
  _RAND_126 = {1{`RANDOM}};
  deqData_3_ctrl_imm = _RAND_126[19:0];
  _RAND_127 = {1{`RANDOM}};
  deqData_3_psrc_0 = _RAND_127[5:0];
  _RAND_128 = {1{`RANDOM}};
  deqData_3_psrc_1 = _RAND_128[5:0];
  _RAND_129 = {1{`RANDOM}};
  deqData_3_psrc_2 = _RAND_129[5:0];
  _RAND_130 = {1{`RANDOM}};
  deqData_3_pdest = _RAND_130[5:0];
  _RAND_131 = {1{`RANDOM}};
  deqData_3_robIdx_flag = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  deqData_3_robIdx_value = _RAND_132[4:0];
  _RAND_133 = {1{`RANDOM}};
  deqData_3_lqIdx_flag = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  deqData_3_lqIdx_value = _RAND_134[3:0];
  _RAND_135 = {1{`RANDOM}};
  deqData_3_sqIdx_flag = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  deqData_3_sqIdx_value = _RAND_136[3:0];
  _RAND_137 = {1{`RANDOM}};
  validEntries = _RAND_137[3:0];
  _RAND_138 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_140[2:0];
  _RAND_141 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_141[2:0];
  _RAND_142 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_142[2:0];
  _RAND_143 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_143[2:0];
  _RAND_144 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_153[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    stateEntries_0 = 1'h0;
  end
  if (reset) begin
    stateEntries_1 = 1'h0;
  end
  if (reset) begin
    stateEntries_2 = 1'h0;
  end
  if (reset) begin
    stateEntries_3 = 1'h0;
  end
  if (reset) begin
    stateEntries_4 = 1'h0;
  end
  if (reset) begin
    stateEntries_5 = 1'h0;
  end
  if (reset) begin
    stateEntries_6 = 1'h0;
  end
  if (reset) begin
    stateEntries_7 = 1'h0;
  end
  if (reset) begin
    stateEntries_8 = 1'h0;
  end
  if (reset) begin
    stateEntries_9 = 1'h0;
  end
  if (reset) begin
    stateEntries_10 = 1'h0;
  end
  if (reset) begin
    stateEntries_11 = 1'h0;
  end
  if (reset) begin
    headPtr_0_flag = 1'h0;
  end
  if (reset) begin
    headPtr_0_value = 4'h0;
  end
  if (reset) begin
    headPtr_1_value = 4'h1;
  end
  if (reset) begin
    headPtr_2_value = 4'h2;
  end
  if (reset) begin
    headPtr_3_value = 4'h3;
  end
  if (reset) begin
    headPtr_4_value = 4'h4;
  end
  if (reset) begin
    headPtr_5_value = 4'h5;
  end
  if (reset) begin
    headPtr_6_value = 4'h6;
  end
  if (reset) begin
    headPtr_7_value = 4'h7;
  end
  if (reset) begin
    headPtrOH = 12'h1;
  end
  if (reset) begin
    tailPtr_0_flag = 1'h0;
  end
  if (reset) begin
    tailPtr_0_value = 4'h0;
  end
  if (reset) begin
    tailPtr_1_value = 4'h1;
  end
  if (reset) begin
    tailPtrOH = 12'h1;
  end
  if (reset) begin
    allowEnqueue = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

