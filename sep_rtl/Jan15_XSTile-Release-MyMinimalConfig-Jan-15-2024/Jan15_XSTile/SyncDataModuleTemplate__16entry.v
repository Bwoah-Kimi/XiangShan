module SyncDataModuleTemplate__16entry(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  input  [3:0]  io_raddr_2,
  input  [3:0]  io_raddr_3,
  output        io_rdata_0_pd_isRVC,
  output [1:0]  io_rdata_0_pd_brType,
  output        io_rdata_0_pd_isCall,
  output        io_rdata_0_pd_isRet,
  output        io_rdata_0_pred_taken,
  output        io_rdata_0_ftqPtr_flag,
  output [2:0]  io_rdata_0_ftqPtr_value,
  output [2:0]  io_rdata_0_ftqOffset,
  output        io_rdata_0_crossPageIPFFix,
  output        io_rdata_0_triggered_frontendHit_0,
  output        io_rdata_0_triggered_frontendHit_1,
  output        io_rdata_0_triggered_frontendHit_2,
  output        io_rdata_0_triggered_frontendHit_3,
  output        io_rdata_0_triggered_backendEn_0,
  output        io_rdata_0_triggered_backendEn_1,
  output        io_rdata_1_pd_isRVC,
  output [1:0]  io_rdata_1_pd_brType,
  output        io_rdata_1_pd_isCall,
  output        io_rdata_1_pd_isRet,
  output        io_rdata_1_pred_taken,
  output        io_rdata_1_ftqPtr_flag,
  output [2:0]  io_rdata_1_ftqPtr_value,
  output [2:0]  io_rdata_1_ftqOffset,
  output        io_rdata_1_crossPageIPFFix,
  output        io_rdata_1_triggered_frontendHit_0,
  output        io_rdata_1_triggered_frontendHit_1,
  output        io_rdata_1_triggered_frontendHit_2,
  output        io_rdata_1_triggered_frontendHit_3,
  output        io_rdata_1_triggered_backendEn_0,
  output        io_rdata_1_triggered_backendEn_1,
  output [31:0] io_rdata_2_inst,
  output [9:0]  io_rdata_2_foldpc,
  output        io_rdata_2_ipf,
  output        io_rdata_2_acf,
  output [31:0] io_rdata_3_inst,
  output [9:0]  io_rdata_3_foldpc,
  output        io_rdata_3_ipf,
  output        io_rdata_3_acf,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input         io_wen_4,
  input         io_wen_5,
  input         io_wen_6,
  input         io_wen_7,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input  [3:0]  io_waddr_2,
  input  [3:0]  io_waddr_3,
  input  [3:0]  io_waddr_4,
  input  [3:0]  io_waddr_5,
  input  [3:0]  io_waddr_6,
  input  [3:0]  io_waddr_7,
  input  [31:0] io_wdata_0_inst,
  input  [9:0]  io_wdata_0_foldpc,
  input         io_wdata_0_pd_isRVC,
  input  [1:0]  io_wdata_0_pd_brType,
  input         io_wdata_0_pd_isCall,
  input         io_wdata_0_pd_isRet,
  input         io_wdata_0_pred_taken,
  input         io_wdata_0_ftqPtr_flag,
  input  [2:0]  io_wdata_0_ftqPtr_value,
  input         io_wdata_0_ipf,
  input         io_wdata_0_acf,
  input         io_wdata_0_crossPageIPFFix,
  input         io_wdata_0_triggered_frontendHit_0,
  input         io_wdata_0_triggered_frontendHit_1,
  input         io_wdata_0_triggered_frontendHit_2,
  input         io_wdata_0_triggered_frontendHit_3,
  input         io_wdata_0_triggered_backendEn_0,
  input         io_wdata_0_triggered_backendEn_1,
  input  [31:0] io_wdata_1_inst,
  input  [9:0]  io_wdata_1_foldpc,
  input         io_wdata_1_pd_isRVC,
  input  [1:0]  io_wdata_1_pd_brType,
  input         io_wdata_1_pd_isCall,
  input         io_wdata_1_pd_isRet,
  input         io_wdata_1_pred_taken,
  input         io_wdata_1_ftqPtr_flag,
  input  [2:0]  io_wdata_1_ftqPtr_value,
  input         io_wdata_1_ipf,
  input         io_wdata_1_acf,
  input         io_wdata_1_crossPageIPFFix,
  input         io_wdata_1_triggered_frontendHit_0,
  input         io_wdata_1_triggered_frontendHit_1,
  input         io_wdata_1_triggered_frontendHit_2,
  input         io_wdata_1_triggered_frontendHit_3,
  input         io_wdata_1_triggered_backendEn_0,
  input         io_wdata_1_triggered_backendEn_1,
  input  [31:0] io_wdata_2_inst,
  input  [9:0]  io_wdata_2_foldpc,
  input         io_wdata_2_pd_isRVC,
  input  [1:0]  io_wdata_2_pd_brType,
  input         io_wdata_2_pd_isCall,
  input         io_wdata_2_pd_isRet,
  input         io_wdata_2_pred_taken,
  input         io_wdata_2_ftqPtr_flag,
  input  [2:0]  io_wdata_2_ftqPtr_value,
  input         io_wdata_2_ipf,
  input         io_wdata_2_acf,
  input         io_wdata_2_crossPageIPFFix,
  input         io_wdata_2_triggered_frontendHit_0,
  input         io_wdata_2_triggered_frontendHit_1,
  input         io_wdata_2_triggered_frontendHit_2,
  input         io_wdata_2_triggered_frontendHit_3,
  input         io_wdata_2_triggered_backendEn_0,
  input         io_wdata_2_triggered_backendEn_1,
  input  [31:0] io_wdata_3_inst,
  input  [9:0]  io_wdata_3_foldpc,
  input         io_wdata_3_pd_isRVC,
  input  [1:0]  io_wdata_3_pd_brType,
  input         io_wdata_3_pd_isCall,
  input         io_wdata_3_pd_isRet,
  input         io_wdata_3_pred_taken,
  input         io_wdata_3_ftqPtr_flag,
  input  [2:0]  io_wdata_3_ftqPtr_value,
  input         io_wdata_3_ipf,
  input         io_wdata_3_acf,
  input         io_wdata_3_crossPageIPFFix,
  input         io_wdata_3_triggered_frontendHit_0,
  input         io_wdata_3_triggered_frontendHit_1,
  input         io_wdata_3_triggered_frontendHit_2,
  input         io_wdata_3_triggered_frontendHit_3,
  input         io_wdata_3_triggered_backendEn_0,
  input         io_wdata_3_triggered_backendEn_1,
  input  [31:0] io_wdata_4_inst,
  input  [9:0]  io_wdata_4_foldpc,
  input         io_wdata_4_pd_isRVC,
  input  [1:0]  io_wdata_4_pd_brType,
  input         io_wdata_4_pd_isCall,
  input         io_wdata_4_pd_isRet,
  input         io_wdata_4_pred_taken,
  input         io_wdata_4_ftqPtr_flag,
  input  [2:0]  io_wdata_4_ftqPtr_value,
  input         io_wdata_4_ipf,
  input         io_wdata_4_acf,
  input         io_wdata_4_crossPageIPFFix,
  input         io_wdata_4_triggered_frontendHit_0,
  input         io_wdata_4_triggered_frontendHit_1,
  input         io_wdata_4_triggered_frontendHit_2,
  input         io_wdata_4_triggered_frontendHit_3,
  input         io_wdata_4_triggered_backendEn_0,
  input         io_wdata_4_triggered_backendEn_1,
  input  [31:0] io_wdata_5_inst,
  input  [9:0]  io_wdata_5_foldpc,
  input         io_wdata_5_pd_isRVC,
  input  [1:0]  io_wdata_5_pd_brType,
  input         io_wdata_5_pd_isCall,
  input         io_wdata_5_pd_isRet,
  input         io_wdata_5_pred_taken,
  input         io_wdata_5_ftqPtr_flag,
  input  [2:0]  io_wdata_5_ftqPtr_value,
  input         io_wdata_5_ipf,
  input         io_wdata_5_acf,
  input         io_wdata_5_crossPageIPFFix,
  input         io_wdata_5_triggered_frontendHit_0,
  input         io_wdata_5_triggered_frontendHit_1,
  input         io_wdata_5_triggered_frontendHit_2,
  input         io_wdata_5_triggered_frontendHit_3,
  input         io_wdata_5_triggered_backendEn_0,
  input         io_wdata_5_triggered_backendEn_1,
  input  [31:0] io_wdata_6_inst,
  input  [9:0]  io_wdata_6_foldpc,
  input         io_wdata_6_pd_isRVC,
  input  [1:0]  io_wdata_6_pd_brType,
  input         io_wdata_6_pd_isCall,
  input         io_wdata_6_pd_isRet,
  input         io_wdata_6_pred_taken,
  input         io_wdata_6_ftqPtr_flag,
  input  [2:0]  io_wdata_6_ftqPtr_value,
  input         io_wdata_6_ipf,
  input         io_wdata_6_acf,
  input         io_wdata_6_crossPageIPFFix,
  input         io_wdata_6_triggered_frontendHit_0,
  input         io_wdata_6_triggered_frontendHit_1,
  input         io_wdata_6_triggered_frontendHit_2,
  input         io_wdata_6_triggered_frontendHit_3,
  input         io_wdata_6_triggered_backendEn_0,
  input         io_wdata_6_triggered_backendEn_1,
  input  [31:0] io_wdata_7_inst,
  input  [9:0]  io_wdata_7_foldpc,
  input         io_wdata_7_pd_isRVC,
  input  [1:0]  io_wdata_7_pd_brType,
  input         io_wdata_7_pd_isCall,
  input         io_wdata_7_pd_isRet,
  input         io_wdata_7_pred_taken,
  input         io_wdata_7_ftqPtr_flag,
  input  [2:0]  io_wdata_7_ftqPtr_value,
  input         io_wdata_7_ipf,
  input         io_wdata_7_acf,
  input         io_wdata_7_crossPageIPFFix,
  input         io_wdata_7_triggered_frontendHit_0,
  input         io_wdata_7_triggered_frontendHit_1,
  input         io_wdata_7_triggered_frontendHit_2,
  input         io_wdata_7_triggered_frontendHit_3,
  input         io_wdata_7_triggered_backendEn_0,
  input         io_wdata_7_triggered_backendEn_1
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
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_0_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_1_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_rdata_2_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_rdata_2_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_acf; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_rdata_3_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_rdata_3_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_7; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_3; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_4; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_5; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_6; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_7; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_0_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_0_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_1_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_1_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_2_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_2_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_2_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_2_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_2_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_3_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_3_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_3_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_3_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_3_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_4_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_4_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_4_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_4_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_4_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_5_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_5_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_5_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_5_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_5_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_6_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_6_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_6_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_6_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_6_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire [31:0] dataBanks_0_io_wdata_7_inst; // @[DataModuleTemplate.scala 120:26]
  wire [9:0] dataBanks_0_io_wdata_7_foldpc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_7_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_7_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_ipf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_acf; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_crossPageIPFFix; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_triggered_frontendHit_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_triggered_frontendHit_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_triggered_frontendHit_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_triggered_frontendHit_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_triggered_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_7_triggered_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  reg [3:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__2; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__3; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_1; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_2; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_3; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_4; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_5; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_6; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_7; // @[DataModuleTemplate.scala 124:26]
  reg [3:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_1; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_2; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_3; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_4; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_5; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_6; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_7; // @[Reg.scala 16:16]
  reg [31:0] r_inst; // @[Reg.scala 16:16]
  reg [9:0] r_foldpc; // @[Reg.scala 16:16]
  reg  r_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_pd_brType; // @[Reg.scala 16:16]
  reg  r_pd_isCall; // @[Reg.scala 16:16]
  reg  r_pd_isRet; // @[Reg.scala 16:16]
  reg  r_pred_taken; // @[Reg.scala 16:16]
  reg  r_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_ipf; // @[Reg.scala 16:16]
  reg  r_acf; // @[Reg.scala 16:16]
  reg  r_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_1_inst; // @[Reg.scala 16:16]
  reg [9:0] r_1_foldpc; // @[Reg.scala 16:16]
  reg  r_1_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_1_pd_brType; // @[Reg.scala 16:16]
  reg  r_1_pd_isCall; // @[Reg.scala 16:16]
  reg  r_1_pd_isRet; // @[Reg.scala 16:16]
  reg  r_1_pred_taken; // @[Reg.scala 16:16]
  reg  r_1_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_1_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_1_ipf; // @[Reg.scala 16:16]
  reg  r_1_acf; // @[Reg.scala 16:16]
  reg  r_1_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_1_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_1_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_1_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_1_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_1_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_1_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_2_inst; // @[Reg.scala 16:16]
  reg [9:0] r_2_foldpc; // @[Reg.scala 16:16]
  reg  r_2_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_2_pd_brType; // @[Reg.scala 16:16]
  reg  r_2_pd_isCall; // @[Reg.scala 16:16]
  reg  r_2_pd_isRet; // @[Reg.scala 16:16]
  reg  r_2_pred_taken; // @[Reg.scala 16:16]
  reg  r_2_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_2_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_2_ipf; // @[Reg.scala 16:16]
  reg  r_2_acf; // @[Reg.scala 16:16]
  reg  r_2_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_2_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_2_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_2_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_2_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_2_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_2_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_3_inst; // @[Reg.scala 16:16]
  reg [9:0] r_3_foldpc; // @[Reg.scala 16:16]
  reg  r_3_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_3_pd_brType; // @[Reg.scala 16:16]
  reg  r_3_pd_isCall; // @[Reg.scala 16:16]
  reg  r_3_pd_isRet; // @[Reg.scala 16:16]
  reg  r_3_pred_taken; // @[Reg.scala 16:16]
  reg  r_3_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_3_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_3_ipf; // @[Reg.scala 16:16]
  reg  r_3_acf; // @[Reg.scala 16:16]
  reg  r_3_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_3_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_3_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_3_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_3_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_3_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_3_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_4_inst; // @[Reg.scala 16:16]
  reg [9:0] r_4_foldpc; // @[Reg.scala 16:16]
  reg  r_4_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_4_pd_brType; // @[Reg.scala 16:16]
  reg  r_4_pd_isCall; // @[Reg.scala 16:16]
  reg  r_4_pd_isRet; // @[Reg.scala 16:16]
  reg  r_4_pred_taken; // @[Reg.scala 16:16]
  reg  r_4_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_4_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_4_ipf; // @[Reg.scala 16:16]
  reg  r_4_acf; // @[Reg.scala 16:16]
  reg  r_4_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_4_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_4_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_4_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_4_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_4_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_4_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_5_inst; // @[Reg.scala 16:16]
  reg [9:0] r_5_foldpc; // @[Reg.scala 16:16]
  reg  r_5_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_5_pd_brType; // @[Reg.scala 16:16]
  reg  r_5_pd_isCall; // @[Reg.scala 16:16]
  reg  r_5_pd_isRet; // @[Reg.scala 16:16]
  reg  r_5_pred_taken; // @[Reg.scala 16:16]
  reg  r_5_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_5_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_5_ipf; // @[Reg.scala 16:16]
  reg  r_5_acf; // @[Reg.scala 16:16]
  reg  r_5_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_5_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_5_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_5_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_5_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_5_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_5_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_6_inst; // @[Reg.scala 16:16]
  reg [9:0] r_6_foldpc; // @[Reg.scala 16:16]
  reg  r_6_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_6_pd_brType; // @[Reg.scala 16:16]
  reg  r_6_pd_isCall; // @[Reg.scala 16:16]
  reg  r_6_pd_isRet; // @[Reg.scala 16:16]
  reg  r_6_pred_taken; // @[Reg.scala 16:16]
  reg  r_6_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_6_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_6_ipf; // @[Reg.scala 16:16]
  reg  r_6_acf; // @[Reg.scala 16:16]
  reg  r_6_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_6_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_6_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_6_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_6_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_6_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_6_triggered_backendEn_1; // @[Reg.scala 16:16]
  reg [31:0] r_7_inst; // @[Reg.scala 16:16]
  reg [9:0] r_7_foldpc; // @[Reg.scala 16:16]
  reg  r_7_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_7_pd_brType; // @[Reg.scala 16:16]
  reg  r_7_pd_isCall; // @[Reg.scala 16:16]
  reg  r_7_pd_isRet; // @[Reg.scala 16:16]
  reg  r_7_pred_taken; // @[Reg.scala 16:16]
  reg  r_7_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_7_ftqPtr_value; // @[Reg.scala 16:16]
  reg  r_7_ipf; // @[Reg.scala 16:16]
  reg  r_7_acf; // @[Reg.scala 16:16]
  reg  r_7_crossPageIPFFix; // @[Reg.scala 16:16]
  reg  r_7_triggered_frontendHit_0; // @[Reg.scala 16:16]
  reg  r_7_triggered_frontendHit_1; // @[Reg.scala 16:16]
  reg  r_7_triggered_frontendHit_2; // @[Reg.scala 16:16]
  reg  r_7_triggered_frontendHit_3; // @[Reg.scala 16:16]
  reg  r_7_triggered_backendEn_0; // @[Reg.scala 16:16]
  reg  r_7_triggered_backendEn_1; // @[Reg.scala 16:16]
  NegedgeDataModule__16entry dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_raddr_2(dataBanks_0_io_raddr_2),
    .io_raddr_3(dataBanks_0_io_raddr_3),
    .io_rdata_0_pd_isRVC(dataBanks_0_io_rdata_0_pd_isRVC),
    .io_rdata_0_pd_brType(dataBanks_0_io_rdata_0_pd_brType),
    .io_rdata_0_pd_isCall(dataBanks_0_io_rdata_0_pd_isCall),
    .io_rdata_0_pd_isRet(dataBanks_0_io_rdata_0_pd_isRet),
    .io_rdata_0_pred_taken(dataBanks_0_io_rdata_0_pred_taken),
    .io_rdata_0_ftqPtr_flag(dataBanks_0_io_rdata_0_ftqPtr_flag),
    .io_rdata_0_ftqPtr_value(dataBanks_0_io_rdata_0_ftqPtr_value),
    .io_rdata_0_ftqOffset(dataBanks_0_io_rdata_0_ftqOffset),
    .io_rdata_0_crossPageIPFFix(dataBanks_0_io_rdata_0_crossPageIPFFix),
    .io_rdata_0_triggered_frontendHit_0(dataBanks_0_io_rdata_0_triggered_frontendHit_0),
    .io_rdata_0_triggered_frontendHit_1(dataBanks_0_io_rdata_0_triggered_frontendHit_1),
    .io_rdata_0_triggered_frontendHit_2(dataBanks_0_io_rdata_0_triggered_frontendHit_2),
    .io_rdata_0_triggered_frontendHit_3(dataBanks_0_io_rdata_0_triggered_frontendHit_3),
    .io_rdata_0_triggered_backendEn_0(dataBanks_0_io_rdata_0_triggered_backendEn_0),
    .io_rdata_0_triggered_backendEn_1(dataBanks_0_io_rdata_0_triggered_backendEn_1),
    .io_rdata_1_pd_isRVC(dataBanks_0_io_rdata_1_pd_isRVC),
    .io_rdata_1_pd_brType(dataBanks_0_io_rdata_1_pd_brType),
    .io_rdata_1_pd_isCall(dataBanks_0_io_rdata_1_pd_isCall),
    .io_rdata_1_pd_isRet(dataBanks_0_io_rdata_1_pd_isRet),
    .io_rdata_1_pred_taken(dataBanks_0_io_rdata_1_pred_taken),
    .io_rdata_1_ftqPtr_flag(dataBanks_0_io_rdata_1_ftqPtr_flag),
    .io_rdata_1_ftqPtr_value(dataBanks_0_io_rdata_1_ftqPtr_value),
    .io_rdata_1_ftqOffset(dataBanks_0_io_rdata_1_ftqOffset),
    .io_rdata_1_crossPageIPFFix(dataBanks_0_io_rdata_1_crossPageIPFFix),
    .io_rdata_1_triggered_frontendHit_0(dataBanks_0_io_rdata_1_triggered_frontendHit_0),
    .io_rdata_1_triggered_frontendHit_1(dataBanks_0_io_rdata_1_triggered_frontendHit_1),
    .io_rdata_1_triggered_frontendHit_2(dataBanks_0_io_rdata_1_triggered_frontendHit_2),
    .io_rdata_1_triggered_frontendHit_3(dataBanks_0_io_rdata_1_triggered_frontendHit_3),
    .io_rdata_1_triggered_backendEn_0(dataBanks_0_io_rdata_1_triggered_backendEn_0),
    .io_rdata_1_triggered_backendEn_1(dataBanks_0_io_rdata_1_triggered_backendEn_1),
    .io_rdata_2_inst(dataBanks_0_io_rdata_2_inst),
    .io_rdata_2_foldpc(dataBanks_0_io_rdata_2_foldpc),
    .io_rdata_2_ipf(dataBanks_0_io_rdata_2_ipf),
    .io_rdata_2_acf(dataBanks_0_io_rdata_2_acf),
    .io_rdata_3_inst(dataBanks_0_io_rdata_3_inst),
    .io_rdata_3_foldpc(dataBanks_0_io_rdata_3_foldpc),
    .io_rdata_3_ipf(dataBanks_0_io_rdata_3_ipf),
    .io_rdata_3_acf(dataBanks_0_io_rdata_3_acf),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_wen_1(dataBanks_0_io_wen_1),
    .io_wen_2(dataBanks_0_io_wen_2),
    .io_wen_3(dataBanks_0_io_wen_3),
    .io_wen_4(dataBanks_0_io_wen_4),
    .io_wen_5(dataBanks_0_io_wen_5),
    .io_wen_6(dataBanks_0_io_wen_6),
    .io_wen_7(dataBanks_0_io_wen_7),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_waddr_1(dataBanks_0_io_waddr_1),
    .io_waddr_2(dataBanks_0_io_waddr_2),
    .io_waddr_3(dataBanks_0_io_waddr_3),
    .io_waddr_4(dataBanks_0_io_waddr_4),
    .io_waddr_5(dataBanks_0_io_waddr_5),
    .io_waddr_6(dataBanks_0_io_waddr_6),
    .io_waddr_7(dataBanks_0_io_waddr_7),
    .io_wdata_0_inst(dataBanks_0_io_wdata_0_inst),
    .io_wdata_0_foldpc(dataBanks_0_io_wdata_0_foldpc),
    .io_wdata_0_pd_isRVC(dataBanks_0_io_wdata_0_pd_isRVC),
    .io_wdata_0_pd_brType(dataBanks_0_io_wdata_0_pd_brType),
    .io_wdata_0_pd_isCall(dataBanks_0_io_wdata_0_pd_isCall),
    .io_wdata_0_pd_isRet(dataBanks_0_io_wdata_0_pd_isRet),
    .io_wdata_0_pred_taken(dataBanks_0_io_wdata_0_pred_taken),
    .io_wdata_0_ftqPtr_flag(dataBanks_0_io_wdata_0_ftqPtr_flag),
    .io_wdata_0_ftqPtr_value(dataBanks_0_io_wdata_0_ftqPtr_value),
    .io_wdata_0_ipf(dataBanks_0_io_wdata_0_ipf),
    .io_wdata_0_acf(dataBanks_0_io_wdata_0_acf),
    .io_wdata_0_crossPageIPFFix(dataBanks_0_io_wdata_0_crossPageIPFFix),
    .io_wdata_0_triggered_frontendHit_0(dataBanks_0_io_wdata_0_triggered_frontendHit_0),
    .io_wdata_0_triggered_frontendHit_1(dataBanks_0_io_wdata_0_triggered_frontendHit_1),
    .io_wdata_0_triggered_frontendHit_2(dataBanks_0_io_wdata_0_triggered_frontendHit_2),
    .io_wdata_0_triggered_frontendHit_3(dataBanks_0_io_wdata_0_triggered_frontendHit_3),
    .io_wdata_0_triggered_backendEn_0(dataBanks_0_io_wdata_0_triggered_backendEn_0),
    .io_wdata_0_triggered_backendEn_1(dataBanks_0_io_wdata_0_triggered_backendEn_1),
    .io_wdata_1_inst(dataBanks_0_io_wdata_1_inst),
    .io_wdata_1_foldpc(dataBanks_0_io_wdata_1_foldpc),
    .io_wdata_1_pd_isRVC(dataBanks_0_io_wdata_1_pd_isRVC),
    .io_wdata_1_pd_brType(dataBanks_0_io_wdata_1_pd_brType),
    .io_wdata_1_pd_isCall(dataBanks_0_io_wdata_1_pd_isCall),
    .io_wdata_1_pd_isRet(dataBanks_0_io_wdata_1_pd_isRet),
    .io_wdata_1_pred_taken(dataBanks_0_io_wdata_1_pred_taken),
    .io_wdata_1_ftqPtr_flag(dataBanks_0_io_wdata_1_ftqPtr_flag),
    .io_wdata_1_ftqPtr_value(dataBanks_0_io_wdata_1_ftqPtr_value),
    .io_wdata_1_ipf(dataBanks_0_io_wdata_1_ipf),
    .io_wdata_1_acf(dataBanks_0_io_wdata_1_acf),
    .io_wdata_1_crossPageIPFFix(dataBanks_0_io_wdata_1_crossPageIPFFix),
    .io_wdata_1_triggered_frontendHit_0(dataBanks_0_io_wdata_1_triggered_frontendHit_0),
    .io_wdata_1_triggered_frontendHit_1(dataBanks_0_io_wdata_1_triggered_frontendHit_1),
    .io_wdata_1_triggered_frontendHit_2(dataBanks_0_io_wdata_1_triggered_frontendHit_2),
    .io_wdata_1_triggered_frontendHit_3(dataBanks_0_io_wdata_1_triggered_frontendHit_3),
    .io_wdata_1_triggered_backendEn_0(dataBanks_0_io_wdata_1_triggered_backendEn_0),
    .io_wdata_1_triggered_backendEn_1(dataBanks_0_io_wdata_1_triggered_backendEn_1),
    .io_wdata_2_inst(dataBanks_0_io_wdata_2_inst),
    .io_wdata_2_foldpc(dataBanks_0_io_wdata_2_foldpc),
    .io_wdata_2_pd_isRVC(dataBanks_0_io_wdata_2_pd_isRVC),
    .io_wdata_2_pd_brType(dataBanks_0_io_wdata_2_pd_brType),
    .io_wdata_2_pd_isCall(dataBanks_0_io_wdata_2_pd_isCall),
    .io_wdata_2_pd_isRet(dataBanks_0_io_wdata_2_pd_isRet),
    .io_wdata_2_pred_taken(dataBanks_0_io_wdata_2_pred_taken),
    .io_wdata_2_ftqPtr_flag(dataBanks_0_io_wdata_2_ftqPtr_flag),
    .io_wdata_2_ftqPtr_value(dataBanks_0_io_wdata_2_ftqPtr_value),
    .io_wdata_2_ipf(dataBanks_0_io_wdata_2_ipf),
    .io_wdata_2_acf(dataBanks_0_io_wdata_2_acf),
    .io_wdata_2_crossPageIPFFix(dataBanks_0_io_wdata_2_crossPageIPFFix),
    .io_wdata_2_triggered_frontendHit_0(dataBanks_0_io_wdata_2_triggered_frontendHit_0),
    .io_wdata_2_triggered_frontendHit_1(dataBanks_0_io_wdata_2_triggered_frontendHit_1),
    .io_wdata_2_triggered_frontendHit_2(dataBanks_0_io_wdata_2_triggered_frontendHit_2),
    .io_wdata_2_triggered_frontendHit_3(dataBanks_0_io_wdata_2_triggered_frontendHit_3),
    .io_wdata_2_triggered_backendEn_0(dataBanks_0_io_wdata_2_triggered_backendEn_0),
    .io_wdata_2_triggered_backendEn_1(dataBanks_0_io_wdata_2_triggered_backendEn_1),
    .io_wdata_3_inst(dataBanks_0_io_wdata_3_inst),
    .io_wdata_3_foldpc(dataBanks_0_io_wdata_3_foldpc),
    .io_wdata_3_pd_isRVC(dataBanks_0_io_wdata_3_pd_isRVC),
    .io_wdata_3_pd_brType(dataBanks_0_io_wdata_3_pd_brType),
    .io_wdata_3_pd_isCall(dataBanks_0_io_wdata_3_pd_isCall),
    .io_wdata_3_pd_isRet(dataBanks_0_io_wdata_3_pd_isRet),
    .io_wdata_3_pred_taken(dataBanks_0_io_wdata_3_pred_taken),
    .io_wdata_3_ftqPtr_flag(dataBanks_0_io_wdata_3_ftqPtr_flag),
    .io_wdata_3_ftqPtr_value(dataBanks_0_io_wdata_3_ftqPtr_value),
    .io_wdata_3_ipf(dataBanks_0_io_wdata_3_ipf),
    .io_wdata_3_acf(dataBanks_0_io_wdata_3_acf),
    .io_wdata_3_crossPageIPFFix(dataBanks_0_io_wdata_3_crossPageIPFFix),
    .io_wdata_3_triggered_frontendHit_0(dataBanks_0_io_wdata_3_triggered_frontendHit_0),
    .io_wdata_3_triggered_frontendHit_1(dataBanks_0_io_wdata_3_triggered_frontendHit_1),
    .io_wdata_3_triggered_frontendHit_2(dataBanks_0_io_wdata_3_triggered_frontendHit_2),
    .io_wdata_3_triggered_frontendHit_3(dataBanks_0_io_wdata_3_triggered_frontendHit_3),
    .io_wdata_3_triggered_backendEn_0(dataBanks_0_io_wdata_3_triggered_backendEn_0),
    .io_wdata_3_triggered_backendEn_1(dataBanks_0_io_wdata_3_triggered_backendEn_1),
    .io_wdata_4_inst(dataBanks_0_io_wdata_4_inst),
    .io_wdata_4_foldpc(dataBanks_0_io_wdata_4_foldpc),
    .io_wdata_4_pd_isRVC(dataBanks_0_io_wdata_4_pd_isRVC),
    .io_wdata_4_pd_brType(dataBanks_0_io_wdata_4_pd_brType),
    .io_wdata_4_pd_isCall(dataBanks_0_io_wdata_4_pd_isCall),
    .io_wdata_4_pd_isRet(dataBanks_0_io_wdata_4_pd_isRet),
    .io_wdata_4_pred_taken(dataBanks_0_io_wdata_4_pred_taken),
    .io_wdata_4_ftqPtr_flag(dataBanks_0_io_wdata_4_ftqPtr_flag),
    .io_wdata_4_ftqPtr_value(dataBanks_0_io_wdata_4_ftqPtr_value),
    .io_wdata_4_ipf(dataBanks_0_io_wdata_4_ipf),
    .io_wdata_4_acf(dataBanks_0_io_wdata_4_acf),
    .io_wdata_4_crossPageIPFFix(dataBanks_0_io_wdata_4_crossPageIPFFix),
    .io_wdata_4_triggered_frontendHit_0(dataBanks_0_io_wdata_4_triggered_frontendHit_0),
    .io_wdata_4_triggered_frontendHit_1(dataBanks_0_io_wdata_4_triggered_frontendHit_1),
    .io_wdata_4_triggered_frontendHit_2(dataBanks_0_io_wdata_4_triggered_frontendHit_2),
    .io_wdata_4_triggered_frontendHit_3(dataBanks_0_io_wdata_4_triggered_frontendHit_3),
    .io_wdata_4_triggered_backendEn_0(dataBanks_0_io_wdata_4_triggered_backendEn_0),
    .io_wdata_4_triggered_backendEn_1(dataBanks_0_io_wdata_4_triggered_backendEn_1),
    .io_wdata_5_inst(dataBanks_0_io_wdata_5_inst),
    .io_wdata_5_foldpc(dataBanks_0_io_wdata_5_foldpc),
    .io_wdata_5_pd_isRVC(dataBanks_0_io_wdata_5_pd_isRVC),
    .io_wdata_5_pd_brType(dataBanks_0_io_wdata_5_pd_brType),
    .io_wdata_5_pd_isCall(dataBanks_0_io_wdata_5_pd_isCall),
    .io_wdata_5_pd_isRet(dataBanks_0_io_wdata_5_pd_isRet),
    .io_wdata_5_pred_taken(dataBanks_0_io_wdata_5_pred_taken),
    .io_wdata_5_ftqPtr_flag(dataBanks_0_io_wdata_5_ftqPtr_flag),
    .io_wdata_5_ftqPtr_value(dataBanks_0_io_wdata_5_ftqPtr_value),
    .io_wdata_5_ipf(dataBanks_0_io_wdata_5_ipf),
    .io_wdata_5_acf(dataBanks_0_io_wdata_5_acf),
    .io_wdata_5_crossPageIPFFix(dataBanks_0_io_wdata_5_crossPageIPFFix),
    .io_wdata_5_triggered_frontendHit_0(dataBanks_0_io_wdata_5_triggered_frontendHit_0),
    .io_wdata_5_triggered_frontendHit_1(dataBanks_0_io_wdata_5_triggered_frontendHit_1),
    .io_wdata_5_triggered_frontendHit_2(dataBanks_0_io_wdata_5_triggered_frontendHit_2),
    .io_wdata_5_triggered_frontendHit_3(dataBanks_0_io_wdata_5_triggered_frontendHit_3),
    .io_wdata_5_triggered_backendEn_0(dataBanks_0_io_wdata_5_triggered_backendEn_0),
    .io_wdata_5_triggered_backendEn_1(dataBanks_0_io_wdata_5_triggered_backendEn_1),
    .io_wdata_6_inst(dataBanks_0_io_wdata_6_inst),
    .io_wdata_6_foldpc(dataBanks_0_io_wdata_6_foldpc),
    .io_wdata_6_pd_isRVC(dataBanks_0_io_wdata_6_pd_isRVC),
    .io_wdata_6_pd_brType(dataBanks_0_io_wdata_6_pd_brType),
    .io_wdata_6_pd_isCall(dataBanks_0_io_wdata_6_pd_isCall),
    .io_wdata_6_pd_isRet(dataBanks_0_io_wdata_6_pd_isRet),
    .io_wdata_6_pred_taken(dataBanks_0_io_wdata_6_pred_taken),
    .io_wdata_6_ftqPtr_flag(dataBanks_0_io_wdata_6_ftqPtr_flag),
    .io_wdata_6_ftqPtr_value(dataBanks_0_io_wdata_6_ftqPtr_value),
    .io_wdata_6_ipf(dataBanks_0_io_wdata_6_ipf),
    .io_wdata_6_acf(dataBanks_0_io_wdata_6_acf),
    .io_wdata_6_crossPageIPFFix(dataBanks_0_io_wdata_6_crossPageIPFFix),
    .io_wdata_6_triggered_frontendHit_0(dataBanks_0_io_wdata_6_triggered_frontendHit_0),
    .io_wdata_6_triggered_frontendHit_1(dataBanks_0_io_wdata_6_triggered_frontendHit_1),
    .io_wdata_6_triggered_frontendHit_2(dataBanks_0_io_wdata_6_triggered_frontendHit_2),
    .io_wdata_6_triggered_frontendHit_3(dataBanks_0_io_wdata_6_triggered_frontendHit_3),
    .io_wdata_6_triggered_backendEn_0(dataBanks_0_io_wdata_6_triggered_backendEn_0),
    .io_wdata_6_triggered_backendEn_1(dataBanks_0_io_wdata_6_triggered_backendEn_1),
    .io_wdata_7_inst(dataBanks_0_io_wdata_7_inst),
    .io_wdata_7_foldpc(dataBanks_0_io_wdata_7_foldpc),
    .io_wdata_7_pd_isRVC(dataBanks_0_io_wdata_7_pd_isRVC),
    .io_wdata_7_pd_brType(dataBanks_0_io_wdata_7_pd_brType),
    .io_wdata_7_pd_isCall(dataBanks_0_io_wdata_7_pd_isCall),
    .io_wdata_7_pd_isRet(dataBanks_0_io_wdata_7_pd_isRet),
    .io_wdata_7_pred_taken(dataBanks_0_io_wdata_7_pred_taken),
    .io_wdata_7_ftqPtr_flag(dataBanks_0_io_wdata_7_ftqPtr_flag),
    .io_wdata_7_ftqPtr_value(dataBanks_0_io_wdata_7_ftqPtr_value),
    .io_wdata_7_ipf(dataBanks_0_io_wdata_7_ipf),
    .io_wdata_7_acf(dataBanks_0_io_wdata_7_acf),
    .io_wdata_7_crossPageIPFFix(dataBanks_0_io_wdata_7_crossPageIPFFix),
    .io_wdata_7_triggered_frontendHit_0(dataBanks_0_io_wdata_7_triggered_frontendHit_0),
    .io_wdata_7_triggered_frontendHit_1(dataBanks_0_io_wdata_7_triggered_frontendHit_1),
    .io_wdata_7_triggered_frontendHit_2(dataBanks_0_io_wdata_7_triggered_frontendHit_2),
    .io_wdata_7_triggered_frontendHit_3(dataBanks_0_io_wdata_7_triggered_frontendHit_3),
    .io_wdata_7_triggered_backendEn_0(dataBanks_0_io_wdata_7_triggered_backendEn_0),
    .io_wdata_7_triggered_backendEn_1(dataBanks_0_io_wdata_7_triggered_backendEn_1)
  );
  assign io_rdata_0_pd_isRVC = dataBanks_0_io_rdata_0_pd_isRVC; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_pd_brType = dataBanks_0_io_rdata_0_pd_brType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_pd_isCall = dataBanks_0_io_rdata_0_pd_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_pd_isRet = dataBanks_0_io_rdata_0_pd_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_pred_taken = dataBanks_0_io_rdata_0_pred_taken; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ftqPtr_flag = dataBanks_0_io_rdata_0_ftqPtr_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ftqPtr_value = dataBanks_0_io_rdata_0_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ftqOffset = dataBanks_0_io_rdata_0_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_crossPageIPFFix = dataBanks_0_io_rdata_0_crossPageIPFFix; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_triggered_frontendHit_0 = dataBanks_0_io_rdata_0_triggered_frontendHit_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_triggered_frontendHit_1 = dataBanks_0_io_rdata_0_triggered_frontendHit_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_triggered_frontendHit_2 = dataBanks_0_io_rdata_0_triggered_frontendHit_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_triggered_frontendHit_3 = dataBanks_0_io_rdata_0_triggered_frontendHit_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_triggered_backendEn_0 = dataBanks_0_io_rdata_0_triggered_backendEn_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_triggered_backendEn_1 = dataBanks_0_io_rdata_0_triggered_backendEn_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_pd_isRVC = dataBanks_0_io_rdata_1_pd_isRVC; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_pd_brType = dataBanks_0_io_rdata_1_pd_brType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_pd_isCall = dataBanks_0_io_rdata_1_pd_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_pd_isRet = dataBanks_0_io_rdata_1_pd_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_pred_taken = dataBanks_0_io_rdata_1_pred_taken; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_ftqPtr_flag = dataBanks_0_io_rdata_1_ftqPtr_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_ftqPtr_value = dataBanks_0_io_rdata_1_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_ftqOffset = dataBanks_0_io_rdata_1_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_crossPageIPFFix = dataBanks_0_io_rdata_1_crossPageIPFFix; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_triggered_frontendHit_0 = dataBanks_0_io_rdata_1_triggered_frontendHit_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_triggered_frontendHit_1 = dataBanks_0_io_rdata_1_triggered_frontendHit_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_triggered_frontendHit_2 = dataBanks_0_io_rdata_1_triggered_frontendHit_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_triggered_frontendHit_3 = dataBanks_0_io_rdata_1_triggered_frontendHit_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_triggered_backendEn_0 = dataBanks_0_io_rdata_1_triggered_backendEn_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_triggered_backendEn_1 = dataBanks_0_io_rdata_1_triggered_backendEn_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_inst = dataBanks_0_io_rdata_2_inst; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_foldpc = dataBanks_0_io_rdata_2_foldpc; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_ipf = dataBanks_0_io_rdata_2_ipf; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_acf = dataBanks_0_io_rdata_2_acf; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_inst = dataBanks_0_io_rdata_3_inst; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_foldpc = dataBanks_0_io_rdata_3_foldpc; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_ipf = dataBanks_0_io_rdata_3_ipf; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_acf = dataBanks_0_io_rdata_3_acf; // @[DataModuleTemplate.scala 147:17]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_2 = raddr_dup__2; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_3 = raddr_dup__3; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_wen_0 = wen_dup_0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_1 = wen_dup_1; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_2 = wen_dup_2; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_3 = wen_dup_3; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_4 = wen_dup_4; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_5 = wen_dup_5; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_6 = wen_dup_6; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_7 = wen_dup_7; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_1 = waddr_dup_1; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_2 = waddr_dup_2; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_3 = waddr_dup_3; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_4 = waddr_dup_4; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_5 = waddr_dup_5; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_6 = waddr_dup_6; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_7 = waddr_dup_7; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_wdata_0_inst = r_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_foldpc = r_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pd_isRVC = r_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pd_brType = r_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pd_isCall = r_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pd_isRet = r_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pred_taken = r_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ftqPtr_flag = r_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ftqPtr_value = r_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ipf = r_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_acf = r_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_crossPageIPFFix = r_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_triggered_frontendHit_0 = r_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_triggered_frontendHit_1 = r_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_triggered_frontendHit_2 = r_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_triggered_frontendHit_3 = r_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_triggered_backendEn_0 = r_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_triggered_backendEn_1 = r_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_inst = r_1_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_foldpc = r_1_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pd_isRVC = r_1_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pd_brType = r_1_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pd_isCall = r_1_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pd_isRet = r_1_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pred_taken = r_1_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ftqPtr_flag = r_1_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ftqPtr_value = r_1_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ipf = r_1_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_acf = r_1_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_crossPageIPFFix = r_1_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_triggered_frontendHit_0 = r_1_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_triggered_frontendHit_1 = r_1_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_triggered_frontendHit_2 = r_1_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_triggered_frontendHit_3 = r_1_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_triggered_backendEn_0 = r_1_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_triggered_backendEn_1 = r_1_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_inst = r_2_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_foldpc = r_2_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_pd_isRVC = r_2_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_pd_brType = r_2_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_pd_isCall = r_2_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_pd_isRet = r_2_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_pred_taken = r_2_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_ftqPtr_flag = r_2_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_ftqPtr_value = r_2_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_ipf = r_2_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_acf = r_2_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_crossPageIPFFix = r_2_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_triggered_frontendHit_0 = r_2_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_triggered_frontendHit_1 = r_2_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_triggered_frontendHit_2 = r_2_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_triggered_frontendHit_3 = r_2_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_triggered_backendEn_0 = r_2_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2_triggered_backendEn_1 = r_2_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_inst = r_3_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_foldpc = r_3_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_pd_isRVC = r_3_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_pd_brType = r_3_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_pd_isCall = r_3_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_pd_isRet = r_3_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_pred_taken = r_3_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_ftqPtr_flag = r_3_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_ftqPtr_value = r_3_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_ipf = r_3_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_acf = r_3_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_crossPageIPFFix = r_3_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_triggered_frontendHit_0 = r_3_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_triggered_frontendHit_1 = r_3_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_triggered_frontendHit_2 = r_3_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_triggered_frontendHit_3 = r_3_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_triggered_backendEn_0 = r_3_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_3_triggered_backendEn_1 = r_3_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_inst = r_4_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_foldpc = r_4_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_pd_isRVC = r_4_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_pd_brType = r_4_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_pd_isCall = r_4_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_pd_isRet = r_4_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_pred_taken = r_4_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_ftqPtr_flag = r_4_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_ftqPtr_value = r_4_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_ipf = r_4_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_acf = r_4_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_crossPageIPFFix = r_4_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_triggered_frontendHit_0 = r_4_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_triggered_frontendHit_1 = r_4_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_triggered_frontendHit_2 = r_4_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_triggered_frontendHit_3 = r_4_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_triggered_backendEn_0 = r_4_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_4_triggered_backendEn_1 = r_4_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_inst = r_5_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_foldpc = r_5_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_pd_isRVC = r_5_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_pd_brType = r_5_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_pd_isCall = r_5_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_pd_isRet = r_5_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_pred_taken = r_5_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_ftqPtr_flag = r_5_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_ftqPtr_value = r_5_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_ipf = r_5_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_acf = r_5_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_crossPageIPFFix = r_5_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_triggered_frontendHit_0 = r_5_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_triggered_frontendHit_1 = r_5_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_triggered_frontendHit_2 = r_5_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_triggered_frontendHit_3 = r_5_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_triggered_backendEn_0 = r_5_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_5_triggered_backendEn_1 = r_5_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_inst = r_6_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_foldpc = r_6_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_pd_isRVC = r_6_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_pd_brType = r_6_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_pd_isCall = r_6_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_pd_isRet = r_6_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_pred_taken = r_6_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_ftqPtr_flag = r_6_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_ftqPtr_value = r_6_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_ipf = r_6_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_acf = r_6_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_crossPageIPFFix = r_6_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_triggered_frontendHit_0 = r_6_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_triggered_frontendHit_1 = r_6_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_triggered_frontendHit_2 = r_6_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_triggered_frontendHit_3 = r_6_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_triggered_backendEn_0 = r_6_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_6_triggered_backendEn_1 = r_6_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_inst = r_7_inst; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_foldpc = r_7_foldpc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_pd_isRVC = r_7_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_pd_brType = r_7_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_pd_isCall = r_7_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_pd_isRet = r_7_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_pred_taken = r_7_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_ftqPtr_flag = r_7_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_ftqPtr_value = r_7_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_ipf = r_7_ipf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_acf = r_7_acf; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_crossPageIPFFix = r_7_crossPageIPFFix; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_triggered_frontendHit_0 = r_7_triggered_frontendHit_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_triggered_frontendHit_1 = r_7_triggered_frontendHit_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_triggered_frontendHit_2 = r_7_triggered_frontendHit_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_triggered_frontendHit_3 = r_7_triggered_frontendHit_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_triggered_backendEn_0 = r_7_triggered_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_7_triggered_backendEn_1 = r_7_triggered_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__2 <= io_raddr_2; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__3 <= io_raddr_3; // @[DataModuleTemplate.scala 123:28]
    wen_dup_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    wen_dup_2 <= io_wen_2; // @[DataModuleTemplate.scala 124:26]
    wen_dup_3 <= io_wen_3; // @[DataModuleTemplate.scala 124:26]
    wen_dup_4 <= io_wen_4; // @[DataModuleTemplate.scala 124:26]
    wen_dup_5 <= io_wen_5; // @[DataModuleTemplate.scala 124:26]
    wen_dup_6 <= io_wen_6; // @[DataModuleTemplate.scala 124:26]
    wen_dup_7 <= io_wen_7; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      waddr_dup_2 <= io_waddr_2; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      waddr_dup_3 <= io_waddr_3; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      waddr_dup_4 <= io_waddr_4; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      waddr_dup_5 <= io_waddr_5; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      waddr_dup_6 <= io_waddr_6; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      waddr_dup_7 <= io_waddr_7; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_inst <= io_wdata_0_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_foldpc <= io_wdata_0_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pd_isRVC <= io_wdata_0_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pd_brType <= io_wdata_0_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pd_isCall <= io_wdata_0_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pd_isRet <= io_wdata_0_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pred_taken <= io_wdata_0_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ftqPtr_flag <= io_wdata_0_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ftqPtr_value <= io_wdata_0_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ipf <= io_wdata_0_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_acf <= io_wdata_0_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_crossPageIPFFix <= io_wdata_0_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_triggered_frontendHit_0 <= io_wdata_0_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_triggered_frontendHit_1 <= io_wdata_0_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_triggered_frontendHit_2 <= io_wdata_0_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_triggered_frontendHit_3 <= io_wdata_0_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_triggered_backendEn_0 <= io_wdata_0_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_triggered_backendEn_1 <= io_wdata_0_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_inst <= io_wdata_1_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_foldpc <= io_wdata_1_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pd_isRVC <= io_wdata_1_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pd_brType <= io_wdata_1_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pd_isCall <= io_wdata_1_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pd_isRet <= io_wdata_1_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pred_taken <= io_wdata_1_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ftqPtr_flag <= io_wdata_1_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ftqPtr_value <= io_wdata_1_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ipf <= io_wdata_1_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_acf <= io_wdata_1_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_crossPageIPFFix <= io_wdata_1_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_triggered_frontendHit_0 <= io_wdata_1_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_triggered_frontendHit_1 <= io_wdata_1_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_triggered_frontendHit_2 <= io_wdata_1_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_triggered_frontendHit_3 <= io_wdata_1_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_triggered_backendEn_0 <= io_wdata_1_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_triggered_backendEn_1 <= io_wdata_1_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_inst <= io_wdata_2_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_foldpc <= io_wdata_2_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_pd_isRVC <= io_wdata_2_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_pd_brType <= io_wdata_2_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_pd_isCall <= io_wdata_2_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_pd_isRet <= io_wdata_2_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_pred_taken <= io_wdata_2_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_ftqPtr_flag <= io_wdata_2_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_ftqPtr_value <= io_wdata_2_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_ipf <= io_wdata_2_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_acf <= io_wdata_2_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_crossPageIPFFix <= io_wdata_2_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_triggered_frontendHit_0 <= io_wdata_2_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_triggered_frontendHit_1 <= io_wdata_2_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_triggered_frontendHit_2 <= io_wdata_2_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_triggered_frontendHit_3 <= io_wdata_2_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_triggered_backendEn_0 <= io_wdata_2_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2_triggered_backendEn_1 <= io_wdata_2_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_inst <= io_wdata_3_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_foldpc <= io_wdata_3_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_pd_isRVC <= io_wdata_3_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_pd_brType <= io_wdata_3_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_pd_isCall <= io_wdata_3_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_pd_isRet <= io_wdata_3_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_pred_taken <= io_wdata_3_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_ftqPtr_flag <= io_wdata_3_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_ftqPtr_value <= io_wdata_3_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_ipf <= io_wdata_3_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_acf <= io_wdata_3_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_crossPageIPFFix <= io_wdata_3_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_triggered_frontendHit_0 <= io_wdata_3_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_triggered_frontendHit_1 <= io_wdata_3_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_triggered_frontendHit_2 <= io_wdata_3_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_triggered_frontendHit_3 <= io_wdata_3_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_triggered_backendEn_0 <= io_wdata_3_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_3) begin // @[Reg.scala 17:18]
      r_3_triggered_backendEn_1 <= io_wdata_3_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_inst <= io_wdata_4_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_foldpc <= io_wdata_4_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_pd_isRVC <= io_wdata_4_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_pd_brType <= io_wdata_4_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_pd_isCall <= io_wdata_4_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_pd_isRet <= io_wdata_4_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_pred_taken <= io_wdata_4_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_ftqPtr_flag <= io_wdata_4_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_ftqPtr_value <= io_wdata_4_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_ipf <= io_wdata_4_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_acf <= io_wdata_4_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_crossPageIPFFix <= io_wdata_4_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_triggered_frontendHit_0 <= io_wdata_4_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_triggered_frontendHit_1 <= io_wdata_4_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_triggered_frontendHit_2 <= io_wdata_4_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_triggered_frontendHit_3 <= io_wdata_4_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_triggered_backendEn_0 <= io_wdata_4_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_4) begin // @[Reg.scala 17:18]
      r_4_triggered_backendEn_1 <= io_wdata_4_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_inst <= io_wdata_5_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_foldpc <= io_wdata_5_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_pd_isRVC <= io_wdata_5_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_pd_brType <= io_wdata_5_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_pd_isCall <= io_wdata_5_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_pd_isRet <= io_wdata_5_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_pred_taken <= io_wdata_5_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_ftqPtr_flag <= io_wdata_5_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_ftqPtr_value <= io_wdata_5_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_ipf <= io_wdata_5_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_acf <= io_wdata_5_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_crossPageIPFFix <= io_wdata_5_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_triggered_frontendHit_0 <= io_wdata_5_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_triggered_frontendHit_1 <= io_wdata_5_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_triggered_frontendHit_2 <= io_wdata_5_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_triggered_frontendHit_3 <= io_wdata_5_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_triggered_backendEn_0 <= io_wdata_5_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_5) begin // @[Reg.scala 17:18]
      r_5_triggered_backendEn_1 <= io_wdata_5_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_inst <= io_wdata_6_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_foldpc <= io_wdata_6_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_pd_isRVC <= io_wdata_6_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_pd_brType <= io_wdata_6_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_pd_isCall <= io_wdata_6_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_pd_isRet <= io_wdata_6_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_pred_taken <= io_wdata_6_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_ftqPtr_flag <= io_wdata_6_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_ftqPtr_value <= io_wdata_6_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_ipf <= io_wdata_6_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_acf <= io_wdata_6_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_crossPageIPFFix <= io_wdata_6_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_triggered_frontendHit_0 <= io_wdata_6_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_triggered_frontendHit_1 <= io_wdata_6_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_triggered_frontendHit_2 <= io_wdata_6_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_triggered_frontendHit_3 <= io_wdata_6_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_triggered_backendEn_0 <= io_wdata_6_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_6) begin // @[Reg.scala 17:18]
      r_6_triggered_backendEn_1 <= io_wdata_6_triggered_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_inst <= io_wdata_7_inst; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_foldpc <= io_wdata_7_foldpc; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_pd_isRVC <= io_wdata_7_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_pd_brType <= io_wdata_7_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_pd_isCall <= io_wdata_7_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_pd_isRet <= io_wdata_7_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_pred_taken <= io_wdata_7_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_ftqPtr_flag <= io_wdata_7_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_ftqPtr_value <= io_wdata_7_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_ipf <= io_wdata_7_ipf; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_acf <= io_wdata_7_acf; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_crossPageIPFFix <= io_wdata_7_crossPageIPFFix; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_triggered_frontendHit_0 <= io_wdata_7_triggered_frontendHit_0; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_triggered_frontendHit_1 <= io_wdata_7_triggered_frontendHit_1; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_triggered_frontendHit_2 <= io_wdata_7_triggered_frontendHit_2; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_triggered_frontendHit_3 <= io_wdata_7_triggered_frontendHit_3; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_triggered_backendEn_0 <= io_wdata_7_triggered_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_7) begin // @[Reg.scala 17:18]
      r_7_triggered_backendEn_1 <= io_wdata_7_triggered_backendEn_1; // @[Reg.scala 17:22]
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
  raddr_dup__0 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  raddr_dup__1 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  raddr_dup__2 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  raddr_dup__3 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  wen_dup_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  wen_dup_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  wen_dup_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  wen_dup_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  wen_dup_4 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  wen_dup_5 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  wen_dup_6 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  wen_dup_7 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  waddr_dup_1 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  waddr_dup_2 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  waddr_dup_3 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  waddr_dup_4 = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  waddr_dup_5 = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  waddr_dup_6 = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  waddr_dup_7 = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  r_inst = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  r_foldpc = _RAND_21[9:0];
  _RAND_22 = {1{`RANDOM}};
  r_pd_isRVC = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  r_pd_brType = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  r_pd_isCall = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  r_pd_isRet = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  r_pred_taken = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  r_ftqPtr_flag = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  r_ftqPtr_value = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  r_ipf = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  r_acf = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  r_crossPageIPFFix = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  r_triggered_frontendHit_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  r_triggered_frontendHit_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  r_triggered_frontendHit_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  r_triggered_frontendHit_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  r_triggered_backendEn_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  r_triggered_backendEn_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  r_1_inst = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  r_1_foldpc = _RAND_39[9:0];
  _RAND_40 = {1{`RANDOM}};
  r_1_pd_isRVC = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  r_1_pd_brType = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  r_1_pd_isCall = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  r_1_pd_isRet = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  r_1_pred_taken = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  r_1_ftqPtr_flag = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  r_1_ftqPtr_value = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  r_1_ipf = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  r_1_acf = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  r_1_crossPageIPFFix = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  r_1_triggered_frontendHit_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  r_1_triggered_frontendHit_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  r_1_triggered_frontendHit_2 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  r_1_triggered_frontendHit_3 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  r_1_triggered_backendEn_0 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  r_1_triggered_backendEn_1 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  r_2_inst = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  r_2_foldpc = _RAND_57[9:0];
  _RAND_58 = {1{`RANDOM}};
  r_2_pd_isRVC = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  r_2_pd_brType = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  r_2_pd_isCall = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  r_2_pd_isRet = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  r_2_pred_taken = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  r_2_ftqPtr_flag = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  r_2_ftqPtr_value = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  r_2_ipf = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  r_2_acf = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  r_2_crossPageIPFFix = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  r_2_triggered_frontendHit_0 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  r_2_triggered_frontendHit_1 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  r_2_triggered_frontendHit_2 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  r_2_triggered_frontendHit_3 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  r_2_triggered_backendEn_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  r_2_triggered_backendEn_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  r_3_inst = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  r_3_foldpc = _RAND_75[9:0];
  _RAND_76 = {1{`RANDOM}};
  r_3_pd_isRVC = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  r_3_pd_brType = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  r_3_pd_isCall = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  r_3_pd_isRet = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  r_3_pred_taken = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  r_3_ftqPtr_flag = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  r_3_ftqPtr_value = _RAND_82[2:0];
  _RAND_83 = {1{`RANDOM}};
  r_3_ipf = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  r_3_acf = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  r_3_crossPageIPFFix = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  r_3_triggered_frontendHit_0 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  r_3_triggered_frontendHit_1 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  r_3_triggered_frontendHit_2 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  r_3_triggered_frontendHit_3 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  r_3_triggered_backendEn_0 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  r_3_triggered_backendEn_1 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  r_4_inst = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  r_4_foldpc = _RAND_93[9:0];
  _RAND_94 = {1{`RANDOM}};
  r_4_pd_isRVC = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  r_4_pd_brType = _RAND_95[1:0];
  _RAND_96 = {1{`RANDOM}};
  r_4_pd_isCall = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  r_4_pd_isRet = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  r_4_pred_taken = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  r_4_ftqPtr_flag = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  r_4_ftqPtr_value = _RAND_100[2:0];
  _RAND_101 = {1{`RANDOM}};
  r_4_ipf = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  r_4_acf = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  r_4_crossPageIPFFix = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  r_4_triggered_frontendHit_0 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  r_4_triggered_frontendHit_1 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  r_4_triggered_frontendHit_2 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  r_4_triggered_frontendHit_3 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  r_4_triggered_backendEn_0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  r_4_triggered_backendEn_1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  r_5_inst = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  r_5_foldpc = _RAND_111[9:0];
  _RAND_112 = {1{`RANDOM}};
  r_5_pd_isRVC = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  r_5_pd_brType = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  r_5_pd_isCall = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  r_5_pd_isRet = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  r_5_pred_taken = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  r_5_ftqPtr_flag = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  r_5_ftqPtr_value = _RAND_118[2:0];
  _RAND_119 = {1{`RANDOM}};
  r_5_ipf = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  r_5_acf = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  r_5_crossPageIPFFix = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  r_5_triggered_frontendHit_0 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  r_5_triggered_frontendHit_1 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  r_5_triggered_frontendHit_2 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  r_5_triggered_frontendHit_3 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  r_5_triggered_backendEn_0 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  r_5_triggered_backendEn_1 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  r_6_inst = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  r_6_foldpc = _RAND_129[9:0];
  _RAND_130 = {1{`RANDOM}};
  r_6_pd_isRVC = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  r_6_pd_brType = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  r_6_pd_isCall = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  r_6_pd_isRet = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  r_6_pred_taken = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  r_6_ftqPtr_flag = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  r_6_ftqPtr_value = _RAND_136[2:0];
  _RAND_137 = {1{`RANDOM}};
  r_6_ipf = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  r_6_acf = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  r_6_crossPageIPFFix = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  r_6_triggered_frontendHit_0 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  r_6_triggered_frontendHit_1 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  r_6_triggered_frontendHit_2 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  r_6_triggered_frontendHit_3 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  r_6_triggered_backendEn_0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  r_6_triggered_backendEn_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  r_7_inst = _RAND_146[31:0];
  _RAND_147 = {1{`RANDOM}};
  r_7_foldpc = _RAND_147[9:0];
  _RAND_148 = {1{`RANDOM}};
  r_7_pd_isRVC = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  r_7_pd_brType = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  r_7_pd_isCall = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  r_7_pd_isRet = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  r_7_pred_taken = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  r_7_ftqPtr_flag = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  r_7_ftqPtr_value = _RAND_154[2:0];
  _RAND_155 = {1{`RANDOM}};
  r_7_ipf = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  r_7_acf = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  r_7_crossPageIPFFix = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  r_7_triggered_frontendHit_0 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  r_7_triggered_frontendHit_1 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  r_7_triggered_frontendHit_2 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  r_7_triggered_frontendHit_3 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  r_7_triggered_backendEn_0 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  r_7_triggered_backendEn_1 = _RAND_163[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

