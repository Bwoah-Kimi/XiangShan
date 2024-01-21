module Dispatch2Rs_1(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_cf_trigger_backendEn_0,
  input         io_in_0_bits_cf_trigger_backendEn_1,
  input         io_in_0_bits_cf_pd_isRVC,
  input  [1:0]  io_in_0_bits_cf_pd_brType,
  input         io_in_0_bits_cf_pd_isCall,
  input         io_in_0_bits_cf_pd_isRet,
  input         io_in_0_bits_cf_pred_taken,
  input         io_in_0_bits_cf_storeSetHit,
  input         io_in_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_0_bits_cf_ssid,
  input         io_in_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_0_bits_cf_ftqOffset,
  input  [1:0]  io_in_0_bits_ctrl_srcType_0,
  input  [1:0]  io_in_0_bits_ctrl_srcType_1,
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input  [19:0] io_in_0_bits_ctrl_imm,
  input  [5:0]  io_in_0_bits_psrc_0,
  input  [5:0]  io_in_0_bits_psrc_1,
  input  [5:0]  io_in_0_bits_pdest,
  input         io_in_0_bits_robIdx_flag,
  input  [4:0]  io_in_0_bits_robIdx_value,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input         io_in_1_bits_cf_trigger_backendEn_0,
  input         io_in_1_bits_cf_trigger_backendEn_1,
  input         io_in_1_bits_cf_pd_isRVC,
  input  [1:0]  io_in_1_bits_cf_pd_brType,
  input         io_in_1_bits_cf_pd_isCall,
  input         io_in_1_bits_cf_pd_isRet,
  input         io_in_1_bits_cf_pred_taken,
  input         io_in_1_bits_cf_storeSetHit,
  input         io_in_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_1_bits_cf_ssid,
  input         io_in_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_1_bits_cf_ftqOffset,
  input  [1:0]  io_in_1_bits_ctrl_srcType_0,
  input  [1:0]  io_in_1_bits_ctrl_srcType_1,
  input  [3:0]  io_in_1_bits_ctrl_fuType,
  input  [6:0]  io_in_1_bits_ctrl_fuOpType,
  input         io_in_1_bits_ctrl_rfWen,
  input         io_in_1_bits_ctrl_fpWen,
  input  [19:0] io_in_1_bits_ctrl_imm,
  input  [5:0]  io_in_1_bits_psrc_0,
  input  [5:0]  io_in_1_bits_psrc_1,
  input  [5:0]  io_in_1_bits_pdest,
  input         io_in_1_bits_robIdx_flag,
  input  [4:0]  io_in_1_bits_robIdx_value,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input         io_in_2_bits_cf_trigger_backendEn_0,
  input         io_in_2_bits_cf_trigger_backendEn_1,
  input         io_in_2_bits_cf_pd_isRVC,
  input  [1:0]  io_in_2_bits_cf_pd_brType,
  input         io_in_2_bits_cf_pd_isCall,
  input         io_in_2_bits_cf_pd_isRet,
  input         io_in_2_bits_cf_pred_taken,
  input         io_in_2_bits_cf_storeSetHit,
  input         io_in_2_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_2_bits_cf_ssid,
  input         io_in_2_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_2_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_2_bits_cf_ftqOffset,
  input  [1:0]  io_in_2_bits_ctrl_srcType_0,
  input  [1:0]  io_in_2_bits_ctrl_srcType_1,
  input  [3:0]  io_in_2_bits_ctrl_fuType,
  input  [6:0]  io_in_2_bits_ctrl_fuOpType,
  input         io_in_2_bits_ctrl_rfWen,
  input         io_in_2_bits_ctrl_fpWen,
  input  [19:0] io_in_2_bits_ctrl_imm,
  input  [5:0]  io_in_2_bits_psrc_0,
  input  [5:0]  io_in_2_bits_psrc_1,
  input  [5:0]  io_in_2_bits_pdest,
  input         io_in_2_bits_robIdx_flag,
  input  [4:0]  io_in_2_bits_robIdx_value,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input         io_in_3_bits_cf_trigger_backendEn_0,
  input         io_in_3_bits_cf_trigger_backendEn_1,
  input         io_in_3_bits_cf_pd_isRVC,
  input  [1:0]  io_in_3_bits_cf_pd_brType,
  input         io_in_3_bits_cf_pd_isCall,
  input         io_in_3_bits_cf_pd_isRet,
  input         io_in_3_bits_cf_pred_taken,
  input         io_in_3_bits_cf_storeSetHit,
  input         io_in_3_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_3_bits_cf_ssid,
  input         io_in_3_bits_cf_ftqPtr_flag,
  input  [2:0]  io_in_3_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_3_bits_cf_ftqOffset,
  input  [1:0]  io_in_3_bits_ctrl_srcType_0,
  input  [1:0]  io_in_3_bits_ctrl_srcType_1,
  input  [3:0]  io_in_3_bits_ctrl_fuType,
  input  [6:0]  io_in_3_bits_ctrl_fuOpType,
  input         io_in_3_bits_ctrl_rfWen,
  input         io_in_3_bits_ctrl_fpWen,
  input  [19:0] io_in_3_bits_ctrl_imm,
  input  [5:0]  io_in_3_bits_psrc_0,
  input  [5:0]  io_in_3_bits_psrc_1,
  input  [5:0]  io_in_3_bits_pdest,
  input         io_in_3_bits_robIdx_flag,
  input  [4:0]  io_in_3_bits_robIdx_value,
  output [5:0]  io_readIntState_0_req,
  input         io_readIntState_0_resp,
  output [5:0]  io_readIntState_1_req,
  input         io_readIntState_1_resp,
  output [5:0]  io_readIntState_2_req,
  input         io_readIntState_2_resp,
  output [5:0]  io_readIntState_3_req,
  input         io_readIntState_3_resp,
  output [5:0]  io_readIntState_4_req,
  input         io_readIntState_4_resp,
  output [5:0]  io_readIntState_5_req,
  input         io_readIntState_5_resp,
  output [5:0]  io_readFpState_0_req,
  input         io_readFpState_0_resp,
  output [5:0]  io_readFpState_1_req,
  input         io_readFpState_1_resp,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output        io_out_0_bits_cf_trigger_backendEn_0,
  output        io_out_0_bits_cf_trigger_backendEn_1,
  output        io_out_0_bits_cf_pd_isRVC,
  output [1:0]  io_out_0_bits_cf_pd_brType,
  output        io_out_0_bits_cf_pd_isCall,
  output        io_out_0_bits_cf_pd_isRet,
  output        io_out_0_bits_cf_pred_taken,
  output        io_out_0_bits_cf_storeSetHit,
  output        io_out_0_bits_cf_loadWaitStrict,
  output [4:0]  io_out_0_bits_cf_ssid,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output [19:0] io_out_0_bits_ctrl_imm,
  output        io_out_0_bits_srcState_0,
  output [5:0]  io_out_0_bits_psrc_0,
  output [5:0]  io_out_0_bits_psrc_1,
  output [5:0]  io_out_0_bits_pdest,
  output        io_out_0_bits_robIdx_flag,
  output [4:0]  io_out_0_bits_robIdx_value,
  output        io_out_0_bits_lqIdx_flag,
  output [3:0]  io_out_0_bits_lqIdx_value,
  output        io_out_0_bits_sqIdx_flag,
  output [3:0]  io_out_0_bits_sqIdx_value,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output        io_out_1_bits_cf_trigger_backendEn_0,
  output        io_out_1_bits_cf_trigger_backendEn_1,
  output        io_out_1_bits_cf_pd_isRVC,
  output [1:0]  io_out_1_bits_cf_pd_brType,
  output        io_out_1_bits_cf_pd_isCall,
  output        io_out_1_bits_cf_pd_isRet,
  output        io_out_1_bits_cf_pred_taken,
  output        io_out_1_bits_cf_storeSetHit,
  output        io_out_1_bits_cf_loadWaitStrict,
  output [4:0]  io_out_1_bits_cf_ssid,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output [19:0] io_out_1_bits_ctrl_imm,
  output        io_out_1_bits_srcState_0,
  output [5:0]  io_out_1_bits_psrc_0,
  output [5:0]  io_out_1_bits_psrc_1,
  output [5:0]  io_out_1_bits_pdest,
  output        io_out_1_bits_robIdx_flag,
  output [4:0]  io_out_1_bits_robIdx_value,
  output        io_out_1_bits_lqIdx_flag,
  output [3:0]  io_out_1_bits_lqIdx_value,
  output        io_out_1_bits_sqIdx_flag,
  output [3:0]  io_out_1_bits_sqIdx_value,
  input         io_out_2_ready,
  output        io_out_2_valid,
  output        io_out_2_bits_cf_trigger_backendEn_0,
  output        io_out_2_bits_cf_trigger_backendEn_1,
  output        io_out_2_bits_cf_pd_isRVC,
  output [1:0]  io_out_2_bits_cf_pd_brType,
  output        io_out_2_bits_cf_pd_isCall,
  output        io_out_2_bits_cf_pd_isRet,
  output        io_out_2_bits_cf_pred_taken,
  output        io_out_2_bits_cf_storeSetHit,
  output        io_out_2_bits_cf_loadWaitStrict,
  output [4:0]  io_out_2_bits_cf_ssid,
  output        io_out_2_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_2_bits_cf_ftqPtr_value,
  output [2:0]  io_out_2_bits_cf_ftqOffset,
  output [1:0]  io_out_2_bits_ctrl_srcType_0,
  output [3:0]  io_out_2_bits_ctrl_fuType,
  output [6:0]  io_out_2_bits_ctrl_fuOpType,
  output        io_out_2_bits_ctrl_rfWen,
  output        io_out_2_bits_ctrl_fpWen,
  output [19:0] io_out_2_bits_ctrl_imm,
  output        io_out_2_bits_srcState_0,
  output [5:0]  io_out_2_bits_psrc_0,
  output [5:0]  io_out_2_bits_pdest,
  output        io_out_2_bits_robIdx_flag,
  output [4:0]  io_out_2_bits_robIdx_value,
  output        io_out_2_bits_lqIdx_flag,
  output [3:0]  io_out_2_bits_lqIdx_value,
  output        io_out_2_bits_sqIdx_flag,
  output [3:0]  io_out_2_bits_sqIdx_value,
  input         io_out_3_ready,
  output        io_out_3_valid,
  output        io_out_3_bits_cf_trigger_backendEn_0,
  output        io_out_3_bits_cf_trigger_backendEn_1,
  output        io_out_3_bits_cf_pd_isRVC,
  output [1:0]  io_out_3_bits_cf_pd_brType,
  output        io_out_3_bits_cf_pd_isCall,
  output        io_out_3_bits_cf_pd_isRet,
  output        io_out_3_bits_cf_pred_taken,
  output        io_out_3_bits_cf_storeSetHit,
  output        io_out_3_bits_cf_loadWaitStrict,
  output [4:0]  io_out_3_bits_cf_ssid,
  output        io_out_3_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_3_bits_cf_ftqPtr_value,
  output [2:0]  io_out_3_bits_cf_ftqOffset,
  output [1:0]  io_out_3_bits_ctrl_srcType_0,
  output [3:0]  io_out_3_bits_ctrl_fuType,
  output [6:0]  io_out_3_bits_ctrl_fuOpType,
  output        io_out_3_bits_ctrl_rfWen,
  output        io_out_3_bits_ctrl_fpWen,
  output [19:0] io_out_3_bits_ctrl_imm,
  output        io_out_3_bits_srcState_0,
  output [5:0]  io_out_3_bits_psrc_0,
  output [5:0]  io_out_3_bits_pdest,
  output        io_out_3_bits_robIdx_flag,
  output [4:0]  io_out_3_bits_robIdx_value,
  output        io_out_3_bits_lqIdx_flag,
  output [3:0]  io_out_3_bits_lqIdx_value,
  output        io_out_3_bits_sqIdx_flag,
  output [3:0]  io_out_3_bits_sqIdx_value,
  input         io_out_4_ready,
  output        io_out_4_valid,
  output        io_out_4_bits_cf_trigger_backendEn_0,
  output        io_out_4_bits_cf_trigger_backendEn_1,
  output        io_out_4_bits_cf_pd_isRVC,
  output [1:0]  io_out_4_bits_cf_pd_brType,
  output        io_out_4_bits_cf_pd_isCall,
  output        io_out_4_bits_cf_pd_isRet,
  output        io_out_4_bits_cf_pred_taken,
  output        io_out_4_bits_cf_storeSetHit,
  output        io_out_4_bits_cf_loadWaitStrict,
  output [4:0]  io_out_4_bits_cf_ssid,
  output        io_out_4_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_4_bits_cf_ftqPtr_value,
  output [2:0]  io_out_4_bits_cf_ftqOffset,
  output [1:0]  io_out_4_bits_ctrl_srcType_0,
  output [3:0]  io_out_4_bits_ctrl_fuType,
  output [6:0]  io_out_4_bits_ctrl_fuOpType,
  output        io_out_4_bits_ctrl_rfWen,
  output        io_out_4_bits_ctrl_fpWen,
  output [19:0] io_out_4_bits_ctrl_imm,
  output        io_out_4_bits_srcState_0,
  output [5:0]  io_out_4_bits_psrc_0,
  output [5:0]  io_out_4_bits_pdest,
  output        io_out_4_bits_robIdx_flag,
  output [4:0]  io_out_4_bits_robIdx_value,
  output        io_out_4_bits_lqIdx_flag,
  output [3:0]  io_out_4_bits_lqIdx_value,
  output        io_out_4_bits_sqIdx_flag,
  output [3:0]  io_out_4_bits_sqIdx_value,
  input         io_out_5_ready,
  output        io_out_5_valid,
  output        io_out_5_bits_cf_trigger_backendEn_0,
  output        io_out_5_bits_cf_trigger_backendEn_1,
  output        io_out_5_bits_cf_pd_isRVC,
  output [1:0]  io_out_5_bits_cf_pd_brType,
  output        io_out_5_bits_cf_pd_isCall,
  output        io_out_5_bits_cf_pd_isRet,
  output        io_out_5_bits_cf_pred_taken,
  output        io_out_5_bits_cf_storeSetHit,
  output        io_out_5_bits_cf_loadWaitStrict,
  output [4:0]  io_out_5_bits_cf_ssid,
  output        io_out_5_bits_cf_ftqPtr_flag,
  output [2:0]  io_out_5_bits_cf_ftqPtr_value,
  output [2:0]  io_out_5_bits_cf_ftqOffset,
  output [1:0]  io_out_5_bits_ctrl_srcType_0,
  output [3:0]  io_out_5_bits_ctrl_fuType,
  output [6:0]  io_out_5_bits_ctrl_fuOpType,
  output        io_out_5_bits_ctrl_rfWen,
  output        io_out_5_bits_ctrl_fpWen,
  output [19:0] io_out_5_bits_ctrl_imm,
  output        io_out_5_bits_srcState_0,
  output [5:0]  io_out_5_bits_psrc_0,
  output [5:0]  io_out_5_bits_pdest,
  output        io_out_5_bits_robIdx_flag,
  output [4:0]  io_out_5_bits_robIdx_value,
  output        io_out_5_bits_lqIdx_flag,
  output [3:0]  io_out_5_bits_lqIdx_value,
  output        io_out_5_bits_sqIdx_flag,
  output [3:0]  io_out_5_bits_sqIdx_value,
  input         io_enqLsq_canAccept,
  output [1:0]  io_enqLsq_needAlloc_0,
  output [1:0]  io_enqLsq_needAlloc_1,
  output [1:0]  io_enqLsq_needAlloc_2,
  output [1:0]  io_enqLsq_needAlloc_3,
  output        io_enqLsq_req_0_valid,
  output        io_enqLsq_req_0_bits_cf_trigger_backendEn_0,
  output        io_enqLsq_req_0_bits_cf_storeSetHit,
  output [4:0]  io_enqLsq_req_0_bits_cf_ssid,
  output [6:0]  io_enqLsq_req_0_bits_ctrl_fuOpType,
  output        io_enqLsq_req_0_bits_robIdx_flag,
  output [4:0]  io_enqLsq_req_0_bits_robIdx_value,
  output        io_enqLsq_req_1_valid,
  output        io_enqLsq_req_1_bits_cf_trigger_backendEn_0,
  output        io_enqLsq_req_1_bits_cf_storeSetHit,
  output [4:0]  io_enqLsq_req_1_bits_cf_ssid,
  output [6:0]  io_enqLsq_req_1_bits_ctrl_fuOpType,
  output        io_enqLsq_req_1_bits_robIdx_flag,
  output [4:0]  io_enqLsq_req_1_bits_robIdx_value,
  output        io_enqLsq_req_2_valid,
  output        io_enqLsq_req_2_bits_cf_trigger_backendEn_0,
  output        io_enqLsq_req_2_bits_cf_storeSetHit,
  output [4:0]  io_enqLsq_req_2_bits_cf_ssid,
  output [6:0]  io_enqLsq_req_2_bits_ctrl_fuOpType,
  output        io_enqLsq_req_2_bits_robIdx_flag,
  output [4:0]  io_enqLsq_req_2_bits_robIdx_value,
  output        io_enqLsq_req_3_valid,
  output        io_enqLsq_req_3_bits_cf_trigger_backendEn_0,
  output        io_enqLsq_req_3_bits_cf_storeSetHit,
  output [4:0]  io_enqLsq_req_3_bits_cf_ssid,
  output [6:0]  io_enqLsq_req_3_bits_ctrl_fuOpType,
  output        io_enqLsq_req_3_bits_robIdx_flag,
  output [4:0]  io_enqLsq_req_3_bits_robIdx_value,
  input         io_enqLsq_resp_0_lqIdx_flag,
  input  [3:0]  io_enqLsq_resp_0_lqIdx_value,
  input         io_enqLsq_resp_0_sqIdx_flag,
  input  [3:0]  io_enqLsq_resp_0_sqIdx_value,
  input         io_enqLsq_resp_1_lqIdx_flag,
  input  [3:0]  io_enqLsq_resp_1_lqIdx_value,
  input         io_enqLsq_resp_1_sqIdx_flag,
  input  [3:0]  io_enqLsq_resp_1_sqIdx_value,
  input         io_enqLsq_resp_2_lqIdx_flag,
  input  [3:0]  io_enqLsq_resp_2_lqIdx_value,
  input         io_enqLsq_resp_2_sqIdx_flag,
  input  [3:0]  io_enqLsq_resp_2_sqIdx_value,
  input         io_enqLsq_resp_3_lqIdx_flag,
  input  [3:0]  io_enqLsq_resp_3_lqIdx_value,
  input         io_enqLsq_resp_3_sqIdx_flag,
  input  [3:0]  io_enqLsq_resp_3_sqIdx_value
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
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
`endif // RANDOMIZE_REG_INIT
  wire  _isLs_T_1 = io_in_0_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 82:47]
  wire  _isLs_T_3 = ~io_in_0_bits_ctrl_fuType[1]; // @[package.scala 83:57]
  wire  isLs_0 = _isLs_T_1 & ~io_in_0_bits_ctrl_fuType[1]; // @[package.scala 83:54]
  wire  _isLs_T_5 = io_in_1_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 82:47]
  wire  _isLs_T_7 = ~io_in_1_bits_ctrl_fuType[1]; // @[package.scala 83:57]
  wire  isLs_1 = _isLs_T_5 & ~io_in_1_bits_ctrl_fuType[1]; // @[package.scala 83:54]
  wire  _isLs_T_9 = io_in_2_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 82:47]
  wire  _isLs_T_11 = ~io_in_2_bits_ctrl_fuType[1]; // @[package.scala 83:57]
  wire  isLs_2 = _isLs_T_9 & ~io_in_2_bits_ctrl_fuType[1]; // @[package.scala 83:54]
  wire  _isLs_T_13 = io_in_3_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 82:47]
  wire  _isLs_T_15 = ~io_in_3_bits_ctrl_fuType[1]; // @[package.scala 83:57]
  wire  isLs_3 = _isLs_T_13 & ~io_in_3_bits_ctrl_fuType[1]; // @[package.scala 83:54]
  wire  isStore_0 = _isLs_T_1 & io_in_0_bits_ctrl_fuType[0]; // @[package.scala 84:53]
  wire  isStore_1 = _isLs_T_5 & io_in_1_bits_ctrl_fuType[0]; // @[package.scala 84:53]
  wire  isStore_2 = _isLs_T_9 & io_in_2_bits_ctrl_fuType[0]; // @[package.scala 84:53]
  wire  isStore_3 = _isLs_T_13 & io_in_3_bits_ctrl_fuType[0]; // @[package.scala 84:53]
  wire  isLoadArrays_1_0 = io_in_0_valid & ~isStore_0; // @[Dispatch2Rs.scala 195:87]
  wire  isLoadArrays_2_1 = io_in_1_valid & ~isStore_1; // @[Dispatch2Rs.scala 195:87]
  wire  isLoadArrays_3_2 = io_in_2_valid & ~isStore_2; // @[Dispatch2Rs.scala 195:87]
  wire  isStoreArrays_1_0 = io_in_0_valid & isStore_0; // @[Dispatch2Rs.scala 196:88]
  wire  isStoreArrays_2_1 = io_in_1_valid & isStore_1; // @[Dispatch2Rs.scala 196:88]
  wire  isStoreArrays_3_2 = io_in_2_valid & isStore_2; // @[Dispatch2Rs.scala 196:88]
  wire [1:0] _blockLoads_T = isLoadArrays_1_0 + isLoadArrays_2_1; // @[Bitwise.scala 48:55]
  wire  blockLoads_2 = _blockLoads_T >= 2'h2; // @[Dispatch2Rs.scala 197:51]
  wire [1:0] _blockLoads_T_2 = isLoadArrays_2_1 + isLoadArrays_3_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_707 = {{1'd0}, isLoadArrays_1_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _blockLoads_T_4 = _GEN_707 + _blockLoads_T_2; // @[Bitwise.scala 48:55]
  wire  blockLoads_3 = _blockLoads_T_4[1:0] >= 2'h2; // @[Dispatch2Rs.scala 197:51]
  wire [1:0] _blockStores_T = isStoreArrays_1_0 + isStoreArrays_2_1; // @[Bitwise.scala 48:55]
  wire  blockStores_2 = _blockStores_T >= 2'h2; // @[Dispatch2Rs.scala 198:53]
  wire [1:0] _blockStores_T_2 = isStoreArrays_2_1 + isStoreArrays_3_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_708 = {{1'd0}, isStoreArrays_1_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _blockStores_T_4 = _GEN_708 + _blockStores_T_2; // @[Bitwise.scala 48:55]
  wire  blockStores_3 = _blockStores_T_4[1:0] >= 2'h2; // @[Dispatch2Rs.scala 198:53]
  reg  s1_out_valid_5; // @[PipelineConnect.scala 108:24]
  wire  s1_out_5_ready = ~s1_out_valid_5 | io_out_5_ready; // @[Dispatch2Rs.scala 265:41]
  reg  s1_out_valid_4; // @[PipelineConnect.scala 108:24]
  wire  s1_out_4_ready = ~s1_out_valid_4 | io_out_4_ready; // @[Dispatch2Rs.scala 265:41]
  reg  s1_out_valid_3; // @[PipelineConnect.scala 108:24]
  wire  s1_out_3_ready = ~s1_out_valid_3 | io_out_3_ready; // @[Dispatch2Rs.scala 265:41]
  reg  s1_out_valid_2; // @[PipelineConnect.scala 108:24]
  wire  s1_out_2_ready = ~s1_out_valid_2 | io_out_2_ready; // @[Dispatch2Rs.scala 265:41]
  reg  s1_out_valid_1; // @[PipelineConnect.scala 108:24]
  wire  s1_out_1_ready = ~s1_out_valid_1 | io_out_1_ready; // @[Dispatch2Rs.scala 265:41]
  reg  s1_out_valid; // @[PipelineConnect.scala 108:24]
  wire  s1_out_0_ready = ~s1_out_valid | io_out_0_ready; // @[Dispatch2Rs.scala 265:41]
  wire [5:0] _T_62 = {s1_out_5_ready,s1_out_4_ready,s1_out_3_ready,s1_out_2_ready,s1_out_1_ready,s1_out_0_ready}; // @[Dispatch2Rs.scala 247:41]
  wire  _T_63 = &_T_62; // @[Dispatch2Rs.scala 247:48]
  wire  _canAccept_T_8 = 4'hd == io_in_0_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire  _canAccept_T_9 = 4'hf == io_in_0_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire [1:0] _canAccept_T_10 = {_canAccept_T_8,_canAccept_T_9}; // @[Cat.scala 31:58]
  wire  _canAccept_T_11 = |_canAccept_T_10; // @[Exu.scala 108:45]
  wire  canAccept_0_1 = io_in_0_valid & _canAccept_T_11; // @[Dispatch2Rs.scala 222:46]
  wire  _canAccept_T_1 = |(4'hc == io_in_0_bits_ctrl_fuType); // @[Exu.scala 108:45]
  wire  canAccept_0 = io_in_0_valid & _canAccept_T_1; // @[Dispatch2Rs.scala 222:46]
  wire  _GEN_0 = canAccept_0 & s1_out_0_ready; // @[Dispatch2Rs.scala 181:22 239:{63,74}]
  wire  _GEN_8 = canAccept_0_1 ? s1_out_2_ready : _GEN_0; // @[Dispatch2Rs.scala 239:{63,74}]
  wire [1:0] _io_enqLsq_needAlloc_0_T_3 = isStore_0 & _isLs_T_3 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 209:66]
  wire  _canAccept_T_12 = 4'hd == io_in_1_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire  _canAccept_T_13 = 4'hf == io_in_1_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire [1:0] _canAccept_T_14 = {_canAccept_T_12,_canAccept_T_13}; // @[Cat.scala 31:58]
  wire  _canAccept_T_15 = |_canAccept_T_14; // @[Exu.scala 108:45]
  wire  canAccept_1_1 = io_in_1_valid & _canAccept_T_15; // @[Dispatch2Rs.scala 222:46]
  wire  selectIdxOH_3_1 = canAccept_1_1 & canAccept_0_1; // @[BitUtils.scala 275:62]
  wire  matrix_1_1_0 = ~(|canAccept_0_1); // @[BitUtils.scala 258:50]
  wire  selectIdxOH_2_1 = canAccept_1_1 & matrix_1_1_0; // @[BitUtils.scala 275:62]
  wire  _canAccept_T_3 = |(4'hc == io_in_1_bits_ctrl_fuType); // @[Exu.scala 108:45]
  wire  canAccept_1 = io_in_1_valid & _canAccept_T_3; // @[Dispatch2Rs.scala 222:46]
  wire  selectIdxOH_1_1 = canAccept_1 & canAccept_0; // @[BitUtils.scala 275:62]
  wire  matrix__1_0 = ~(|canAccept_0); // @[BitUtils.scala 258:50]
  wire  selectIdxOH__1 = canAccept_1 & matrix__1_0; // @[BitUtils.scala 275:62]
  wire  _GEN_1 = selectIdxOH__1 & s1_out_0_ready; // @[Dispatch2Rs.scala 181:22 239:{63,74}]
  wire  _GEN_5 = selectIdxOH_1_1 ? s1_out_1_ready : _GEN_1; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  _GEN_9 = selectIdxOH_2_1 ? s1_out_2_ready : _GEN_5; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  _GEN_13 = selectIdxOH_3_1 ? s1_out_3_ready : _GEN_9; // @[Dispatch2Rs.scala 239:{63,74}]
  wire [1:0] _io_enqLsq_needAlloc_1_T_3 = isStore_1 & _isLs_T_7 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 209:66]
  wire  is_blocked_2 = isStore_2 ? blockStores_2 : blockLoads_2; // @[Dispatch2Rs.scala 202:40]
  wire  _in_2_valid_T = ~is_blocked_2; // @[Dispatch2Rs.scala 205:40]
  wire  in_2_valid = io_in_2_valid & ~is_blocked_2; // @[Dispatch2Rs.scala 205:37]
  wire  _canAccept_T_16 = 4'hd == io_in_2_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire  _canAccept_T_17 = 4'hf == io_in_2_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire [1:0] _canAccept_T_18 = {_canAccept_T_16,_canAccept_T_17}; // @[Cat.scala 31:58]
  wire  _canAccept_T_19 = |_canAccept_T_18; // @[Exu.scala 108:45]
  wire  canAccept_2_1 = io_in_2_valid & _canAccept_T_19; // @[Dispatch2Rs.scala 222:46]
  wire  matrix_1_2_1 = selectIdxOH_2_1 | ~canAccept_1_1 & canAccept_0_1; // @[BitUtils.scala 265:61]
  wire  selectIdxOH_3_2 = canAccept_2_1 & matrix_1_2_1; // @[BitUtils.scala 275:62]
  wire [1:0] _matrix_2_0_T_3 = {canAccept_0_1,canAccept_1_1}; // @[Cat.scala 31:58]
  wire  matrix_1_2_0 = ~(|_matrix_2_0_T_3); // @[BitUtils.scala 258:50]
  wire  selectIdxOH_2_2 = canAccept_2_1 & matrix_1_2_0; // @[BitUtils.scala 275:62]
  wire  _canAccept_T_5 = |(4'hc == io_in_2_bits_ctrl_fuType); // @[Exu.scala 108:45]
  wire  canAccept_2 = io_in_2_valid & _canAccept_T_5; // @[Dispatch2Rs.scala 222:46]
  wire  matrix__2_1 = selectIdxOH__1 | ~canAccept_1 & canAccept_0; // @[BitUtils.scala 265:61]
  wire  selectIdxOH_1_2 = canAccept_2 & matrix__2_1; // @[BitUtils.scala 275:62]
  wire [1:0] _matrix_2_0_T = {canAccept_0,canAccept_1}; // @[Cat.scala 31:58]
  wire  matrix__2_0 = ~(|_matrix_2_0_T); // @[BitUtils.scala 258:50]
  wire  selectIdxOH__2 = canAccept_2 & matrix__2_0; // @[BitUtils.scala 275:62]
  wire  _GEN_2 = selectIdxOH__2 & s1_out_0_ready; // @[Dispatch2Rs.scala 181:22 239:{63,74}]
  wire  _GEN_6 = selectIdxOH_1_2 ? s1_out_1_ready : _GEN_2; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  _GEN_10 = selectIdxOH_2_2 ? s1_out_2_ready : _GEN_6; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  _GEN_14 = selectIdxOH_3_2 ? s1_out_3_ready : _GEN_10; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  in_2_ready = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_14; // @[Dispatch2Rs.scala 247:82 248:26]
  wire [1:0] _io_enqLsq_needAlloc_2_T_3 = isStore_2 & _isLs_T_11 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 209:66]
  wire  _is_blocked_3_T = isStore_3 ? blockStores_3 : blockLoads_3; // @[Dispatch2Rs.scala 202:40]
  wire  is_blocked_3 = _is_blocked_3_T | is_blocked_2; // @[Dispatch2Rs.scala 202:84]
  wire  _in_3_valid_T = ~is_blocked_3; // @[Dispatch2Rs.scala 205:40]
  wire  in_3_valid = io_in_3_valid & ~is_blocked_3; // @[Dispatch2Rs.scala 205:37]
  wire  _canAccept_T_20 = 4'hd == io_in_3_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire  _canAccept_T_21 = 4'hf == io_in_3_bits_ctrl_fuType; // @[Exu.scala 108:32]
  wire [1:0] _canAccept_T_22 = {_canAccept_T_20,_canAccept_T_21}; // @[Cat.scala 31:58]
  wire  _canAccept_T_23 = |_canAccept_T_22; // @[Exu.scala 108:45]
  wire  canAccept_3_1 = io_in_3_valid & _canAccept_T_23; // @[Dispatch2Rs.scala 222:46]
  wire  matrix_1_3_1 = selectIdxOH_2_2 | ~canAccept_2_1 & matrix_1_2_1; // @[BitUtils.scala 265:61]
  wire  selectIdxOH_3_3 = canAccept_3_1 & matrix_1_3_1; // @[BitUtils.scala 275:62]
  wire [2:0] _matrix_3_0_T_3 = {canAccept_0_1,canAccept_1_1,canAccept_2_1}; // @[Cat.scala 31:58]
  wire  matrix_1_3_0 = ~(|_matrix_3_0_T_3); // @[BitUtils.scala 258:50]
  wire  selectIdxOH_2_3 = canAccept_3_1 & matrix_1_3_0; // @[BitUtils.scala 275:62]
  wire  _canAccept_T_7 = |(4'hc == io_in_3_bits_ctrl_fuType); // @[Exu.scala 108:45]
  wire  canAccept_3 = io_in_3_valid & _canAccept_T_7; // @[Dispatch2Rs.scala 222:46]
  wire  matrix__3_1 = selectIdxOH__2 | ~canAccept_2 & matrix__2_1; // @[BitUtils.scala 265:61]
  wire  selectIdxOH_1_3 = canAccept_3 & matrix__3_1; // @[BitUtils.scala 275:62]
  wire [2:0] _matrix_3_0_T = {canAccept_0,canAccept_1,canAccept_2}; // @[Cat.scala 31:58]
  wire  matrix__3_0 = ~(|_matrix_3_0_T); // @[BitUtils.scala 258:50]
  wire  selectIdxOH__3 = canAccept_3 & matrix__3_0; // @[BitUtils.scala 275:62]
  wire  _GEN_3 = selectIdxOH__3 & s1_out_0_ready; // @[Dispatch2Rs.scala 181:22 239:{63,74}]
  wire  _GEN_7 = selectIdxOH_1_3 ? s1_out_1_ready : _GEN_3; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  _GEN_11 = selectIdxOH_2_3 ? s1_out_2_ready : _GEN_7; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  _GEN_15 = selectIdxOH_3_3 ? s1_out_3_ready : _GEN_11; // @[Dispatch2Rs.scala 239:{63,74}]
  wire  in_3_ready = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_15; // @[Dispatch2Rs.scala 247:82 248:26]
  wire [1:0] _io_enqLsq_needAlloc_3_T_3 = isStore_3 & _isLs_T_15 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 209:66]
  wire [1:0] selValid_hi = {canAccept_3,canAccept_2}; // @[BitUtils.scala 236:22]
  wire [3:0] _selValid_T = {canAccept_3,canAccept_2,canAccept_1,canAccept_0}; // @[BitUtils.scala 236:22]
  wire  selectValid = |_selValid_T; // @[BitUtils.scala 236:29]
  wire  _s0_out_0_valid_T_6 = selectIdxOH__2 & is_blocked_2 | selectIdxOH__3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_84 = canAccept_0 ? io_enqLsq_resp_0_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_85 = selectIdxOH__1 ? io_enqLsq_resp_1_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_86 = selectIdxOH__2 ? io_enqLsq_resp_2_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_87 = selectIdxOH__3 ? io_enqLsq_resp_3_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_88 = _s0_out_0_bits_T_84 | _s0_out_0_bits_T_85; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_89 = _s0_out_0_bits_T_88 | _s0_out_0_bits_T_86; // @[Mux.scala 27:73]
  wire [3:0] s0_out_0_bits_sqIdx_value = _s0_out_0_bits_T_89 | _s0_out_0_bits_T_87; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_sqIdx_flag = canAccept_0 & io_enqLsq_resp_0_sqIdx_flag | selectIdxOH__1 &
    io_enqLsq_resp_1_sqIdx_flag | selectIdxOH__2 & io_enqLsq_resp_2_sqIdx_flag | selectIdxOH__3 &
    io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_98 = canAccept_0 ? io_enqLsq_resp_0_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_99 = selectIdxOH__1 ? io_enqLsq_resp_1_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_100 = selectIdxOH__2 ? io_enqLsq_resp_2_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_101 = selectIdxOH__3 ? io_enqLsq_resp_3_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_102 = _s0_out_0_bits_T_98 | _s0_out_0_bits_T_99; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_103 = _s0_out_0_bits_T_102 | _s0_out_0_bits_T_100; // @[Mux.scala 27:73]
  wire [3:0] s0_out_0_bits_lqIdx_value = _s0_out_0_bits_T_103 | _s0_out_0_bits_T_101; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_lqIdx_flag = canAccept_0 & io_enqLsq_resp_0_lqIdx_flag | selectIdxOH__1 &
    io_enqLsq_resp_1_lqIdx_flag | selectIdxOH__2 & io_enqLsq_resp_2_lqIdx_flag | selectIdxOH__3 &
    io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_112 = canAccept_0 ? io_in_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_113 = selectIdxOH__1 ? io_in_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_114 = selectIdxOH__2 ? io_in_2_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_115 = selectIdxOH__3 ? io_in_3_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_116 = _s0_out_0_bits_T_112 | _s0_out_0_bits_T_113; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_117 = _s0_out_0_bits_T_116 | _s0_out_0_bits_T_114; // @[Mux.scala 27:73]
  wire [4:0] s0_out_0_bits_robIdx_value = _s0_out_0_bits_T_117 | _s0_out_0_bits_T_115; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_robIdx_flag = canAccept_0 & io_in_0_bits_robIdx_flag | selectIdxOH__1 & io_in_1_bits_robIdx_flag
     | selectIdxOH__2 & io_in_2_bits_robIdx_flag | selectIdxOH__3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_126 = canAccept_0 ? io_in_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_127 = selectIdxOH__1 ? io_in_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_128 = selectIdxOH__2 ? io_in_2_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_129 = selectIdxOH__3 ? io_in_3_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_130 = _s0_out_0_bits_T_126 | _s0_out_0_bits_T_127; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_131 = _s0_out_0_bits_T_130 | _s0_out_0_bits_T_128; // @[Mux.scala 27:73]
  wire [5:0] s0_out_0_bits_pdest = _s0_out_0_bits_T_131 | _s0_out_0_bits_T_129; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_133 = canAccept_0 ? io_in_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_134 = selectIdxOH__1 ? io_in_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_135 = selectIdxOH__2 ? io_in_2_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_136 = selectIdxOH__3 ? io_in_3_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_137 = _s0_out_0_bits_T_133 | _s0_out_0_bits_T_134; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_138 = _s0_out_0_bits_T_137 | _s0_out_0_bits_T_135; // @[Mux.scala 27:73]
  wire [5:0] s0_out_0_bits_psrc_0 = _s0_out_0_bits_T_138 | _s0_out_0_bits_T_136; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_140 = canAccept_0 ? io_in_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_141 = selectIdxOH__1 ? io_in_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_142 = selectIdxOH__2 ? io_in_2_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_143 = selectIdxOH__3 ? io_in_3_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_144 = _s0_out_0_bits_T_140 | _s0_out_0_bits_T_141; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_0_bits_T_145 = _s0_out_0_bits_T_144 | _s0_out_0_bits_T_142; // @[Mux.scala 27:73]
  wire [5:0] s0_out_0_bits_psrc_1 = _s0_out_0_bits_T_145 | _s0_out_0_bits_T_143; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_0_bits_T_301 = canAccept_0 ? io_in_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_0_bits_T_302 = selectIdxOH__1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_0_bits_T_303 = selectIdxOH__2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_0_bits_T_304 = selectIdxOH__3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_0_bits_T_305 = _s0_out_0_bits_T_301 | _s0_out_0_bits_T_302; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_0_bits_T_306 = _s0_out_0_bits_T_305 | _s0_out_0_bits_T_303; // @[Mux.scala 27:73]
  wire [19:0] s0_out_0_bits_ctrl_imm = _s0_out_0_bits_T_306 | _s0_out_0_bits_T_304; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_ctrl_fpWen = canAccept_0 & io_in_0_bits_ctrl_fpWen | selectIdxOH__1 & io_in_1_bits_ctrl_fpWen |
    selectIdxOH__2 & io_in_2_bits_ctrl_fpWen | selectIdxOH__3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_ctrl_rfWen = canAccept_0 & io_in_0_bits_ctrl_rfWen | selectIdxOH__1 & io_in_1_bits_ctrl_rfWen |
    selectIdxOH__2 & io_in_2_bits_ctrl_rfWen | selectIdxOH__3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_0_bits_T_357 = canAccept_0 ? io_in_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_0_bits_T_358 = selectIdxOH__1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_0_bits_T_359 = selectIdxOH__2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_0_bits_T_360 = selectIdxOH__3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_0_bits_T_361 = _s0_out_0_bits_T_357 | _s0_out_0_bits_T_358; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_0_bits_T_362 = _s0_out_0_bits_T_361 | _s0_out_0_bits_T_359; // @[Mux.scala 27:73]
  wire [6:0] s0_out_0_bits_ctrl_fuOpType = _s0_out_0_bits_T_362 | _s0_out_0_bits_T_360; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_364 = canAccept_0 ? io_in_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_365 = selectIdxOH__1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_366 = selectIdxOH__2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_367 = selectIdxOH__3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_368 = _s0_out_0_bits_T_364 | _s0_out_0_bits_T_365; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_0_bits_T_369 = _s0_out_0_bits_T_368 | _s0_out_0_bits_T_366; // @[Mux.scala 27:73]
  wire [3:0] s0_out_0_bits_ctrl_fuType = _s0_out_0_bits_T_369 | _s0_out_0_bits_T_367; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_399 = canAccept_0 ? io_in_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_400 = selectIdxOH__1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_401 = selectIdxOH__2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_402 = selectIdxOH__3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_403 = _s0_out_0_bits_T_399 | _s0_out_0_bits_T_400; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_404 = _s0_out_0_bits_T_403 | _s0_out_0_bits_T_401; // @[Mux.scala 27:73]
  wire [1:0] s0_out_0_bits_ctrl_srcType_0 = _s0_out_0_bits_T_404 | _s0_out_0_bits_T_402; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_427 = canAccept_0 ? io_in_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_428 = selectIdxOH__1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_429 = selectIdxOH__2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_430 = selectIdxOH__3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_431 = _s0_out_0_bits_T_427 | _s0_out_0_bits_T_428; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_432 = _s0_out_0_bits_T_431 | _s0_out_0_bits_T_429; // @[Mux.scala 27:73]
  wire [2:0] s0_out_0_bits_cf_ftqOffset = _s0_out_0_bits_T_432 | _s0_out_0_bits_T_430; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_434 = canAccept_0 ? io_in_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_435 = selectIdxOH__1 ? io_in_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_436 = selectIdxOH__2 ? io_in_2_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_437 = selectIdxOH__3 ? io_in_3_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_438 = _s0_out_0_bits_T_434 | _s0_out_0_bits_T_435; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_0_bits_T_439 = _s0_out_0_bits_T_438 | _s0_out_0_bits_T_436; // @[Mux.scala 27:73]
  wire [2:0] s0_out_0_bits_cf_ftqPtr_value = _s0_out_0_bits_T_439 | _s0_out_0_bits_T_437; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_ftqPtr_flag = canAccept_0 & io_in_0_bits_cf_ftqPtr_flag | selectIdxOH__1 &
    io_in_1_bits_cf_ftqPtr_flag | selectIdxOH__2 & io_in_2_bits_cf_ftqPtr_flag | selectIdxOH__3 &
    io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_448 = canAccept_0 ? io_in_0_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_449 = selectIdxOH__1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_450 = selectIdxOH__2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_451 = selectIdxOH__3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_452 = _s0_out_0_bits_T_448 | _s0_out_0_bits_T_449; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_0_bits_T_453 = _s0_out_0_bits_T_452 | _s0_out_0_bits_T_450; // @[Mux.scala 27:73]
  wire [4:0] s0_out_0_bits_cf_ssid = _s0_out_0_bits_T_453 | _s0_out_0_bits_T_451; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_loadWaitStrict = canAccept_0 & io_in_0_bits_cf_loadWaitStrict | selectIdxOH__1 &
    io_in_1_bits_cf_loadWaitStrict | selectIdxOH__2 & io_in_2_bits_cf_loadWaitStrict | selectIdxOH__3 &
    io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_storeSetHit = canAccept_0 & io_in_0_bits_cf_storeSetHit | selectIdxOH__1 &
    io_in_1_bits_cf_storeSetHit | selectIdxOH__2 & io_in_2_bits_cf_storeSetHit | selectIdxOH__3 &
    io_in_3_bits_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_pred_taken = canAccept_0 & io_in_0_bits_cf_pred_taken | selectIdxOH__1 &
    io_in_1_bits_cf_pred_taken | selectIdxOH__2 & io_in_2_bits_cf_pred_taken | selectIdxOH__3 &
    io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_pd_isRet = canAccept_0 & io_in_0_bits_cf_pd_isRet | selectIdxOH__1 & io_in_1_bits_cf_pd_isRet
     | selectIdxOH__2 & io_in_2_bits_cf_pd_isRet | selectIdxOH__3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_pd_isCall = canAccept_0 & io_in_0_bits_cf_pd_isCall | selectIdxOH__1 &
    io_in_1_bits_cf_pd_isCall | selectIdxOH__2 & io_in_2_bits_cf_pd_isCall | selectIdxOH__3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_518 = canAccept_0 ? io_in_0_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_519 = selectIdxOH__1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_520 = selectIdxOH__2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_521 = selectIdxOH__3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_522 = _s0_out_0_bits_T_518 | _s0_out_0_bits_T_519; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_0_bits_T_523 = _s0_out_0_bits_T_522 | _s0_out_0_bits_T_520; // @[Mux.scala 27:73]
  wire [1:0] s0_out_0_bits_cf_pd_brType = _s0_out_0_bits_T_523 | _s0_out_0_bits_T_521; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_pd_isRVC = canAccept_0 & io_in_0_bits_cf_pd_isRVC | selectIdxOH__1 & io_in_1_bits_cf_pd_isRVC
     | selectIdxOH__2 & io_in_2_bits_cf_pd_isRVC | selectIdxOH__3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_trigger_backendEn_0 = canAccept_0 & io_in_0_bits_cf_trigger_backendEn_0 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  s0_out_0_bits_cf_trigger_backendEn_1 = canAccept_0 & io_in_0_bits_cf_trigger_backendEn_1 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [2:0] _selValid_T_1 = {canAccept_3,canAccept_2,canAccept_1}; // @[BitUtils.scala 236:22]
  wire  _selValid_T_2 = |_selValid_T_1; // @[BitUtils.scala 236:29]
  wire  _selValid_T_5 = |selValid_hi; // @[BitUtils.scala 236:29]
  wire  _selValid_T_7 = |canAccept_3; // @[BitUtils.scala 236:29]
  wire  selectValid_1 = canAccept_0 & _selValid_T_2 | (canAccept_1 & _selValid_T_5 | canAccept_2 & _selValid_T_7); // @[BitUtils.scala 240:49]
  wire  _s0_out_1_valid_T_6 = selectIdxOH_1_2 & is_blocked_2 | selectIdxOH_1_3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_85 = selectIdxOH_1_1 ? io_enqLsq_resp_1_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_86 = selectIdxOH_1_2 ? io_enqLsq_resp_2_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_87 = selectIdxOH_1_3 ? io_enqLsq_resp_3_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_89 = _s0_out_1_bits_T_85 | _s0_out_1_bits_T_86; // @[Mux.scala 27:73]
  wire [3:0] s0_out_1_bits_sqIdx_value = _s0_out_1_bits_T_89 | _s0_out_1_bits_T_87; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_sqIdx_flag = selectIdxOH_1_1 & io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_1_2 &
    io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_1_3 & io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_99 = selectIdxOH_1_1 ? io_enqLsq_resp_1_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_100 = selectIdxOH_1_2 ? io_enqLsq_resp_2_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_101 = selectIdxOH_1_3 ? io_enqLsq_resp_3_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_103 = _s0_out_1_bits_T_99 | _s0_out_1_bits_T_100; // @[Mux.scala 27:73]
  wire [3:0] s0_out_1_bits_lqIdx_value = _s0_out_1_bits_T_103 | _s0_out_1_bits_T_101; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_lqIdx_flag = selectIdxOH_1_1 & io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_1_2 &
    io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_1_3 & io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_113 = selectIdxOH_1_1 ? io_in_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_114 = selectIdxOH_1_2 ? io_in_2_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_115 = selectIdxOH_1_3 ? io_in_3_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_117 = _s0_out_1_bits_T_113 | _s0_out_1_bits_T_114; // @[Mux.scala 27:73]
  wire [4:0] s0_out_1_bits_robIdx_value = _s0_out_1_bits_T_117 | _s0_out_1_bits_T_115; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_robIdx_flag = selectIdxOH_1_1 & io_in_1_bits_robIdx_flag | selectIdxOH_1_2 &
    io_in_2_bits_robIdx_flag | selectIdxOH_1_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_127 = selectIdxOH_1_1 ? io_in_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_128 = selectIdxOH_1_2 ? io_in_2_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_129 = selectIdxOH_1_3 ? io_in_3_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_131 = _s0_out_1_bits_T_127 | _s0_out_1_bits_T_128; // @[Mux.scala 27:73]
  wire [5:0] s0_out_1_bits_pdest = _s0_out_1_bits_T_131 | _s0_out_1_bits_T_129; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_134 = selectIdxOH_1_1 ? io_in_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_135 = selectIdxOH_1_2 ? io_in_2_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_136 = selectIdxOH_1_3 ? io_in_3_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_138 = _s0_out_1_bits_T_134 | _s0_out_1_bits_T_135; // @[Mux.scala 27:73]
  wire [5:0] s0_out_1_bits_psrc_0 = _s0_out_1_bits_T_138 | _s0_out_1_bits_T_136; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_141 = selectIdxOH_1_1 ? io_in_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_142 = selectIdxOH_1_2 ? io_in_2_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_143 = selectIdxOH_1_3 ? io_in_3_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_1_bits_T_145 = _s0_out_1_bits_T_141 | _s0_out_1_bits_T_142; // @[Mux.scala 27:73]
  wire [5:0] s0_out_1_bits_psrc_1 = _s0_out_1_bits_T_145 | _s0_out_1_bits_T_143; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_1_bits_T_302 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_1_bits_T_303 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_1_bits_T_304 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_1_bits_T_306 = _s0_out_1_bits_T_302 | _s0_out_1_bits_T_303; // @[Mux.scala 27:73]
  wire [19:0] s0_out_1_bits_ctrl_imm = _s0_out_1_bits_T_306 | _s0_out_1_bits_T_304; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_ctrl_fpWen = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpWen | selectIdxOH_1_2 & io_in_2_bits_ctrl_fpWen
     | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_ctrl_rfWen = selectIdxOH_1_1 & io_in_1_bits_ctrl_rfWen | selectIdxOH_1_2 & io_in_2_bits_ctrl_rfWen
     | selectIdxOH_1_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_1_bits_T_358 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_1_bits_T_359 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_1_bits_T_360 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_1_bits_T_362 = _s0_out_1_bits_T_358 | _s0_out_1_bits_T_359; // @[Mux.scala 27:73]
  wire [6:0] s0_out_1_bits_ctrl_fuOpType = _s0_out_1_bits_T_362 | _s0_out_1_bits_T_360; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_365 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_366 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_367 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_1_bits_T_369 = _s0_out_1_bits_T_365 | _s0_out_1_bits_T_366; // @[Mux.scala 27:73]
  wire [3:0] s0_out_1_bits_ctrl_fuType = _s0_out_1_bits_T_369 | _s0_out_1_bits_T_367; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_400 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_401 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_402 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_404 = _s0_out_1_bits_T_400 | _s0_out_1_bits_T_401; // @[Mux.scala 27:73]
  wire [1:0] s0_out_1_bits_ctrl_srcType_0 = _s0_out_1_bits_T_404 | _s0_out_1_bits_T_402; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_428 = selectIdxOH_1_1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_429 = selectIdxOH_1_2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_430 = selectIdxOH_1_3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_432 = _s0_out_1_bits_T_428 | _s0_out_1_bits_T_429; // @[Mux.scala 27:73]
  wire [2:0] s0_out_1_bits_cf_ftqOffset = _s0_out_1_bits_T_432 | _s0_out_1_bits_T_430; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_435 = selectIdxOH_1_1 ? io_in_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_436 = selectIdxOH_1_2 ? io_in_2_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_437 = selectIdxOH_1_3 ? io_in_3_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_1_bits_T_439 = _s0_out_1_bits_T_435 | _s0_out_1_bits_T_436; // @[Mux.scala 27:73]
  wire [2:0] s0_out_1_bits_cf_ftqPtr_value = _s0_out_1_bits_T_439 | _s0_out_1_bits_T_437; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_ftqPtr_flag = selectIdxOH_1_1 & io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_1_2 &
    io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_1_3 & io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_449 = selectIdxOH_1_1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_450 = selectIdxOH_1_2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_451 = selectIdxOH_1_3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_1_bits_T_453 = _s0_out_1_bits_T_449 | _s0_out_1_bits_T_450; // @[Mux.scala 27:73]
  wire [4:0] s0_out_1_bits_cf_ssid = _s0_out_1_bits_T_453 | _s0_out_1_bits_T_451; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_loadWaitStrict = selectIdxOH_1_1 & io_in_1_bits_cf_loadWaitStrict | selectIdxOH_1_2 &
    io_in_2_bits_cf_loadWaitStrict | selectIdxOH_1_3 & io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_storeSetHit = selectIdxOH_1_1 & io_in_1_bits_cf_storeSetHit | selectIdxOH_1_2 &
    io_in_2_bits_cf_storeSetHit | selectIdxOH_1_3 & io_in_3_bits_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_pred_taken = selectIdxOH_1_1 & io_in_1_bits_cf_pred_taken | selectIdxOH_1_2 &
    io_in_2_bits_cf_pred_taken | selectIdxOH_1_3 & io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_pd_isRet = selectIdxOH_1_1 & io_in_1_bits_cf_pd_isRet | selectIdxOH_1_2 &
    io_in_2_bits_cf_pd_isRet | selectIdxOH_1_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_pd_isCall = selectIdxOH_1_1 & io_in_1_bits_cf_pd_isCall | selectIdxOH_1_2 &
    io_in_2_bits_cf_pd_isCall | selectIdxOH_1_3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_519 = selectIdxOH_1_1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_520 = selectIdxOH_1_2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_521 = selectIdxOH_1_3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_1_bits_T_523 = _s0_out_1_bits_T_519 | _s0_out_1_bits_T_520; // @[Mux.scala 27:73]
  wire [1:0] s0_out_1_bits_cf_pd_brType = _s0_out_1_bits_T_523 | _s0_out_1_bits_T_521; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_pd_isRVC = selectIdxOH_1_1 & io_in_1_bits_cf_pd_isRVC | selectIdxOH_1_2 &
    io_in_2_bits_cf_pd_isRVC | selectIdxOH_1_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_trigger_backendEn_0 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_1_2
     & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  s0_out_1_bits_cf_trigger_backendEn_1 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_1_2
     & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [1:0] selValid_hi_2 = {canAccept_3_1,canAccept_2_1}; // @[BitUtils.scala 236:22]
  wire [3:0] _selValid_T_11 = {canAccept_3_1,canAccept_2_1,canAccept_1_1,canAccept_0_1}; // @[BitUtils.scala 236:22]
  wire  selectValid_2 = |_selValid_T_11; // @[BitUtils.scala 236:29]
  wire  _s0_out_2_valid_T_6 = selectIdxOH_2_2 & is_blocked_2 | selectIdxOH_2_3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_84 = canAccept_0_1 ? io_enqLsq_resp_0_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_85 = selectIdxOH_2_1 ? io_enqLsq_resp_1_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_86 = selectIdxOH_2_2 ? io_enqLsq_resp_2_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_87 = selectIdxOH_2_3 ? io_enqLsq_resp_3_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_88 = _s0_out_2_bits_T_84 | _s0_out_2_bits_T_85; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_89 = _s0_out_2_bits_T_88 | _s0_out_2_bits_T_86; // @[Mux.scala 27:73]
  wire [3:0] s0_out_2_bits_sqIdx_value = _s0_out_2_bits_T_89 | _s0_out_2_bits_T_87; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_sqIdx_flag = canAccept_0_1 & io_enqLsq_resp_0_sqIdx_flag | selectIdxOH_2_1 &
    io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_2_2 & io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_2_3 &
    io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_98 = canAccept_0_1 ? io_enqLsq_resp_0_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_99 = selectIdxOH_2_1 ? io_enqLsq_resp_1_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_100 = selectIdxOH_2_2 ? io_enqLsq_resp_2_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_101 = selectIdxOH_2_3 ? io_enqLsq_resp_3_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_102 = _s0_out_2_bits_T_98 | _s0_out_2_bits_T_99; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_103 = _s0_out_2_bits_T_102 | _s0_out_2_bits_T_100; // @[Mux.scala 27:73]
  wire [3:0] s0_out_2_bits_lqIdx_value = _s0_out_2_bits_T_103 | _s0_out_2_bits_T_101; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_lqIdx_flag = canAccept_0_1 & io_enqLsq_resp_0_lqIdx_flag | selectIdxOH_2_1 &
    io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_2_2 & io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_2_3 &
    io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_112 = canAccept_0_1 ? io_in_0_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_113 = selectIdxOH_2_1 ? io_in_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_114 = selectIdxOH_2_2 ? io_in_2_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_115 = selectIdxOH_2_3 ? io_in_3_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_116 = _s0_out_2_bits_T_112 | _s0_out_2_bits_T_113; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_117 = _s0_out_2_bits_T_116 | _s0_out_2_bits_T_114; // @[Mux.scala 27:73]
  wire [4:0] s0_out_2_bits_robIdx_value = _s0_out_2_bits_T_117 | _s0_out_2_bits_T_115; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_robIdx_flag = canAccept_0_1 & io_in_0_bits_robIdx_flag | selectIdxOH_2_1 &
    io_in_1_bits_robIdx_flag | selectIdxOH_2_2 & io_in_2_bits_robIdx_flag | selectIdxOH_2_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_126 = canAccept_0_1 ? io_in_0_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_127 = selectIdxOH_2_1 ? io_in_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_128 = selectIdxOH_2_2 ? io_in_2_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_129 = selectIdxOH_2_3 ? io_in_3_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_130 = _s0_out_2_bits_T_126 | _s0_out_2_bits_T_127; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_131 = _s0_out_2_bits_T_130 | _s0_out_2_bits_T_128; // @[Mux.scala 27:73]
  wire [5:0] s0_out_2_bits_pdest = _s0_out_2_bits_T_131 | _s0_out_2_bits_T_129; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_133 = canAccept_0_1 ? io_in_0_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_134 = selectIdxOH_2_1 ? io_in_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_135 = selectIdxOH_2_2 ? io_in_2_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_136 = selectIdxOH_2_3 ? io_in_3_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_137 = _s0_out_2_bits_T_133 | _s0_out_2_bits_T_134; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_138 = _s0_out_2_bits_T_137 | _s0_out_2_bits_T_135; // @[Mux.scala 27:73]
  wire [5:0] s0_out_2_bits_psrc_0 = _s0_out_2_bits_T_138 | _s0_out_2_bits_T_136; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_140 = canAccept_0_1 ? io_in_0_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_141 = selectIdxOH_2_1 ? io_in_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_142 = selectIdxOH_2_2 ? io_in_2_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_143 = selectIdxOH_2_3 ? io_in_3_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_144 = _s0_out_2_bits_T_140 | _s0_out_2_bits_T_141; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_2_bits_T_145 = _s0_out_2_bits_T_144 | _s0_out_2_bits_T_142; // @[Mux.scala 27:73]
  wire [5:0] s0_out_2_bits_psrc_1 = _s0_out_2_bits_T_145 | _s0_out_2_bits_T_143; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_2_bits_T_301 = canAccept_0_1 ? io_in_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_2_bits_T_302 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_2_bits_T_303 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_2_bits_T_304 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_2_bits_T_305 = _s0_out_2_bits_T_301 | _s0_out_2_bits_T_302; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_2_bits_T_306 = _s0_out_2_bits_T_305 | _s0_out_2_bits_T_303; // @[Mux.scala 27:73]
  wire [19:0] s0_out_2_bits_ctrl_imm = _s0_out_2_bits_T_306 | _s0_out_2_bits_T_304; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_ctrl_fpWen = canAccept_0_1 & io_in_0_bits_ctrl_fpWen | selectIdxOH_2_1 & io_in_1_bits_ctrl_fpWen
     | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpWen | selectIdxOH_2_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_ctrl_rfWen = canAccept_0_1 & io_in_0_bits_ctrl_rfWen | selectIdxOH_2_1 & io_in_1_bits_ctrl_rfWen
     | selectIdxOH_2_2 & io_in_2_bits_ctrl_rfWen | selectIdxOH_2_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_2_bits_T_357 = canAccept_0_1 ? io_in_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_2_bits_T_358 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_2_bits_T_359 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_2_bits_T_360 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_2_bits_T_361 = _s0_out_2_bits_T_357 | _s0_out_2_bits_T_358; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_2_bits_T_362 = _s0_out_2_bits_T_361 | _s0_out_2_bits_T_359; // @[Mux.scala 27:73]
  wire [6:0] s0_out_2_bits_ctrl_fuOpType = _s0_out_2_bits_T_362 | _s0_out_2_bits_T_360; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_364 = canAccept_0_1 ? io_in_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_365 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_366 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_367 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_368 = _s0_out_2_bits_T_364 | _s0_out_2_bits_T_365; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_2_bits_T_369 = _s0_out_2_bits_T_368 | _s0_out_2_bits_T_366; // @[Mux.scala 27:73]
  wire [3:0] s0_out_2_bits_ctrl_fuType = _s0_out_2_bits_T_369 | _s0_out_2_bits_T_367; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_399 = canAccept_0_1 ? io_in_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_400 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_401 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_402 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_403 = _s0_out_2_bits_T_399 | _s0_out_2_bits_T_400; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_404 = _s0_out_2_bits_T_403 | _s0_out_2_bits_T_401; // @[Mux.scala 27:73]
  wire [1:0] s0_out_2_bits_ctrl_srcType_0 = _s0_out_2_bits_T_404 | _s0_out_2_bits_T_402; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_406 = canAccept_0_1 ? io_in_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_407 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_408 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_409 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_410 = _s0_out_2_bits_T_406 | _s0_out_2_bits_T_407; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_411 = _s0_out_2_bits_T_410 | _s0_out_2_bits_T_408; // @[Mux.scala 27:73]
  wire [1:0] s0_out_2_bits_ctrl_srcType_1 = _s0_out_2_bits_T_411 | _s0_out_2_bits_T_409; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_427 = canAccept_0_1 ? io_in_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_428 = selectIdxOH_2_1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_429 = selectIdxOH_2_2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_430 = selectIdxOH_2_3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_431 = _s0_out_2_bits_T_427 | _s0_out_2_bits_T_428; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_432 = _s0_out_2_bits_T_431 | _s0_out_2_bits_T_429; // @[Mux.scala 27:73]
  wire [2:0] s0_out_2_bits_cf_ftqOffset = _s0_out_2_bits_T_432 | _s0_out_2_bits_T_430; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_434 = canAccept_0_1 ? io_in_0_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_435 = selectIdxOH_2_1 ? io_in_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_436 = selectIdxOH_2_2 ? io_in_2_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_437 = selectIdxOH_2_3 ? io_in_3_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_438 = _s0_out_2_bits_T_434 | _s0_out_2_bits_T_435; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_2_bits_T_439 = _s0_out_2_bits_T_438 | _s0_out_2_bits_T_436; // @[Mux.scala 27:73]
  wire [2:0] s0_out_2_bits_cf_ftqPtr_value = _s0_out_2_bits_T_439 | _s0_out_2_bits_T_437; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_ftqPtr_flag = canAccept_0_1 & io_in_0_bits_cf_ftqPtr_flag | selectIdxOH_2_1 &
    io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_2_2 & io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_2_3 &
    io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_448 = canAccept_0_1 ? io_in_0_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_449 = selectIdxOH_2_1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_450 = selectIdxOH_2_2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_451 = selectIdxOH_2_3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_452 = _s0_out_2_bits_T_448 | _s0_out_2_bits_T_449; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_2_bits_T_453 = _s0_out_2_bits_T_452 | _s0_out_2_bits_T_450; // @[Mux.scala 27:73]
  wire [4:0] s0_out_2_bits_cf_ssid = _s0_out_2_bits_T_453 | _s0_out_2_bits_T_451; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_loadWaitStrict = canAccept_0_1 & io_in_0_bits_cf_loadWaitStrict | selectIdxOH_2_1 &
    io_in_1_bits_cf_loadWaitStrict | selectIdxOH_2_2 & io_in_2_bits_cf_loadWaitStrict | selectIdxOH_2_3 &
    io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_storeSetHit = canAccept_0_1 & io_in_0_bits_cf_storeSetHit | selectIdxOH_2_1 &
    io_in_1_bits_cf_storeSetHit | selectIdxOH_2_2 & io_in_2_bits_cf_storeSetHit | selectIdxOH_2_3 &
    io_in_3_bits_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_pred_taken = canAccept_0_1 & io_in_0_bits_cf_pred_taken | selectIdxOH_2_1 &
    io_in_1_bits_cf_pred_taken | selectIdxOH_2_2 & io_in_2_bits_cf_pred_taken | selectIdxOH_2_3 &
    io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_pd_isRet = canAccept_0_1 & io_in_0_bits_cf_pd_isRet | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isRet | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isRet | selectIdxOH_2_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_pd_isCall = canAccept_0_1 & io_in_0_bits_cf_pd_isCall | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isCall | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isCall | selectIdxOH_2_3 &
    io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_518 = canAccept_0_1 ? io_in_0_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_519 = selectIdxOH_2_1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_520 = selectIdxOH_2_2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_521 = selectIdxOH_2_3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_522 = _s0_out_2_bits_T_518 | _s0_out_2_bits_T_519; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_2_bits_T_523 = _s0_out_2_bits_T_522 | _s0_out_2_bits_T_520; // @[Mux.scala 27:73]
  wire [1:0] s0_out_2_bits_cf_pd_brType = _s0_out_2_bits_T_523 | _s0_out_2_bits_T_521; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_pd_isRVC = canAccept_0_1 & io_in_0_bits_cf_pd_isRVC | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isRVC | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isRVC | selectIdxOH_2_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_trigger_backendEn_0 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendEn_0 | selectIdxOH_2_1 &
    io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_2_3 &
    io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  s0_out_2_bits_cf_trigger_backendEn_1 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendEn_1 | selectIdxOH_2_1 &
    io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_2_3 &
    io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [2:0] _selValid_T_12 = {canAccept_3_1,canAccept_2_1,canAccept_1_1}; // @[BitUtils.scala 236:22]
  wire  _selValid_T_13 = |_selValid_T_12; // @[BitUtils.scala 236:29]
  wire  _selValid_T_16 = |selValid_hi_2; // @[BitUtils.scala 236:29]
  wire  _selValid_T_18 = |canAccept_3_1; // @[BitUtils.scala 236:29]
  wire  selectValid_3 = canAccept_0_1 & _selValid_T_13 | (canAccept_1_1 & _selValid_T_16 | canAccept_2_1 &
    _selValid_T_18); // @[BitUtils.scala 240:49]
  wire  _s0_out_3_valid_T_6 = selectIdxOH_3_2 & is_blocked_2 | selectIdxOH_3_3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_85 = selectIdxOH_3_1 ? io_enqLsq_resp_1_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_86 = selectIdxOH_3_2 ? io_enqLsq_resp_2_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_87 = selectIdxOH_3_3 ? io_enqLsq_resp_3_sqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_89 = _s0_out_3_bits_T_85 | _s0_out_3_bits_T_86; // @[Mux.scala 27:73]
  wire [3:0] s0_out_3_bits_sqIdx_value = _s0_out_3_bits_T_89 | _s0_out_3_bits_T_87; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_sqIdx_flag = selectIdxOH_3_1 & io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_3_2 &
    io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_3_3 & io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_99 = selectIdxOH_3_1 ? io_enqLsq_resp_1_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_100 = selectIdxOH_3_2 ? io_enqLsq_resp_2_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_101 = selectIdxOH_3_3 ? io_enqLsq_resp_3_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_103 = _s0_out_3_bits_T_99 | _s0_out_3_bits_T_100; // @[Mux.scala 27:73]
  wire [3:0] s0_out_3_bits_lqIdx_value = _s0_out_3_bits_T_103 | _s0_out_3_bits_T_101; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_lqIdx_flag = selectIdxOH_3_1 & io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_3_2 &
    io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_3_3 & io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_113 = selectIdxOH_3_1 ? io_in_1_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_114 = selectIdxOH_3_2 ? io_in_2_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_115 = selectIdxOH_3_3 ? io_in_3_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_117 = _s0_out_3_bits_T_113 | _s0_out_3_bits_T_114; // @[Mux.scala 27:73]
  wire [4:0] s0_out_3_bits_robIdx_value = _s0_out_3_bits_T_117 | _s0_out_3_bits_T_115; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_robIdx_flag = selectIdxOH_3_1 & io_in_1_bits_robIdx_flag | selectIdxOH_3_2 &
    io_in_2_bits_robIdx_flag | selectIdxOH_3_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_127 = selectIdxOH_3_1 ? io_in_1_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_128 = selectIdxOH_3_2 ? io_in_2_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_129 = selectIdxOH_3_3 ? io_in_3_bits_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_131 = _s0_out_3_bits_T_127 | _s0_out_3_bits_T_128; // @[Mux.scala 27:73]
  wire [5:0] s0_out_3_bits_pdest = _s0_out_3_bits_T_131 | _s0_out_3_bits_T_129; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_134 = selectIdxOH_3_1 ? io_in_1_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_135 = selectIdxOH_3_2 ? io_in_2_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_136 = selectIdxOH_3_3 ? io_in_3_bits_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_138 = _s0_out_3_bits_T_134 | _s0_out_3_bits_T_135; // @[Mux.scala 27:73]
  wire [5:0] s0_out_3_bits_psrc_0 = _s0_out_3_bits_T_138 | _s0_out_3_bits_T_136; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_141 = selectIdxOH_3_1 ? io_in_1_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_142 = selectIdxOH_3_2 ? io_in_2_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_143 = selectIdxOH_3_3 ? io_in_3_bits_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _s0_out_3_bits_T_145 = _s0_out_3_bits_T_141 | _s0_out_3_bits_T_142; // @[Mux.scala 27:73]
  wire [5:0] s0_out_3_bits_psrc_1 = _s0_out_3_bits_T_145 | _s0_out_3_bits_T_143; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_3_bits_T_302 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_3_bits_T_303 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_3_bits_T_304 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _s0_out_3_bits_T_306 = _s0_out_3_bits_T_302 | _s0_out_3_bits_T_303; // @[Mux.scala 27:73]
  wire [19:0] s0_out_3_bits_ctrl_imm = _s0_out_3_bits_T_306 | _s0_out_3_bits_T_304; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_ctrl_fpWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpWen | selectIdxOH_3_2 & io_in_2_bits_ctrl_fpWen
     | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_ctrl_rfWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_rfWen | selectIdxOH_3_2 & io_in_2_bits_ctrl_rfWen
     | selectIdxOH_3_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_3_bits_T_358 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_3_bits_T_359 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_3_bits_T_360 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _s0_out_3_bits_T_362 = _s0_out_3_bits_T_358 | _s0_out_3_bits_T_359; // @[Mux.scala 27:73]
  wire [6:0] s0_out_3_bits_ctrl_fuOpType = _s0_out_3_bits_T_362 | _s0_out_3_bits_T_360; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_365 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_366 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_367 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_out_3_bits_T_369 = _s0_out_3_bits_T_365 | _s0_out_3_bits_T_366; // @[Mux.scala 27:73]
  wire [3:0] s0_out_3_bits_ctrl_fuType = _s0_out_3_bits_T_369 | _s0_out_3_bits_T_367; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_400 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_401 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_402 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_404 = _s0_out_3_bits_T_400 | _s0_out_3_bits_T_401; // @[Mux.scala 27:73]
  wire [1:0] s0_out_3_bits_ctrl_srcType_0 = _s0_out_3_bits_T_404 | _s0_out_3_bits_T_402; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_407 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_408 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_409 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_411 = _s0_out_3_bits_T_407 | _s0_out_3_bits_T_408; // @[Mux.scala 27:73]
  wire [1:0] s0_out_3_bits_ctrl_srcType_1 = _s0_out_3_bits_T_411 | _s0_out_3_bits_T_409; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_428 = selectIdxOH_3_1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_429 = selectIdxOH_3_2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_430 = selectIdxOH_3_3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_432 = _s0_out_3_bits_T_428 | _s0_out_3_bits_T_429; // @[Mux.scala 27:73]
  wire [2:0] s0_out_3_bits_cf_ftqOffset = _s0_out_3_bits_T_432 | _s0_out_3_bits_T_430; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_435 = selectIdxOH_3_1 ? io_in_1_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_436 = selectIdxOH_3_2 ? io_in_2_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_437 = selectIdxOH_3_3 ? io_in_3_bits_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s0_out_3_bits_T_439 = _s0_out_3_bits_T_435 | _s0_out_3_bits_T_436; // @[Mux.scala 27:73]
  wire [2:0] s0_out_3_bits_cf_ftqPtr_value = _s0_out_3_bits_T_439 | _s0_out_3_bits_T_437; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_ftqPtr_flag = selectIdxOH_3_1 & io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_3_2 &
    io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_3_3 & io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_449 = selectIdxOH_3_1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_450 = selectIdxOH_3_2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_451 = selectIdxOH_3_3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _s0_out_3_bits_T_453 = _s0_out_3_bits_T_449 | _s0_out_3_bits_T_450; // @[Mux.scala 27:73]
  wire [4:0] s0_out_3_bits_cf_ssid = _s0_out_3_bits_T_453 | _s0_out_3_bits_T_451; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_loadWaitStrict = selectIdxOH_3_1 & io_in_1_bits_cf_loadWaitStrict | selectIdxOH_3_2 &
    io_in_2_bits_cf_loadWaitStrict | selectIdxOH_3_3 & io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_storeSetHit = selectIdxOH_3_1 & io_in_1_bits_cf_storeSetHit | selectIdxOH_3_2 &
    io_in_2_bits_cf_storeSetHit | selectIdxOH_3_3 & io_in_3_bits_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_pred_taken = selectIdxOH_3_1 & io_in_1_bits_cf_pred_taken | selectIdxOH_3_2 &
    io_in_2_bits_cf_pred_taken | selectIdxOH_3_3 & io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_pd_isRet = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isRet | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isRet | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_pd_isCall = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isCall | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isCall | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_519 = selectIdxOH_3_1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_520 = selectIdxOH_3_2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_521 = selectIdxOH_3_3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s0_out_3_bits_T_523 = _s0_out_3_bits_T_519 | _s0_out_3_bits_T_520; // @[Mux.scala 27:73]
  wire [1:0] s0_out_3_bits_cf_pd_brType = _s0_out_3_bits_T_523 | _s0_out_3_bits_T_521; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_pd_isRVC = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isRVC | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isRVC | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_trigger_backendEn_0 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_3_2
     & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  s0_out_3_bits_cf_trigger_backendEn_1 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_3_2
     & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  _GEN_20 = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : selectValid & ~_s0_out_0_valid_T_6; // @[Dispatch2Rs.scala 226:25 247:82 249:30]
  wire  _GEN_21 = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : selectValid_1 & ~_s0_out_1_valid_T_6; // @[Dispatch2Rs.scala 226:25 247:82 249:30]
  wire  _GEN_24 = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : selectValid_2 & ~_s0_out_2_valid_T_6; // @[Dispatch2Rs.scala 226:25 247:82 249:30]
  wire  s0_out_4_valid = io_redirect_valid ? 1'h0 : _GEN_24; // @[Dispatch2Rs.scala 254:28 255:28]
  wire  _GEN_22 = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : s0_out_4_valid; // @[Dispatch2Rs.scala 231:19 247:82 249:30]
  wire  _GEN_25 = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : selectValid_3 & ~_s0_out_3_valid_T_6; // @[Dispatch2Rs.scala 226:25 247:82 249:30]
  wire  s0_out_5_valid = io_redirect_valid ? 1'h0 : _GEN_25; // @[Dispatch2Rs.scala 254:28 255:28]
  wire  _GEN_23 = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : s0_out_5_valid; // @[Dispatch2Rs.scala 231:19 247:82 249:30]
  wire  s0_out_0_valid = io_redirect_valid ? 1'h0 : _GEN_20; // @[Dispatch2Rs.scala 254:28 255:28]
  wire  s0_out_1_valid = io_redirect_valid ? 1'h0 : _GEN_21; // @[Dispatch2Rs.scala 254:28 255:28]
  wire  s0_out_2_valid = io_redirect_valid ? 1'h0 : _GEN_22; // @[Dispatch2Rs.scala 254:28 255:28]
  wire  s0_out_3_valid = io_redirect_valid ? 1'h0 : _GEN_23; // @[Dispatch2Rs.scala 254:28 255:28]
  wire  s1_out_leftFire = s0_out_0_valid & s1_out_0_ready; // @[PipelineConnect.scala 109:31]
  wire  _GEN_32 = io_out_0_ready ? 1'h0 : s1_out_valid; // @[PipelineConnect.scala 108:24 110:{25,33}]
  wire  _GEN_33 = s1_out_leftFire | _GEN_32; // @[PipelineConnect.scala 111:{21,29}]
  reg  s1_out_data_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_flush_0_flushItself_T_1 = {s1_out_data_robIdx_flag,s1_out_data_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s1_flush_0_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s1_flush_0_flushItself_T_3 = _s1_flush_0_flushItself_T_1 == _s1_flush_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_0_flushItself = io_redirect_bits_level & _s1_flush_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_0_differentFlag = s1_out_data_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_0_compare = s1_out_data_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_0_T = s1_flush_0_differentFlag ^ s1_flush_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_0_T_2 = io_redirect_valid & (s1_flush_0_flushItself | _s1_flush_0_T); // @[Rob.scala 143:20]
  wire  s1_flush_0 = s1_out_valid & _s1_flush_0_T_2; // @[Dispatch2Rs.scala 267:36]
  reg  s1_out_data_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_cf_pd_brType; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_pred_taken; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_out_data_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] s1_out_data_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_out_data_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_out_data_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] s1_out_data_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_psrc_1; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_pdest; // @[Reg.scala 16:16]
  reg  s1_out_data_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_out_data_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_sqIdx_value; // @[Reg.scala 16:16]
  wire  s1_out_leftFire_1 = s0_out_1_valid & s1_out_1_ready; // @[PipelineConnect.scala 109:31]
  wire  _GEN_143 = io_out_1_ready ? 1'h0 : s1_out_valid_1; // @[PipelineConnect.scala 108:24 110:{25,33}]
  wire  _GEN_144 = s1_out_leftFire_1 | _GEN_143; // @[PipelineConnect.scala 111:{21,29}]
  reg  s1_out_data_1_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_1_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_flush_1_flushItself_T_1 = {s1_out_data_1_robIdx_flag,s1_out_data_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_flush_1_flushItself_T_3 = _s1_flush_1_flushItself_T_1 == _s1_flush_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_1_flushItself = io_redirect_bits_level & _s1_flush_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_1_differentFlag = s1_out_data_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_1_compare = s1_out_data_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_1_T = s1_flush_1_differentFlag ^ s1_flush_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_1_T_2 = io_redirect_valid & (s1_flush_1_flushItself | _s1_flush_1_T); // @[Rob.scala 143:20]
  wire  s1_flush_1 = s1_out_valid_1 & _s1_flush_1_T_2; // @[Dispatch2Rs.scala 267:36]
  reg  s1_out_data_1_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_1_cf_pd_brType; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_pred_taken; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_1_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_out_data_1_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_1_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_1_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_1_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_1_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] s1_out_data_1_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_out_data_1_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_out_data_1_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] s1_out_data_1_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_1_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_1_psrc_1; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_1_pdest; // @[Reg.scala 16:16]
  reg  s1_out_data_1_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_1_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_out_data_1_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_1_sqIdx_value; // @[Reg.scala 16:16]
  wire  s1_out_leftFire_2 = s0_out_2_valid & s1_out_2_ready; // @[PipelineConnect.scala 109:31]
  wire  _GEN_254 = io_out_2_ready ? 1'h0 : s1_out_valid_2; // @[PipelineConnect.scala 108:24 110:{25,33}]
  wire  _GEN_255 = s1_out_leftFire_2 | _GEN_254; // @[PipelineConnect.scala 111:{21,29}]
  reg  s1_out_data_2_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_2_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_flush_2_flushItself_T_1 = {s1_out_data_2_robIdx_flag,s1_out_data_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_flush_2_flushItself_T_3 = _s1_flush_2_flushItself_T_1 == _s1_flush_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_2_flushItself = io_redirect_bits_level & _s1_flush_2_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_2_differentFlag = s1_out_data_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_2_compare = s1_out_data_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_2_T = s1_flush_2_differentFlag ^ s1_flush_2_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_2_T_2 = io_redirect_valid & (s1_flush_2_flushItself | _s1_flush_2_T); // @[Rob.scala 143:20]
  wire  s1_flush_2 = s1_out_valid_2 & _s1_flush_2_T_2; // @[Dispatch2Rs.scala 267:36]
  reg  s1_out_data_2_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_2_cf_pd_brType; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_pred_taken; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_2_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_out_data_2_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_2_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_2_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_2_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_2_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] s1_out_data_2_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_out_data_2_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_out_data_2_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] s1_out_data_2_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_2_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_2_pdest; // @[Reg.scala 16:16]
  reg  s1_out_data_2_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_2_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_out_data_2_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_2_sqIdx_value; // @[Reg.scala 16:16]
  wire  s1_out_leftFire_3 = s0_out_3_valid & s1_out_3_ready; // @[PipelineConnect.scala 109:31]
  wire  _GEN_365 = io_out_3_ready ? 1'h0 : s1_out_valid_3; // @[PipelineConnect.scala 108:24 110:{25,33}]
  wire  _GEN_366 = s1_out_leftFire_3 | _GEN_365; // @[PipelineConnect.scala 111:{21,29}]
  reg  s1_out_data_3_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_3_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_flush_3_flushItself_T_1 = {s1_out_data_3_robIdx_flag,s1_out_data_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_flush_3_flushItself_T_3 = _s1_flush_3_flushItself_T_1 == _s1_flush_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_3_flushItself = io_redirect_bits_level & _s1_flush_3_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_3_differentFlag = s1_out_data_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_3_compare = s1_out_data_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_3_T = s1_flush_3_differentFlag ^ s1_flush_3_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_3_T_2 = io_redirect_valid & (s1_flush_3_flushItself | _s1_flush_3_T); // @[Rob.scala 143:20]
  wire  s1_flush_3 = s1_out_valid_3 & _s1_flush_3_T_2; // @[Dispatch2Rs.scala 267:36]
  reg  s1_out_data_3_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_3_cf_pd_brType; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_pred_taken; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_3_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_out_data_3_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_3_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_3_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_3_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_3_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] s1_out_data_3_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_out_data_3_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_out_data_3_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] s1_out_data_3_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_3_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_3_pdest; // @[Reg.scala 16:16]
  reg  s1_out_data_3_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_3_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_out_data_3_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_3_sqIdx_value; // @[Reg.scala 16:16]
  wire  s1_out_leftFire_4 = s0_out_4_valid & s1_out_4_ready; // @[PipelineConnect.scala 109:31]
  wire  _GEN_476 = io_out_4_ready ? 1'h0 : s1_out_valid_4; // @[PipelineConnect.scala 108:24 110:{25,33}]
  wire  _GEN_477 = s1_out_leftFire_4 | _GEN_476; // @[PipelineConnect.scala 111:{21,29}]
  reg  s1_out_data_4_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_4_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_flush_4_flushItself_T_1 = {s1_out_data_4_robIdx_flag,s1_out_data_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_flush_4_flushItself_T_3 = _s1_flush_4_flushItself_T_1 == _s1_flush_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_4_flushItself = io_redirect_bits_level & _s1_flush_4_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_4_differentFlag = s1_out_data_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_4_compare = s1_out_data_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_4_T = s1_flush_4_differentFlag ^ s1_flush_4_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_4_T_2 = io_redirect_valid & (s1_flush_4_flushItself | _s1_flush_4_T); // @[Rob.scala 143:20]
  wire  s1_flush_4 = s1_out_valid_4 & _s1_flush_4_T_2; // @[Dispatch2Rs.scala 267:36]
  reg  s1_out_data_4_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_4_cf_pd_brType; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_pred_taken; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_4_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_out_data_4_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_4_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_4_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_4_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_4_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] s1_out_data_4_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_out_data_4_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_out_data_4_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] s1_out_data_4_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_4_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_4_pdest; // @[Reg.scala 16:16]
  reg  s1_out_data_4_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_4_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_out_data_4_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_4_sqIdx_value; // @[Reg.scala 16:16]
  wire  s1_out_leftFire_5 = s0_out_5_valid & s1_out_5_ready; // @[PipelineConnect.scala 109:31]
  wire  _GEN_587 = io_out_5_ready ? 1'h0 : s1_out_valid_5; // @[PipelineConnect.scala 108:24 110:{25,33}]
  wire  _GEN_588 = s1_out_leftFire_5 | _GEN_587; // @[PipelineConnect.scala 111:{21,29}]
  reg  s1_out_data_5_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_5_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_flush_5_flushItself_T_1 = {s1_out_data_5_robIdx_flag,s1_out_data_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_flush_5_flushItself_T_3 = _s1_flush_5_flushItself_T_1 == _s1_flush_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_5_flushItself = io_redirect_bits_level & _s1_flush_5_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_5_differentFlag = s1_out_data_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_5_compare = s1_out_data_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_5_T = s1_flush_5_differentFlag ^ s1_flush_5_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_5_T_2 = io_redirect_valid & (s1_flush_5_flushItself | _s1_flush_5_T); // @[Rob.scala 143:20]
  wire  s1_flush_5 = s1_out_valid_5 & _s1_flush_5_T_2; // @[Dispatch2Rs.scala 267:36]
  reg  s1_out_data_5_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_5_cf_pd_brType; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_pred_taken; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s1_out_data_5_cf_ssid; // @[Reg.scala 16:16]
  reg  s1_out_data_5_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_5_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_out_data_5_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] s1_out_data_5_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_5_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] s1_out_data_5_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_out_data_5_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s1_out_data_5_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] s1_out_data_5_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_5_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] s1_out_data_5_pdest; // @[Reg.scala 16:16]
  reg  s1_out_data_5_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_5_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_out_data_5_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_out_data_5_sqIdx_value; // @[Reg.scala 16:16]
  assign io_in_0_ready = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_8; // @[Dispatch2Rs.scala 247:82 248:26]
  assign io_in_1_ready = ~(&_T_62) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_13; // @[Dispatch2Rs.scala 247:82 248:26]
  assign io_in_2_ready = in_2_ready & _in_2_valid_T; // @[Dispatch2Rs.scala 206:37]
  assign io_in_3_ready = in_3_ready & _in_3_valid_T; // @[Dispatch2Rs.scala 206:37]
  assign io_readIntState_0_req = io_out_0_bits_psrc_0; // @[Dispatch2Rs.scala 271:72]
  assign io_readIntState_1_req = io_out_1_bits_psrc_0; // @[Dispatch2Rs.scala 271:72]
  assign io_readIntState_2_req = io_out_2_bits_psrc_0; // @[Dispatch2Rs.scala 271:72]
  assign io_readIntState_3_req = io_out_3_bits_psrc_0; // @[Dispatch2Rs.scala 271:72]
  assign io_readIntState_4_req = io_out_4_bits_psrc_0; // @[Dispatch2Rs.scala 271:72]
  assign io_readIntState_5_req = io_out_5_bits_psrc_0; // @[Dispatch2Rs.scala 271:72]
  assign io_readFpState_0_req = io_out_4_bits_psrc_0; // @[Dispatch2Rs.scala 278:71]
  assign io_readFpState_1_req = io_out_5_bits_psrc_0; // @[Dispatch2Rs.scala 278:71]
  assign io_out_0_valid = s1_out_valid; // @[PipelineConnect.scala 117:17 182:21]
  assign io_out_0_bits_cf_trigger_backendEn_0 = s1_out_data_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_trigger_backendEn_1 = s1_out_data_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_pd_isRVC = s1_out_data_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_pd_brType = s1_out_data_cf_pd_brType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_pd_isCall = s1_out_data_cf_pd_isCall; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_pd_isRet = s1_out_data_cf_pd_isRet; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_pred_taken = s1_out_data_cf_pred_taken; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_storeSetHit = s1_out_data_cf_storeSetHit; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_loadWaitStrict = s1_out_data_cf_loadWaitStrict; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_ssid = s1_out_data_cf_ssid; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_ftqPtr_flag = s1_out_data_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_ftqPtr_value = s1_out_data_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_cf_ftqOffset = s1_out_data_cf_ftqOffset; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_ctrl_srcType_0 = s1_out_data_ctrl_srcType_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_ctrl_fuType = s1_out_data_ctrl_fuType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_ctrl_fuOpType = s1_out_data_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_ctrl_rfWen = s1_out_data_ctrl_rfWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_ctrl_fpWen = s1_out_data_ctrl_fpWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_ctrl_imm = s1_out_data_ctrl_imm; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_srcState_0 = io_readIntState_0_resp; // @[Dispatch2Rs.scala 273:74]
  assign io_out_0_bits_psrc_0 = s1_out_data_psrc_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_psrc_1 = s1_out_data_psrc_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_pdest = s1_out_data_pdest; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_robIdx_flag = s1_out_data_robIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_robIdx_value = s1_out_data_robIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_lqIdx_flag = s1_out_data_lqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_lqIdx_value = s1_out_data_lqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_sqIdx_flag = s1_out_data_sqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_0_bits_sqIdx_value = s1_out_data_sqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_valid = s1_out_valid_1; // @[PipelineConnect.scala 117:17 182:21]
  assign io_out_1_bits_cf_trigger_backendEn_0 = s1_out_data_1_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_trigger_backendEn_1 = s1_out_data_1_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_pd_isRVC = s1_out_data_1_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_pd_brType = s1_out_data_1_cf_pd_brType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_pd_isCall = s1_out_data_1_cf_pd_isCall; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_pd_isRet = s1_out_data_1_cf_pd_isRet; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_pred_taken = s1_out_data_1_cf_pred_taken; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_storeSetHit = s1_out_data_1_cf_storeSetHit; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_loadWaitStrict = s1_out_data_1_cf_loadWaitStrict; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_ssid = s1_out_data_1_cf_ssid; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_ftqPtr_flag = s1_out_data_1_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_ftqPtr_value = s1_out_data_1_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_cf_ftqOffset = s1_out_data_1_cf_ftqOffset; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_ctrl_srcType_0 = s1_out_data_1_ctrl_srcType_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_ctrl_fuType = s1_out_data_1_ctrl_fuType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_ctrl_fuOpType = s1_out_data_1_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_ctrl_rfWen = s1_out_data_1_ctrl_rfWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_ctrl_fpWen = s1_out_data_1_ctrl_fpWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_ctrl_imm = s1_out_data_1_ctrl_imm; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_srcState_0 = io_readIntState_1_resp; // @[Dispatch2Rs.scala 273:74]
  assign io_out_1_bits_psrc_0 = s1_out_data_1_psrc_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_psrc_1 = s1_out_data_1_psrc_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_pdest = s1_out_data_1_pdest; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_robIdx_flag = s1_out_data_1_robIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_robIdx_value = s1_out_data_1_robIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_lqIdx_flag = s1_out_data_1_lqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_lqIdx_value = s1_out_data_1_lqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_sqIdx_flag = s1_out_data_1_sqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_1_bits_sqIdx_value = s1_out_data_1_sqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_valid = s1_out_valid_2; // @[PipelineConnect.scala 117:17 182:21]
  assign io_out_2_bits_cf_trigger_backendEn_0 = s1_out_data_2_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_trigger_backendEn_1 = s1_out_data_2_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_pd_isRVC = s1_out_data_2_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_pd_brType = s1_out_data_2_cf_pd_brType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_pd_isCall = s1_out_data_2_cf_pd_isCall; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_pd_isRet = s1_out_data_2_cf_pd_isRet; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_pred_taken = s1_out_data_2_cf_pred_taken; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_storeSetHit = s1_out_data_2_cf_storeSetHit; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_loadWaitStrict = s1_out_data_2_cf_loadWaitStrict; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_ssid = s1_out_data_2_cf_ssid; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_ftqPtr_flag = s1_out_data_2_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_ftqPtr_value = s1_out_data_2_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_cf_ftqOffset = s1_out_data_2_cf_ftqOffset; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_ctrl_srcType_0 = s1_out_data_2_ctrl_srcType_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_ctrl_fuType = s1_out_data_2_ctrl_fuType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_ctrl_fuOpType = s1_out_data_2_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_ctrl_rfWen = s1_out_data_2_ctrl_rfWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_ctrl_fpWen = s1_out_data_2_ctrl_fpWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_ctrl_imm = s1_out_data_2_ctrl_imm; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_srcState_0 = io_readIntState_2_resp; // @[Dispatch2Rs.scala 273:74]
  assign io_out_2_bits_psrc_0 = s1_out_data_2_psrc_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_pdest = s1_out_data_2_pdest; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_robIdx_flag = s1_out_data_2_robIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_robIdx_value = s1_out_data_2_robIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_lqIdx_flag = s1_out_data_2_lqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_lqIdx_value = s1_out_data_2_lqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_sqIdx_flag = s1_out_data_2_sqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_2_bits_sqIdx_value = s1_out_data_2_sqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_valid = s1_out_valid_3; // @[PipelineConnect.scala 117:17 182:21]
  assign io_out_3_bits_cf_trigger_backendEn_0 = s1_out_data_3_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_trigger_backendEn_1 = s1_out_data_3_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_pd_isRVC = s1_out_data_3_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_pd_brType = s1_out_data_3_cf_pd_brType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_pd_isCall = s1_out_data_3_cf_pd_isCall; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_pd_isRet = s1_out_data_3_cf_pd_isRet; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_pred_taken = s1_out_data_3_cf_pred_taken; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_storeSetHit = s1_out_data_3_cf_storeSetHit; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_loadWaitStrict = s1_out_data_3_cf_loadWaitStrict; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_ssid = s1_out_data_3_cf_ssid; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_ftqPtr_flag = s1_out_data_3_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_ftqPtr_value = s1_out_data_3_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_cf_ftqOffset = s1_out_data_3_cf_ftqOffset; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_ctrl_srcType_0 = s1_out_data_3_ctrl_srcType_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_ctrl_fuType = s1_out_data_3_ctrl_fuType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_ctrl_fuOpType = s1_out_data_3_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_ctrl_rfWen = s1_out_data_3_ctrl_rfWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_ctrl_fpWen = s1_out_data_3_ctrl_fpWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_ctrl_imm = s1_out_data_3_ctrl_imm; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_srcState_0 = io_readIntState_3_resp; // @[Dispatch2Rs.scala 273:74]
  assign io_out_3_bits_psrc_0 = s1_out_data_3_psrc_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_pdest = s1_out_data_3_pdest; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_robIdx_flag = s1_out_data_3_robIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_robIdx_value = s1_out_data_3_robIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_lqIdx_flag = s1_out_data_3_lqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_lqIdx_value = s1_out_data_3_lqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_sqIdx_flag = s1_out_data_3_sqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_3_bits_sqIdx_value = s1_out_data_3_sqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_valid = s1_out_valid_4; // @[PipelineConnect.scala 117:17 182:21]
  assign io_out_4_bits_cf_trigger_backendEn_0 = s1_out_data_4_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_trigger_backendEn_1 = s1_out_data_4_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_pd_isRVC = s1_out_data_4_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_pd_brType = s1_out_data_4_cf_pd_brType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_pd_isCall = s1_out_data_4_cf_pd_isCall; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_pd_isRet = s1_out_data_4_cf_pd_isRet; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_pred_taken = s1_out_data_4_cf_pred_taken; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_storeSetHit = s1_out_data_4_cf_storeSetHit; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_loadWaitStrict = s1_out_data_4_cf_loadWaitStrict; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_ssid = s1_out_data_4_cf_ssid; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_ftqPtr_flag = s1_out_data_4_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_ftqPtr_value = s1_out_data_4_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_cf_ftqOffset = s1_out_data_4_cf_ftqOffset; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_ctrl_srcType_0 = s1_out_data_4_ctrl_srcType_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_ctrl_fuType = s1_out_data_4_ctrl_fuType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_ctrl_fuOpType = s1_out_data_4_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_ctrl_rfWen = s1_out_data_4_ctrl_rfWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_ctrl_fpWen = s1_out_data_4_ctrl_fpWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_ctrl_imm = s1_out_data_4_ctrl_imm; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_srcState_0 = io_out_4_bits_ctrl_srcType_0[1] ? io_readFpState_0_resp : io_readIntState_4_resp; // @[Dispatch2Rs.scala 284:70 285:17 273:74]
  assign io_out_4_bits_psrc_0 = s1_out_data_4_psrc_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_pdest = s1_out_data_4_pdest; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_robIdx_flag = s1_out_data_4_robIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_robIdx_value = s1_out_data_4_robIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_lqIdx_flag = s1_out_data_4_lqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_lqIdx_value = s1_out_data_4_lqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_sqIdx_flag = s1_out_data_4_sqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_4_bits_sqIdx_value = s1_out_data_4_sqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_valid = s1_out_valid_5; // @[PipelineConnect.scala 117:17 182:21]
  assign io_out_5_bits_cf_trigger_backendEn_0 = s1_out_data_5_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_trigger_backendEn_1 = s1_out_data_5_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_pd_isRVC = s1_out_data_5_cf_pd_isRVC; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_pd_brType = s1_out_data_5_cf_pd_brType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_pd_isCall = s1_out_data_5_cf_pd_isCall; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_pd_isRet = s1_out_data_5_cf_pd_isRet; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_pred_taken = s1_out_data_5_cf_pred_taken; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_storeSetHit = s1_out_data_5_cf_storeSetHit; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_loadWaitStrict = s1_out_data_5_cf_loadWaitStrict; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_ssid = s1_out_data_5_cf_ssid; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_ftqPtr_flag = s1_out_data_5_cf_ftqPtr_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_ftqPtr_value = s1_out_data_5_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_cf_ftqOffset = s1_out_data_5_cf_ftqOffset; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_ctrl_srcType_0 = s1_out_data_5_ctrl_srcType_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_ctrl_fuType = s1_out_data_5_ctrl_fuType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_ctrl_fuOpType = s1_out_data_5_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_ctrl_rfWen = s1_out_data_5_ctrl_rfWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_ctrl_fpWen = s1_out_data_5_ctrl_fpWen; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_ctrl_imm = s1_out_data_5_ctrl_imm; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_srcState_0 = io_out_5_bits_ctrl_srcType_0[1] ? io_readFpState_1_resp : io_readIntState_5_resp; // @[Dispatch2Rs.scala 284:70 285:17 273:74]
  assign io_out_5_bits_psrc_0 = s1_out_data_5_psrc_0; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_pdest = s1_out_data_5_pdest; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_robIdx_flag = s1_out_data_5_robIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_robIdx_value = s1_out_data_5_robIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_lqIdx_flag = s1_out_data_5_lqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_lqIdx_value = s1_out_data_5_lqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_sqIdx_flag = s1_out_data_5_sqIdx_flag; // @[PipelineConnect.scala 116:16 182:21]
  assign io_out_5_bits_sqIdx_value = s1_out_data_5_sqIdx_value; // @[PipelineConnect.scala 116:16 182:21]
  assign io_enqLsq_needAlloc_0 = io_in_0_valid & isLs_0 ? _io_enqLsq_needAlloc_0_T_3 : 2'h0; // @[Dispatch2Rs.scala 209:35]
  assign io_enqLsq_needAlloc_1 = io_in_1_valid & isLs_1 ? _io_enqLsq_needAlloc_1_T_3 : 2'h0; // @[Dispatch2Rs.scala 209:35]
  assign io_enqLsq_needAlloc_2 = io_in_2_valid & isLs_2 ? _io_enqLsq_needAlloc_2_T_3 : 2'h0; // @[Dispatch2Rs.scala 209:35]
  assign io_enqLsq_needAlloc_3 = io_in_3_valid & isLs_3 ? _io_enqLsq_needAlloc_3_T_3 : 2'h0; // @[Dispatch2Rs.scala 209:35]
  assign io_enqLsq_req_0_valid = io_in_0_valid & _T_63; // @[Dispatch2Rs.scala 214:44]
  assign io_enqLsq_req_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_0_bits_cf_storeSetHit = io_in_0_bits_cf_storeSetHit; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_0_bits_cf_ssid = io_in_0_bits_cf_ssid; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_1_valid = io_in_1_valid & _T_63; // @[Dispatch2Rs.scala 214:44]
  assign io_enqLsq_req_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_1_bits_cf_storeSetHit = io_in_1_bits_cf_storeSetHit; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_1_bits_cf_ssid = io_in_1_bits_cf_ssid; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_2_valid = in_2_valid & _T_63; // @[Dispatch2Rs.scala 214:44]
  assign io_enqLsq_req_2_bits_cf_trigger_backendEn_0 = io_in_2_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_2_bits_cf_storeSetHit = io_in_2_bits_cf_storeSetHit; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_2_bits_cf_ssid = io_in_2_bits_cf_ssid; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_2_bits_ctrl_fuOpType = io_in_2_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_2_bits_robIdx_flag = io_in_2_bits_robIdx_flag; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_2_bits_robIdx_value = io_in_2_bits_robIdx_value; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_3_valid = in_3_valid & _T_63; // @[Dispatch2Rs.scala 214:44]
  assign io_enqLsq_req_3_bits_cf_trigger_backendEn_0 = io_in_3_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_3_bits_cf_storeSetHit = io_in_3_bits_cf_storeSetHit; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_3_bits_cf_ssid = io_in_3_bits_cf_ssid; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_3_bits_ctrl_fuOpType = io_in_3_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_3_bits_robIdx_flag = io_in_3_bits_robIdx_flag; // @[Dispatch2Rs.scala 210:28]
  assign io_enqLsq_req_3_bits_robIdx_value = io_in_3_bits_robIdx_value; // @[Dispatch2Rs.scala 210:28]
  always @(posedge clock) begin
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_robIdx_flag <= s0_out_0_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_robIdx_value <= s0_out_0_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_trigger_backendEn_0 <= s0_out_0_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_trigger_backendEn_1 <= s0_out_0_bits_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_pd_isRVC <= s0_out_0_bits_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_pd_brType <= s0_out_0_bits_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_pd_isCall <= s0_out_0_bits_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_pd_isRet <= s0_out_0_bits_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_pred_taken <= s0_out_0_bits_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_storeSetHit <= s0_out_0_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_loadWaitStrict <= s0_out_0_bits_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_ssid <= s0_out_0_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_ftqPtr_flag <= s0_out_0_bits_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_ftqPtr_value <= s0_out_0_bits_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_cf_ftqOffset <= s0_out_0_bits_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_ctrl_srcType_0 <= s0_out_0_bits_ctrl_srcType_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_ctrl_fuType <= s0_out_0_bits_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_ctrl_fuOpType <= s0_out_0_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_ctrl_rfWen <= s0_out_0_bits_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_ctrl_fpWen <= s0_out_0_bits_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_ctrl_imm <= s0_out_0_bits_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_psrc_0 <= s0_out_0_bits_psrc_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_psrc_1 <= s0_out_0_bits_psrc_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_pdest <= s0_out_0_bits_pdest; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_lqIdx_flag <= s0_out_0_bits_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_lqIdx_value <= s0_out_0_bits_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_sqIdx_flag <= s0_out_0_bits_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire) begin // @[Reg.scala 17:18]
      s1_out_data_sqIdx_value <= s0_out_0_bits_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_robIdx_flag <= s0_out_1_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_robIdx_value <= s0_out_1_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_trigger_backendEn_0 <= s0_out_1_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_trigger_backendEn_1 <= s0_out_1_bits_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_pd_isRVC <= s0_out_1_bits_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_pd_brType <= s0_out_1_bits_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_pd_isCall <= s0_out_1_bits_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_pd_isRet <= s0_out_1_bits_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_pred_taken <= s0_out_1_bits_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_storeSetHit <= s0_out_1_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_loadWaitStrict <= s0_out_1_bits_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_ssid <= s0_out_1_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_ftqPtr_flag <= s0_out_1_bits_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_ftqPtr_value <= s0_out_1_bits_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_cf_ftqOffset <= s0_out_1_bits_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_ctrl_srcType_0 <= s0_out_1_bits_ctrl_srcType_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_ctrl_fuType <= s0_out_1_bits_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_ctrl_fuOpType <= s0_out_1_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_ctrl_rfWen <= s0_out_1_bits_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_ctrl_fpWen <= s0_out_1_bits_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_ctrl_imm <= s0_out_1_bits_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_psrc_0 <= s0_out_1_bits_psrc_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_psrc_1 <= s0_out_1_bits_psrc_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_pdest <= s0_out_1_bits_pdest; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_lqIdx_flag <= s0_out_1_bits_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_lqIdx_value <= s0_out_1_bits_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_sqIdx_flag <= s0_out_1_bits_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_1) begin // @[Reg.scala 17:18]
      s1_out_data_1_sqIdx_value <= s0_out_1_bits_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_robIdx_flag <= s0_out_2_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_robIdx_value <= s0_out_2_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_trigger_backendEn_0 <= s0_out_2_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_trigger_backendEn_1 <= s0_out_2_bits_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_pd_isRVC <= s0_out_2_bits_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_pd_brType <= s0_out_2_bits_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_pd_isCall <= s0_out_2_bits_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_pd_isRet <= s0_out_2_bits_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_pred_taken <= s0_out_2_bits_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_storeSetHit <= s0_out_2_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_loadWaitStrict <= s0_out_2_bits_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_ssid <= s0_out_2_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_ftqPtr_flag <= s0_out_2_bits_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_ftqPtr_value <= s0_out_2_bits_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_cf_ftqOffset <= s0_out_2_bits_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_ctrl_srcType_0 <= s0_out_2_bits_ctrl_srcType_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_ctrl_fuType <= s0_out_2_bits_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_ctrl_fuOpType <= s0_out_2_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_ctrl_rfWen <= s0_out_2_bits_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_ctrl_fpWen <= s0_out_2_bits_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_ctrl_imm <= s0_out_2_bits_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_psrc_0 <= s0_out_2_bits_psrc_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_pdest <= s0_out_2_bits_pdest; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_lqIdx_flag <= s0_out_2_bits_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_lqIdx_value <= s0_out_2_bits_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_sqIdx_flag <= s0_out_2_bits_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_2) begin // @[Reg.scala 17:18]
      s1_out_data_2_sqIdx_value <= s0_out_2_bits_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_robIdx_flag <= s0_out_3_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_robIdx_value <= s0_out_3_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_trigger_backendEn_0 <= s0_out_3_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_trigger_backendEn_1 <= s0_out_3_bits_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_pd_isRVC <= s0_out_3_bits_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_pd_brType <= s0_out_3_bits_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_pd_isCall <= s0_out_3_bits_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_pd_isRet <= s0_out_3_bits_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_pred_taken <= s0_out_3_bits_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_storeSetHit <= s0_out_3_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_loadWaitStrict <= s0_out_3_bits_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_ssid <= s0_out_3_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_ftqPtr_flag <= s0_out_3_bits_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_ftqPtr_value <= s0_out_3_bits_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_cf_ftqOffset <= s0_out_3_bits_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_ctrl_srcType_0 <= s0_out_3_bits_ctrl_srcType_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_ctrl_fuType <= s0_out_3_bits_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_ctrl_fuOpType <= s0_out_3_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_ctrl_rfWen <= s0_out_3_bits_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_ctrl_fpWen <= s0_out_3_bits_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_ctrl_imm <= s0_out_3_bits_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_psrc_0 <= s0_out_3_bits_psrc_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_pdest <= s0_out_3_bits_pdest; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_lqIdx_flag <= s0_out_3_bits_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_lqIdx_value <= s0_out_3_bits_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_sqIdx_flag <= s0_out_3_bits_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_3) begin // @[Reg.scala 17:18]
      s1_out_data_3_sqIdx_value <= s0_out_3_bits_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_robIdx_flag <= s0_out_2_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_robIdx_value <= s0_out_2_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_trigger_backendEn_0 <= s0_out_2_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_trigger_backendEn_1 <= s0_out_2_bits_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_pd_isRVC <= s0_out_2_bits_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_pd_brType <= s0_out_2_bits_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_pd_isCall <= s0_out_2_bits_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_pd_isRet <= s0_out_2_bits_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_pred_taken <= s0_out_2_bits_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_storeSetHit <= s0_out_2_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_loadWaitStrict <= s0_out_2_bits_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_ssid <= s0_out_2_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_ftqPtr_flag <= s0_out_2_bits_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_ftqPtr_value <= s0_out_2_bits_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_cf_ftqOffset <= s0_out_2_bits_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_ctrl_srcType_0 <= s0_out_2_bits_ctrl_srcType_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_ctrl_fuType <= s0_out_2_bits_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_ctrl_fuOpType <= s0_out_2_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_ctrl_rfWen <= s0_out_2_bits_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_ctrl_fpWen <= s0_out_2_bits_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_ctrl_imm <= s0_out_2_bits_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_psrc_0 <= s0_out_2_bits_psrc_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_pdest <= s0_out_2_bits_pdest; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_lqIdx_flag <= s0_out_2_bits_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_lqIdx_value <= s0_out_2_bits_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_sqIdx_flag <= s0_out_2_bits_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_4) begin // @[Reg.scala 17:18]
      s1_out_data_4_sqIdx_value <= s0_out_2_bits_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_robIdx_flag <= s0_out_3_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_robIdx_value <= s0_out_3_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_trigger_backendEn_0 <= s0_out_3_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_trigger_backendEn_1 <= s0_out_3_bits_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_pd_isRVC <= s0_out_3_bits_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_pd_brType <= s0_out_3_bits_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_pd_isCall <= s0_out_3_bits_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_pd_isRet <= s0_out_3_bits_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_pred_taken <= s0_out_3_bits_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_storeSetHit <= s0_out_3_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_loadWaitStrict <= s0_out_3_bits_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_ssid <= s0_out_3_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_ftqPtr_flag <= s0_out_3_bits_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_ftqPtr_value <= s0_out_3_bits_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_cf_ftqOffset <= s0_out_3_bits_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_ctrl_srcType_0 <= s0_out_3_bits_ctrl_srcType_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_ctrl_fuType <= s0_out_3_bits_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_ctrl_fuOpType <= s0_out_3_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_ctrl_rfWen <= s0_out_3_bits_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_ctrl_fpWen <= s0_out_3_bits_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_ctrl_imm <= s0_out_3_bits_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_psrc_0 <= s0_out_3_bits_psrc_1; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_pdest <= s0_out_3_bits_pdest; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_lqIdx_flag <= s0_out_3_bits_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_lqIdx_value <= s0_out_3_bits_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_sqIdx_flag <= s0_out_3_bits_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_out_leftFire_5) begin // @[Reg.scala 17:18]
      s1_out_data_5_sqIdx_value <= s0_out_3_bits_sqIdx_value; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 112:20]
      s1_out_valid_5 <= 1'h0; // @[PipelineConnect.scala 112:28]
    end else if (s1_flush_5) begin
      s1_out_valid_5 <= 1'h0;
    end else begin
      s1_out_valid_5 <= _GEN_588;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 112:20]
      s1_out_valid_4 <= 1'h0; // @[PipelineConnect.scala 112:28]
    end else if (s1_flush_4) begin
      s1_out_valid_4 <= 1'h0;
    end else begin
      s1_out_valid_4 <= _GEN_477;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 112:20]
      s1_out_valid_3 <= 1'h0; // @[PipelineConnect.scala 112:28]
    end else if (s1_flush_3) begin
      s1_out_valid_3 <= 1'h0;
    end else begin
      s1_out_valid_3 <= _GEN_366;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 112:20]
      s1_out_valid_2 <= 1'h0; // @[PipelineConnect.scala 112:28]
    end else if (s1_flush_2) begin
      s1_out_valid_2 <= 1'h0;
    end else begin
      s1_out_valid_2 <= _GEN_255;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 112:20]
      s1_out_valid_1 <= 1'h0; // @[PipelineConnect.scala 112:28]
    end else if (s1_flush_1) begin
      s1_out_valid_1 <= 1'h0;
    end else begin
      s1_out_valid_1 <= _GEN_144;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 112:20]
      s1_out_valid <= 1'h0; // @[PipelineConnect.scala 112:28]
    end else if (s1_flush_0) begin
      s1_out_valid <= 1'h0;
    end else begin
      s1_out_valid <= _GEN_33;
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
  s1_out_valid_5 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s1_out_valid_4 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_out_valid_3 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s1_out_valid_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_out_valid_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_out_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_out_data_robIdx_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_out_data_robIdx_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  s1_out_data_cf_trigger_backendEn_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_out_data_cf_trigger_backendEn_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s1_out_data_cf_pd_isRVC = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s1_out_data_cf_pd_brType = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  s1_out_data_cf_pd_isCall = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s1_out_data_cf_pd_isRet = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s1_out_data_cf_pred_taken = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s1_out_data_cf_storeSetHit = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s1_out_data_cf_loadWaitStrict = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s1_out_data_cf_ssid = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  s1_out_data_cf_ftqPtr_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s1_out_data_cf_ftqPtr_value = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  s1_out_data_cf_ftqOffset = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  s1_out_data_ctrl_srcType_0 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  s1_out_data_ctrl_fuType = _RAND_22[3:0];
  _RAND_23 = {1{`RANDOM}};
  s1_out_data_ctrl_fuOpType = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  s1_out_data_ctrl_rfWen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s1_out_data_ctrl_fpWen = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s1_out_data_ctrl_imm = _RAND_26[19:0];
  _RAND_27 = {1{`RANDOM}};
  s1_out_data_psrc_0 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  s1_out_data_psrc_1 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  s1_out_data_pdest = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  s1_out_data_lqIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  s1_out_data_lqIdx_value = _RAND_31[3:0];
  _RAND_32 = {1{`RANDOM}};
  s1_out_data_sqIdx_flag = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s1_out_data_sqIdx_value = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  s1_out_data_1_robIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s1_out_data_1_robIdx_value = _RAND_35[4:0];
  _RAND_36 = {1{`RANDOM}};
  s1_out_data_1_cf_trigger_backendEn_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s1_out_data_1_cf_trigger_backendEn_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  s1_out_data_1_cf_pd_isRVC = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s1_out_data_1_cf_pd_brType = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  s1_out_data_1_cf_pd_isCall = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s1_out_data_1_cf_pd_isRet = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s1_out_data_1_cf_pred_taken = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s1_out_data_1_cf_storeSetHit = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s1_out_data_1_cf_loadWaitStrict = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s1_out_data_1_cf_ssid = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  s1_out_data_1_cf_ftqPtr_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s1_out_data_1_cf_ftqPtr_value = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  s1_out_data_1_cf_ftqOffset = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  s1_out_data_1_ctrl_srcType_0 = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  s1_out_data_1_ctrl_fuType = _RAND_50[3:0];
  _RAND_51 = {1{`RANDOM}};
  s1_out_data_1_ctrl_fuOpType = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  s1_out_data_1_ctrl_rfWen = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s1_out_data_1_ctrl_fpWen = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s1_out_data_1_ctrl_imm = _RAND_54[19:0];
  _RAND_55 = {1{`RANDOM}};
  s1_out_data_1_psrc_0 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  s1_out_data_1_psrc_1 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  s1_out_data_1_pdest = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  s1_out_data_1_lqIdx_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s1_out_data_1_lqIdx_value = _RAND_59[3:0];
  _RAND_60 = {1{`RANDOM}};
  s1_out_data_1_sqIdx_flag = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s1_out_data_1_sqIdx_value = _RAND_61[3:0];
  _RAND_62 = {1{`RANDOM}};
  s1_out_data_2_robIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s1_out_data_2_robIdx_value = _RAND_63[4:0];
  _RAND_64 = {1{`RANDOM}};
  s1_out_data_2_cf_trigger_backendEn_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s1_out_data_2_cf_trigger_backendEn_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s1_out_data_2_cf_pd_isRVC = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  s1_out_data_2_cf_pd_brType = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  s1_out_data_2_cf_pd_isCall = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s1_out_data_2_cf_pd_isRet = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  s1_out_data_2_cf_pred_taken = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s1_out_data_2_cf_storeSetHit = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  s1_out_data_2_cf_loadWaitStrict = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s1_out_data_2_cf_ssid = _RAND_73[4:0];
  _RAND_74 = {1{`RANDOM}};
  s1_out_data_2_cf_ftqPtr_flag = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  s1_out_data_2_cf_ftqPtr_value = _RAND_75[2:0];
  _RAND_76 = {1{`RANDOM}};
  s1_out_data_2_cf_ftqOffset = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  s1_out_data_2_ctrl_srcType_0 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  s1_out_data_2_ctrl_fuType = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  s1_out_data_2_ctrl_fuOpType = _RAND_79[6:0];
  _RAND_80 = {1{`RANDOM}};
  s1_out_data_2_ctrl_rfWen = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  s1_out_data_2_ctrl_fpWen = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  s1_out_data_2_ctrl_imm = _RAND_82[19:0];
  _RAND_83 = {1{`RANDOM}};
  s1_out_data_2_psrc_0 = _RAND_83[5:0];
  _RAND_84 = {1{`RANDOM}};
  s1_out_data_2_pdest = _RAND_84[5:0];
  _RAND_85 = {1{`RANDOM}};
  s1_out_data_2_lqIdx_flag = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  s1_out_data_2_lqIdx_value = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  s1_out_data_2_sqIdx_flag = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  s1_out_data_2_sqIdx_value = _RAND_88[3:0];
  _RAND_89 = {1{`RANDOM}};
  s1_out_data_3_robIdx_flag = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  s1_out_data_3_robIdx_value = _RAND_90[4:0];
  _RAND_91 = {1{`RANDOM}};
  s1_out_data_3_cf_trigger_backendEn_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  s1_out_data_3_cf_trigger_backendEn_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  s1_out_data_3_cf_pd_isRVC = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  s1_out_data_3_cf_pd_brType = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  s1_out_data_3_cf_pd_isCall = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  s1_out_data_3_cf_pd_isRet = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  s1_out_data_3_cf_pred_taken = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  s1_out_data_3_cf_storeSetHit = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  s1_out_data_3_cf_loadWaitStrict = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  s1_out_data_3_cf_ssid = _RAND_100[4:0];
  _RAND_101 = {1{`RANDOM}};
  s1_out_data_3_cf_ftqPtr_flag = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  s1_out_data_3_cf_ftqPtr_value = _RAND_102[2:0];
  _RAND_103 = {1{`RANDOM}};
  s1_out_data_3_cf_ftqOffset = _RAND_103[2:0];
  _RAND_104 = {1{`RANDOM}};
  s1_out_data_3_ctrl_srcType_0 = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  s1_out_data_3_ctrl_fuType = _RAND_105[3:0];
  _RAND_106 = {1{`RANDOM}};
  s1_out_data_3_ctrl_fuOpType = _RAND_106[6:0];
  _RAND_107 = {1{`RANDOM}};
  s1_out_data_3_ctrl_rfWen = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  s1_out_data_3_ctrl_fpWen = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  s1_out_data_3_ctrl_imm = _RAND_109[19:0];
  _RAND_110 = {1{`RANDOM}};
  s1_out_data_3_psrc_0 = _RAND_110[5:0];
  _RAND_111 = {1{`RANDOM}};
  s1_out_data_3_pdest = _RAND_111[5:0];
  _RAND_112 = {1{`RANDOM}};
  s1_out_data_3_lqIdx_flag = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  s1_out_data_3_lqIdx_value = _RAND_113[3:0];
  _RAND_114 = {1{`RANDOM}};
  s1_out_data_3_sqIdx_flag = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  s1_out_data_3_sqIdx_value = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  s1_out_data_4_robIdx_flag = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  s1_out_data_4_robIdx_value = _RAND_117[4:0];
  _RAND_118 = {1{`RANDOM}};
  s1_out_data_4_cf_trigger_backendEn_0 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  s1_out_data_4_cf_trigger_backendEn_1 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  s1_out_data_4_cf_pd_isRVC = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  s1_out_data_4_cf_pd_brType = _RAND_121[1:0];
  _RAND_122 = {1{`RANDOM}};
  s1_out_data_4_cf_pd_isCall = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  s1_out_data_4_cf_pd_isRet = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  s1_out_data_4_cf_pred_taken = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  s1_out_data_4_cf_storeSetHit = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  s1_out_data_4_cf_loadWaitStrict = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  s1_out_data_4_cf_ssid = _RAND_127[4:0];
  _RAND_128 = {1{`RANDOM}};
  s1_out_data_4_cf_ftqPtr_flag = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  s1_out_data_4_cf_ftqPtr_value = _RAND_129[2:0];
  _RAND_130 = {1{`RANDOM}};
  s1_out_data_4_cf_ftqOffset = _RAND_130[2:0];
  _RAND_131 = {1{`RANDOM}};
  s1_out_data_4_ctrl_srcType_0 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  s1_out_data_4_ctrl_fuType = _RAND_132[3:0];
  _RAND_133 = {1{`RANDOM}};
  s1_out_data_4_ctrl_fuOpType = _RAND_133[6:0];
  _RAND_134 = {1{`RANDOM}};
  s1_out_data_4_ctrl_rfWen = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  s1_out_data_4_ctrl_fpWen = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  s1_out_data_4_ctrl_imm = _RAND_136[19:0];
  _RAND_137 = {1{`RANDOM}};
  s1_out_data_4_psrc_0 = _RAND_137[5:0];
  _RAND_138 = {1{`RANDOM}};
  s1_out_data_4_pdest = _RAND_138[5:0];
  _RAND_139 = {1{`RANDOM}};
  s1_out_data_4_lqIdx_flag = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  s1_out_data_4_lqIdx_value = _RAND_140[3:0];
  _RAND_141 = {1{`RANDOM}};
  s1_out_data_4_sqIdx_flag = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  s1_out_data_4_sqIdx_value = _RAND_142[3:0];
  _RAND_143 = {1{`RANDOM}};
  s1_out_data_5_robIdx_flag = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  s1_out_data_5_robIdx_value = _RAND_144[4:0];
  _RAND_145 = {1{`RANDOM}};
  s1_out_data_5_cf_trigger_backendEn_0 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  s1_out_data_5_cf_trigger_backendEn_1 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  s1_out_data_5_cf_pd_isRVC = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  s1_out_data_5_cf_pd_brType = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  s1_out_data_5_cf_pd_isCall = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  s1_out_data_5_cf_pd_isRet = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  s1_out_data_5_cf_pred_taken = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  s1_out_data_5_cf_storeSetHit = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  s1_out_data_5_cf_loadWaitStrict = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  s1_out_data_5_cf_ssid = _RAND_154[4:0];
  _RAND_155 = {1{`RANDOM}};
  s1_out_data_5_cf_ftqPtr_flag = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  s1_out_data_5_cf_ftqPtr_value = _RAND_156[2:0];
  _RAND_157 = {1{`RANDOM}};
  s1_out_data_5_cf_ftqOffset = _RAND_157[2:0];
  _RAND_158 = {1{`RANDOM}};
  s1_out_data_5_ctrl_srcType_0 = _RAND_158[1:0];
  _RAND_159 = {1{`RANDOM}};
  s1_out_data_5_ctrl_fuType = _RAND_159[3:0];
  _RAND_160 = {1{`RANDOM}};
  s1_out_data_5_ctrl_fuOpType = _RAND_160[6:0];
  _RAND_161 = {1{`RANDOM}};
  s1_out_data_5_ctrl_rfWen = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  s1_out_data_5_ctrl_fpWen = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  s1_out_data_5_ctrl_imm = _RAND_163[19:0];
  _RAND_164 = {1{`RANDOM}};
  s1_out_data_5_psrc_0 = _RAND_164[5:0];
  _RAND_165 = {1{`RANDOM}};
  s1_out_data_5_pdest = _RAND_165[5:0];
  _RAND_166 = {1{`RANDOM}};
  s1_out_data_5_lqIdx_flag = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  s1_out_data_5_lqIdx_value = _RAND_167[3:0];
  _RAND_168 = {1{`RANDOM}};
  s1_out_data_5_sqIdx_flag = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  s1_out_data_5_sqIdx_value = _RAND_169[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    s1_out_valid_5 = 1'h0;
  end
  if (reset) begin
    s1_out_valid_4 = 1'h0;
  end
  if (reset) begin
    s1_out_valid_3 = 1'h0;
  end
  if (reset) begin
    s1_out_valid_2 = 1'h0;
  end
  if (reset) begin
    s1_out_valid_1 = 1'h0;
  end
  if (reset) begin
    s1_out_valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

