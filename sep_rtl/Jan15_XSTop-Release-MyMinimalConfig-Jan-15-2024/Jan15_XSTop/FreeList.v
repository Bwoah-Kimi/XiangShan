module FreeList(
  input         clock,
  input         reset,
  output [3:0]  io_allocateSlot_0,
  output [3:0]  io_allocateSlot_1,
  output        io_canAllocate_0,
  output        io_canAllocate_1,
  input         io_doAllocate_0,
  input         io_doAllocate_1,
  input  [15:0] io_free,
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
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
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
  reg [3:0] freeList_12; // @[FreeList.scala 43:25]
  reg [3:0] freeList_13; // @[FreeList.scala 43:25]
  reg [3:0] freeList_14; // @[FreeList.scala 43:25]
  reg [3:0] freeList_15; // @[FreeList.scala 43:25]
  reg  headPtr_flag; // @[FreeList.scala 58:25]
  reg [3:0] headPtr_value; // @[FreeList.scala 58:25]
  reg  tailPtr_flag; // @[FreeList.scala 60:24]
  reg [3:0] tailPtr_value; // @[FreeList.scala 60:24]
  reg [15:0] freeMask; // @[FreeList.scala 69:25]
  reg  freeReq_0; // @[FreeList.scala 89:24]
  reg [15:0] freeSlotOH_0; // @[FreeList.scala 90:27]
  wire [15:0] freeSelMaskVec_0 = freeReq_0 ? freeSlotOH_0 : 16'h0; // @[FreeList.scala 101:29]
  reg  freeReq_1; // @[FreeList.scala 89:24]
  reg [15:0] freeSlotOH_1; // @[FreeList.scala 90:27]
  wire [15:0] freeSelMaskVec_1 = freeReq_1 ? freeSlotOH_1 : 16'h0; // @[FreeList.scala 101:29]
  wire [15:0] _freeSelMask_T = freeSelMaskVec_0 | freeSelMaskVec_1; // @[FreeList.scala 75:41]
  reg  freeReq_2; // @[FreeList.scala 89:24]
  reg [15:0] freeSlotOH_2; // @[FreeList.scala 90:27]
  wire [15:0] freeSelMaskVec_2 = freeReq_2 ? freeSlotOH_2 : 16'h0; // @[FreeList.scala 101:29]
  wire [15:0] _freeSelMask_T_1 = _freeSelMask_T | freeSelMaskVec_2; // @[FreeList.scala 75:41]
  reg  freeReq_3; // @[FreeList.scala 89:24]
  reg [15:0] freeSlotOH_3; // @[FreeList.scala 90:27]
  wire [15:0] freeSelMaskVec_3 = freeReq_3 ? freeSlotOH_3 : 16'h0; // @[FreeList.scala 101:29]
  wire [15:0] freeSelMask = _freeSelMask_T_1 | freeSelMaskVec_3; // @[FreeList.scala 75:41]
  wire [15:0] _freeMask_T = io_free | freeMask; // @[FreeList.scala 76:24]
  wire [15:0] _freeMask_T_1 = ~freeSelMask; // @[FreeList.scala 76:38]
  wire [15:0] _remFreeSelMaskVec_T_1 = freeMask & _freeMask_T_1; // @[FreeList.scala 78:87]
  wire [3:0] remFreeSelMaskVec_0 = {_remFreeSelMaskVec_T_1[12],_remFreeSelMaskVec_T_1[8],_remFreeSelMaskVec_T_1[4],
    _remFreeSelMaskVec_T_1[0]}; // @[FreeList.scala 65:82]
  wire [3:0] remFreeSelMaskVec_1 = {_remFreeSelMaskVec_T_1[13],_remFreeSelMaskVec_T_1[9],_remFreeSelMaskVec_T_1[5],
    _remFreeSelMaskVec_T_1[1]}; // @[FreeList.scala 65:82]
  wire [3:0] remFreeSelMaskVec_2 = {_remFreeSelMaskVec_T_1[14],_remFreeSelMaskVec_T_1[10],_remFreeSelMaskVec_T_1[6],
    _remFreeSelMaskVec_T_1[2]}; // @[FreeList.scala 65:82]
  wire [3:0] remFreeSelMaskVec_3 = {_remFreeSelMaskVec_T_1[15],_remFreeSelMaskVec_T_1[11],_remFreeSelMaskVec_T_1[7],
    _remFreeSelMaskVec_T_1[3]}; // @[FreeList.scala 65:82]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_4 = remFreeSelMaskVec_0[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_5 = remFreeSelMaskVec_0[2] ? 4'h4 :
    _remFreeSelIndexOHVec_highIndexOH_T_4; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_6 = remFreeSelMaskVec_0[1] ? 4'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_5; // @[Mux.scala 47:70]
  wire [3:0] remFreeSelIndexOHVec_highIndexOH = remFreeSelMaskVec_0[0] ? 4'h1 : _remFreeSelIndexOHVec_highIndexOH_T_6; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__0 = remFreeSelIndexOHVec_highIndexOH[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__4 = remFreeSelIndexOHVec_highIndexOH[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__8 = remFreeSelIndexOHVec_highIndexOH[2]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec__12 = remFreeSelIndexOHVec_highIndexOH[3]; // @[FreeList.scala 84:59]
  wire [7:0] remFreeSelIndexOHVec_lo = {2'h0,1'h0,remFreeSelIndexOHVec_freeIndexOHVec__4,2'h0,1'h0,
    remFreeSelIndexOHVec_freeIndexOHVec__0}; // @[FreeList.scala 86:20]
  wire [7:0] remFreeSelIndexOHVec_hi = {2'h0,1'h0,remFreeSelIndexOHVec_freeIndexOHVec__12,2'h0,1'h0,
    remFreeSelIndexOHVec_freeIndexOHVec__8}; // @[FreeList.scala 86:20]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_11 = remFreeSelMaskVec_1[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_12 = remFreeSelMaskVec_1[2] ? 4'h4 :
    _remFreeSelIndexOHVec_highIndexOH_T_11; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_13 = remFreeSelMaskVec_1[1] ? 4'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_12; // @[Mux.scala 47:70]
  wire [3:0] remFreeSelIndexOHVec_highIndexOH_1 = remFreeSelMaskVec_1[0] ? 4'h1 : _remFreeSelIndexOHVec_highIndexOH_T_13
    ; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_1 = remFreeSelIndexOHVec_highIndexOH_1[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_5 = remFreeSelIndexOHVec_highIndexOH_1[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_9 = remFreeSelIndexOHVec_highIndexOH_1[2]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_1_13 = remFreeSelIndexOHVec_highIndexOH_1[3]; // @[FreeList.scala 84:59]
  wire [7:0] remFreeSelIndexOHVec_lo_1 = {2'h0,remFreeSelIndexOHVec_freeIndexOHVec_1_5,1'h0,2'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_1_1,1'h0}; // @[FreeList.scala 86:20]
  wire [7:0] remFreeSelIndexOHVec_hi_1 = {2'h0,remFreeSelIndexOHVec_freeIndexOHVec_1_13,1'h0,2'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_1_9,1'h0}; // @[FreeList.scala 86:20]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_18 = remFreeSelMaskVec_2[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_19 = remFreeSelMaskVec_2[2] ? 4'h4 :
    _remFreeSelIndexOHVec_highIndexOH_T_18; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_20 = remFreeSelMaskVec_2[1] ? 4'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_19; // @[Mux.scala 47:70]
  wire [3:0] remFreeSelIndexOHVec_highIndexOH_2 = remFreeSelMaskVec_2[0] ? 4'h1 : _remFreeSelIndexOHVec_highIndexOH_T_20
    ; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_2 = remFreeSelIndexOHVec_highIndexOH_2[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_6 = remFreeSelIndexOHVec_highIndexOH_2[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_10 = remFreeSelIndexOHVec_highIndexOH_2[2]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_2_14 = remFreeSelIndexOHVec_highIndexOH_2[3]; // @[FreeList.scala 84:59]
  wire [7:0] remFreeSelIndexOHVec_lo_2 = {1'h0,remFreeSelIndexOHVec_freeIndexOHVec_2_6,2'h0,1'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_2_2,2'h0}; // @[FreeList.scala 86:20]
  wire [7:0] remFreeSelIndexOHVec_hi_2 = {1'h0,remFreeSelIndexOHVec_freeIndexOHVec_2_14,2'h0,1'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_2_10,2'h0}; // @[FreeList.scala 86:20]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_25 = remFreeSelMaskVec_3[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_26 = remFreeSelMaskVec_3[2] ? 4'h4 :
    _remFreeSelIndexOHVec_highIndexOH_T_25; // @[Mux.scala 47:70]
  wire [3:0] _remFreeSelIndexOHVec_highIndexOH_T_27 = remFreeSelMaskVec_3[1] ? 4'h2 :
    _remFreeSelIndexOHVec_highIndexOH_T_26; // @[Mux.scala 47:70]
  wire [3:0] remFreeSelIndexOHVec_highIndexOH_3 = remFreeSelMaskVec_3[0] ? 4'h1 : _remFreeSelIndexOHVec_highIndexOH_T_27
    ; // @[Mux.scala 47:70]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_3 = remFreeSelIndexOHVec_highIndexOH_3[0]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_7 = remFreeSelIndexOHVec_highIndexOH_3[1]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_11 = remFreeSelIndexOHVec_highIndexOH_3[2]; // @[FreeList.scala 84:59]
  wire  remFreeSelIndexOHVec_freeIndexOHVec_3_15 = remFreeSelIndexOHVec_highIndexOH_3[3]; // @[FreeList.scala 84:59]
  wire [7:0] remFreeSelIndexOHVec_lo_3 = {remFreeSelIndexOHVec_freeIndexOHVec_3_7,1'h0,2'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_3_3,1'h0,2'h0}; // @[FreeList.scala 86:20]
  wire [7:0] remFreeSelIndexOHVec_hi_3 = {remFreeSelIndexOHVec_freeIndexOHVec_3_15,1'h0,2'h0,
    remFreeSelIndexOHVec_freeIndexOHVec_3_11,1'h0,2'h0}; // @[FreeList.scala 86:20]
  wire [3:0] _doFree_T = {freeReq_3,freeReq_2,freeReq_1,freeReq_0}; // @[FreeList.scala 91:24]
  wire  doFree = |_doFree_T; // @[FreeList.scala 91:31]
  wire [4:0] _enqPtr_new_ptr_T = {tailPtr_flag,tailPtr_value}; // @[Cat.scala 31:58]
  wire [5:0] _enqPtr_new_ptr_T_1 = {{1'd0}, _enqPtr_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] enqPtr_value = _enqPtr_new_ptr_T_1[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire [7:0] freeList_hi = freeSlotOH_0[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo = freeSlotOH_0[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T = |freeList_hi; // @[OneHot.scala 32:14]
  wire [7:0] _freeList_T_1 = freeList_hi | freeList_lo; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_1 = _freeList_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_1 = _freeList_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_2 = |freeList_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_3 = freeList_hi_1 | freeList_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_2 = _freeList_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_2 = _freeList_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_4 = |freeList_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_5 = freeList_hi_2 | freeList_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_9 = {_freeList_T,_freeList_T_2,_freeList_T_4,_freeList_T_5[1]}; // @[Cat.scala 31:58]
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
  wire [3:0] _GEN_12 = 4'hc == enqPtr_value ? _freeList_T_9 : freeList_12; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_13 = 4'hd == enqPtr_value ? _freeList_T_9 : freeList_13; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_14 = 4'he == enqPtr_value ? _freeList_T_9 : freeList_14; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_15 = 4'hf == enqPtr_value ? _freeList_T_9 : freeList_15; // @[FreeList.scala 43:25 98:{30,30}]
  wire [3:0] _GEN_16 = freeReq_0 ? _GEN_0 : freeList_0; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_17 = freeReq_0 ? _GEN_1 : freeList_1; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_18 = freeReq_0 ? _GEN_2 : freeList_2; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_19 = freeReq_0 ? _GEN_3 : freeList_3; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_20 = freeReq_0 ? _GEN_4 : freeList_4; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_21 = freeReq_0 ? _GEN_5 : freeList_5; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_22 = freeReq_0 ? _GEN_6 : freeList_6; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_23 = freeReq_0 ? _GEN_7 : freeList_7; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_24 = freeReq_0 ? _GEN_8 : freeList_8; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_25 = freeReq_0 ? _GEN_9 : freeList_9; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_26 = freeReq_0 ? _GEN_10 : freeList_10; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_27 = freeReq_0 ? _GEN_11 : freeList_11; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_28 = freeReq_0 ? _GEN_12 : freeList_12; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_29 = freeReq_0 ? _GEN_13 : freeList_13; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_30 = freeReq_0 ? _GEN_14 : freeList_14; // @[FreeList.scala 97:23 43:25]
  wire [3:0] _GEN_31 = freeReq_0 ? _GEN_15 : freeList_15; // @[FreeList.scala 97:23 43:25]
  wire [4:0] _GEN_160 = {{4'd0}, freeReq_0}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _enqPtr_new_ptr_T_7 = _enqPtr_new_ptr_T + _GEN_160; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] enqPtr_1_value = _enqPtr_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire [7:0] freeList_hi_3 = freeSlotOH_1[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo_3 = freeSlotOH_1[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_10 = |freeList_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _freeList_T_11 = freeList_hi_3 | freeList_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_4 = _freeList_T_11[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_4 = _freeList_T_11[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_12 = |freeList_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_13 = freeList_hi_4 | freeList_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_5 = _freeList_T_13[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_5 = _freeList_T_13[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_14 = |freeList_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_15 = freeList_hi_5 | freeList_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_19 = {_freeList_T_10,_freeList_T_12,_freeList_T_14,_freeList_T_15[1]}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_32 = 4'h0 == enqPtr_1_value ? _freeList_T_19 : _GEN_16; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_33 = 4'h1 == enqPtr_1_value ? _freeList_T_19 : _GEN_17; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_34 = 4'h2 == enqPtr_1_value ? _freeList_T_19 : _GEN_18; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_35 = 4'h3 == enqPtr_1_value ? _freeList_T_19 : _GEN_19; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_36 = 4'h4 == enqPtr_1_value ? _freeList_T_19 : _GEN_20; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_37 = 4'h5 == enqPtr_1_value ? _freeList_T_19 : _GEN_21; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_38 = 4'h6 == enqPtr_1_value ? _freeList_T_19 : _GEN_22; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_39 = 4'h7 == enqPtr_1_value ? _freeList_T_19 : _GEN_23; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_40 = 4'h8 == enqPtr_1_value ? _freeList_T_19 : _GEN_24; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_41 = 4'h9 == enqPtr_1_value ? _freeList_T_19 : _GEN_25; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_42 = 4'ha == enqPtr_1_value ? _freeList_T_19 : _GEN_26; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_43 = 4'hb == enqPtr_1_value ? _freeList_T_19 : _GEN_27; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_44 = 4'hc == enqPtr_1_value ? _freeList_T_19 : _GEN_28; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_45 = 4'hd == enqPtr_1_value ? _freeList_T_19 : _GEN_29; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_46 = 4'he == enqPtr_1_value ? _freeList_T_19 : _GEN_30; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_47 = 4'hf == enqPtr_1_value ? _freeList_T_19 : _GEN_31; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_48 = freeReq_1 ? _GEN_32 : _GEN_16; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_49 = freeReq_1 ? _GEN_33 : _GEN_17; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_50 = freeReq_1 ? _GEN_34 : _GEN_18; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_51 = freeReq_1 ? _GEN_35 : _GEN_19; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_52 = freeReq_1 ? _GEN_36 : _GEN_20; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_53 = freeReq_1 ? _GEN_37 : _GEN_21; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_54 = freeReq_1 ? _GEN_38 : _GEN_22; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_55 = freeReq_1 ? _GEN_39 : _GEN_23; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_56 = freeReq_1 ? _GEN_40 : _GEN_24; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_57 = freeReq_1 ? _GEN_41 : _GEN_25; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_58 = freeReq_1 ? _GEN_42 : _GEN_26; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_59 = freeReq_1 ? _GEN_43 : _GEN_27; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_60 = freeReq_1 ? _GEN_44 : _GEN_28; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_61 = freeReq_1 ? _GEN_45 : _GEN_29; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_62 = freeReq_1 ? _GEN_46 : _GEN_30; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_63 = freeReq_1 ? _GEN_47 : _GEN_31; // @[FreeList.scala 97:23]
  wire [1:0] offset = freeReq_0 + freeReq_1; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_161 = {{3'd0}, offset}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _enqPtr_new_ptr_T_12 = _enqPtr_new_ptr_T + _GEN_161; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] enqPtr_2_value = _enqPtr_new_ptr_T_12[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire [7:0] freeList_hi_6 = freeSlotOH_2[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo_6 = freeSlotOH_2[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_20 = |freeList_hi_6; // @[OneHot.scala 32:14]
  wire [7:0] _freeList_T_21 = freeList_hi_6 | freeList_lo_6; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_7 = _freeList_T_21[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_7 = _freeList_T_21[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_22 = |freeList_hi_7; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_23 = freeList_hi_7 | freeList_lo_7; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_8 = _freeList_T_23[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_8 = _freeList_T_23[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_24 = |freeList_hi_8; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_25 = freeList_hi_8 | freeList_lo_8; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_29 = {_freeList_T_20,_freeList_T_22,_freeList_T_24,_freeList_T_25[1]}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_64 = 4'h0 == enqPtr_2_value ? _freeList_T_29 : _GEN_48; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_65 = 4'h1 == enqPtr_2_value ? _freeList_T_29 : _GEN_49; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_66 = 4'h2 == enqPtr_2_value ? _freeList_T_29 : _GEN_50; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_67 = 4'h3 == enqPtr_2_value ? _freeList_T_29 : _GEN_51; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_68 = 4'h4 == enqPtr_2_value ? _freeList_T_29 : _GEN_52; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_69 = 4'h5 == enqPtr_2_value ? _freeList_T_29 : _GEN_53; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_70 = 4'h6 == enqPtr_2_value ? _freeList_T_29 : _GEN_54; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_71 = 4'h7 == enqPtr_2_value ? _freeList_T_29 : _GEN_55; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_72 = 4'h8 == enqPtr_2_value ? _freeList_T_29 : _GEN_56; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_73 = 4'h9 == enqPtr_2_value ? _freeList_T_29 : _GEN_57; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_74 = 4'ha == enqPtr_2_value ? _freeList_T_29 : _GEN_58; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_75 = 4'hb == enqPtr_2_value ? _freeList_T_29 : _GEN_59; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_76 = 4'hc == enqPtr_2_value ? _freeList_T_29 : _GEN_60; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_77 = 4'hd == enqPtr_2_value ? _freeList_T_29 : _GEN_61; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_78 = 4'he == enqPtr_2_value ? _freeList_T_29 : _GEN_62; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_79 = 4'hf == enqPtr_2_value ? _freeList_T_29 : _GEN_63; // @[FreeList.scala 98:{30,30}]
  wire [3:0] _GEN_80 = freeReq_2 ? _GEN_64 : _GEN_48; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_81 = freeReq_2 ? _GEN_65 : _GEN_49; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_82 = freeReq_2 ? _GEN_66 : _GEN_50; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_83 = freeReq_2 ? _GEN_67 : _GEN_51; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_84 = freeReq_2 ? _GEN_68 : _GEN_52; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_85 = freeReq_2 ? _GEN_69 : _GEN_53; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_86 = freeReq_2 ? _GEN_70 : _GEN_54; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_87 = freeReq_2 ? _GEN_71 : _GEN_55; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_88 = freeReq_2 ? _GEN_72 : _GEN_56; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_89 = freeReq_2 ? _GEN_73 : _GEN_57; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_90 = freeReq_2 ? _GEN_74 : _GEN_58; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_91 = freeReq_2 ? _GEN_75 : _GEN_59; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_92 = freeReq_2 ? _GEN_76 : _GEN_60; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_93 = freeReq_2 ? _GEN_77 : _GEN_61; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_94 = freeReq_2 ? _GEN_78 : _GEN_62; // @[FreeList.scala 97:23]
  wire [3:0] _GEN_95 = freeReq_2 ? _GEN_79 : _GEN_63; // @[FreeList.scala 97:23]
  wire [1:0] _offset_T_1 = freeReq_1 + freeReq_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_162 = {{1'd0}, freeReq_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_T_3 = _GEN_162 + _offset_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] offset_1 = _offset_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_163 = {{3'd0}, offset_1}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _enqPtr_new_ptr_T_17 = _enqPtr_new_ptr_T + _GEN_163; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] enqPtr_3_value = _enqPtr_new_ptr_T_17[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire [7:0] freeList_hi_9 = freeSlotOH_3[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] freeList_lo_9 = freeSlotOH_3[7:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_30 = |freeList_hi_9; // @[OneHot.scala 32:14]
  wire [7:0] _freeList_T_31 = freeList_hi_9 | freeList_lo_9; // @[OneHot.scala 32:28]
  wire [3:0] freeList_hi_10 = _freeList_T_31[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] freeList_lo_10 = _freeList_T_31[3:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_32 = |freeList_hi_10; // @[OneHot.scala 32:14]
  wire [3:0] _freeList_T_33 = freeList_hi_10 | freeList_lo_10; // @[OneHot.scala 32:28]
  wire [1:0] freeList_hi_11 = _freeList_T_33[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] freeList_lo_11 = _freeList_T_33[1:0]; // @[OneHot.scala 31:18]
  wire  _freeList_T_34 = |freeList_hi_11; // @[OneHot.scala 32:14]
  wire [1:0] _freeList_T_35 = freeList_hi_11 | freeList_lo_11; // @[OneHot.scala 32:28]
  wire [3:0] _freeList_T_39 = {_freeList_T_30,_freeList_T_32,_freeList_T_34,_freeList_T_35[1]}; // @[Cat.scala 31:58]
  wire [1:0] _tailPtrNext_T_2 = freeReq_2 + freeReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _tailPtrNext_T_4 = offset + _tailPtrNext_T_2; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_164 = {{2'd0}, _tailPtrNext_T_4}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _tailPtrNext_new_ptr_T_2 = _enqPtr_new_ptr_T + _GEN_164; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] tailPtrNext_new_ptr_value = _tailPtrNext_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  tailPtrNext_new_ptr_flag = _tailPtrNext_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _doAllocate_T = {io_doAllocate_1,io_doAllocate_0}; // @[FreeList.scala 108:34]
  wire  doAllocate = |_doAllocate_T; // @[FreeList.scala 108:41]
  wire [1:0] numAllocate = io_doAllocate_0 + io_doAllocate_1; // @[Bitwise.scala 48:55]
  reg [4:0] freeSlotCnt; // @[FreeList.scala 110:28]
  wire [4:0] _deqPtr_new_ptr_T = {headPtr_flag,headPtr_value}; // @[Cat.scala 31:58]
  wire [4:0] _GEN_165 = {{3'd0}, numAllocate}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _deqPtr_new_ptr_T_2 = _deqPtr_new_ptr_T + _GEN_165; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] deqPtr_new_ptr_value = _deqPtr_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_new_ptr_flag = _deqPtr_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _deqPtr_new_ptr_T_5 = {deqPtr_new_ptr_flag,deqPtr_new_ptr_value}; // @[Cat.scala 31:58]
  wire [5:0] _deqPtr_new_ptr_T_6 = {{1'd0}, _deqPtr_new_ptr_T_5}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] deqPtr_value = _deqPtr_new_ptr_T_6[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_flag = _deqPtr_new_ptr_T_6[4]; // @[CircularQueuePtr.scala 39:59]
  wire  io_canAllocate_0_differentFlag = deqPtr_flag ^ tailPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire  io_canAllocate_0_compare = deqPtr_value < tailPtr_value; // @[CircularQueuePtr.scala 73:30]
  reg  io_canAllocate_0_REG; // @[FreeList.scala 117:35]
  reg [3:0] io_allocateSlot_0_REG; // @[FreeList.scala 118:36]
  wire [3:0] _GEN_129 = 4'h1 == deqPtr_value ? freeList_1 : freeList_0; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_130 = 4'h2 == deqPtr_value ? freeList_2 : _GEN_129; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_131 = 4'h3 == deqPtr_value ? freeList_3 : _GEN_130; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_132 = 4'h4 == deqPtr_value ? freeList_4 : _GEN_131; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_133 = 4'h5 == deqPtr_value ? freeList_5 : _GEN_132; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_134 = 4'h6 == deqPtr_value ? freeList_6 : _GEN_133; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_135 = 4'h7 == deqPtr_value ? freeList_7 : _GEN_134; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_136 = 4'h8 == deqPtr_value ? freeList_8 : _GEN_135; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_137 = 4'h9 == deqPtr_value ? freeList_9 : _GEN_136; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_138 = 4'ha == deqPtr_value ? freeList_10 : _GEN_137; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_139 = 4'hb == deqPtr_value ? freeList_11 : _GEN_138; // @[FreeList.scala 118:{36,36}]
  wire [4:0] _deqPtr_new_ptr_T_17 = _deqPtr_new_ptr_T_5 + 5'h1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] deqPtr_1_value = _deqPtr_new_ptr_T_17[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_1_flag = _deqPtr_new_ptr_T_17[4]; // @[CircularQueuePtr.scala 39:59]
  wire  io_canAllocate_1_differentFlag = deqPtr_1_flag ^ tailPtr_flag; // @[CircularQueuePtr.scala 72:35]
  wire  io_canAllocate_1_compare = deqPtr_1_value < tailPtr_value; // @[CircularQueuePtr.scala 73:30]
  reg  io_canAllocate_1_REG; // @[FreeList.scala 117:35]
  reg [3:0] io_allocateSlot_1_REG; // @[FreeList.scala 118:36]
  wire [3:0] _GEN_145 = 4'h1 == deqPtr_1_value ? freeList_1 : freeList_0; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_146 = 4'h2 == deqPtr_1_value ? freeList_2 : _GEN_145; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_147 = 4'h3 == deqPtr_1_value ? freeList_3 : _GEN_146; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_148 = 4'h4 == deqPtr_1_value ? freeList_4 : _GEN_147; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_149 = 4'h5 == deqPtr_1_value ? freeList_5 : _GEN_148; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_150 = 4'h6 == deqPtr_1_value ? freeList_6 : _GEN_149; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_151 = 4'h7 == deqPtr_1_value ? freeList_7 : _GEN_150; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_152 = 4'h8 == deqPtr_1_value ? freeList_8 : _GEN_151; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_153 = 4'h9 == deqPtr_1_value ? freeList_9 : _GEN_152; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_154 = 4'ha == deqPtr_1_value ? freeList_10 : _GEN_153; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _GEN_155 = 4'hb == deqPtr_1_value ? freeList_11 : _GEN_154; // @[FreeList.scala 118:{36,36}]
  wire [3:0] _freeSlotCnt_T_2 = tailPtrNext_new_ptr_value - deqPtr_new_ptr_value; // @[CircularQueuePtr.scala 105:21]
  wire [4:0] _GEN_168 = {{1'd0}, tailPtrNext_new_ptr_value}; // @[CircularQueuePtr.scala 106:25]
  wire [4:0] _freeSlotCnt_T_4 = 5'h10 + _GEN_168; // @[CircularQueuePtr.scala 106:25]
  wire [4:0] _GEN_169 = {{1'd0}, deqPtr_new_ptr_value}; // @[CircularQueuePtr.scala 106:41]
  wire [4:0] _freeSlotCnt_T_6 = _freeSlotCnt_T_4 - _GEN_169; // @[CircularQueuePtr.scala 106:41]
  assign io_allocateSlot_0 = io_allocateSlot_0_REG; // @[FreeList.scala 118:26]
  assign io_allocateSlot_1 = io_allocateSlot_1_REG; // @[FreeList.scala 118:26]
  assign io_canAllocate_0 = io_canAllocate_0_REG; // @[FreeList.scala 117:25]
  assign io_canAllocate_1 = io_canAllocate_1_REG; // @[FreeList.scala 117:25]
  assign io_empty = freeSlotCnt == 5'h0; // @[FreeList.scala 131:27]
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
    if (4'hf == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_15; // @[FreeList.scala 118:36]
    end else if (4'he == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_14; // @[FreeList.scala 118:36]
    end else if (4'hd == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_13; // @[FreeList.scala 118:36]
    end else if (4'hc == deqPtr_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_0_REG <= freeList_12; // @[FreeList.scala 118:36]
    end else begin
      io_allocateSlot_0_REG <= _GEN_139;
    end
    io_canAllocate_1_REG <= io_canAllocate_1_differentFlag ^ io_canAllocate_1_compare; // @[CircularQueuePtr.scala 74:19]
    if (4'hf == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_15; // @[FreeList.scala 118:36]
    end else if (4'he == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_14; // @[FreeList.scala 118:36]
    end else if (4'hd == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_13; // @[FreeList.scala 118:36]
    end else if (4'hc == deqPtr_1_value) begin // @[FreeList.scala 118:36]
      io_allocateSlot_1_REG <= freeList_12; // @[FreeList.scala 118:36]
    end else begin
      io_allocateSlot_1_REG <= _GEN_155;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_0 <= 4'h0; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h0 == enqPtr_3_value) begin
        freeList_0 <= _freeList_T_39;
      end else begin
        freeList_0 <= _GEN_80;
      end
    end else begin
      freeList_0 <= _GEN_80;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_1 <= 4'h1; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h1 == enqPtr_3_value) begin
        freeList_1 <= _freeList_T_39;
      end else begin
        freeList_1 <= _GEN_81;
      end
    end else begin
      freeList_1 <= _GEN_81;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_2 <= 4'h2; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h2 == enqPtr_3_value) begin
        freeList_2 <= _freeList_T_39;
      end else begin
        freeList_2 <= _GEN_82;
      end
    end else begin
      freeList_2 <= _GEN_82;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_3 <= 4'h3; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h3 == enqPtr_3_value) begin
        freeList_3 <= _freeList_T_39;
      end else begin
        freeList_3 <= _GEN_83;
      end
    end else begin
      freeList_3 <= _GEN_83;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_4 <= 4'h4; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h4 == enqPtr_3_value) begin
        freeList_4 <= _freeList_T_39;
      end else begin
        freeList_4 <= _GEN_84;
      end
    end else begin
      freeList_4 <= _GEN_84;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_5 <= 4'h5; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h5 == enqPtr_3_value) begin
        freeList_5 <= _freeList_T_39;
      end else begin
        freeList_5 <= _GEN_85;
      end
    end else begin
      freeList_5 <= _GEN_85;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_6 <= 4'h6; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h6 == enqPtr_3_value) begin
        freeList_6 <= _freeList_T_39;
      end else begin
        freeList_6 <= _GEN_86;
      end
    end else begin
      freeList_6 <= _GEN_86;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_7 <= 4'h7; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h7 == enqPtr_3_value) begin
        freeList_7 <= _freeList_T_39;
      end else begin
        freeList_7 <= _GEN_87;
      end
    end else begin
      freeList_7 <= _GEN_87;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_8 <= 4'h8; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h8 == enqPtr_3_value) begin
        freeList_8 <= _freeList_T_39;
      end else begin
        freeList_8 <= _GEN_88;
      end
    end else begin
      freeList_8 <= _GEN_88;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_9 <= 4'h9; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'h9 == enqPtr_3_value) begin
        freeList_9 <= _freeList_T_39;
      end else begin
        freeList_9 <= _GEN_89;
      end
    end else begin
      freeList_9 <= _GEN_89;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_10 <= 4'ha; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'ha == enqPtr_3_value) begin
        freeList_10 <= _freeList_T_39;
      end else begin
        freeList_10 <= _GEN_90;
      end
    end else begin
      freeList_10 <= _GEN_90;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_11 <= 4'hb; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'hb == enqPtr_3_value) begin
        freeList_11 <= _freeList_T_39;
      end else begin
        freeList_11 <= _GEN_91;
      end
    end else begin
      freeList_11 <= _GEN_91;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_12 <= 4'hc; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'hc == enqPtr_3_value) begin
        freeList_12 <= _freeList_T_39;
      end else begin
        freeList_12 <= _GEN_92;
      end
    end else begin
      freeList_12 <= _GEN_92;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_13 <= 4'hd; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'hd == enqPtr_3_value) begin
        freeList_13 <= _freeList_T_39;
      end else begin
        freeList_13 <= _GEN_93;
      end
    end else begin
      freeList_13 <= _GEN_93;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_14 <= 4'he; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'he == enqPtr_3_value) begin
        freeList_14 <= _freeList_T_39;
      end else begin
        freeList_14 <= _GEN_94;
      end
    end else begin
      freeList_14 <= _GEN_94;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 97:23]
      freeList_15 <= 4'hf; // @[FreeList.scala 98:{30,30}]
    end else if (freeReq_3) begin
      if (4'hf == enqPtr_3_value) begin
        freeList_15 <= _freeList_T_39;
      end else begin
        freeList_15 <= _GEN_95;
      end
    end else begin
      freeList_15 <= _GEN_95;
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
      headPtr_value <= 4'h0;
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
      tailPtr_value <= 4'h0;
    end else if (doFree) begin
      tailPtr_value <= tailPtrNext_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FreeList.scala 76:36]
      freeMask <= 16'h0;
    end else begin
      freeMask <= _freeMask_T & _freeMask_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 104:8]
      freeSlotCnt <= 5'h10;
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
  freeList_12 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  freeList_13 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  freeList_14 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  freeList_15 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  headPtr_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  headPtr_value = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  tailPtr_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  tailPtr_value = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  freeMask = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  freeReq_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  freeSlotOH_0 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  freeReq_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  freeSlotOH_1 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  freeReq_2 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  freeSlotOH_2 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  freeReq_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  freeSlotOH_3 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  freeSlotCnt = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  io_canAllocate_0_REG = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_allocateSlot_0_REG = _RAND_31[3:0];
  _RAND_32 = {1{`RANDOM}};
  io_canAllocate_1_REG = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_allocateSlot_1_REG = _RAND_33[3:0];
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
    freeList_12 = 4'hc;
  end
  if (reset) begin
    freeList_13 = 4'hd;
  end
  if (reset) begin
    freeList_14 = 4'he;
  end
  if (reset) begin
    freeList_15 = 4'hf;
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
    freeMask = 16'h0;
  end
  if (reset) begin
    freeSlotCnt = 5'h10;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

