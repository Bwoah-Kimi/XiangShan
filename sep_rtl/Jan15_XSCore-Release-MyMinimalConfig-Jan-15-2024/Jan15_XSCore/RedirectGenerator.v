module RedirectGenerator(
  input         clock,
  input         reset,
  input         io_exuMispredict_0_valid,
  input         io_exuMispredict_0_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_0_bits_uop_cf_pd_brType,
  input         io_exuMispredict_0_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_0_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_0_bits_uop_ctrl_imm,
  input         io_exuMispredict_0_bits_redirect_robIdx_flag,
  input  [4:0]  io_exuMispredict_0_bits_redirect_robIdx_value,
  input         io_exuMispredict_0_bits_redirect_ftqIdx_flag,
  input  [2:0]  io_exuMispredict_0_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_0_bits_redirect_ftqOffset,
  input  [38:0] io_exuMispredict_0_bits_redirect_cfiUpdate_target,
  input         io_exuMispredict_0_bits_redirect_cfiUpdate_isMisPred,
  input         io_exuMispredict_1_valid,
  input         io_exuMispredict_1_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_1_bits_uop_cf_pd_brType,
  input         io_exuMispredict_1_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_1_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_1_bits_uop_ctrl_imm,
  input         io_exuMispredict_1_bits_redirect_robIdx_flag,
  input  [4:0]  io_exuMispredict_1_bits_redirect_robIdx_value,
  input         io_exuMispredict_1_bits_redirect_ftqIdx_flag,
  input  [2:0]  io_exuMispredict_1_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_1_bits_redirect_ftqOffset,
  input         io_exuMispredict_1_bits_redirect_cfiUpdate_taken,
  input         io_exuMispredict_1_bits_redirect_cfiUpdate_isMisPred,
  input         io_exuMispredict_2_valid,
  input         io_exuMispredict_2_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_2_bits_uop_cf_pd_brType,
  input         io_exuMispredict_2_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_2_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_2_bits_uop_ctrl_imm,
  input         io_exuMispredict_2_bits_redirect_robIdx_flag,
  input  [4:0]  io_exuMispredict_2_bits_redirect_robIdx_value,
  input         io_exuMispredict_2_bits_redirect_ftqIdx_flag,
  input  [2:0]  io_exuMispredict_2_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_2_bits_redirect_ftqOffset,
  input         io_exuMispredict_2_bits_redirect_cfiUpdate_taken,
  input         io_exuMispredict_2_bits_redirect_cfiUpdate_isMisPred,
  input         io_loadReplay_valid,
  input         io_loadReplay_bits_robIdx_flag,
  input  [4:0]  io_loadReplay_bits_robIdx_value,
  input         io_loadReplay_bits_ftqIdx_flag,
  input  [2:0]  io_loadReplay_bits_ftqIdx_value,
  input  [2:0]  io_loadReplay_bits_ftqOffset,
  input  [2:0]  io_loadReplay_bits_stFtqIdx_value,
  input  [2:0]  io_loadReplay_bits_stFtqOffset,
  input         io_flush,
  output [2:0]  io_redirectPcRead_ptr_value,
  output [2:0]  io_redirectPcRead_offset,
  input  [38:0] io_redirectPcRead_data,
  output        io_stage2Redirect_valid,
  output        io_stage2Redirect_bits_robIdx_flag,
  output [4:0]  io_stage2Redirect_bits_robIdx_value,
  output        io_stage2Redirect_bits_ftqIdx_flag,
  output [2:0]  io_stage2Redirect_bits_ftqIdx_value,
  output [2:0]  io_stage2Redirect_bits_ftqOffset,
  output        io_stage2Redirect_bits_level,
  output [38:0] io_stage2Redirect_bits_cfiUpdate_pc,
  output        io_stage2Redirect_bits_cfiUpdate_pd_isRVC,
  output [1:0]  io_stage2Redirect_bits_cfiUpdate_pd_brType,
  output        io_stage2Redirect_bits_cfiUpdate_pd_isCall,
  output        io_stage2Redirect_bits_cfiUpdate_pd_isRet,
  output [38:0] io_stage2Redirect_bits_cfiUpdate_target,
  output        io_stage2Redirect_bits_cfiUpdate_taken,
  output        io_stage2Redirect_bits_cfiUpdate_isMisPred,
  output        io_stage2Redirect_bits_debugIsCtrl,
  output        io_stage2Redirect_bits_debugIsMemVio,
  output        io_memPredUpdate_valid,
  output [9:0]  io_memPredUpdate_ldpc,
  output [9:0]  io_memPredUpdate_stpc,
  output [2:0]  io_memPredPcRead_ptr_value,
  output [2:0]  io_memPredPcRead_offset,
  input  [38:0] io_memPredPcRead_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
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
  wire  allRedirect_redirect_valid = io_exuMispredict_0_valid & io_exuMispredict_0_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 146:36]
  wire  allRedirect_redirect_1_valid = io_exuMispredict_1_valid & io_exuMispredict_1_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 146:36]
  wire  allRedirect_redirect_2_valid = io_exuMispredict_2_valid & io_exuMispredict_2_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 146:36]
  wire  oldestOneHot_compareVec_differentFlag = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_exuMispredict_1_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldestOneHot_compareVec_compare = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_exuMispredict_1_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  oldestOneHot_compareVec_1_0 = oldestOneHot_compareVec_differentFlag ^ oldestOneHot_compareVec_compare; // @[CircularQueuePtr.scala 68:19]
  wire  oldestOneHot_compareVec_differentFlag_1 = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_exuMispredict_2_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldestOneHot_compareVec_compare_1 = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_exuMispredict_2_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  oldestOneHot_compareVec_2_0 = oldestOneHot_compareVec_differentFlag_1 ^ oldestOneHot_compareVec_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  oldestOneHot_compareVec_differentFlag_2 = io_exuMispredict_1_bits_redirect_robIdx_flag ^
    io_exuMispredict_2_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldestOneHot_compareVec_compare_2 = io_exuMispredict_1_bits_redirect_robIdx_value >
    io_exuMispredict_2_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  oldestOneHot_compareVec_2_1 = oldestOneHot_compareVec_differentFlag_2 ^ oldestOneHot_compareVec_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  oldestOneHot_compareVec_differentFlag_3 = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldestOneHot_compareVec_compare_3 = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  oldestOneHot_compareVec_3_0 = oldestOneHot_compareVec_differentFlag_3 ^ oldestOneHot_compareVec_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  oldestOneHot_compareVec_differentFlag_4 = io_exuMispredict_1_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldestOneHot_compareVec_compare_4 = io_exuMispredict_1_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  oldestOneHot_compareVec_3_1 = oldestOneHot_compareVec_differentFlag_4 ^ oldestOneHot_compareVec_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  oldestOneHot_compareVec_differentFlag_5 = io_exuMispredict_2_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldestOneHot_compareVec_compare_5 = io_exuMispredict_2_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  oldestOneHot_compareVec_3_2 = oldestOneHot_compareVec_differentFlag_5 ^ oldestOneHot_compareVec_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  _oldestOneHot_resultOnehot_T = ~allRedirect_redirect_1_valid; // @[CtrlBlock.scala 139:12]
  wire  _oldestOneHot_resultOnehot_T_2 = ~allRedirect_redirect_1_valid | ~oldestOneHot_compareVec_1_0; // @[CtrlBlock.scala 139:25]
  wire  _oldestOneHot_resultOnehot_T_3 = ~allRedirect_redirect_2_valid; // @[CtrlBlock.scala 139:12]
  wire  _oldestOneHot_resultOnehot_T_5 = ~allRedirect_redirect_2_valid | ~oldestOneHot_compareVec_2_0; // @[CtrlBlock.scala 139:25]
  wire  _oldestOneHot_resultOnehot_T_8 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_3_0; // @[CtrlBlock.scala 139:25]
  wire [3:0] _oldestOneHot_resultOnehot_T_9 = {allRedirect_redirect_valid,_oldestOneHot_resultOnehot_T_2,
    _oldestOneHot_resultOnehot_T_5,_oldestOneHot_resultOnehot_T_8}; // @[Cat.scala 31:58]
  wire  oldestOneHot_0 = &_oldestOneHot_resultOnehot_T_9; // @[CtrlBlock.scala 140:8]
  wire  _oldestOneHot_resultOnehot_T_12 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_1_0; // @[CtrlBlock.scala 137:32]
  wire  _oldestOneHot_resultOnehot_T_15 = ~allRedirect_redirect_2_valid | ~oldestOneHot_compareVec_2_1; // @[CtrlBlock.scala 139:25]
  wire  _oldestOneHot_resultOnehot_T_18 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_3_1; // @[CtrlBlock.scala 139:25]
  wire [3:0] _oldestOneHot_resultOnehot_T_19 = {_oldestOneHot_resultOnehot_T_12,allRedirect_redirect_1_valid,
    _oldestOneHot_resultOnehot_T_15,_oldestOneHot_resultOnehot_T_18}; // @[Cat.scala 31:58]
  wire  oldestOneHot_1 = &_oldestOneHot_resultOnehot_T_19; // @[CtrlBlock.scala 140:8]
  wire  _oldestOneHot_resultOnehot_T_22 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_2_0; // @[CtrlBlock.scala 137:32]
  wire  _oldestOneHot_resultOnehot_T_24 = _oldestOneHot_resultOnehot_T | oldestOneHot_compareVec_2_1; // @[CtrlBlock.scala 137:32]
  wire  _oldestOneHot_resultOnehot_T_27 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_3_2; // @[CtrlBlock.scala 139:25]
  wire [3:0] _oldestOneHot_resultOnehot_T_28 = {_oldestOneHot_resultOnehot_T_22,_oldestOneHot_resultOnehot_T_24,
    allRedirect_redirect_2_valid,_oldestOneHot_resultOnehot_T_27}; // @[Cat.scala 31:58]
  wire  oldestOneHot_2 = &_oldestOneHot_resultOnehot_T_28; // @[CtrlBlock.scala 140:8]
  wire  _oldestOneHot_resultOnehot_T_31 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_3_0; // @[CtrlBlock.scala 137:32]
  wire  _oldestOneHot_resultOnehot_T_33 = _oldestOneHot_resultOnehot_T | oldestOneHot_compareVec_3_1; // @[CtrlBlock.scala 137:32]
  wire  _oldestOneHot_resultOnehot_T_35 = _oldestOneHot_resultOnehot_T_3 | oldestOneHot_compareVec_3_2; // @[CtrlBlock.scala 137:32]
  wire [3:0] _oldestOneHot_resultOnehot_T_36 = {_oldestOneHot_resultOnehot_T_31,_oldestOneHot_resultOnehot_T_33,
    _oldestOneHot_resultOnehot_T_35,io_loadReplay_valid}; // @[Cat.scala 31:58]
  wire  oldestOneHot_3 = &_oldestOneHot_resultOnehot_T_36; // @[CtrlBlock.scala 140:8]
  wire [5:0] _needFlushVec_flushItself_T_1 = {io_exuMispredict_0_bits_redirect_robIdx_flag,
    io_exuMispredict_0_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _needFlushVec_flushItself_T_2 = {io_stage2Redirect_bits_robIdx_flag,io_stage2Redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _needFlushVec_flushItself_T_3 = _needFlushVec_flushItself_T_1 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlushVec_flushItself = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needFlushVec_differentFlag = io_exuMispredict_0_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlushVec_compare = io_exuMispredict_0_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlushVec_T = needFlushVec_differentFlag ^ needFlushVec_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needFlushVec_T_2 = io_stage2Redirect_valid & (needFlushVec_flushItself | _needFlushVec_T); // @[Rob.scala 143:20]
  wire  needFlushVec_0 = _needFlushVec_T_2 | io_flush; // @[CtrlBlock.scala 156:89]
  wire [5:0] _needFlushVec_flushItself_T_5 = {io_exuMispredict_1_bits_redirect_robIdx_flag,
    io_exuMispredict_1_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlushVec_flushItself_T_7 = _needFlushVec_flushItself_T_5 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlushVec_flushItself_1 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_7; // @[Rob.scala 142:51]
  wire  needFlushVec_differentFlag_1 = io_exuMispredict_1_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag
    ; // @[CircularQueuePtr.scala 66:35]
  wire  needFlushVec_compare_1 = io_exuMispredict_1_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlushVec_T_4 = needFlushVec_differentFlag_1 ^ needFlushVec_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _needFlushVec_T_6 = io_stage2Redirect_valid & (needFlushVec_flushItself_1 | _needFlushVec_T_4); // @[Rob.scala 143:20]
  wire  needFlushVec_1 = _needFlushVec_T_6 | io_flush; // @[CtrlBlock.scala 156:89]
  wire [5:0] _needFlushVec_flushItself_T_9 = {io_exuMispredict_2_bits_redirect_robIdx_flag,
    io_exuMispredict_2_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlushVec_flushItself_T_11 = _needFlushVec_flushItself_T_9 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlushVec_flushItself_2 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_11; // @[Rob.scala 142:51]
  wire  needFlushVec_differentFlag_2 = io_exuMispredict_2_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag
    ; // @[CircularQueuePtr.scala 66:35]
  wire  needFlushVec_compare_2 = io_exuMispredict_2_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlushVec_T_8 = needFlushVec_differentFlag_2 ^ needFlushVec_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _needFlushVec_T_10 = io_stage2Redirect_valid & (needFlushVec_flushItself_2 | _needFlushVec_T_8); // @[Rob.scala 143:20]
  wire  needFlushVec_2 = _needFlushVec_T_10 | io_flush; // @[CtrlBlock.scala 156:89]
  wire [5:0] _needFlushVec_flushItself_T_13 = {io_loadReplay_bits_robIdx_flag,io_loadReplay_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlushVec_flushItself_T_15 = _needFlushVec_flushItself_T_13 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlushVec_flushItself_3 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_15; // @[Rob.scala 142:51]
  wire  needFlushVec_differentFlag_3 = io_loadReplay_bits_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlushVec_compare_3 = io_loadReplay_bits_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlushVec_T_12 = needFlushVec_differentFlag_3 ^ needFlushVec_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _needFlushVec_T_14 = io_stage2Redirect_valid & (needFlushVec_flushItself_3 | _needFlushVec_T_12); // @[Rob.scala 143:20]
  wire  needFlushVec_3 = _needFlushVec_T_14 | io_flush; // @[CtrlBlock.scala 156:89]
  wire  _oldestValid_T_1 = oldestOneHot_0 & ~needFlushVec_0; // @[CtrlBlock.scala 157:82]
  wire  _oldestValid_T_3 = oldestOneHot_1 & ~needFlushVec_1; // @[CtrlBlock.scala 157:82]
  wire  _oldestValid_T_5 = oldestOneHot_2 & ~needFlushVec_2; // @[CtrlBlock.scala 157:82]
  wire  _oldestValid_T_7 = oldestOneHot_3 & ~needFlushVec_3; // @[CtrlBlock.scala 157:82]
  wire [3:0] _oldestValid_T_8 = {_oldestValid_T_7,_oldestValid_T_5,_oldestValid_T_3,_oldestValid_T_1}; // @[CtrlBlock.scala 157:91]
  wire [2:0] _oldestExuOutput_T_390 = oldestOneHot_0 ? io_exuMispredict_0_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_391 = oldestOneHot_1 ? io_exuMispredict_1_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_392 = oldestOneHot_2 ? io_exuMispredict_2_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_393 = _oldestExuOutput_T_390 | _oldestExuOutput_T_391; // @[Mux.scala 27:73]
  wire [2:0] oldestExuOutput_bits_redirect_ftqOffset = _oldestExuOutput_T_393 | _oldestExuOutput_T_392; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_395 = oldestOneHot_0 ? io_exuMispredict_0_bits_redirect_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_396 = oldestOneHot_1 ? io_exuMispredict_1_bits_redirect_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_397 = oldestOneHot_2 ? io_exuMispredict_2_bits_redirect_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_398 = _oldestExuOutput_T_395 | _oldestExuOutput_T_396; // @[Mux.scala 27:73]
  wire [2:0] oldestExuOutput_bits_redirect_ftqIdx_value = _oldestExuOutput_T_398 | _oldestExuOutput_T_397; // @[Mux.scala 27:73]
  wire  oldestExuOutput_bits_redirect_ftqIdx_flag = oldestOneHot_0 & io_exuMispredict_0_bits_redirect_ftqIdx_flag |
    oldestOneHot_1 & io_exuMispredict_1_bits_redirect_ftqIdx_flag | oldestOneHot_2 &
    io_exuMispredict_2_bits_redirect_ftqIdx_flag; // @[Mux.scala 27:73]
  wire [4:0] _oldestExuOutput_T_405 = oldestOneHot_0 ? io_exuMispredict_0_bits_redirect_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _oldestExuOutput_T_406 = oldestOneHot_1 ? io_exuMispredict_1_bits_redirect_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _oldestExuOutput_T_407 = oldestOneHot_2 ? io_exuMispredict_2_bits_redirect_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _oldestExuOutput_T_408 = _oldestExuOutput_T_405 | _oldestExuOutput_T_406; // @[Mux.scala 27:73]
  wire [4:0] oldestExuOutput_bits_redirect_robIdx_value = _oldestExuOutput_T_408 | _oldestExuOutput_T_407; // @[Mux.scala 27:73]
  wire  oldestExuOutput_bits_redirect_robIdx_flag = oldestOneHot_0 & io_exuMispredict_0_bits_redirect_robIdx_flag |
    oldestOneHot_1 & io_exuMispredict_1_bits_redirect_robIdx_flag | oldestOneHot_2 &
    io_exuMispredict_2_bits_redirect_robIdx_flag; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_650 = oldestOneHot_0 ? io_exuMispredict_0_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_651 = oldestOneHot_1 ? io_exuMispredict_1_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_652 = oldestOneHot_2 ? io_exuMispredict_2_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_653 = _oldestExuOutput_T_650 | _oldestExuOutput_T_651; // @[Mux.scala 27:73]
  wire [19:0] oldestExuOutput_bits_uop_ctrl_imm = _oldestExuOutput_T_653 | _oldestExuOutput_T_652; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_805 = oldestOneHot_0 ? io_exuMispredict_0_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_806 = oldestOneHot_1 ? io_exuMispredict_1_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_807 = oldestOneHot_2 ? io_exuMispredict_2_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_808 = _oldestExuOutput_T_805 | _oldestExuOutput_T_806; // @[Mux.scala 27:73]
  wire [2:0] _oldestRedirect_T_521 = oldestOneHot_3 ? io_loadReplay_bits_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestRedirect_T_528 = oldestOneHot_3 ? io_loadReplay_bits_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [4:0] _oldestRedirect_T_542 = oldestOneHot_3 ? io_loadReplay_bits_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  reg [38:0] s1_jumpTarget; // @[Reg.scala 16:16]
  reg [11:0] s1_imm12_reg; // @[CtrlBlock.scala 165:29]
  reg  s1_pd_isRVC; // @[CtrlBlock.scala 166:22]
  reg [1:0] s1_pd_brType; // @[CtrlBlock.scala 166:22]
  reg  s1_pd_isCall; // @[CtrlBlock.scala 166:22]
  reg  s1_pd_isRet; // @[CtrlBlock.scala 166:22]
  reg  s1_redirect_bits_reg_robIdx_flag; // @[CtrlBlock.scala 167:37]
  reg [4:0] s1_redirect_bits_reg_robIdx_value; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_bits_reg_ftqIdx_flag; // @[CtrlBlock.scala 167:37]
  reg [2:0] s1_redirect_bits_reg_ftqIdx_value; // @[CtrlBlock.scala 167:37]
  reg [2:0] s1_redirect_bits_reg_ftqOffset; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_bits_reg_level; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_bits_reg_cfiUpdate_taken; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_bits_reg_cfiUpdate_isMisPred; // @[CtrlBlock.scala 167:37]
  reg [2:0] s1_redirect_bits_reg_stFtqIdx_value; // @[CtrlBlock.scala 167:37]
  reg [2:0] s1_redirect_bits_reg_stFtqOffset; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_bits_reg_debugIsCtrl; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_bits_reg_debugIsMemVio; // @[CtrlBlock.scala 167:37]
  reg  s1_redirect_valid_reg; // @[CtrlBlock.scala 168:38]
  reg  s1_redirect_onehot_0; // @[CtrlBlock.scala 169:35]
  reg  s1_redirect_onehot_3; // @[CtrlBlock.scala 169:35]
  wire [12:0] _brTarget_T_1 = {s1_imm12_reg,1'h0}; // @[Cat.scala 31:58]
  wire  brTarget_signBit = _brTarget_T_1[12]; // @[BitUtils.scala 80:20]
  wire [18:0] _brTarget_T_3 = brTarget_signBit ? 19'h7ffff : 19'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _brTarget_T_4 = {_brTarget_T_3,s1_imm12_reg,1'h0}; // @[Cat.scala 31:58]
  wire  brTarget_signBit_1 = _brTarget_T_4[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _brTarget_T_6 = brTarget_signBit_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _brTarget_T_7 = {_brTarget_T_6,_brTarget_T_3,s1_imm12_reg,1'h0}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_83 = {{25'd0}, io_redirectPcRead_data}; // @[CtrlBlock.scala 178:26]
  wire [63:0] brTarget = _GEN_83 + _brTarget_T_7; // @[CtrlBlock.scala 178:26]
  wire [2:0] _snpc_T = s1_pd_isRVC ? 3'h2 : 3'h4; // @[CtrlBlock.scala 179:27]
  wire [38:0] _GEN_84 = {{36'd0}, _snpc_T}; // @[CtrlBlock.scala 179:22]
  wire [38:0] snpc = io_redirectPcRead_data + _GEN_84; // @[CtrlBlock.scala 179:22]
  wire [63:0] _target_T = s1_redirect_onehot_0 ? {{25'd0}, s1_jumpTarget} : brTarget; // @[CtrlBlock.scala 183:10]
  wire [63:0] _target_T_1 = s1_redirect_bits_reg_cfiUpdate_taken ? _target_T : {{25'd0}, snpc}; // @[CtrlBlock.scala 182:8]
  wire [63:0] target = s1_redirect_onehot_3 ? {{25'd0}, io_redirectPcRead_data} : _target_T_1; // @[CtrlBlock.scala 180:19]
  reg  io_memPredUpdate_valid_REG; // @[CtrlBlock.scala 210:36]
  wire [39:0] io_memPredUpdate_waddr_value = {2'h0,io_redirectPcRead_data[38:1]}; // @[Cat.scala 31:58]
  wire [9:0] _io_memPredUpdate_waddr_T_5 = io_memPredUpdate_waddr_value[9:0] ^ io_memPredUpdate_waddr_value[19:10]; // @[ParallelMux.scala 58:52]
  wire [9:0] _io_memPredUpdate_waddr_T_6 = io_memPredUpdate_waddr_value[29:20] ^ io_memPredUpdate_waddr_value[39:30]; // @[ParallelMux.scala 58:52]
  reg [9:0] io_memPredUpdate_ldpc_REG; // @[CtrlBlock.scala 215:35]
  wire [39:0] io_memPredUpdate_stpc_value = {2'h0,io_memPredPcRead_data[38:1]}; // @[Cat.scala 31:58]
  wire [9:0] _io_memPredUpdate_stpc_T_5 = io_memPredUpdate_stpc_value[9:0] ^ io_memPredUpdate_stpc_value[19:10]; // @[ParallelMux.scala 58:52]
  wire [9:0] _io_memPredUpdate_stpc_T_6 = io_memPredUpdate_stpc_value[29:20] ^ io_memPredUpdate_stpc_value[39:30]; // @[ParallelMux.scala 58:52]
  assign io_redirectPcRead_ptr_value = oldestExuOutput_bits_redirect_ftqIdx_value | _oldestRedirect_T_528; // @[Mux.scala 27:73]
  assign io_redirectPcRead_offset = oldestExuOutput_bits_redirect_ftqOffset | _oldestRedirect_T_521; // @[Mux.scala 27:73]
  assign io_stage2Redirect_valid = s1_redirect_valid_reg & ~io_flush; // @[CtrlBlock.scala 172:52]
  assign io_stage2Redirect_bits_robIdx_flag = s1_redirect_bits_reg_robIdx_flag; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_robIdx_value = s1_redirect_bits_reg_robIdx_value; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_ftqIdx_flag = s1_redirect_bits_reg_ftqIdx_flag; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_ftqIdx_value = s1_redirect_bits_reg_ftqIdx_value; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_ftqOffset = s1_redirect_bits_reg_ftqOffset; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_level = s1_redirect_bits_reg_level; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_cfiUpdate_pc = io_redirectPcRead_data; // @[CtrlBlock.scala 189:22]
  assign io_stage2Redirect_bits_cfiUpdate_pd_isRVC = s1_pd_isRVC; // @[CtrlBlock.scala 190:22]
  assign io_stage2Redirect_bits_cfiUpdate_pd_brType = s1_pd_brType; // @[CtrlBlock.scala 190:22]
  assign io_stage2Redirect_bits_cfiUpdate_pd_isCall = s1_pd_isCall; // @[CtrlBlock.scala 190:22]
  assign io_stage2Redirect_bits_cfiUpdate_pd_isRet = s1_pd_isRet; // @[CtrlBlock.scala 190:22]
  assign io_stage2Redirect_bits_cfiUpdate_target = target[38:0]; // @[CtrlBlock.scala 192:26]
  assign io_stage2Redirect_bits_cfiUpdate_taken = s1_redirect_bits_reg_cfiUpdate_taken; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_cfiUpdate_isMisPred = s1_redirect_bits_reg_cfiUpdate_isMisPred; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_debugIsCtrl = s1_redirect_bits_reg_debugIsCtrl; // @[CtrlBlock.scala 173:26]
  assign io_stage2Redirect_bits_debugIsMemVio = s1_redirect_bits_reg_debugIsMemVio; // @[CtrlBlock.scala 173:26]
  assign io_memPredUpdate_valid = io_memPredUpdate_valid_REG; // @[CtrlBlock.scala 210:26]
  assign io_memPredUpdate_ldpc = io_memPredUpdate_ldpc_REG; // @[CtrlBlock.scala 215:25]
  assign io_memPredUpdate_stpc = _io_memPredUpdate_stpc_T_5 ^ _io_memPredUpdate_stpc_T_6; // @[ParallelMux.scala 58:52]
  assign io_memPredPcRead_ptr_value = s1_redirect_bits_reg_stFtqIdx_value; // @[NewFtq.scala 164:14]
  assign io_memPredPcRead_offset = s1_redirect_bits_reg_stFtqOffset; // @[NewFtq.scala 165:17]
  always @(posedge clock) begin
    if (io_exuMispredict_0_valid) begin // @[Reg.scala 17:18]
      s1_jumpTarget <= io_exuMispredict_0_bits_redirect_cfiUpdate_target; // @[Reg.scala 17:22]
    end
    s1_imm12_reg <= oldestExuOutput_bits_uop_ctrl_imm[11:0]; // @[CtrlBlock.scala 165:63]
    s1_pd_isRVC <= oldestOneHot_0 & io_exuMispredict_0_bits_uop_cf_pd_isRVC | oldestOneHot_1 &
      io_exuMispredict_1_bits_uop_cf_pd_isRVC | oldestOneHot_2 & io_exuMispredict_2_bits_uop_cf_pd_isRVC; // @[Mux.scala 27:73]
    s1_pd_brType <= _oldestExuOutput_T_808 | _oldestExuOutput_T_807; // @[Mux.scala 27:73]
    s1_pd_isCall <= oldestOneHot_0 & io_exuMispredict_0_bits_uop_cf_pd_isCall | oldestOneHot_1 &
      io_exuMispredict_1_bits_uop_cf_pd_isCall | oldestOneHot_2 & io_exuMispredict_2_bits_uop_cf_pd_isCall; // @[Mux.scala 27:73]
    s1_pd_isRet <= oldestOneHot_0 & io_exuMispredict_0_bits_uop_cf_pd_isRet | oldestOneHot_1 &
      io_exuMispredict_1_bits_uop_cf_pd_isRet | oldestOneHot_2 & io_exuMispredict_2_bits_uop_cf_pd_isRet; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_robIdx_flag <= oldestExuOutput_bits_redirect_robIdx_flag | oldestOneHot_3 &
      io_loadReplay_bits_robIdx_flag; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_robIdx_value <= oldestExuOutput_bits_redirect_robIdx_value | _oldestRedirect_T_542; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_ftqIdx_flag <= oldestExuOutput_bits_redirect_ftqIdx_flag | oldestOneHot_3 &
      io_loadReplay_bits_ftqIdx_flag; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_ftqIdx_value <= oldestExuOutput_bits_redirect_ftqIdx_value | _oldestRedirect_T_528; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_ftqOffset <= oldestExuOutput_bits_redirect_ftqOffset | _oldestRedirect_T_521; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_level <= &_oldestOneHot_resultOnehot_T_36; // @[CtrlBlock.scala 140:8]
    s1_redirect_bits_reg_cfiUpdate_taken <= oldestOneHot_0 | oldestOneHot_1 &
      io_exuMispredict_1_bits_redirect_cfiUpdate_taken | oldestOneHot_2 &
      io_exuMispredict_2_bits_redirect_cfiUpdate_taken; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_cfiUpdate_isMisPred <= oldestOneHot_0 & io_exuMispredict_0_bits_redirect_cfiUpdate_isMisPred |
      oldestOneHot_1 & io_exuMispredict_1_bits_redirect_cfiUpdate_isMisPred | oldestOneHot_2 &
      io_exuMispredict_2_bits_redirect_cfiUpdate_isMisPred; // @[Mux.scala 27:73]
    if (oldestOneHot_3) begin // @[Mux.scala 27:73]
      s1_redirect_bits_reg_stFtqIdx_value <= io_loadReplay_bits_stFtqIdx_value;
    end else begin
      s1_redirect_bits_reg_stFtqIdx_value <= 3'h0;
    end
    if (oldestOneHot_3) begin // @[Mux.scala 27:73]
      s1_redirect_bits_reg_stFtqOffset <= io_loadReplay_bits_stFtqOffset;
    end else begin
      s1_redirect_bits_reg_stFtqOffset <= 3'h0;
    end
    s1_redirect_bits_reg_debugIsCtrl <= oldestOneHot_0 | oldestOneHot_1 | oldestOneHot_2; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_debugIsMemVio <= &_oldestOneHot_resultOnehot_T_36; // @[CtrlBlock.scala 140:8]
    s1_redirect_valid_reg <= |_oldestValid_T_8; // @[CtrlBlock.scala 157:98]
    s1_redirect_onehot_0 <= &_oldestOneHot_resultOnehot_T_9; // @[CtrlBlock.scala 140:8]
    s1_redirect_onehot_3 <= &_oldestOneHot_resultOnehot_T_36; // @[CtrlBlock.scala 140:8]
    io_memPredUpdate_ldpc_REG <= _io_memPredUpdate_waddr_T_5 ^ _io_memPredUpdate_waddr_T_6; // @[ParallelMux.scala 58:52]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 210:49]
      io_memPredUpdate_valid_REG <= 1'h0;
    end else begin
      io_memPredUpdate_valid_REG <= s1_redirect_onehot_3 & s1_redirect_valid_reg;
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
  _RAND_0 = {2{`RANDOM}};
  s1_jumpTarget = _RAND_0[38:0];
  _RAND_1 = {1{`RANDOM}};
  s1_imm12_reg = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  s1_pd_isRVC = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s1_pd_brType = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  s1_pd_isCall = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_pd_isRet = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_redirect_bits_reg_robIdx_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_redirect_bits_reg_robIdx_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  s1_redirect_bits_reg_ftqIdx_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_redirect_bits_reg_ftqIdx_value = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  s1_redirect_bits_reg_ftqOffset = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  s1_redirect_bits_reg_level = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s1_redirect_bits_reg_cfiUpdate_taken = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s1_redirect_bits_reg_cfiUpdate_isMisPred = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s1_redirect_bits_reg_stFtqIdx_value = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  s1_redirect_bits_reg_stFtqOffset = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  s1_redirect_bits_reg_debugIsCtrl = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s1_redirect_bits_reg_debugIsMemVio = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s1_redirect_valid_reg = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s1_redirect_onehot_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s1_redirect_onehot_3 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_memPredUpdate_valid_REG = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_memPredUpdate_ldpc_REG = _RAND_22[9:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    io_memPredUpdate_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

