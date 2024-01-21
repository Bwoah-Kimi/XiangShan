module MEFreeList(
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
  input  [4:0] io_commit_info_0_ldest,
  input        io_commit_info_0_rfWen,
  input        io_commit_info_0_isMove,
  input  [4:0] io_commit_info_1_ldest,
  input        io_commit_info_1_rfWen,
  input        io_commit_info_1_isMove,
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
  reg [63:0] _RAND_5;
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
`endif // RANDOMIZE_REG_INIT
  wire  snapshots_snapshotGen_clock; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_reset; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_enq; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_enqData_0_flag; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_deq; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_flush; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_0_flag; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_1_flag; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_2_flag; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_value; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_snapshots_3_flag; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_value; // @[CtrlBlock.scala 49:29]
  reg  lastCycleRedirect; // @[BaseFreeList.scala 60:34]
  reg  lastCycleSnpt_useSnpt; // @[BaseFreeList.scala 61:30]
  reg [1:0] lastCycleSnpt_snptSelect; // @[BaseFreeList.scala 61:30]
  reg  headPtr_flag; // @[BaseFreeList.scala 63:24]
  reg [5:0] headPtr_value; // @[BaseFreeList.scala 63:24]
  reg [63:0] headPtrOH; // @[BaseFreeList.scala 64:26]
  reg  archHeadPtr_flag; // @[BaseFreeList.scala 65:28]
  reg [5:0] archHeadPtr_value; // @[BaseFreeList.scala 65:28]
  wire [63:0] headPtrOHVec_1 = {headPtrOH[62:0],headPtrOH[63]}; // @[Cat.scala 31:58]
  wire [63:0] headPtrOHVec_2 = {headPtrOH[61:0],headPtrOH[63:62]}; // @[Cat.scala 31:58]
  wire [1:0] _redirectedHeadPtr_T = io_walkReq_0 + io_walkReq_1; // @[Bitwise.scala 48:55]
  wire  _GEN_1 = 2'h1 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_flag :
    snapshots_snapshotGen_io_snapshots_0_flag; // @[Cat.scala 31:{58,58}]
  wire  _GEN_2 = 2'h2 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_flag : _GEN_1; // @[Cat.scala 31:{58,58}]
  wire  _GEN_3 = 2'h3 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_flag : _GEN_2; // @[Cat.scala 31:{58,58}]
  wire [5:0] _GEN_4 = snapshots_snapshotGen_io_snapshots_0_value; // @[Cat.scala 31:{58,58}]
  wire [5:0] _GEN_5 = 2'h1 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_value : _GEN_4; // @[Cat.scala 31:{58,58}]
  wire [5:0] _GEN_6 = 2'h2 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_value : _GEN_5; // @[Cat.scala 31:{58,58}]
  wire [5:0] _GEN_7 = 2'h3 == lastCycleSnpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_value : _GEN_6; // @[Cat.scala 31:{58,58}]
  wire [6:0] _redirectedHeadPtr_new_ptr_T = {_GEN_3,_GEN_7}; // @[Cat.scala 31:58]
  wire [6:0] _GEN_270 = {{5'd0}, _redirectedHeadPtr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [6:0] _redirectedHeadPtr_new_ptr_T_2 = _redirectedHeadPtr_new_ptr_T + _GEN_270; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] redirectedHeadPtr_new_ptr_value = _redirectedHeadPtr_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire  redirectedHeadPtr_new_ptr_flag = _redirectedHeadPtr_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 39:59]
  wire [6:0] _redirectedHeadPtr_new_ptr_T_5 = {archHeadPtr_flag,archHeadPtr_value}; // @[Cat.scala 31:58]
  wire [6:0] _redirectedHeadPtr_new_ptr_T_7 = _redirectedHeadPtr_new_ptr_T_5 + _GEN_270; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] redirectedHeadPtr_new_ptr_1_value = _redirectedHeadPtr_new_ptr_T_7[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire  redirectedHeadPtr_new_ptr_1_flag = _redirectedHeadPtr_new_ptr_T_7[6]; // @[CircularQueuePtr.scala 39:59]
  wire [63:0] _redirectedHeadPtrOH_T_2 = 64'h1 << redirectedHeadPtr_new_ptr_value; // @[OneHot.scala 64:12]
  wire [63:0] _redirectedHeadPtrOH_T_6 = 64'h1 << redirectedHeadPtr_new_ptr_1_value; // @[OneHot.scala 64:12]
  reg [5:0] freeList_0; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_1; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_2; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_3; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_4; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_5; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_6; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_7; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_8; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_9; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_10; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_11; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_12; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_13; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_14; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_15; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_16; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_17; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_18; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_19; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_20; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_21; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_22; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_23; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_24; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_25; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_26; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_27; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_28; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_29; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_30; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_31; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_32; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_33; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_34; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_35; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_36; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_37; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_38; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_39; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_40; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_41; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_42; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_43; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_44; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_45; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_46; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_47; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_48; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_49; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_50; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_51; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_52; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_53; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_54; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_55; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_56; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_57; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_58; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_59; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_60; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_61; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_62; // @[MEFreeList.scala 28:25]
  reg [5:0] freeList_63; // @[MEFreeList.scala 28:25]
  reg  tailPtr_flag; // @[MEFreeList.scala 32:24]
  reg [5:0] tailPtr_value; // @[MEFreeList.scala 32:24]
  wire  _doWalkRename_T_1 = ~io_redirect; // @[MEFreeList.scala 34:50]
  wire  doWalkRename = io_walk & io_doAllocate & ~io_redirect; // @[MEFreeList.scala 34:47]
  wire  doNormalRename = io_canAllocate & io_doAllocate & _doWalkRename_T_1; // @[MEFreeList.scala 35:56]
  wire  doRename = doWalkRename | doNormalRename; // @[MEFreeList.scala 36:31]
  wire [5:0] _phyRegCandidates_T_64 = headPtrOH[0] ? freeList_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_65 = headPtrOH[1] ? freeList_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_66 = headPtrOH[2] ? freeList_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_67 = headPtrOH[3] ? freeList_3 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_68 = headPtrOH[4] ? freeList_4 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_69 = headPtrOH[5] ? freeList_5 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_70 = headPtrOH[6] ? freeList_6 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_71 = headPtrOH[7] ? freeList_7 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_72 = headPtrOH[8] ? freeList_8 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_73 = headPtrOH[9] ? freeList_9 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_74 = headPtrOH[10] ? freeList_10 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_75 = headPtrOH[11] ? freeList_11 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_76 = headPtrOH[12] ? freeList_12 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_77 = headPtrOH[13] ? freeList_13 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_78 = headPtrOH[14] ? freeList_14 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_79 = headPtrOH[15] ? freeList_15 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_80 = headPtrOH[16] ? freeList_16 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_81 = headPtrOH[17] ? freeList_17 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_82 = headPtrOH[18] ? freeList_18 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_83 = headPtrOH[19] ? freeList_19 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_84 = headPtrOH[20] ? freeList_20 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_85 = headPtrOH[21] ? freeList_21 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_86 = headPtrOH[22] ? freeList_22 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_87 = headPtrOH[23] ? freeList_23 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_88 = headPtrOH[24] ? freeList_24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_89 = headPtrOH[25] ? freeList_25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_90 = headPtrOH[26] ? freeList_26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_91 = headPtrOH[27] ? freeList_27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_92 = headPtrOH[28] ? freeList_28 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_93 = headPtrOH[29] ? freeList_29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_94 = headPtrOH[30] ? freeList_30 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_95 = headPtrOH[31] ? freeList_31 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_96 = headPtrOH[32] ? freeList_32 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_97 = headPtrOH[33] ? freeList_33 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_98 = headPtrOH[34] ? freeList_34 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_99 = headPtrOH[35] ? freeList_35 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_100 = headPtrOH[36] ? freeList_36 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_101 = headPtrOH[37] ? freeList_37 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_102 = headPtrOH[38] ? freeList_38 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_103 = headPtrOH[39] ? freeList_39 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_104 = headPtrOH[40] ? freeList_40 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_105 = headPtrOH[41] ? freeList_41 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_106 = headPtrOH[42] ? freeList_42 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_107 = headPtrOH[43] ? freeList_43 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_108 = headPtrOH[44] ? freeList_44 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_109 = headPtrOH[45] ? freeList_45 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_110 = headPtrOH[46] ? freeList_46 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_111 = headPtrOH[47] ? freeList_47 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_112 = headPtrOH[48] ? freeList_48 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_113 = headPtrOH[49] ? freeList_49 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_114 = headPtrOH[50] ? freeList_50 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_115 = headPtrOH[51] ? freeList_51 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_116 = headPtrOH[52] ? freeList_52 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_117 = headPtrOH[53] ? freeList_53 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_118 = headPtrOH[54] ? freeList_54 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_119 = headPtrOH[55] ? freeList_55 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_120 = headPtrOH[56] ? freeList_56 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_121 = headPtrOH[57] ? freeList_57 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_122 = headPtrOH[58] ? freeList_58 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_123 = headPtrOH[59] ? freeList_59 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_124 = headPtrOH[60] ? freeList_60 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_125 = headPtrOH[61] ? freeList_61 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_126 = headPtrOH[62] ? freeList_62 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_127 = headPtrOH[63] ? freeList_63 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_128 = _phyRegCandidates_T_64 | _phyRegCandidates_T_65; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_129 = _phyRegCandidates_T_128 | _phyRegCandidates_T_66; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_130 = _phyRegCandidates_T_129 | _phyRegCandidates_T_67; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_131 = _phyRegCandidates_T_130 | _phyRegCandidates_T_68; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_132 = _phyRegCandidates_T_131 | _phyRegCandidates_T_69; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_133 = _phyRegCandidates_T_132 | _phyRegCandidates_T_70; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_134 = _phyRegCandidates_T_133 | _phyRegCandidates_T_71; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_135 = _phyRegCandidates_T_134 | _phyRegCandidates_T_72; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_136 = _phyRegCandidates_T_135 | _phyRegCandidates_T_73; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_137 = _phyRegCandidates_T_136 | _phyRegCandidates_T_74; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_138 = _phyRegCandidates_T_137 | _phyRegCandidates_T_75; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_139 = _phyRegCandidates_T_138 | _phyRegCandidates_T_76; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_140 = _phyRegCandidates_T_139 | _phyRegCandidates_T_77; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_141 = _phyRegCandidates_T_140 | _phyRegCandidates_T_78; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_142 = _phyRegCandidates_T_141 | _phyRegCandidates_T_79; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_143 = _phyRegCandidates_T_142 | _phyRegCandidates_T_80; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_144 = _phyRegCandidates_T_143 | _phyRegCandidates_T_81; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_145 = _phyRegCandidates_T_144 | _phyRegCandidates_T_82; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_146 = _phyRegCandidates_T_145 | _phyRegCandidates_T_83; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_147 = _phyRegCandidates_T_146 | _phyRegCandidates_T_84; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_148 = _phyRegCandidates_T_147 | _phyRegCandidates_T_85; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_149 = _phyRegCandidates_T_148 | _phyRegCandidates_T_86; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_150 = _phyRegCandidates_T_149 | _phyRegCandidates_T_87; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_151 = _phyRegCandidates_T_150 | _phyRegCandidates_T_88; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_152 = _phyRegCandidates_T_151 | _phyRegCandidates_T_89; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_153 = _phyRegCandidates_T_152 | _phyRegCandidates_T_90; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_154 = _phyRegCandidates_T_153 | _phyRegCandidates_T_91; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_155 = _phyRegCandidates_T_154 | _phyRegCandidates_T_92; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_156 = _phyRegCandidates_T_155 | _phyRegCandidates_T_93; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_157 = _phyRegCandidates_T_156 | _phyRegCandidates_T_94; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_158 = _phyRegCandidates_T_157 | _phyRegCandidates_T_95; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_159 = _phyRegCandidates_T_158 | _phyRegCandidates_T_96; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_160 = _phyRegCandidates_T_159 | _phyRegCandidates_T_97; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_161 = _phyRegCandidates_T_160 | _phyRegCandidates_T_98; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_162 = _phyRegCandidates_T_161 | _phyRegCandidates_T_99; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_163 = _phyRegCandidates_T_162 | _phyRegCandidates_T_100; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_164 = _phyRegCandidates_T_163 | _phyRegCandidates_T_101; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_165 = _phyRegCandidates_T_164 | _phyRegCandidates_T_102; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_166 = _phyRegCandidates_T_165 | _phyRegCandidates_T_103; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_167 = _phyRegCandidates_T_166 | _phyRegCandidates_T_104; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_168 = _phyRegCandidates_T_167 | _phyRegCandidates_T_105; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_169 = _phyRegCandidates_T_168 | _phyRegCandidates_T_106; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_170 = _phyRegCandidates_T_169 | _phyRegCandidates_T_107; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_171 = _phyRegCandidates_T_170 | _phyRegCandidates_T_108; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_172 = _phyRegCandidates_T_171 | _phyRegCandidates_T_109; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_173 = _phyRegCandidates_T_172 | _phyRegCandidates_T_110; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_174 = _phyRegCandidates_T_173 | _phyRegCandidates_T_111; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_175 = _phyRegCandidates_T_174 | _phyRegCandidates_T_112; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_176 = _phyRegCandidates_T_175 | _phyRegCandidates_T_113; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_177 = _phyRegCandidates_T_176 | _phyRegCandidates_T_114; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_178 = _phyRegCandidates_T_177 | _phyRegCandidates_T_115; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_179 = _phyRegCandidates_T_178 | _phyRegCandidates_T_116; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_180 = _phyRegCandidates_T_179 | _phyRegCandidates_T_117; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_181 = _phyRegCandidates_T_180 | _phyRegCandidates_T_118; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_182 = _phyRegCandidates_T_181 | _phyRegCandidates_T_119; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_183 = _phyRegCandidates_T_182 | _phyRegCandidates_T_120; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_184 = _phyRegCandidates_T_183 | _phyRegCandidates_T_121; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_185 = _phyRegCandidates_T_184 | _phyRegCandidates_T_122; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_186 = _phyRegCandidates_T_185 | _phyRegCandidates_T_123; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_187 = _phyRegCandidates_T_186 | _phyRegCandidates_T_124; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_188 = _phyRegCandidates_T_187 | _phyRegCandidates_T_125; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_189 = _phyRegCandidates_T_188 | _phyRegCandidates_T_126; // @[Mux.scala 27:73]
  wire [5:0] phyRegCandidates_0 = _phyRegCandidates_T_189 | _phyRegCandidates_T_127; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_255 = headPtrOHVec_1[0] ? freeList_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_256 = headPtrOHVec_1[1] ? freeList_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_257 = headPtrOHVec_1[2] ? freeList_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_258 = headPtrOHVec_1[3] ? freeList_3 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_259 = headPtrOHVec_1[4] ? freeList_4 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_260 = headPtrOHVec_1[5] ? freeList_5 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_261 = headPtrOHVec_1[6] ? freeList_6 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_262 = headPtrOHVec_1[7] ? freeList_7 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_263 = headPtrOHVec_1[8] ? freeList_8 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_264 = headPtrOHVec_1[9] ? freeList_9 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_265 = headPtrOHVec_1[10] ? freeList_10 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_266 = headPtrOHVec_1[11] ? freeList_11 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_267 = headPtrOHVec_1[12] ? freeList_12 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_268 = headPtrOHVec_1[13] ? freeList_13 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_269 = headPtrOHVec_1[14] ? freeList_14 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_270 = headPtrOHVec_1[15] ? freeList_15 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_271 = headPtrOHVec_1[16] ? freeList_16 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_272 = headPtrOHVec_1[17] ? freeList_17 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_273 = headPtrOHVec_1[18] ? freeList_18 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_274 = headPtrOHVec_1[19] ? freeList_19 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_275 = headPtrOHVec_1[20] ? freeList_20 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_276 = headPtrOHVec_1[21] ? freeList_21 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_277 = headPtrOHVec_1[22] ? freeList_22 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_278 = headPtrOHVec_1[23] ? freeList_23 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_279 = headPtrOHVec_1[24] ? freeList_24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_280 = headPtrOHVec_1[25] ? freeList_25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_281 = headPtrOHVec_1[26] ? freeList_26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_282 = headPtrOHVec_1[27] ? freeList_27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_283 = headPtrOHVec_1[28] ? freeList_28 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_284 = headPtrOHVec_1[29] ? freeList_29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_285 = headPtrOHVec_1[30] ? freeList_30 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_286 = headPtrOHVec_1[31] ? freeList_31 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_287 = headPtrOHVec_1[32] ? freeList_32 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_288 = headPtrOHVec_1[33] ? freeList_33 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_289 = headPtrOHVec_1[34] ? freeList_34 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_290 = headPtrOHVec_1[35] ? freeList_35 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_291 = headPtrOHVec_1[36] ? freeList_36 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_292 = headPtrOHVec_1[37] ? freeList_37 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_293 = headPtrOHVec_1[38] ? freeList_38 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_294 = headPtrOHVec_1[39] ? freeList_39 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_295 = headPtrOHVec_1[40] ? freeList_40 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_296 = headPtrOHVec_1[41] ? freeList_41 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_297 = headPtrOHVec_1[42] ? freeList_42 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_298 = headPtrOHVec_1[43] ? freeList_43 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_299 = headPtrOHVec_1[44] ? freeList_44 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_300 = headPtrOHVec_1[45] ? freeList_45 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_301 = headPtrOHVec_1[46] ? freeList_46 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_302 = headPtrOHVec_1[47] ? freeList_47 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_303 = headPtrOHVec_1[48] ? freeList_48 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_304 = headPtrOHVec_1[49] ? freeList_49 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_305 = headPtrOHVec_1[50] ? freeList_50 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_306 = headPtrOHVec_1[51] ? freeList_51 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_307 = headPtrOHVec_1[52] ? freeList_52 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_308 = headPtrOHVec_1[53] ? freeList_53 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_309 = headPtrOHVec_1[54] ? freeList_54 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_310 = headPtrOHVec_1[55] ? freeList_55 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_311 = headPtrOHVec_1[56] ? freeList_56 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_312 = headPtrOHVec_1[57] ? freeList_57 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_313 = headPtrOHVec_1[58] ? freeList_58 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_314 = headPtrOHVec_1[59] ? freeList_59 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_315 = headPtrOHVec_1[60] ? freeList_60 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_316 = headPtrOHVec_1[61] ? freeList_61 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_317 = headPtrOHVec_1[62] ? freeList_62 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_318 = headPtrOHVec_1[63] ? freeList_63 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_319 = _phyRegCandidates_T_255 | _phyRegCandidates_T_256; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_320 = _phyRegCandidates_T_319 | _phyRegCandidates_T_257; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_321 = _phyRegCandidates_T_320 | _phyRegCandidates_T_258; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_322 = _phyRegCandidates_T_321 | _phyRegCandidates_T_259; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_323 = _phyRegCandidates_T_322 | _phyRegCandidates_T_260; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_324 = _phyRegCandidates_T_323 | _phyRegCandidates_T_261; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_325 = _phyRegCandidates_T_324 | _phyRegCandidates_T_262; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_326 = _phyRegCandidates_T_325 | _phyRegCandidates_T_263; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_327 = _phyRegCandidates_T_326 | _phyRegCandidates_T_264; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_328 = _phyRegCandidates_T_327 | _phyRegCandidates_T_265; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_329 = _phyRegCandidates_T_328 | _phyRegCandidates_T_266; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_330 = _phyRegCandidates_T_329 | _phyRegCandidates_T_267; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_331 = _phyRegCandidates_T_330 | _phyRegCandidates_T_268; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_332 = _phyRegCandidates_T_331 | _phyRegCandidates_T_269; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_333 = _phyRegCandidates_T_332 | _phyRegCandidates_T_270; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_334 = _phyRegCandidates_T_333 | _phyRegCandidates_T_271; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_335 = _phyRegCandidates_T_334 | _phyRegCandidates_T_272; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_336 = _phyRegCandidates_T_335 | _phyRegCandidates_T_273; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_337 = _phyRegCandidates_T_336 | _phyRegCandidates_T_274; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_338 = _phyRegCandidates_T_337 | _phyRegCandidates_T_275; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_339 = _phyRegCandidates_T_338 | _phyRegCandidates_T_276; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_340 = _phyRegCandidates_T_339 | _phyRegCandidates_T_277; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_341 = _phyRegCandidates_T_340 | _phyRegCandidates_T_278; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_342 = _phyRegCandidates_T_341 | _phyRegCandidates_T_279; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_343 = _phyRegCandidates_T_342 | _phyRegCandidates_T_280; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_344 = _phyRegCandidates_T_343 | _phyRegCandidates_T_281; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_345 = _phyRegCandidates_T_344 | _phyRegCandidates_T_282; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_346 = _phyRegCandidates_T_345 | _phyRegCandidates_T_283; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_347 = _phyRegCandidates_T_346 | _phyRegCandidates_T_284; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_348 = _phyRegCandidates_T_347 | _phyRegCandidates_T_285; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_349 = _phyRegCandidates_T_348 | _phyRegCandidates_T_286; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_350 = _phyRegCandidates_T_349 | _phyRegCandidates_T_287; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_351 = _phyRegCandidates_T_350 | _phyRegCandidates_T_288; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_352 = _phyRegCandidates_T_351 | _phyRegCandidates_T_289; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_353 = _phyRegCandidates_T_352 | _phyRegCandidates_T_290; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_354 = _phyRegCandidates_T_353 | _phyRegCandidates_T_291; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_355 = _phyRegCandidates_T_354 | _phyRegCandidates_T_292; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_356 = _phyRegCandidates_T_355 | _phyRegCandidates_T_293; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_357 = _phyRegCandidates_T_356 | _phyRegCandidates_T_294; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_358 = _phyRegCandidates_T_357 | _phyRegCandidates_T_295; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_359 = _phyRegCandidates_T_358 | _phyRegCandidates_T_296; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_360 = _phyRegCandidates_T_359 | _phyRegCandidates_T_297; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_361 = _phyRegCandidates_T_360 | _phyRegCandidates_T_298; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_362 = _phyRegCandidates_T_361 | _phyRegCandidates_T_299; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_363 = _phyRegCandidates_T_362 | _phyRegCandidates_T_300; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_364 = _phyRegCandidates_T_363 | _phyRegCandidates_T_301; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_365 = _phyRegCandidates_T_364 | _phyRegCandidates_T_302; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_366 = _phyRegCandidates_T_365 | _phyRegCandidates_T_303; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_367 = _phyRegCandidates_T_366 | _phyRegCandidates_T_304; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_368 = _phyRegCandidates_T_367 | _phyRegCandidates_T_305; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_369 = _phyRegCandidates_T_368 | _phyRegCandidates_T_306; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_370 = _phyRegCandidates_T_369 | _phyRegCandidates_T_307; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_371 = _phyRegCandidates_T_370 | _phyRegCandidates_T_308; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_372 = _phyRegCandidates_T_371 | _phyRegCandidates_T_309; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_373 = _phyRegCandidates_T_372 | _phyRegCandidates_T_310; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_374 = _phyRegCandidates_T_373 | _phyRegCandidates_T_311; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_375 = _phyRegCandidates_T_374 | _phyRegCandidates_T_312; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_376 = _phyRegCandidates_T_375 | _phyRegCandidates_T_313; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_377 = _phyRegCandidates_T_376 | _phyRegCandidates_T_314; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_378 = _phyRegCandidates_T_377 | _phyRegCandidates_T_315; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_379 = _phyRegCandidates_T_378 | _phyRegCandidates_T_316; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_380 = _phyRegCandidates_T_379 | _phyRegCandidates_T_317; // @[Mux.scala 27:73]
  wire [5:0] phyRegCandidates_1 = _phyRegCandidates_T_380 | _phyRegCandidates_T_318; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_446 = headPtrOHVec_2[0] ? freeList_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_447 = headPtrOHVec_2[1] ? freeList_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_448 = headPtrOHVec_2[2] ? freeList_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_449 = headPtrOHVec_2[3] ? freeList_3 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_450 = headPtrOHVec_2[4] ? freeList_4 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_451 = headPtrOHVec_2[5] ? freeList_5 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_452 = headPtrOHVec_2[6] ? freeList_6 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_453 = headPtrOHVec_2[7] ? freeList_7 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_454 = headPtrOHVec_2[8] ? freeList_8 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_455 = headPtrOHVec_2[9] ? freeList_9 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_456 = headPtrOHVec_2[10] ? freeList_10 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_457 = headPtrOHVec_2[11] ? freeList_11 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_458 = headPtrOHVec_2[12] ? freeList_12 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_459 = headPtrOHVec_2[13] ? freeList_13 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_460 = headPtrOHVec_2[14] ? freeList_14 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_461 = headPtrOHVec_2[15] ? freeList_15 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_462 = headPtrOHVec_2[16] ? freeList_16 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_463 = headPtrOHVec_2[17] ? freeList_17 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_464 = headPtrOHVec_2[18] ? freeList_18 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_465 = headPtrOHVec_2[19] ? freeList_19 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_466 = headPtrOHVec_2[20] ? freeList_20 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_467 = headPtrOHVec_2[21] ? freeList_21 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_468 = headPtrOHVec_2[22] ? freeList_22 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_469 = headPtrOHVec_2[23] ? freeList_23 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_470 = headPtrOHVec_2[24] ? freeList_24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_471 = headPtrOHVec_2[25] ? freeList_25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_472 = headPtrOHVec_2[26] ? freeList_26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_473 = headPtrOHVec_2[27] ? freeList_27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_474 = headPtrOHVec_2[28] ? freeList_28 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_475 = headPtrOHVec_2[29] ? freeList_29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_476 = headPtrOHVec_2[30] ? freeList_30 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_477 = headPtrOHVec_2[31] ? freeList_31 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_478 = headPtrOHVec_2[32] ? freeList_32 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_479 = headPtrOHVec_2[33] ? freeList_33 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_480 = headPtrOHVec_2[34] ? freeList_34 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_481 = headPtrOHVec_2[35] ? freeList_35 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_482 = headPtrOHVec_2[36] ? freeList_36 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_483 = headPtrOHVec_2[37] ? freeList_37 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_484 = headPtrOHVec_2[38] ? freeList_38 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_485 = headPtrOHVec_2[39] ? freeList_39 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_486 = headPtrOHVec_2[40] ? freeList_40 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_487 = headPtrOHVec_2[41] ? freeList_41 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_488 = headPtrOHVec_2[42] ? freeList_42 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_489 = headPtrOHVec_2[43] ? freeList_43 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_490 = headPtrOHVec_2[44] ? freeList_44 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_491 = headPtrOHVec_2[45] ? freeList_45 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_492 = headPtrOHVec_2[46] ? freeList_46 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_493 = headPtrOHVec_2[47] ? freeList_47 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_494 = headPtrOHVec_2[48] ? freeList_48 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_495 = headPtrOHVec_2[49] ? freeList_49 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_496 = headPtrOHVec_2[50] ? freeList_50 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_497 = headPtrOHVec_2[51] ? freeList_51 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_498 = headPtrOHVec_2[52] ? freeList_52 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_499 = headPtrOHVec_2[53] ? freeList_53 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_500 = headPtrOHVec_2[54] ? freeList_54 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_501 = headPtrOHVec_2[55] ? freeList_55 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_502 = headPtrOHVec_2[56] ? freeList_56 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_503 = headPtrOHVec_2[57] ? freeList_57 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_504 = headPtrOHVec_2[58] ? freeList_58 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_505 = headPtrOHVec_2[59] ? freeList_59 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_506 = headPtrOHVec_2[60] ? freeList_60 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_507 = headPtrOHVec_2[61] ? freeList_61 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_508 = headPtrOHVec_2[62] ? freeList_62 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_509 = headPtrOHVec_2[63] ? freeList_63 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_510 = _phyRegCandidates_T_446 | _phyRegCandidates_T_447; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_511 = _phyRegCandidates_T_510 | _phyRegCandidates_T_448; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_512 = _phyRegCandidates_T_511 | _phyRegCandidates_T_449; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_513 = _phyRegCandidates_T_512 | _phyRegCandidates_T_450; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_514 = _phyRegCandidates_T_513 | _phyRegCandidates_T_451; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_515 = _phyRegCandidates_T_514 | _phyRegCandidates_T_452; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_516 = _phyRegCandidates_T_515 | _phyRegCandidates_T_453; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_517 = _phyRegCandidates_T_516 | _phyRegCandidates_T_454; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_518 = _phyRegCandidates_T_517 | _phyRegCandidates_T_455; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_519 = _phyRegCandidates_T_518 | _phyRegCandidates_T_456; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_520 = _phyRegCandidates_T_519 | _phyRegCandidates_T_457; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_521 = _phyRegCandidates_T_520 | _phyRegCandidates_T_458; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_522 = _phyRegCandidates_T_521 | _phyRegCandidates_T_459; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_523 = _phyRegCandidates_T_522 | _phyRegCandidates_T_460; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_524 = _phyRegCandidates_T_523 | _phyRegCandidates_T_461; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_525 = _phyRegCandidates_T_524 | _phyRegCandidates_T_462; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_526 = _phyRegCandidates_T_525 | _phyRegCandidates_T_463; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_527 = _phyRegCandidates_T_526 | _phyRegCandidates_T_464; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_528 = _phyRegCandidates_T_527 | _phyRegCandidates_T_465; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_529 = _phyRegCandidates_T_528 | _phyRegCandidates_T_466; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_530 = _phyRegCandidates_T_529 | _phyRegCandidates_T_467; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_531 = _phyRegCandidates_T_530 | _phyRegCandidates_T_468; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_532 = _phyRegCandidates_T_531 | _phyRegCandidates_T_469; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_533 = _phyRegCandidates_T_532 | _phyRegCandidates_T_470; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_534 = _phyRegCandidates_T_533 | _phyRegCandidates_T_471; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_535 = _phyRegCandidates_T_534 | _phyRegCandidates_T_472; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_536 = _phyRegCandidates_T_535 | _phyRegCandidates_T_473; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_537 = _phyRegCandidates_T_536 | _phyRegCandidates_T_474; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_538 = _phyRegCandidates_T_537 | _phyRegCandidates_T_475; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_539 = _phyRegCandidates_T_538 | _phyRegCandidates_T_476; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_540 = _phyRegCandidates_T_539 | _phyRegCandidates_T_477; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_541 = _phyRegCandidates_T_540 | _phyRegCandidates_T_478; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_542 = _phyRegCandidates_T_541 | _phyRegCandidates_T_479; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_543 = _phyRegCandidates_T_542 | _phyRegCandidates_T_480; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_544 = _phyRegCandidates_T_543 | _phyRegCandidates_T_481; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_545 = _phyRegCandidates_T_544 | _phyRegCandidates_T_482; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_546 = _phyRegCandidates_T_545 | _phyRegCandidates_T_483; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_547 = _phyRegCandidates_T_546 | _phyRegCandidates_T_484; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_548 = _phyRegCandidates_T_547 | _phyRegCandidates_T_485; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_549 = _phyRegCandidates_T_548 | _phyRegCandidates_T_486; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_550 = _phyRegCandidates_T_549 | _phyRegCandidates_T_487; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_551 = _phyRegCandidates_T_550 | _phyRegCandidates_T_488; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_552 = _phyRegCandidates_T_551 | _phyRegCandidates_T_489; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_553 = _phyRegCandidates_T_552 | _phyRegCandidates_T_490; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_554 = _phyRegCandidates_T_553 | _phyRegCandidates_T_491; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_555 = _phyRegCandidates_T_554 | _phyRegCandidates_T_492; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_556 = _phyRegCandidates_T_555 | _phyRegCandidates_T_493; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_557 = _phyRegCandidates_T_556 | _phyRegCandidates_T_494; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_558 = _phyRegCandidates_T_557 | _phyRegCandidates_T_495; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_559 = _phyRegCandidates_T_558 | _phyRegCandidates_T_496; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_560 = _phyRegCandidates_T_559 | _phyRegCandidates_T_497; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_561 = _phyRegCandidates_T_560 | _phyRegCandidates_T_498; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_562 = _phyRegCandidates_T_561 | _phyRegCandidates_T_499; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_563 = _phyRegCandidates_T_562 | _phyRegCandidates_T_500; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_564 = _phyRegCandidates_T_563 | _phyRegCandidates_T_501; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_565 = _phyRegCandidates_T_564 | _phyRegCandidates_T_502; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_566 = _phyRegCandidates_T_565 | _phyRegCandidates_T_503; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_567 = _phyRegCandidates_T_566 | _phyRegCandidates_T_504; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_568 = _phyRegCandidates_T_567 | _phyRegCandidates_T_505; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_569 = _phyRegCandidates_T_568 | _phyRegCandidates_T_506; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_570 = _phyRegCandidates_T_569 | _phyRegCandidates_T_507; // @[Mux.scala 27:73]
  wire [5:0] _phyRegCandidates_T_571 = _phyRegCandidates_T_570 | _phyRegCandidates_T_508; // @[Mux.scala 27:73]
  wire [5:0] phyRegCandidates_2 = _phyRegCandidates_T_571 | _phyRegCandidates_T_509; // @[Mux.scala 27:73]
  wire [5:0] _GEN_9 = io_allocateReq_0 ? phyRegCandidates_1 : phyRegCandidates_0; // @[MEFreeList.scala 45:{26,26}]
  wire [1:0] _GEN_274 = {{1'd0}, io_allocateReq_0}; // @[MEFreeList.scala 45:{26,26}]
  wire  archAlloc_0 = io_commit_commitValid_0 & io_commit_info_0_rfWen & ~io_commit_info_0_isMove &
    io_commit_info_0_ldest != 5'h0; // @[MEFreeList.scala 49:63]
  wire  archAlloc_1 = io_commit_commitValid_1 & io_commit_info_1_rfWen & ~io_commit_info_1_isMove &
    io_commit_info_1_ldest != 5'h0; // @[MEFreeList.scala 49:63]
  wire [1:0] numArchAllocate = archAlloc_0 + archAlloc_1; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_275 = {{5'd0}, numArchAllocate}; // @[CircularQueuePtr.scala 39:46]
  wire [6:0] _archHeadPtrNew_new_ptr_T_2 = _redirectedHeadPtr_new_ptr_T_5 + _GEN_275; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] archHeadPtrNew_value = _archHeadPtrNew_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire  archHeadPtrNew_flag = _archHeadPtrNew_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _numAllocate_T_2 = io_allocateReq_0 + io_allocateReq_1; // @[Bitwise.scala 48:55]
  wire [1:0] numAllocate = io_walk ? _redirectedHeadPtr_T : _numAllocate_T_2; // @[MEFreeList.scala 57:24]
  wire [6:0] _headPtrNew_new_ptr_T = {headPtr_flag,headPtr_value}; // @[Cat.scala 31:58]
  wire [6:0] _GEN_276 = {{5'd0}, numAllocate}; // @[CircularQueuePtr.scala 39:46]
  wire [6:0] _headPtrNew_new_ptr_T_2 = _headPtrNew_new_ptr_T + _GEN_276; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] headPtrNew_new_ptr_value = _headPtrNew_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire  headPtrNew_new_ptr_flag = _headPtrNew_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 39:59]
  wire [6:0] _freePtr_new_ptr_T = {tailPtr_flag,tailPtr_value}; // @[Cat.scala 31:58]
  wire [7:0] _freePtr_new_ptr_T_1 = {{1'd0}, _freePtr_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] freePtr_value = _freePtr_new_ptr_T_1[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _GEN_14 = 6'h0 == freePtr_value ? io_freePhyReg_0 : freeList_0; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_15 = 6'h1 == freePtr_value ? io_freePhyReg_0 : freeList_1; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_16 = 6'h2 == freePtr_value ? io_freePhyReg_0 : freeList_2; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_17 = 6'h3 == freePtr_value ? io_freePhyReg_0 : freeList_3; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_18 = 6'h4 == freePtr_value ? io_freePhyReg_0 : freeList_4; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_19 = 6'h5 == freePtr_value ? io_freePhyReg_0 : freeList_5; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_20 = 6'h6 == freePtr_value ? io_freePhyReg_0 : freeList_6; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_21 = 6'h7 == freePtr_value ? io_freePhyReg_0 : freeList_7; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_22 = 6'h8 == freePtr_value ? io_freePhyReg_0 : freeList_8; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_23 = 6'h9 == freePtr_value ? io_freePhyReg_0 : freeList_9; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_24 = 6'ha == freePtr_value ? io_freePhyReg_0 : freeList_10; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_25 = 6'hb == freePtr_value ? io_freePhyReg_0 : freeList_11; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_26 = 6'hc == freePtr_value ? io_freePhyReg_0 : freeList_12; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_27 = 6'hd == freePtr_value ? io_freePhyReg_0 : freeList_13; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_28 = 6'he == freePtr_value ? io_freePhyReg_0 : freeList_14; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_29 = 6'hf == freePtr_value ? io_freePhyReg_0 : freeList_15; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_30 = 6'h10 == freePtr_value ? io_freePhyReg_0 : freeList_16; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_31 = 6'h11 == freePtr_value ? io_freePhyReg_0 : freeList_17; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_32 = 6'h12 == freePtr_value ? io_freePhyReg_0 : freeList_18; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_33 = 6'h13 == freePtr_value ? io_freePhyReg_0 : freeList_19; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_34 = 6'h14 == freePtr_value ? io_freePhyReg_0 : freeList_20; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_35 = 6'h15 == freePtr_value ? io_freePhyReg_0 : freeList_21; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_36 = 6'h16 == freePtr_value ? io_freePhyReg_0 : freeList_22; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_37 = 6'h17 == freePtr_value ? io_freePhyReg_0 : freeList_23; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_38 = 6'h18 == freePtr_value ? io_freePhyReg_0 : freeList_24; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_39 = 6'h19 == freePtr_value ? io_freePhyReg_0 : freeList_25; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_40 = 6'h1a == freePtr_value ? io_freePhyReg_0 : freeList_26; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_41 = 6'h1b == freePtr_value ? io_freePhyReg_0 : freeList_27; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_42 = 6'h1c == freePtr_value ? io_freePhyReg_0 : freeList_28; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_43 = 6'h1d == freePtr_value ? io_freePhyReg_0 : freeList_29; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_44 = 6'h1e == freePtr_value ? io_freePhyReg_0 : freeList_30; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_45 = 6'h1f == freePtr_value ? io_freePhyReg_0 : freeList_31; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_46 = 6'h20 == freePtr_value ? io_freePhyReg_0 : freeList_32; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_47 = 6'h21 == freePtr_value ? io_freePhyReg_0 : freeList_33; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_48 = 6'h22 == freePtr_value ? io_freePhyReg_0 : freeList_34; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_49 = 6'h23 == freePtr_value ? io_freePhyReg_0 : freeList_35; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_50 = 6'h24 == freePtr_value ? io_freePhyReg_0 : freeList_36; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_51 = 6'h25 == freePtr_value ? io_freePhyReg_0 : freeList_37; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_52 = 6'h26 == freePtr_value ? io_freePhyReg_0 : freeList_38; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_53 = 6'h27 == freePtr_value ? io_freePhyReg_0 : freeList_39; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_54 = 6'h28 == freePtr_value ? io_freePhyReg_0 : freeList_40; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_55 = 6'h29 == freePtr_value ? io_freePhyReg_0 : freeList_41; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_56 = 6'h2a == freePtr_value ? io_freePhyReg_0 : freeList_42; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_57 = 6'h2b == freePtr_value ? io_freePhyReg_0 : freeList_43; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_58 = 6'h2c == freePtr_value ? io_freePhyReg_0 : freeList_44; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_59 = 6'h2d == freePtr_value ? io_freePhyReg_0 : freeList_45; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_60 = 6'h2e == freePtr_value ? io_freePhyReg_0 : freeList_46; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_61 = 6'h2f == freePtr_value ? io_freePhyReg_0 : freeList_47; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_62 = 6'h30 == freePtr_value ? io_freePhyReg_0 : freeList_48; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_63 = 6'h31 == freePtr_value ? io_freePhyReg_0 : freeList_49; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_64 = 6'h32 == freePtr_value ? io_freePhyReg_0 : freeList_50; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_65 = 6'h33 == freePtr_value ? io_freePhyReg_0 : freeList_51; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_66 = 6'h34 == freePtr_value ? io_freePhyReg_0 : freeList_52; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_67 = 6'h35 == freePtr_value ? io_freePhyReg_0 : freeList_53; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_68 = 6'h36 == freePtr_value ? io_freePhyReg_0 : freeList_54; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_69 = 6'h37 == freePtr_value ? io_freePhyReg_0 : freeList_55; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_70 = 6'h38 == freePtr_value ? io_freePhyReg_0 : freeList_56; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_71 = 6'h39 == freePtr_value ? io_freePhyReg_0 : freeList_57; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_72 = 6'h3a == freePtr_value ? io_freePhyReg_0 : freeList_58; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_73 = 6'h3b == freePtr_value ? io_freePhyReg_0 : freeList_59; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_74 = 6'h3c == freePtr_value ? io_freePhyReg_0 : freeList_60; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_75 = 6'h3d == freePtr_value ? io_freePhyReg_0 : freeList_61; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_76 = 6'h3e == freePtr_value ? io_freePhyReg_0 : freeList_62; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_77 = 6'h3f == freePtr_value ? io_freePhyReg_0 : freeList_63; // @[MEFreeList.scala 28:25 71:{31,31}]
  wire [5:0] _GEN_78 = io_freeReq_0 ? _GEN_14 : freeList_0; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_79 = io_freeReq_0 ? _GEN_15 : freeList_1; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_80 = io_freeReq_0 ? _GEN_16 : freeList_2; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_81 = io_freeReq_0 ? _GEN_17 : freeList_3; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_82 = io_freeReq_0 ? _GEN_18 : freeList_4; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_83 = io_freeReq_0 ? _GEN_19 : freeList_5; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_84 = io_freeReq_0 ? _GEN_20 : freeList_6; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_85 = io_freeReq_0 ? _GEN_21 : freeList_7; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_86 = io_freeReq_0 ? _GEN_22 : freeList_8; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_87 = io_freeReq_0 ? _GEN_23 : freeList_9; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_88 = io_freeReq_0 ? _GEN_24 : freeList_10; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_89 = io_freeReq_0 ? _GEN_25 : freeList_11; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_90 = io_freeReq_0 ? _GEN_26 : freeList_12; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_91 = io_freeReq_0 ? _GEN_27 : freeList_13; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_92 = io_freeReq_0 ? _GEN_28 : freeList_14; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_93 = io_freeReq_0 ? _GEN_29 : freeList_15; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_94 = io_freeReq_0 ? _GEN_30 : freeList_16; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_95 = io_freeReq_0 ? _GEN_31 : freeList_17; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_96 = io_freeReq_0 ? _GEN_32 : freeList_18; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_97 = io_freeReq_0 ? _GEN_33 : freeList_19; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_98 = io_freeReq_0 ? _GEN_34 : freeList_20; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_99 = io_freeReq_0 ? _GEN_35 : freeList_21; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_100 = io_freeReq_0 ? _GEN_36 : freeList_22; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_101 = io_freeReq_0 ? _GEN_37 : freeList_23; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_102 = io_freeReq_0 ? _GEN_38 : freeList_24; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_103 = io_freeReq_0 ? _GEN_39 : freeList_25; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_104 = io_freeReq_0 ? _GEN_40 : freeList_26; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_105 = io_freeReq_0 ? _GEN_41 : freeList_27; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_106 = io_freeReq_0 ? _GEN_42 : freeList_28; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_107 = io_freeReq_0 ? _GEN_43 : freeList_29; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_108 = io_freeReq_0 ? _GEN_44 : freeList_30; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_109 = io_freeReq_0 ? _GEN_45 : freeList_31; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_110 = io_freeReq_0 ? _GEN_46 : freeList_32; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_111 = io_freeReq_0 ? _GEN_47 : freeList_33; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_112 = io_freeReq_0 ? _GEN_48 : freeList_34; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_113 = io_freeReq_0 ? _GEN_49 : freeList_35; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_114 = io_freeReq_0 ? _GEN_50 : freeList_36; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_115 = io_freeReq_0 ? _GEN_51 : freeList_37; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_116 = io_freeReq_0 ? _GEN_52 : freeList_38; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_117 = io_freeReq_0 ? _GEN_53 : freeList_39; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_118 = io_freeReq_0 ? _GEN_54 : freeList_40; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_119 = io_freeReq_0 ? _GEN_55 : freeList_41; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_120 = io_freeReq_0 ? _GEN_56 : freeList_42; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_121 = io_freeReq_0 ? _GEN_57 : freeList_43; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_122 = io_freeReq_0 ? _GEN_58 : freeList_44; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_123 = io_freeReq_0 ? _GEN_59 : freeList_45; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_124 = io_freeReq_0 ? _GEN_60 : freeList_46; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_125 = io_freeReq_0 ? _GEN_61 : freeList_47; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_126 = io_freeReq_0 ? _GEN_62 : freeList_48; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_127 = io_freeReq_0 ? _GEN_63 : freeList_49; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_128 = io_freeReq_0 ? _GEN_64 : freeList_50; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_129 = io_freeReq_0 ? _GEN_65 : freeList_51; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_130 = io_freeReq_0 ? _GEN_66 : freeList_52; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_131 = io_freeReq_0 ? _GEN_67 : freeList_53; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_132 = io_freeReq_0 ? _GEN_68 : freeList_54; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_133 = io_freeReq_0 ? _GEN_69 : freeList_55; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_134 = io_freeReq_0 ? _GEN_70 : freeList_56; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_135 = io_freeReq_0 ? _GEN_71 : freeList_57; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_136 = io_freeReq_0 ? _GEN_72 : freeList_58; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_137 = io_freeReq_0 ? _GEN_73 : freeList_59; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_138 = io_freeReq_0 ? _GEN_74 : freeList_60; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_139 = io_freeReq_0 ? _GEN_75 : freeList_61; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_140 = io_freeReq_0 ? _GEN_76 : freeList_62; // @[MEFreeList.scala 28:25 69:26]
  wire [5:0] _GEN_141 = io_freeReq_0 ? _GEN_77 : freeList_63; // @[MEFreeList.scala 28:25 69:26]
  wire [6:0] _GEN_277 = {{6'd0}, io_freeReq_0}; // @[CircularQueuePtr.scala 39:46]
  wire [6:0] _freePtr_new_ptr_T_7 = _freePtr_new_ptr_T + _GEN_277; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] freePtr_1_value = _freePtr_new_ptr_T_7[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _tailPtrNext_T = io_freeReq_0 + io_freeReq_1; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_278 = {{5'd0}, _tailPtrNext_T}; // @[CircularQueuePtr.scala 39:46]
  wire [6:0] _tailPtrNext_new_ptr_T_2 = _freePtr_new_ptr_T + _GEN_278; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] tailPtrNext_value = _tailPtrNext_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 39:59]
  wire  tailPtrNext_flag = _tailPtrNext_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _freeRegCnt_T_4 = tailPtrNext_value - headPtr_value; // @[CircularQueuePtr.scala 105:21]
  wire [6:0] _GEN_279 = {{1'd0}, tailPtrNext_value}; // @[CircularQueuePtr.scala 106:25]
  wire [6:0] _freeRegCnt_T_6 = 7'h40 + _GEN_279; // @[CircularQueuePtr.scala 106:25]
  wire [6:0] _GEN_280 = {{1'd0}, headPtr_value}; // @[CircularQueuePtr.scala 106:41]
  wire [6:0] _freeRegCnt_T_8 = _freeRegCnt_T_6 - _GEN_280; // @[CircularQueuePtr.scala 106:41]
  wire [6:0] _freeRegCnt_T_9 = tailPtrNext_flag == headPtr_flag ? {{1'd0}, _freeRegCnt_T_4} : _freeRegCnt_T_8; // @[CircularQueuePtr.scala 104:8]
  wire [6:0] _freeRegCnt_T_13 = _freeRegCnt_T_9 - _GEN_270; // @[MEFreeList.scala 79:98]
  wire [6:0] _GEN_284 = {{5'd0}, _numAllocate_T_2}; // @[MEFreeList.scala 80:98]
  wire [6:0] _freeRegCnt_T_25 = _freeRegCnt_T_9 - _GEN_284; // @[MEFreeList.scala 80:98]
  reg [6:0] freeRegCntReg; // @[MEFreeList.scala 82:30]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  SnapshotGenerator_3 snapshots_snapshotGen ( // @[CtrlBlock.scala 49:29]
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
    .io_snapshots_3_value(snapshots_snapshotGen_io_snapshots_3_value)
  );
  assign io_allocatePhyReg_0 = _phyRegCandidates_T_189 | _phyRegCandidates_T_127; // @[Mux.scala 27:73]
  assign io_allocatePhyReg_1 = 2'h2 == _GEN_274 ? phyRegCandidates_2 : _GEN_9; // @[MEFreeList.scala 45:{26,26}]
  assign io_canAllocate = freeRegCntReg >= 7'h2; // @[MEFreeList.scala 83:35]
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
    if (doWalkRename & ~lastCycleRedirect) begin // @[MEFreeList.scala 79:23]
      freeRegCntReg <= _freeRegCnt_T_13;
    end else if (doNormalRename) begin // @[MEFreeList.scala 80:23]
      freeRegCntReg <= _freeRegCnt_T_25;
    end else if (tailPtrNext_flag == headPtr_flag) begin // @[CircularQueuePtr.scala 104:8]
      freeRegCntReg <= {{1'd0}, _freeRegCnt_T_4};
    end else begin
      freeRegCntReg <= _freeRegCnt_T_8;
    end
    io_perf_0_value_REG <= freeRegCntReg < 7'h10; // @[MEFreeList.scala 94:45]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= freeRegCntReg >= 7'h10 & freeRegCntReg <= 7'h20; // @[MEFreeList.scala 95:61]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= freeRegCntReg >= 7'h20 & freeRegCntReg <= 7'h30; // @[MEFreeList.scala 96:61]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= freeRegCntReg >= 7'h30; // @[MEFreeList.scala 97:45]
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
    if (reset) begin // @[MEFreeList.scala 60:26]
      headPtr_flag <= 1'h0; // @[MEFreeList.scala 58:25 BaseFreeList.scala 73:30]
    end else if (doRename) begin
      if (lastCycleRedirect) begin
        if (lastCycleSnpt_useSnpt) begin
          headPtr_flag <= redirectedHeadPtr_new_ptr_flag;
        end else begin
          headPtr_flag <= redirectedHeadPtr_new_ptr_1_flag;
        end
      end else begin
        headPtr_flag <= headPtrNew_new_ptr_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 60:26]
      headPtr_value <= 6'h0; // @[MEFreeList.scala 58:25 BaseFreeList.scala 73:30]
    end else if (doRename) begin
      if (lastCycleRedirect) begin
        if (lastCycleSnpt_useSnpt) begin
          headPtr_value <= redirectedHeadPtr_new_ptr_value;
        end else begin
          headPtr_value <= redirectedHeadPtr_new_ptr_1_value;
        end
      end else begin
        headPtr_value <= headPtrNew_new_ptr_value;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 61:26]
      headPtrOH <= 64'h1; // @[MEFreeList.scala 59:25 BaseFreeList.scala 78:32 MEFreeList.scala 59:{25,25,25,25}]
    end else if (doRename) begin
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
    if (reset) begin // @[MEFreeList.scala 53:28]
      archHeadPtr_flag <= 1'h0;
    end else if (io_commit_isCommit) begin
      archHeadPtr_flag <= archHeadPtrNew_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 53:28]
      archHeadPtr_value <= 6'h0;
    end else if (io_commit_isCommit) begin
      archHeadPtr_value <= archHeadPtrNew_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_0 <= 6'h1; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h0 == freePtr_1_value) begin
        freeList_0 <= io_freePhyReg_1;
      end else begin
        freeList_0 <= _GEN_78;
      end
    end else begin
      freeList_0 <= _GEN_78;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_1 <= 6'h2; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1 == freePtr_1_value) begin
        freeList_1 <= io_freePhyReg_1;
      end else begin
        freeList_1 <= _GEN_79;
      end
    end else begin
      freeList_1 <= _GEN_79;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_2 <= 6'h3; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2 == freePtr_1_value) begin
        freeList_2 <= io_freePhyReg_1;
      end else begin
        freeList_2 <= _GEN_80;
      end
    end else begin
      freeList_2 <= _GEN_80;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_3 <= 6'h4; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3 == freePtr_1_value) begin
        freeList_3 <= io_freePhyReg_1;
      end else begin
        freeList_3 <= _GEN_81;
      end
    end else begin
      freeList_3 <= _GEN_81;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_4 <= 6'h5; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h4 == freePtr_1_value) begin
        freeList_4 <= io_freePhyReg_1;
      end else begin
        freeList_4 <= _GEN_82;
      end
    end else begin
      freeList_4 <= _GEN_82;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_5 <= 6'h6; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h5 == freePtr_1_value) begin
        freeList_5 <= io_freePhyReg_1;
      end else begin
        freeList_5 <= _GEN_83;
      end
    end else begin
      freeList_5 <= _GEN_83;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_6 <= 6'h7; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h6 == freePtr_1_value) begin
        freeList_6 <= io_freePhyReg_1;
      end else begin
        freeList_6 <= _GEN_84;
      end
    end else begin
      freeList_6 <= _GEN_84;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_7 <= 6'h8; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h7 == freePtr_1_value) begin
        freeList_7 <= io_freePhyReg_1;
      end else begin
        freeList_7 <= _GEN_85;
      end
    end else begin
      freeList_7 <= _GEN_85;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_8 <= 6'h9; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h8 == freePtr_1_value) begin
        freeList_8 <= io_freePhyReg_1;
      end else begin
        freeList_8 <= _GEN_86;
      end
    end else begin
      freeList_8 <= _GEN_86;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_9 <= 6'ha; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h9 == freePtr_1_value) begin
        freeList_9 <= io_freePhyReg_1;
      end else begin
        freeList_9 <= _GEN_87;
      end
    end else begin
      freeList_9 <= _GEN_87;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_10 <= 6'hb; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'ha == freePtr_1_value) begin
        freeList_10 <= io_freePhyReg_1;
      end else begin
        freeList_10 <= _GEN_88;
      end
    end else begin
      freeList_10 <= _GEN_88;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_11 <= 6'hc; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'hb == freePtr_1_value) begin
        freeList_11 <= io_freePhyReg_1;
      end else begin
        freeList_11 <= _GEN_89;
      end
    end else begin
      freeList_11 <= _GEN_89;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_12 <= 6'hd; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'hc == freePtr_1_value) begin
        freeList_12 <= io_freePhyReg_1;
      end else begin
        freeList_12 <= _GEN_90;
      end
    end else begin
      freeList_12 <= _GEN_90;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_13 <= 6'he; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'hd == freePtr_1_value) begin
        freeList_13 <= io_freePhyReg_1;
      end else begin
        freeList_13 <= _GEN_91;
      end
    end else begin
      freeList_13 <= _GEN_91;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_14 <= 6'hf; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'he == freePtr_1_value) begin
        freeList_14 <= io_freePhyReg_1;
      end else begin
        freeList_14 <= _GEN_92;
      end
    end else begin
      freeList_14 <= _GEN_92;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_15 <= 6'h10; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'hf == freePtr_1_value) begin
        freeList_15 <= io_freePhyReg_1;
      end else begin
        freeList_15 <= _GEN_93;
      end
    end else begin
      freeList_15 <= _GEN_93;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_16 <= 6'h11; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h10 == freePtr_1_value) begin
        freeList_16 <= io_freePhyReg_1;
      end else begin
        freeList_16 <= _GEN_94;
      end
    end else begin
      freeList_16 <= _GEN_94;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_17 <= 6'h12; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h11 == freePtr_1_value) begin
        freeList_17 <= io_freePhyReg_1;
      end else begin
        freeList_17 <= _GEN_95;
      end
    end else begin
      freeList_17 <= _GEN_95;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_18 <= 6'h13; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h12 == freePtr_1_value) begin
        freeList_18 <= io_freePhyReg_1;
      end else begin
        freeList_18 <= _GEN_96;
      end
    end else begin
      freeList_18 <= _GEN_96;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_19 <= 6'h14; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h13 == freePtr_1_value) begin
        freeList_19 <= io_freePhyReg_1;
      end else begin
        freeList_19 <= _GEN_97;
      end
    end else begin
      freeList_19 <= _GEN_97;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_20 <= 6'h15; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h14 == freePtr_1_value) begin
        freeList_20 <= io_freePhyReg_1;
      end else begin
        freeList_20 <= _GEN_98;
      end
    end else begin
      freeList_20 <= _GEN_98;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_21 <= 6'h16; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h15 == freePtr_1_value) begin
        freeList_21 <= io_freePhyReg_1;
      end else begin
        freeList_21 <= _GEN_99;
      end
    end else begin
      freeList_21 <= _GEN_99;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_22 <= 6'h17; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h16 == freePtr_1_value) begin
        freeList_22 <= io_freePhyReg_1;
      end else begin
        freeList_22 <= _GEN_100;
      end
    end else begin
      freeList_22 <= _GEN_100;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_23 <= 6'h18; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h17 == freePtr_1_value) begin
        freeList_23 <= io_freePhyReg_1;
      end else begin
        freeList_23 <= _GEN_101;
      end
    end else begin
      freeList_23 <= _GEN_101;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_24 <= 6'h19; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h18 == freePtr_1_value) begin
        freeList_24 <= io_freePhyReg_1;
      end else begin
        freeList_24 <= _GEN_102;
      end
    end else begin
      freeList_24 <= _GEN_102;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_25 <= 6'h1a; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h19 == freePtr_1_value) begin
        freeList_25 <= io_freePhyReg_1;
      end else begin
        freeList_25 <= _GEN_103;
      end
    end else begin
      freeList_25 <= _GEN_103;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_26 <= 6'h1b; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1a == freePtr_1_value) begin
        freeList_26 <= io_freePhyReg_1;
      end else begin
        freeList_26 <= _GEN_104;
      end
    end else begin
      freeList_26 <= _GEN_104;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_27 <= 6'h1c; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1b == freePtr_1_value) begin
        freeList_27 <= io_freePhyReg_1;
      end else begin
        freeList_27 <= _GEN_105;
      end
    end else begin
      freeList_27 <= _GEN_105;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_28 <= 6'h1d; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1c == freePtr_1_value) begin
        freeList_28 <= io_freePhyReg_1;
      end else begin
        freeList_28 <= _GEN_106;
      end
    end else begin
      freeList_28 <= _GEN_106;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_29 <= 6'h1e; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1d == freePtr_1_value) begin
        freeList_29 <= io_freePhyReg_1;
      end else begin
        freeList_29 <= _GEN_107;
      end
    end else begin
      freeList_29 <= _GEN_107;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_30 <= 6'h1f; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1e == freePtr_1_value) begin
        freeList_30 <= io_freePhyReg_1;
      end else begin
        freeList_30 <= _GEN_108;
      end
    end else begin
      freeList_30 <= _GEN_108;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_31 <= 6'h20; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h1f == freePtr_1_value) begin
        freeList_31 <= io_freePhyReg_1;
      end else begin
        freeList_31 <= _GEN_109;
      end
    end else begin
      freeList_31 <= _GEN_109;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_32 <= 6'h21; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h20 == freePtr_1_value) begin
        freeList_32 <= io_freePhyReg_1;
      end else begin
        freeList_32 <= _GEN_110;
      end
    end else begin
      freeList_32 <= _GEN_110;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_33 <= 6'h22; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h21 == freePtr_1_value) begin
        freeList_33 <= io_freePhyReg_1;
      end else begin
        freeList_33 <= _GEN_111;
      end
    end else begin
      freeList_33 <= _GEN_111;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_34 <= 6'h23; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h22 == freePtr_1_value) begin
        freeList_34 <= io_freePhyReg_1;
      end else begin
        freeList_34 <= _GEN_112;
      end
    end else begin
      freeList_34 <= _GEN_112;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_35 <= 6'h24; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h23 == freePtr_1_value) begin
        freeList_35 <= io_freePhyReg_1;
      end else begin
        freeList_35 <= _GEN_113;
      end
    end else begin
      freeList_35 <= _GEN_113;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_36 <= 6'h25; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h24 == freePtr_1_value) begin
        freeList_36 <= io_freePhyReg_1;
      end else begin
        freeList_36 <= _GEN_114;
      end
    end else begin
      freeList_36 <= _GEN_114;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_37 <= 6'h26; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h25 == freePtr_1_value) begin
        freeList_37 <= io_freePhyReg_1;
      end else begin
        freeList_37 <= _GEN_115;
      end
    end else begin
      freeList_37 <= _GEN_115;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_38 <= 6'h27; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h26 == freePtr_1_value) begin
        freeList_38 <= io_freePhyReg_1;
      end else begin
        freeList_38 <= _GEN_116;
      end
    end else begin
      freeList_38 <= _GEN_116;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_39 <= 6'h28; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h27 == freePtr_1_value) begin
        freeList_39 <= io_freePhyReg_1;
      end else begin
        freeList_39 <= _GEN_117;
      end
    end else begin
      freeList_39 <= _GEN_117;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_40 <= 6'h29; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h28 == freePtr_1_value) begin
        freeList_40 <= io_freePhyReg_1;
      end else begin
        freeList_40 <= _GEN_118;
      end
    end else begin
      freeList_40 <= _GEN_118;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_41 <= 6'h2a; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h29 == freePtr_1_value) begin
        freeList_41 <= io_freePhyReg_1;
      end else begin
        freeList_41 <= _GEN_119;
      end
    end else begin
      freeList_41 <= _GEN_119;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_42 <= 6'h2b; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2a == freePtr_1_value) begin
        freeList_42 <= io_freePhyReg_1;
      end else begin
        freeList_42 <= _GEN_120;
      end
    end else begin
      freeList_42 <= _GEN_120;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_43 <= 6'h2c; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2b == freePtr_1_value) begin
        freeList_43 <= io_freePhyReg_1;
      end else begin
        freeList_43 <= _GEN_121;
      end
    end else begin
      freeList_43 <= _GEN_121;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_44 <= 6'h2d; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2c == freePtr_1_value) begin
        freeList_44 <= io_freePhyReg_1;
      end else begin
        freeList_44 <= _GEN_122;
      end
    end else begin
      freeList_44 <= _GEN_122;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_45 <= 6'h2e; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2d == freePtr_1_value) begin
        freeList_45 <= io_freePhyReg_1;
      end else begin
        freeList_45 <= _GEN_123;
      end
    end else begin
      freeList_45 <= _GEN_123;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_46 <= 6'h2f; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2e == freePtr_1_value) begin
        freeList_46 <= io_freePhyReg_1;
      end else begin
        freeList_46 <= _GEN_124;
      end
    end else begin
      freeList_46 <= _GEN_124;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_47 <= 6'h30; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h2f == freePtr_1_value) begin
        freeList_47 <= io_freePhyReg_1;
      end else begin
        freeList_47 <= _GEN_125;
      end
    end else begin
      freeList_47 <= _GEN_125;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_48 <= 6'h31; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h30 == freePtr_1_value) begin
        freeList_48 <= io_freePhyReg_1;
      end else begin
        freeList_48 <= _GEN_126;
      end
    end else begin
      freeList_48 <= _GEN_126;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_49 <= 6'h32; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h31 == freePtr_1_value) begin
        freeList_49 <= io_freePhyReg_1;
      end else begin
        freeList_49 <= _GEN_127;
      end
    end else begin
      freeList_49 <= _GEN_127;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_50 <= 6'h33; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h32 == freePtr_1_value) begin
        freeList_50 <= io_freePhyReg_1;
      end else begin
        freeList_50 <= _GEN_128;
      end
    end else begin
      freeList_50 <= _GEN_128;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_51 <= 6'h34; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h33 == freePtr_1_value) begin
        freeList_51 <= io_freePhyReg_1;
      end else begin
        freeList_51 <= _GEN_129;
      end
    end else begin
      freeList_51 <= _GEN_129;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_52 <= 6'h35; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h34 == freePtr_1_value) begin
        freeList_52 <= io_freePhyReg_1;
      end else begin
        freeList_52 <= _GEN_130;
      end
    end else begin
      freeList_52 <= _GEN_130;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_53 <= 6'h36; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h35 == freePtr_1_value) begin
        freeList_53 <= io_freePhyReg_1;
      end else begin
        freeList_53 <= _GEN_131;
      end
    end else begin
      freeList_53 <= _GEN_131;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_54 <= 6'h37; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h36 == freePtr_1_value) begin
        freeList_54 <= io_freePhyReg_1;
      end else begin
        freeList_54 <= _GEN_132;
      end
    end else begin
      freeList_54 <= _GEN_132;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_55 <= 6'h38; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h37 == freePtr_1_value) begin
        freeList_55 <= io_freePhyReg_1;
      end else begin
        freeList_55 <= _GEN_133;
      end
    end else begin
      freeList_55 <= _GEN_133;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_56 <= 6'h39; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h38 == freePtr_1_value) begin
        freeList_56 <= io_freePhyReg_1;
      end else begin
        freeList_56 <= _GEN_134;
      end
    end else begin
      freeList_56 <= _GEN_134;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_57 <= 6'h3a; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h39 == freePtr_1_value) begin
        freeList_57 <= io_freePhyReg_1;
      end else begin
        freeList_57 <= _GEN_135;
      end
    end else begin
      freeList_57 <= _GEN_135;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_58 <= 6'h3b; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3a == freePtr_1_value) begin
        freeList_58 <= io_freePhyReg_1;
      end else begin
        freeList_58 <= _GEN_136;
      end
    end else begin
      freeList_58 <= _GEN_136;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_59 <= 6'h3c; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3b == freePtr_1_value) begin
        freeList_59 <= io_freePhyReg_1;
      end else begin
        freeList_59 <= _GEN_137;
      end
    end else begin
      freeList_59 <= _GEN_137;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_60 <= 6'h3d; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3c == freePtr_1_value) begin
        freeList_60 <= io_freePhyReg_1;
      end else begin
        freeList_60 <= _GEN_138;
      end
    end else begin
      freeList_60 <= _GEN_138;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_61 <= 6'h3e; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3d == freePtr_1_value) begin
        freeList_61 <= io_freePhyReg_1;
      end else begin
        freeList_61 <= _GEN_139;
      end
    end else begin
      freeList_61 <= _GEN_139;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_62 <= 6'h3f; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3e == freePtr_1_value) begin
        freeList_62 <= io_freePhyReg_1;
      end else begin
        freeList_62 <= _GEN_140;
      end
    end else begin
      freeList_62 <= _GEN_140;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MEFreeList.scala 69:26]
      freeList_63 <= 6'h0; // @[MEFreeList.scala 71:{31,31}]
    end else if (io_freeReq_1) begin
      if (6'h3f == freePtr_1_value) begin
        freeList_63 <= io_freePhyReg_1;
      end else begin
        freeList_63 <= _GEN_141;
      end
    end else begin
      freeList_63 <= _GEN_141;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 39:59]
      tailPtr_flag <= 1'h0;
    end else begin
      tailPtr_flag <= _tailPtrNext_new_ptr_T_2[6];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 39:59]
      tailPtr_value <= 6'h3f;
    end else begin
      tailPtr_value <= _tailPtrNext_new_ptr_T_2[5:0];
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
  headPtr_value = _RAND_4[5:0];
  _RAND_5 = {2{`RANDOM}};
  headPtrOH = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  archHeadPtr_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  archHeadPtr_value = _RAND_7[5:0];
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
  freeList_32 = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  freeList_33 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  freeList_34 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  freeList_35 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  freeList_36 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  freeList_37 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  freeList_38 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  freeList_39 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  freeList_40 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  freeList_41 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  freeList_42 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  freeList_43 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  freeList_44 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  freeList_45 = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  freeList_46 = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  freeList_47 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  freeList_48 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  freeList_49 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  freeList_50 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  freeList_51 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  freeList_52 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  freeList_53 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  freeList_54 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  freeList_55 = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  freeList_56 = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  freeList_57 = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  freeList_58 = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  freeList_59 = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  freeList_60 = _RAND_68[5:0];
  _RAND_69 = {1{`RANDOM}};
  freeList_61 = _RAND_69[5:0];
  _RAND_70 = {1{`RANDOM}};
  freeList_62 = _RAND_70[5:0];
  _RAND_71 = {1{`RANDOM}};
  freeList_63 = _RAND_71[5:0];
  _RAND_72 = {1{`RANDOM}};
  tailPtr_flag = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  tailPtr_value = _RAND_73[5:0];
  _RAND_74 = {1{`RANDOM}};
  freeRegCntReg = _RAND_74[6:0];
  _RAND_75 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_82[0:0];
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
    headPtr_value = 6'h0;
  end
  if (reset) begin
    headPtrOH = 64'h1;
  end
  if (reset) begin
    archHeadPtr_flag = 1'h0;
  end
  if (reset) begin
    archHeadPtr_value = 6'h0;
  end
  if (reset) begin
    freeList_0 = 6'h1;
  end
  if (reset) begin
    freeList_1 = 6'h2;
  end
  if (reset) begin
    freeList_2 = 6'h3;
  end
  if (reset) begin
    freeList_3 = 6'h4;
  end
  if (reset) begin
    freeList_4 = 6'h5;
  end
  if (reset) begin
    freeList_5 = 6'h6;
  end
  if (reset) begin
    freeList_6 = 6'h7;
  end
  if (reset) begin
    freeList_7 = 6'h8;
  end
  if (reset) begin
    freeList_8 = 6'h9;
  end
  if (reset) begin
    freeList_9 = 6'ha;
  end
  if (reset) begin
    freeList_10 = 6'hb;
  end
  if (reset) begin
    freeList_11 = 6'hc;
  end
  if (reset) begin
    freeList_12 = 6'hd;
  end
  if (reset) begin
    freeList_13 = 6'he;
  end
  if (reset) begin
    freeList_14 = 6'hf;
  end
  if (reset) begin
    freeList_15 = 6'h10;
  end
  if (reset) begin
    freeList_16 = 6'h11;
  end
  if (reset) begin
    freeList_17 = 6'h12;
  end
  if (reset) begin
    freeList_18 = 6'h13;
  end
  if (reset) begin
    freeList_19 = 6'h14;
  end
  if (reset) begin
    freeList_20 = 6'h15;
  end
  if (reset) begin
    freeList_21 = 6'h16;
  end
  if (reset) begin
    freeList_22 = 6'h17;
  end
  if (reset) begin
    freeList_23 = 6'h18;
  end
  if (reset) begin
    freeList_24 = 6'h19;
  end
  if (reset) begin
    freeList_25 = 6'h1a;
  end
  if (reset) begin
    freeList_26 = 6'h1b;
  end
  if (reset) begin
    freeList_27 = 6'h1c;
  end
  if (reset) begin
    freeList_28 = 6'h1d;
  end
  if (reset) begin
    freeList_29 = 6'h1e;
  end
  if (reset) begin
    freeList_30 = 6'h1f;
  end
  if (reset) begin
    freeList_31 = 6'h20;
  end
  if (reset) begin
    freeList_32 = 6'h21;
  end
  if (reset) begin
    freeList_33 = 6'h22;
  end
  if (reset) begin
    freeList_34 = 6'h23;
  end
  if (reset) begin
    freeList_35 = 6'h24;
  end
  if (reset) begin
    freeList_36 = 6'h25;
  end
  if (reset) begin
    freeList_37 = 6'h26;
  end
  if (reset) begin
    freeList_38 = 6'h27;
  end
  if (reset) begin
    freeList_39 = 6'h28;
  end
  if (reset) begin
    freeList_40 = 6'h29;
  end
  if (reset) begin
    freeList_41 = 6'h2a;
  end
  if (reset) begin
    freeList_42 = 6'h2b;
  end
  if (reset) begin
    freeList_43 = 6'h2c;
  end
  if (reset) begin
    freeList_44 = 6'h2d;
  end
  if (reset) begin
    freeList_45 = 6'h2e;
  end
  if (reset) begin
    freeList_46 = 6'h2f;
  end
  if (reset) begin
    freeList_47 = 6'h30;
  end
  if (reset) begin
    freeList_48 = 6'h31;
  end
  if (reset) begin
    freeList_49 = 6'h32;
  end
  if (reset) begin
    freeList_50 = 6'h33;
  end
  if (reset) begin
    freeList_51 = 6'h34;
  end
  if (reset) begin
    freeList_52 = 6'h35;
  end
  if (reset) begin
    freeList_53 = 6'h36;
  end
  if (reset) begin
    freeList_54 = 6'h37;
  end
  if (reset) begin
    freeList_55 = 6'h38;
  end
  if (reset) begin
    freeList_56 = 6'h39;
  end
  if (reset) begin
    freeList_57 = 6'h3a;
  end
  if (reset) begin
    freeList_58 = 6'h3b;
  end
  if (reset) begin
    freeList_59 = 6'h3c;
  end
  if (reset) begin
    freeList_60 = 6'h3d;
  end
  if (reset) begin
    freeList_61 = 6'h3e;
  end
  if (reset) begin
    freeList_62 = 6'h3f;
  end
  if (reset) begin
    freeList_63 = 6'h0;
  end
  if (reset) begin
    tailPtr_flag = 1'h0;
  end
  if (reset) begin
    tailPtr_value = 6'h3f;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

