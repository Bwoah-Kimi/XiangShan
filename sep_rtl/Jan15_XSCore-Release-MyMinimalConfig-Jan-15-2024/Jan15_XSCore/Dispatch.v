module Dispatch(
  input         clock,
  input         reset,
  output        io_fromRename_0_ready,
  input         io_fromRename_0_valid,
  input         io_fromRename_0_bits_cf_exceptionVec_1,
  input         io_fromRename_0_bits_cf_exceptionVec_2,
  input         io_fromRename_0_bits_cf_exceptionVec_12,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_0,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_1,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_2,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_3,
  input         io_fromRename_0_bits_cf_trigger_backendEn_0,
  input         io_fromRename_0_bits_cf_trigger_backendEn_1,
  input         io_fromRename_0_bits_cf_pd_isRVC,
  input  [1:0]  io_fromRename_0_bits_cf_pd_brType,
  input         io_fromRename_0_bits_cf_pd_isCall,
  input         io_fromRename_0_bits_cf_pd_isRet,
  input         io_fromRename_0_bits_cf_pred_taken,
  input         io_fromRename_0_bits_cf_crossPageIPFFix,
  input         io_fromRename_0_bits_cf_storeSetHit,
  input         io_fromRename_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromRename_0_bits_cf_ssid,
  input         io_fromRename_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromRename_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromRename_0_bits_cf_ftqOffset,
  input  [1:0]  io_fromRename_0_bits_ctrl_srcType_0,
  input  [1:0]  io_fromRename_0_bits_ctrl_srcType_1,
  input  [1:0]  io_fromRename_0_bits_ctrl_srcType_2,
  input  [4:0]  io_fromRename_0_bits_ctrl_ldest,
  input  [3:0]  io_fromRename_0_bits_ctrl_fuType,
  input  [6:0]  io_fromRename_0_bits_ctrl_fuOpType,
  input         io_fromRename_0_bits_ctrl_rfWen,
  input         io_fromRename_0_bits_ctrl_fpWen,
  input         io_fromRename_0_bits_ctrl_isXSTrap,
  input         io_fromRename_0_bits_ctrl_noSpecExec,
  input         io_fromRename_0_bits_ctrl_blockBackward,
  input         io_fromRename_0_bits_ctrl_flushPipe,
  input  [3:0]  io_fromRename_0_bits_ctrl_selImm,
  input  [19:0] io_fromRename_0_bits_ctrl_imm,
  input  [2:0]  io_fromRename_0_bits_ctrl_commitType,
  input         io_fromRename_0_bits_ctrl_fpu_isAddSub,
  input         io_fromRename_0_bits_ctrl_fpu_typeTagIn,
  input         io_fromRename_0_bits_ctrl_fpu_typeTagOut,
  input         io_fromRename_0_bits_ctrl_fpu_fromInt,
  input         io_fromRename_0_bits_ctrl_fpu_wflags,
  input         io_fromRename_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromRename_0_bits_ctrl_fpu_fmaCmd,
  input         io_fromRename_0_bits_ctrl_fpu_div,
  input         io_fromRename_0_bits_ctrl_fpu_sqrt,
  input         io_fromRename_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromRename_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromRename_0_bits_ctrl_fpu_fmt,
  input         io_fromRename_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromRename_0_bits_ctrl_fpu_rm,
  input         io_fromRename_0_bits_ctrl_isMove,
  input  [5:0]  io_fromRename_0_bits_psrc_0,
  input  [5:0]  io_fromRename_0_bits_psrc_1,
  input  [5:0]  io_fromRename_0_bits_psrc_2,
  input  [5:0]  io_fromRename_0_bits_pdest,
  input         io_fromRename_0_bits_robIdx_flag,
  input  [4:0]  io_fromRename_0_bits_robIdx_value,
  input         io_fromRename_0_bits_eliminatedMove,
  input         io_fromRename_0_bits_snapshot,
  output        io_fromRename_1_ready,
  input         io_fromRename_1_valid,
  input         io_fromRename_1_bits_cf_exceptionVec_1,
  input         io_fromRename_1_bits_cf_exceptionVec_2,
  input         io_fromRename_1_bits_cf_exceptionVec_12,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_0,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_1,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_2,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_3,
  input         io_fromRename_1_bits_cf_trigger_backendEn_0,
  input         io_fromRename_1_bits_cf_trigger_backendEn_1,
  input         io_fromRename_1_bits_cf_pd_isRVC,
  input  [1:0]  io_fromRename_1_bits_cf_pd_brType,
  input         io_fromRename_1_bits_cf_pd_isCall,
  input         io_fromRename_1_bits_cf_pd_isRet,
  input         io_fromRename_1_bits_cf_pred_taken,
  input         io_fromRename_1_bits_cf_crossPageIPFFix,
  input         io_fromRename_1_bits_cf_storeSetHit,
  input         io_fromRename_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromRename_1_bits_cf_ssid,
  input         io_fromRename_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromRename_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromRename_1_bits_cf_ftqOffset,
  input  [1:0]  io_fromRename_1_bits_ctrl_srcType_0,
  input  [1:0]  io_fromRename_1_bits_ctrl_srcType_1,
  input  [1:0]  io_fromRename_1_bits_ctrl_srcType_2,
  input  [4:0]  io_fromRename_1_bits_ctrl_ldest,
  input  [3:0]  io_fromRename_1_bits_ctrl_fuType,
  input  [6:0]  io_fromRename_1_bits_ctrl_fuOpType,
  input         io_fromRename_1_bits_ctrl_rfWen,
  input         io_fromRename_1_bits_ctrl_fpWen,
  input         io_fromRename_1_bits_ctrl_isXSTrap,
  input         io_fromRename_1_bits_ctrl_noSpecExec,
  input         io_fromRename_1_bits_ctrl_blockBackward,
  input         io_fromRename_1_bits_ctrl_flushPipe,
  input  [3:0]  io_fromRename_1_bits_ctrl_selImm,
  input  [19:0] io_fromRename_1_bits_ctrl_imm,
  input         io_fromRename_1_bits_ctrl_fpu_isAddSub,
  input         io_fromRename_1_bits_ctrl_fpu_typeTagIn,
  input         io_fromRename_1_bits_ctrl_fpu_typeTagOut,
  input         io_fromRename_1_bits_ctrl_fpu_fromInt,
  input         io_fromRename_1_bits_ctrl_fpu_wflags,
  input         io_fromRename_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromRename_1_bits_ctrl_fpu_fmaCmd,
  input         io_fromRename_1_bits_ctrl_fpu_div,
  input         io_fromRename_1_bits_ctrl_fpu_sqrt,
  input         io_fromRename_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromRename_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromRename_1_bits_ctrl_fpu_fmt,
  input         io_fromRename_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromRename_1_bits_ctrl_fpu_rm,
  input         io_fromRename_1_bits_ctrl_isMove,
  input  [5:0]  io_fromRename_1_bits_psrc_0,
  input  [5:0]  io_fromRename_1_bits_psrc_1,
  input  [5:0]  io_fromRename_1_bits_psrc_2,
  input  [5:0]  io_fromRename_1_bits_pdest,
  input         io_fromRename_1_bits_robIdx_flag,
  input  [4:0]  io_fromRename_1_bits_robIdx_value,
  input         io_fromRename_1_bits_eliminatedMove,
  output        io_recv_0,
  output        io_recv_1,
  input         io_enqRob_canAccept,
  input         io_enqRob_isEmpty,
  output        io_enqRob_needAlloc_0,
  output        io_enqRob_req_0_valid,
  output        io_enqRob_req_0_bits_cf_exceptionVec_1,
  output        io_enqRob_req_0_bits_cf_exceptionVec_2,
  output        io_enqRob_req_0_bits_cf_exceptionVec_12,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_0,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_1,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_2,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_3,
  output        io_enqRob_req_0_bits_cf_pd_isRVC,
  output        io_enqRob_req_0_bits_cf_crossPageIPFFix,
  output        io_enqRob_req_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_enqRob_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_enqRob_req_0_bits_cf_ftqOffset,
  output [4:0]  io_enqRob_req_0_bits_ctrl_ldest,
  output [3:0]  io_enqRob_req_0_bits_ctrl_fuType,
  output [6:0]  io_enqRob_req_0_bits_ctrl_fuOpType,
  output        io_enqRob_req_0_bits_ctrl_rfWen,
  output        io_enqRob_req_0_bits_ctrl_fpWen,
  output        io_enqRob_req_0_bits_ctrl_isXSTrap,
  output        io_enqRob_req_0_bits_ctrl_noSpecExec,
  output        io_enqRob_req_0_bits_ctrl_blockBackward,
  output        io_enqRob_req_0_bits_ctrl_flushPipe,
  output [2:0]  io_enqRob_req_0_bits_ctrl_commitType,
  output        io_enqRob_req_0_bits_ctrl_fpu_wflags,
  output        io_enqRob_req_0_bits_ctrl_isMove,
  output        io_enqRob_req_0_bits_ctrl_singleStep,
  output [5:0]  io_enqRob_req_0_bits_pdest,
  output        io_enqRob_req_0_bits_robIdx_flag,
  output [4:0]  io_enqRob_req_0_bits_robIdx_value,
  output        io_enqRob_req_0_bits_eliminatedMove,
  output        io_enqRob_req_0_bits_snapshot,
  output        io_enqRob_req_1_valid,
  output        io_enqRob_req_1_bits_cf_exceptionVec_1,
  output        io_enqRob_req_1_bits_cf_exceptionVec_2,
  output        io_enqRob_req_1_bits_cf_exceptionVec_12,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_0,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_1,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_2,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_3,
  output        io_enqRob_req_1_bits_cf_pd_isRVC,
  output        io_enqRob_req_1_bits_cf_crossPageIPFFix,
  output        io_enqRob_req_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_enqRob_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_enqRob_req_1_bits_cf_ftqOffset,
  output [4:0]  io_enqRob_req_1_bits_ctrl_ldest,
  output [3:0]  io_enqRob_req_1_bits_ctrl_fuType,
  output [6:0]  io_enqRob_req_1_bits_ctrl_fuOpType,
  output        io_enqRob_req_1_bits_ctrl_rfWen,
  output        io_enqRob_req_1_bits_ctrl_fpWen,
  output        io_enqRob_req_1_bits_ctrl_isXSTrap,
  output        io_enqRob_req_1_bits_ctrl_noSpecExec,
  output        io_enqRob_req_1_bits_ctrl_blockBackward,
  output        io_enqRob_req_1_bits_ctrl_flushPipe,
  output [2:0]  io_enqRob_req_1_bits_ctrl_commitType,
  output        io_enqRob_req_1_bits_ctrl_fpu_wflags,
  output        io_enqRob_req_1_bits_ctrl_isMove,
  output        io_enqRob_req_1_bits_ctrl_singleStep,
  output [5:0]  io_enqRob_req_1_bits_pdest,
  output        io_enqRob_req_1_bits_robIdx_flag,
  output [4:0]  io_enqRob_req_1_bits_robIdx_value,
  output        io_enqRob_req_1_bits_eliminatedMove,
  output        io_allocPregs_0_isInt,
  output        io_allocPregs_0_isFp,
  output [5:0]  io_allocPregs_0_preg,
  output        io_allocPregs_1_isInt,
  output        io_allocPregs_1_isFp,
  output [5:0]  io_allocPregs_1_preg,
  input         io_toIntDq_canAccept,
  output        io_toIntDq_needAlloc_0,
  output        io_toIntDq_needAlloc_1,
  output        io_toIntDq_req_0_valid,
  output        io_toIntDq_req_0_bits_cf_trigger_backendEn_0,
  output        io_toIntDq_req_0_bits_cf_trigger_backendEn_1,
  output        io_toIntDq_req_0_bits_cf_pd_isRVC,
  output [1:0]  io_toIntDq_req_0_bits_cf_pd_brType,
  output        io_toIntDq_req_0_bits_cf_pd_isCall,
  output        io_toIntDq_req_0_bits_cf_pd_isRet,
  output        io_toIntDq_req_0_bits_cf_pred_taken,
  output        io_toIntDq_req_0_bits_cf_storeSetHit,
  output        io_toIntDq_req_0_bits_cf_loadWaitStrict,
  output [4:0]  io_toIntDq_req_0_bits_cf_ssid,
  output        io_toIntDq_req_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_toIntDq_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_toIntDq_req_0_bits_cf_ftqOffset,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_srcType_0,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_srcType_1,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_srcType_2,
  output [3:0]  io_toIntDq_req_0_bits_ctrl_fuType,
  output [6:0]  io_toIntDq_req_0_bits_ctrl_fuOpType,
  output        io_toIntDq_req_0_bits_ctrl_rfWen,
  output        io_toIntDq_req_0_bits_ctrl_fpWen,
  output [3:0]  io_toIntDq_req_0_bits_ctrl_selImm,
  output [19:0] io_toIntDq_req_0_bits_ctrl_imm,
  output        io_toIntDq_req_0_bits_ctrl_fpu_isAddSub,
  output        io_toIntDq_req_0_bits_ctrl_fpu_typeTagIn,
  output        io_toIntDq_req_0_bits_ctrl_fpu_typeTagOut,
  output        io_toIntDq_req_0_bits_ctrl_fpu_fromInt,
  output        io_toIntDq_req_0_bits_ctrl_fpu_wflags,
  output        io_toIntDq_req_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_fpu_fmaCmd,
  output        io_toIntDq_req_0_bits_ctrl_fpu_div,
  output        io_toIntDq_req_0_bits_ctrl_fpu_sqrt,
  output        io_toIntDq_req_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_fpu_typ,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_fpu_fmt,
  output        io_toIntDq_req_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_toIntDq_req_0_bits_ctrl_fpu_rm,
  output [5:0]  io_toIntDq_req_0_bits_psrc_0,
  output [5:0]  io_toIntDq_req_0_bits_psrc_1,
  output [5:0]  io_toIntDq_req_0_bits_psrc_2,
  output [5:0]  io_toIntDq_req_0_bits_pdest,
  output        io_toIntDq_req_0_bits_robIdx_flag,
  output [4:0]  io_toIntDq_req_0_bits_robIdx_value,
  output        io_toIntDq_req_1_valid,
  output        io_toIntDq_req_1_bits_cf_trigger_backendEn_0,
  output        io_toIntDq_req_1_bits_cf_trigger_backendEn_1,
  output        io_toIntDq_req_1_bits_cf_pd_isRVC,
  output [1:0]  io_toIntDq_req_1_bits_cf_pd_brType,
  output        io_toIntDq_req_1_bits_cf_pd_isCall,
  output        io_toIntDq_req_1_bits_cf_pd_isRet,
  output        io_toIntDq_req_1_bits_cf_pred_taken,
  output        io_toIntDq_req_1_bits_cf_storeSetHit,
  output        io_toIntDq_req_1_bits_cf_loadWaitStrict,
  output [4:0]  io_toIntDq_req_1_bits_cf_ssid,
  output        io_toIntDq_req_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_toIntDq_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_toIntDq_req_1_bits_cf_ftqOffset,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_srcType_0,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_srcType_1,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_srcType_2,
  output [3:0]  io_toIntDq_req_1_bits_ctrl_fuType,
  output [6:0]  io_toIntDq_req_1_bits_ctrl_fuOpType,
  output        io_toIntDq_req_1_bits_ctrl_rfWen,
  output        io_toIntDq_req_1_bits_ctrl_fpWen,
  output [3:0]  io_toIntDq_req_1_bits_ctrl_selImm,
  output [19:0] io_toIntDq_req_1_bits_ctrl_imm,
  output        io_toIntDq_req_1_bits_ctrl_fpu_isAddSub,
  output        io_toIntDq_req_1_bits_ctrl_fpu_typeTagIn,
  output        io_toIntDq_req_1_bits_ctrl_fpu_typeTagOut,
  output        io_toIntDq_req_1_bits_ctrl_fpu_fromInt,
  output        io_toIntDq_req_1_bits_ctrl_fpu_wflags,
  output        io_toIntDq_req_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_fpu_fmaCmd,
  output        io_toIntDq_req_1_bits_ctrl_fpu_div,
  output        io_toIntDq_req_1_bits_ctrl_fpu_sqrt,
  output        io_toIntDq_req_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_fpu_typ,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_fpu_fmt,
  output        io_toIntDq_req_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_toIntDq_req_1_bits_ctrl_fpu_rm,
  output [5:0]  io_toIntDq_req_1_bits_psrc_0,
  output [5:0]  io_toIntDq_req_1_bits_psrc_1,
  output [5:0]  io_toIntDq_req_1_bits_psrc_2,
  output [5:0]  io_toIntDq_req_1_bits_pdest,
  output        io_toIntDq_req_1_bits_robIdx_flag,
  output [4:0]  io_toIntDq_req_1_bits_robIdx_value,
  input         io_toFpDq_canAccept,
  output        io_toFpDq_needAlloc_0,
  output        io_toFpDq_needAlloc_1,
  output        io_toFpDq_req_0_valid,
  output        io_toFpDq_req_0_bits_cf_trigger_backendEn_0,
  output        io_toFpDq_req_0_bits_cf_trigger_backendEn_1,
  output        io_toFpDq_req_0_bits_cf_pd_isRVC,
  output [1:0]  io_toFpDq_req_0_bits_cf_pd_brType,
  output        io_toFpDq_req_0_bits_cf_pd_isCall,
  output        io_toFpDq_req_0_bits_cf_pd_isRet,
  output        io_toFpDq_req_0_bits_cf_pred_taken,
  output        io_toFpDq_req_0_bits_cf_storeSetHit,
  output        io_toFpDq_req_0_bits_cf_loadWaitStrict,
  output [4:0]  io_toFpDq_req_0_bits_cf_ssid,
  output        io_toFpDq_req_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_toFpDq_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_toFpDq_req_0_bits_cf_ftqOffset,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_srcType_0,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_srcType_1,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_srcType_2,
  output [3:0]  io_toFpDq_req_0_bits_ctrl_fuType,
  output [6:0]  io_toFpDq_req_0_bits_ctrl_fuOpType,
  output        io_toFpDq_req_0_bits_ctrl_rfWen,
  output        io_toFpDq_req_0_bits_ctrl_fpWen,
  output [3:0]  io_toFpDq_req_0_bits_ctrl_selImm,
  output [19:0] io_toFpDq_req_0_bits_ctrl_imm,
  output        io_toFpDq_req_0_bits_ctrl_fpu_isAddSub,
  output        io_toFpDq_req_0_bits_ctrl_fpu_typeTagIn,
  output        io_toFpDq_req_0_bits_ctrl_fpu_typeTagOut,
  output        io_toFpDq_req_0_bits_ctrl_fpu_fromInt,
  output        io_toFpDq_req_0_bits_ctrl_fpu_wflags,
  output        io_toFpDq_req_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_fpu_fmaCmd,
  output        io_toFpDq_req_0_bits_ctrl_fpu_div,
  output        io_toFpDq_req_0_bits_ctrl_fpu_sqrt,
  output        io_toFpDq_req_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_fpu_typ,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_fpu_fmt,
  output        io_toFpDq_req_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_toFpDq_req_0_bits_ctrl_fpu_rm,
  output [5:0]  io_toFpDq_req_0_bits_psrc_0,
  output [5:0]  io_toFpDq_req_0_bits_psrc_1,
  output [5:0]  io_toFpDq_req_0_bits_psrc_2,
  output [5:0]  io_toFpDq_req_0_bits_pdest,
  output        io_toFpDq_req_0_bits_robIdx_flag,
  output [4:0]  io_toFpDq_req_0_bits_robIdx_value,
  output        io_toFpDq_req_1_valid,
  output        io_toFpDq_req_1_bits_cf_trigger_backendEn_0,
  output        io_toFpDq_req_1_bits_cf_trigger_backendEn_1,
  output        io_toFpDq_req_1_bits_cf_pd_isRVC,
  output [1:0]  io_toFpDq_req_1_bits_cf_pd_brType,
  output        io_toFpDq_req_1_bits_cf_pd_isCall,
  output        io_toFpDq_req_1_bits_cf_pd_isRet,
  output        io_toFpDq_req_1_bits_cf_pred_taken,
  output        io_toFpDq_req_1_bits_cf_storeSetHit,
  output        io_toFpDq_req_1_bits_cf_loadWaitStrict,
  output [4:0]  io_toFpDq_req_1_bits_cf_ssid,
  output        io_toFpDq_req_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_toFpDq_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_toFpDq_req_1_bits_cf_ftqOffset,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_srcType_0,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_srcType_1,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_srcType_2,
  output [3:0]  io_toFpDq_req_1_bits_ctrl_fuType,
  output [6:0]  io_toFpDq_req_1_bits_ctrl_fuOpType,
  output        io_toFpDq_req_1_bits_ctrl_rfWen,
  output        io_toFpDq_req_1_bits_ctrl_fpWen,
  output [3:0]  io_toFpDq_req_1_bits_ctrl_selImm,
  output [19:0] io_toFpDq_req_1_bits_ctrl_imm,
  output        io_toFpDq_req_1_bits_ctrl_fpu_isAddSub,
  output        io_toFpDq_req_1_bits_ctrl_fpu_typeTagIn,
  output        io_toFpDq_req_1_bits_ctrl_fpu_typeTagOut,
  output        io_toFpDq_req_1_bits_ctrl_fpu_fromInt,
  output        io_toFpDq_req_1_bits_ctrl_fpu_wflags,
  output        io_toFpDq_req_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_fpu_fmaCmd,
  output        io_toFpDq_req_1_bits_ctrl_fpu_div,
  output        io_toFpDq_req_1_bits_ctrl_fpu_sqrt,
  output        io_toFpDq_req_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_fpu_typ,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_fpu_fmt,
  output        io_toFpDq_req_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_toFpDq_req_1_bits_ctrl_fpu_rm,
  output [5:0]  io_toFpDq_req_1_bits_psrc_0,
  output [5:0]  io_toFpDq_req_1_bits_psrc_1,
  output [5:0]  io_toFpDq_req_1_bits_psrc_2,
  output [5:0]  io_toFpDq_req_1_bits_pdest,
  output        io_toFpDq_req_1_bits_robIdx_flag,
  output [4:0]  io_toFpDq_req_1_bits_robIdx_value,
  input         io_toLsDq_canAccept,
  output        io_toLsDq_needAlloc_0,
  output        io_toLsDq_needAlloc_1,
  output        io_toLsDq_req_0_valid,
  output        io_toLsDq_req_0_bits_cf_trigger_backendEn_0,
  output        io_toLsDq_req_0_bits_cf_trigger_backendEn_1,
  output        io_toLsDq_req_0_bits_cf_pd_isRVC,
  output [1:0]  io_toLsDq_req_0_bits_cf_pd_brType,
  output        io_toLsDq_req_0_bits_cf_pd_isCall,
  output        io_toLsDq_req_0_bits_cf_pd_isRet,
  output        io_toLsDq_req_0_bits_cf_pred_taken,
  output        io_toLsDq_req_0_bits_cf_storeSetHit,
  output        io_toLsDq_req_0_bits_cf_loadWaitStrict,
  output [4:0]  io_toLsDq_req_0_bits_cf_ssid,
  output        io_toLsDq_req_0_bits_cf_ftqPtr_flag,
  output [2:0]  io_toLsDq_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_toLsDq_req_0_bits_cf_ftqOffset,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_srcType_0,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_srcType_1,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_srcType_2,
  output [3:0]  io_toLsDq_req_0_bits_ctrl_fuType,
  output [6:0]  io_toLsDq_req_0_bits_ctrl_fuOpType,
  output        io_toLsDq_req_0_bits_ctrl_rfWen,
  output        io_toLsDq_req_0_bits_ctrl_fpWen,
  output [3:0]  io_toLsDq_req_0_bits_ctrl_selImm,
  output [19:0] io_toLsDq_req_0_bits_ctrl_imm,
  output        io_toLsDq_req_0_bits_ctrl_fpu_isAddSub,
  output        io_toLsDq_req_0_bits_ctrl_fpu_typeTagIn,
  output        io_toLsDq_req_0_bits_ctrl_fpu_typeTagOut,
  output        io_toLsDq_req_0_bits_ctrl_fpu_fromInt,
  output        io_toLsDq_req_0_bits_ctrl_fpu_wflags,
  output        io_toLsDq_req_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_fpu_fmaCmd,
  output        io_toLsDq_req_0_bits_ctrl_fpu_div,
  output        io_toLsDq_req_0_bits_ctrl_fpu_sqrt,
  output        io_toLsDq_req_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_fpu_typ,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_fpu_fmt,
  output        io_toLsDq_req_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_toLsDq_req_0_bits_ctrl_fpu_rm,
  output [5:0]  io_toLsDq_req_0_bits_psrc_0,
  output [5:0]  io_toLsDq_req_0_bits_psrc_1,
  output [5:0]  io_toLsDq_req_0_bits_psrc_2,
  output [5:0]  io_toLsDq_req_0_bits_pdest,
  output        io_toLsDq_req_0_bits_robIdx_flag,
  output [4:0]  io_toLsDq_req_0_bits_robIdx_value,
  output        io_toLsDq_req_1_valid,
  output        io_toLsDq_req_1_bits_cf_trigger_backendEn_0,
  output        io_toLsDq_req_1_bits_cf_trigger_backendEn_1,
  output        io_toLsDq_req_1_bits_cf_pd_isRVC,
  output [1:0]  io_toLsDq_req_1_bits_cf_pd_brType,
  output        io_toLsDq_req_1_bits_cf_pd_isCall,
  output        io_toLsDq_req_1_bits_cf_pd_isRet,
  output        io_toLsDq_req_1_bits_cf_pred_taken,
  output        io_toLsDq_req_1_bits_cf_storeSetHit,
  output        io_toLsDq_req_1_bits_cf_loadWaitStrict,
  output [4:0]  io_toLsDq_req_1_bits_cf_ssid,
  output        io_toLsDq_req_1_bits_cf_ftqPtr_flag,
  output [2:0]  io_toLsDq_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_toLsDq_req_1_bits_cf_ftqOffset,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_srcType_0,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_srcType_1,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_srcType_2,
  output [3:0]  io_toLsDq_req_1_bits_ctrl_fuType,
  output [6:0]  io_toLsDq_req_1_bits_ctrl_fuOpType,
  output        io_toLsDq_req_1_bits_ctrl_rfWen,
  output        io_toLsDq_req_1_bits_ctrl_fpWen,
  output [3:0]  io_toLsDq_req_1_bits_ctrl_selImm,
  output [19:0] io_toLsDq_req_1_bits_ctrl_imm,
  output        io_toLsDq_req_1_bits_ctrl_fpu_isAddSub,
  output        io_toLsDq_req_1_bits_ctrl_fpu_typeTagIn,
  output        io_toLsDq_req_1_bits_ctrl_fpu_typeTagOut,
  output        io_toLsDq_req_1_bits_ctrl_fpu_fromInt,
  output        io_toLsDq_req_1_bits_ctrl_fpu_wflags,
  output        io_toLsDq_req_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_fpu_fmaCmd,
  output        io_toLsDq_req_1_bits_ctrl_fpu_div,
  output        io_toLsDq_req_1_bits_ctrl_fpu_sqrt,
  output        io_toLsDq_req_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_fpu_typ,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_fpu_fmt,
  output        io_toLsDq_req_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_toLsDq_req_1_bits_ctrl_fpu_rm,
  output [5:0]  io_toLsDq_req_1_bits_psrc_0,
  output [5:0]  io_toLsDq_req_1_bits_psrc_1,
  output [5:0]  io_toLsDq_req_1_bits_psrc_2,
  output [5:0]  io_toLsDq_req_1_bits_pdest,
  output        io_toLsDq_req_1_bits_robIdx_flag,
  output [4:0]  io_toLsDq_req_1_bits_robIdx_value,
  input         io_redirect_valid,
  input         io_singleStep,
  output        io_stallReason_backReason_valid,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value,
  output [5:0]  io_perf_8_value
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
`endif // RANDOMIZE_REG_INIT
  wire  isInt_0 = ~io_fromRename_0_bits_ctrl_fuType[3]; // @[package.scala 79:34]
  wire  isInt_1 = ~io_fromRename_1_bits_ctrl_fuType[3]; // @[package.scala 79:34]
  wire  _isBranch_T = io_fromRename_0_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _isBranch_T_2 = io_fromRename_0_bits_ctrl_fuType == 4'h0; // @[package.scala 80:42]
  wire  isBranch_0 = ~_isBranch_T | _isBranch_T_2; // @[Dispatch.scala 89:28]
  wire  _isBranch_T_4 = io_fromRename_1_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _isBranch_T_6 = io_fromRename_1_bits_ctrl_fuType == 4'h0; // @[package.scala 80:42]
  wire  isBranch_1 = ~_isBranch_T_4 | _isBranch_T_6; // @[Dispatch.scala 89:28]
  wire  isFp_0 = io_fromRename_0_bits_ctrl_fuType[3:2] == 2'h2; // @[package.scala 81:46]
  wire  isFp_1 = io_fromRename_1_bits_ctrl_fuType[3:2] == 2'h2; // @[package.scala 81:46]
  wire  isMem_0 = io_fromRename_0_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 82:47]
  wire  isMem_1 = io_fromRename_1_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 82:47]
  wire  _isLs_T_3 = ~io_fromRename_0_bits_ctrl_fuType[1]; // @[package.scala 83:57]
  wire  isLs_0 = isMem_0 & ~io_fromRename_0_bits_ctrl_fuType[1]; // @[package.scala 83:54]
  wire  _isLs_T_8 = ~io_fromRename_1_bits_ctrl_fuType[1]; // @[package.scala 83:57]
  wire  isLs_1 = isMem_1 & ~io_fromRename_1_bits_ctrl_fuType[1]; // @[package.scala 83:54]
  wire  isStore_0 = isMem_0 & io_fromRename_0_bits_ctrl_fuType[0]; // @[package.scala 84:53]
  wire  isStore_1 = isMem_1 & io_fromRename_1_bits_ctrl_fuType[0]; // @[package.scala 84:53]
  reg  singleStepStatus; // @[Dispatch.scala 104:33]
  wire  _T = io_fromRename_0_ready & io_fromRename_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = io_singleStep & _T | singleStepStatus; // @[Dispatch.scala 107:57 108:22 104:33]
  wire  _updatedCommitType_0_T_2 = isStore_0 & _isLs_T_3 | isBranch_0; // @[Dispatch.scala 121:68]
  wire [1:0] _updatedCommitType_0_T_3 = {isLs_0,_updatedCommitType_0_T_2}; // @[Cat.scala 31:58]
  wire [2:0] updatedCommitType_0 = {{1'd0}, _updatedCommitType_0_T_3}; // @[Dispatch.scala 113:31 121:26]
  wire  _T_8 = io_fromRename_0_bits_ctrl_selImm == 4'h2 & io_fromRename_0_bits_ctrl_fuType == 4'h6; // @[Bundle.scala 262:50]
  wire  _T_12 = io_fromRename_0_bits_cf_trigger_frontendHit_0 | io_fromRename_0_bits_cf_trigger_frontendHit_1 |
    io_fromRename_0_bits_cf_trigger_frontendHit_2 | io_fromRename_0_bits_cf_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire  _updatedCommitType_1_T_2 = isStore_1 & _isLs_T_8 | isBranch_1; // @[Dispatch.scala 121:68]
  wire [1:0] _updatedCommitType_1_T_3 = {isLs_1,_updatedCommitType_1_T_2}; // @[Cat.scala 31:58]
  wire  _T_19 = io_fromRename_1_bits_ctrl_selImm == 4'h2 & io_fromRename_1_bits_ctrl_fuType == 4'h6; // @[Bundle.scala 262:50]
  wire  _T_23 = io_fromRename_1_bits_cf_trigger_frontendHit_0 | io_fromRename_1_bits_cf_trigger_frontendHit_1 |
    io_fromRename_1_bits_cf_trigger_frontendHit_2 | io_fromRename_1_bits_cf_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire [15:0] _hasException_T = {2'h0,1'h0,io_fromRename_0_bits_cf_exceptionVec_12,4'h0,4'h0,1'h0,
    io_fromRename_0_bits_cf_exceptionVec_2,io_fromRename_0_bits_cf_exceptionVec_1,1'h0}; // @[Dispatch.scala 194:49]
  wire  hasException_0 = |_hasException_T | _T_12; // @[Dispatch.scala 194:86]
  wire [15:0] _hasException_T_7 = {2'h0,1'h0,io_fromRename_1_bits_cf_exceptionVec_12,4'h0,4'h0,1'h0,
    io_fromRename_1_bits_cf_exceptionVec_2,io_fromRename_1_bits_cf_exceptionVec_1,1'h0}; // @[Dispatch.scala 194:49]
  wire  hasException_1 = |_hasException_T_7 | _T_23; // @[Dispatch.scala 194:86]
  wire  _thisIsBlocked_T = ~io_enqRob_isEmpty; // @[Dispatch.scala 198:29]
  wire  thisIsBlocked_0 = io_fromRename_0_bits_ctrl_noSpecExec & ~io_enqRob_isEmpty; // @[Dispatch.scala 198:26]
  wire  thisIsBlocked_1 = io_fromRename_1_bits_ctrl_noSpecExec & (_thisIsBlocked_T | |io_fromRename_0_valid); // @[Dispatch.scala 197:32]
  wire  nextCanOut_0 = ~io_fromRename_0_bits_ctrl_noSpecExec & ~io_fromRename_0_bits_ctrl_blockBackward | ~
    io_fromRename_0_valid; // @[Dispatch.scala 201:47]
  wire  notBlockedByPrevious_1 = &nextCanOut_0; // @[Dispatch.scala 205:51]
  wire  thisCanActualOut_0 = ~thisIsBlocked_0; // @[Dispatch.scala 213:57]
  wire  thisCanActualOut_1 = ~thisIsBlocked_1 & notBlockedByPrevious_1; // @[Dispatch.scala 213:75]
  wire  hasValidException_0 = io_fromRename_0_valid & hasException_0; // @[Dispatch.scala 215:79]
  wire  canEnterDpq = ~hasException_0 & thisCanActualOut_0 & io_enqRob_canAccept; // @[Dispatch.scala 226:88]
  wire  _io_toIntDq_needAlloc_0_T_1 = ~io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 231:70]
  wire  _io_toIntDq_needAlloc_0_T_2 = io_fromRename_0_valid & isInt_0 & ~io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 231:67]
  wire  _io_toIntDq_req_0_valid_T_3 = _io_toIntDq_needAlloc_0_T_2 & canEnterDpq; // @[Dispatch.scala 232:87]
  wire  _io_toFpDq_needAlloc_0_T = io_fromRename_0_valid & isFp_0; // @[Dispatch.scala 236:55]
  wire  _io_toFpDq_req_0_valid_T_1 = _io_toFpDq_needAlloc_0_T & canEnterDpq; // @[Dispatch.scala 237:66]
  wire  _io_toLsDq_needAlloc_0_T = io_fromRename_0_valid & isMem_0; // @[Dispatch.scala 241:55]
  wire  _io_toLsDq_req_0_valid_T_1 = _io_toLsDq_needAlloc_0_T & canEnterDpq; // @[Dispatch.scala 242:67]
  wire  previousHasException = |hasValidException_0; // @[Dispatch.scala 225:99]
  wire  canEnterDpq_1 = ~hasException_1 & thisCanActualOut_1 & ~previousHasException & io_enqRob_canAccept; // @[Dispatch.scala 226:88]
  wire  _io_toIntDq_needAlloc_1_T_1 = ~io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 231:70]
  wire  _io_toIntDq_needAlloc_1_T_2 = io_fromRename_1_valid & isInt_1 & ~io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 231:67]
  wire  _io_toIntDq_req_1_valid_T_3 = _io_toIntDq_needAlloc_1_T_2 & canEnterDpq_1; // @[Dispatch.scala 232:87]
  wire  _io_toFpDq_needAlloc_1_T = io_fromRename_1_valid & isFp_1; // @[Dispatch.scala 236:55]
  wire  _io_toFpDq_req_1_valid_T_1 = _io_toFpDq_needAlloc_1_T & canEnterDpq_1; // @[Dispatch.scala 237:66]
  wire  _io_toLsDq_needAlloc_1_T = io_fromRename_1_valid & isMem_1; // @[Dispatch.scala 241:55]
  wire  _io_toLsDq_req_1_valid_T_1 = _io_toLsDq_needAlloc_1_T & canEnterDpq_1; // @[Dispatch.scala 242:67]
  wire [1:0] _hasValidInstr_T = {io_fromRename_1_valid,io_fromRename_0_valid}; // @[Dispatch.scala 254:59]
  wire  hasValidInstr = |_hasValidInstr_T; // @[Dispatch.scala 254:66]
  wire  _hasSpecialInstr_T_1 = io_fromRename_0_valid & (io_fromRename_0_bits_ctrl_blockBackward |
    io_fromRename_0_bits_ctrl_noSpecExec); // @[Dispatch.scala 255:83]
  wire  _hasSpecialInstr_T_3 = io_fromRename_1_valid & (io_fromRename_1_bits_ctrl_blockBackward |
    io_fromRename_1_bits_ctrl_noSpecExec); // @[Dispatch.scala 255:83]
  wire [1:0] _hasSpecialInstr_T_4 = {_hasSpecialInstr_T_1,_hasSpecialInstr_T_3}; // @[Cat.scala 31:58]
  wire  hasSpecialInstr = |_hasSpecialInstr_T_4; // @[Dispatch.scala 255:128]
  wire  _stall_int_dq_T = hasValidInstr & io_enqRob_canAccept; // @[Dispatch.scala 276:36]
  wire  _stall_fp_dq_T_1 = _stall_int_dq_T & io_toIntDq_canAccept; // @[Dispatch.scala 277:58]
  wire  _T_80 = io_fromRename_0_valid & ~io_recv_0; // @[Dispatch.scala 282:96]
  wire  _T_82 = io_fromRename_1_valid & ~io_recv_1; // @[Dispatch.scala 282:96]
  wire  _T_395 = io_fromRename_0_valid & io_fromRename_0_ready; // @[Dispatch.scala 357:72]
  wire  _T_396 = io_fromRename_1_valid & io_fromRename_0_ready; // @[Dispatch.scala 357:72]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  assign io_fromRename_0_ready = ~hasValidInstr | ~hasSpecialInstr & io_enqRob_canAccept & io_toIntDq_canAccept &
    io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 258:46]
  assign io_fromRename_1_ready = ~hasValidInstr | ~hasSpecialInstr & io_enqRob_canAccept & io_toIntDq_canAccept &
    io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 258:46]
  assign io_recv_0 = thisCanActualOut_0 & io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
    io_toLsDq_canAccept; // @[Dispatch.scala 257:109]
  assign io_recv_1 = thisCanActualOut_1 & io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
    io_toLsDq_canAccept; // @[Dispatch.scala 257:109]
  assign io_enqRob_needAlloc_0 = io_fromRename_0_valid; // @[Dispatch.scala 219:28]
  assign io_enqRob_req_0_valid = io_fromRename_0_valid & thisCanActualOut_0 & io_toIntDq_canAccept & io_toFpDq_canAccept
     & io_toLsDq_canAccept; // @[Dispatch.scala 220:124]
  assign io_enqRob_req_0_bits_cf_exceptionVec_1 = io_fromRename_0_bits_cf_exceptionVec_1; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_exceptionVec_2 = io_fromRename_0_bits_cf_exceptionVec_2; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_exceptionVec_12 = io_fromRename_0_bits_cf_exceptionVec_12; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_0 = io_fromRename_0_bits_cf_trigger_frontendHit_0; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_1 = io_fromRename_0_bits_cf_trigger_frontendHit_1; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_2 = io_fromRename_0_bits_cf_trigger_frontendHit_2; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_3 = io_fromRename_0_bits_cf_trigger_frontendHit_3; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_crossPageIPFFix = io_fromRename_0_bits_cf_crossPageIPFFix; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_ldest = io_fromRename_0_bits_ctrl_ldest; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_isXSTrap = io_fromRename_0_bits_ctrl_isXSTrap; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_noSpecExec = io_fromRename_0_bits_ctrl_noSpecExec; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_blockBackward = io_fromRename_0_bits_ctrl_blockBackward; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_flushPipe = io_fromRename_0_bits_ctrl_flushPipe; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_commitType = ~io_fromRename_0_bits_ctrl_commitType[2] ? updatedCommitType_0 :
    io_fromRename_0_bits_ctrl_commitType; // @[Dispatch.scala 123:19 126:71 127:37]
  assign io_enqRob_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_isMove = io_fromRename_0_bits_ctrl_isMove; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_ctrl_singleStep = io_singleStep & singleStepStatus; // @[Dispatch.scala 150:52]
  assign io_enqRob_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_eliminatedMove = io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_0_bits_snapshot = io_fromRename_0_bits_snapshot; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_valid = io_fromRename_1_valid & thisCanActualOut_1 & io_toIntDq_canAccept & io_toFpDq_canAccept
     & io_toLsDq_canAccept; // @[Dispatch.scala 220:124]
  assign io_enqRob_req_1_bits_cf_exceptionVec_1 = io_fromRename_1_bits_cf_exceptionVec_1; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_exceptionVec_2 = io_fromRename_1_bits_cf_exceptionVec_2; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_exceptionVec_12 = io_fromRename_1_bits_cf_exceptionVec_12; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_0 = io_fromRename_1_bits_cf_trigger_frontendHit_0; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_1 = io_fromRename_1_bits_cf_trigger_frontendHit_1; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_2 = io_fromRename_1_bits_cf_trigger_frontendHit_2; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_3 = io_fromRename_1_bits_cf_trigger_frontendHit_3; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_crossPageIPFFix = io_fromRename_1_bits_cf_crossPageIPFFix; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_ldest = io_fromRename_1_bits_ctrl_ldest; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_isXSTrap = io_fromRename_1_bits_ctrl_isXSTrap; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_noSpecExec = io_fromRename_1_bits_ctrl_noSpecExec; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_blockBackward = io_fromRename_1_bits_ctrl_blockBackward; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_flushPipe = io_fromRename_1_bits_ctrl_flushPipe; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_commitType = {{1'd0}, _updatedCommitType_1_T_3}; // @[Dispatch.scala 113:31 121:26]
  assign io_enqRob_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_isMove = io_fromRename_1_bits_ctrl_isMove; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_ctrl_singleStep = io_singleStep; // @[Dispatch.scala 150:52]
  assign io_enqRob_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_enqRob_req_1_bits_eliminatedMove = io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 112:24 123:19]
  assign io_allocPregs_0_isInt = io_fromRename_0_valid & io_fromRename_0_bits_ctrl_rfWen &
    io_fromRename_0_bits_ctrl_ldest != 5'h0 & _io_toIntDq_needAlloc_0_T_1; // @[Dispatch.scala 265:136]
  assign io_allocPregs_0_isFp = io_fromRename_0_valid & io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 266:54]
  assign io_allocPregs_0_preg = io_fromRename_0_bits_pdest; // @[Dispatch.scala 267:28]
  assign io_allocPregs_1_isInt = io_fromRename_1_valid & io_fromRename_1_bits_ctrl_rfWen &
    io_fromRename_1_bits_ctrl_ldest != 5'h0 & _io_toIntDq_needAlloc_1_T_1; // @[Dispatch.scala 265:136]
  assign io_allocPregs_1_isFp = io_fromRename_1_valid & io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 266:54]
  assign io_allocPregs_1_preg = io_fromRename_1_bits_pdest; // @[Dispatch.scala 267:28]
  assign io_toIntDq_needAlloc_0 = io_fromRename_0_valid & isInt_0 & ~io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 231:67]
  assign io_toIntDq_needAlloc_1 = io_fromRename_1_valid & isInt_1 & ~io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 231:67]
  assign io_toIntDq_req_0_valid = _io_toIntDq_req_0_valid_T_3 & io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 233:67]
  assign io_toIntDq_req_0_bits_cf_trigger_backendEn_0 = io_fromRename_0_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendEn_1 = io_fromRename_0_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_pd_brType = io_fromRename_0_bits_cf_pd_brType; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_pd_isCall = io_fromRename_0_bits_cf_pd_isCall; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_pd_isRet = io_fromRename_0_bits_cf_pd_isRet; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_pred_taken = io_fromRename_0_bits_cf_pred_taken; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_storeSetHit = io_fromRename_0_bits_cf_storeSetHit; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_loadWaitStrict = io_fromRename_0_bits_cf_loadWaitStrict; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_srcType_0 = io_fromRename_0_bits_ctrl_srcType_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_srcType_1 = io_fromRename_0_bits_ctrl_srcType_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_srcType_2 = io_fromRename_0_bits_ctrl_srcType_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_selImm = io_fromRename_0_bits_ctrl_selImm; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_imm = io_fromRename_0_bits_ctrl_imm; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_isAddSub = io_fromRename_0_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_typeTagIn = io_fromRename_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_typeTagOut = io_fromRename_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fromInt = io_fromRename_0_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fpWen = io_fromRename_0_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fmaCmd = io_fromRename_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_div = io_fromRename_0_bits_ctrl_fpu_div; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_sqrt = io_fromRename_0_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fcvt = io_fromRename_0_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_typ = io_fromRename_0_bits_ctrl_fpu_typ; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fmt = io_fromRename_0_bits_ctrl_fpu_fmt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_ren3 = io_fromRename_0_bits_ctrl_fpu_ren3; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_rm = io_fromRename_0_bits_ctrl_fpu_rm; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_psrc_0 = _T_8 ? 6'h0 : io_fromRename_0_bits_psrc_0; // @[Dispatch.scala 123:19 132:40 133:29]
  assign io_toIntDq_req_0_bits_psrc_1 = io_fromRename_0_bits_psrc_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_psrc_2 = io_fromRename_0_bits_psrc_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_valid = _io_toIntDq_req_1_valid_T_3 & io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 233:67]
  assign io_toIntDq_req_1_bits_cf_trigger_backendEn_0 = io_fromRename_1_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendEn_1 = io_fromRename_1_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_pd_brType = io_fromRename_1_bits_cf_pd_brType; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_pd_isCall = io_fromRename_1_bits_cf_pd_isCall; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_pd_isRet = io_fromRename_1_bits_cf_pd_isRet; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_pred_taken = io_fromRename_1_bits_cf_pred_taken; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_storeSetHit = io_fromRename_1_bits_cf_storeSetHit; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_loadWaitStrict = io_fromRename_1_bits_cf_loadWaitStrict; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_srcType_0 = io_fromRename_1_bits_ctrl_srcType_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_srcType_1 = io_fromRename_1_bits_ctrl_srcType_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_srcType_2 = io_fromRename_1_bits_ctrl_srcType_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_selImm = io_fromRename_1_bits_ctrl_selImm; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_imm = io_fromRename_1_bits_ctrl_imm; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_isAddSub = io_fromRename_1_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_typeTagIn = io_fromRename_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_typeTagOut = io_fromRename_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fromInt = io_fromRename_1_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fpWen = io_fromRename_1_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fmaCmd = io_fromRename_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_div = io_fromRename_1_bits_ctrl_fpu_div; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_sqrt = io_fromRename_1_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fcvt = io_fromRename_1_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_typ = io_fromRename_1_bits_ctrl_fpu_typ; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fmt = io_fromRename_1_bits_ctrl_fpu_fmt; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_ren3 = io_fromRename_1_bits_ctrl_fpu_ren3; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_rm = io_fromRename_1_bits_ctrl_fpu_rm; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_psrc_0 = _T_19 ? 6'h0 : io_fromRename_1_bits_psrc_0; // @[Dispatch.scala 123:19 132:40 133:29]
  assign io_toIntDq_req_1_bits_psrc_1 = io_fromRename_1_bits_psrc_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_psrc_2 = io_fromRename_1_bits_psrc_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toIntDq_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_needAlloc_0 = io_fromRename_0_valid & isFp_0; // @[Dispatch.scala 236:55]
  assign io_toFpDq_needAlloc_1 = io_fromRename_1_valid & isFp_1; // @[Dispatch.scala 236:55]
  assign io_toFpDq_req_0_valid = _io_toFpDq_req_0_valid_T_1 & io_toIntDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 238:68]
  assign io_toFpDq_req_0_bits_cf_trigger_backendEn_0 = io_fromRename_0_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendEn_1 = io_fromRename_0_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_pd_brType = io_fromRename_0_bits_cf_pd_brType; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_pd_isCall = io_fromRename_0_bits_cf_pd_isCall; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_pd_isRet = io_fromRename_0_bits_cf_pd_isRet; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_pred_taken = io_fromRename_0_bits_cf_pred_taken; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_storeSetHit = io_fromRename_0_bits_cf_storeSetHit; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_loadWaitStrict = io_fromRename_0_bits_cf_loadWaitStrict; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_srcType_0 = io_fromRename_0_bits_ctrl_srcType_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_srcType_1 = io_fromRename_0_bits_ctrl_srcType_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_srcType_2 = io_fromRename_0_bits_ctrl_srcType_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_selImm = io_fromRename_0_bits_ctrl_selImm; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_imm = io_fromRename_0_bits_ctrl_imm; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_isAddSub = io_fromRename_0_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_typeTagIn = io_fromRename_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_typeTagOut = io_fromRename_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fromInt = io_fromRename_0_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fpWen = io_fromRename_0_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fmaCmd = io_fromRename_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_div = io_fromRename_0_bits_ctrl_fpu_div; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_sqrt = io_fromRename_0_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fcvt = io_fromRename_0_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_typ = io_fromRename_0_bits_ctrl_fpu_typ; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fmt = io_fromRename_0_bits_ctrl_fpu_fmt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_ren3 = io_fromRename_0_bits_ctrl_fpu_ren3; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_rm = io_fromRename_0_bits_ctrl_fpu_rm; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_psrc_0 = _T_8 ? 6'h0 : io_fromRename_0_bits_psrc_0; // @[Dispatch.scala 123:19 132:40 133:29]
  assign io_toFpDq_req_0_bits_psrc_1 = io_fromRename_0_bits_psrc_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_psrc_2 = io_fromRename_0_bits_psrc_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_valid = _io_toFpDq_req_1_valid_T_1 & io_toIntDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 238:68]
  assign io_toFpDq_req_1_bits_cf_trigger_backendEn_0 = io_fromRename_1_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendEn_1 = io_fromRename_1_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_pd_brType = io_fromRename_1_bits_cf_pd_brType; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_pd_isCall = io_fromRename_1_bits_cf_pd_isCall; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_pd_isRet = io_fromRename_1_bits_cf_pd_isRet; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_pred_taken = io_fromRename_1_bits_cf_pred_taken; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_storeSetHit = io_fromRename_1_bits_cf_storeSetHit; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_loadWaitStrict = io_fromRename_1_bits_cf_loadWaitStrict; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_srcType_0 = io_fromRename_1_bits_ctrl_srcType_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_srcType_1 = io_fromRename_1_bits_ctrl_srcType_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_srcType_2 = io_fromRename_1_bits_ctrl_srcType_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_selImm = io_fromRename_1_bits_ctrl_selImm; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_imm = io_fromRename_1_bits_ctrl_imm; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_isAddSub = io_fromRename_1_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_typeTagIn = io_fromRename_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_typeTagOut = io_fromRename_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fromInt = io_fromRename_1_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fpWen = io_fromRename_1_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fmaCmd = io_fromRename_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_div = io_fromRename_1_bits_ctrl_fpu_div; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_sqrt = io_fromRename_1_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fcvt = io_fromRename_1_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_typ = io_fromRename_1_bits_ctrl_fpu_typ; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fmt = io_fromRename_1_bits_ctrl_fpu_fmt; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_ren3 = io_fromRename_1_bits_ctrl_fpu_ren3; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_rm = io_fromRename_1_bits_ctrl_fpu_rm; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_psrc_0 = _T_19 ? 6'h0 : io_fromRename_1_bits_psrc_0; // @[Dispatch.scala 123:19 132:40 133:29]
  assign io_toFpDq_req_1_bits_psrc_1 = io_fromRename_1_bits_psrc_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_psrc_2 = io_fromRename_1_bits_psrc_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toFpDq_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_needAlloc_0 = io_fromRename_0_valid & isMem_0; // @[Dispatch.scala 241:55]
  assign io_toLsDq_needAlloc_1 = io_fromRename_1_valid & isMem_1; // @[Dispatch.scala 241:55]
  assign io_toLsDq_req_0_valid = _io_toLsDq_req_0_valid_T_1 & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 243:68]
  assign io_toLsDq_req_0_bits_cf_trigger_backendEn_0 = io_fromRename_0_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendEn_1 = io_fromRename_0_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_pd_brType = io_fromRename_0_bits_cf_pd_brType; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_pd_isCall = io_fromRename_0_bits_cf_pd_isCall; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_pd_isRet = io_fromRename_0_bits_cf_pd_isRet; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_pred_taken = io_fromRename_0_bits_cf_pred_taken; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_storeSetHit = io_fromRename_0_bits_cf_storeSetHit; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_loadWaitStrict = io_fromRename_0_bits_cf_loadWaitStrict; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_srcType_0 = io_fromRename_0_bits_ctrl_srcType_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_srcType_1 = io_fromRename_0_bits_ctrl_srcType_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_srcType_2 = io_fromRename_0_bits_ctrl_srcType_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_selImm = io_fromRename_0_bits_ctrl_selImm; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_imm = io_fromRename_0_bits_ctrl_imm; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_isAddSub = io_fromRename_0_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_typeTagIn = io_fromRename_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_typeTagOut = io_fromRename_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fromInt = io_fromRename_0_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fpWen = io_fromRename_0_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fmaCmd = io_fromRename_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_div = io_fromRename_0_bits_ctrl_fpu_div; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_sqrt = io_fromRename_0_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fcvt = io_fromRename_0_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_typ = io_fromRename_0_bits_ctrl_fpu_typ; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fmt = io_fromRename_0_bits_ctrl_fpu_fmt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_ren3 = io_fromRename_0_bits_ctrl_fpu_ren3; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_rm = io_fromRename_0_bits_ctrl_fpu_rm; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_psrc_0 = _T_8 ? 6'h0 : io_fromRename_0_bits_psrc_0; // @[Dispatch.scala 123:19 132:40 133:29]
  assign io_toLsDq_req_0_bits_psrc_1 = io_fromRename_0_bits_psrc_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_psrc_2 = io_fromRename_0_bits_psrc_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_valid = _io_toLsDq_req_1_valid_T_1 & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 243:68]
  assign io_toLsDq_req_1_bits_cf_trigger_backendEn_0 = io_fromRename_1_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendEn_1 = io_fromRename_1_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_pd_brType = io_fromRename_1_bits_cf_pd_brType; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_pd_isCall = io_fromRename_1_bits_cf_pd_isCall; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_pd_isRet = io_fromRename_1_bits_cf_pd_isRet; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_pred_taken = io_fromRename_1_bits_cf_pred_taken; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_storeSetHit = io_fromRename_1_bits_cf_storeSetHit; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_loadWaitStrict = io_fromRename_1_bits_cf_loadWaitStrict; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_srcType_0 = io_fromRename_1_bits_ctrl_srcType_0; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_srcType_1 = io_fromRename_1_bits_ctrl_srcType_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_srcType_2 = io_fromRename_1_bits_ctrl_srcType_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_selImm = io_fromRename_1_bits_ctrl_selImm; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_imm = io_fromRename_1_bits_ctrl_imm; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_isAddSub = io_fromRename_1_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_typeTagIn = io_fromRename_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_typeTagOut = io_fromRename_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fromInt = io_fromRename_1_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fpWen = io_fromRename_1_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fmaCmd = io_fromRename_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_div = io_fromRename_1_bits_ctrl_fpu_div; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_sqrt = io_fromRename_1_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fcvt = io_fromRename_1_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_typ = io_fromRename_1_bits_ctrl_fpu_typ; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fmt = io_fromRename_1_bits_ctrl_fpu_fmt; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_ren3 = io_fromRename_1_bits_ctrl_fpu_ren3; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_rm = io_fromRename_1_bits_ctrl_fpu_rm; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_psrc_0 = _T_19 ? 6'h0 : io_fromRename_1_bits_psrc_0; // @[Dispatch.scala 123:19 132:40 133:29]
  assign io_toLsDq_req_1_bits_psrc_1 = io_fromRename_1_bits_psrc_1; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_psrc_2 = io_fromRename_1_bits_psrc_2; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 112:24 123:19]
  assign io_toLsDq_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 112:24 123:19]
  assign io_stallReason_backReason_valid = ~io_recv_0; // @[Dispatch.scala 311:38]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{4'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{4'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = {{5'd0}, io_perf_8_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  always @(posedge clock) begin
    io_perf_0_value_REG <= _T_395 + _T_396; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= ~hasValidInstr; // @[Dispatch.scala 358:37]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= io_fromRename_0_valid + io_fromRename_1_valid; // @[Bitwise.scala 48:55]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= _T_80 + _T_82; // @[Bitwise.scala 48:55]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= hasValidInstr & ~io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
      io_toLsDq_canAccept; // @[Dispatch.scala 275:104]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= hasValidInstr & io_enqRob_canAccept & ~io_toIntDq_canAccept & io_toFpDq_canAccept &
      io_toLsDq_canAccept; // @[Dispatch.scala 276:107]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= _stall_int_dq_T & io_toIntDq_canAccept & ~io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 277:106]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= _stall_fp_dq_T_1 & io_toFpDq_canAccept & ~io_toLsDq_canAccept; // @[Dispatch.scala 278:105]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Dispatch.scala 105:28]
      singleStepStatus <= 1'h0; // @[Dispatch.scala 106:22]
    end else if (io_redirect_valid) begin
      singleStepStatus <= 1'h0;
    end else begin
      singleStepStatus <= _GEN_0;
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
  singleStepStatus = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    singleStepStatus = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

