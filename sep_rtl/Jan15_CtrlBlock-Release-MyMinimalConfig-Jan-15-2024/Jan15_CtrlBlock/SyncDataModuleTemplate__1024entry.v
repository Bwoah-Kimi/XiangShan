module SyncDataModuleTemplate__1024entry(
  input        clock,
  input  [9:0] io_raddr_0,
  input  [9:0] io_raddr_1,
  output       io_rdata_0,
  output       io_rdata_1,
  input        io_wen_0,
  input        io_wen_1,
  input  [9:0] io_waddr_0,
  input  [9:0] io_waddr_1,
  input        io_wdata_0,
  input        io_wdata_1
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
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_2_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_2_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_2_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_2_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_2_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_3_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_3_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_3_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_3_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_3_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_4_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_4_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_4_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_4_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_4_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_5_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_5_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_5_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_5_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_5_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_6_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_6_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_6_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_6_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_6_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_7_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_7_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_7_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_7_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_7_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_8_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_8_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_8_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_8_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_8_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_9_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_9_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_9_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_9_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_9_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_10_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_10_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_10_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_10_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_10_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_11_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_11_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_11_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_11_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_11_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_12_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_12_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_12_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_12_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_12_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_13_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_13_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_13_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_13_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_13_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_14_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_14_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_14_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_14_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_14_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_clock; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_15_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_15_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_15_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_15_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_15_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  reg [9:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup__0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup__1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1; // @[Reg.scala 16:16]
  reg  r; // @[Reg.scala 16:16]
  reg  r_1; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_1_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_1_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_1_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_1_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_1; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_1; // @[Reg.scala 16:16]
  reg  r_2; // @[Reg.scala 16:16]
  reg  r_3; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_2_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_2_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_2_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_2_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_2; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_2; // @[Reg.scala 16:16]
  reg  r_4; // @[Reg.scala 16:16]
  reg  r_5; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_3_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_3_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_3_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_3_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_3; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_3; // @[Reg.scala 16:16]
  reg  r_6; // @[Reg.scala 16:16]
  reg  r_7; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_4_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_4_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_4_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_4_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_4; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_4; // @[Reg.scala 16:16]
  reg  r_8; // @[Reg.scala 16:16]
  reg  r_9; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_5_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_5_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_5_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_5_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_5; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_5; // @[Reg.scala 16:16]
  reg  r_10; // @[Reg.scala 16:16]
  reg  r_11; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_6_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_6_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_6_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_6_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_6; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_6; // @[Reg.scala 16:16]
  reg  r_12; // @[Reg.scala 16:16]
  reg  r_13; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_7_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_7_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_7_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_7_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_7; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_7; // @[Reg.scala 16:16]
  reg  r_14; // @[Reg.scala 16:16]
  reg  r_15; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_8_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_8_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_8_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_8_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_8; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_8; // @[Reg.scala 16:16]
  reg  r_16; // @[Reg.scala 16:16]
  reg  r_17; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_9_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_9_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_9_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_9_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_9; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_9; // @[Reg.scala 16:16]
  reg  r_18; // @[Reg.scala 16:16]
  reg  r_19; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_10_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_10_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_10_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_10_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_10; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_10; // @[Reg.scala 16:16]
  reg  r_20; // @[Reg.scala 16:16]
  reg  r_21; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_11_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_11_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_11_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_11_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_11; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_11; // @[Reg.scala 16:16]
  reg  r_22; // @[Reg.scala 16:16]
  reg  r_23; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_12_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_12_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_12_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_12_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_12; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_12; // @[Reg.scala 16:16]
  reg  r_24; // @[Reg.scala 16:16]
  reg  r_25; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_13_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_13_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_13_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_13_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_13; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_13; // @[Reg.scala 16:16]
  reg  r_26; // @[Reg.scala 16:16]
  reg  r_27; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_14_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_14_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_14_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_14_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_14; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_14; // @[Reg.scala 16:16]
  reg  r_28; // @[Reg.scala 16:16]
  reg  r_29; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_15_0; // @[DataModuleTemplate.scala 123:28]
  reg [9:0] raddr_dup_15_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_15_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_15_1; // @[DataModuleTemplate.scala 124:26]
  reg [9:0] waddr_dup_0_15; // @[Reg.scala 16:16]
  reg [9:0] waddr_dup_1_15; // @[Reg.scala 16:16]
  reg  r_30; // @[Reg.scala 16:16]
  reg  r_31; // @[Reg.scala 16:16]
  reg [9:0] raddr_dup_16; // @[DataModuleTemplate.scala 145:28]
  wire [3:0] index_dec_shiftAmount = raddr_dup_16[9:6]; // @[DataModuleTemplate.scala 110:30]
  wire [15:0] index_dec = 16'h1 << index_dec_shiftAmount; // @[OneHot.scala 64:12]
  wire  _io_rdata_0_T_31 = index_dec[15] & dataBanks_15_io_rdata_0; // @[Mux.scala 27:73]
  reg [9:0] raddr_dup_17; // @[DataModuleTemplate.scala 145:28]
  wire [3:0] index_dec_shiftAmount_1 = raddr_dup_17[9:6]; // @[DataModuleTemplate.scala 110:30]
  wire [15:0] index_dec_1 = 16'h1 << index_dec_shiftAmount_1; // @[OneHot.scala 64:12]
  wire  _io_rdata_1_T_31 = index_dec_1[15] & dataBanks_15_io_rdata_1; // @[Mux.scala 27:73]
  NegedgeDataModule__64entry dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_rdata_0(dataBanks_0_io_rdata_0),
    .io_rdata_1(dataBanks_0_io_rdata_1),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_wen_1(dataBanks_0_io_wen_1),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_waddr_1(dataBanks_0_io_waddr_1),
    .io_wdata_0(dataBanks_0_io_wdata_0),
    .io_wdata_1(dataBanks_0_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_1 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_1_clock),
    .io_raddr_0(dataBanks_1_io_raddr_0),
    .io_raddr_1(dataBanks_1_io_raddr_1),
    .io_rdata_0(dataBanks_1_io_rdata_0),
    .io_rdata_1(dataBanks_1_io_rdata_1),
    .io_wen_0(dataBanks_1_io_wen_0),
    .io_wen_1(dataBanks_1_io_wen_1),
    .io_waddr_0(dataBanks_1_io_waddr_0),
    .io_waddr_1(dataBanks_1_io_waddr_1),
    .io_wdata_0(dataBanks_1_io_wdata_0),
    .io_wdata_1(dataBanks_1_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_2 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_2_clock),
    .io_raddr_0(dataBanks_2_io_raddr_0),
    .io_raddr_1(dataBanks_2_io_raddr_1),
    .io_rdata_0(dataBanks_2_io_rdata_0),
    .io_rdata_1(dataBanks_2_io_rdata_1),
    .io_wen_0(dataBanks_2_io_wen_0),
    .io_wen_1(dataBanks_2_io_wen_1),
    .io_waddr_0(dataBanks_2_io_waddr_0),
    .io_waddr_1(dataBanks_2_io_waddr_1),
    .io_wdata_0(dataBanks_2_io_wdata_0),
    .io_wdata_1(dataBanks_2_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_3 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_3_clock),
    .io_raddr_0(dataBanks_3_io_raddr_0),
    .io_raddr_1(dataBanks_3_io_raddr_1),
    .io_rdata_0(dataBanks_3_io_rdata_0),
    .io_rdata_1(dataBanks_3_io_rdata_1),
    .io_wen_0(dataBanks_3_io_wen_0),
    .io_wen_1(dataBanks_3_io_wen_1),
    .io_waddr_0(dataBanks_3_io_waddr_0),
    .io_waddr_1(dataBanks_3_io_waddr_1),
    .io_wdata_0(dataBanks_3_io_wdata_0),
    .io_wdata_1(dataBanks_3_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_4 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_4_clock),
    .io_raddr_0(dataBanks_4_io_raddr_0),
    .io_raddr_1(dataBanks_4_io_raddr_1),
    .io_rdata_0(dataBanks_4_io_rdata_0),
    .io_rdata_1(dataBanks_4_io_rdata_1),
    .io_wen_0(dataBanks_4_io_wen_0),
    .io_wen_1(dataBanks_4_io_wen_1),
    .io_waddr_0(dataBanks_4_io_waddr_0),
    .io_waddr_1(dataBanks_4_io_waddr_1),
    .io_wdata_0(dataBanks_4_io_wdata_0),
    .io_wdata_1(dataBanks_4_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_5 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_5_clock),
    .io_raddr_0(dataBanks_5_io_raddr_0),
    .io_raddr_1(dataBanks_5_io_raddr_1),
    .io_rdata_0(dataBanks_5_io_rdata_0),
    .io_rdata_1(dataBanks_5_io_rdata_1),
    .io_wen_0(dataBanks_5_io_wen_0),
    .io_wen_1(dataBanks_5_io_wen_1),
    .io_waddr_0(dataBanks_5_io_waddr_0),
    .io_waddr_1(dataBanks_5_io_waddr_1),
    .io_wdata_0(dataBanks_5_io_wdata_0),
    .io_wdata_1(dataBanks_5_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_6 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_6_clock),
    .io_raddr_0(dataBanks_6_io_raddr_0),
    .io_raddr_1(dataBanks_6_io_raddr_1),
    .io_rdata_0(dataBanks_6_io_rdata_0),
    .io_rdata_1(dataBanks_6_io_rdata_1),
    .io_wen_0(dataBanks_6_io_wen_0),
    .io_wen_1(dataBanks_6_io_wen_1),
    .io_waddr_0(dataBanks_6_io_waddr_0),
    .io_waddr_1(dataBanks_6_io_waddr_1),
    .io_wdata_0(dataBanks_6_io_wdata_0),
    .io_wdata_1(dataBanks_6_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_7 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_7_clock),
    .io_raddr_0(dataBanks_7_io_raddr_0),
    .io_raddr_1(dataBanks_7_io_raddr_1),
    .io_rdata_0(dataBanks_7_io_rdata_0),
    .io_rdata_1(dataBanks_7_io_rdata_1),
    .io_wen_0(dataBanks_7_io_wen_0),
    .io_wen_1(dataBanks_7_io_wen_1),
    .io_waddr_0(dataBanks_7_io_waddr_0),
    .io_waddr_1(dataBanks_7_io_waddr_1),
    .io_wdata_0(dataBanks_7_io_wdata_0),
    .io_wdata_1(dataBanks_7_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_8 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_8_clock),
    .io_raddr_0(dataBanks_8_io_raddr_0),
    .io_raddr_1(dataBanks_8_io_raddr_1),
    .io_rdata_0(dataBanks_8_io_rdata_0),
    .io_rdata_1(dataBanks_8_io_rdata_1),
    .io_wen_0(dataBanks_8_io_wen_0),
    .io_wen_1(dataBanks_8_io_wen_1),
    .io_waddr_0(dataBanks_8_io_waddr_0),
    .io_waddr_1(dataBanks_8_io_waddr_1),
    .io_wdata_0(dataBanks_8_io_wdata_0),
    .io_wdata_1(dataBanks_8_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_9 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_9_clock),
    .io_raddr_0(dataBanks_9_io_raddr_0),
    .io_raddr_1(dataBanks_9_io_raddr_1),
    .io_rdata_0(dataBanks_9_io_rdata_0),
    .io_rdata_1(dataBanks_9_io_rdata_1),
    .io_wen_0(dataBanks_9_io_wen_0),
    .io_wen_1(dataBanks_9_io_wen_1),
    .io_waddr_0(dataBanks_9_io_waddr_0),
    .io_waddr_1(dataBanks_9_io_waddr_1),
    .io_wdata_0(dataBanks_9_io_wdata_0),
    .io_wdata_1(dataBanks_9_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_10 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_10_clock),
    .io_raddr_0(dataBanks_10_io_raddr_0),
    .io_raddr_1(dataBanks_10_io_raddr_1),
    .io_rdata_0(dataBanks_10_io_rdata_0),
    .io_rdata_1(dataBanks_10_io_rdata_1),
    .io_wen_0(dataBanks_10_io_wen_0),
    .io_wen_1(dataBanks_10_io_wen_1),
    .io_waddr_0(dataBanks_10_io_waddr_0),
    .io_waddr_1(dataBanks_10_io_waddr_1),
    .io_wdata_0(dataBanks_10_io_wdata_0),
    .io_wdata_1(dataBanks_10_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_11 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_11_clock),
    .io_raddr_0(dataBanks_11_io_raddr_0),
    .io_raddr_1(dataBanks_11_io_raddr_1),
    .io_rdata_0(dataBanks_11_io_rdata_0),
    .io_rdata_1(dataBanks_11_io_rdata_1),
    .io_wen_0(dataBanks_11_io_wen_0),
    .io_wen_1(dataBanks_11_io_wen_1),
    .io_waddr_0(dataBanks_11_io_waddr_0),
    .io_waddr_1(dataBanks_11_io_waddr_1),
    .io_wdata_0(dataBanks_11_io_wdata_0),
    .io_wdata_1(dataBanks_11_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_12 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_12_clock),
    .io_raddr_0(dataBanks_12_io_raddr_0),
    .io_raddr_1(dataBanks_12_io_raddr_1),
    .io_rdata_0(dataBanks_12_io_rdata_0),
    .io_rdata_1(dataBanks_12_io_rdata_1),
    .io_wen_0(dataBanks_12_io_wen_0),
    .io_wen_1(dataBanks_12_io_wen_1),
    .io_waddr_0(dataBanks_12_io_waddr_0),
    .io_waddr_1(dataBanks_12_io_waddr_1),
    .io_wdata_0(dataBanks_12_io_wdata_0),
    .io_wdata_1(dataBanks_12_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_13 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_13_clock),
    .io_raddr_0(dataBanks_13_io_raddr_0),
    .io_raddr_1(dataBanks_13_io_raddr_1),
    .io_rdata_0(dataBanks_13_io_rdata_0),
    .io_rdata_1(dataBanks_13_io_rdata_1),
    .io_wen_0(dataBanks_13_io_wen_0),
    .io_wen_1(dataBanks_13_io_wen_1),
    .io_waddr_0(dataBanks_13_io_waddr_0),
    .io_waddr_1(dataBanks_13_io_waddr_1),
    .io_wdata_0(dataBanks_13_io_wdata_0),
    .io_wdata_1(dataBanks_13_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_14 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_14_clock),
    .io_raddr_0(dataBanks_14_io_raddr_0),
    .io_raddr_1(dataBanks_14_io_raddr_1),
    .io_rdata_0(dataBanks_14_io_rdata_0),
    .io_rdata_1(dataBanks_14_io_rdata_1),
    .io_wen_0(dataBanks_14_io_wen_0),
    .io_wen_1(dataBanks_14_io_wen_1),
    .io_waddr_0(dataBanks_14_io_waddr_0),
    .io_waddr_1(dataBanks_14_io_waddr_1),
    .io_wdata_0(dataBanks_14_io_wdata_0),
    .io_wdata_1(dataBanks_14_io_wdata_1)
  );
  NegedgeDataModule__64entry dataBanks_15 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_15_clock),
    .io_raddr_0(dataBanks_15_io_raddr_0),
    .io_raddr_1(dataBanks_15_io_raddr_1),
    .io_rdata_0(dataBanks_15_io_rdata_0),
    .io_rdata_1(dataBanks_15_io_rdata_1),
    .io_wen_0(dataBanks_15_io_wen_0),
    .io_wen_1(dataBanks_15_io_wen_1),
    .io_waddr_0(dataBanks_15_io_waddr_0),
    .io_waddr_1(dataBanks_15_io_waddr_1),
    .io_wdata_0(dataBanks_15_io_wdata_0),
    .io_wdata_1(dataBanks_15_io_wdata_1)
  );
  assign io_rdata_0 = index_dec[0] & dataBanks_0_io_rdata_0 | index_dec[1] & dataBanks_1_io_rdata_0 | index_dec[2] &
    dataBanks_2_io_rdata_0 | index_dec[3] & dataBanks_3_io_rdata_0 | index_dec[4] & dataBanks_4_io_rdata_0 | index_dec[5
    ] & dataBanks_5_io_rdata_0 | index_dec[6] & dataBanks_6_io_rdata_0 | index_dec[7] & dataBanks_7_io_rdata_0 |
    index_dec[8] & dataBanks_8_io_rdata_0 | index_dec[9] & dataBanks_9_io_rdata_0 | index_dec[10] &
    dataBanks_10_io_rdata_0 | index_dec[11] & dataBanks_11_io_rdata_0 | index_dec[12] & dataBanks_12_io_rdata_0 |
    index_dec[13] & dataBanks_13_io_rdata_0 | index_dec[14] & dataBanks_14_io_rdata_0 | _io_rdata_0_T_31; // @[Mux.scala 27:73]
  assign io_rdata_1 = index_dec_1[0] & dataBanks_0_io_rdata_1 | index_dec_1[1] & dataBanks_1_io_rdata_1 | index_dec_1[2]
     & dataBanks_2_io_rdata_1 | index_dec_1[3] & dataBanks_3_io_rdata_1 | index_dec_1[4] & dataBanks_4_io_rdata_1 |
    index_dec_1[5] & dataBanks_5_io_rdata_1 | index_dec_1[6] & dataBanks_6_io_rdata_1 | index_dec_1[7] &
    dataBanks_7_io_rdata_1 | index_dec_1[8] & dataBanks_8_io_rdata_1 | index_dec_1[9] & dataBanks_9_io_rdata_1 |
    index_dec_1[10] & dataBanks_10_io_rdata_1 | index_dec_1[11] & dataBanks_11_io_rdata_1 | index_dec_1[12] &
    dataBanks_12_io_rdata_1 | index_dec_1[13] & dataBanks_13_io_rdata_1 | index_dec_1[14] & dataBanks_14_io_rdata_1 |
    _io_rdata_1_T_31; // @[Mux.scala 27:73]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_wen_0 = wen_dup__0 & waddr_dup_0[9:6] == 4'h0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_1 = wen_dup__1 & waddr_dup_1[9:6] == 4'h0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_waddr_1 = waddr_dup_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_wdata_0 = r; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1 = r_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_clock = clock;
  assign dataBanks_1_io_raddr_0 = raddr_dup_1_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_raddr_1 = raddr_dup_1_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_wen_0 = wen_dup_1_0 & waddr_dup_0_1[9:6] == 4'h1; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_wen_1 = wen_dup_1_1 & waddr_dup_1_1[9:6] == 4'h1; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_waddr_0 = waddr_dup_0_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_waddr_1 = waddr_dup_1_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_wdata_0 = r_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1 = r_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_2_clock = clock;
  assign dataBanks_2_io_raddr_0 = raddr_dup_2_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_2_io_raddr_1 = raddr_dup_2_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_2_io_wen_0 = wen_dup_2_0 & waddr_dup_0_2[9:6] == 4'h2; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_2_io_wen_1 = wen_dup_2_1 & waddr_dup_1_2[9:6] == 4'h2; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_2_io_waddr_0 = waddr_dup_0_2[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_2_io_waddr_1 = waddr_dup_1_2[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_2_io_wdata_0 = r_4; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_2_io_wdata_1 = r_5; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_3_clock = clock;
  assign dataBanks_3_io_raddr_0 = raddr_dup_3_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_3_io_raddr_1 = raddr_dup_3_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_3_io_wen_0 = wen_dup_3_0 & waddr_dup_0_3[9:6] == 4'h3; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_3_io_wen_1 = wen_dup_3_1 & waddr_dup_1_3[9:6] == 4'h3; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_3_io_waddr_0 = waddr_dup_0_3[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_3_io_waddr_1 = waddr_dup_1_3[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_3_io_wdata_0 = r_6; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_3_io_wdata_1 = r_7; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_4_clock = clock;
  assign dataBanks_4_io_raddr_0 = raddr_dup_4_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_4_io_raddr_1 = raddr_dup_4_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_4_io_wen_0 = wen_dup_4_0 & waddr_dup_0_4[9:6] == 4'h4; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_4_io_wen_1 = wen_dup_4_1 & waddr_dup_1_4[9:6] == 4'h4; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_4_io_waddr_0 = waddr_dup_0_4[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_4_io_waddr_1 = waddr_dup_1_4[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_4_io_wdata_0 = r_8; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_4_io_wdata_1 = r_9; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_5_clock = clock;
  assign dataBanks_5_io_raddr_0 = raddr_dup_5_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_5_io_raddr_1 = raddr_dup_5_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_5_io_wen_0 = wen_dup_5_0 & waddr_dup_0_5[9:6] == 4'h5; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_5_io_wen_1 = wen_dup_5_1 & waddr_dup_1_5[9:6] == 4'h5; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_5_io_waddr_0 = waddr_dup_0_5[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_5_io_waddr_1 = waddr_dup_1_5[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_5_io_wdata_0 = r_10; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_5_io_wdata_1 = r_11; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_6_clock = clock;
  assign dataBanks_6_io_raddr_0 = raddr_dup_6_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_6_io_raddr_1 = raddr_dup_6_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_6_io_wen_0 = wen_dup_6_0 & waddr_dup_0_6[9:6] == 4'h6; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_6_io_wen_1 = wen_dup_6_1 & waddr_dup_1_6[9:6] == 4'h6; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_6_io_waddr_0 = waddr_dup_0_6[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_6_io_waddr_1 = waddr_dup_1_6[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_6_io_wdata_0 = r_12; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_6_io_wdata_1 = r_13; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_7_clock = clock;
  assign dataBanks_7_io_raddr_0 = raddr_dup_7_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_7_io_raddr_1 = raddr_dup_7_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_7_io_wen_0 = wen_dup_7_0 & waddr_dup_0_7[9:6] == 4'h7; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_7_io_wen_1 = wen_dup_7_1 & waddr_dup_1_7[9:6] == 4'h7; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_7_io_waddr_0 = waddr_dup_0_7[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_7_io_waddr_1 = waddr_dup_1_7[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_7_io_wdata_0 = r_14; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_7_io_wdata_1 = r_15; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_8_clock = clock;
  assign dataBanks_8_io_raddr_0 = raddr_dup_8_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_8_io_raddr_1 = raddr_dup_8_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_8_io_wen_0 = wen_dup_8_0 & waddr_dup_0_8[9:6] == 4'h8; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_8_io_wen_1 = wen_dup_8_1 & waddr_dup_1_8[9:6] == 4'h8; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_8_io_waddr_0 = waddr_dup_0_8[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_8_io_waddr_1 = waddr_dup_1_8[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_8_io_wdata_0 = r_16; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_8_io_wdata_1 = r_17; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_9_clock = clock;
  assign dataBanks_9_io_raddr_0 = raddr_dup_9_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_9_io_raddr_1 = raddr_dup_9_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_9_io_wen_0 = wen_dup_9_0 & waddr_dup_0_9[9:6] == 4'h9; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_9_io_wen_1 = wen_dup_9_1 & waddr_dup_1_9[9:6] == 4'h9; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_9_io_waddr_0 = waddr_dup_0_9[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_9_io_waddr_1 = waddr_dup_1_9[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_9_io_wdata_0 = r_18; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_9_io_wdata_1 = r_19; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_10_clock = clock;
  assign dataBanks_10_io_raddr_0 = raddr_dup_10_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_10_io_raddr_1 = raddr_dup_10_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_10_io_wen_0 = wen_dup_10_0 & waddr_dup_0_10[9:6] == 4'ha; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_10_io_wen_1 = wen_dup_10_1 & waddr_dup_1_10[9:6] == 4'ha; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_10_io_waddr_0 = waddr_dup_0_10[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_10_io_waddr_1 = waddr_dup_1_10[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_10_io_wdata_0 = r_20; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_10_io_wdata_1 = r_21; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_11_clock = clock;
  assign dataBanks_11_io_raddr_0 = raddr_dup_11_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_11_io_raddr_1 = raddr_dup_11_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_11_io_wen_0 = wen_dup_11_0 & waddr_dup_0_11[9:6] == 4'hb; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_11_io_wen_1 = wen_dup_11_1 & waddr_dup_1_11[9:6] == 4'hb; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_11_io_waddr_0 = waddr_dup_0_11[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_11_io_waddr_1 = waddr_dup_1_11[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_11_io_wdata_0 = r_22; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_11_io_wdata_1 = r_23; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_12_clock = clock;
  assign dataBanks_12_io_raddr_0 = raddr_dup_12_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_12_io_raddr_1 = raddr_dup_12_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_12_io_wen_0 = wen_dup_12_0 & waddr_dup_0_12[9:6] == 4'hc; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_12_io_wen_1 = wen_dup_12_1 & waddr_dup_1_12[9:6] == 4'hc; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_12_io_waddr_0 = waddr_dup_0_12[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_12_io_waddr_1 = waddr_dup_1_12[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_12_io_wdata_0 = r_24; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_12_io_wdata_1 = r_25; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_13_clock = clock;
  assign dataBanks_13_io_raddr_0 = raddr_dup_13_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_13_io_raddr_1 = raddr_dup_13_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_13_io_wen_0 = wen_dup_13_0 & waddr_dup_0_13[9:6] == 4'hd; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_13_io_wen_1 = wen_dup_13_1 & waddr_dup_1_13[9:6] == 4'hd; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_13_io_waddr_0 = waddr_dup_0_13[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_13_io_waddr_1 = waddr_dup_1_13[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_13_io_wdata_0 = r_26; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_13_io_wdata_1 = r_27; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_14_clock = clock;
  assign dataBanks_14_io_raddr_0 = raddr_dup_14_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_14_io_raddr_1 = raddr_dup_14_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_14_io_wen_0 = wen_dup_14_0 & waddr_dup_0_14[9:6] == 4'he; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_14_io_wen_1 = wen_dup_14_1 & waddr_dup_1_14[9:6] == 4'he; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_14_io_waddr_0 = waddr_dup_0_14[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_14_io_waddr_1 = waddr_dup_1_14[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_14_io_wdata_0 = r_28; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_14_io_wdata_1 = r_29; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_15_clock = clock;
  assign dataBanks_15_io_raddr_0 = raddr_dup_15_0[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_15_io_raddr_1 = raddr_dup_15_1[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_15_io_wen_0 = wen_dup_15_0 & waddr_dup_0_15[9:6] == 4'hf; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_15_io_wen_1 = wen_dup_15_1 & waddr_dup_1_15[9:6] == 4'hf; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_15_io_waddr_0 = waddr_dup_0_15[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_15_io_waddr_1 = waddr_dup_1_15[5:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_15_io_wdata_0 = r_30; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_15_io_wdata_1 = r_31; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup__0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup__1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_1_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_1_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_1_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_1_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_1 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_2_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_2_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_2_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_2_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_2 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_2 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_4 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_5 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_3_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_3_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_3_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_3_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_3 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_3 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_6 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_7 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_4_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_4_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_4_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_4_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_4 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_4 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_8 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_9 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_5_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_5_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_5_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_5_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_5 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_5 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_10 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_11 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_6_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_6_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_6_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_6_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_6 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_6 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_12 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_13 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_7_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_7_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_7_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_7_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_7 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_7 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_14 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_15 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_8_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_8_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_8_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_8_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_8 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_8 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_16 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_17 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_9_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_9_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_9_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_9_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_9 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_9 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_18 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_19 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_10_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_10_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_10_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_10_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_10 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_10 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_20 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_21 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_11_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_11_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_11_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_11_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_11 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_11 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_22 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_23 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_12_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_12_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_12_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_12_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_12 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_12 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_24 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_25 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_13_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_13_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_13_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_13_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_13 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_13 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_26 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_27 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_14_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_14_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_14_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_14_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_14 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_14 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_28 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_29 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_15_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_15_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_15_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_15_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_15 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_15 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_30 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_31 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    raddr_dup_16 <= io_raddr_0; // @[DataModuleTemplate.scala 145:28]
    raddr_dup_17 <= io_raddr_1; // @[DataModuleTemplate.scala 145:28]
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
  raddr_dup__0 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  raddr_dup__1 = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  wen_dup__0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  wen_dup__1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  waddr_dup_1 = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  r = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  r_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  raddr_dup_1_0 = _RAND_8[9:0];
  _RAND_9 = {1{`RANDOM}};
  raddr_dup_1_1 = _RAND_9[9:0];
  _RAND_10 = {1{`RANDOM}};
  wen_dup_1_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  wen_dup_1_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  waddr_dup_0_1 = _RAND_12[9:0];
  _RAND_13 = {1{`RANDOM}};
  waddr_dup_1_1 = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  r_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  raddr_dup_2_0 = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  raddr_dup_2_1 = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  wen_dup_2_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  wen_dup_2_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  waddr_dup_0_2 = _RAND_20[9:0];
  _RAND_21 = {1{`RANDOM}};
  waddr_dup_1_2 = _RAND_21[9:0];
  _RAND_22 = {1{`RANDOM}};
  r_4 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  r_5 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  raddr_dup_3_0 = _RAND_24[9:0];
  _RAND_25 = {1{`RANDOM}};
  raddr_dup_3_1 = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  wen_dup_3_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  wen_dup_3_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  waddr_dup_0_3 = _RAND_28[9:0];
  _RAND_29 = {1{`RANDOM}};
  waddr_dup_1_3 = _RAND_29[9:0];
  _RAND_30 = {1{`RANDOM}};
  r_6 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  r_7 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  raddr_dup_4_0 = _RAND_32[9:0];
  _RAND_33 = {1{`RANDOM}};
  raddr_dup_4_1 = _RAND_33[9:0];
  _RAND_34 = {1{`RANDOM}};
  wen_dup_4_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  wen_dup_4_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  waddr_dup_0_4 = _RAND_36[9:0];
  _RAND_37 = {1{`RANDOM}};
  waddr_dup_1_4 = _RAND_37[9:0];
  _RAND_38 = {1{`RANDOM}};
  r_8 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  r_9 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  raddr_dup_5_0 = _RAND_40[9:0];
  _RAND_41 = {1{`RANDOM}};
  raddr_dup_5_1 = _RAND_41[9:0];
  _RAND_42 = {1{`RANDOM}};
  wen_dup_5_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  wen_dup_5_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  waddr_dup_0_5 = _RAND_44[9:0];
  _RAND_45 = {1{`RANDOM}};
  waddr_dup_1_5 = _RAND_45[9:0];
  _RAND_46 = {1{`RANDOM}};
  r_10 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  r_11 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  raddr_dup_6_0 = _RAND_48[9:0];
  _RAND_49 = {1{`RANDOM}};
  raddr_dup_6_1 = _RAND_49[9:0];
  _RAND_50 = {1{`RANDOM}};
  wen_dup_6_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  wen_dup_6_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  waddr_dup_0_6 = _RAND_52[9:0];
  _RAND_53 = {1{`RANDOM}};
  waddr_dup_1_6 = _RAND_53[9:0];
  _RAND_54 = {1{`RANDOM}};
  r_12 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  r_13 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  raddr_dup_7_0 = _RAND_56[9:0];
  _RAND_57 = {1{`RANDOM}};
  raddr_dup_7_1 = _RAND_57[9:0];
  _RAND_58 = {1{`RANDOM}};
  wen_dup_7_0 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  wen_dup_7_1 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  waddr_dup_0_7 = _RAND_60[9:0];
  _RAND_61 = {1{`RANDOM}};
  waddr_dup_1_7 = _RAND_61[9:0];
  _RAND_62 = {1{`RANDOM}};
  r_14 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  r_15 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  raddr_dup_8_0 = _RAND_64[9:0];
  _RAND_65 = {1{`RANDOM}};
  raddr_dup_8_1 = _RAND_65[9:0];
  _RAND_66 = {1{`RANDOM}};
  wen_dup_8_0 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  wen_dup_8_1 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  waddr_dup_0_8 = _RAND_68[9:0];
  _RAND_69 = {1{`RANDOM}};
  waddr_dup_1_8 = _RAND_69[9:0];
  _RAND_70 = {1{`RANDOM}};
  r_16 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  r_17 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  raddr_dup_9_0 = _RAND_72[9:0];
  _RAND_73 = {1{`RANDOM}};
  raddr_dup_9_1 = _RAND_73[9:0];
  _RAND_74 = {1{`RANDOM}};
  wen_dup_9_0 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  wen_dup_9_1 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  waddr_dup_0_9 = _RAND_76[9:0];
  _RAND_77 = {1{`RANDOM}};
  waddr_dup_1_9 = _RAND_77[9:0];
  _RAND_78 = {1{`RANDOM}};
  r_18 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  r_19 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  raddr_dup_10_0 = _RAND_80[9:0];
  _RAND_81 = {1{`RANDOM}};
  raddr_dup_10_1 = _RAND_81[9:0];
  _RAND_82 = {1{`RANDOM}};
  wen_dup_10_0 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  wen_dup_10_1 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  waddr_dup_0_10 = _RAND_84[9:0];
  _RAND_85 = {1{`RANDOM}};
  waddr_dup_1_10 = _RAND_85[9:0];
  _RAND_86 = {1{`RANDOM}};
  r_20 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  r_21 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  raddr_dup_11_0 = _RAND_88[9:0];
  _RAND_89 = {1{`RANDOM}};
  raddr_dup_11_1 = _RAND_89[9:0];
  _RAND_90 = {1{`RANDOM}};
  wen_dup_11_0 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  wen_dup_11_1 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  waddr_dup_0_11 = _RAND_92[9:0];
  _RAND_93 = {1{`RANDOM}};
  waddr_dup_1_11 = _RAND_93[9:0];
  _RAND_94 = {1{`RANDOM}};
  r_22 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  r_23 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  raddr_dup_12_0 = _RAND_96[9:0];
  _RAND_97 = {1{`RANDOM}};
  raddr_dup_12_1 = _RAND_97[9:0];
  _RAND_98 = {1{`RANDOM}};
  wen_dup_12_0 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  wen_dup_12_1 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  waddr_dup_0_12 = _RAND_100[9:0];
  _RAND_101 = {1{`RANDOM}};
  waddr_dup_1_12 = _RAND_101[9:0];
  _RAND_102 = {1{`RANDOM}};
  r_24 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  r_25 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  raddr_dup_13_0 = _RAND_104[9:0];
  _RAND_105 = {1{`RANDOM}};
  raddr_dup_13_1 = _RAND_105[9:0];
  _RAND_106 = {1{`RANDOM}};
  wen_dup_13_0 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  wen_dup_13_1 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  waddr_dup_0_13 = _RAND_108[9:0];
  _RAND_109 = {1{`RANDOM}};
  waddr_dup_1_13 = _RAND_109[9:0];
  _RAND_110 = {1{`RANDOM}};
  r_26 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  r_27 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  raddr_dup_14_0 = _RAND_112[9:0];
  _RAND_113 = {1{`RANDOM}};
  raddr_dup_14_1 = _RAND_113[9:0];
  _RAND_114 = {1{`RANDOM}};
  wen_dup_14_0 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  wen_dup_14_1 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  waddr_dup_0_14 = _RAND_116[9:0];
  _RAND_117 = {1{`RANDOM}};
  waddr_dup_1_14 = _RAND_117[9:0];
  _RAND_118 = {1{`RANDOM}};
  r_28 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  r_29 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  raddr_dup_15_0 = _RAND_120[9:0];
  _RAND_121 = {1{`RANDOM}};
  raddr_dup_15_1 = _RAND_121[9:0];
  _RAND_122 = {1{`RANDOM}};
  wen_dup_15_0 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  wen_dup_15_1 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  waddr_dup_0_15 = _RAND_124[9:0];
  _RAND_125 = {1{`RANDOM}};
  waddr_dup_1_15 = _RAND_125[9:0];
  _RAND_126 = {1{`RANDOM}};
  r_30 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  r_31 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  raddr_dup_16 = _RAND_128[9:0];
  _RAND_129 = {1{`RANDOM}};
  raddr_dup_17 = _RAND_129[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

