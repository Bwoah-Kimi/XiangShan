module FreeList_1(
  input         clock,
  input         reset,
  output [3:0]  io_allocateSlot_0,
  output [3:0]  io_allocateSlot_1,
  output        io_canAllocate_0,
  output        io_canAllocate_1,
  input         io_doAllocate_0,
  input         io_doAllocate_1,
  input  [11:0] io_free,
  output        io_empty
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
`endif // RANDOMIZE_REG_INIT
  reg [3:0] freeList_0; // @[FreeList.scala 43:25]
  reg [3:0] freeList_1; // @[FreeList.scala 43:25]
  reg [3:0] freeList_2; // @[FreeList.scala 43:25]
  reg [3:0] freeList_3; // @[FreeList.scala 43:25]
  reg [3:0] freeList_4; // @[FreeList.scala 43:25]
  reg [3:0] freeList_5; // @[FreeList.scala 43:25]
  reg [3:0] freeList_6; // @[FreeList.scala 43:25]
  reg [3:0] freeList_7; // @[FreeList.scala 43:25]
  reg [3:0] freeList_8; // @[FreeList.scala 43:25]
  reg [3:0] freeList_9; // @[FreeList.scala 43:25]
  reg [3:0] freeList_10; // @[FreeList.scala 43:25]
  reg [3:0] freeList_11; // @[FreeList.scala 43:25]
  reg  headPtr_flag; // @[FreeList.scala 58:25]
  reg [3:0] headPtr_value; // @[FreeList.scala 58:25]
  reg  tailPtr_flag; // @[FreeList.scala 60:24]
  reg [3:0] tailPtr_value; // @[FreeList.scala 60:24]
  reg [11:0] freeMask; // @[FreeList.scala 69:25]
  reg  freeReq_0; // @[FreeList.scala 89:24]
  reg [11:0] freeSlotOH_0; // @[FreeList.scala 90:27]
  wire [11:0] freeSelMaskVec_0 = freeReq_0 ? freeSlotOH_0 : 12'h0; // @[FreeList.scala 101:29]
  reg  freeReq_1; // @[FreeList.scala 89:24]
  reg [11:0] freeSlotOH_1; // @[FreeList.scala 90:27]
  wire [11:0] freeSelMaskVec_1 = freeReq_1 ? freeSlotOH_1 : 12'h0; // @[FreeList.scala 101:29]
  wire [11:0] _freeSelMask_T = freeSelMaskVec_0 | freeSelMaskVec_1; // @[FreeList.scala 75:41]
  reg  freeReq_2; // @[FreeList.scala 89:24]
  reg [11:0] freeSlotOH_2; // @[FreeList.scala 90:27]
  wire [11:0] freeSelMaskVec_2 = freeReq_2 ? freeSlotOH_2 : 12'h0; // @[FreeList.scala 101:29]
  wire [11:0] _freeSelMask_T_1 = _freeSelMask_T | freeSelMaskVec_2; // @[FreeList.scala 75:41]
  reg  freeReq_3; // @[FreeList.scala 89:24]
  reg [11:0] freeSlotOH_3; // @[FreeList.scala 90:27]
  wire [11:0] freeSelMaskVec_3 = freeReq_3 ? freeSlotOH_3 : 12'h0; // @[FreeList.scala 101:29]
  wire [11:0] freeSelMask = _freeSelMask_T_1 | freeSelMaskVec_3; // @[FreeList.scala 75:41]
  wire [11:0] _freeMask_T = io_free | freeMask; // @[FreeList.scala 76:24]
  wire [11:0] _freeMask_T_1 = ~freeSelMask; // @[FreeList.scala 76:38]
  wire [11:0] _remFreeSelMaskVec_T_1 = freeMask & _freeMask_T_1; // @[FreeList.scala 78:87]
  wire [2:0] remFreeSelMaskVec_0 = {_remFreeSelMaskVec_T_1[8],_remFreeSelMaskVec_T_1[4],_remFreeSelMaskVec_T_1[0]}; // @[FreeList.scala 65:82]
  wire [2:0] remFreeSelMaskVec_1 = {_remFreeSelMaskVec_T_1[9],_remFreeSelMaskVec_T_1[5],_remFreeSelMaskVec_T_1[1]}; // @[FreeList.scala 65:82]
  wire [2:0] remFreeSelMaskVec_2 = {_remFreeSelMaskVec_T_1[10],_remFreeSelMaskVec_T_1[6],_remFreeSelMaskVec_T_1[2]}; // @[FreeList.scala 65:82]
  wire [2:0] remFreeSelMaskVec_3 = {_remFreeSelMaskVec_T_1[11],_remFreeSelMaskVec_T_1[7],_remFreeSelMaskVec_T_1[3]}; // @[FreeList.scala 65:82]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_3 = remFreeSelMaskVec_0[2] ? 3'h4 : 3'h0; // @[Mux.scala 47:70]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_4 = remFreeSelMaskVec_0[1] ? 3'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_3; // @[Mux.scala 47:70]
  wire [2:0] remFreeSelIndexOHVec_highIndexOH = remFreeSelMaskVec_0[0] ? 3'h1 : _remFreeSelIndexOHVec_highIndexOH_T_4; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__0 = remFreeSelIndexOHVec_highIndexOH[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__4 = remFreeSelIndexOHVec_highIndexOH[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__8 = remFreeSelIndexOHVec_highIndexOH[2]; // @[FreeList.scala 84:59]
  wire [5:0] remFreeSelIndexOHVec_lo = {1'h0,remFreeSelIndexOHVec_freeIndexOHVec__4,1'h0,2'h0,
    remFreeSelIndexOHVec_freeIndexOHVec__0}; // @[FreeList.scala 86:20]
  wire [5:0] remFreeSelIndexOHVec_hi = {3'h0,remFreeSelIndexOHVec_freeIndexOHVec__8,1'h0,1'h0}; // @[FreeList.scala 86:20]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_8 = remFreeSelMaskVec_1[2] ? 3'h4 : 3'h0; // @[Mux.scala 47:70]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_9 = remFreeSelMaskVec_1[1] ? 3'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_8; // @[Mux.scala 47:70]
  wire [2:0] remFreeSelIndexOHVec_highIndexOH_1 = remFreeSelMaskVec_1[0] ? 3'h1 : _remFreeSelIndexOHVec_highIndexOH_T_9; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_1 = remFreeSelIndexOHVec_highIndexOH_1[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_5 = remFreeSelIndexOHVec_highIndexOH_1[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_9 = remFreeSelIndexOHVec_highIndexOH_1[2]; // @[FreeList.scala 84:59]
  wire [5:0] remFreeSelIndexOHVec_lo_1 = {remFreeSelIndexOHVec_freeIndexOHVec_1_5,1'h0,1'h0,1'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_1_1,1'h0}; // @[FreeList.scala 86:20]
  wire [5:0] remFreeSelIndexOHVec_hi_1 = {2'h0,remFreeSelIndexOHVec_freeIndexOHVec_1_9,3'h0}; // @[FreeList.scala 86:20]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_13 = remFreeSelMaskVec_2[2] ? 3'h4 : 3'h0; // @[Mux.scala 47:70]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_14 = remFreeSelMaskVec_2[1] ? 3'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_13; // @[Mux.scala 47:70]
  wire [2:0] remFreeSelIndexOHVec_highIndexOH_2 = remFreeSelMaskVec_2[0] ? 3'h1 : _remFreeSelIndexOHVec_highIndexOH_T_14
    ; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_2 = remFreeSelIndexOHVec_highIndexOH_2[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_6 = remFreeSelIndexOHVec_highIndexOH_2[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_10 = remFreeSelIndexOHVec_highIndexOH_2[2]; // @[FreeList.scala 84:59]
  wire [5:0] remFreeSelIndexOHVec_lo_2 = {3'h0,remFreeSelIndexOHVec_freeIndexOHVec_2_2,1'h0,1'h0}; // @[FreeList.scala 86:20]
  wire [5:0] remFreeSelIndexOHVec_hi_2 = {1'h0,remFreeSelIndexOHVec_freeIndexOHVec_2_10,1'h0,2'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_2_6}; // @[FreeList.scala 86:20]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_18 = remFreeSelMaskVec_3[2] ? 3'h4 : 3'h0; // @[Mux.scala 47:70]
  wire [2:0] _remFreeSelIndexOHVec_highIndexOH_T_19 = remFreeSelMaskVec_3[1] ? 3'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_18; // @[Mux.scala 47:70]
  wire [2:0] remFreeSelIndexOHVec_highIndexOH_3 = remFreeSelMaskVec_3[0] ? 3'h1 : _remFreeSelIndexOHVec_highIndexOH_T_19
    ; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_3 = remFreeSelIndexOHVec_highIndexOH_3[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_7 = remFreeSelIndexOHVec_highIndexOH_3[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_11 = remFreeSelIndexOHVec_highIndexOH_3[2]; // @[FreeList.scala 84:59]
  wire [5:0] remFreeSelIndexOHVec_lo_3 = {2'h0,remFreeSelIndexOHVec_freeIndexOHVec_3_3,3'h0}; // @[FreeList.scala 86:20]
  wire [5:0] remFreeSelIndexOHVec_hi_3 = {remFreeSelIndexOHVec_freeIndexOHVec_3_11,1'h0,1'h0,1'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_3_7,1'h0}; // @[FreeList.scala 86:20]
  wire [3:0] _doFree_T = {freeReq_3,freeReq_2,freeReq_1,freeReq_0}; // @[FreeList.scala 91:24]
  wire  doFree = |_doFree_T; // @[FreeList.scala 91:31]
  wire [4:0] enqPtr_new_value = {{1'd0}, tailPtr_value}; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _enqPtr_diff_T_1 = {1'h0,enqPtr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] enqPtr_diff = $signed(_enqPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  enqPtr_reverse_flag = $signed(enqPtr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _enqPtr_new_ptr_value_T = $signed(_enqPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _enqPtr_new_ptr_value_T_1 = enqPtr_reverse_flag ? _enqPtr_new_ptr_value_T : {{1'd0}, enqPtr_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] freeList_hi = freeSlotOH_0[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo = freeSlotOH_0[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T = |freeList_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_120 = {{4'd0}, freeList_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _freeList_T_1 = _GEN_120 | freeList_lo; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_1 = _freeList_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_1 = _freeList_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_2 = |freeList_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_3 = freeList_hi_1 | freeList_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_2 = _freeList_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_2 = _freeList_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_4 = |freeList_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_5 = freeList_hi_2 | freeList_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_9 = {_freeList_T,_freeList_T_2,_freeList_T_4,_freeList_T_5[1]}; // @[Cat.scala 31:58]
  wire [3:0] enqPtr_value = _enqPtr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] _GEN_0 = 4'h0 == enqPtr_value ? _freeList_T_9 : freeList_0; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_1 = 4'h1 == enqPtr_value ? _freeList_T_9 : freeList_1; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_2 = 4'h2 == enqPtr_value ? _freeList_T_9 : freeList_2; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_3 = 4'h3 == enqPtr_value ? _freeList_T_9 : freeList_3; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_4 = 4'h4 == enqPtr_value ? _freeList_T_9 : freeList_4; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_5 = 4'h5 == enqPtr_value ? _freeList_T_9 : freeList_5; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_6 = 4'h6 == enqPtr_value ? _freeList_T_9 : freeList_6; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_7 = 4'h7 == enqPtr_value ? _freeList_T_9 : freeList_7; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_8 = 4'h8 == enqPtr_value ? _freeList_T_9 : freeList_8; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_9 = 4'h9 == enqPtr_value ? _freeList_T_9 : freeList_9; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_10 = 4'ha == enqPtr_value ? _freeList_T_9 : freeList_10; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_11 = 4'hb == enqPtr_value ? _freeList_T_9 : freeList_11; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_12 = freeReq_0 ? _GEN_0 : freeList_0; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_13 = freeReq_0 ? _GEN_1 : freeList_1; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_14 = freeReq_0 ? _GEN_2 : freeList_2; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_15 = freeReq_0 ? _GEN_3 : freeList_3; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_16 = freeReq_0 ? _GEN_4 : freeList_4; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_17 = freeReq_0 ? _GEN_5 : freeList_5; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_18 = freeReq_0 ? _GEN_6 : freeList_6; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_19 = freeReq_0 ? _GEN_7 : freeList_7; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_20 = freeReq_0 ? _GEN_8 : freeList_8; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_21 = freeReq_0 ? _GEN_9 : freeList_9; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_22 = freeReq_0 ? _GEN_10 : freeList_10; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_23 = freeReq_0 ? _GEN_11 : freeList_11; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_121 = {{3'd0}, freeReq_0}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] enqPtr_new_value_1 = tailPtr_value + _GEN_121; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _enqPtr_diff_T_7 = {1'h0,enqPtr_new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] enqPtr_diff_1 = $signed(_enqPtr_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  enqPtr_reverse_flag_1 = $signed(enqPtr_diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _enqPtr_new_ptr_value_T_2 = $signed(_enqPtr_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _enqPtr_new_ptr_value_T_3 = enqPtr_reverse_flag_1 ? _enqPtr_new_ptr_value_T_2 : {{1'd0}, enqPtr_new_value_1
    }; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] freeList_hi_3 = freeSlotOH_1[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo_3 = freeSlotOH_1[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_10 = |freeList_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_122 = {{4'd0}, freeList_hi_3}; // @[OneHot.scala 32:28]
  wire [7:0] _freeList_T_11 = _GEN_122 | freeList_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_4 = _freeList_T_11[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_4 = _freeList_T_11[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_12 = |freeList_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_13 = freeList_hi_4 | freeList_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_5 = _freeList_T_13[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_5 = _freeList_T_13[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_14 = |freeList_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_15 = freeList_hi_5 | freeList_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_19 = {_freeList_T_10,_freeList_T_12,_freeList_T_14,_freeList_T_15[1]}; // @[Cat.scala 31:58]
  wire [3:0] enqPtr_1_value = _enqPtr_new_ptr_value_T_3[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] _GEN_24 = 4'h0 == enqPtr_1_value ? _freeList_T_19 : _GEN_12; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_25 = 4'h1 == enqPtr_1_value ? _freeList_T_19 : _GEN_13; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_26 = 4'h2 == enqPtr_1_value ? _freeList_T_19 : _GEN_14; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_27 = 4'h3 == enqPtr_1_value ? _freeList_T_19 : _GEN_15; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_28 = 4'h4 == enqPtr_1_value ? _freeList_T_19 : _GEN_16; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_29 = 4'h5 == enqPtr_1_value ? _freeList_T_19 : _GEN_17; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_30 = 4'h6 == enqPtr_1_value ? _freeList_T_19 : _GEN_18; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_31 = 4'h7 == enqPtr_1_value ? _freeList_T_19 : _GEN_19; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_32 = 4'h8 == enqPtr_1_value ? _freeList_T_19 : _GEN_20; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_33 = 4'h9 == enqPtr_1_value ? _freeList_T_19 : _GEN_21; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_34 = 4'ha == enqPtr_1_value ? _freeList_T_19 : _GEN_22; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_35 = 4'hb == enqPtr_1_value ? _freeList_T_19 : _GEN_23; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_36 = freeReq_1 ? _GEN_24 : _GEN_12; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_37 = freeReq_1 ? _GEN_25 : _GEN_13; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_38 = freeReq_1 ? _GEN_26 : _GEN_14; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_39 = freeReq_1 ? _GEN_27 : _GEN_15; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_40 = freeReq_1 ? _GEN_28 : _GEN_16; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_41 = freeReq_1 ? _GEN_29 : _GEN_17; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_42 = freeReq_1 ? _GEN_30 : _GEN_18; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_43 = freeReq_1 ? _GEN_31 : _GEN_19; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_44 = freeReq_1 ? _GEN_32 : _GEN_20; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_45 = freeReq_1 ? _GEN_33 : _GEN_21; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_46 = freeReq_1 ? _GEN_34 : _GEN_22; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_47 = freeReq_1 ? _GEN_35 : _GEN_23; // @[FreeList.scala 97:23]
  wire [1:0] offset = freeReq_0 + freeReq_1; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_123 = {{2'd0}, offset}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] enqPtr_new_value_2 = tailPtr_value + _GEN_123; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _enqPtr_diff_T_13 = {1'h0,enqPtr_new_value_2}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] enqPtr_diff_2 = $signed(_enqPtr_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  enqPtr_reverse_flag_2 = $signed(enqPtr_diff_2) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _enqPtr_new_ptr_value_T_4 = $signed(_enqPtr_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _enqPtr_new_ptr_value_T_5 = enqPtr_reverse_flag_2 ? _enqPtr_new_ptr_value_T_4 : {{1'd0}, enqPtr_new_value_2
    }; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] freeList_hi_6 = freeSlotOH_2[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo_6 = freeSlotOH_2[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_20 = |freeList_hi_6; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_124 = {{4'd0}, freeList_hi_6}; // @[OneHot.scala 32:28]
  wire [7:0] _freeList_T_21 = _GEN_124 | freeList_lo_6; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_7 = _freeList_T_21[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_7 = _freeList_T_21[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_22 = |freeList_hi_7; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_23 = freeList_hi_7 | freeList_lo_7; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_8 = _freeList_T_23[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_8 = _freeList_T_23[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_24 = |freeList_hi_8; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_25 = freeList_hi_8 | freeList_lo_8; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_29 = {_freeList_T_20,_freeList_T_22,_freeList_T_24,_freeList_T_25[1]}; // @[Cat.scala 31:58]
  wire [3:0] enqPtr_2_value = _enqPtr_new_ptr_value_T_5[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] _GEN_48 = 4'h0 == enqPtr_2_value ? _freeList_T_29 : _GEN_36; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_49 = 4'h1 == enqPtr_2_value ? _freeList_T_29 : _GEN_37; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_50 = 4'h2 == enqPtr_2_value ? _freeList_T_29 : _GEN_38; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_51 = 4'h3 == enqPtr_2_value ? _freeList_T_29 : _GEN_39; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_52 = 4'h4 == enqPtr_2_value ? _freeList_T_29 : _GEN_40; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_53 = 4'h5 == enqPtr_2_value ? _freeList_T_29 : _GEN_41; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_54 = 4'h6 == enqPtr_2_value ? _freeList_T_29 : _GEN_42; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_55 = 4'h7 == enqPtr_2_value ? _freeList_T_29 : _GEN_43; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_56 = 4'h8 == enqPtr_2_value ? _freeList_T_29 : _GEN_44; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_57 = 4'h9 == enqPtr_2_value ? _freeList_T_29 : _GEN_45; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_58 = 4'ha == enqPtr_2_value ? _freeList_T_29 : _GEN_46; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_59 = 4'hb == enqPtr_2_value ? _freeList_T_29 : _GEN_47; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_60 = freeReq_2 ? _GEN_48 : _GEN_36; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_61 = freeReq_2 ? _GEN_49 : _GEN_37; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_62 = freeReq_2 ? _GEN_50 : _GEN_38; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_63 = freeReq_2 ? _GEN_51 : _GEN_39; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_64 = freeReq_2 ? _GEN_52 : _GEN_40; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_65 = freeReq_2 ? _GEN_53 : _GEN_41; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_66 = freeReq_2 ? _GEN_54 : _GEN_42; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_67 = freeReq_2 ? _GEN_55 : _GEN_43; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_68 = freeReq_2 ? _GEN_56 : _GEN_44; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_69 = freeReq_2 ? _GEN_57 : _GEN_45; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_70 = freeReq_2 ? _GEN_58 : _GEN_46; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_71 = freeReq_2 ? _GEN_59 : _GEN_47; // @[FreeList.scala 97:23]
  wire [1:0] _offset_T_1 = freeReq_1 + freeReq_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_125 = {{1'd0}, freeReq_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_T_3 = _GEN_125 + _offset_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] offset_1 = _offset_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_126 = {{2'd0}, offset_1}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] enqPtr_new_value_3 = tailPtr_value + _GEN_126; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _enqPtr_diff_T_19 = {1'h0,enqPtr_new_value_3}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] enqPtr_diff_3 = $signed(_enqPtr_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  enqPtr_reverse_flag_3 = $signed(enqPtr_diff_3) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _enqPtr_new_ptr_value_T_6 = $signed(_enqPtr_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _enqPtr_new_ptr_value_T_7 = enqPtr_reverse_flag_3 ? _enqPtr_new_ptr_value_T_6 : {{1'd0}, enqPtr_new_value_3
    }; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] freeList_hi_9 = freeSlotOH_3[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo_9 = freeSlotOH_3[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_30 = |freeList_hi_9; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_127 = {{4'd0}, freeList_hi_9}; // @[OneHot.scala 32:28]
  wire [7:0] _freeList_T_31 = _GEN_127 | freeList_lo_9; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_10 = _freeList_T_31[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_10 = _freeList_T_31[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_32 = |freeList_hi_10; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_33 = freeList_hi_10 | freeList_lo_10; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_11 = _freeList_T_33[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_11 = _freeList_T_33[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_34 = |freeList_hi_11; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_35 = freeList_hi_11 | freeList_lo_11; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_39 = {_freeList_T_30,_freeList_T_32,_freeList_T_34,_freeList_T_35[1]}; // @[Cat.scala 31:58]
  wire [3:0] enqPtr_3_value = _enqPtr_new_ptr_value_T_7[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [1:0] _tailPtrNext_T_2 = freeReq_2 + freeReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _tailPtrNext_T_4 = offset + _tailPtrNext_T_2; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_128 = {{1'd0}, _tailPtrNext_T_4}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] tailPtrNext_new_value = tailPtr_value + _GEN_128; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _tailPtrNext_diff_T_1 = {1'h0,tailPtrNext_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] tailPtrNext_diff = $signed(_tailPtrNext_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  tailPtrNext_reverse_flag = $signed(tailPtrNext_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  tailPtrNext_new_ptr_flag = tailPtrNext_reverse_flag ? ~tailPtr_flag : tailPtr_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _tailPtrNext_new_ptr_value_T = $signed(_tailPtrNext_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _tailPtrNext_new_ptr_value_T_1 = tailPtrNext_reverse_flag ? _tailPtrNext_new_ptr_value_T : {{1'd0},
    tailPtrNext_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] tailPtrNext_new_ptr_value = _tailPtrNext_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [1:0] _doAllocate_T = {io_doAllocate_1,io_doAllocate_0}; // @[FreeList.scala 108:34]
  wire  doAllocate = |_doAllocate_T; // @[FreeList.scala 108:41]
  wire [1:0] numAllocate = io_doAllocate_0 + io_doAllocate_1; // @[Bitwise.scala 48:55]
  reg [3:0] freeSlotCnt; // @[FreeList.scala 110:28]
  wire [3:0] _GEN_129 = {{2'd0}, numAllocate}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] deqPtr_new_value = headPtr_value + _GEN_129; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _deqPtr_diff_T_1 = {1'h0,deqPtr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] deqPtr_diff = $signed(_deqPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  deqPtr_reverse_flag = $signed(deqPtr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  deqPtr_new_ptr_flag = deqPtr_reverse_flag ? ~headPtr_flag : headPtr_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _deqPtr_new_ptr_value_T = $signed(_deqPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _deqPtr_new_ptr_value_T_1 = deqPtr_reverse_flag ? _deqPtr_new_ptr_value_T : {{1'd0}, deqPtr_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] deqPtr_new_ptr_value = _deqPtr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] deqPtr_new_value_1 = {{1'd0}, deqPtr_new_ptr_value}; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _deqPtr_diff_T_7 = {1'h0,deqPtr_new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] deqPtr_diff_1 = $signed(_deqPtr_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  deqPtr_reverse_flag_1 = $signed(deqPtr_diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  deqPtr_flag = deqPtr_reverse_flag_1 ? ~deqPtr_new_ptr_flag : deqPtr_new_ptr_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _deqPtr_new_ptr_value_T_2 = $signed(_deqPtr_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _deqPtr_new_ptr_value_T_3 = deqPtr_reverse_flag_1 ? _deqPtr_new_ptr_value_T_2 : {{1'd0}, deqPtr_new_value_1
    }; // @[CircularQueuePtr.scala 45:27]
  wire  io_canAllocate_0_differentFlag = deqPtr_flag ^ tailPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire [3:0] deqPtr_value = _deqPtr_new_ptr_value_T_3[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  io_canAllocate_0_compare = deqPtr_value < tailPtr_value; // @[CircularQueuePtr.scala 73:30]
  reg  io_canAllocate_0_REG; // @[FreeList.scala 117:35]
  reg [3:0] io_allocateSlot_0_REG; // @[FreeList.scala 118:36]
  wire [3:0] _GEN_97 = 4'h1 == deqPtr_value ? freeList_1 : freeList_0; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_98 = 4'h2 == deqPtr_value ? freeList_2 : _GEN_97; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_99 = 4'h3 == deqPtr_value ? freeList_3 : _GEN_98; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_100 = 4'h4 == deqPtr_value ? freeList_4 : _GEN_99; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_101 = 4'h5 == deqPtr_value ? freeList_5 : _GEN_100; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_102 = 4'h6 == deqPtr_value ? freeList_6 : _GEN_101; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_103 = 4'h7 == deqPtr_value ? freeList_7 : _GEN_102; // @[FreeList.scala 118:{36,36}]
  wire [4:0] deqPtr_new_value_3 = deqPtr_new_ptr_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _deqPtr_diff_T_19 = {1'h0,deqPtr_new_value_3}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] deqPtr_diff_3 = $signed(_deqPtr_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  deqPtr_reverse_flag_3 = $signed(deqPtr_diff_3) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  deqPtr_1_flag = deqPtr_reverse_flag_3 ? ~deqPtr_new_ptr_flag : deqPtr_new_ptr_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _deqPtr_new_ptr_value_T_6 = $signed(_deqPtr_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _deqPtr_new_ptr_value_T_7 = deqPtr_reverse_flag_3 ? _deqPtr_new_ptr_value_T_6 : {{1'd0}, deqPtr_new_value_3
    }; // @[CircularQueuePtr.scala 45:27]
  wire  io_canAllocate_1_differentFlag = deqPtr_1_flag ^ tailPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire [3:0] deqPtr_1_value = _deqPtr_new_ptr_value_T_7[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  io_canAllocate_1_compare = deqPtr_1_value < tailPtr_value; // @[CircularQueuePtr.scala 73:30]
  reg  io_canAllocate_1_REG; // @[FreeList.scala 117:35]
  reg [3:0] io_allocateSlot_1_REG; // @[FreeList.scala 118:36]
  wire [3:0] _GEN_109 = 4'h1 == deqPtr_1_value ? freeList_1 : freeList_0; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_110 = 4'h2 == deqPtr_1_value ? freeList_2 : _GEN_109; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_111 = 4'h3 == deqPtr_1_value ? freeList_3 : _GEN_110; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_112 = 4'h4 == deqPtr_1_value ? freeList_4 : _GEN_111; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_113 = 4'h5 == deqPtr_1_value ? freeList_5 : _GEN_112; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_114 = 4'h6 == deqPtr_1_value ? freeList_6 : _GEN_113; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_115 = 4'h7 == deqPtr_1_value ? freeList_7 : _GEN_114; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _freeSlotCnt_T_2 = tailPtrNext_new_ptr_value - deqPtr_new_ptr_value; // @[CircularQueuePtr.scala 105:21]
  wire [3:0] _freeSlotCnt_T_4 = 4'hc + tailPtrNext_new_ptr_value; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _freeSlotCnt_T_6 = _freeSlotCnt_T_4 - deqPtr_new_ptr_value; // @[CircularQueuePtr.scala 106:41]
  assign io_allocateSlot_0 = io_allocateSlot_0_REG; // @[FreeList.scala 118:26]
  assign io_allocateSlot_1 = io_allocateSlot_1_REG; // @[FreeList.scala 118:26]
  assign io_canAllocate_0 = io_canAllocate_0_REG; // @[FreeList.scala 117:25]
  assign io_canAllocate_1 = io_canAllocate_1_REG; // @[FreeList.scala 117:25]
  assign io_empty = freeSlotCnt == 4'h0; // @[FreeList.scala 131:27]
  always @(posedge clock) begin
    freeReq_0 <= |remFreeSelMaskVec_0; // @[FreeList.scala 89:64]
    freeSlotOH_0 <= {remFreeSelIndexOHVec_hi,remFreeSelIndexOHVec_lo}; // @[FreeList.scala 86:20]
    freeReq_1 <= |remFreeSelMaskVec_1; // @[FreeList.scala 89:64]
    freeSlotOH_1 <= {remFreeSelIndexOHVec_hi_1,remFreeSelIndexOHVec_lo_1}; // @[FreeList.scala 86:20]
    freeReq_2 <= |remFreeSelMaskVec_2; // @[FreeList.scala 89:64]
    freeSlotOH_2 <= {remFreeSelIndexOHVec_hi_2,remFreeSelIndexOHVec_lo_2}; // @[FreeList.scala 86:20]
    freeReq_3 <= |remFreeSelMaskVec_3; // @[FreeList.scala 89:64]
    freeSlotOH_3 <= {remFreeSelIndexOHVec_hi_3,remFreeSelIndexOHVec_lo_3}; // @[FreeList.scala 86:20]
    io_canAllocate_0_REG <= io_canAllocate_0_differentFlag ^ io_canAllocate_0_compare; // @[CircularQueuePtr.scala 74:19]
    if (4'hb == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_11; // @[FreeList.scala 118:36]
    end else if (4'ha == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_10; // @[FreeList.scala 118:36]
    end else if (4'h9 == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_9; // @[FreeList.scala 118:36]
    end else if (4'h8 == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_8; // @[FreeList.scala 118:36]
    end else begin
      io_allocateSlot_0_REG <= _GEN_103;
    end
    io_canAllocate_1_REG <= io_canAllocate_1_differentFlag ^ io_canAllocate_1_compare; // @[CircularQueuePtr.scala 74:19]
    if (4'hb == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_11; // @[FreeList.scala 118:36]
    end else if (4'ha == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_10; // @[FreeList.scala 118:36]
    end else if (4'h9 == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_9; // @[FreeList.scala 118:36]
    end else if (4'h8 == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_8; // @[FreeList.scala 118:36]
    end else begin
      io_allocateSlot_1_REG <= _GEN_115;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_0 <= 4'h0; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h0 == enqPtr_3_value) begin
        freeList_0 <= _freeList_T_39;
      end else begin
        freeList_0 <= _GEN_60;
      end
    end else begin
      freeList_0 <= _GEN_60;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_1 <= 4'h1; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h1 == enqPtr_3_value) begin
        freeList_1 <= _freeList_T_39;
      end else begin
        freeList_1 <= _GEN_61;
      end
    end else begin
      freeList_1 <= _GEN_61;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_2 <= 4'h2; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h2 == enqPtr_3_value) begin
        freeList_2 <= _freeList_T_39;
      end else begin
        freeList_2 <= _GEN_62;
      end
    end else begin
      freeList_2 <= _GEN_62;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_3 <= 4'h3; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h3 == enqPtr_3_value) begin
        freeList_3 <= _freeList_T_39;
      end else begin
        freeList_3 <= _GEN_63;
      end
    end else begin
      freeList_3 <= _GEN_63;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_4 <= 4'h4; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h4 == enqPtr_3_value) begin
        freeList_4 <= _freeList_T_39;
      end else begin
        freeList_4 <= _GEN_64;
      end
    end else begin
      freeList_4 <= _GEN_64;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_5 <= 4'h5; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h5 == enqPtr_3_value) begin
        freeList_5 <= _freeList_T_39;
      end else begin
        freeList_5 <= _GEN_65;
      end
    end else begin
      freeList_5 <= _GEN_65;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_6 <= 4'h6; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h6 == enqPtr_3_value) begin
        freeList_6 <= _freeList_T_39;
      end else begin
        freeList_6 <= _GEN_66;
      end
    end else begin
      freeList_6 <= _GEN_66;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_7 <= 4'h7; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h7 == enqPtr_3_value) begin
        freeList_7 <= _freeList_T_39;
      end else begin
        freeList_7 <= _GEN_67;
      end
    end else begin
      freeList_7 <= _GEN_67;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_8 <= 4'h8; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h8 == enqPtr_3_value) begin
        freeList_8 <= _freeList_T_39;
      end else begin
        freeList_8 <= _GEN_68;
      end
    end else begin
      freeList_8 <= _GEN_68;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_9 <= 4'h9; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h9 == enqPtr_3_value) begin
        freeList_9 <= _freeList_T_39;
      end else begin
        freeList_9 <= _GEN_69;
      end
    end else begin
      freeList_9 <= _GEN_69;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_10 <= 4'ha; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'ha == enqPtr_3_value) begin
        freeList_10 <= _freeList_T_39;
      end else begin
        freeList_10 <= _GEN_70;
      end
    end else begin
      freeList_10 <= _GEN_70;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_11 <= 4'hb; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'hb == enqPtr_3_value) begin
        freeList_11 <= _freeList_T_39;
      end else begin
        freeList_11 <= _GEN_71;
      end
    end else begin
      freeList_11 <= _GEN_71;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 128:17]
      headPtr_flag <= 1'h0; // @[CircularQueuePtr.scala 44:26]
    end else if (doAllocate) begin
      if (deqPtr_reverse_flag) begin
        headPtr_flag <= ~headPtr_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 128:17]
      headPtr_value <= 4'h0;
    end else if (doAllocate) begin
      headPtr_value <= deqPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 105:17]
      tailPtr_flag <= 1'h1; // @[CircularQueuePtr.scala 44:26]
    end else if (doFree) begin
      if (tailPtrNext_reverse_flag) begin
        tailPtr_flag <= ~tailPtr_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 105:17]
      tailPtr_value <= 4'h0;
    end else if (doFree) begin
      tailPtr_value <= tailPtrNext_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 76:36]
      freeMask <= 12'h0;
    end else begin
      freeMask <= _freeMask_T & _freeMask_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 104:8]
      freeSlotCnt <= 4'hc;
    end else if (tailPtrNext_new_ptr_flag == deqPtr_new_ptr_flag) begin
      freeSlotCnt <= _freeSlotCnt_T_2;
    end else begin
      freeSlotCnt <= _freeSlotCnt_T_6;
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
  freeList_0 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  freeList_1 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  freeList_2 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  freeList_3 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  freeList_4 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  freeList_5 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  freeList_6 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  freeList_7 = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  freeList_8 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  freeList_9 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  freeList_10 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  freeList_11 = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  headPtr_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  headPtr_value = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  tailPtr_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  tailPtr_value = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  freeMask = _RAND_16[11:0];
  _RAND_17 = {1{`RANDOM}};
  freeReq_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  freeSlotOH_0 = _RAND_18[11:0];
  _RAND_19 = {1{`RANDOM}};
  freeReq_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  freeSlotOH_1 = _RAND_20[11:0];
  _RAND_21 = {1{`RANDOM}};
  freeReq_2 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  freeSlotOH_2 = _RAND_22[11:0];
  _RAND_23 = {1{`RANDOM}};
  freeReq_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  freeSlotOH_3 = _RAND_24[11:0];
  _RAND_25 = {1{`RANDOM}};
  freeSlotCnt = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  io_canAllocate_0_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_allocateSlot_0_REG = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  io_canAllocate_1_REG = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_allocateSlot_1_REG = _RAND_29[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    freeList_0 = 4'h0;
  end
  if (reset) begin
    freeList_1 = 4'h1;
  end
  if (reset) begin
    freeList_2 = 4'h2;
  end
  if (reset) begin
    freeList_3 = 4'h3;
  end
  if (reset) begin
    freeList_4 = 4'h4;
  end
  if (reset) begin
    freeList_5 = 4'h5;
  end
  if (reset) begin
    freeList_6 = 4'h6;
  end
  if (reset) begin
    freeList_7 = 4'h7;
  end
  if (reset) begin
    freeList_8 = 4'h8;
  end
  if (reset) begin
    freeList_9 = 4'h9;
  end
  if (reset) begin
    freeList_10 = 4'ha;
  end
  if (reset) begin
    freeList_11 = 4'hb;
  end
  if (reset) begin
    headPtr_flag = 1'h0;
  end
  if (reset) begin
    headPtr_value = 4'h0;
  end
  if (reset) begin
    tailPtr_flag = 1'h1;
  end
  if (reset) begin
    tailPtr_value = 4'h0;
  end
  if (reset) begin
    freeMask = 12'h0;
  end
  if (reset) begin
    freeSlotCnt = 4'hc;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

