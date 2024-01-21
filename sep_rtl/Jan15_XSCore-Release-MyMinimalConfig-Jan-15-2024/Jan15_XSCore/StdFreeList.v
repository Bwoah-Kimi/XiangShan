module StdFreeList(
  input        clock,
  input        reset,
  input        io_redirect,
  input        io_walk,
  input        io_allocateReq_0,
  input        io_allocateReq_1,
  input        io_walkReq_0,
  input        io_walkReq_1,
  output [5:0] io_allocatePhyReg_0,
  output [5:0] io_allocatePhyReg_1,
  output       io_canAllocate,
  input        io_doAllocate,
  input        io_freeReq_0,
  input        io_freeReq_1,
  input  [5:0] io_freePhyReg_0,
  input  [5:0] io_freePhyReg_1,
  input        io_commit_isCommit,
  input        io_commit_commitValid_0,
  input        io_commit_commitValid_1,
  input        io_commit_info_0_fpWen,
  input        io_commit_info_1_fpWen,
  input        io_snpt_snptEnq,
  input        io_snpt_snptDeq,
  input        io_snpt_useSnpt,
  input  [1:0] io_snpt_snptSelect,
  output [5:0] io_perf_0_value,
  output [5:0] io_perf_1_value,
  output [5:0] io_perf_2_value,
  output [5:0] io_perf_3_value
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
`endif // RANDOMIZE_REG_INIT
  wire  snapshots_snapshotGen_clock; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_reset; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_enq; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_enqData_0_flag; // @[CtrlBlock.scala 49:29]
  wire [4:0] snapshots_snapshotGen_io_enqData_0_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_deq; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_flush; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_0_flag; // @[CtrlBlock.scala 49:29]
  wire [4:0] snapshots_snapshotGen_io_snapshots_0_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_1_flag; // @[CtrlBlock.scala 49:29]
  wire [4:0] snapshots_snapshotGen_io_snapshots_1_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_2_flag; // @[CtrlBlock.scala 49:29]
  wire [4:0] snapshots_snapshotGen_io_snapshots_2_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_3_flag; // @[CtrlBlock.scala 49:29]
  wire [4:0] snapshots_snapshotGen_io_snapshots_3_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_enqPtr_flag; // @[CtrlBlock.scala 49:29]
  wire [1:0] snapshots_snapshotGen_io_enqPtr_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_deqPtr_flag; // @[CtrlBlock.scala 49:29]
  wire [1:0] snapshots_snapshotGen_io_deqPtr_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_valids_0; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_valids_1; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_valids_2; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_valids_3; // @[CtrlBlock.scala 49:29]
  reg  lastCycleRedirect; // @[BaseFreeList.scala 60:34]
  reg  lastCycleSnpt_useSnpt; // @[BaseFreeList.scala 61:30]
  reg [1:0] lastCycleSnpt_snptSelect; // @[BaseFreeList.scala 61:30]
  reg  headPtr_flag; // @[BaseFreeList.scala 63:24]
  reg [4:0] headPtr_value; // @[BaseFreeList.scala 63:24]
  reg [31:0] headPtrOH; // @[BaseFreeList.scala 64:26]
  reg  archHeadPtr_flag; // @[BaseFreeList.scala 65:28]
  reg [4:0] archHeadPtr_value; // @[BaseFreeList.scala 65:28]
  wire [31:0] headPtrOHVec_1 = {headPtrOH[30:0],headPtrOH[31]}; // @[Cat.scala 31:58]
  wire [31:0] headPtrOHVec_2 = {headPtrOH[29:0],headPtrOH[31:30]}; // @[Cat.scala 31:58]
  wire [1:0] _redirectedHeadPtr_T = io_walkReq_0 + io_walkReq_1; // @[Bitwise.scala 48:55]
  wire  _GEN_1 = 2'h1 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_flag :
    snapshots_snapshotGen_io_snapshots_0_flag; // @[Cat.scala 31:{58,58}]
  wire  _GEN_2 = 2'h2 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_flag : _GEN_1; // @[Cat.scala 31:{58,58}]
  wire  _GEN_3 = 2'h3 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_flag : _GEN_2; // @[Cat.scala 31:{58,58}]
  wire [4:0] _GEN_4 = snapshots_snapshotGen_io_snapshots_0_value; // @[Cat.scala 31:{58,58}]
  wire [4:0] _GEN_5 = 2'h1 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_value : _GEN_4; // @[Cat.scala 31:{58,58}]
  wire [4:0] _GEN_6 = 2'h2 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_value : _GEN_5; // @[Cat.scala 31:{58,58}]
  wire [4:0] _GEN_7 = 2'h3 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_value : _GEN_6; // @[Cat.scala 31:{58,58}]
  wire [5:0] _redirectedHeadPtr_new_ptr_T = {_GEN_3,_GEN_7}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_142 = {{4'd0}, _redirectedHeadPtr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _redirectedHeadPtr_new_ptr_T_2 = _redirectedHeadPtr_new_ptr_T + _GEN_142; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] redirectedHeadPtr_new_ptr_value = _redirectedHeadPtr_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  redirectedHeadPtr_new_ptr_flag = _redirectedHeadPtr_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _redirectedHeadPtr_new_ptr_T_5 = {archHeadPtr_flag,archHeadPtr_value}; // @[Cat.scala 31:58]
  wire [5:0] _redirectedHeadPtr_new_ptr_T_7 = _redirectedHeadPtr_new_ptr_T_5 + _GEN_142; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] redirectedHeadPtr_new_ptr_1_value = _redirectedHeadPtr_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  redirectedHeadPtr_new_ptr_1_flag = _redirectedHeadPtr_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 39:59]
  wire [31:0] _redirectedHeadPtrOH_T_2 = 32'h1 << redirectedHeadPtr_new_ptr_value; // @[OneHot.scala 64:12]
  wire [31:0] _redirectedHeadPtrOH_T_6 = 32'h1 << redirectedHeadPtr_new_ptr_1_value; // @[OneHot.scala 64:12]
  reg [5:0] freeList_0; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_1; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_2; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_3; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_4; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_5; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_6; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_7; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_8; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_9; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_10; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_11; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_12; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_13; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_14; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_15; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_16; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_17; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_18; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_19; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_20; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_21; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_22; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_23; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_24; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_25; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_26; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_27; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_28; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_29; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_30; // @[StdFreeList.scala 29:25]
  reg [5:0] freeList_31; // @[StdFreeList.scala 29:25]
  reg  lastTailPtr_flag; // @[StdFreeList.scala 30:28]
  reg [4:0] lastTailPtr_value; // @[StdFreeList.scala 30:28]
  wire [5:0] _enqPtr_new_ptr_T = {lastTailPtr_flag,lastTailPtr_value}; // @[Cat.scala 31:58]
  wire [6:0] _enqPtr_new_ptr_T_1 = {{1'd0}, _enqPtr_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtr_value = _enqPtr_new_ptr_T_1[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _GEN_8 = 5'h0 == enqPtr_value ? io_freePhyReg_0 : freeList_0; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_9 = 5'h1 == enqPtr_value ? io_freePhyReg_0 : freeList_1; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_10 = 5'h2 == enqPtr_value ? io_freePhyReg_0 : freeList_2; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_11 = 5'h3 == enqPtr_value ? io_freePhyReg_0 : freeList_3; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_12 = 5'h4 == enqPtr_value ? io_freePhyReg_0 : freeList_4; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_13 = 5'h5 == enqPtr_value ? io_freePhyReg_0 : freeList_5; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_14 = 5'h6 == enqPtr_value ? io_freePhyReg_0 : freeList_6; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_15 = 5'h7 == enqPtr_value ? io_freePhyReg_0 : freeList_7; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_16 = 5'h8 == enqPtr_value ? io_freePhyReg_0 : freeList_8; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_17 = 5'h9 == enqPtr_value ? io_freePhyReg_0 : freeList_9; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_18 = 5'ha == enqPtr_value ? io_freePhyReg_0 : freeList_10; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_19 = 5'hb == enqPtr_value ? io_freePhyReg_0 : freeList_11; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_20 = 5'hc == enqPtr_value ? io_freePhyReg_0 : freeList_12; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_21 = 5'hd == enqPtr_value ? io_freePhyReg_0 : freeList_13; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_22 = 5'he == enqPtr_value ? io_freePhyReg_0 : freeList_14; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_23 = 5'hf == enqPtr_value ? io_freePhyReg_0 : freeList_15; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_24 = 5'h10 == enqPtr_value ? io_freePhyReg_0 : freeList_16; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_25 = 5'h11 == enqPtr_value ? io_freePhyReg_0 : freeList_17; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_26 = 5'h12 == enqPtr_value ? io_freePhyReg_0 : freeList_18; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_27 = 5'h13 == enqPtr_value ? io_freePhyReg_0 : freeList_19; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_28 = 5'h14 == enqPtr_value ? io_freePhyReg_0 : freeList_20; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_29 = 5'h15 == enqPtr_value ? io_freePhyReg_0 : freeList_21; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_30 = 5'h16 == enqPtr_value ? io_freePhyReg_0 : freeList_22; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_31 = 5'h17 == enqPtr_value ? io_freePhyReg_0 : freeList_23; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_32 = 5'h18 == enqPtr_value ? io_freePhyReg_0 : freeList_24; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_33 = 5'h19 == enqPtr_value ? io_freePhyReg_0 : freeList_25; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_34 = 5'h1a == enqPtr_value ? io_freePhyReg_0 : freeList_26; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_35 = 5'h1b == enqPtr_value ? io_freePhyReg_0 : freeList_27; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_36 = 5'h1c == enqPtr_value ? io_freePhyReg_0 : freeList_28; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_37 = 5'h1d == enqPtr_value ? io_freePhyReg_0 : freeList_29; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_38 = 5'h1e == enqPtr_value ? io_freePhyReg_0 : freeList_30; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_39 = 5'h1f == enqPtr_value ? io_freePhyReg_0 : freeList_31; // @[StdFreeList.scala 29:25 46:{30,30}]
  wire [5:0] _GEN_40 = io_freeReq_0 ? _GEN_8 : freeList_0; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_41 = io_freeReq_0 ? _GEN_9 : freeList_1; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_42 = io_freeReq_0 ? _GEN_10 : freeList_2; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_43 = io_freeReq_0 ? _GEN_11 : freeList_3; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_44 = io_freeReq_0 ? _GEN_12 : freeList_4; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_45 = io_freeReq_0 ? _GEN_13 : freeList_5; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_46 = io_freeReq_0 ? _GEN_14 : freeList_6; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_47 = io_freeReq_0 ? _GEN_15 : freeList_7; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_48 = io_freeReq_0 ? _GEN_16 : freeList_8; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_49 = io_freeReq_0 ? _GEN_17 : freeList_9; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_50 = io_freeReq_0 ? _GEN_18 : freeList_10; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_51 = io_freeReq_0 ? _GEN_19 : freeList_11; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_52 = io_freeReq_0 ? _GEN_20 : freeList_12; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_53 = io_freeReq_0 ? _GEN_21 : freeList_13; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_54 = io_freeReq_0 ? _GEN_22 : freeList_14; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_55 = io_freeReq_0 ? _GEN_23 : freeList_15; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_56 = io_freeReq_0 ? _GEN_24 : freeList_16; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_57 = io_freeReq_0 ? _GEN_25 : freeList_17; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_58 = io_freeReq_0 ? _GEN_26 : freeList_18; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_59 = io_freeReq_0 ? _GEN_27 : freeList_19; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_60 = io_freeReq_0 ? _GEN_28 : freeList_20; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_61 = io_freeReq_0 ? _GEN_29 : freeList_21; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_62 = io_freeReq_0 ? _GEN_30 : freeList_22; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_63 = io_freeReq_0 ? _GEN_31 : freeList_23; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_64 = io_freeReq_0 ? _GEN_32 : freeList_24; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_65 = io_freeReq_0 ? _GEN_33 : freeList_25; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_66 = io_freeReq_0 ? _GEN_34 : freeList_26; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_67 = io_freeReq_0 ? _GEN_35 : freeList_27; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_68 = io_freeReq_0 ? _GEN_36 : freeList_28; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_69 = io_freeReq_0 ? _GEN_37 : freeList_29; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_70 = io_freeReq_0 ? _GEN_38 : freeList_30; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_71 = io_freeReq_0 ? _GEN_39 : freeList_31; // @[StdFreeList.scala 29:25 45:26]
  wire [5:0] _GEN_146 = {{5'd0}, io_freeReq_0}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _enqPtr_new_ptr_T_7 = _enqPtr_new_ptr_T + _GEN_146; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtr_1_value = _enqPtr_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _tailPtr_T = io_freeReq_0 + io_freeReq_1; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_147 = {{4'd0}, _tailPtr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _tailPtr_new_ptr_T_2 = _enqPtr_new_ptr_T + _GEN_147; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] tailPtr_new_ptr_value = _tailPtr_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  tailPtr_new_ptr_flag = _tailPtr_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  wire  isWalkAlloc = io_walk & io_doAllocate; // @[StdFreeList.scala 74:29]
  wire [4:0] _freeRegCnt_T_4 = tailPtr_new_ptr_value - headPtr_value; // @[CircularQueuePtr.scala 105:21]
  wire [5:0] _GEN_148 = {{1'd0}, tailPtr_new_ptr_value}; // @[CircularQueuePtr.scala 106:25]
  wire [5:0] _freeRegCnt_T_6 = 6'h20 + _GEN_148; // @[CircularQueuePtr.scala 106:25]
  wire [5:0] _GEN_149 = {{1'd0}, headPtr_value}; // @[CircularQueuePtr.scala 106:41]
  wire [5:0] _freeRegCnt_T_8 = _freeRegCnt_T_6 - _GEN_149; // @[CircularQueuePtr.scala 106:41]
  wire [5:0] _freeRegCnt_T_9 = tailPtr_new_ptr_flag == headPtr_flag ? {{1'd0}, _freeRegCnt_T_4} : _freeRegCnt_T_8; // @[CircularQueuePtr.scala 104:8]
  wire [5:0] _freeRegCnt_T_13 = _freeRegCnt_T_9 - _GEN_142; // @[StdFreeList.scala 81:90]
  wire  isNormalAlloc = io_canAllocate & io_doAllocate; // @[StdFreeList.scala 75:38]
  wire [1:0] _freeRegCnt_T_22 = io_allocateReq_0 + io_allocateReq_1; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_153 = {{4'd0}, _freeRegCnt_T_22}; // @[StdFreeList.scala 82:90]
  wire [5:0] _freeRegCnt_T_25 = _freeRegCnt_T_9 - _GEN_153; // @[StdFreeList.scala 82:90]
  wire [5:0] _freeRegCnt_T_34 = isNormalAlloc ? _freeRegCnt_T_25 : _freeRegCnt_T_9; // @[StdFreeList.scala 82:20]
  wire [5:0] freeRegCnt = isWalkAlloc & ~lastCycleRedirect ? _freeRegCnt_T_13 : _freeRegCnt_T_34; // @[StdFreeList.scala 81:20]
  reg  io_canAllocate_REG; // @[StdFreeList.scala 58:28]
  wire [5:0] _phyRegCandidates_T_32 = headPtrOH[0] ? freeList_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_33 = headPtrOH[1] ? freeList_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_34 = headPtrOH[2] ? freeList_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_35 = headPtrOH[3] ? freeList_3 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_36 = headPtrOH[4] ? freeList_4 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_37 = headPtrOH[5] ? freeList_5 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_38 = headPtrOH[6] ? freeList_6 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_39 = headPtrOH[7] ? freeList_7 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_40 = headPtrOH[8] ? freeList_8 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_41 = headPtrOH[9] ? freeList_9 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_42 = headPtrOH[10] ? freeList_10 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_43 = headPtrOH[11] ? freeList_11 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_44 = headPtrOH[12] ? freeList_12 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_45 = headPtrOH[13] ? freeList_13 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_46 = headPtrOH[14] ? freeList_14 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_47 = headPtrOH[15] ? freeList_15 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_48 = headPtrOH[16] ? freeList_16 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_49 = headPtrOH[17] ? freeList_17 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_50 = headPtrOH[18] ? freeList_18 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_51 = headPtrOH[19] ? freeList_19 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_52 = headPtrOH[20] ? freeList_20 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_53 = headPtrOH[21] ? freeList_21 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_54 = headPtrOH[22] ? freeList_22 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_55 = headPtrOH[23] ? freeList_23 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_56 = headPtrOH[24] ? freeList_24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_57 = headPtrOH[25] ? freeList_25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_58 = headPtrOH[26] ? freeList_26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_59 = headPtrOH[27] ? freeList_27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_60 = headPtrOH[28] ? freeList_28 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_61 = headPtrOH[29] ? freeList_29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_62 = headPtrOH[30] ? freeList_30 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_63 = headPtrOH[31] ? freeList_31 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_64 = _phyRegCandidates_T_32 | _phyRegCandidates_T_33; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_65 = _phyRegCandidates_T_64 | _phyRegCandidates_T_34; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_66 = _phyRegCandidates_T_65 | _phyRegCandidates_T_35; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_67 = _phyRegCandidates_T_66 | _phyRegCandidates_T_36; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_68 = _phyRegCandidates_T_67 | _phyRegCandidates_T_37; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_69 = _phyRegCandidates_T_68 | _phyRegCandidates_T_38; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_70 = _phyRegCandidates_T_69 | _phyRegCandidates_T_39; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_71 = _phyRegCandidates_T_70 | _phyRegCandidates_T_40; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_72 = _phyRegCandidates_T_71 | _phyRegCandidates_T_41; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_73 = _phyRegCandidates_T_72 | _phyRegCandidates_T_42; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_74 = _phyRegCandidates_T_73 | _phyRegCandidates_T_43; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_75 = _phyRegCandidates_T_74 | _phyRegCandidates_T_44; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_76 = _phyRegCandidates_T_75 | _phyRegCandidates_T_45; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_77 = _phyRegCandidates_T_76 | _phyRegCandidates_T_46; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_78 = _phyRegCandidates_T_77 | _phyRegCandidates_T_47; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_79 = _phyRegCandidates_T_78 | _phyRegCandidates_T_48; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_80 = _phyRegCandidates_T_79 | _phyRegCandidates_T_49; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_81 = _phyRegCandidates_T_80 | _phyRegCandidates_T_50; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_82 = _phyRegCandidates_T_81 | _phyRegCandidates_T_51; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_83 = _phyRegCandidates_T_82 | _phyRegCandidates_T_52; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_84 = _phyRegCandidates_T_83 | _phyRegCandidates_T_53; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_85 = _phyRegCandidates_T_84 | _phyRegCandidates_T_54; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_86 = _phyRegCandidates_T_85 | _phyRegCandidates_T_55; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_87 = _phyRegCandidates_T_86 | _phyRegCandidates_T_56; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_88 = _phyRegCandidates_T_87 | _phyRegCandidates_T_57; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_89 = _phyRegCandidates_T_88 | _phyRegCandidates_T_58; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_90 = _phyRegCandidates_T_89 | _phyRegCandidates_T_59; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_91 = _phyRegCandidates_T_90 | _phyRegCandidates_T_60; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_92 = _phyRegCandidates_T_91 | _phyRegCandidates_T_61; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_93 = _phyRegCandidates_T_92 | _phyRegCandidates_T_62; // @[Mux.scala 27:73]
  wire [5:0] phyRegCandidates_0 = _phyRegCandidates_T_93 | _phyRegCandidates_T_63; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_127 = headPtrOHVec_1[0] ? freeList_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_128 = headPtrOHVec_1[1] ? freeList_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_129 = headPtrOHVec_1[2] ? freeList_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_130 = headPtrOHVec_1[3] ? freeList_3 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_131 = headPtrOHVec_1[4] ? freeList_4 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_132 = headPtrOHVec_1[5] ? freeList_5 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_133 = headPtrOHVec_1[6] ? freeList_6 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_134 = headPtrOHVec_1[7] ? freeList_7 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_135 = headPtrOHVec_1[8] ? freeList_8 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_136 = headPtrOHVec_1[9] ? freeList_9 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_137 = headPtrOHVec_1[10] ? freeList_10 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_138 = headPtrOHVec_1[11] ? freeList_11 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_139 = headPtrOHVec_1[12] ? freeList_12 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_140 = headPtrOHVec_1[13] ? freeList_13 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_141 = headPtrOHVec_1[14] ? freeList_14 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_142 = headPtrOHVec_1[15] ? freeList_15 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_143 = headPtrOHVec_1[16] ? freeList_16 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_144 = headPtrOHVec_1[17] ? freeList_17 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_145 = headPtrOHVec_1[18] ? freeList_18 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_146 = headPtrOHVec_1[19] ? freeList_19 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_147 = headPtrOHVec_1[20] ? freeList_20 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_148 = headPtrOHVec_1[21] ? freeList_21 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_149 = headPtrOHVec_1[22] ? freeList_22 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_150 = headPtrOHVec_1[23] ? freeList_23 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_151 = headPtrOHVec_1[24] ? freeList_24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_152 = headPtrOHVec_1[25] ? freeList_25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_153 = headPtrOHVec_1[26] ? freeList_26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_154 = headPtrOHVec_1[27] ? freeList_27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_155 = headPtrOHVec_1[28] ? freeList_28 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_156 = headPtrOHVec_1[29] ? freeList_29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_157 = headPtrOHVec_1[30] ? freeList_30 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_158 = headPtrOHVec_1[31] ? freeList_31 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_159 = _phyRegCandidates_T_127 | _phyRegCandidates_T_128; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_160 = _phyRegCandidates_T_159 | _phyRegCandidates_T_129; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_161 = _phyRegCandidates_T_160 | _phyRegCandidates_T_130; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_162 = _phyRegCandidates_T_161 | _phyRegCandidates_T_131; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_163 = _phyRegCandidates_T_162 | _phyRegCandidates_T_132; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_164 = _phyRegCandidates_T_163 | _phyRegCandidates_T_133; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_165 = _phyRegCandidates_T_164 | _phyRegCandidates_T_134; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_166 = _phyRegCandidates_T_165 | _phyRegCandidates_T_135; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_167 = _phyRegCandidates_T_166 | _phyRegCandidates_T_136; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_168 = _phyRegCandidates_T_167 | _phyRegCandidates_T_137; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_169 = _phyRegCandidates_T_168 | _phyRegCandidates_T_138; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_170 = _phyRegCandidates_T_169 | _phyRegCandidates_T_139; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_171 = _phyRegCandidates_T_170 | _phyRegCandidates_T_140; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_172 = _phyRegCandidates_T_171 | _phyRegCandidates_T_141; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_173 = _phyRegCandidates_T_172 | _phyRegCandidates_T_142; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_174 = _phyRegCandidates_T_173 | _phyRegCandidates_T_143; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_175 = _phyRegCandidates_T_174 | _phyRegCandidates_T_144; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_176 = _phyRegCandidates_T_175 | _phyRegCandidates_T_145; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_177 = _phyRegCandidates_T_176 | _phyRegCandidates_T_146; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_178 = _phyRegCandidates_T_177 | _phyRegCandidates_T_147; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_179 = _phyRegCandidates_T_178 | _phyRegCandidates_T_148; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_180 = _phyRegCandidates_T_179 | _phyRegCandidates_T_149; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_181 = _phyRegCandidates_T_180 | _phyRegCandidates_T_150; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_182 = _phyRegCandidates_T_181 | _phyRegCandidates_T_151; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_183 = _phyRegCandidates_T_182 | _phyRegCandidates_T_152; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_184 = _phyRegCandidates_T_183 | _phyRegCandidates_T_153; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_185 = _phyRegCandidates_T_184 | _phyRegCandidates_T_154; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_186 = _phyRegCandidates_T_185 | _phyRegCandidates_T_155; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_187 = _phyRegCandidates_T_186 | _phyRegCandidates_T_156; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_188 = _phyRegCandidates_T_187 | _phyRegCandidates_T_157; // @[Mux.scala 27:73]
  wire [5:0] phyRegCandidates_1 = _phyRegCandidates_T_188 | _phyRegCandidates_T_158; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_222 = headPtrOHVec_2[0] ? freeList_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_223 = headPtrOHVec_2[1] ? freeList_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_224 = headPtrOHVec_2[2] ? freeList_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_225 = headPtrOHVec_2[3] ? freeList_3 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_226 = headPtrOHVec_2[4] ? freeList_4 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_227 = headPtrOHVec_2[5] ? freeList_5 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_228 = headPtrOHVec_2[6] ? freeList_6 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_229 = headPtrOHVec_2[7] ? freeList_7 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_230 = headPtrOHVec_2[8] ? freeList_8 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_231 = headPtrOHVec_2[9] ? freeList_9 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_232 = headPtrOHVec_2[10] ? freeList_10 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_233 = headPtrOHVec_2[11] ? freeList_11 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_234 = headPtrOHVec_2[12] ? freeList_12 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_235 = headPtrOHVec_2[13] ? freeList_13 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_236 = headPtrOHVec_2[14] ? freeList_14 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_237 = headPtrOHVec_2[15] ? freeList_15 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_238 = headPtrOHVec_2[16] ? freeList_16 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_239 = headPtrOHVec_2[17] ? freeList_17 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_240 = headPtrOHVec_2[18] ? freeList_18 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_241 = headPtrOHVec_2[19] ? freeList_19 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_242 = headPtrOHVec_2[20] ? freeList_20 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_243 = headPtrOHVec_2[21] ? freeList_21 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_244 = headPtrOHVec_2[22] ? freeList_22 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_245 = headPtrOHVec_2[23] ? freeList_23 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_246 = headPtrOHVec_2[24] ? freeList_24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_247 = headPtrOHVec_2[25] ? freeList_25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_248 = headPtrOHVec_2[26] ? freeList_26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_249 = headPtrOHVec_2[27] ? freeList_27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_250 = headPtrOHVec_2[28] ? freeList_28 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_251 = headPtrOHVec_2[29] ? freeList_29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_252 = headPtrOHVec_2[30] ? freeList_30 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_253 = headPtrOHVec_2[31] ? freeList_31 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_254 = _phyRegCandidates_T_222 | _phyRegCandidates_T_223; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_255 = _phyRegCandidates_T_254 | _phyRegCandidates_T_224; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_256 = _phyRegCandidates_T_255 | _phyRegCandidates_T_225; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_257 = _phyRegCandidates_T_256 | _phyRegCandidates_T_226; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_258 = _phyRegCandidates_T_257 | _phyRegCandidates_T_227; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_259 = _phyRegCandidates_T_258 | _phyRegCandidates_T_228; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_260 = _phyRegCandidates_T_259 | _phyRegCandidates_T_229; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_261 = _phyRegCandidates_T_260 | _phyRegCandidates_T_230; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_262 = _phyRegCandidates_T_261 | _phyRegCandidates_T_231; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_263 = _phyRegCandidates_T_262 | _phyRegCandidates_T_232; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_264 = _phyRegCandidates_T_263 | _phyRegCandidates_T_233; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_265 = _phyRegCandidates_T_264 | _phyRegCandidates_T_234; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_266 = _phyRegCandidates_T_265 | _phyRegCandidates_T_235; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_267 = _phyRegCandidates_T_266 | _phyRegCandidates_T_236; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_268 = _phyRegCandidates_T_267 | _phyRegCandidates_T_237; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_269 = _phyRegCandidates_T_268 | _phyRegCandidates_T_238; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_270 = _phyRegCandidates_T_269 | _phyRegCandidates_T_239; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_271 = _phyRegCandidates_T_270 | _phyRegCandidates_T_240; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_272 = _phyRegCandidates_T_271 | _phyRegCandidates_T_241; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_273 = _phyRegCandidates_T_272 | _phyRegCandidates_T_242; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_274 = _phyRegCandidates_T_273 | _phyRegCandidates_T_243; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_275 = _phyRegCandidates_T_274 | _phyRegCandidates_T_244; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_276 = _phyRegCandidates_T_275 | _phyRegCandidates_T_245; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_277 = _phyRegCandidates_T_276 | _phyRegCandidates_T_246; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_278 = _phyRegCandidates_T_277 | _phyRegCandidates_T_247; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_279 = _phyRegCandidates_T_278 | _phyRegCandidates_T_248; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_280 = _phyRegCandidates_T_279 | _phyRegCandidates_T_249; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_281 = _phyRegCandidates_T_280 | _phyRegCandidates_T_250; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_282 = _phyRegCandidates_T_281 | _phyRegCandidates_T_251; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_283 = _phyRegCandidates_T_282 | _phyRegCandidates_T_252; // @[Mux.scala 27:73]
  wire [5:0] phyRegCandidates_2 = _phyRegCandidates_T_283 | _phyRegCandidates_T_253; // @[Mux.scala 27:73]
  wire [5:0] _GEN_137 = io_allocateReq_0 ? phyRegCandidates_1 : phyRegCandidates_0; // @[StdFreeList.scala 64:{26,26}]
  wire [1:0] _GEN_156 = {{1'd0}, io_allocateReq_0}; // @[StdFreeList.scala 64:{26,26}]
  wire  archAlloc_0 = io_commit_commitValid_0 & io_commit_info_0_fpWen; // @[StdFreeList.scala 68:94]
  wire  archAlloc_1 = io_commit_commitValid_1 & io_commit_info_1_fpWen; // @[StdFreeList.scala 68:94]
  wire [1:0] numArchAllocate = archAlloc_0 + archAlloc_1; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_157 = {{4'd0}, numArchAllocate}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _archHeadPtrNew_new_ptr_T_2 = _redirectedHeadPtr_new_ptr_T_5 + _GEN_157; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] archHeadPtrNew_value = _archHeadPtrNew_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  archHeadPtrNew_flag = _archHeadPtrNew_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  wire  isAllocate = isWalkAlloc | isNormalAlloc; // @[StdFreeList.scala 76:32]
  wire [1:0] numAllocate = io_walk ? _redirectedHeadPtr_T : _freeRegCnt_T_22; // @[StdFreeList.scala 77:24]
  wire [5:0] _headPtrAllocate_new_ptr_T = {headPtr_flag,headPtr_value}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_158 = {{4'd0}, numAllocate}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _headPtrAllocate_new_ptr_T_2 = _headPtrAllocate_new_ptr_T + _GEN_158; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] headPtrAllocate_new_ptr_value = _headPtrAllocate_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  headPtrAllocate_new_ptr_flag = _headPtrAllocate_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  wire  realDoAllocate = ~io_redirect & isAllocate; // @[StdFreeList.scala 86:37]
  reg [5:0] freeRegCntReg; // @[StdFreeList.scala 107:30]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  SnapshotGenerator_4 snapshots_snapshotGen ( // @[CtrlBlock.scala 49:29]
    .clock(snapshots_snapshotGen_clock),
    .reset(snapshots_snapshotGen_reset),
    .io_enq(snapshots_snapshotGen_io_enq),
    .io_enqData_0_flag(snapshots_snapshotGen_io_enqData_0_flag),
    .io_enqData_0_value(snapshots_snapshotGen_io_enqData_0_value),
    .io_deq(snapshots_snapshotGen_io_deq),
    .io_flush(snapshots_snapshotGen_io_flush),
    .io_snapshots_0_flag(snapshots_snapshotGen_io_snapshots_0_flag),
    .io_snapshots_0_value(snapshots_snapshotGen_io_snapshots_0_value),
    .io_snapshots_1_flag(snapshots_snapshotGen_io_snapshots_1_flag),
    .io_snapshots_1_value(snapshots_snapshotGen_io_snapshots_1_value),
    .io_snapshots_2_flag(snapshots_snapshotGen_io_snapshots_2_flag),
    .io_snapshots_2_value(snapshots_snapshotGen_io_snapshots_2_value),
    .io_snapshots_3_flag(snapshots_snapshotGen_io_snapshots_3_flag),
    .io_snapshots_3_value(snapshots_snapshotGen_io_snapshots_3_value),
    .io_enqPtr_flag(snapshots_snapshotGen_io_enqPtr_flag),
    .io_enqPtr_value(snapshots_snapshotGen_io_enqPtr_value),
    .io_deqPtr_flag(snapshots_snapshotGen_io_deqPtr_flag),
    .io_deqPtr_value(snapshots_snapshotGen_io_deqPtr_value),
    .io_valids_0(snapshots_snapshotGen_io_valids_0),
    .io_valids_1(snapshots_snapshotGen_io_valids_1),
    .io_valids_2(snapshots_snapshotGen_io_valids_2),
    .io_valids_3(snapshots_snapshotGen_io_valids_3)
  );
  assign io_allocatePhyReg_0 = _phyRegCandidates_T_93 | _phyRegCandidates_T_63; // @[Mux.scala 27:73]
  assign io_allocatePhyReg_1 = 2'h2 == _GEN_156 ? phyRegCandidates_2 : _GEN_137; // @[StdFreeList.scala 64:{26,26}]
  assign io_canAllocate = io_canAllocate_REG; // @[StdFreeList.scala 58:18]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign snapshots_snapshotGen_clock = clock;
  assign snapshots_snapshotGen_reset = reset;
  assign snapshots_snapshotGen_io_enq = io_snpt_snptEnq; // @[CtrlBlock.scala 50:24]
  assign snapshots_snapshotGen_io_enqData_0_flag = headPtr_flag; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_value = headPtr_value; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_deq = io_snpt_snptDeq; // @[CtrlBlock.scala 52:24]
  assign snapshots_snapshotGen_io_flush = io_redirect; // @[CtrlBlock.scala 53:26]
  always @(posedge clock) begin
    io_canAllocate_REG <= freeRegCnt >= 6'h2; // @[StdFreeList.scala 58:40]
    if (isWalkAlloc & ~lastCycleRedirect) begin // @[StdFreeList.scala 81:20]
      freeRegCntReg <= _freeRegCnt_T_13;
    end else if (isNormalAlloc) begin // @[StdFreeList.scala 82:20]
      freeRegCntReg <= _freeRegCnt_T_25;
    end else if (tailPtr_new_ptr_flag == headPtr_flag) begin // @[CircularQueuePtr.scala 104:8]
      freeRegCntReg <= {{1'd0}, _freeRegCnt_T_4};
    end else begin
      freeRegCntReg <= _freeRegCnt_T_8;
    end
    io_perf_0_value_REG <= freeRegCntReg < 6'h8; // @[StdFreeList.scala 109:46]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= freeRegCntReg >= 6'h8 & freeRegCntReg < 6'h10; // @[StdFreeList.scala 110:62]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= freeRegCntReg >= 6'h10 & freeRegCntReg < 6'h18; // @[StdFreeList.scala 111:62]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= freeRegCntReg >= 6'h18; // @[StdFreeList.scala 112:46]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseFreeList.scala 60:34]
      lastCycleRedirect <= 1'h0; // @[BaseFreeList.scala 60:34]
    end else begin
      lastCycleRedirect <= io_redirect; // @[BaseFreeList.scala 60:34]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseFreeList.scala 61:30]
      lastCycleSnpt_useSnpt <= 1'h0; // @[BaseFreeList.scala 61:30]
    end else begin
      lastCycleSnpt_useSnpt <= io_snpt_useSnpt; // @[BaseFreeList.scala 61:30]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseFreeList.scala 61:30]
      lastCycleSnpt_snptSelect <= 2'h0; // @[BaseFreeList.scala 61:30]
    end else begin
      lastCycleSnpt_snptSelect <= io_snpt_snptSelect; // @[BaseFreeList.scala 61:30]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 87:17]
      headPtr_flag <= 1'h0; // @[StdFreeList.scala 78:28 BaseFreeList.scala 73:30]
    end else if (realDoAllocate) begin
      if (lastCycleRedirect) begin
        if (lastCycleSnpt_useSnpt) begin
          headPtr_flag <= redirectedHeadPtr_new_ptr_flag;
        end else begin
          headPtr_flag <= redirectedHeadPtr_new_ptr_1_flag;
        end
      end else begin
        headPtr_flag <= headPtrAllocate_new_ptr_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 87:17]
      headPtr_value <= 5'h0; // @[StdFreeList.scala 78:28 BaseFreeList.scala 73:30]
    end else if (realDoAllocate) begin
      if (lastCycleRedirect) begin
        if (lastCycleSnpt_useSnpt) begin
          headPtr_value <= redirectedHeadPtr_new_ptr_value;
        end else begin
          headPtr_value <= redirectedHeadPtr_new_ptr_1_value;
        end
      end else begin
        headPtr_value <= headPtrAllocate_new_ptr_value;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 88:19]
      headPtrOH <= 32'h1; // @[StdFreeList.scala 79:30 BaseFreeList.scala 78:32 StdFreeList.scala 79:{30,30,30,30}]
    end else if (realDoAllocate) begin
      if (lastCycleRedirect) begin
        if (lastCycleSnpt_useSnpt) begin
          headPtrOH <= _redirectedHeadPtrOH_T_2;
        end else begin
          headPtrOH <= _redirectedHeadPtrOH_T_6;
        end
      end else if (2'h2 == numAllocate) begin
        headPtrOH <= headPtrOHVec_2;
      end else if (2'h1 == numAllocate) begin
        headPtrOH <= headPtrOHVec_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 71:28]
      archHeadPtr_flag <= 1'h0;
    end else if (io_commit_isCommit) begin
      archHeadPtr_flag <= archHeadPtrNew_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 71:28]
      archHeadPtr_value <= 5'h0;
    end else if (io_commit_isCommit) begin
      archHeadPtr_value <= archHeadPtrNew_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_0 <= 6'h20; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h0 == enqPtr_1_value) begin
        freeList_0 <= io_freePhyReg_1;
      end else begin
        freeList_0 <= _GEN_40;
      end
    end else begin
      freeList_0 <= _GEN_40;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_1 <= 6'h21; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1 == enqPtr_1_value) begin
        freeList_1 <= io_freePhyReg_1;
      end else begin
        freeList_1 <= _GEN_41;
      end
    end else begin
      freeList_1 <= _GEN_41;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_2 <= 6'h22; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h2 == enqPtr_1_value) begin
        freeList_2 <= io_freePhyReg_1;
      end else begin
        freeList_2 <= _GEN_42;
      end
    end else begin
      freeList_2 <= _GEN_42;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_3 <= 6'h23; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h3 == enqPtr_1_value) begin
        freeList_3 <= io_freePhyReg_1;
      end else begin
        freeList_3 <= _GEN_43;
      end
    end else begin
      freeList_3 <= _GEN_43;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_4 <= 6'h24; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h4 == enqPtr_1_value) begin
        freeList_4 <= io_freePhyReg_1;
      end else begin
        freeList_4 <= _GEN_44;
      end
    end else begin
      freeList_4 <= _GEN_44;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_5 <= 6'h25; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h5 == enqPtr_1_value) begin
        freeList_5 <= io_freePhyReg_1;
      end else begin
        freeList_5 <= _GEN_45;
      end
    end else begin
      freeList_5 <= _GEN_45;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_6 <= 6'h26; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h6 == enqPtr_1_value) begin
        freeList_6 <= io_freePhyReg_1;
      end else begin
        freeList_6 <= _GEN_46;
      end
    end else begin
      freeList_6 <= _GEN_46;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_7 <= 6'h27; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h7 == enqPtr_1_value) begin
        freeList_7 <= io_freePhyReg_1;
      end else begin
        freeList_7 <= _GEN_47;
      end
    end else begin
      freeList_7 <= _GEN_47;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_8 <= 6'h28; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h8 == enqPtr_1_value) begin
        freeList_8 <= io_freePhyReg_1;
      end else begin
        freeList_8 <= _GEN_48;
      end
    end else begin
      freeList_8 <= _GEN_48;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_9 <= 6'h29; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h9 == enqPtr_1_value) begin
        freeList_9 <= io_freePhyReg_1;
      end else begin
        freeList_9 <= _GEN_49;
      end
    end else begin
      freeList_9 <= _GEN_49;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_10 <= 6'h2a; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'ha == enqPtr_1_value) begin
        freeList_10 <= io_freePhyReg_1;
      end else begin
        freeList_10 <= _GEN_50;
      end
    end else begin
      freeList_10 <= _GEN_50;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_11 <= 6'h2b; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'hb == enqPtr_1_value) begin
        freeList_11 <= io_freePhyReg_1;
      end else begin
        freeList_11 <= _GEN_51;
      end
    end else begin
      freeList_11 <= _GEN_51;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_12 <= 6'h2c; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'hc == enqPtr_1_value) begin
        freeList_12 <= io_freePhyReg_1;
      end else begin
        freeList_12 <= _GEN_52;
      end
    end else begin
      freeList_12 <= _GEN_52;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_13 <= 6'h2d; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'hd == enqPtr_1_value) begin
        freeList_13 <= io_freePhyReg_1;
      end else begin
        freeList_13 <= _GEN_53;
      end
    end else begin
      freeList_13 <= _GEN_53;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_14 <= 6'h2e; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'he == enqPtr_1_value) begin
        freeList_14 <= io_freePhyReg_1;
      end else begin
        freeList_14 <= _GEN_54;
      end
    end else begin
      freeList_14 <= _GEN_54;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_15 <= 6'h2f; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'hf == enqPtr_1_value) begin
        freeList_15 <= io_freePhyReg_1;
      end else begin
        freeList_15 <= _GEN_55;
      end
    end else begin
      freeList_15 <= _GEN_55;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_16 <= 6'h30; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h10 == enqPtr_1_value) begin
        freeList_16 <= io_freePhyReg_1;
      end else begin
        freeList_16 <= _GEN_56;
      end
    end else begin
      freeList_16 <= _GEN_56;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_17 <= 6'h31; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h11 == enqPtr_1_value) begin
        freeList_17 <= io_freePhyReg_1;
      end else begin
        freeList_17 <= _GEN_57;
      end
    end else begin
      freeList_17 <= _GEN_57;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_18 <= 6'h32; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h12 == enqPtr_1_value) begin
        freeList_18 <= io_freePhyReg_1;
      end else begin
        freeList_18 <= _GEN_58;
      end
    end else begin
      freeList_18 <= _GEN_58;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_19 <= 6'h33; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h13 == enqPtr_1_value) begin
        freeList_19 <= io_freePhyReg_1;
      end else begin
        freeList_19 <= _GEN_59;
      end
    end else begin
      freeList_19 <= _GEN_59;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_20 <= 6'h34; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h14 == enqPtr_1_value) begin
        freeList_20 <= io_freePhyReg_1;
      end else begin
        freeList_20 <= _GEN_60;
      end
    end else begin
      freeList_20 <= _GEN_60;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_21 <= 6'h35; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h15 == enqPtr_1_value) begin
        freeList_21 <= io_freePhyReg_1;
      end else begin
        freeList_21 <= _GEN_61;
      end
    end else begin
      freeList_21 <= _GEN_61;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_22 <= 6'h36; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h16 == enqPtr_1_value) begin
        freeList_22 <= io_freePhyReg_1;
      end else begin
        freeList_22 <= _GEN_62;
      end
    end else begin
      freeList_22 <= _GEN_62;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_23 <= 6'h37; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h17 == enqPtr_1_value) begin
        freeList_23 <= io_freePhyReg_1;
      end else begin
        freeList_23 <= _GEN_63;
      end
    end else begin
      freeList_23 <= _GEN_63;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_24 <= 6'h38; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h18 == enqPtr_1_value) begin
        freeList_24 <= io_freePhyReg_1;
      end else begin
        freeList_24 <= _GEN_64;
      end
    end else begin
      freeList_24 <= _GEN_64;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_25 <= 6'h39; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h19 == enqPtr_1_value) begin
        freeList_25 <= io_freePhyReg_1;
      end else begin
        freeList_25 <= _GEN_65;
      end
    end else begin
      freeList_25 <= _GEN_65;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_26 <= 6'h3a; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1a == enqPtr_1_value) begin
        freeList_26 <= io_freePhyReg_1;
      end else begin
        freeList_26 <= _GEN_66;
      end
    end else begin
      freeList_26 <= _GEN_66;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_27 <= 6'h3b; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1b == enqPtr_1_value) begin
        freeList_27 <= io_freePhyReg_1;
      end else begin
        freeList_27 <= _GEN_67;
      end
    end else begin
      freeList_27 <= _GEN_67;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_28 <= 6'h3c; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1c == enqPtr_1_value) begin
        freeList_28 <= io_freePhyReg_1;
      end else begin
        freeList_28 <= _GEN_68;
      end
    end else begin
      freeList_28 <= _GEN_68;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_29 <= 6'h3d; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1d == enqPtr_1_value) begin
        freeList_29 <= io_freePhyReg_1;
      end else begin
        freeList_29 <= _GEN_69;
      end
    end else begin
      freeList_29 <= _GEN_69;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_30 <= 6'h3e; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1e == enqPtr_1_value) begin
        freeList_30 <= io_freePhyReg_1;
      end else begin
        freeList_30 <= _GEN_70;
      end
    end else begin
      freeList_30 <= _GEN_70;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StdFreeList.scala 45:26]
      freeList_31 <= 6'h3f; // @[StdFreeList.scala 46:{30,30}]
    end else if (io_freeReq_1) begin
      if (5'h1f == enqPtr_1_value) begin
        freeList_31 <= io_freePhyReg_1;
      end else begin
        freeList_31 <= _GEN_71;
      end
    end else begin
      freeList_31 <= _GEN_71;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 39:59]
      lastTailPtr_flag <= 1'h1;
    end else begin
      lastTailPtr_flag <= _tailPtr_new_ptr_T_2[5];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 39:59]
      lastTailPtr_value <= 5'h0;
    end else begin
      lastTailPtr_value <= _tailPtr_new_ptr_T_2[4:0];
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
  lastCycleRedirect = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  lastCycleSnpt_useSnpt = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  lastCycleSnpt_snptSelect = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  headPtr_flag = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  headPtr_value = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  headPtrOH = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  archHeadPtr_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  archHeadPtr_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  freeList_0 = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  freeList_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  freeList_2 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  freeList_3 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  freeList_4 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  freeList_5 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  freeList_6 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  freeList_7 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  freeList_8 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  freeList_9 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  freeList_10 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  freeList_11 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  freeList_12 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  freeList_13 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  freeList_14 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  freeList_15 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  freeList_16 = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  freeList_17 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  freeList_18 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  freeList_19 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  freeList_20 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  freeList_21 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  freeList_22 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  freeList_23 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  freeList_24 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  freeList_25 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  freeList_26 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  freeList_27 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  freeList_28 = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  freeList_29 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  freeList_30 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  freeList_31 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  lastTailPtr_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  lastTailPtr_value = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  io_canAllocate_REG = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  freeRegCntReg = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_51[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    lastCycleRedirect = 1'h0;
  end
  if (reset) begin
    lastCycleSnpt_useSnpt = 1'h0;
  end
  if (reset) begin
    lastCycleSnpt_snptSelect = 2'h0;
  end
  if (reset) begin
    headPtr_flag = 1'h0;
  end
  if (reset) begin
    headPtr_value = 5'h0;
  end
  if (reset) begin
    headPtrOH = 32'h1;
  end
  if (reset) begin
    archHeadPtr_flag = 1'h0;
  end
  if (reset) begin
    archHeadPtr_value = 5'h0;
  end
  if (reset) begin
    freeList_0 = 6'h20;
  end
  if (reset) begin
    freeList_1 = 6'h21;
  end
  if (reset) begin
    freeList_2 = 6'h22;
  end
  if (reset) begin
    freeList_3 = 6'h23;
  end
  if (reset) begin
    freeList_4 = 6'h24;
  end
  if (reset) begin
    freeList_5 = 6'h25;
  end
  if (reset) begin
    freeList_6 = 6'h26;
  end
  if (reset) begin
    freeList_7 = 6'h27;
  end
  if (reset) begin
    freeList_8 = 6'h28;
  end
  if (reset) begin
    freeList_9 = 6'h29;
  end
  if (reset) begin
    freeList_10 = 6'h2a;
  end
  if (reset) begin
    freeList_11 = 6'h2b;
  end
  if (reset) begin
    freeList_12 = 6'h2c;
  end
  if (reset) begin
    freeList_13 = 6'h2d;
  end
  if (reset) begin
    freeList_14 = 6'h2e;
  end
  if (reset) begin
    freeList_15 = 6'h2f;
  end
  if (reset) begin
    freeList_16 = 6'h30;
  end
  if (reset) begin
    freeList_17 = 6'h31;
  end
  if (reset) begin
    freeList_18 = 6'h32;
  end
  if (reset) begin
    freeList_19 = 6'h33;
  end
  if (reset) begin
    freeList_20 = 6'h34;
  end
  if (reset) begin
    freeList_21 = 6'h35;
  end
  if (reset) begin
    freeList_22 = 6'h36;
  end
  if (reset) begin
    freeList_23 = 6'h37;
  end
  if (reset) begin
    freeList_24 = 6'h38;
  end
  if (reset) begin
    freeList_25 = 6'h39;
  end
  if (reset) begin
    freeList_26 = 6'h3a;
  end
  if (reset) begin
    freeList_27 = 6'h3b;
  end
  if (reset) begin
    freeList_28 = 6'h3c;
  end
  if (reset) begin
    freeList_29 = 6'h3d;
  end
  if (reset) begin
    freeList_30 = 6'h3e;
  end
  if (reset) begin
    freeList_31 = 6'h3f;
  end
  if (reset) begin
    lastTailPtr_flag = 1'h1;
  end
  if (reset) begin
    lastTailPtr_value = 5'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

