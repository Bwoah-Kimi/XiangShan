module StatusArray_2(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  output [7:0] io_isValid,
  output [7:0] io_isValidNext,
  output [7:0] io_canIssue,
  output [7:0] io_flushed,
  input        io_update_0_enable,
  input  [7:0] io_update_0_addr,
  input        io_update_0_data_srcState_0,
  input        io_update_0_data_srcState_1,
  input  [5:0] io_update_0_data_psrc_0,
  input  [5:0] io_update_0_data_psrc_1,
  input  [1:0] io_update_0_data_srcType_0,
  input  [1:0] io_update_0_data_srcType_1,
  input        io_update_0_data_robIdx_flag,
  input  [4:0] io_update_0_data_robIdx_value,
  input        io_wakeup_0_valid,
  input        io_wakeup_0_bits_ctrl_rfWen,
  input  [5:0] io_wakeup_0_bits_pdest,
  input        io_wakeup_1_valid,
  input        io_wakeup_1_bits_ctrl_rfWen,
  input  [5:0] io_wakeup_1_bits_pdest,
  input        io_wakeup_2_valid,
  input        io_wakeup_2_bits_ctrl_rfWen,
  input  [5:0] io_wakeup_2_bits_pdest,
  input        io_wakeup_3_valid,
  input        io_wakeup_3_bits_ctrl_rfWen,
  input  [5:0] io_wakeup_3_bits_pdest,
  input        io_wakeup_4_valid,
  input        io_wakeup_4_bits_ctrl_rfWen,
  input  [5:0] io_wakeup_4_bits_pdest,
  output [4:0] io_wakeupMatch_0_0,
  output [4:0] io_wakeupMatch_0_1,
  output [4:0] io_wakeupMatch_1_0,
  output [4:0] io_wakeupMatch_1_1,
  output [4:0] io_wakeupMatch_2_0,
  output [4:0] io_wakeupMatch_2_1,
  output [4:0] io_wakeupMatch_3_0,
  output [4:0] io_wakeupMatch_3_1,
  output [4:0] io_wakeupMatch_4_0,
  output [4:0] io_wakeupMatch_4_1,
  output [4:0] io_wakeupMatch_5_0,
  output [4:0] io_wakeupMatch_5_1,
  output [4:0] io_wakeupMatch_6_0,
  output [4:0] io_wakeupMatch_6_1,
  output [4:0] io_wakeupMatch_7_0,
  output [4:0] io_wakeupMatch_7_1,
  input        io_deqResp_0_valid,
  input  [7:0] io_deqResp_0_bits_rsMask,
  input        io_deqResp_0_bits_success,
  input        io_deqResp_1_valid,
  input  [7:0] io_deqResp_1_bits_rsMask,
  input        io_deqResp_1_bits_success,
  input        io_deqResp_2_valid,
  input  [7:0] io_deqResp_2_bits_rsMask,
  input        io_deqResp_2_bits_success
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
`endif // RANDOMIZE_REG_INIT
  reg  statusArrayValid_0; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_1; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_2; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_3; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_4; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_5; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_6; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_7; // @[StatusArray.scala 105:33]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_0_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_0_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_1_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_2_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_3_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_4_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_5_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_6_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_7_robIdx_value; // @[StatusArray.scala 107:24]
  wire  updateVec_0 = io_update_0_enable & io_update_0_addr[0]; // @[StatusArray.scala 148:57]
  wire  updateValid_0 = |updateVec_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_0_psrc_1 = updateValid_0 ? io_update_0_data_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_9 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_9 = pdestMatch_9 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_1 = io_wakeup_4_valid & stateCond_9; // @[StatusArray.scala 129:16]
  wire  pdestMatch_8 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_8 = pdestMatch_8 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_1 = io_wakeup_3_valid & stateCond_8; // @[StatusArray.scala 129:16]
  wire  pdestMatch_7 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_7 = pdestMatch_7 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_1 = io_wakeup_2_valid & stateCond_7; // @[StatusArray.scala 129:16]
  wire  pdestMatch_6 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_6 = pdestMatch_6 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_1 = io_wakeup_1_valid & stateCond_6; // @[StatusArray.scala 129:16]
  wire  pdestMatch_5 = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_5 = pdestMatch_5 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_1 = io_wakeup_0_valid & stateCond_5; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_1 = {stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,stateMatchVec_1_1,
    stateMatchVec_0_1}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 131:52]
  wire  _T_418 = updateValid_0 ? io_update_0_data_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_418; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_0_psrc_0 = updateValid_0 ? io_update_0_data_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_4 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_4 = pdestMatch_4 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4 = io_wakeup_4_valid & stateCond_4; // @[StatusArray.scala 129:16]
  wire  pdestMatch_3 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_3 = pdestMatch_3 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3 = io_wakeup_3_valid & stateCond_3; // @[StatusArray.scala 129:16]
  wire  pdestMatch_2 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_2 = pdestMatch_2 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2 = io_wakeup_2_valid & stateCond_2; // @[StatusArray.scala 129:16]
  wire  pdestMatch_1 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_1 = pdestMatch_1 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1 = io_wakeup_1_valid & stateCond_1; // @[StatusArray.scala 129:16]
  wire  pdestMatch = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond = pdestMatch & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0 = io_wakeup_0_valid & stateCond; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T = {stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 131:52]
  wire  _T_416 = updateValid_0 ? io_update_0_data_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_416; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_0 = &_readyVecNext_T; // @[StatusArray.scala 61:38]
  wire  updateVec_1_0 = io_update_0_enable & io_update_0_addr[1]; // @[StatusArray.scala 148:57]
  wire  updateValid_1 = |updateVec_1_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_1_psrc_1 = updateValid_1 ? io_update_0_data_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_19 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_19 = pdestMatch_19 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_3 = io_wakeup_4_valid & stateCond_19; // @[StatusArray.scala 129:16]
  wire  pdestMatch_18 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_18 = pdestMatch_18 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_3 = io_wakeup_3_valid & stateCond_18; // @[StatusArray.scala 129:16]
  wire  pdestMatch_17 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_17 = pdestMatch_17 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_3 = io_wakeup_2_valid & stateCond_17; // @[StatusArray.scala 129:16]
  wire  pdestMatch_16 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_16 = pdestMatch_16 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_3 = io_wakeup_1_valid & stateCond_16; // @[StatusArray.scala 129:16]
  wire  pdestMatch_15 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_15 = pdestMatch_15 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_3 = io_wakeup_0_valid & stateCond_15; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_3 = {stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,stateMatchVec_1_3,
    stateMatchVec_0_3}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_3; // @[StatusArray.scala 131:52]
  wire  _T_457 = updateValid_1 ? io_update_0_data_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_457; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_1_psrc_0 = updateValid_1 ? io_update_0_data_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_14 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_14 = pdestMatch_14 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_2 = io_wakeup_4_valid & stateCond_14; // @[StatusArray.scala 129:16]
  wire  pdestMatch_13 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_13 = pdestMatch_13 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_2 = io_wakeup_3_valid & stateCond_13; // @[StatusArray.scala 129:16]
  wire  pdestMatch_12 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_12 = pdestMatch_12 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_2 = io_wakeup_2_valid & stateCond_12; // @[StatusArray.scala 129:16]
  wire  pdestMatch_11 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_11 = pdestMatch_11 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_2 = io_wakeup_1_valid & stateCond_11; // @[StatusArray.scala 129:16]
  wire  pdestMatch_10 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_10 = pdestMatch_10 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_2 = io_wakeup_0_valid & stateCond_10; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_2 = {stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,stateMatchVec_1_2,
    stateMatchVec_0_2}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_2; // @[StatusArray.scala 131:52]
  wire  _T_455 = updateValid_1 ? io_update_0_data_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_455; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5; // @[StatusArray.scala 61:38]
  wire  updateVec_2_0 = io_update_0_enable & io_update_0_addr[2]; // @[StatusArray.scala 148:57]
  wire  updateValid_2 = |updateVec_2_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_2_psrc_1 = updateValid_2 ? io_update_0_data_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_29 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_29 = pdestMatch_29 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_5 = io_wakeup_4_valid & stateCond_29; // @[StatusArray.scala 129:16]
  wire  pdestMatch_28 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_28 = pdestMatch_28 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_5 = io_wakeup_3_valid & stateCond_28; // @[StatusArray.scala 129:16]
  wire  pdestMatch_27 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_27 = pdestMatch_27 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_5 = io_wakeup_2_valid & stateCond_27; // @[StatusArray.scala 129:16]
  wire  pdestMatch_26 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_26 = pdestMatch_26 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_5 = io_wakeup_1_valid & stateCond_26; // @[StatusArray.scala 129:16]
  wire  pdestMatch_25 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_25 = pdestMatch_25 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_5 = io_wakeup_0_valid & stateCond_25; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_5 = {stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,stateMatchVec_1_5,
    stateMatchVec_0_5}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_5; // @[StatusArray.scala 131:52]
  wire  _T_496 = updateValid_2 ? io_update_0_data_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_496; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_2_psrc_0 = updateValid_2 ? io_update_0_data_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_24 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_24 = pdestMatch_24 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_4 = io_wakeup_4_valid & stateCond_24; // @[StatusArray.scala 129:16]
  wire  pdestMatch_23 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_23 = pdestMatch_23 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_4 = io_wakeup_3_valid & stateCond_23; // @[StatusArray.scala 129:16]
  wire  pdestMatch_22 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_22 = pdestMatch_22 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_4 = io_wakeup_2_valid & stateCond_22; // @[StatusArray.scala 129:16]
  wire  pdestMatch_21 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_21 = pdestMatch_21 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_4 = io_wakeup_1_valid & stateCond_21; // @[StatusArray.scala 129:16]
  wire  pdestMatch_20 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_20 = pdestMatch_20 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_4 = io_wakeup_0_valid & stateCond_20; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_4 = {stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,stateMatchVec_1_4,
    stateMatchVec_0_4}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_4; // @[StatusArray.scala 131:52]
  wire  _T_494 = updateValid_2 ? io_update_0_data_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_494; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10; // @[StatusArray.scala 61:38]
  wire  updateVec_3_0 = io_update_0_enable & io_update_0_addr[3]; // @[StatusArray.scala 148:57]
  wire  updateValid_3 = |updateVec_3_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_3_psrc_1 = updateValid_3 ? io_update_0_data_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_39 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_39 = pdestMatch_39 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_7 = io_wakeup_4_valid & stateCond_39; // @[StatusArray.scala 129:16]
  wire  pdestMatch_38 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_38 = pdestMatch_38 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_7 = io_wakeup_3_valid & stateCond_38; // @[StatusArray.scala 129:16]
  wire  pdestMatch_37 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_37 = pdestMatch_37 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_7 = io_wakeup_2_valid & stateCond_37; // @[StatusArray.scala 129:16]
  wire  pdestMatch_36 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_36 = pdestMatch_36 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_7 = io_wakeup_1_valid & stateCond_36; // @[StatusArray.scala 129:16]
  wire  pdestMatch_35 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_35 = pdestMatch_35 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_7 = io_wakeup_0_valid & stateCond_35; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_7 = {stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,stateMatchVec_1_7,
    stateMatchVec_0_7}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_7; // @[StatusArray.scala 131:52]
  wire  _T_535 = updateValid_3 ? io_update_0_data_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_535; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_3_psrc_0 = updateValid_3 ? io_update_0_data_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_34 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_34 = pdestMatch_34 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_6 = io_wakeup_4_valid & stateCond_34; // @[StatusArray.scala 129:16]
  wire  pdestMatch_33 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_33 = pdestMatch_33 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_6 = io_wakeup_3_valid & stateCond_33; // @[StatusArray.scala 129:16]
  wire  pdestMatch_32 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_32 = pdestMatch_32 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_6 = io_wakeup_2_valid & stateCond_32; // @[StatusArray.scala 129:16]
  wire  pdestMatch_31 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_31 = pdestMatch_31 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_6 = io_wakeup_1_valid & stateCond_31; // @[StatusArray.scala 129:16]
  wire  pdestMatch_30 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_30 = pdestMatch_30 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_6 = io_wakeup_0_valid & stateCond_30; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_6 = {stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,stateMatchVec_1_6,
    stateMatchVec_0_6}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_6; // @[StatusArray.scala 131:52]
  wire  _T_533 = updateValid_3 ? io_update_0_data_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_533; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15; // @[StatusArray.scala 61:38]
  wire  updateVec_4_0 = io_update_0_enable & io_update_0_addr[4]; // @[StatusArray.scala 148:57]
  wire  updateValid_4 = |updateVec_4_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_4_psrc_1 = updateValid_4 ? io_update_0_data_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_49 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_49 = pdestMatch_49 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_9 = io_wakeup_4_valid & stateCond_49; // @[StatusArray.scala 129:16]
  wire  pdestMatch_48 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_48 = pdestMatch_48 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_9 = io_wakeup_3_valid & stateCond_48; // @[StatusArray.scala 129:16]
  wire  pdestMatch_47 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_47 = pdestMatch_47 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_9 = io_wakeup_2_valid & stateCond_47; // @[StatusArray.scala 129:16]
  wire  pdestMatch_46 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_46 = pdestMatch_46 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_9 = io_wakeup_1_valid & stateCond_46; // @[StatusArray.scala 129:16]
  wire  pdestMatch_45 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_45 = pdestMatch_45 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_9 = io_wakeup_0_valid & stateCond_45; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_9 = {stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,stateMatchVec_1_9,
    stateMatchVec_0_9}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_9; // @[StatusArray.scala 131:52]
  wire  _T_574 = updateValid_4 ? io_update_0_data_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_574; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_4_psrc_0 = updateValid_4 ? io_update_0_data_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_44 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_44 = pdestMatch_44 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_8 = io_wakeup_4_valid & stateCond_44; // @[StatusArray.scala 129:16]
  wire  pdestMatch_43 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_43 = pdestMatch_43 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_8 = io_wakeup_3_valid & stateCond_43; // @[StatusArray.scala 129:16]
  wire  pdestMatch_42 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_42 = pdestMatch_42 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_8 = io_wakeup_2_valid & stateCond_42; // @[StatusArray.scala 129:16]
  wire  pdestMatch_41 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_41 = pdestMatch_41 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_8 = io_wakeup_1_valid & stateCond_41; // @[StatusArray.scala 129:16]
  wire  pdestMatch_40 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_40 = pdestMatch_40 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_8 = io_wakeup_0_valid & stateCond_40; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_8 = {stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,stateMatchVec_1_8,
    stateMatchVec_0_8}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_8; // @[StatusArray.scala 131:52]
  wire  _T_572 = updateValid_4 ? io_update_0_data_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_572; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20; // @[StatusArray.scala 61:38]
  wire  updateVec_5_0 = io_update_0_enable & io_update_0_addr[5]; // @[StatusArray.scala 148:57]
  wire  updateValid_5 = |updateVec_5_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_5_psrc_1 = updateValid_5 ? io_update_0_data_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_59 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_59 = pdestMatch_59 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_11 = io_wakeup_4_valid & stateCond_59; // @[StatusArray.scala 129:16]
  wire  pdestMatch_58 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_58 = pdestMatch_58 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_11 = io_wakeup_3_valid & stateCond_58; // @[StatusArray.scala 129:16]
  wire  pdestMatch_57 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_57 = pdestMatch_57 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_11 = io_wakeup_2_valid & stateCond_57; // @[StatusArray.scala 129:16]
  wire  pdestMatch_56 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_56 = pdestMatch_56 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_11 = io_wakeup_1_valid & stateCond_56; // @[StatusArray.scala 129:16]
  wire  pdestMatch_55 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_55 = pdestMatch_55 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_11 = io_wakeup_0_valid & stateCond_55; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_11 = {stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,stateMatchVec_1_11,
    stateMatchVec_0_11}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_11; // @[StatusArray.scala 131:52]
  wire  _T_613 = updateValid_5 ? io_update_0_data_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_613; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_5_psrc_0 = updateValid_5 ? io_update_0_data_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_54 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_54 = pdestMatch_54 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_10 = io_wakeup_4_valid & stateCond_54; // @[StatusArray.scala 129:16]
  wire  pdestMatch_53 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_53 = pdestMatch_53 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_10 = io_wakeup_3_valid & stateCond_53; // @[StatusArray.scala 129:16]
  wire  pdestMatch_52 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_52 = pdestMatch_52 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_10 = io_wakeup_2_valid & stateCond_52; // @[StatusArray.scala 129:16]
  wire  pdestMatch_51 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_51 = pdestMatch_51 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_10 = io_wakeup_1_valid & stateCond_51; // @[StatusArray.scala 129:16]
  wire  pdestMatch_50 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_50 = pdestMatch_50 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_10 = io_wakeup_0_valid & stateCond_50; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_10 = {stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,stateMatchVec_1_10,
    stateMatchVec_0_10}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_10; // @[StatusArray.scala 131:52]
  wire  _T_611 = updateValid_5 ? io_update_0_data_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_611; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25; // @[StatusArray.scala 61:38]
  wire  updateVec_6_0 = io_update_0_enable & io_update_0_addr[6]; // @[StatusArray.scala 148:57]
  wire  updateValid_6 = |updateVec_6_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_6_psrc_1 = updateValid_6 ? io_update_0_data_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_69 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_69 = pdestMatch_69 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_13 = io_wakeup_4_valid & stateCond_69; // @[StatusArray.scala 129:16]
  wire  pdestMatch_68 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_68 = pdestMatch_68 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_13 = io_wakeup_3_valid & stateCond_68; // @[StatusArray.scala 129:16]
  wire  pdestMatch_67 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_67 = pdestMatch_67 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_13 = io_wakeup_2_valid & stateCond_67; // @[StatusArray.scala 129:16]
  wire  pdestMatch_66 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_66 = pdestMatch_66 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_13 = io_wakeup_1_valid & stateCond_66; // @[StatusArray.scala 129:16]
  wire  pdestMatch_65 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_65 = pdestMatch_65 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_13 = io_wakeup_0_valid & stateCond_65; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_13 = {stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,stateMatchVec_1_13,
    stateMatchVec_0_13}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_13; // @[StatusArray.scala 131:52]
  wire  _T_652 = updateValid_6 ? io_update_0_data_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_652; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_6_psrc_0 = updateValid_6 ? io_update_0_data_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_64 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_64 = pdestMatch_64 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_12 = io_wakeup_4_valid & stateCond_64; // @[StatusArray.scala 129:16]
  wire  pdestMatch_63 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_63 = pdestMatch_63 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_12 = io_wakeup_3_valid & stateCond_63; // @[StatusArray.scala 129:16]
  wire  pdestMatch_62 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_62 = pdestMatch_62 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_12 = io_wakeup_2_valid & stateCond_62; // @[StatusArray.scala 129:16]
  wire  pdestMatch_61 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_61 = pdestMatch_61 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_12 = io_wakeup_1_valid & stateCond_61; // @[StatusArray.scala 129:16]
  wire  pdestMatch_60 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_60 = pdestMatch_60 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_12 = io_wakeup_0_valid & stateCond_60; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_12 = {stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,stateMatchVec_1_12,
    stateMatchVec_0_12}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_12; // @[StatusArray.scala 131:52]
  wire  _T_650 = updateValid_6 ? io_update_0_data_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_650; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30; // @[StatusArray.scala 61:38]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 148:57]
  wire  updateValid_7 = |updateVec_7_0; // @[StatusArray.scala 151:23]
  wire [5:0] statusArrayNext_7_psrc_1 = updateValid_7 ? io_update_0_data_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_79 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_79 = pdestMatch_79 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_15 = io_wakeup_4_valid & stateCond_79; // @[StatusArray.scala 129:16]
  wire  pdestMatch_78 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_78 = pdestMatch_78 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_15 = io_wakeup_3_valid & stateCond_78; // @[StatusArray.scala 129:16]
  wire  pdestMatch_77 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_77 = pdestMatch_77 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_15 = io_wakeup_2_valid & stateCond_77; // @[StatusArray.scala 129:16]
  wire  pdestMatch_76 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_76 = pdestMatch_76 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_15 = io_wakeup_1_valid & stateCond_76; // @[StatusArray.scala 129:16]
  wire  pdestMatch_75 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_75 = pdestMatch_75 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_15 = io_wakeup_0_valid & stateCond_75; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_15 = {stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,stateMatchVec_1_15,
    stateMatchVec_0_15}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_15; // @[StatusArray.scala 131:52]
  wire  _T_691 = updateValid_7 ? io_update_0_data_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_691; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_7_psrc_0 = updateValid_7 ? io_update_0_data_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_74 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_74 = pdestMatch_74 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_14 = io_wakeup_4_valid & stateCond_74; // @[StatusArray.scala 129:16]
  wire  pdestMatch_73 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_73 = pdestMatch_73 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_14 = io_wakeup_3_valid & stateCond_73; // @[StatusArray.scala 129:16]
  wire  pdestMatch_72 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_72 = pdestMatch_72 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_14 = io_wakeup_2_valid & stateCond_72; // @[StatusArray.scala 129:16]
  wire  pdestMatch_71 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_71 = pdestMatch_71 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_14 = io_wakeup_1_valid & stateCond_71; // @[StatusArray.scala 129:16]
  wire  pdestMatch_70 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_70 = pdestMatch_70 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_14 = io_wakeup_0_valid & stateCond_70; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_14 = {stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,stateMatchVec_1_14,
    stateMatchVec_0_14}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_14; // @[StatusArray.scala 131:52]
  wire  _T_689 = updateValid_7 ? io_update_0_data_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_689; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35; // @[StatusArray.scala 61:38]
  wire  mask__0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_205 = {mask__2,mask__1,mask__0}; // @[StatusArray.scala 139:63]
  wire  deqValid = |_T_205; // @[StatusArray.scala 140:32]
  wire  xs_0 = mask__0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1 = mask__1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2 = mask__2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_207 = xs_0 | (xs_1 | xs_2); // @[ParallelMux.scala 36:53]
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_228 = {mask_1_2,mask_1_1,mask_1_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_1 = |_T_228; // @[StatusArray.scala 140:32]
  wire  xs_0_1 = mask_1_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_1 = mask_1_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_1 = mask_1_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_230 = xs_0_1 | (xs_1_1 | xs_2_1); // @[ParallelMux.scala 36:53]
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_251 = {mask_2_2,mask_2_1,mask_2_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_2 = |_T_251; // @[StatusArray.scala 140:32]
  wire  xs_0_2 = mask_2_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_2 = mask_2_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_2 = mask_2_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_253 = xs_0_2 | (xs_1_2 | xs_2_2); // @[ParallelMux.scala 36:53]
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_274 = {mask_3_2,mask_3_1,mask_3_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_3 = |_T_274; // @[StatusArray.scala 140:32]
  wire  xs_0_3 = mask_3_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_3 = mask_3_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_3 = mask_3_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_276 = xs_0_3 | (xs_1_3 | xs_2_3); // @[ParallelMux.scala 36:53]
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_297 = {mask_4_2,mask_4_1,mask_4_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_4 = |_T_297; // @[StatusArray.scala 140:32]
  wire  xs_0_4 = mask_4_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_4 = mask_4_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_4 = mask_4_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_299 = xs_0_4 | (xs_1_4 | xs_2_4); // @[ParallelMux.scala 36:53]
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_320 = {mask_5_2,mask_5_1,mask_5_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_5 = |_T_320; // @[StatusArray.scala 140:32]
  wire  xs_0_5 = mask_5_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_5 = mask_5_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_5 = mask_5_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_322 = xs_0_5 | (xs_1_5 | xs_2_5); // @[ParallelMux.scala 36:53]
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_343 = {mask_6_2,mask_6_1,mask_6_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_6 = |_T_343; // @[StatusArray.scala 140:32]
  wire  xs_0_6 = mask_6_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_6 = mask_6_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_6 = mask_6_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_345 = xs_0_6 | (xs_1_6 | xs_2_6); // @[ParallelMux.scala 36:53]
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire [2:0] _T_366 = {mask_7_2,mask_7_1,mask_7_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_7 = |_T_366; // @[StatusArray.scala 140:32]
  wire  xs_0_7 = mask_7_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_7 = mask_7_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_7 = mask_7_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_368 = xs_0_7 | (xs_1_7 | xs_2_7); // @[ParallelMux.scala 36:53]
  wire  realValid = updateValid_0 | statusArrayValid_0; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_0_robIdx_flag = updateValid_0 ? io_update_0_data_robIdx_flag : statusArray_0_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_0_robIdx_value = updateValid_0 ? io_update_0_data_robIdx_value : statusArray_0_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_1 = {statusArrayNext_0_robIdx_flag,statusArrayNext_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag = statusArrayNext_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare = statusArrayNext_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 143:20]
  wire  _flushedVec_0_T_1 = deqValid & _T_207; // @[StatusArray.scala 166:64]
  wire  flushedVec_0 = realValid & isFlushed | deqValid & _T_207; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_0 = realValid & ~(isFlushed | _flushedVec_0_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? io_update_0_data_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond = pdestMatch & (rfDataMatch & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0 = io_wakeup_0_valid & dataCond; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_1 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_1 = pdestMatch_1 & (rfDataMatch_1 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1 = io_wakeup_1_valid & dataCond_1; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_2 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_2 = pdestMatch_2 & (rfDataMatch_2 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2 = io_wakeup_2_valid & dataCond_2; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_3 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_3 = pdestMatch_3 & (rfDataMatch_3 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3 = io_wakeup_3_valid & dataCond_3; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_4 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_4 = pdestMatch_4 & (rfDataMatch_4 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4 = io_wakeup_4_valid & dataCond_4; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0 = {dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? io_update_0_data_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_5 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_25 = statusArrayNext_0_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_5 = pdestMatch_5 & (rfDataMatch_5 & _dataCond_T_25); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_1 = io_wakeup_0_valid & dataCond_5; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_6 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_6 = pdestMatch_6 & (rfDataMatch_6 & _dataCond_T_25); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_1 = io_wakeup_1_valid & dataCond_6; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_7 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_7 = pdestMatch_7 & (rfDataMatch_7 & _dataCond_T_25); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_1 = io_wakeup_2_valid & dataCond_7; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_8 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_8 = pdestMatch_8 & (rfDataMatch_8 & _dataCond_T_25); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_1 = io_wakeup_3_valid & dataCond_8; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_9 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_9 = pdestMatch_9 & (rfDataMatch_9 & _dataCond_T_25); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_1 = io_wakeup_4_valid & dataCond_9; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1 = {dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 132:43]
  wire  realValid_1 = updateValid_1 | statusArrayValid_1; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_1_robIdx_flag = updateValid_1 ? io_update_0_data_robIdx_flag : statusArray_1_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_1_robIdx_value = updateValid_1 ? io_update_0_data_robIdx_value : statusArray_1_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_5 = {statusArrayNext_1_robIdx_flag,statusArrayNext_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_1 = io_redirect_bits_level & _isFlushed_flushItself_T_7; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_1 = statusArrayNext_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_1 = statusArrayNext_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_2 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_1 = io_redirect_valid & (isFlushed_flushItself_1 | _isFlushed_T_2); // @[Rob.scala 143:20]
  wire  _flushedVec_1_T_1 = deqValid_1 & _T_230; // @[StatusArray.scala 166:64]
  wire  flushedVec_1 = realValid_1 & isFlushed_1 | deqValid_1 & _T_230; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_1 = realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? io_update_0_data_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_10 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_50 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_10 = pdestMatch_10 & (rfDataMatch_10 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_2 = io_wakeup_0_valid & dataCond_10; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_11 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_11 = pdestMatch_11 & (rfDataMatch_11 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_2 = io_wakeup_1_valid & dataCond_11; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_12 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_12 = pdestMatch_12 & (rfDataMatch_12 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_2 = io_wakeup_2_valid & dataCond_12; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_13 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_13 = pdestMatch_13 & (rfDataMatch_13 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_2 = io_wakeup_3_valid & dataCond_13; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_14 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_14 = pdestMatch_14 & (rfDataMatch_14 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_2 = io_wakeup_4_valid & dataCond_14; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_1 = {dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,dataMatchVec_0_2
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? io_update_0_data_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_15 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_75 = statusArrayNext_1_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_15 = pdestMatch_15 & (rfDataMatch_15 & _dataCond_T_75); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_3 = io_wakeup_0_valid & dataCond_15; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_16 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_16 = pdestMatch_16 & (rfDataMatch_16 & _dataCond_T_75); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_3 = io_wakeup_1_valid & dataCond_16; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_17 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_17 = pdestMatch_17 & (rfDataMatch_17 & _dataCond_T_75); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_3 = io_wakeup_2_valid & dataCond_17; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_18 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_18 = pdestMatch_18 & (rfDataMatch_18 & _dataCond_T_75); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_3 = io_wakeup_3_valid & dataCond_18; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_19 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_19 = pdestMatch_19 & (rfDataMatch_19 & _dataCond_T_75); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_3 = io_wakeup_4_valid & dataCond_19; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_1 = {dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,dataMatchVec_0_3
    }; // @[StatusArray.scala 132:43]
  wire  realValid_2 = updateValid_2 | statusArrayValid_2; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_2_robIdx_flag = updateValid_2 ? io_update_0_data_robIdx_flag : statusArray_2_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_2_robIdx_value = updateValid_2 ? io_update_0_data_robIdx_value : statusArray_2_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_9 = {statusArrayNext_2_robIdx_flag,statusArrayNext_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_11 = _isFlushed_flushItself_T_9 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_2 = io_redirect_bits_level & _isFlushed_flushItself_T_11; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_2 = statusArrayNext_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_2 = statusArrayNext_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_4 = isFlushed_differentFlag_2 ^ isFlushed_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_2 = io_redirect_valid & (isFlushed_flushItself_2 | _isFlushed_T_4); // @[Rob.scala 143:20]
  wire  _flushedVec_2_T_1 = deqValid_2 & _T_253; // @[StatusArray.scala 166:64]
  wire  flushedVec_2 = realValid_2 & isFlushed_2 | deqValid_2 & _T_253; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_2 = realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? io_update_0_data_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_20 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_100 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_20 = pdestMatch_20 & (rfDataMatch_20 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_4 = io_wakeup_0_valid & dataCond_20; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_21 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_21 = pdestMatch_21 & (rfDataMatch_21 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_4 = io_wakeup_1_valid & dataCond_21; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_22 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_22 = pdestMatch_22 & (rfDataMatch_22 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_4 = io_wakeup_2_valid & dataCond_22; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_23 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_23 = pdestMatch_23 & (rfDataMatch_23 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_4 = io_wakeup_3_valid & dataCond_23; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_24 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_24 = pdestMatch_24 & (rfDataMatch_24 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_4 = io_wakeup_4_valid & dataCond_24; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_2 = {dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,dataMatchVec_0_4
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? io_update_0_data_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_25 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_125 = statusArrayNext_2_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_25 = pdestMatch_25 & (rfDataMatch_25 & _dataCond_T_125); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_5 = io_wakeup_0_valid & dataCond_25; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_26 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_26 = pdestMatch_26 & (rfDataMatch_26 & _dataCond_T_125); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_5 = io_wakeup_1_valid & dataCond_26; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_27 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_27 = pdestMatch_27 & (rfDataMatch_27 & _dataCond_T_125); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_5 = io_wakeup_2_valid & dataCond_27; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_28 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_28 = pdestMatch_28 & (rfDataMatch_28 & _dataCond_T_125); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_5 = io_wakeup_3_valid & dataCond_28; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_29 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_29 = pdestMatch_29 & (rfDataMatch_29 & _dataCond_T_125); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_5 = io_wakeup_4_valid & dataCond_29; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_2 = {dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,dataMatchVec_0_5
    }; // @[StatusArray.scala 132:43]
  wire  realValid_3 = updateValid_3 | statusArrayValid_3; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_3_robIdx_flag = updateValid_3 ? io_update_0_data_robIdx_flag : statusArray_3_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_3_robIdx_value = updateValid_3 ? io_update_0_data_robIdx_value : statusArray_3_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_13 = {statusArrayNext_3_robIdx_flag,statusArrayNext_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_15 = _isFlushed_flushItself_T_13 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_3 = io_redirect_bits_level & _isFlushed_flushItself_T_15; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_3 = statusArrayNext_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_3 = statusArrayNext_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_6 = isFlushed_differentFlag_3 ^ isFlushed_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_3 = io_redirect_valid & (isFlushed_flushItself_3 | _isFlushed_T_6); // @[Rob.scala 143:20]
  wire  _flushedVec_3_T_1 = deqValid_3 & _T_276; // @[StatusArray.scala 166:64]
  wire  flushedVec_3 = realValid_3 & isFlushed_3 | deqValid_3 & _T_276; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_3 = realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? io_update_0_data_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_30 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_150 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_30 = pdestMatch_30 & (rfDataMatch_30 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_6 = io_wakeup_0_valid & dataCond_30; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_31 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_31 = pdestMatch_31 & (rfDataMatch_31 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_6 = io_wakeup_1_valid & dataCond_31; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_32 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_32 = pdestMatch_32 & (rfDataMatch_32 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_6 = io_wakeup_2_valid & dataCond_32; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_33 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_33 = pdestMatch_33 & (rfDataMatch_33 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_6 = io_wakeup_3_valid & dataCond_33; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_34 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_34 = pdestMatch_34 & (rfDataMatch_34 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_6 = io_wakeup_4_valid & dataCond_34; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_3 = {dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,dataMatchVec_0_6
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? io_update_0_data_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_35 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_175 = statusArrayNext_3_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_35 = pdestMatch_35 & (rfDataMatch_35 & _dataCond_T_175); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_7 = io_wakeup_0_valid & dataCond_35; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_36 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_36 = pdestMatch_36 & (rfDataMatch_36 & _dataCond_T_175); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_7 = io_wakeup_1_valid & dataCond_36; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_37 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_37 = pdestMatch_37 & (rfDataMatch_37 & _dataCond_T_175); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_7 = io_wakeup_2_valid & dataCond_37; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_38 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_38 = pdestMatch_38 & (rfDataMatch_38 & _dataCond_T_175); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_7 = io_wakeup_3_valid & dataCond_38; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_39 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_39 = pdestMatch_39 & (rfDataMatch_39 & _dataCond_T_175); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_7 = io_wakeup_4_valid & dataCond_39; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_3 = {dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,dataMatchVec_0_7
    }; // @[StatusArray.scala 132:43]
  wire  realValid_4 = updateValid_4 | statusArrayValid_4; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_4_robIdx_flag = updateValid_4 ? io_update_0_data_robIdx_flag : statusArray_4_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_4_robIdx_value = updateValid_4 ? io_update_0_data_robIdx_value : statusArray_4_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_17 = {statusArrayNext_4_robIdx_flag,statusArrayNext_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_19 = _isFlushed_flushItself_T_17 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_4 = io_redirect_bits_level & _isFlushed_flushItself_T_19; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_4 = statusArrayNext_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_4 = statusArrayNext_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_8 = isFlushed_differentFlag_4 ^ isFlushed_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_4 = io_redirect_valid & (isFlushed_flushItself_4 | _isFlushed_T_8); // @[Rob.scala 143:20]
  wire  _flushedVec_4_T_1 = deqValid_4 & _T_299; // @[StatusArray.scala 166:64]
  wire  flushedVec_4 = realValid_4 & isFlushed_4 | deqValid_4 & _T_299; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_4 = realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? io_update_0_data_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_40 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_200 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_40 = pdestMatch_40 & (rfDataMatch_40 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_8 = io_wakeup_0_valid & dataCond_40; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_41 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_41 = pdestMatch_41 & (rfDataMatch_41 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_8 = io_wakeup_1_valid & dataCond_41; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_42 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_42 = pdestMatch_42 & (rfDataMatch_42 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_8 = io_wakeup_2_valid & dataCond_42; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_43 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_43 = pdestMatch_43 & (rfDataMatch_43 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_8 = io_wakeup_3_valid & dataCond_43; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_44 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_44 = pdestMatch_44 & (rfDataMatch_44 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_8 = io_wakeup_4_valid & dataCond_44; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_4 = {dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,dataMatchVec_0_8
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? io_update_0_data_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_45 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_225 = statusArrayNext_4_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_45 = pdestMatch_45 & (rfDataMatch_45 & _dataCond_T_225); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_9 = io_wakeup_0_valid & dataCond_45; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_46 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_46 = pdestMatch_46 & (rfDataMatch_46 & _dataCond_T_225); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_9 = io_wakeup_1_valid & dataCond_46; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_47 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_47 = pdestMatch_47 & (rfDataMatch_47 & _dataCond_T_225); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_9 = io_wakeup_2_valid & dataCond_47; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_48 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_48 = pdestMatch_48 & (rfDataMatch_48 & _dataCond_T_225); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_9 = io_wakeup_3_valid & dataCond_48; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_49 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_49 = pdestMatch_49 & (rfDataMatch_49 & _dataCond_T_225); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_9 = io_wakeup_4_valid & dataCond_49; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_4 = {dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,dataMatchVec_0_9
    }; // @[StatusArray.scala 132:43]
  wire  realValid_5 = updateValid_5 | statusArrayValid_5; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_5_robIdx_flag = updateValid_5 ? io_update_0_data_robIdx_flag : statusArray_5_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_5_robIdx_value = updateValid_5 ? io_update_0_data_robIdx_value : statusArray_5_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_21 = {statusArrayNext_5_robIdx_flag,statusArrayNext_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_23 = _isFlushed_flushItself_T_21 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_5 = io_redirect_bits_level & _isFlushed_flushItself_T_23; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_5 = statusArrayNext_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_5 = statusArrayNext_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_10 = isFlushed_differentFlag_5 ^ isFlushed_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_5 = io_redirect_valid & (isFlushed_flushItself_5 | _isFlushed_T_10); // @[Rob.scala 143:20]
  wire  _flushedVec_5_T_1 = deqValid_5 & _T_322; // @[StatusArray.scala 166:64]
  wire  flushedVec_5 = realValid_5 & isFlushed_5 | deqValid_5 & _T_322; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_5 = realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? io_update_0_data_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_50 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_250 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_50 = pdestMatch_50 & (rfDataMatch_50 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_10 = io_wakeup_0_valid & dataCond_50; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_51 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_51 = pdestMatch_51 & (rfDataMatch_51 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_10 = io_wakeup_1_valid & dataCond_51; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_52 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_52 = pdestMatch_52 & (rfDataMatch_52 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_10 = io_wakeup_2_valid & dataCond_52; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_53 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_53 = pdestMatch_53 & (rfDataMatch_53 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_10 = io_wakeup_3_valid & dataCond_53; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_54 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_54 = pdestMatch_54 & (rfDataMatch_54 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_10 = io_wakeup_4_valid & dataCond_54; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_5 = {dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,dataMatchVec_1_10,
    dataMatchVec_0_10}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? io_update_0_data_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_55 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_275 = statusArrayNext_5_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_55 = pdestMatch_55 & (rfDataMatch_55 & _dataCond_T_275); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_11 = io_wakeup_0_valid & dataCond_55; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_56 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_56 = pdestMatch_56 & (rfDataMatch_56 & _dataCond_T_275); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_11 = io_wakeup_1_valid & dataCond_56; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_57 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_57 = pdestMatch_57 & (rfDataMatch_57 & _dataCond_T_275); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_11 = io_wakeup_2_valid & dataCond_57; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_58 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_58 = pdestMatch_58 & (rfDataMatch_58 & _dataCond_T_275); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_11 = io_wakeup_3_valid & dataCond_58; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_59 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_59 = pdestMatch_59 & (rfDataMatch_59 & _dataCond_T_275); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_11 = io_wakeup_4_valid & dataCond_59; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_5 = {dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,dataMatchVec_1_11,
    dataMatchVec_0_11}; // @[StatusArray.scala 132:43]
  wire  realValid_6 = updateValid_6 | statusArrayValid_6; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_6_robIdx_flag = updateValid_6 ? io_update_0_data_robIdx_flag : statusArray_6_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_6_robIdx_value = updateValid_6 ? io_update_0_data_robIdx_value : statusArray_6_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_25 = {statusArrayNext_6_robIdx_flag,statusArrayNext_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_27 = _isFlushed_flushItself_T_25 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_6 = io_redirect_bits_level & _isFlushed_flushItself_T_27; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_6 = statusArrayNext_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_6 = statusArrayNext_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_12 = isFlushed_differentFlag_6 ^ isFlushed_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_6 = io_redirect_valid & (isFlushed_flushItself_6 | _isFlushed_T_12); // @[Rob.scala 143:20]
  wire  _flushedVec_6_T_1 = deqValid_6 & _T_345; // @[StatusArray.scala 166:64]
  wire  flushedVec_6 = realValid_6 & isFlushed_6 | deqValid_6 & _T_345; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_6 = realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? io_update_0_data_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_60 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_300 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_60 = pdestMatch_60 & (rfDataMatch_60 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_12 = io_wakeup_0_valid & dataCond_60; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_61 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_61 = pdestMatch_61 & (rfDataMatch_61 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_12 = io_wakeup_1_valid & dataCond_61; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_62 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_62 = pdestMatch_62 & (rfDataMatch_62 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_12 = io_wakeup_2_valid & dataCond_62; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_63 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_63 = pdestMatch_63 & (rfDataMatch_63 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_12 = io_wakeup_3_valid & dataCond_63; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_64 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_64 = pdestMatch_64 & (rfDataMatch_64 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_12 = io_wakeup_4_valid & dataCond_64; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_6 = {dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,dataMatchVec_1_12,
    dataMatchVec_0_12}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? io_update_0_data_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_65 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_325 = statusArrayNext_6_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_65 = pdestMatch_65 & (rfDataMatch_65 & _dataCond_T_325); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_13 = io_wakeup_0_valid & dataCond_65; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_66 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_66 = pdestMatch_66 & (rfDataMatch_66 & _dataCond_T_325); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_13 = io_wakeup_1_valid & dataCond_66; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_67 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_67 = pdestMatch_67 & (rfDataMatch_67 & _dataCond_T_325); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_13 = io_wakeup_2_valid & dataCond_67; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_68 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_68 = pdestMatch_68 & (rfDataMatch_68 & _dataCond_T_325); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_13 = io_wakeup_3_valid & dataCond_68; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_69 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_69 = pdestMatch_69 & (rfDataMatch_69 & _dataCond_T_325); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_13 = io_wakeup_4_valid & dataCond_69; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_6 = {dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,dataMatchVec_1_13,
    dataMatchVec_0_13}; // @[StatusArray.scala 132:43]
  wire  realValid_7 = updateValid_7 | statusArrayValid_7; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_7_robIdx_flag = updateValid_7 ? io_update_0_data_robIdx_flag : statusArray_7_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_7_robIdx_value = updateValid_7 ? io_update_0_data_robIdx_value : statusArray_7_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_29 = {statusArrayNext_7_robIdx_flag,statusArrayNext_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_31 = _isFlushed_flushItself_T_29 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_7 = io_redirect_bits_level & _isFlushed_flushItself_T_31; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_7 = statusArrayNext_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_7 = statusArrayNext_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_14 = isFlushed_differentFlag_7 ^ isFlushed_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_7 = io_redirect_valid & (isFlushed_flushItself_7 | _isFlushed_T_14); // @[Rob.scala 143:20]
  wire  _flushedVec_7_T_1 = deqValid_7 & _T_368; // @[StatusArray.scala 166:64]
  wire  flushedVec_7 = realValid_7 & isFlushed_7 | deqValid_7 & _T_368; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_7 = realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? io_update_0_data_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_70 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_350 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_70 = pdestMatch_70 & (rfDataMatch_70 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_14 = io_wakeup_0_valid & dataCond_70; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_71 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_71 = pdestMatch_71 & (rfDataMatch_71 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_14 = io_wakeup_1_valid & dataCond_71; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_72 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_72 = pdestMatch_72 & (rfDataMatch_72 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_14 = io_wakeup_2_valid & dataCond_72; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_73 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_73 = pdestMatch_73 & (rfDataMatch_73 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_14 = io_wakeup_3_valid & dataCond_73; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_74 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_74 = pdestMatch_74 & (rfDataMatch_74 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_14 = io_wakeup_4_valid & dataCond_74; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_7 = {dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,dataMatchVec_1_14,
    dataMatchVec_0_14}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? io_update_0_data_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_75 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_375 = statusArrayNext_7_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_75 = pdestMatch_75 & (rfDataMatch_75 & _dataCond_T_375); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_15 = io_wakeup_0_valid & dataCond_75; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_76 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_76 = pdestMatch_76 & (rfDataMatch_76 & _dataCond_T_375); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_15 = io_wakeup_1_valid & dataCond_76; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_77 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_77 = pdestMatch_77 & (rfDataMatch_77 & _dataCond_T_375); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_15 = io_wakeup_2_valid & dataCond_77; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_78 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_78 = pdestMatch_78 & (rfDataMatch_78 & _dataCond_T_375); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_15 = io_wakeup_3_valid & dataCond_78; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_79 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_79 = pdestMatch_79 & (rfDataMatch_79 & _dataCond_T_375); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_15 = io_wakeup_4_valid & dataCond_79; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_7 = {dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,dataMatchVec_1_15,
    dataMatchVec_0_15}; // @[StatusArray.scala 132:43]
  wire [3:0] io_isValid_lo = {statusArrayValid_3,statusArrayValid_2,statusArrayValid_1,statusArrayValid_0}; // @[StatusArray.scala 255:34]
  wire [3:0] io_isValid_hi = {statusArrayValid_7,statusArrayValid_6,statusArrayValid_5,statusArrayValid_4}; // @[StatusArray.scala 255:34]
  wire [3:0] io_isValidNext_lo = {statusArrayValidNext_3,statusArrayValidNext_2,statusArrayValidNext_1,
    statusArrayValidNext_0}; // @[StatusArray.scala 256:42]
  wire [3:0] io_isValidNext_hi = {statusArrayValidNext_7,statusArrayValidNext_6,statusArrayValidNext_5,
    statusArrayValidNext_4}; // @[StatusArray.scala 256:42]
  reg  io_canIssue_REG; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_1; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_2; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_3; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_4; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_5; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_6; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_7; // @[StatusArray.scala 257:92]
  wire [3:0] io_canIssue_lo = {io_canIssue_REG_3,io_canIssue_REG_2,io_canIssue_REG_1,io_canIssue_REG}; // @[StatusArray.scala 257:104]
  wire [3:0] io_canIssue_hi = {io_canIssue_REG_7,io_canIssue_REG_6,io_canIssue_REG_5,io_canIssue_REG_4}; // @[StatusArray.scala 257:104]
  wire [3:0] io_flushed_lo = {flushedVec_3,flushedVec_2,flushedVec_1,flushedVec_0}; // @[StatusArray.scala 260:28]
  wire [3:0] io_flushed_hi = {flushedVec_7,flushedVec_6,flushedVec_5,flushedVec_4}; // @[StatusArray.scala 260:28]
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 255:34]
  assign io_isValidNext = {io_isValidNext_hi,io_isValidNext_lo}; // @[StatusArray.scala 256:42]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 257:104]
  assign io_flushed = {io_flushed_hi,io_flushed_lo}; // @[StatusArray.scala 260:28]
  assign io_wakeupMatch_0_0 = realValid ? dataWakeupEnVec_0 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_0_1 = realValid ? dataWakeupEnVec_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_0 = realValid_1 ? dataWakeupEnVec_0_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_1 = realValid_1 ? dataWakeupEnVec_1_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_0 = realValid_2 ? dataWakeupEnVec_0_2 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_1 = realValid_2 ? dataWakeupEnVec_1_2 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_0 = realValid_3 ? dataWakeupEnVec_0_3 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_1 = realValid_3 ? dataWakeupEnVec_1_3 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_0 = realValid_4 ? dataWakeupEnVec_0_4 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_1 = realValid_4 ? dataWakeupEnVec_1_4 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_0 = realValid_5 ? dataWakeupEnVec_0_5 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_1 = realValid_5 ? dataWakeupEnVec_1_5 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_0 = realValid_6 ? dataWakeupEnVec_0_6 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_1 = realValid_6 ? dataWakeupEnVec_1_6 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_0 = realValid_7 ? dataWakeupEnVec_0_7 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_1 = realValid_7 ? dataWakeupEnVec_1_7 : 5'h0; // @[StatusArray.scala 231:55]
  always @(posedge clock) begin
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_416; // @[StatusArray.scala 236:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_418; // @[StatusArray.scala 236:50]
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_455; // @[StatusArray.scala 236:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_457; // @[StatusArray.scala 236:50]
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_494; // @[StatusArray.scala 236:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_496; // @[StatusArray.scala 236:50]
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_533; // @[StatusArray.scala 236:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_535; // @[StatusArray.scala 236:50]
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_572; // @[StatusArray.scala 236:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_574; // @[StatusArray.scala 236:50]
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_611; // @[StatusArray.scala 236:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_613; // @[StatusArray.scala 236:50]
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_650; // @[StatusArray.scala 236:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_652; // @[StatusArray.scala 236:50]
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_value <= io_update_0_data_robIdx_value;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_689; // @[StatusArray.scala 236:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_691; // @[StatusArray.scala 236:50]
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_value <= io_update_0_data_robIdx_value;
    end
    io_canIssue_REG <= statusArrayValidNext_0 & readyVecNext_0; // @[StatusArray.scala 257:95]
    io_canIssue_REG_1 <= statusArrayValidNext_1 & readyVecNext_1; // @[StatusArray.scala 257:95]
    io_canIssue_REG_2 <= statusArrayValidNext_2 & readyVecNext_2; // @[StatusArray.scala 257:95]
    io_canIssue_REG_3 <= statusArrayValidNext_3 & readyVecNext_3; // @[StatusArray.scala 257:95]
    io_canIssue_REG_4 <= statusArrayValidNext_4 & readyVecNext_4; // @[StatusArray.scala 257:95]
    io_canIssue_REG_5 <= statusArrayValidNext_5 & readyVecNext_5; // @[StatusArray.scala 257:95]
    io_canIssue_REG_6 <= statusArrayValidNext_6 & readyVecNext_6; // @[StatusArray.scala 257:95]
    io_canIssue_REG_7 <= statusArrayValidNext_7 & readyVecNext_7; // @[StatusArray.scala 257:95]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_0 <= 1'h0;
    end else begin
      statusArrayValid_0 <= realValid & ~(isFlushed | _flushedVec_0_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_1 <= 1'h0;
    end else begin
      statusArrayValid_1 <= realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_2 <= 1'h0;
    end else begin
      statusArrayValid_2 <= realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_3 <= 1'h0;
    end else begin
      statusArrayValid_3 <= realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_4 <= 1'h0;
    end else begin
      statusArrayValid_4 <= realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_5 <= 1'h0;
    end else begin
      statusArrayValid_5 <= realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_6 <= 1'h0;
    end else begin
      statusArrayValid_6 <= realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_7 <= 1'h0;
    end else begin
      statusArrayValid_7 <= realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1);
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
  statusArrayValid_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  statusArrayValid_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  statusArrayValid_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  statusArrayValid_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  statusArrayValid_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  statusArrayValid_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  statusArrayValid_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  statusArrayValid_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  statusArray_0_srcState_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  statusArray_0_srcState_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  statusArray_0_psrc_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  statusArray_0_srcType_1 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_1_srcState_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_1_psrc_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_1_srcType_1 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_2_srcState_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_2_psrc_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_2_srcType_1 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_3_srcState_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_3_psrc_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_3_srcType_1 = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_4_srcState_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_4_psrc_1 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_4_srcType_1 = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_47[4:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_5_srcState_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_5_psrc_1 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_5_srcType_1 = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_55[4:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_6_srcState_1 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_6_psrc_1 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_6_srcType_1 = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_63[4:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_7_srcState_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_7_psrc_1 = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_7_srcType_1 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_71[4:0];
  _RAND_72 = {1{`RANDOM}};
  io_canIssue_REG = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  io_canIssue_REG_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  io_canIssue_REG_2 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  io_canIssue_REG_3 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_canIssue_REG_4 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  io_canIssue_REG_5 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  io_canIssue_REG_6 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_canIssue_REG_7 = _RAND_79[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    statusArrayValid_0 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_1 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_2 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_3 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_4 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_5 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_6 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_7 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

