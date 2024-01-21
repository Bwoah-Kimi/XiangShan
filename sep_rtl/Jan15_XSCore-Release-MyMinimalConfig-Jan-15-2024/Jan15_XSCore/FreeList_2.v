module FreeList_2(
  input        clock,
  input        reset,
  output [2:0] io_allocateSlot_0,
  output [2:0] io_allocateSlot_1,
  output       io_canAllocate_0,
  output       io_canAllocate_1,
  input        io_doAllocate_0,
  input        io_doAllocate_1,
  input  [7:0] io_free,
  output       io_empty
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] freeList_0; // @[FreeList.scala 43:25]
  reg [2:0] freeList_1; // @[FreeList.scala 43:25]
  reg [2:0] freeList_2; // @[FreeList.scala 43:25]
  reg [2:0] freeList_3; // @[FreeList.scala 43:25]
  reg [2:0] freeList_4; // @[FreeList.scala 43:25]
  reg [2:0] freeList_5; // @[FreeList.scala 43:25]
  reg [2:0] freeList_6; // @[FreeList.scala 43:25]
  reg [2:0] freeList_7; // @[FreeList.scala 43:25]
  reg  headPtr_flag; // @[FreeList.scala 58:25]
  reg [2:0] headPtr_value; // @[FreeList.scala 58:25]
  reg  tailPtr_flag; // @[FreeList.scala 60:24]
  reg [2:0] tailPtr_value; // @[FreeList.scala 60:24]
  reg [7:0] freeMask; // @[FreeList.scala 69:25]
  reg  freeReq_0; // @[FreeList.scala 89:24]
  reg [7:0] freeSlotOH_0; // @[FreeList.scala 90:27]
  wire [7:0] freeSelMaskVec_0 = freeReq_0 ? freeSlotOH_0 : 8'h0; // @[FreeList.scala 101:29]
  reg  freeReq_1; // @[FreeList.scala 89:24]
  reg [7:0] freeSlotOH_1; // @[FreeList.scala 90:27]
  wire [7:0] freeSelMaskVec_1 = freeReq_1 ? freeSlotOH_1 : 8'h0; // @[FreeList.scala 101:29]
  wire [7:0] _freeSelMask_T = freeSelMaskVec_0 | freeSelMaskVec_1; // @[FreeList.scala 75:41]
  reg  freeReq_2; // @[FreeList.scala 89:24]
  reg [7:0] freeSlotOH_2; // @[FreeList.scala 90:27]
  wire [7:0] freeSelMaskVec_2 = freeReq_2 ? freeSlotOH_2 : 8'h0; // @[FreeList.scala 101:29]
  wire [7:0] _freeSelMask_T_1 = _freeSelMask_T | freeSelMaskVec_2; // @[FreeList.scala 75:41]
  reg  freeReq_3; // @[FreeList.scala 89:24]
  reg [7:0] freeSlotOH_3; // @[FreeList.scala 90:27]
  wire [7:0] freeSelMaskVec_3 = freeReq_3 ? freeSlotOH_3 : 8'h0; // @[FreeList.scala 101:29]
  wire [7:0] freeSelMask = _freeSelMask_T_1 | freeSelMaskVec_3; // @[FreeList.scala 75:41]
  wire [7:0] _freeMask_T = io_free | freeMask; // @[FreeList.scala 76:24]
  wire [7:0] _freeMask_T_1 = ~freeSelMask; // @[FreeList.scala 76:38]
  wire [7:0] _remFreeSelMaskVec_T_1 = freeMask & _freeMask_T_1; // @[FreeList.scala 78:87]
  wire [1:0] remFreeSelMaskVec_0 = {_remFreeSelMaskVec_T_1[4],_remFreeSelMaskVec_T_1[0]}; // @[FreeList.scala 65:82]
  wire [1:0] remFreeSelMaskVec_1 = {_remFreeSelMaskVec_T_1[5],_remFreeSelMaskVec_T_1[1]}; // @[FreeList.scala 65:82]
  wire [1:0] remFreeSelMaskVec_2 = {_remFreeSelMaskVec_T_1[6],_remFreeSelMaskVec_T_1[2]}; // @[FreeList.scala 65:82]
  wire [1:0] remFreeSelMaskVec_3 = {_remFreeSelMaskVec_T_1[7],_remFreeSelMaskVec_T_1[3]}; // @[FreeList.scala 65:82]
  wire [1:0] _remFreeSelIndexOHVec_highIndexOH_T_2 = remFreeSelMaskVec_0[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] remFreeSelIndexOHVec_highIndexOH = remFreeSelMaskVec_0[0] ? 2'h1 : _remFreeSelIndexOHVec_highIndexOH_T_2; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__0 = remFreeSelIndexOHVec_highIndexOH[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__4 = remFreeSelIndexOHVec_highIndexOH[1]; // @[FreeList.scala 84:59]
  wire [3:0] remFreeSelIndexOHVec_lo = {2'h0,1'h0,remFreeSelIndexOHVec_freeIndexOHVec__0}; // @[FreeList.scala 86:20]
  wire [3:0] remFreeSelIndexOHVec_hi = {2'h0,1'h0,remFreeSelIndexOHVec_freeIndexOHVec__4}; // @[FreeList.scala 86:20]
  wire [1:0] _remFreeSelIndexOHVec_highIndexOH_T_5 = remFreeSelMaskVec_1[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] remFreeSelIndexOHVec_highIndexOH_1 = remFreeSelMaskVec_1[0] ? 2'h1 : _remFreeSelIndexOHVec_highIndexOH_T_5; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_1 = remFreeSelIndexOHVec_highIndexOH_1[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_5 = remFreeSelIndexOHVec_highIndexOH_1[1]; // @[FreeList.scala 84:59]
  wire [3:0] remFreeSelIndexOHVec_lo_1 = {2'h0,remFreeSelIndexOHVec_freeIndexOHVec_1_1,1'h0}; // @[FreeList.scala 86:20]
  wire [3:0] remFreeSelIndexOHVec_hi_1 = {2'h0,remFreeSelIndexOHVec_freeIndexOHVec_1_5,1'h0}; // @[FreeList.scala 86:20]
  wire [1:0] _remFreeSelIndexOHVec_highIndexOH_T_8 = remFreeSelMaskVec_2[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] remFreeSelIndexOHVec_highIndexOH_2 = remFreeSelMaskVec_2[0] ? 2'h1 : _remFreeSelIndexOHVec_highIndexOH_T_8; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_2 = remFreeSelIndexOHVec_highIndexOH_2[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_6 = remFreeSelIndexOHVec_highIndexOH_2[1]; // @[FreeList.scala 84:59]
  wire [3:0] remFreeSelIndexOHVec_lo_2 = {1'h0,remFreeSelIndexOHVec_freeIndexOHVec_2_2,2'h0}; // @[FreeList.scala 86:20]
  wire [3:0] remFreeSelIndexOHVec_hi_2 = {1'h0,remFreeSelIndexOHVec_freeIndexOHVec_2_6,2'h0}; // @[FreeList.scala 86:20]
  wire [1:0] _remFreeSelIndexOHVec_highIndexOH_T_11 = remFreeSelMaskVec_3[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] remFreeSelIndexOHVec_highIndexOH_3 = remFreeSelMaskVec_3[0] ? 2'h1 : _remFreeSelIndexOHVec_highIndexOH_T_11
    ; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_3 = remFreeSelIndexOHVec_highIndexOH_3[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_7 = remFreeSelIndexOHVec_highIndexOH_3[1]; // @[FreeList.scala 84:59]
  wire [3:0] remFreeSelIndexOHVec_lo_3 = {remFreeSelIndexOHVec_freeIndexOHVec_3_3,1'h0,2'h0}; // @[FreeList.scala 86:20]
  wire [3:0] remFreeSelIndexOHVec_hi_3 = {remFreeSelIndexOHVec_freeIndexOHVec_3_7,1'h0,2'h0}; // @[FreeList.scala 86:20]
  wire [3:0] _doFree_T = {freeReq_3,freeReq_2,freeReq_1,freeReq_0}; // @[FreeList.scala 91:24]
  wire  doFree = |_doFree_T; // @[FreeList.scala 91:31]
  wire [3:0] _enqPtr_new_ptr_T = {tailPtr_flag,tailPtr_value}; // @[Cat.scala 31:58]
  wire [4:0] _enqPtr_new_ptr_T_1 = {{1'd0}, _enqPtr_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] enqPtr_value = _enqPtr_new_ptr_T_1[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] freeList_hi = freeSlotOH_0[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo = freeSlotOH_0[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T = |freeList_hi; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_1 = freeList_hi | freeList_lo; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_1 = _freeList_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_1 = _freeList_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_2 = |freeList_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_3 = freeList_hi_1 | freeList_lo_1; // @[OneHot.scala 32:28]
  wire [2:0] _freeList_T_6 = {_freeList_T,_freeList_T_2,_freeList_T_3[1]}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_0 = 3'h0 == enqPtr_value ? _freeList_T_6 : freeList_0; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_1 = 3'h1 == enqPtr_value ? _freeList_T_6 : freeList_1; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_2 = 3'h2 == enqPtr_value ? _freeList_T_6 : freeList_2; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_3 = 3'h3 == enqPtr_value ? _freeList_T_6 : freeList_3; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_4 = 3'h4 == enqPtr_value ? _freeList_T_6 : freeList_4; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_5 = 3'h5 == enqPtr_value ? _freeList_T_6 : freeList_5; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_6 = 3'h6 == enqPtr_value ? _freeList_T_6 : freeList_6; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_7 = 3'h7 == enqPtr_value ? _freeList_T_6 : freeList_7; // @[FreeList.scala 43:25 98:{30,30}]
  wire [2:0] _GEN_8 = freeReq_0 ? _GEN_0 : freeList_0; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_9 = freeReq_0 ? _GEN_1 : freeList_1; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_10 = freeReq_0 ? _GEN_2 : freeList_2; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_11 = freeReq_0 ? _GEN_3 : freeList_3; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_12 = freeReq_0 ? _GEN_4 : freeList_4; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_13 = freeReq_0 ? _GEN_5 : freeList_5; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_14 = freeReq_0 ? _GEN_6 : freeList_6; // @[FreeList.scala 97:23 43:25]
  wire [2:0] _GEN_15 = freeReq_0 ? _GEN_7 : freeList_7; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_80 = {{3'd0}, freeReq_0}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _enqPtr_new_ptr_T_7 = _enqPtr_new_ptr_T + _GEN_80; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] enqPtr_1_value = _enqPtr_new_ptr_T_7[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] freeList_hi_2 = freeSlotOH_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_2 = freeSlotOH_1[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_7 = |freeList_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_8 = freeList_hi_2 | freeList_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_3 = _freeList_T_8[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_3 = _freeList_T_8[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_9 = |freeList_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_10 = freeList_hi_3 | freeList_lo_3; // @[OneHot.scala 32:28]
  wire [2:0] _freeList_T_13 = {_freeList_T_7,_freeList_T_9,_freeList_T_10[1]}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_16 = 3'h0 == enqPtr_1_value ? _freeList_T_13 : _GEN_8; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_17 = 3'h1 == enqPtr_1_value ? _freeList_T_13 : _GEN_9; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_18 = 3'h2 == enqPtr_1_value ? _freeList_T_13 : _GEN_10; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_19 = 3'h3 == enqPtr_1_value ? _freeList_T_13 : _GEN_11; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_20 = 3'h4 == enqPtr_1_value ? _freeList_T_13 : _GEN_12; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_21 = 3'h5 == enqPtr_1_value ? _freeList_T_13 : _GEN_13; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_22 = 3'h6 == enqPtr_1_value ? _freeList_T_13 : _GEN_14; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_23 = 3'h7 == enqPtr_1_value ? _freeList_T_13 : _GEN_15; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_24 = freeReq_1 ? _GEN_16 : _GEN_8; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_25 = freeReq_1 ? _GEN_17 : _GEN_9; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_26 = freeReq_1 ? _GEN_18 : _GEN_10; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_27 = freeReq_1 ? _GEN_19 : _GEN_11; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_28 = freeReq_1 ? _GEN_20 : _GEN_12; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_29 = freeReq_1 ? _GEN_21 : _GEN_13; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_30 = freeReq_1 ? _GEN_22 : _GEN_14; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_31 = freeReq_1 ? _GEN_23 : _GEN_15; // @[FreeList.scala 97:23]
  wire [1:0] offset = freeReq_0 + freeReq_1; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_81 = {{2'd0}, offset}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _enqPtr_new_ptr_T_12 = _enqPtr_new_ptr_T + _GEN_81; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] enqPtr_2_value = _enqPtr_new_ptr_T_12[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] freeList_hi_4 = freeSlotOH_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_4 = freeSlotOH_2[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_14 = |freeList_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_15 = freeList_hi_4 | freeList_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_5 = _freeList_T_15[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_5 = _freeList_T_15[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_16 = |freeList_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_17 = freeList_hi_5 | freeList_lo_5; // @[OneHot.scala 32:28]
  wire [2:0] _freeList_T_20 = {_freeList_T_14,_freeList_T_16,_freeList_T_17[1]}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_32 = 3'h0 == enqPtr_2_value ? _freeList_T_20 : _GEN_24; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_33 = 3'h1 == enqPtr_2_value ? _freeList_T_20 : _GEN_25; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_34 = 3'h2 == enqPtr_2_value ? _freeList_T_20 : _GEN_26; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_35 = 3'h3 == enqPtr_2_value ? _freeList_T_20 : _GEN_27; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_36 = 3'h4 == enqPtr_2_value ? _freeList_T_20 : _GEN_28; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_37 = 3'h5 == enqPtr_2_value ? _freeList_T_20 : _GEN_29; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_38 = 3'h6 == enqPtr_2_value ? _freeList_T_20 : _GEN_30; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_39 = 3'h7 == enqPtr_2_value ? _freeList_T_20 : _GEN_31; // @[FreeList.scala 98:{30,30}]
  wire [2:0] _GEN_40 = freeReq_2 ? _GEN_32 : _GEN_24; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_41 = freeReq_2 ? _GEN_33 : _GEN_25; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_42 = freeReq_2 ? _GEN_34 : _GEN_26; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_43 = freeReq_2 ? _GEN_35 : _GEN_27; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_44 = freeReq_2 ? _GEN_36 : _GEN_28; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_45 = freeReq_2 ? _GEN_37 : _GEN_29; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_46 = freeReq_2 ? _GEN_38 : _GEN_30; // @[FreeList.scala 97:23]
  wire [2:0] _GEN_47 = freeReq_2 ? _GEN_39 : _GEN_31; // @[FreeList.scala 97:23]
  wire [1:0] _offset_T_1 = freeReq_1 + freeReq_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_82 = {{1'd0}, freeReq_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_T_3 = _GEN_82 + _offset_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] offset_1 = _offset_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_83 = {{2'd0}, offset_1}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _enqPtr_new_ptr_T_17 = _enqPtr_new_ptr_T + _GEN_83; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] enqPtr_3_value = _enqPtr_new_ptr_T_17[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] freeList_hi_6 = freeSlotOH_3[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_6 = freeSlotOH_3[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_21 = |freeList_hi_6; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_22 = freeList_hi_6 | freeList_lo_6; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_7 = _freeList_T_22[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_7 = _freeList_T_22[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_23 = |freeList_hi_7; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_24 = freeList_hi_7 | freeList_lo_7; // @[OneHot.scala 32:28]
  wire [2:0] _freeList_T_27 = {_freeList_T_21,_freeList_T_23,_freeList_T_24[1]}; // @[Cat.scala 31:58]
  wire [1:0] _tailPtrNext_T_2 = freeReq_2 + freeReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _tailPtrNext_T_4 = offset + _tailPtrNext_T_2; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_84 = {{1'd0}, _tailPtrNext_T_4}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _tailPtrNext_new_ptr_T_2 = _enqPtr_new_ptr_T + _GEN_84; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] tailPtrNext_new_ptr_value = _tailPtrNext_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  tailPtrNext_new_ptr_flag = _tailPtrNext_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _doAllocate_T = {io_doAllocate_1,io_doAllocate_0}; // @[FreeList.scala 108:34]
  wire  doAllocate = |_doAllocate_T; // @[FreeList.scala 108:41]
  wire [1:0] numAllocate = io_doAllocate_0 + io_doAllocate_1; // @[Bitwise.scala 48:55]
  reg [3:0] freeSlotCnt; // @[FreeList.scala 110:28]
  wire [3:0] _deqPtr_new_ptr_T = {headPtr_flag,headPtr_value}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_85 = {{2'd0}, numAllocate}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] _deqPtr_new_ptr_T_2 = _deqPtr_new_ptr_T + _GEN_85; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] deqPtr_new_ptr_value = _deqPtr_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_new_ptr_flag = _deqPtr_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 39:59]
  wire [3:0] _deqPtr_new_ptr_T_5 = {deqPtr_new_ptr_flag,deqPtr_new_ptr_value}; // @[Cat.scala 31:58]
  wire [4:0] _deqPtr_new_ptr_T_6 = {{1'd0}, _deqPtr_new_ptr_T_5}; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] deqPtr_value = _deqPtr_new_ptr_T_6[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_flag = _deqPtr_new_ptr_T_6[3]; // @[CircularQueuePtr.scala 39:59]
  wire  io_canAllocate_0_differentFlag = deqPtr_flag ^ tailPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire  io_canAllocate_0_compare = deqPtr_value < tailPtr_value; // @[CircularQueuePtr.scala 73:30]
  reg  io_canAllocate_0_REG; // @[FreeList.scala 117:35]
  reg [2:0] io_allocateSlot_0_REG; // @[FreeList.scala 118:36]
  wire [2:0] _GEN_65 = 3'h1 == deqPtr_value ? freeList_1 : freeList_0; // @[FreeList.scala 118:{36,36}]
  wire [2:0] _GEN_66 = 3'h2 == deqPtr_value ? freeList_2 : _GEN_65; // @[FreeList.scala 118:{36,36}]
  wire [2:0] _GEN_67 = 3'h3 == deqPtr_value ? freeList_3 : _GEN_66; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _deqPtr_new_ptr_T_17 = _deqPtr_new_ptr_T_5 + 4'h1; // @[CircularQueuePtr.scala 39:46]
  wire [2:0] deqPtr_1_value = _deqPtr_new_ptr_T_17[2:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_1_flag = _deqPtr_new_ptr_T_17[3]; // @[CircularQueuePtr.scala 39:59]
  wire  io_canAllocate_1_differentFlag = deqPtr_1_flag ^ tailPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire  io_canAllocate_1_compare = deqPtr_1_value < tailPtr_value; // @[CircularQueuePtr.scala 73:30]
  reg  io_canAllocate_1_REG; // @[FreeList.scala 117:35]
  reg [2:0] io_allocateSlot_1_REG; // @[FreeList.scala 118:36]
  wire [2:0] _GEN_73 = 3'h1 == deqPtr_1_value ? freeList_1 : freeList_0; // @[FreeList.scala 118:{36,36}]
  wire [2:0] _GEN_74 = 3'h2 == deqPtr_1_value ? freeList_2 : _GEN_73; // @[FreeList.scala 118:{36,36}]
  wire [2:0] _GEN_75 = 3'h3 == deqPtr_1_value ? freeList_3 : _GEN_74; // @[FreeList.scala 118:{36,36}]
  wire [2:0] _freeSlotCnt_T_2 = tailPtrNext_new_ptr_value - deqPtr_new_ptr_value; // @[CircularQueuePtr.scala 105:21]
  wire [3:0] _GEN_88 = {{1'd0}, tailPtrNext_new_ptr_value}; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _freeSlotCnt_T_4 = 4'h8 + _GEN_88; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _GEN_89 = {{1'd0}, deqPtr_new_ptr_value}; // @[CircularQueuePtr.scala 106:41]
  wire [3:0] _freeSlotCnt_T_6 = _freeSlotCnt_T_4 - _GEN_89; // @[CircularQueuePtr.scala 106:41]
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
    if (3'h7 == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_7; // @[FreeList.scala 118:36]
    end else if (3'h6 == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_6; // @[FreeList.scala 118:36]
    end else if (3'h5 == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_5; // @[FreeList.scala 118:36]
    end else if (3'h4 == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_4; // @[FreeList.scala 118:36]
    end else begin
      io_allocateSlot_0_REG <= _GEN_67;
    end
    io_canAllocate_1_REG <= io_canAllocate_1_differentFlag ^ io_canAllocate_1_compare; // @[CircularQueuePtr.scala 74:19]
    if (3'h7 == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_7; // @[FreeList.scala 118:36]
    end else if (3'h6 == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_6; // @[FreeList.scala 118:36]
    end else if (3'h5 == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_5; // @[FreeList.scala 118:36]
    end else if (3'h4 == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_4; // @[FreeList.scala 118:36]
    end else begin
      io_allocateSlot_1_REG <= _GEN_75;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_0 <= 3'h0; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h0 == enqPtr_3_value) begin
        freeList_0 <= _freeList_T_27;
      end else begin
        freeList_0 <= _GEN_40;
      end
    end else begin
      freeList_0 <= _GEN_40;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_1 <= 3'h1; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h1 == enqPtr_3_value) begin
        freeList_1 <= _freeList_T_27;
      end else begin
        freeList_1 <= _GEN_41;
      end
    end else begin
      freeList_1 <= _GEN_41;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_2 <= 3'h2; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h2 == enqPtr_3_value) begin
        freeList_2 <= _freeList_T_27;
      end else begin
        freeList_2 <= _GEN_42;
      end
    end else begin
      freeList_2 <= _GEN_42;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_3 <= 3'h3; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h3 == enqPtr_3_value) begin
        freeList_3 <= _freeList_T_27;
      end else begin
        freeList_3 <= _GEN_43;
      end
    end else begin
      freeList_3 <= _GEN_43;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_4 <= 3'h4; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h4 == enqPtr_3_value) begin
        freeList_4 <= _freeList_T_27;
      end else begin
        freeList_4 <= _GEN_44;
      end
    end else begin
      freeList_4 <= _GEN_44;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_5 <= 3'h5; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h5 == enqPtr_3_value) begin
        freeList_5 <= _freeList_T_27;
      end else begin
        freeList_5 <= _GEN_45;
      end
    end else begin
      freeList_5 <= _GEN_45;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_6 <= 3'h6; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h6 == enqPtr_3_value) begin
        freeList_6 <= _freeList_T_27;
      end else begin
        freeList_6 <= _GEN_46;
      end
    end else begin
      freeList_6 <= _GEN_46;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_7 <= 3'h7; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (3'h7 == enqPtr_3_value) begin
        freeList_7 <= _freeList_T_27;
      end else begin
        freeList_7 <= _GEN_47;
      end
    end else begin
      freeList_7 <= _GEN_47;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 128:17]
      headPtr_flag <= 1'h0;
    end else if (doAllocate) begin
      headPtr_flag <= deqPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 128:17]
      headPtr_value <= 3'h0;
    end else if (doAllocate) begin
      headPtr_value <= deqPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 105:17]
      tailPtr_flag <= 1'h1;
    end else if (doFree) begin
      tailPtr_flag <= tailPtrNext_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 105:17]
      tailPtr_value <= 3'h0;
    end else if (doFree) begin
      tailPtr_value <= tailPtrNext_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 76:36]
      freeMask <= 8'h0;
    end else begin
      freeMask <= _freeMask_T & _freeMask_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 104:8]
      freeSlotCnt <= 4'h8;
    end else if (tailPtrNext_new_ptr_flag == deqPtr_new_ptr_flag) begin
      freeSlotCnt <= {{1'd0}, _freeSlotCnt_T_2};
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
  freeList_0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  freeList_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  freeList_2 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  freeList_3 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  freeList_4 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  freeList_5 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  freeList_6 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  freeList_7 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  headPtr_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  headPtr_value = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  tailPtr_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  tailPtr_value = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  freeMask = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  freeReq_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  freeSlotOH_0 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  freeReq_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  freeSlotOH_1 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  freeReq_2 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  freeSlotOH_2 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  freeReq_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  freeSlotOH_3 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  freeSlotCnt = _RAND_21[3:0];
  _RAND_22 = {1{`RANDOM}};
  io_canAllocate_0_REG = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_allocateSlot_0_REG = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  io_canAllocate_1_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_allocateSlot_1_REG = _RAND_25[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    freeList_0 = 3'h0;
  end
  if (reset) begin
    freeList_1 = 3'h1;
  end
  if (reset) begin
    freeList_2 = 3'h2;
  end
  if (reset) begin
    freeList_3 = 3'h3;
  end
  if (reset) begin
    freeList_4 = 3'h4;
  end
  if (reset) begin
    freeList_5 = 3'h5;
  end
  if (reset) begin
    freeList_6 = 3'h6;
  end
  if (reset) begin
    freeList_7 = 3'h7;
  end
  if (reset) begin
    headPtr_flag = 1'h0;
  end
  if (reset) begin
    headPtr_value = 3'h0;
  end
  if (reset) begin
    tailPtr_flag = 1'h1;
  end
  if (reset) begin
    tailPtr_value = 3'h0;
  end
  if (reset) begin
    freeMask = 8'h0;
  end
  if (reset) begin
    freeSlotCnt = 4'h8;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

