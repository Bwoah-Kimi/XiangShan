module SinkB(
  output         io_bready,
  input          io_bvalid,
  input  [2:0]   io_bopcode,
  input  [1:0]   io_bparam,
  input  [2:0]   io_bsize,
  input  [35:0]  io_baddress,
  input  [255:0] io_bdata,
  input          io_task_ready,
  output         io_task_valid,
  output [6:0]   io_task_bits_set,
  output [21:0]  io_task_bits_tag,
  output [5:0]   io_task_bits_off,
  output [2:0]   io_task_bits_opcode,
  output [2:0]   io_task_bits_param,
  output [2:0]   io_task_bits_size,
  output         io_task_bits_needProbeAckData,
  input          io_msInfo_0_valid,
  input  [6:0]   io_msInfo_0_bits_set,
  input  [21:0]  io_msInfo_0_bits_reqTag,
  input          io_msInfo_0_bits_willFree,
  input          io_msInfo_0_bits_releaseNotSent,
  input  [21:0]  io_msInfo_0_bits_metaTag,
  input          io_msInfo_0_bits_nestB,
  input          io_msInfo_0_bits_mergeB,
  input          io_msInfo_1_valid,
  input  [6:0]   io_msInfo_1_bits_set,
  input  [21:0]  io_msInfo_1_bits_reqTag,
  input          io_msInfo_1_bits_willFree,
  input          io_msInfo_1_bits_releaseNotSent,
  input  [21:0]  io_msInfo_1_bits_metaTag,
  input          io_msInfo_1_bits_nestB,
  input          io_msInfo_1_bits_mergeB,
  input          io_msInfo_2_valid,
  input  [6:0]   io_msInfo_2_bits_set,
  input  [21:0]  io_msInfo_2_bits_reqTag,
  input          io_msInfo_2_bits_willFree,
  input          io_msInfo_2_bits_releaseNotSent,
  input  [21:0]  io_msInfo_2_bits_metaTag,
  input          io_msInfo_2_bits_nestB,
  input          io_msInfo_2_bits_mergeB,
  input          io_msInfo_3_valid,
  input  [6:0]   io_msInfo_3_bits_set,
  input  [21:0]  io_msInfo_3_bits_reqTag,
  input          io_msInfo_3_bits_willFree,
  input          io_msInfo_3_bits_releaseNotSent,
  input  [21:0]  io_msInfo_3_bits_metaTag,
  input          io_msInfo_3_bits_nestB,
  input          io_msInfo_3_bits_mergeB,
  input          io_msInfo_4_valid,
  input  [6:0]   io_msInfo_4_bits_set,
  input  [21:0]  io_msInfo_4_bits_reqTag,
  input          io_msInfo_4_bits_willFree,
  input          io_msInfo_4_bits_releaseNotSent,
  input  [21:0]  io_msInfo_4_bits_metaTag,
  input          io_msInfo_4_bits_nestB,
  input          io_msInfo_4_bits_mergeB,
  input          io_msInfo_5_valid,
  input  [6:0]   io_msInfo_5_bits_set,
  input  [21:0]  io_msInfo_5_bits_reqTag,
  input          io_msInfo_5_bits_willFree,
  input          io_msInfo_5_bits_releaseNotSent,
  input  [21:0]  io_msInfo_5_bits_metaTag,
  input          io_msInfo_5_bits_nestB,
  input          io_msInfo_5_bits_mergeB,
  input          io_msInfo_6_valid,
  input  [6:0]   io_msInfo_6_bits_set,
  input  [21:0]  io_msInfo_6_bits_reqTag,
  input          io_msInfo_6_bits_willFree,
  input          io_msInfo_6_bits_releaseNotSent,
  input  [21:0]  io_msInfo_6_bits_metaTag,
  input          io_msInfo_6_bits_nestB,
  input          io_msInfo_6_bits_mergeB,
  input          io_msInfo_7_valid,
  input  [6:0]   io_msInfo_7_bits_set,
  input  [21:0]  io_msInfo_7_bits_reqTag,
  input          io_msInfo_7_bits_willFree,
  input          io_msInfo_7_bits_releaseNotSent,
  input  [21:0]  io_msInfo_7_bits_metaTag,
  input          io_msInfo_7_bits_nestB,
  input          io_msInfo_7_bits_mergeB,
  input          io_msInfo_8_valid,
  input  [6:0]   io_msInfo_8_bits_set,
  input  [21:0]  io_msInfo_8_bits_reqTag,
  input          io_msInfo_8_bits_willFree,
  input          io_msInfo_8_bits_releaseNotSent,
  input  [21:0]  io_msInfo_8_bits_metaTag,
  input          io_msInfo_8_bits_nestB,
  input          io_msInfo_8_bits_mergeB,
  input          io_msInfo_9_valid,
  input  [6:0]   io_msInfo_9_bits_set,
  input  [21:0]  io_msInfo_9_bits_reqTag,
  input          io_msInfo_9_bits_willFree,
  input          io_msInfo_9_bits_releaseNotSent,
  input  [21:0]  io_msInfo_9_bits_metaTag,
  input          io_msInfo_9_bits_nestB,
  input          io_msInfo_9_bits_mergeB,
  input          io_msInfo_10_valid,
  input  [6:0]   io_msInfo_10_bits_set,
  input  [21:0]  io_msInfo_10_bits_reqTag,
  input          io_msInfo_10_bits_willFree,
  input          io_msInfo_10_bits_releaseNotSent,
  input  [21:0]  io_msInfo_10_bits_metaTag,
  input          io_msInfo_10_bits_nestB,
  input          io_msInfo_10_bits_mergeB,
  input          io_msInfo_11_valid,
  input  [6:0]   io_msInfo_11_bits_set,
  input  [21:0]  io_msInfo_11_bits_reqTag,
  input          io_msInfo_11_bits_willFree,
  input          io_msInfo_11_bits_releaseNotSent,
  input  [21:0]  io_msInfo_11_bits_metaTag,
  input          io_msInfo_11_bits_nestB,
  input          io_msInfo_11_bits_mergeB,
  input          io_msInfo_12_valid,
  input  [6:0]   io_msInfo_12_bits_set,
  input  [21:0]  io_msInfo_12_bits_reqTag,
  input          io_msInfo_12_bits_willFree,
  input          io_msInfo_12_bits_releaseNotSent,
  input  [21:0]  io_msInfo_12_bits_metaTag,
  input          io_msInfo_12_bits_nestB,
  input          io_msInfo_12_bits_mergeB,
  input          io_msInfo_13_valid,
  input  [6:0]   io_msInfo_13_bits_set,
  input  [21:0]  io_msInfo_13_bits_reqTag,
  input          io_msInfo_13_bits_willFree,
  input          io_msInfo_13_bits_releaseNotSent,
  input  [21:0]  io_msInfo_13_bits_metaTag,
  input          io_msInfo_13_bits_nestB,
  input          io_msInfo_13_bits_mergeB,
  input          io_msInfo_14_valid,
  input  [6:0]   io_msInfo_14_bits_set,
  input  [21:0]  io_msInfo_14_bits_reqTag,
  input          io_msInfo_14_bits_willFree,
  input          io_msInfo_14_bits_releaseNotSent,
  input  [21:0]  io_msInfo_14_bits_metaTag,
  input          io_msInfo_14_bits_nestB,
  input          io_msInfo_14_bits_mergeB,
  input          io_msInfo_15_valid,
  input  [6:0]   io_msInfo_15_bits_set,
  input  [21:0]  io_msInfo_15_bits_reqTag,
  input          io_msInfo_15_bits_willFree,
  input          io_msInfo_15_bits_releaseNotSent,
  input  [21:0]  io_msInfo_15_bits_metaTag,
  input          io_msInfo_15_bits_nestB,
  input          io_msInfo_15_bits_mergeB,
  output         io_bMergeTask_valid,
  output [7:0]   io_bMergeTask_bits_id,
  output [6:0]   io_bMergeTask_bits_task_set,
  output [21:0]  io_bMergeTask_bits_task_tag,
  output [5:0]   io_bMergeTask_bits_task_off,
  output [2:0]   io_bMergeTask_bits_task_param,
  output         io_bMergeTask_bits_task_needProbeAckData
);
  wire [28:0] task_task_tag_set = io_baddress[35:7]; // @[CoupledL2.scala 134:22]
  wire [21:0] task_task_tag_tag = task_task_tag_set[28:7]; // @[CoupledL2.scala 135:19]
  wire  _addrConflict_T_1 = io_msInfo_0_valid & io_msInfo_0_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_7 = io_msInfo_0_valid & io_msInfo_0_bits_set == task_task_tag_set[6:0] & io_msInfo_0_bits_reqTag
     == task_task_tag_tag & ~io_msInfo_0_bits_willFree & ~io_msInfo_0_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_9 = io_msInfo_1_valid & io_msInfo_1_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_15 = io_msInfo_1_valid & io_msInfo_1_bits_set == task_task_tag_set[6:0] &
    io_msInfo_1_bits_reqTag == task_task_tag_tag & ~io_msInfo_1_bits_willFree & ~io_msInfo_1_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_17 = io_msInfo_2_valid & io_msInfo_2_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_23 = io_msInfo_2_valid & io_msInfo_2_bits_set == task_task_tag_set[6:0] &
    io_msInfo_2_bits_reqTag == task_task_tag_tag & ~io_msInfo_2_bits_willFree & ~io_msInfo_2_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_25 = io_msInfo_3_valid & io_msInfo_3_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_31 = io_msInfo_3_valid & io_msInfo_3_bits_set == task_task_tag_set[6:0] &
    io_msInfo_3_bits_reqTag == task_task_tag_tag & ~io_msInfo_3_bits_willFree & ~io_msInfo_3_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_33 = io_msInfo_4_valid & io_msInfo_4_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_39 = io_msInfo_4_valid & io_msInfo_4_bits_set == task_task_tag_set[6:0] &
    io_msInfo_4_bits_reqTag == task_task_tag_tag & ~io_msInfo_4_bits_willFree & ~io_msInfo_4_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_41 = io_msInfo_5_valid & io_msInfo_5_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_47 = io_msInfo_5_valid & io_msInfo_5_bits_set == task_task_tag_set[6:0] &
    io_msInfo_5_bits_reqTag == task_task_tag_tag & ~io_msInfo_5_bits_willFree & ~io_msInfo_5_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_49 = io_msInfo_6_valid & io_msInfo_6_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_55 = io_msInfo_6_valid & io_msInfo_6_bits_set == task_task_tag_set[6:0] &
    io_msInfo_6_bits_reqTag == task_task_tag_tag & ~io_msInfo_6_bits_willFree & ~io_msInfo_6_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_57 = io_msInfo_7_valid & io_msInfo_7_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_63 = io_msInfo_7_valid & io_msInfo_7_bits_set == task_task_tag_set[6:0] &
    io_msInfo_7_bits_reqTag == task_task_tag_tag & ~io_msInfo_7_bits_willFree & ~io_msInfo_7_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_65 = io_msInfo_8_valid & io_msInfo_8_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_71 = io_msInfo_8_valid & io_msInfo_8_bits_set == task_task_tag_set[6:0] &
    io_msInfo_8_bits_reqTag == task_task_tag_tag & ~io_msInfo_8_bits_willFree & ~io_msInfo_8_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_73 = io_msInfo_9_valid & io_msInfo_9_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_79 = io_msInfo_9_valid & io_msInfo_9_bits_set == task_task_tag_set[6:0] &
    io_msInfo_9_bits_reqTag == task_task_tag_tag & ~io_msInfo_9_bits_willFree & ~io_msInfo_9_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_81 = io_msInfo_10_valid & io_msInfo_10_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_87 = io_msInfo_10_valid & io_msInfo_10_bits_set == task_task_tag_set[6:0] &
    io_msInfo_10_bits_reqTag == task_task_tag_tag & ~io_msInfo_10_bits_willFree & ~io_msInfo_10_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_89 = io_msInfo_11_valid & io_msInfo_11_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_95 = io_msInfo_11_valid & io_msInfo_11_bits_set == task_task_tag_set[6:0] &
    io_msInfo_11_bits_reqTag == task_task_tag_tag & ~io_msInfo_11_bits_willFree & ~io_msInfo_11_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_97 = io_msInfo_12_valid & io_msInfo_12_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_103 = io_msInfo_12_valid & io_msInfo_12_bits_set == task_task_tag_set[6:0] &
    io_msInfo_12_bits_reqTag == task_task_tag_tag & ~io_msInfo_12_bits_willFree & ~io_msInfo_12_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_105 = io_msInfo_13_valid & io_msInfo_13_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_111 = io_msInfo_13_valid & io_msInfo_13_bits_set == task_task_tag_set[6:0] &
    io_msInfo_13_bits_reqTag == task_task_tag_tag & ~io_msInfo_13_bits_willFree & ~io_msInfo_13_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_113 = io_msInfo_14_valid & io_msInfo_14_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_119 = io_msInfo_14_valid & io_msInfo_14_bits_set == task_task_tag_set[6:0] &
    io_msInfo_14_bits_reqTag == task_task_tag_tag & ~io_msInfo_14_bits_willFree & ~io_msInfo_14_bits_nestB; // @[SinkB.scala 78:90]
  wire  _addrConflict_T_121 = io_msInfo_15_valid & io_msInfo_15_bits_set == task_task_tag_set[6:0]; // @[SinkB.scala 78:13]
  wire  _addrConflict_T_127 = io_msInfo_15_valid & io_msInfo_15_bits_set == task_task_tag_set[6:0] &
    io_msInfo_15_bits_reqTag == task_task_tag_tag & ~io_msInfo_15_bits_willFree & ~io_msInfo_15_bits_nestB; // @[SinkB.scala 78:90]
  wire [7:0] addrConflict_lo = {_addrConflict_T_63,_addrConflict_T_55,_addrConflict_T_47,_addrConflict_T_39,
    _addrConflict_T_31,_addrConflict_T_23,_addrConflict_T_15,_addrConflict_T_7}; // @[SinkB.scala 79:6]
  wire [15:0] _addrConflict_T_128 = {_addrConflict_T_127,_addrConflict_T_119,_addrConflict_T_111,_addrConflict_T_103,
    _addrConflict_T_95,_addrConflict_T_87,_addrConflict_T_79,_addrConflict_T_71,addrConflict_lo}; // @[SinkB.scala 79:6]
  wire  addrConflict = |_addrConflict_T_128; // @[SinkB.scala 79:13]
  wire  _replaceConflictMask_T_3 = _addrConflict_T_1 & io_msInfo_0_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_6 = _addrConflict_T_1 & io_msInfo_0_bits_metaTag == task_task_tag_tag &
    io_msInfo_0_bits_releaseNotSent & ~io_msInfo_0_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_10 = _addrConflict_T_9 & io_msInfo_1_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_13 = _addrConflict_T_9 & io_msInfo_1_bits_metaTag == task_task_tag_tag &
    io_msInfo_1_bits_releaseNotSent & ~io_msInfo_1_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_17 = _addrConflict_T_17 & io_msInfo_2_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_20 = _addrConflict_T_17 & io_msInfo_2_bits_metaTag == task_task_tag_tag &
    io_msInfo_2_bits_releaseNotSent & ~io_msInfo_2_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_24 = _addrConflict_T_25 & io_msInfo_3_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_27 = _addrConflict_T_25 & io_msInfo_3_bits_metaTag == task_task_tag_tag &
    io_msInfo_3_bits_releaseNotSent & ~io_msInfo_3_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_31 = _addrConflict_T_33 & io_msInfo_4_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_34 = _addrConflict_T_33 & io_msInfo_4_bits_metaTag == task_task_tag_tag &
    io_msInfo_4_bits_releaseNotSent & ~io_msInfo_4_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_38 = _addrConflict_T_41 & io_msInfo_5_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_41 = _addrConflict_T_41 & io_msInfo_5_bits_metaTag == task_task_tag_tag &
    io_msInfo_5_bits_releaseNotSent & ~io_msInfo_5_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_45 = _addrConflict_T_49 & io_msInfo_6_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_48 = _addrConflict_T_49 & io_msInfo_6_bits_metaTag == task_task_tag_tag &
    io_msInfo_6_bits_releaseNotSent & ~io_msInfo_6_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_52 = _addrConflict_T_57 & io_msInfo_7_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_55 = _addrConflict_T_57 & io_msInfo_7_bits_metaTag == task_task_tag_tag &
    io_msInfo_7_bits_releaseNotSent & ~io_msInfo_7_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_59 = _addrConflict_T_65 & io_msInfo_8_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_62 = _addrConflict_T_65 & io_msInfo_8_bits_metaTag == task_task_tag_tag &
    io_msInfo_8_bits_releaseNotSent & ~io_msInfo_8_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_66 = _addrConflict_T_73 & io_msInfo_9_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_69 = _addrConflict_T_73 & io_msInfo_9_bits_metaTag == task_task_tag_tag &
    io_msInfo_9_bits_releaseNotSent & ~io_msInfo_9_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_73 = _addrConflict_T_81 & io_msInfo_10_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_76 = _addrConflict_T_81 & io_msInfo_10_bits_metaTag == task_task_tag_tag &
    io_msInfo_10_bits_releaseNotSent & ~io_msInfo_10_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_80 = _addrConflict_T_89 & io_msInfo_11_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_83 = _addrConflict_T_89 & io_msInfo_11_bits_metaTag == task_task_tag_tag &
    io_msInfo_11_bits_releaseNotSent & ~io_msInfo_11_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_87 = _addrConflict_T_97 & io_msInfo_12_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_90 = _addrConflict_T_97 & io_msInfo_12_bits_metaTag == task_task_tag_tag &
    io_msInfo_12_bits_releaseNotSent & ~io_msInfo_12_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_94 = _addrConflict_T_105 & io_msInfo_13_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_97 = _addrConflict_T_105 & io_msInfo_13_bits_metaTag == task_task_tag_tag &
    io_msInfo_13_bits_releaseNotSent & ~io_msInfo_13_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_101 = _addrConflict_T_113 & io_msInfo_14_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_104 = _addrConflict_T_113 & io_msInfo_14_bits_metaTag == task_task_tag_tag &
    io_msInfo_14_bits_releaseNotSent & ~io_msInfo_14_bits_mergeB; // @[SinkB.scala 83:96]
  wire  _replaceConflictMask_T_108 = _addrConflict_T_121 & io_msInfo_15_bits_metaTag == task_task_tag_tag; // @[SinkB.scala 83:40]
  wire  _replaceConflictMask_T_111 = _addrConflict_T_121 & io_msInfo_15_bits_metaTag == task_task_tag_tag &
    io_msInfo_15_bits_releaseNotSent & ~io_msInfo_15_bits_mergeB; // @[SinkB.scala 83:96]
  wire [7:0] replaceConflictMask_lo = {_replaceConflictMask_T_55,_replaceConflictMask_T_48,_replaceConflictMask_T_41,
    _replaceConflictMask_T_34,_replaceConflictMask_T_27,_replaceConflictMask_T_20,_replaceConflictMask_T_13,
    _replaceConflictMask_T_6}; // @[SinkB.scala 84:6]
  wire [15:0] replaceConflictMask = {_replaceConflictMask_T_111,_replaceConflictMask_T_104,_replaceConflictMask_T_97,
    _replaceConflictMask_T_90,_replaceConflictMask_T_83,_replaceConflictMask_T_76,_replaceConflictMask_T_69,
    _replaceConflictMask_T_62,replaceConflictMask_lo}; // @[SinkB.scala 84:6]
  wire  replaceConflict = |replaceConflictMask; // @[SinkB.scala 85:45]
  wire  _mergeBMask_T_4 = _replaceConflictMask_T_3 & io_msInfo_0_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_9 = _replaceConflictMask_T_10 & io_msInfo_1_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_14 = _replaceConflictMask_T_17 & io_msInfo_2_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_19 = _replaceConflictMask_T_24 & io_msInfo_3_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_24 = _replaceConflictMask_T_31 & io_msInfo_4_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_29 = _replaceConflictMask_T_38 & io_msInfo_5_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_34 = _replaceConflictMask_T_45 & io_msInfo_6_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_39 = _replaceConflictMask_T_52 & io_msInfo_7_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_44 = _replaceConflictMask_T_59 & io_msInfo_8_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_49 = _replaceConflictMask_T_66 & io_msInfo_9_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_54 = _replaceConflictMask_T_73 & io_msInfo_10_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_59 = _replaceConflictMask_T_80 & io_msInfo_11_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_64 = _replaceConflictMask_T_87 & io_msInfo_12_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_69 = _replaceConflictMask_T_94 & io_msInfo_13_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_74 = _replaceConflictMask_T_101 & io_msInfo_14_bits_mergeB; // @[SinkB.scala 89:71]
  wire  _mergeBMask_T_79 = _replaceConflictMask_T_108 & io_msInfo_15_bits_mergeB; // @[SinkB.scala 89:71]
  wire [7:0] mergeBMask_lo = {_mergeBMask_T_39,_mergeBMask_T_34,_mergeBMask_T_29,_mergeBMask_T_24,_mergeBMask_T_19,
    _mergeBMask_T_14,_mergeBMask_T_9,_mergeBMask_T_4}; // @[SinkB.scala 90:6]
  wire [15:0] mergeBMask = {_mergeBMask_T_79,_mergeBMask_T_74,_mergeBMask_T_69,_mergeBMask_T_64,_mergeBMask_T_59,
    _mergeBMask_T_54,_mergeBMask_T_49,_mergeBMask_T_44,mergeBMask_lo}; // @[SinkB.scala 90:6]
  wire [2:0] task_param = {{1'd0}, io_bparam}; // @[SinkB.scala 43:20 51:16]
  wire  mergeB = |mergeBMask & task_param == 3'h2; // @[SinkB.scala 95:31]
  wire [7:0] mergeBId_hi = mergeBMask[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] mergeBId_lo = mergeBMask[7:0]; // @[OneHot.scala 31:18]
  wire  _mergeBId_T = |mergeBId_hi; // @[OneHot.scala 32:14]
  wire [7:0] _mergeBId_T_1 = mergeBId_hi | mergeBId_lo; // @[OneHot.scala 32:28]
  wire [3:0] mergeBId_hi_1 = _mergeBId_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] mergeBId_lo_1 = _mergeBId_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _mergeBId_T_2 = |mergeBId_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _mergeBId_T_3 = mergeBId_hi_1 | mergeBId_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] mergeBId_hi_2 = _mergeBId_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] mergeBId_lo_2 = _mergeBId_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _mergeBId_T_4 = |mergeBId_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _mergeBId_T_5 = mergeBId_hi_2 | mergeBId_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] mergeBId = {_mergeBId_T,_mergeBId_T_2,_mergeBId_T_4,_mergeBId_T_5[1]}; // @[Cat.scala 31:58]
  wire  _io_task_valid_T = ~addrConflict; // @[SinkB.scala 100:34]
  wire  _io_task_valid_T_2 = ~replaceConflict; // @[SinkB.scala 100:51]
  assign io_bready = mergeB | io_task_ready & _io_task_valid_T & _io_task_valid_T_2; // @[SinkB.scala 102:25]
  assign io_task_valid = io_bvalid & ~addrConflict & ~replaceConflict & ~mergeB; // @[SinkB.scala 100:68]
  assign io_task_bits_set = task_task_tag_set[6:0]; // @[CoupledL2.scala 136:30]
  assign io_task_bits_tag = task_task_tag_set[28:7]; // @[CoupledL2.scala 135:19]
  assign io_task_bits_off = io_baddress[5:0]; // @[CoupledL2.scala 136:54]
  assign io_task_bits_opcode = io_bopcode; // @[SinkB.scala 43:20 50:17]
  assign io_task_bits_param = {{1'd0}, io_bparam}; // @[SinkB.scala 43:20 51:16]
  assign io_task_bits_size = io_bsize; // @[SinkB.scala 43:20 52:15]
  assign io_task_bits_needProbeAckData = io_bdata[0]; // @[SinkB.scala 55:36]
  assign io_bMergeTask_valid = io_bvalid & mergeB; // @[SinkB.scala 104:37]
  assign io_bMergeTask_bits_id = {{4'd0}, mergeBId}; // @[SinkB.scala 105:25]
  assign io_bMergeTask_bits_task_set = task_task_tag_set[6:0]; // @[CoupledL2.scala 136:30]
  assign io_bMergeTask_bits_task_tag = task_task_tag_set[28:7]; // @[CoupledL2.scala 135:19]
  assign io_bMergeTask_bits_task_off = io_baddress[5:0]; // @[CoupledL2.scala 136:54]
  assign io_bMergeTask_bits_task_param = {{1'd0}, io_bparam}; // @[SinkB.scala 43:20 51:16]
  assign io_bMergeTask_bits_task_needProbeAckData = io_bdata[0]; // @[SinkB.scala 55:36]
endmodule

