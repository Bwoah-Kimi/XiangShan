module SnapshotGenerator_1(
  input        clock,
  input        reset,
  input        io_enq,
  input  [5:0] io_enqData_0_0,
  input  [5:0] io_enqData_0_1,
  input  [5:0] io_enqData_0_2,
  input  [5:0] io_enqData_0_3,
  input  [5:0] io_enqData_0_4,
  input  [5:0] io_enqData_0_5,
  input  [5:0] io_enqData_0_6,
  input  [5:0] io_enqData_0_7,
  input  [5:0] io_enqData_0_8,
  input  [5:0] io_enqData_0_9,
  input  [5:0] io_enqData_0_10,
  input  [5:0] io_enqData_0_11,
  input  [5:0] io_enqData_0_12,
  input  [5:0] io_enqData_0_13,
  input  [5:0] io_enqData_0_14,
  input  [5:0] io_enqData_0_15,
  input  [5:0] io_enqData_0_16,
  input  [5:0] io_enqData_0_17,
  input  [5:0] io_enqData_0_18,
  input  [5:0] io_enqData_0_19,
  input  [5:0] io_enqData_0_20,
  input  [5:0] io_enqData_0_21,
  input  [5:0] io_enqData_0_22,
  input  [5:0] io_enqData_0_23,
  input  [5:0] io_enqData_0_24,
  input  [5:0] io_enqData_0_25,
  input  [5:0] io_enqData_0_26,
  input  [5:0] io_enqData_0_27,
  input  [5:0] io_enqData_0_28,
  input  [5:0] io_enqData_0_29,
  input  [5:0] io_enqData_0_30,
  input  [5:0] io_enqData_0_31,
  input        io_deq,
  input        io_flush,
  output [5:0] io_snapshots_0_0,
  output [5:0] io_snapshots_0_1,
  output [5:0] io_snapshots_0_2,
  output [5:0] io_snapshots_0_3,
  output [5:0] io_snapshots_0_4,
  output [5:0] io_snapshots_0_5,
  output [5:0] io_snapshots_0_6,
  output [5:0] io_snapshots_0_7,
  output [5:0] io_snapshots_0_8,
  output [5:0] io_snapshots_0_9,
  output [5:0] io_snapshots_0_10,
  output [5:0] io_snapshots_0_11,
  output [5:0] io_snapshots_0_12,
  output [5:0] io_snapshots_0_13,
  output [5:0] io_snapshots_0_14,
  output [5:0] io_snapshots_0_15,
  output [5:0] io_snapshots_0_16,
  output [5:0] io_snapshots_0_17,
  output [5:0] io_snapshots_0_18,
  output [5:0] io_snapshots_0_19,
  output [5:0] io_snapshots_0_20,
  output [5:0] io_snapshots_0_21,
  output [5:0] io_snapshots_0_22,
  output [5:0] io_snapshots_0_23,
  output [5:0] io_snapshots_0_24,
  output [5:0] io_snapshots_0_25,
  output [5:0] io_snapshots_0_26,
  output [5:0] io_snapshots_0_27,
  output [5:0] io_snapshots_0_28,
  output [5:0] io_snapshots_0_29,
  output [5:0] io_snapshots_0_30,
  output [5:0] io_snapshots_0_31,
  output [5:0] io_snapshots_1_0,
  output [5:0] io_snapshots_1_1,
  output [5:0] io_snapshots_1_2,
  output [5:0] io_snapshots_1_3,
  output [5:0] io_snapshots_1_4,
  output [5:0] io_snapshots_1_5,
  output [5:0] io_snapshots_1_6,
  output [5:0] io_snapshots_1_7,
  output [5:0] io_snapshots_1_8,
  output [5:0] io_snapshots_1_9,
  output [5:0] io_snapshots_1_10,
  output [5:0] io_snapshots_1_11,
  output [5:0] io_snapshots_1_12,
  output [5:0] io_snapshots_1_13,
  output [5:0] io_snapshots_1_14,
  output [5:0] io_snapshots_1_15,
  output [5:0] io_snapshots_1_16,
  output [5:0] io_snapshots_1_17,
  output [5:0] io_snapshots_1_18,
  output [5:0] io_snapshots_1_19,
  output [5:0] io_snapshots_1_20,
  output [5:0] io_snapshots_1_21,
  output [5:0] io_snapshots_1_22,
  output [5:0] io_snapshots_1_23,
  output [5:0] io_snapshots_1_24,
  output [5:0] io_snapshots_1_25,
  output [5:0] io_snapshots_1_26,
  output [5:0] io_snapshots_1_27,
  output [5:0] io_snapshots_1_28,
  output [5:0] io_snapshots_1_29,
  output [5:0] io_snapshots_1_30,
  output [5:0] io_snapshots_1_31,
  output [5:0] io_snapshots_2_0,
  output [5:0] io_snapshots_2_1,
  output [5:0] io_snapshots_2_2,
  output [5:0] io_snapshots_2_3,
  output [5:0] io_snapshots_2_4,
  output [5:0] io_snapshots_2_5,
  output [5:0] io_snapshots_2_6,
  output [5:0] io_snapshots_2_7,
  output [5:0] io_snapshots_2_8,
  output [5:0] io_snapshots_2_9,
  output [5:0] io_snapshots_2_10,
  output [5:0] io_snapshots_2_11,
  output [5:0] io_snapshots_2_12,
  output [5:0] io_snapshots_2_13,
  output [5:0] io_snapshots_2_14,
  output [5:0] io_snapshots_2_15,
  output [5:0] io_snapshots_2_16,
  output [5:0] io_snapshots_2_17,
  output [5:0] io_snapshots_2_18,
  output [5:0] io_snapshots_2_19,
  output [5:0] io_snapshots_2_20,
  output [5:0] io_snapshots_2_21,
  output [5:0] io_snapshots_2_22,
  output [5:0] io_snapshots_2_23,
  output [5:0] io_snapshots_2_24,
  output [5:0] io_snapshots_2_25,
  output [5:0] io_snapshots_2_26,
  output [5:0] io_snapshots_2_27,
  output [5:0] io_snapshots_2_28,
  output [5:0] io_snapshots_2_29,
  output [5:0] io_snapshots_2_30,
  output [5:0] io_snapshots_2_31,
  output [5:0] io_snapshots_3_0,
  output [5:0] io_snapshots_3_1,
  output [5:0] io_snapshots_3_2,
  output [5:0] io_snapshots_3_3,
  output [5:0] io_snapshots_3_4,
  output [5:0] io_snapshots_3_5,
  output [5:0] io_snapshots_3_6,
  output [5:0] io_snapshots_3_7,
  output [5:0] io_snapshots_3_8,
  output [5:0] io_snapshots_3_9,
  output [5:0] io_snapshots_3_10,
  output [5:0] io_snapshots_3_11,
  output [5:0] io_snapshots_3_12,
  output [5:0] io_snapshots_3_13,
  output [5:0] io_snapshots_3_14,
  output [5:0] io_snapshots_3_15,
  output [5:0] io_snapshots_3_16,
  output [5:0] io_snapshots_3_17,
  output [5:0] io_snapshots_3_18,
  output [5:0] io_snapshots_3_19,
  output [5:0] io_snapshots_3_20,
  output [5:0] io_snapshots_3_21,
  output [5:0] io_snapshots_3_22,
  output [5:0] io_snapshots_3_23,
  output [5:0] io_snapshots_3_24,
  output [5:0] io_snapshots_3_25,
  output [5:0] io_snapshots_3_26,
  output [5:0] io_snapshots_3_27,
  output [5:0] io_snapshots_3_28,
  output [5:0] io_snapshots_3_29,
  output [5:0] io_snapshots_3_30,
  output [5:0] io_snapshots_3_31
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
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] snapshots_0_0; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_1; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_2; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_3; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_4; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_5; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_6; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_7; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_8; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_9; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_10; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_11; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_12; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_13; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_14; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_15; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_16; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_17; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_18; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_19; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_20; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_21; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_22; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_23; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_24; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_25; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_26; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_27; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_28; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_29; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_30; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_0_31; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_0; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_1; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_2; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_3; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_4; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_5; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_6; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_7; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_8; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_9; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_10; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_11; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_12; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_13; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_14; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_15; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_16; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_17; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_18; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_19; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_20; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_21; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_22; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_23; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_24; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_25; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_26; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_27; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_28; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_29; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_30; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_1_31; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_0; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_1; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_2; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_3; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_4; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_5; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_6; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_7; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_8; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_9; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_10; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_11; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_12; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_13; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_14; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_15; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_16; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_17; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_18; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_19; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_20; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_21; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_22; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_23; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_24; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_25; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_26; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_27; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_28; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_29; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_30; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_2_31; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_0; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_1; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_2; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_3; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_4; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_5; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_6; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_7; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_8; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_9; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_10; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_11; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_12; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_13; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_14; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_15; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_16; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_17; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_18; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_19; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_20; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_21; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_22; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_23; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_24; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_25; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_26; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_27; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_28; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_29; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_30; // @[CtrlBlock.scala 74:22]
  reg [5:0] snapshots_3_31; // @[CtrlBlock.scala 74:22]
  reg  snptEnqPtr_flag; // @[CtrlBlock.scala 75:27]
  reg [1:0] snptEnqPtr_value; // @[CtrlBlock.scala 75:27]
  reg  snptDeqPtr_flag; // @[CtrlBlock.scala 76:27]
  reg [1:0] snptDeqPtr_value; // @[CtrlBlock.scala 76:27]
  wire  _T_2 = snptEnqPtr_flag != snptDeqPtr_flag & snptEnqPtr_value == snptDeqPtr_value; // @[CircularQueuePtr.scala 99:37]
  wire [2:0] _snptEnqPtr_new_ptr_T = {snptEnqPtr_flag,snptEnqPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _snptEnqPtr_new_ptr_T_2 = _snptEnqPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] snptEnqPtr_new_ptr_value = _snptEnqPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  snptEnqPtr_new_ptr_flag = _snptEnqPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  wire [2:0] _snptDeqPtr_new_ptr_T = {snptDeqPtr_flag,snptDeqPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _snptDeqPtr_new_ptr_T_2 = _snptDeqPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] snptDeqPtr_new_ptr_value = _snptDeqPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  snptDeqPtr_new_ptr_flag = _snptDeqPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  assign io_snapshots_0_0 = snapshots_0_0; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_1 = snapshots_0_1; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_2 = snapshots_0_2; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_3 = snapshots_0_3; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_4 = snapshots_0_4; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_5 = snapshots_0_5; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_6 = snapshots_0_6; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_7 = snapshots_0_7; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_8 = snapshots_0_8; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_9 = snapshots_0_9; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_10 = snapshots_0_10; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_11 = snapshots_0_11; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_12 = snapshots_0_12; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_13 = snapshots_0_13; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_14 = snapshots_0_14; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_15 = snapshots_0_15; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_16 = snapshots_0_16; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_17 = snapshots_0_17; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_18 = snapshots_0_18; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_19 = snapshots_0_19; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_20 = snapshots_0_20; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_21 = snapshots_0_21; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_22 = snapshots_0_22; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_23 = snapshots_0_23; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_24 = snapshots_0_24; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_25 = snapshots_0_25; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_26 = snapshots_0_26; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_27 = snapshots_0_27; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_28 = snapshots_0_28; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_29 = snapshots_0_29; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_30 = snapshots_0_30; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_31 = snapshots_0_31; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_0 = snapshots_1_0; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_1 = snapshots_1_1; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_2 = snapshots_1_2; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_3 = snapshots_1_3; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_4 = snapshots_1_4; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_5 = snapshots_1_5; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_6 = snapshots_1_6; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_7 = snapshots_1_7; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_8 = snapshots_1_8; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_9 = snapshots_1_9; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_10 = snapshots_1_10; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_11 = snapshots_1_11; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_12 = snapshots_1_12; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_13 = snapshots_1_13; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_14 = snapshots_1_14; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_15 = snapshots_1_15; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_16 = snapshots_1_16; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_17 = snapshots_1_17; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_18 = snapshots_1_18; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_19 = snapshots_1_19; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_20 = snapshots_1_20; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_21 = snapshots_1_21; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_22 = snapshots_1_22; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_23 = snapshots_1_23; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_24 = snapshots_1_24; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_25 = snapshots_1_25; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_26 = snapshots_1_26; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_27 = snapshots_1_27; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_28 = snapshots_1_28; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_29 = snapshots_1_29; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_30 = snapshots_1_30; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_31 = snapshots_1_31; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_0 = snapshots_2_0; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_1 = snapshots_2_1; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_2 = snapshots_2_2; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_3 = snapshots_2_3; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_4 = snapshots_2_4; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_5 = snapshots_2_5; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_6 = snapshots_2_6; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_7 = snapshots_2_7; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_8 = snapshots_2_8; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_9 = snapshots_2_9; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_10 = snapshots_2_10; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_11 = snapshots_2_11; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_12 = snapshots_2_12; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_13 = snapshots_2_13; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_14 = snapshots_2_14; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_15 = snapshots_2_15; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_16 = snapshots_2_16; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_17 = snapshots_2_17; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_18 = snapshots_2_18; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_19 = snapshots_2_19; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_20 = snapshots_2_20; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_21 = snapshots_2_21; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_22 = snapshots_2_22; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_23 = snapshots_2_23; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_24 = snapshots_2_24; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_25 = snapshots_2_25; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_26 = snapshots_2_26; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_27 = snapshots_2_27; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_28 = snapshots_2_28; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_29 = snapshots_2_29; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_30 = snapshots_2_30; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_31 = snapshots_2_31; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_0 = snapshots_3_0; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_1 = snapshots_3_1; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_2 = snapshots_3_2; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_3 = snapshots_3_3; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_4 = snapshots_3_4; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_5 = snapshots_3_5; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_6 = snapshots_3_6; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_7 = snapshots_3_7; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_8 = snapshots_3_8; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_9 = snapshots_3_9; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_10 = snapshots_3_10; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_11 = snapshots_3_11; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_12 = snapshots_3_12; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_13 = snapshots_3_13; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_14 = snapshots_3_14; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_15 = snapshots_3_15; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_16 = snapshots_3_16; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_17 = snapshots_3_17; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_18 = snapshots_3_18; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_19 = snapshots_3_19; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_20 = snapshots_3_20; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_21 = snapshots_3_21; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_22 = snapshots_3_22; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_23 = snapshots_3_23; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_24 = snapshots_3_24; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_25 = snapshots_3_25; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_26 = snapshots_3_26; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_27 = snapshots_3_27; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_28 = snapshots_3_28; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_29 = snapshots_3_29; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_30 = snapshots_3_30; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_31 = snapshots_3_31; // @[CtrlBlock.scala 79:16]
  always @(posedge clock) begin
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_0 <= io_enqData_0_0; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_1 <= io_enqData_0_1; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_2 <= io_enqData_0_2; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_3 <= io_enqData_0_3; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_4 <= io_enqData_0_4; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_5 <= io_enqData_0_5; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_6 <= io_enqData_0_6; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_7 <= io_enqData_0_7; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_8 <= io_enqData_0_8; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_9 <= io_enqData_0_9; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_10 <= io_enqData_0_10; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_11 <= io_enqData_0_11; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_12 <= io_enqData_0_12; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_13 <= io_enqData_0_13; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_14 <= io_enqData_0_14; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_15 <= io_enqData_0_15; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_16 <= io_enqData_0_16; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_17 <= io_enqData_0_17; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_18 <= io_enqData_0_18; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_19 <= io_enqData_0_19; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_20 <= io_enqData_0_20; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_21 <= io_enqData_0_21; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_22 <= io_enqData_0_22; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_23 <= io_enqData_0_23; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_24 <= io_enqData_0_24; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_25 <= io_enqData_0_25; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_26 <= io_enqData_0_26; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_27 <= io_enqData_0_27; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_28 <= io_enqData_0_28; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_29 <= io_enqData_0_29; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_30 <= io_enqData_0_30; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_31 <= io_enqData_0_31; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_0 <= io_enqData_0_0; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_1 <= io_enqData_0_1; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_2 <= io_enqData_0_2; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_3 <= io_enqData_0_3; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_4 <= io_enqData_0_4; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_5 <= io_enqData_0_5; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_6 <= io_enqData_0_6; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_7 <= io_enqData_0_7; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_8 <= io_enqData_0_8; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_9 <= io_enqData_0_9; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_10 <= io_enqData_0_10; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_11 <= io_enqData_0_11; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_12 <= io_enqData_0_12; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_13 <= io_enqData_0_13; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_14 <= io_enqData_0_14; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_15 <= io_enqData_0_15; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_16 <= io_enqData_0_16; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_17 <= io_enqData_0_17; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_18 <= io_enqData_0_18; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_19 <= io_enqData_0_19; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_20 <= io_enqData_0_20; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_21 <= io_enqData_0_21; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_22 <= io_enqData_0_22; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_23 <= io_enqData_0_23; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_24 <= io_enqData_0_24; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_25 <= io_enqData_0_25; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_26 <= io_enqData_0_26; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_27 <= io_enqData_0_27; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_28 <= io_enqData_0_28; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_29 <= io_enqData_0_29; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_30 <= io_enqData_0_30; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_31 <= io_enqData_0_31; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_0 <= io_enqData_0_0; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_1 <= io_enqData_0_1; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_2 <= io_enqData_0_2; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_3 <= io_enqData_0_3; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_4 <= io_enqData_0_4; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_5 <= io_enqData_0_5; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_6 <= io_enqData_0_6; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_7 <= io_enqData_0_7; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_8 <= io_enqData_0_8; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_9 <= io_enqData_0_9; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_10 <= io_enqData_0_10; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_11 <= io_enqData_0_11; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_12 <= io_enqData_0_12; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_13 <= io_enqData_0_13; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_14 <= io_enqData_0_14; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_15 <= io_enqData_0_15; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_16 <= io_enqData_0_16; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_17 <= io_enqData_0_17; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_18 <= io_enqData_0_18; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_19 <= io_enqData_0_19; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_20 <= io_enqData_0_20; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_21 <= io_enqData_0_21; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_22 <= io_enqData_0_22; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_23 <= io_enqData_0_23; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_24 <= io_enqData_0_24; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_25 <= io_enqData_0_25; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_26 <= io_enqData_0_26; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_27 <= io_enqData_0_27; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_28 <= io_enqData_0_28; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_29 <= io_enqData_0_29; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_30 <= io_enqData_0_30; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_31 <= io_enqData_0_31; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_0 <= io_enqData_0_0; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_1 <= io_enqData_0_1; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_2 <= io_enqData_0_2; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_3 <= io_enqData_0_3; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_4 <= io_enqData_0_4; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_5 <= io_enqData_0_5; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_6 <= io_enqData_0_6; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_7 <= io_enqData_0_7; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_8 <= io_enqData_0_8; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_9 <= io_enqData_0_9; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_10 <= io_enqData_0_10; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_11 <= io_enqData_0_11; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_12 <= io_enqData_0_12; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_13 <= io_enqData_0_13; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_14 <= io_enqData_0_14; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_15 <= io_enqData_0_15; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_16 <= io_enqData_0_16; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_17 <= io_enqData_0_17; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_18 <= io_enqData_0_18; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_19 <= io_enqData_0_19; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_20 <= io_enqData_0_20; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_21 <= io_enqData_0_21; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_22 <= io_enqData_0_22; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_23 <= io_enqData_0_23; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_24 <= io_enqData_0_24; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_25 <= io_enqData_0_25; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_26 <= io_enqData_0_26; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_27 <= io_enqData_0_27; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_28 <= io_enqData_0_28; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_29 <= io_enqData_0_29; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_30 <= io_enqData_0_30; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_31 <= io_enqData_0_31; // @[CtrlBlock.scala 85:33]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptEnqPtr_flag <= 1'h0; // @[CtrlBlock.scala 96:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 84:51]
      snptEnqPtr_flag <= 1'h0; // @[CtrlBlock.scala 87:16]
    end else if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 75:27]
      snptEnqPtr_flag <= snptEnqPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptEnqPtr_value <= 2'h0; // @[CtrlBlock.scala 96:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 84:51]
      snptEnqPtr_value <= 2'h0; // @[CtrlBlock.scala 87:16]
    end else if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 75:27]
      snptEnqPtr_value <= snptEnqPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptDeqPtr_flag <= 1'h0; // @[CtrlBlock.scala 97:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 89:16]
      snptDeqPtr_flag <= 1'h0; // @[CtrlBlock.scala 91:16]
    end else if (io_deq) begin // @[CtrlBlock.scala 76:27]
      snptDeqPtr_flag <= snptDeqPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptDeqPtr_value <= 2'h0; // @[CtrlBlock.scala 97:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 89:16]
      snptDeqPtr_value <= 2'h0; // @[CtrlBlock.scala 91:16]
    end else if (io_deq) begin // @[CtrlBlock.scala 76:27]
      snptDeqPtr_value <= snptDeqPtr_new_ptr_value;
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
  snapshots_0_0 = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  snapshots_0_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  snapshots_0_2 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  snapshots_0_3 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  snapshots_0_4 = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  snapshots_0_5 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  snapshots_0_6 = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  snapshots_0_7 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  snapshots_0_8 = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  snapshots_0_9 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  snapshots_0_10 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  snapshots_0_11 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  snapshots_0_12 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  snapshots_0_13 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  snapshots_0_14 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  snapshots_0_15 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  snapshots_0_16 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  snapshots_0_17 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  snapshots_0_18 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  snapshots_0_19 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  snapshots_0_20 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  snapshots_0_21 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  snapshots_0_22 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  snapshots_0_23 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  snapshots_0_24 = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  snapshots_0_25 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  snapshots_0_26 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  snapshots_0_27 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  snapshots_0_28 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  snapshots_0_29 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  snapshots_0_30 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  snapshots_0_31 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  snapshots_1_0 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  snapshots_1_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  snapshots_1_2 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  snapshots_1_3 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  snapshots_1_4 = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  snapshots_1_5 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  snapshots_1_6 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  snapshots_1_7 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  snapshots_1_8 = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  snapshots_1_9 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  snapshots_1_10 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  snapshots_1_11 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  snapshots_1_12 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  snapshots_1_13 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  snapshots_1_14 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  snapshots_1_15 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  snapshots_1_16 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  snapshots_1_17 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  snapshots_1_18 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  snapshots_1_19 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  snapshots_1_20 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  snapshots_1_21 = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  snapshots_1_22 = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  snapshots_1_23 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  snapshots_1_24 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  snapshots_1_25 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  snapshots_1_26 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  snapshots_1_27 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  snapshots_1_28 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  snapshots_1_29 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  snapshots_1_30 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  snapshots_1_31 = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  snapshots_2_0 = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  snapshots_2_1 = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  snapshots_2_2 = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  snapshots_2_3 = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  snapshots_2_4 = _RAND_68[5:0];
  _RAND_69 = {1{`RANDOM}};
  snapshots_2_5 = _RAND_69[5:0];
  _RAND_70 = {1{`RANDOM}};
  snapshots_2_6 = _RAND_70[5:0];
  _RAND_71 = {1{`RANDOM}};
  snapshots_2_7 = _RAND_71[5:0];
  _RAND_72 = {1{`RANDOM}};
  snapshots_2_8 = _RAND_72[5:0];
  _RAND_73 = {1{`RANDOM}};
  snapshots_2_9 = _RAND_73[5:0];
  _RAND_74 = {1{`RANDOM}};
  snapshots_2_10 = _RAND_74[5:0];
  _RAND_75 = {1{`RANDOM}};
  snapshots_2_11 = _RAND_75[5:0];
  _RAND_76 = {1{`RANDOM}};
  snapshots_2_12 = _RAND_76[5:0];
  _RAND_77 = {1{`RANDOM}};
  snapshots_2_13 = _RAND_77[5:0];
  _RAND_78 = {1{`RANDOM}};
  snapshots_2_14 = _RAND_78[5:0];
  _RAND_79 = {1{`RANDOM}};
  snapshots_2_15 = _RAND_79[5:0];
  _RAND_80 = {1{`RANDOM}};
  snapshots_2_16 = _RAND_80[5:0];
  _RAND_81 = {1{`RANDOM}};
  snapshots_2_17 = _RAND_81[5:0];
  _RAND_82 = {1{`RANDOM}};
  snapshots_2_18 = _RAND_82[5:0];
  _RAND_83 = {1{`RANDOM}};
  snapshots_2_19 = _RAND_83[5:0];
  _RAND_84 = {1{`RANDOM}};
  snapshots_2_20 = _RAND_84[5:0];
  _RAND_85 = {1{`RANDOM}};
  snapshots_2_21 = _RAND_85[5:0];
  _RAND_86 = {1{`RANDOM}};
  snapshots_2_22 = _RAND_86[5:0];
  _RAND_87 = {1{`RANDOM}};
  snapshots_2_23 = _RAND_87[5:0];
  _RAND_88 = {1{`RANDOM}};
  snapshots_2_24 = _RAND_88[5:0];
  _RAND_89 = {1{`RANDOM}};
  snapshots_2_25 = _RAND_89[5:0];
  _RAND_90 = {1{`RANDOM}};
  snapshots_2_26 = _RAND_90[5:0];
  _RAND_91 = {1{`RANDOM}};
  snapshots_2_27 = _RAND_91[5:0];
  _RAND_92 = {1{`RANDOM}};
  snapshots_2_28 = _RAND_92[5:0];
  _RAND_93 = {1{`RANDOM}};
  snapshots_2_29 = _RAND_93[5:0];
  _RAND_94 = {1{`RANDOM}};
  snapshots_2_30 = _RAND_94[5:0];
  _RAND_95 = {1{`RANDOM}};
  snapshots_2_31 = _RAND_95[5:0];
  _RAND_96 = {1{`RANDOM}};
  snapshots_3_0 = _RAND_96[5:0];
  _RAND_97 = {1{`RANDOM}};
  snapshots_3_1 = _RAND_97[5:0];
  _RAND_98 = {1{`RANDOM}};
  snapshots_3_2 = _RAND_98[5:0];
  _RAND_99 = {1{`RANDOM}};
  snapshots_3_3 = _RAND_99[5:0];
  _RAND_100 = {1{`RANDOM}};
  snapshots_3_4 = _RAND_100[5:0];
  _RAND_101 = {1{`RANDOM}};
  snapshots_3_5 = _RAND_101[5:0];
  _RAND_102 = {1{`RANDOM}};
  snapshots_3_6 = _RAND_102[5:0];
  _RAND_103 = {1{`RANDOM}};
  snapshots_3_7 = _RAND_103[5:0];
  _RAND_104 = {1{`RANDOM}};
  snapshots_3_8 = _RAND_104[5:0];
  _RAND_105 = {1{`RANDOM}};
  snapshots_3_9 = _RAND_105[5:0];
  _RAND_106 = {1{`RANDOM}};
  snapshots_3_10 = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  snapshots_3_11 = _RAND_107[5:0];
  _RAND_108 = {1{`RANDOM}};
  snapshots_3_12 = _RAND_108[5:0];
  _RAND_109 = {1{`RANDOM}};
  snapshots_3_13 = _RAND_109[5:0];
  _RAND_110 = {1{`RANDOM}};
  snapshots_3_14 = _RAND_110[5:0];
  _RAND_111 = {1{`RANDOM}};
  snapshots_3_15 = _RAND_111[5:0];
  _RAND_112 = {1{`RANDOM}};
  snapshots_3_16 = _RAND_112[5:0];
  _RAND_113 = {1{`RANDOM}};
  snapshots_3_17 = _RAND_113[5:0];
  _RAND_114 = {1{`RANDOM}};
  snapshots_3_18 = _RAND_114[5:0];
  _RAND_115 = {1{`RANDOM}};
  snapshots_3_19 = _RAND_115[5:0];
  _RAND_116 = {1{`RANDOM}};
  snapshots_3_20 = _RAND_116[5:0];
  _RAND_117 = {1{`RANDOM}};
  snapshots_3_21 = _RAND_117[5:0];
  _RAND_118 = {1{`RANDOM}};
  snapshots_3_22 = _RAND_118[5:0];
  _RAND_119 = {1{`RANDOM}};
  snapshots_3_23 = _RAND_119[5:0];
  _RAND_120 = {1{`RANDOM}};
  snapshots_3_24 = _RAND_120[5:0];
  _RAND_121 = {1{`RANDOM}};
  snapshots_3_25 = _RAND_121[5:0];
  _RAND_122 = {1{`RANDOM}};
  snapshots_3_26 = _RAND_122[5:0];
  _RAND_123 = {1{`RANDOM}};
  snapshots_3_27 = _RAND_123[5:0];
  _RAND_124 = {1{`RANDOM}};
  snapshots_3_28 = _RAND_124[5:0];
  _RAND_125 = {1{`RANDOM}};
  snapshots_3_29 = _RAND_125[5:0];
  _RAND_126 = {1{`RANDOM}};
  snapshots_3_30 = _RAND_126[5:0];
  _RAND_127 = {1{`RANDOM}};
  snapshots_3_31 = _RAND_127[5:0];
  _RAND_128 = {1{`RANDOM}};
  snptEnqPtr_flag = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  snptEnqPtr_value = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  snptDeqPtr_flag = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  snptDeqPtr_value = _RAND_131[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    snptEnqPtr_flag = 1'h0;
  end
  if (reset) begin
    snptEnqPtr_value = 2'h0;
  end
  if (reset) begin
    snptDeqPtr_flag = 1'h0;
  end
  if (reset) begin
    snptDeqPtr_value = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

