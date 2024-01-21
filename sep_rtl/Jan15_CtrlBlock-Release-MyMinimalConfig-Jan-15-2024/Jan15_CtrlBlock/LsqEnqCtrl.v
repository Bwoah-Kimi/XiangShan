module LsqEnqCtrl(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  output       io_enq_canAccept,
  input  [1:0] io_enq_needAlloc_0,
  input  [1:0] io_enq_needAlloc_1,
  input  [1:0] io_enq_needAlloc_2,
  input  [1:0] io_enq_needAlloc_3,
  input        io_enq_req_0_valid,
  input        io_enq_req_0_bits_cf_trigger_backendEn_0,
  input        io_enq_req_0_bits_cf_storeSetHit,
  input  [4:0] io_enq_req_0_bits_cf_ssid,
  input  [6:0] io_enq_req_0_bits_ctrl_fuOpType,
  input        io_enq_req_0_bits_robIdx_flag,
  input  [4:0] io_enq_req_0_bits_robIdx_value,
  input        io_enq_req_1_valid,
  input        io_enq_req_1_bits_cf_trigger_backendEn_0,
  input        io_enq_req_1_bits_cf_storeSetHit,
  input  [4:0] io_enq_req_1_bits_cf_ssid,
  input  [6:0] io_enq_req_1_bits_ctrl_fuOpType,
  input        io_enq_req_1_bits_robIdx_flag,
  input  [4:0] io_enq_req_1_bits_robIdx_value,
  input        io_enq_req_2_valid,
  input        io_enq_req_2_bits_cf_trigger_backendEn_0,
  input        io_enq_req_2_bits_cf_storeSetHit,
  input  [4:0] io_enq_req_2_bits_cf_ssid,
  input  [6:0] io_enq_req_2_bits_ctrl_fuOpType,
  input        io_enq_req_2_bits_robIdx_flag,
  input  [4:0] io_enq_req_2_bits_robIdx_value,
  input        io_enq_req_3_valid,
  input        io_enq_req_3_bits_cf_trigger_backendEn_0,
  input        io_enq_req_3_bits_cf_storeSetHit,
  input  [4:0] io_enq_req_3_bits_cf_ssid,
  input  [6:0] io_enq_req_3_bits_ctrl_fuOpType,
  input        io_enq_req_3_bits_robIdx_flag,
  input  [4:0] io_enq_req_3_bits_robIdx_value,
  output       io_enq_resp_0_lqIdx_flag,
  output [3:0] io_enq_resp_0_lqIdx_value,
  output       io_enq_resp_0_sqIdx_flag,
  output [3:0] io_enq_resp_0_sqIdx_value,
  output       io_enq_resp_1_lqIdx_flag,
  output [3:0] io_enq_resp_1_lqIdx_value,
  output       io_enq_resp_1_sqIdx_flag,
  output [3:0] io_enq_resp_1_sqIdx_value,
  output       io_enq_resp_2_lqIdx_flag,
  output [3:0] io_enq_resp_2_lqIdx_value,
  output       io_enq_resp_2_sqIdx_flag,
  output [3:0] io_enq_resp_2_sqIdx_value,
  output       io_enq_resp_3_lqIdx_flag,
  output [3:0] io_enq_resp_3_lqIdx_value,
  output       io_enq_resp_3_sqIdx_flag,
  output [3:0] io_enq_resp_3_sqIdx_value,
  input  [1:0] io_lcommit,
  input  [1:0] io_scommit,
  input  [4:0] io_lqCancelCnt,
  input  [3:0] io_sqCancelCnt,
  output [1:0] io_enqLsq_needAlloc_0,
  output [1:0] io_enqLsq_needAlloc_1,
  output [1:0] io_enqLsq_needAlloc_2,
  output [1:0] io_enqLsq_needAlloc_3,
  output       io_enqLsq_req_0_valid,
  output       io_enqLsq_req_0_bits_cf_trigger_backendEn_0,
  output       io_enqLsq_req_0_bits_cf_storeSetHit,
  output [4:0] io_enqLsq_req_0_bits_cf_ssid,
  output [6:0] io_enqLsq_req_0_bits_ctrl_fuOpType,
  output       io_enqLsq_req_0_bits_robIdx_flag,
  output [4:0] io_enqLsq_req_0_bits_robIdx_value,
  output       io_enqLsq_req_0_bits_lqIdx_flag,
  output [3:0] io_enqLsq_req_0_bits_lqIdx_value,
  output [3:0] io_enqLsq_req_0_bits_sqIdx_value,
  output       io_enqLsq_req_1_valid,
  output       io_enqLsq_req_1_bits_cf_trigger_backendEn_0,
  output       io_enqLsq_req_1_bits_cf_storeSetHit,
  output [4:0] io_enqLsq_req_1_bits_cf_ssid,
  output [6:0] io_enqLsq_req_1_bits_ctrl_fuOpType,
  output       io_enqLsq_req_1_bits_robIdx_flag,
  output [4:0] io_enqLsq_req_1_bits_robIdx_value,
  output       io_enqLsq_req_1_bits_lqIdx_flag,
  output [3:0] io_enqLsq_req_1_bits_lqIdx_value,
  output [3:0] io_enqLsq_req_1_bits_sqIdx_value,
  output       io_enqLsq_req_2_valid,
  output       io_enqLsq_req_2_bits_cf_trigger_backendEn_0,
  output       io_enqLsq_req_2_bits_cf_storeSetHit,
  output [4:0] io_enqLsq_req_2_bits_cf_ssid,
  output [6:0] io_enqLsq_req_2_bits_ctrl_fuOpType,
  output       io_enqLsq_req_2_bits_robIdx_flag,
  output [4:0] io_enqLsq_req_2_bits_robIdx_value,
  output       io_enqLsq_req_2_bits_lqIdx_flag,
  output [3:0] io_enqLsq_req_2_bits_lqIdx_value,
  output [3:0] io_enqLsq_req_2_bits_sqIdx_value,
  output       io_enqLsq_req_3_valid,
  output       io_enqLsq_req_3_bits_cf_trigger_backendEn_0,
  output       io_enqLsq_req_3_bits_cf_storeSetHit,
  output [4:0] io_enqLsq_req_3_bits_cf_ssid,
  output [6:0] io_enqLsq_req_3_bits_ctrl_fuOpType,
  output       io_enqLsq_req_3_bits_robIdx_flag,
  output [4:0] io_enqLsq_req_3_bits_robIdx_value,
  output       io_enqLsq_req_3_bits_lqIdx_flag,
  output [3:0] io_enqLsq_req_3_bits_lqIdx_value,
  output [3:0] io_enqLsq_req_3_bits_sqIdx_value
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
`endif // RANDOMIZE_REG_INIT
  reg  lqPtr_flag; // @[LSQWrapper.scala 265:22]
  reg [3:0] lqPtr_value; // @[LSQWrapper.scala 265:22]
  reg  sqPtr_flag; // @[LSQWrapper.scala 266:22]
  reg [3:0] sqPtr_value; // @[LSQWrapper.scala 266:22]
  reg [4:0] lqCounter; // @[LSQWrapper.scala 267:26]
  reg [3:0] sqCounter; // @[LSQWrapper.scala 268:26]
  wire  _loadEnqNumber_T_1 = io_enq_req_0_valid & io_enq_needAlloc_0[0]; // @[LSQWrapper.scala 271:85]
  wire  _loadEnqNumber_T_3 = io_enq_req_1_valid & io_enq_needAlloc_1[0]; // @[LSQWrapper.scala 271:85]
  wire  _loadEnqNumber_T_5 = io_enq_req_2_valid & io_enq_needAlloc_2[0]; // @[LSQWrapper.scala 271:85]
  wire  _loadEnqNumber_T_7 = io_enq_req_3_valid & io_enq_needAlloc_3[0]; // @[LSQWrapper.scala 271:85]
  wire [1:0] _loadEnqNumber_T_8 = _loadEnqNumber_T_1 + _loadEnqNumber_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] _loadEnqNumber_T_10 = _loadEnqNumber_T_5 + _loadEnqNumber_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] loadEnqNumber = _loadEnqNumber_T_8 + _loadEnqNumber_T_10; // @[Bitwise.scala 48:55]
  wire  _storeEnqNumber_T_1 = io_enq_req_0_valid & io_enq_needAlloc_0[1]; // @[LSQWrapper.scala 272:86]
  wire  _storeEnqNumber_T_3 = io_enq_req_1_valid & io_enq_needAlloc_1[1]; // @[LSQWrapper.scala 272:86]
  wire  _storeEnqNumber_T_5 = io_enq_req_2_valid & io_enq_needAlloc_2[1]; // @[LSQWrapper.scala 272:86]
  wire  _storeEnqNumber_T_7 = io_enq_req_3_valid & io_enq_needAlloc_3[1]; // @[LSQWrapper.scala 272:86]
  wire [1:0] _storeEnqNumber_T_8 = _storeEnqNumber_T_1 + _storeEnqNumber_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] _storeEnqNumber_T_10 = _storeEnqNumber_T_5 + _storeEnqNumber_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] storeEnqNumber = _storeEnqNumber_T_8 + _storeEnqNumber_T_10; // @[Bitwise.scala 48:55]
  reg  t1_redirect; // @[LSQWrapper.scala 277:28]
  reg  t2_redirect; // @[LSQWrapper.scala 278:28]
  wire [3:0] _t2_update_T_4 = {|io_enq_needAlloc_3,|io_enq_needAlloc_2,|io_enq_needAlloc_1,|io_enq_needAlloc_0}; // @[LSQWrapper.scala 279:72]
  wire  t2_update = t2_redirect & ~(|_t2_update_T_4); // @[LSQWrapper.scala 279:31]
  reg  t3_update; // @[LSQWrapper.scala 280:26]
  reg [4:0] t3_lqCancelCnt; // @[LSQWrapper.scala 281:31]
  reg [3:0] t3_sqCancelCnt; // @[LSQWrapper.scala 282:31]
  wire [4:0] _lqPtr_flipped_new_ptr_T_1 = 5'h10 - t3_lqCancelCnt; // @[CircularQueuePtr.scala 54:50]
  wire [4:0] _lqPtr_flipped_new_ptr_new_ptr_T = {lqPtr_flag,lqPtr_value}; // @[Cat.scala 31:58]
  wire [4:0] _lqPtr_flipped_new_ptr_new_ptr_T_2 = _lqPtr_flipped_new_ptr_new_ptr_T + _lqPtr_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] lqPtr_flipped_new_ptr_value = _lqPtr_flipped_new_ptr_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  lqPtr_flipped_new_ptr_flag = _lqPtr_flipped_new_ptr_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire  lqPtr_new_ptr_flag = ~lqPtr_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
  wire [4:0] _GEN_460 = {{3'd0}, io_lcommit}; // @[LSQWrapper.scala 285:28]
  wire [4:0] _lqCounter_T_1 = lqCounter + _GEN_460; // @[LSQWrapper.scala 285:28]
  wire [4:0] _lqCounter_T_3 = _lqCounter_T_1 + t3_lqCancelCnt; // @[LSQWrapper.scala 285:41]
  wire [3:0] _sqPtr_flipped_new_ptr_T_1 = 4'hc - t3_sqCancelCnt; // @[CircularQueuePtr.scala 54:50]
  wire [4:0] sqPtr_flipped_new_ptr_new_value = sqPtr_value + _sqPtr_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _sqPtr_flipped_new_ptr_diff_T_1 = {1'h0,sqPtr_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] sqPtr_flipped_new_ptr_diff = $signed(_sqPtr_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  sqPtr_flipped_new_ptr_reverse_flag = $signed(sqPtr_flipped_new_ptr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  sqPtr_flipped_new_ptr_flag = sqPtr_flipped_new_ptr_reverse_flag ? ~sqPtr_flag : sqPtr_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _sqPtr_flipped_new_ptr_new_ptr_value_T = $signed(_sqPtr_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _sqPtr_flipped_new_ptr_new_ptr_value_T_1 = sqPtr_flipped_new_ptr_reverse_flag ?
    _sqPtr_flipped_new_ptr_new_ptr_value_T : {{1'd0}, sqPtr_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire  sqPtr_new_ptr_flag = ~sqPtr_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
  wire [3:0] _GEN_461 = {{2'd0}, io_scommit}; // @[LSQWrapper.scala 287:28]
  wire [3:0] _sqCounter_T_1 = sqCounter + _GEN_461; // @[LSQWrapper.scala 287:28]
  wire [3:0] _sqCounter_T_3 = _sqCounter_T_1 + t3_sqCancelCnt; // @[LSQWrapper.scala 287:41]
  wire  _T = ~io_redirect_valid; // @[LSQWrapper.scala 288:15]
  wire [4:0] _GEN_462 = {{2'd0}, loadEnqNumber}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _lqPtr_new_ptr_T_2 = _lqPtr_flipped_new_ptr_new_ptr_T + _GEN_462; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] lqPtr_new_ptr_1_value = _lqPtr_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  lqPtr_new_ptr_1_flag = _lqPtr_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _lqCounter_T_7 = _lqCounter_T_1 - _GEN_462; // @[LSQWrapper.scala 290:41]
  wire [3:0] _GEN_465 = {{1'd0}, storeEnqNumber}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] sqPtr_new_value = sqPtr_value + _GEN_465; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _sqPtr_diff_T_1 = {1'h0,sqPtr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] sqPtr_diff = $signed(_sqPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  sqPtr_reverse_flag = $signed(sqPtr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _sqPtr_new_ptr_value_T = $signed(_sqPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _sqPtr_new_ptr_value_T_1 = sqPtr_reverse_flag ? _sqPtr_new_ptr_value_T : {{1'd0}, sqPtr_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] _sqCounter_T_7 = _sqCounter_T_1 - _GEN_465; // @[LSQWrapper.scala 292:41]
  wire [3:0] sqPtr_new_ptr_1_value = _sqPtr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] sqPtr_flipped_new_ptr_value = _sqPtr_flipped_new_ptr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] _ldCanAccept_T = loadEnqNumber + 3'h2; // @[LSQWrapper.scala 300:48]
  wire [4:0] _GEN_470 = {{1'd0}, _ldCanAccept_T}; // @[LSQWrapper.scala 300:31]
  wire  ldCanAccept = lqCounter >= _GEN_470; // @[LSQWrapper.scala 300:31]
  wire [3:0] _sqCanAccept_T = storeEnqNumber + 3'h2; // @[LSQWrapper.scala 301:49]
  wire  sqCanAccept = sqCounter >= _sqCanAccept_T; // @[LSQWrapper.scala 301:31]
  reg  io_enq_canAccept_REG; // @[LSQWrapper.scala 307:30]
  wire [5:0] _io_enq_resp_0_lqIdx_new_ptr_T_1 = {{1'd0}, _lqPtr_flipped_new_ptr_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] io_enq_resp_0_sqIdx_new_value = {{1'd0}, sqPtr_value}; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _io_enq_resp_0_sqIdx_diff_T_1 = {1'h0,io_enq_resp_0_sqIdx_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] io_enq_resp_0_sqIdx_diff = $signed(_io_enq_resp_0_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  io_enq_resp_0_sqIdx_reverse_flag = $signed(io_enq_resp_0_sqIdx_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _io_enq_resp_0_sqIdx_new_ptr_value_T = $signed(_io_enq_resp_0_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _io_enq_resp_0_sqIdx_new_ptr_value_T_1 = io_enq_resp_0_sqIdx_reverse_flag ?
    _io_enq_resp_0_sqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_0_sqIdx_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [1:0] lqOffset_1 = {{1'd0}, io_enq_needAlloc_0[0]}; // @[LSQWrapper.scala 308:22 311:17]
  wire [4:0] _GEN_471 = {{3'd0}, lqOffset_1}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _io_enq_resp_1_lqIdx_new_ptr_T_2 = _lqPtr_flipped_new_ptr_new_ptr_T + _GEN_471; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] sqOffset_1 = {{1'd0}, io_enq_needAlloc_0[1]}; // @[LSQWrapper.scala 309:22 313:17]
  wire [3:0] _GEN_472 = {{2'd0}, sqOffset_1}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] io_enq_resp_1_sqIdx_new_value = sqPtr_value + _GEN_472; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _io_enq_resp_1_sqIdx_diff_T_1 = {1'h0,io_enq_resp_1_sqIdx_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] io_enq_resp_1_sqIdx_diff = $signed(_io_enq_resp_1_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  io_enq_resp_1_sqIdx_reverse_flag = $signed(io_enq_resp_1_sqIdx_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _io_enq_resp_1_sqIdx_new_ptr_value_T = $signed(_io_enq_resp_1_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _io_enq_resp_1_sqIdx_new_ptr_value_T_1 = io_enq_resp_1_sqIdx_reverse_flag ?
    _io_enq_resp_1_sqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_1_sqIdx_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [1:0] lqOffset_2 = io_enq_needAlloc_0[0] + io_enq_needAlloc_1[0]; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_473 = {{3'd0}, lqOffset_2}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _io_enq_resp_2_lqIdx_new_ptr_T_2 = _lqPtr_flipped_new_ptr_new_ptr_T + _GEN_473; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] sqOffset_2 = io_enq_needAlloc_0[1] + io_enq_needAlloc_1[1]; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_474 = {{2'd0}, sqOffset_2}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] io_enq_resp_2_sqIdx_new_value = sqPtr_value + _GEN_474; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _io_enq_resp_2_sqIdx_diff_T_1 = {1'h0,io_enq_resp_2_sqIdx_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] io_enq_resp_2_sqIdx_diff = $signed(_io_enq_resp_2_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  io_enq_resp_2_sqIdx_reverse_flag = $signed(io_enq_resp_2_sqIdx_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _io_enq_resp_2_sqIdx_new_ptr_value_T = $signed(_io_enq_resp_2_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _io_enq_resp_2_sqIdx_new_ptr_value_T_1 = io_enq_resp_2_sqIdx_reverse_flag ?
    _io_enq_resp_2_sqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_2_sqIdx_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [1:0] _lqOffset_3_T_3 = io_enq_needAlloc_1[0] + io_enq_needAlloc_2[0]; // @[Bitwise.scala 48:55]
  wire [2:0] _lqOffset_3_T_5 = lqOffset_1 + _lqOffset_3_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] lqOffset_3 = _lqOffset_3_T_5[1:0]; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_476 = {{3'd0}, lqOffset_3}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _io_enq_resp_3_lqIdx_new_ptr_T_2 = _lqPtr_flipped_new_ptr_new_ptr_T + _GEN_476; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] _sqOffset_3_T_3 = io_enq_needAlloc_1[1] + io_enq_needAlloc_2[1]; // @[Bitwise.scala 48:55]
  wire [2:0] _sqOffset_3_T_5 = sqOffset_1 + _sqOffset_3_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] sqOffset_3 = _sqOffset_3_T_5[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_478 = {{2'd0}, sqOffset_3}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] io_enq_resp_3_sqIdx_new_value = sqPtr_value + _GEN_478; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _io_enq_resp_3_sqIdx_diff_T_1 = {1'h0,io_enq_resp_3_sqIdx_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] io_enq_resp_3_sqIdx_diff = $signed(_io_enq_resp_3_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  io_enq_resp_3_sqIdx_reverse_flag = $signed(io_enq_resp_3_sqIdx_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _io_enq_resp_3_sqIdx_new_ptr_value_T = $signed(_io_enq_resp_3_sqIdx_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _io_enq_resp_3_sqIdx_new_ptr_value_T_1 = io_enq_resp_3_sqIdx_reverse_flag ?
    _io_enq_resp_3_sqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_3_sqIdx_new_value}; // @[CircularQueuePtr.scala 45:27]
  reg [1:0] REG_0; // @[LSQWrapper.scala 317:33]
  reg [1:0] REG_1; // @[LSQWrapper.scala 317:33]
  reg [1:0] REG_2; // @[LSQWrapper.scala 317:33]
  reg [1:0] REG_3; // @[LSQWrapper.scala 317:33]
  wire  do_enq = io_enq_req_0_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
  reg  io_enqLsq_req_0_valid_REG; // @[LSQWrapper.scala 320:27]
  reg  io_enqLsq_req_0_bits_rcf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_0_bits_rcf_storeSetHit; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_0_bits_rcf_ssid; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_0_bits_rctrl_fuOpType; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_0_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_0_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_0_bits_lqIdx_rflag; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_0_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_0_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  wire  do_enq_1 = io_enq_req_1_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
  reg  io_enqLsq_req_1_valid_REG; // @[LSQWrapper.scala 320:27]
  reg  io_enqLsq_req_1_bits_rcf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_1_bits_rcf_storeSetHit; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_1_bits_rcf_ssid; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_1_bits_rctrl_fuOpType; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_1_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_1_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_1_bits_lqIdx_rflag; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_1_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_1_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  wire  do_enq_2 = io_enq_req_2_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
  reg  io_enqLsq_req_2_valid_REG; // @[LSQWrapper.scala 320:27]
  reg  io_enqLsq_req_2_bits_rcf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_2_bits_rcf_storeSetHit; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_2_bits_rcf_ssid; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_2_bits_rctrl_fuOpType; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_2_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_2_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_2_bits_lqIdx_rflag; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_2_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_2_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  wire  do_enq_3 = io_enq_req_3_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
  reg  io_enqLsq_req_3_valid_REG; // @[LSQWrapper.scala 320:27]
  reg  io_enqLsq_req_3_bits_rcf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_3_bits_rcf_storeSetHit; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_3_bits_rcf_ssid; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_3_bits_rctrl_fuOpType; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_3_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_3_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_enqLsq_req_3_bits_lqIdx_rflag; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_3_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [3:0] io_enqLsq_req_3_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  assign io_enq_canAccept = io_enq_canAccept_REG; // @[LSQWrapper.scala 307:20]
  assign io_enq_resp_0_lqIdx_flag = _io_enq_resp_0_lqIdx_new_ptr_T_1[4]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_0_lqIdx_value = _io_enq_resp_0_lqIdx_new_ptr_T_1[3:0]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_0_sqIdx_flag = io_enq_resp_0_sqIdx_reverse_flag ? ~sqPtr_flag : sqPtr_flag; // @[CircularQueuePtr.scala 44:26]
  assign io_enq_resp_0_sqIdx_value = _io_enq_resp_0_sqIdx_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  assign io_enq_resp_1_lqIdx_flag = _io_enq_resp_1_lqIdx_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_1_lqIdx_value = _io_enq_resp_1_lqIdx_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_1_sqIdx_flag = io_enq_resp_1_sqIdx_reverse_flag ? ~sqPtr_flag : sqPtr_flag; // @[CircularQueuePtr.scala 44:26]
  assign io_enq_resp_1_sqIdx_value = _io_enq_resp_1_sqIdx_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  assign io_enq_resp_2_lqIdx_flag = _io_enq_resp_2_lqIdx_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_2_lqIdx_value = _io_enq_resp_2_lqIdx_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_2_sqIdx_flag = io_enq_resp_2_sqIdx_reverse_flag ? ~sqPtr_flag : sqPtr_flag; // @[CircularQueuePtr.scala 44:26]
  assign io_enq_resp_2_sqIdx_value = _io_enq_resp_2_sqIdx_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  assign io_enq_resp_3_lqIdx_flag = _io_enq_resp_3_lqIdx_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_3_lqIdx_value = _io_enq_resp_3_lqIdx_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  assign io_enq_resp_3_sqIdx_flag = io_enq_resp_3_sqIdx_reverse_flag ? ~sqPtr_flag : sqPtr_flag; // @[CircularQueuePtr.scala 44:26]
  assign io_enq_resp_3_sqIdx_value = _io_enq_resp_3_sqIdx_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  assign io_enqLsq_needAlloc_0 = REG_0; // @[LSQWrapper.scala 317:23]
  assign io_enqLsq_needAlloc_1 = REG_1; // @[LSQWrapper.scala 317:23]
  assign io_enqLsq_needAlloc_2 = REG_2; // @[LSQWrapper.scala 317:23]
  assign io_enqLsq_needAlloc_3 = REG_3; // @[LSQWrapper.scala 317:23]
  assign io_enqLsq_req_0_valid = io_enqLsq_req_0_valid_REG; // @[LSQWrapper.scala 320:17]
  assign io_enqLsq_req_0_bits_cf_trigger_backendEn_0 = io_enqLsq_req_0_bits_rcf_trigger_backendEn_0; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_0_bits_cf_storeSetHit = io_enqLsq_req_0_bits_rcf_storeSetHit; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_0_bits_cf_ssid = io_enqLsq_req_0_bits_rcf_ssid; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_0_bits_ctrl_fuOpType = io_enqLsq_req_0_bits_rctrl_fuOpType; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_0_bits_robIdx_flag = io_enqLsq_req_0_bits_rrobIdx_flag; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_0_bits_robIdx_value = io_enqLsq_req_0_bits_rrobIdx_value; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_0_bits_lqIdx_flag = io_enqLsq_req_0_bits_lqIdx_rflag; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_0_bits_lqIdx_value = io_enqLsq_req_0_bits_lqIdx_rvalue; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_0_bits_sqIdx_value = io_enqLsq_req_0_bits_sqIdx_rvalue; // @[LSQWrapper.scala 323:22]
  assign io_enqLsq_req_1_valid = io_enqLsq_req_1_valid_REG; // @[LSQWrapper.scala 320:17]
  assign io_enqLsq_req_1_bits_cf_trigger_backendEn_0 = io_enqLsq_req_1_bits_rcf_trigger_backendEn_0; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_1_bits_cf_storeSetHit = io_enqLsq_req_1_bits_rcf_storeSetHit; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_1_bits_cf_ssid = io_enqLsq_req_1_bits_rcf_ssid; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_1_bits_ctrl_fuOpType = io_enqLsq_req_1_bits_rctrl_fuOpType; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_1_bits_robIdx_flag = io_enqLsq_req_1_bits_rrobIdx_flag; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_1_bits_robIdx_value = io_enqLsq_req_1_bits_rrobIdx_value; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_1_bits_lqIdx_flag = io_enqLsq_req_1_bits_lqIdx_rflag; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_1_bits_lqIdx_value = io_enqLsq_req_1_bits_lqIdx_rvalue; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_1_bits_sqIdx_value = io_enqLsq_req_1_bits_sqIdx_rvalue; // @[LSQWrapper.scala 323:22]
  assign io_enqLsq_req_2_valid = io_enqLsq_req_2_valid_REG; // @[LSQWrapper.scala 320:17]
  assign io_enqLsq_req_2_bits_cf_trigger_backendEn_0 = io_enqLsq_req_2_bits_rcf_trigger_backendEn_0; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_2_bits_cf_storeSetHit = io_enqLsq_req_2_bits_rcf_storeSetHit; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_2_bits_cf_ssid = io_enqLsq_req_2_bits_rcf_ssid; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_2_bits_ctrl_fuOpType = io_enqLsq_req_2_bits_rctrl_fuOpType; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_2_bits_robIdx_flag = io_enqLsq_req_2_bits_rrobIdx_flag; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_2_bits_robIdx_value = io_enqLsq_req_2_bits_rrobIdx_value; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_2_bits_lqIdx_flag = io_enqLsq_req_2_bits_lqIdx_rflag; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_2_bits_lqIdx_value = io_enqLsq_req_2_bits_lqIdx_rvalue; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_2_bits_sqIdx_value = io_enqLsq_req_2_bits_sqIdx_rvalue; // @[LSQWrapper.scala 323:22]
  assign io_enqLsq_req_3_valid = io_enqLsq_req_3_valid_REG; // @[LSQWrapper.scala 320:17]
  assign io_enqLsq_req_3_bits_cf_trigger_backendEn_0 = io_enqLsq_req_3_bits_rcf_trigger_backendEn_0; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_3_bits_cf_storeSetHit = io_enqLsq_req_3_bits_rcf_storeSetHit; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_3_bits_cf_ssid = io_enqLsq_req_3_bits_rcf_ssid; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_3_bits_ctrl_fuOpType = io_enqLsq_req_3_bits_rctrl_fuOpType; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_3_bits_robIdx_flag = io_enqLsq_req_3_bits_rrobIdx_flag; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_3_bits_robIdx_value = io_enqLsq_req_3_bits_rrobIdx_value; // @[LSQWrapper.scala 321:16]
  assign io_enqLsq_req_3_bits_lqIdx_flag = io_enqLsq_req_3_bits_lqIdx_rflag; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_3_bits_lqIdx_value = io_enqLsq_req_3_bits_lqIdx_rvalue; // @[LSQWrapper.scala 322:22]
  assign io_enqLsq_req_3_bits_sqIdx_value = io_enqLsq_req_3_bits_sqIdx_rvalue; // @[LSQWrapper.scala 323:22]
  always @(posedge clock) begin
    t1_redirect <= io_redirect_valid; // @[LSQWrapper.scala 277:28]
    t2_redirect <= t1_redirect; // @[LSQWrapper.scala 278:28]
    t3_update <= t2_redirect & ~(|_t2_update_T_4); // @[LSQWrapper.scala 279:31]
    t3_lqCancelCnt <= io_lqCancelCnt; // @[LSQWrapper.scala 281:31]
    t3_sqCancelCnt <= io_sqCancelCnt; // @[LSQWrapper.scala 282:31]
    io_enq_canAccept_REG <= ldCanAccept & sqCanAccept & ~t2_update; // @[LSQWrapper.scala 307:58]
    REG_0 <= io_enq_needAlloc_0; // @[LSQWrapper.scala 317:33]
    REG_1 <= io_enq_needAlloc_1; // @[LSQWrapper.scala 317:33]
    REG_2 <= io_enq_needAlloc_2; // @[LSQWrapper.scala 317:33]
    REG_3 <= io_enq_needAlloc_3; // @[LSQWrapper.scala 317:33]
    io_enqLsq_req_0_valid_REG <= io_enq_req_0_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rcf_trigger_backendEn_0 <= io_enq_req_0_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rcf_storeSetHit <= io_enq_req_0_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rcf_ssid <= io_enq_req_0_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rctrl_fuOpType <= io_enq_req_0_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rrobIdx_flag <= io_enq_req_0_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rrobIdx_value <= io_enq_req_0_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_lqIdx_rflag <= io_enq_resp_0_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_lqIdx_rvalue <= io_enq_resp_0_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_sqIdx_rvalue <= io_enq_resp_0_sqIdx_value; // @[Reg.scala 17:22]
    end
    io_enqLsq_req_1_valid_REG <= io_enq_req_1_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rcf_trigger_backendEn_0 <= io_enq_req_1_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rcf_storeSetHit <= io_enq_req_1_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rcf_ssid <= io_enq_req_1_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rctrl_fuOpType <= io_enq_req_1_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rrobIdx_flag <= io_enq_req_1_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rrobIdx_value <= io_enq_req_1_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_lqIdx_rflag <= io_enq_resp_1_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_lqIdx_rvalue <= io_enq_resp_1_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_sqIdx_rvalue <= io_enq_resp_1_sqIdx_value; // @[Reg.scala 17:22]
    end
    io_enqLsq_req_2_valid_REG <= io_enq_req_2_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rcf_trigger_backendEn_0 <= io_enq_req_2_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rcf_storeSetHit <= io_enq_req_2_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rcf_ssid <= io_enq_req_2_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rctrl_fuOpType <= io_enq_req_2_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rrobIdx_flag <= io_enq_req_2_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rrobIdx_value <= io_enq_req_2_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_lqIdx_rflag <= io_enq_resp_2_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_lqIdx_rvalue <= io_enq_resp_2_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_sqIdx_rvalue <= io_enq_resp_2_sqIdx_value; // @[Reg.scala 17:22]
    end
    io_enqLsq_req_3_valid_REG <= io_enq_req_3_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 319:50]
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rcf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rcf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rcf_ssid <= io_enq_req_3_bits_cf_ssid; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rctrl_fuOpType <= io_enq_req_3_bits_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rrobIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rrobIdx_value <= io_enq_req_3_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_lqIdx_rflag <= io_enq_resp_3_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_lqIdx_rvalue <= io_enq_resp_3_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_sqIdx_rvalue <= io_enq_resp_3_sqIdx_value; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LSQWrapper.scala 283:20]
      lqPtr_flag <= 1'h0; // @[LSQWrapper.scala 284:11]
    end else if (t3_update) begin // @[LSQWrapper.scala 288:55]
      lqPtr_flag <= lqPtr_new_ptr_flag; // @[LSQWrapper.scala 289:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 265:22]
      lqPtr_flag <= lqPtr_new_ptr_1_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LSQWrapper.scala 283:20]
      lqPtr_value <= 4'h0; // @[LSQWrapper.scala 284:11]
    end else if (t3_update) begin // @[LSQWrapper.scala 288:55]
      lqPtr_value <= lqPtr_flipped_new_ptr_value; // @[LSQWrapper.scala 289:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 265:22]
      lqPtr_value <= lqPtr_new_ptr_1_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LSQWrapper.scala 283:20]
      sqPtr_flag <= 1'h0; // @[LSQWrapper.scala 286:11]
    end else if (t3_update) begin // @[LSQWrapper.scala 288:55]
      sqPtr_flag <= sqPtr_new_ptr_flag; // @[CircularQueuePtr.scala 44:26]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 266:22]
      if (sqPtr_reverse_flag) begin
        sqPtr_flag <= ~sqPtr_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LSQWrapper.scala 283:20]
      sqPtr_value <= 4'h0; // @[LSQWrapper.scala 286:11]
    end else if (t3_update) begin // @[LSQWrapper.scala 288:55]
      sqPtr_value <= sqPtr_flipped_new_ptr_value; // @[LSQWrapper.scala 291:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 266:22]
      sqPtr_value <= sqPtr_new_ptr_1_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LSQWrapper.scala 283:20]
      lqCounter <= 5'h10; // @[LSQWrapper.scala 285:15]
    end else if (t3_update) begin // @[LSQWrapper.scala 288:55]
      lqCounter <= _lqCounter_T_3; // @[LSQWrapper.scala 290:15]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 294:15]
      lqCounter <= _lqCounter_T_7;
    end else begin
      lqCounter <= _lqCounter_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LSQWrapper.scala 283:20]
      sqCounter <= 4'hc; // @[LSQWrapper.scala 287:15]
    end else if (t3_update) begin // @[LSQWrapper.scala 288:55]
      sqCounter <= _sqCounter_T_3; // @[LSQWrapper.scala 292:15]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 295:15]
      sqCounter <= _sqCounter_T_7;
    end else begin
      sqCounter <= _sqCounter_T_1;
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
  lqPtr_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  lqPtr_value = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  sqPtr_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sqPtr_value = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  lqCounter = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  sqCounter = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  t1_redirect = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  t2_redirect = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  t3_update = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  t3_lqCancelCnt = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  t3_sqCancelCnt = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  io_enq_canAccept_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_0 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  REG_1 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  REG_2 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  REG_3 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  io_enqLsq_req_0_valid_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rcf_trigger_backendEn_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rcf_storeSetHit = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rcf_ssid = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rctrl_fuOpType = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rrobIdx_flag = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rrobIdx_value = _RAND_22[4:0];
  _RAND_23 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_lqIdx_rflag = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_lqIdx_rvalue = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_sqIdx_rvalue = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  io_enqLsq_req_1_valid_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rcf_trigger_backendEn_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rcf_storeSetHit = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rcf_ssid = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rctrl_fuOpType = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rrobIdx_flag = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rrobIdx_value = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_lqIdx_rflag = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_lqIdx_rvalue = _RAND_34[3:0];
  _RAND_35 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_sqIdx_rvalue = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  io_enqLsq_req_2_valid_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rcf_trigger_backendEn_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rcf_storeSetHit = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rcf_ssid = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rctrl_fuOpType = _RAND_40[6:0];
  _RAND_41 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rrobIdx_flag = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rrobIdx_value = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_lqIdx_rflag = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_lqIdx_rvalue = _RAND_44[3:0];
  _RAND_45 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_sqIdx_rvalue = _RAND_45[3:0];
  _RAND_46 = {1{`RANDOM}};
  io_enqLsq_req_3_valid_REG = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rcf_trigger_backendEn_0 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rcf_storeSetHit = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rcf_ssid = _RAND_49[4:0];
  _RAND_50 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rctrl_fuOpType = _RAND_50[6:0];
  _RAND_51 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rrobIdx_flag = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rrobIdx_value = _RAND_52[4:0];
  _RAND_53 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_lqIdx_rflag = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_lqIdx_rvalue = _RAND_54[3:0];
  _RAND_55 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_sqIdx_rvalue = _RAND_55[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    lqPtr_flag = 1'h0;
  end
  if (reset) begin
    lqPtr_value = 4'h0;
  end
  if (reset) begin
    sqPtr_flag = 1'h0;
  end
  if (reset) begin
    sqPtr_value = 4'h0;
  end
  if (reset) begin
    lqCounter = 5'h10;
  end
  if (reset) begin
    sqCounter = 4'hc;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

